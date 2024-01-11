unit Janua.System.ViewModel;

interface

uses System.Classes, Janua.Core.Classes, Janua.Core.Types, Data.DB, Janua.Orm.Intf, Janua.ViewModels.Intf,
  Janua.System.Server.Intf, Janua.Core.Customcontrols, Generics.Collections;

type
  /// <summary>
  /// Implements bindable framework for user Login/Session/Auth:
  /// </summary>
  TDBUserBindable = class(TJanuaCoreComponent)
  strict private
    FSearchName: string;
    FSearchDataSource: TDataSource;
    FSearchIndex: integer;
    FDBUserID: integer;
  private
    FOnUserIDChange: TNotifyEvent;
    FOnSearchNameChange: TNotifyEvent;
    FOnSearchIndexChange: TNotifyEvent;
    procedure SetSearchName(const Value: string);
    procedure SetSearchDataSource(const Value: TDataSource);
    procedure SetSearchIndex(const Value: integer);
    procedure SearchUsers;
    procedure SetDBUserID(const Value: integer);
    procedure SetOnSearchName(const Value: TNotifyEvent);
    procedure SetOnUserIDChange(const Value: TNotifyEvent);
    procedure SetOnSearchIndexChange(const Value: TNotifyEvent);
  public
    constructor Create(AOwner: TComponent); override;
  published
    property SearchName: string read FSearchName write SetSearchName;
    property SearchDataSource: TDataSource read FSearchDataSource write SetSearchDataSource;
    property SearchIndex: integer read FSearchIndex write SetSearchIndex;
    property DBUserID: integer read FDBUserID write SetDBUserID;
    property OnUserIDChange: TNotifyEvent read FOnUserIDChange write SetOnUserIDChange;
    property OnSearchNameChange: TNotifyEvent read FOnSearchNameChange write SetOnSearchName;
    property OnSearchIndexChange: TNotifyEvent read FOnSearchIndexChange write SetOnSearchIndexChange;
  end;

type

  // [ObservableMember('SearchUser')]
  TJanuaCustomSystemViewModel = class(TJanuaCoreComponent)
    {
      Observable members:
      SearchUserEmail
    }
  private
    FSearchUserEmail: string;
    FReadOnly: Boolean;
    FSearchUserName: string;
    procedure SetSystemStorage(const Value: IJanuaSystemStorage);
    procedure SetFActory(const Value: IJanuaServerSystemFactory);
    procedure SetSearchUserEmail(const Value: string);
    procedure SetReadOnly(const Value: Boolean);
    procedure SetSearchUserName(const Value: string);
  protected
    FSystemStorage: IJanuaSystemStorage;
    FdsSearchUsers: TDataSource;
    procedure SetdsSearchUsers(const Value: TDataSource); Virtual;
    {
      protected // LiveBindings Observer Pattern ...............................................................
      // declaration is in System.Classes
      function CanObserve(const ID: integer): Boolean; override;
      // declaration is in System.Classes
      procedure ObserverAdded(const ID: integer; const Observer: IObserver); override;
      procedure ObserverToggle(const AObserver: IObserver; const Value: Boolean);
      // LiveBindings Observer Pattern ........................................................................
    }
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    FFActory: IJanuaServerSystemFactory;
    function InternalActivate: Boolean; override;
    procedure InternalCreate; Virtual; Abstract;
  public
    constructor Create(AOwner: TComponent); override;
    function SearchUser: integer; virtual;
    property FActory: IJanuaServerSystemFactory read FFActory write SetFActory;
  published
    property dsSearchUsers: TDataSource read FdsSearchUsers write SetdsSearchUsers;
    property SearchUserEmail: string read FSearchUserEmail write SetSearchUserEmail;
    property SearchUserName: string read FSearchUserName write SetSearchUserName;
    // LiveBindings Observer Pattern ........................................................................
    property ReadOnly: Boolean read FReadOnly write SetReadOnly;
    // LiveBindings Observer Pattern ........................................................................
  end;

type
  TJanuaDBSystemViewModel = class(TJanuaCustomSystemViewModel)
  private
    function GetDBSystemStorage: IJanuaSystemDBStorage;
    procedure SetDBSystemStorage(const Value: IJanuaSystemDBStorage);
  protected
    procedure SetdsSearchUsers(const Value: TDataSource); override;
    /// <summary> Creates the Current System Model  <summary>
    function CreateModel: IJanuaModel; override;
  public
    /// <summary> Search Users Dataset <summary>
    property SystemStorage: IJanuaSystemDBStorage read GetDBSystemStorage write SetDBSystemStorage;
    function SearchUser: integer; override;
  end;

type
  TJanuaTestSystemViewModel = class(TJanuaCustomSystemViewModel)
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses System.SysUtils, Spring;

{ TDBUserBindable }

constructor TDBUserBindable.Create(AOwner: TComponent);
begin
  inherited;
  self.FSearchIndex := 0;
end;

procedure TDBUserBindable.SearchUsers;
begin

end;

procedure TDBUserBindable.SetDBUserID(const Value: integer);
begin
  if FDBUserID <> Value then
  begin
    FDBUserID := Value;
    BindManager.Notify('DBUserID');
  end;
end;

procedure TDBUserBindable.SetOnSearchIndexChange(const Value: TNotifyEvent);
begin
  FOnSearchIndexChange := Value;
end;

procedure TDBUserBindable.SetOnSearchName(const Value: TNotifyEvent);
begin
  FOnSearchNameChange := Value;
end;

procedure TDBUserBindable.SetOnUserIDChange(const Value: TNotifyEvent);
begin
  FOnUserIDChange := Value;
end;

procedure TDBUserBindable.SetSearchDataSource(const Value: TDataSource);
begin
  FSearchDataSource := Value;
end;

procedure TDBUserBindable.SetSearchIndex(const Value: integer);
begin
  if FSearchIndex <> Value then
  begin
    FSearchIndex := Value;
    BindManager.Notify('SearchIndex');
    if self.FSearchName <> '' then
      SearchUsers;
  end;
end;

procedure TDBUserBindable.SetSearchName(const Value: string);
begin
  if FSearchName <> Value then
  begin
    FSearchName := Value;
    BindManager.Notify('SearchName');
    if Assigned(FOnSearchNameChange) then
      FOnSearchNameChange(self);
    SearchUsers;
  end;
end;

{ TJanuaCustomSystemViewModel }

(*
  function TJanuaCustomSystemViewModel.CanObserve(const ID: integer): Boolean;
  begin
  case ID of
  TObserverMapping.EditLinkID, { EditLinkID is the observer that is used for control-to-field links }
  TObserverMapping.ControlValueID:
  Result := True;
  else
  Result := False;
  end;
  end;
*)

constructor TJanuaCustomSystemViewModel.Create(AOwner: TComponent);
begin
  inherited;
  Guard.CheckNotNull(FFActory, self.ClassName + '.InternalActivate FActory not set');
  FSystemStorage.KeepAlive := True;
end;

function TJanuaCustomSystemViewModel.InternalActivate: Boolean;
begin
  if not Active then
    try
      Result := inherited and Assigned(FSystemStorage);
      if Result then
      begin
        Result := False;
        Guard.CheckNotNull(FSystemStorage, self.ClassName + '.InternalActivate FSystemStorage not set');
        FSystemStorage.CreateDataset;
        Result := True;
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;

end;

(*
  procedure TJanuaCustomSystemViewModel.ObserverAdded(const ID: integer; const Observer: IObserver);
  begin
  inherited;
  if ID = TObserverMapping.EditLinkID then
  Observer.OnObserverToggle := ObserverToggle;
  end;

  procedure TJanuaCustomSystemViewModel.ObserverToggle(const AObserver: IObserver; const Value: Boolean);
  var
  LEditLinkObserver: IEditLinkObserver;
  LSaveReadOnly: Boolean;
  begin
  if Supports(AObserver, IEditLinkObserver, LEditLinkObserver) then
  begin
  if Value then
  begin
  LSaveReadOnly := ReadOnly;
  if LEditLinkObserver.IsReadOnly then
  ReadOnly := True;
  FReadOnly := LSaveReadOnly;
  end
  else if not(csDestroying in ComponentState) then
  ReadOnly := FReadOnly;
  end;
  end;
*)

function TJanuaCustomSystemViewModel.SearchUser: integer;
begin
  try
    Result := FSystemStorage.SearchUsers(FSearchUserEmail, '')
  except
    on e: exception do
      raise exception.Create(self.ClassName + '.SearchUser ' + e.ClassName + sl + e.Message);
  end;
end;

procedure TJanuaCustomSystemViewModel.SetdsSearchUsers(const Value: TDataSource);
begin
  FdsSearchUsers := Value;
end;

procedure TJanuaCustomSystemViewModel.SetFActory(const Value: IJanuaServerSystemFactory);
begin
  FFActory := Value;
end;

procedure TJanuaCustomSystemViewModel.SetReadOnly(const Value: Boolean);
begin
  FReadOnly := Value;
end;

procedure TJanuaCustomSystemViewModel.SetSearchUserEmail(const Value: string);
begin
  if FSearchUserEmail <> Value then
  begin
    FSearchUserEmail := Value;
    BindManager.Notify('SearchUserEmail');
  end;
end;

procedure TJanuaCustomSystemViewModel.SetSearchUserName(const Value: string);
begin
  if FSearchUserName <> Value then
  begin
    FSearchUserName := Value;
    BindManager.Notify('FSearchUserName');
  end;
end;

procedure TJanuaCustomSystemViewModel.SetSystemStorage(const Value: IJanuaSystemStorage);
begin
  FSystemStorage := Value;
end;

{ TJanuaDBSystemViewModel }

function TJanuaDBSystemViewModel.GetDBSystemStorage: IJanuaSystemDBStorage;
begin
  Result := (FSystemStorage as IJanuaSystemDBStorage)
end;

function TJanuaDBSystemViewModel.SearchUser: integer;
begin
  SystemStorage.jdsSearchUsers.Close;
  self.SystemStorage.jdsSearchUsers.ParamByName('p_email').AsString := self.SearchUserEmail;
  self.SystemStorage.jdsSearchUsers.ParamByName('p_username').AsString := self.SearchUserName;
  SystemStorage.jdsSearchUsers.Open;
  Result := SystemStorage.jdsSearchUsers.RecordCount
end;

procedure TJanuaDBSystemViewModel.SetDBSystemStorage(const Value: IJanuaSystemDBStorage);
begin
  self.FSystemStorage := (Value as IJanuaSystemStorage);
end;

procedure TJanuaDBSystemViewModel.SetdsSearchUsers(const Value: TDataSource);
begin
  inherited;
  // imposto il dataset al momento di caricarlo............................................
  self.FdsSearchUsers.DataSet := SystemStorage.jdsSearchUsers.DataSet;
end;

{ TJanuaTestSystemViewModel }

constructor TJanuaTestSystemViewModel.Create(AOwner: TComponent);
begin
  inherited;

end;

end.
