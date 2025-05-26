unit Janua.Core.Commons;

interface

uses
  System.SysUtils, System.Classes, System.TypInfo, Spring, Spring.Collections,
  // Janua
  Janua.Core.Types, Janua.Bindings.Intf;

type
  TJanuaCoreInterfacedObject = class(TInterfacedObject)
  strict protected
    FActive: Boolean;
    function InternalActivate: Boolean; virtual;
  public
    constructor Create; overload; virtual;
    Constructor Create(aValues: TValueArray); overload; virtual;
    procedure Release;
    function Activate: Boolean;
  end;

type
  TJanuaBindManager = class(TInterfacedObject, IJanuaBindManager)
  private
    FBindCount: Integer;
    FOwner: TObject;
    FBindedProperties: IList<string>;
  protected
    function GetHasBindings: Boolean;
    function GetBindCount: Integer;
  public
    constructor Create(AOwner: TObject); overload;
    destructor Destroy; override;
    /// <summary>
    /// Janua Binding Framework. This procedure binds a Field from the record to a property of 'any' Object.
    /// </summary>
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    /// <summary> Clears all Bindings to all properties of the object </summary>
    procedure ClearBindings;
    procedure Notify(const AProperty: string);
    procedure UnBind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string);
    procedure IncBindCount;
    procedure DecBindCount;
    procedure NotifyAll;
  public
    property HasBindings: Boolean read GetHasBindings;
    property BindCount: Integer read GetBindCount;
  end;

  TJanuaBindableClass = class(TObject, IJanuaBindable)
    // ********************************* Interface Suppport **************************************************
  private
    FOwnerInterface: IInterface;
  protected
    { IInterface }
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;
  public
    function QueryInterface(const IID: TGUID; out Obj): HResult; virtual; stdcall;
    procedure AfterConstruction; override;
    // ************************************* Bindings Procedures ***********************************
  strict protected
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  public
    property BindManager: IJanuaBindManager read GetBindManager;
  public
    procedure ClearBindings;
    procedure NotifiyAllProperties;
    procedure Notify(const AProperty: string);
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    // *********************************************************************************************
  protected
    function GetSelf: TObject;
  public
    property AsObject: TObject read GetSelf;
    constructor Create; overload;
  end;

type
  TJanuaCustomComponent = class(TComponent)
  strict protected
    FHasErrors: Boolean;
    FLastErrorMessage: string;
    // Profile : TJanuaRecordProfile;
  private
    procedure SetHasErrors(const Value: Boolean);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  private
    FActive: Boolean;
    FEnabled: Boolean;
    function GetComponentInfo: string;
  strict protected
    Function InternalActivate: Boolean; virtual;
    procedure InternalDeactivate; virtual;
    procedure SetEnabled(const Value: Boolean);
  protected
    FAfterActivate: TProc;
    function GetAfterActivate: TProc;
    procedure SetAfterActivate(const Value: TProc);
    function GetActive: Boolean;
    procedure SetActive(const Value: Boolean);
  public
    function Activate: Boolean;
    procedure Deactivate;
  published
    /// <summary> Can be Set to initialize the Object (after creating it or in a IInd time) </summary>
    property HasErrors: Boolean read FHasErrors write SetHasErrors stored false default false;
    property Enabled: Boolean read FEnabled write SetEnabled;
    property ComponentInfo: string read GetComponentInfo;
    property Active: Boolean read FActive write SetActive stored false default false;
  end;

  TJanuaCoreInterfacedObjectClass = class of TJanuaCoreInterfacedObject;
  TJanuaCustomComponentClass = class of TJanuaCustomComponent;

implementation

uses Janua.Application.Framework, Janua.Core.Json;

{ TJanuaBindManager }

procedure TJanuaBindManager.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
  function GetDescription: string;
  begin
    if Assigned(FOwner) then
    begin
      Result := FOwner.ClassName;
      if (FOwner is TComponent) and ((FOwner as TComponent).Name <> '') then
        Result := Result + '.' + (FOwner as TComponent).Name;
      Result := Result + '.' + AProperty + '->';
    end;
    if Assigned(ABindToObject) then
    begin
      Result := Result + ABindToObject.ClassName;
      if (ABindToObject is TComponent) and ((ABindToObject as TComponent).Name <> '') then
        Result := Result + '.' + (ABindToObject as TComponent).Name;
      Result := Result + '.' + ABindToProperty;
    end;
  end;

begin
  try
    Assert(AProperty <> '', 'Unable to Bind AProperty is nil');
    Assert(ABindToProperty <> '', 'Unable to Bind AProperty is nil');
    if FBindedProperties.IndexOf(AProperty) = -1 then
      FBindedProperties.Add(AProperty);

    if Assigned(FOwner) and Assigned(ABindToObject) then
      TJanuaApplication.BindEngine.Bind(FOwner, AProperty, ABindToObject, ABindToProperty, AReadOnly,
        ACreateOptions);
  Except
    on E: Exception do
    begin
      LogException('Bind ' + GetDescription, E, self);
      raise;
    end;
  end;
end;

procedure TJanuaBindManager.ClearBindings;
begin
  if Assigned(TJanuaApplication.BindEngine) then
    TJanuaApplication.BindEngine.ClearBindings(FOwner);
  FBindedProperties.Clear;
  FBindCount := 0;
end;

constructor TJanuaBindManager.Create(AOwner: TObject);
begin
  inherited Create;
  FBindCount := 0;
  FOwner := AOwner;
  FBindedProperties := TCollections.CreateList<string>;
end;

procedure TJanuaBindManager.DecBindCount;
begin
  if FBindCount > 0 then
    Dec(FBindCount);
end;

destructor TJanuaBindManager.Destroy;
begin
  try
    ClearBindings;
    FBindedProperties := nil;
    FOwner := nil;
  except
    on E: Exception do
    begin
      LogException('Destroy ', E, self);
    end;
  end;
  inherited;
end;

function TJanuaBindManager.GetBindCount: Integer;
begin
  Result := FBindCount
end;

function TJanuaBindManager.GetHasBindings: Boolean;
begin
  Result := FBindCount > 0
end;

procedure TJanuaBindManager.IncBindCount;
begin
  Inc(FBindCount);
end;

procedure TJanuaBindManager.Notify(const AProperty: string);
begin
  if Assigned(FOwner) then
    TJanuaApplication.BindEngine.Notify(FOwner, AProperty);
end;

procedure TJanuaBindManager.NotifyAll;
var
  lProperty: string;
begin
  for lProperty in FBindedProperties do
    Notify(lProperty);
end;

procedure TJanuaBindManager.UnBind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string);
begin
  TJanuaApplication.BindEngine.UnBind(FOwner, AProperty, ABindToObject, ABindToProperty);
end;

{ TJanuaCustomComponent }

function TJanuaCustomComponent.Activate: Boolean;
begin
  Result := FActive;
  if not Result and Enabled then
  begin
    FActive := InternalActivate;
    Result := FActive;
  end;
end;

constructor TJanuaCustomComponent.Create(AOwner: TComponent);
begin
  inherited;
  FHasErrors := false;
  FEnabled := true;
  // FComponents := TObjectList<TJanuaCustomComponent>.Create;
  // Disabilito Temporaneamnte la Gestione dei TPersistents .............................
  // FPersistents := TObjectList<TJanuaCustomPersistent>.Create;
  // FObjects := TObjectList<TJanuaCustomObject>.Create;
end;

procedure TJanuaCustomComponent.Deactivate;
begin
  InternalDeactivate;
end;

destructor TJanuaCustomComponent.Destroy;
begin
  // FPersistents.Free;
  // FObjects.Free;
  // self.FComponents.Free;
  inherited;
end;

function TJanuaCustomComponent.GetActive: Boolean;
begin
  Result := FActive
end;

function TJanuaCustomComponent.GetAfterActivate: TProc;
begin

end;

function TJanuaCustomComponent.GetComponentInfo: string;
begin
  if Assigned(self.Owner) then
    Result := Owner.ClassName + '(' + Owner.Name + ').';
  Result := Result + self.ClassName + '(' + self.Name + ').';
end;

function TJanuaCustomComponent.InternalActivate: Boolean;
begin
  Result := true;
end;

procedure TJanuaCustomComponent.InternalDeactivate;
begin
  FActive := false;
end;

procedure TJanuaCustomComponent.SetActive(const Value: Boolean);
begin
  if Value and not FActive then
  begin
    FActive := InternalActivate;
  end
  else if not Value and FActive then
  begin
    Deactivate;
  end;
end;

procedure TJanuaCustomComponent.SetAfterActivate(const Value: TProc);
begin

end;

procedure TJanuaCustomComponent.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value;
end;

procedure TJanuaCustomComponent.SetHasErrors(const Value: Boolean);
begin
  self.FHasErrors := Value;
end;

{ TJanuaCoreInterfacedObject }

function TJanuaCoreInterfacedObject.Activate: Boolean;
begin
  Result := FActive;
  if not Result then
  begin
    FActive := InternalActivate;
    Result := FActive
  end;
end;

constructor TJanuaCoreInterfacedObject.Create(aValues: TValueArray);
begin
  Create;
end;

constructor TJanuaCoreInterfacedObject.Create;
begin
  inherited;
  FActive := false;
end;

function TJanuaCoreInterfacedObject.InternalActivate: Boolean;
begin
  // First Ancestor Method
  Result := true;
end;

procedure TJanuaCoreInterfacedObject.Release;
begin
  _Release;
end;

{ Spring, Spring.Collections, }

procedure TJanuaBindableClass.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaBindableClass.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    if Assigned(FBindManager) then
      FBindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on E: Exception do
      Raise Exception.Create(ClassName + '.Bind Error:' + E.Message);
  end;
end;

procedure TJanuaBindableClass.ClearBindings;
begin
  if Assigned(FBindManager) then
    FBindManager.ClearBindings
end;

constructor TJanuaBindableClass.Create;
begin
  FBindManager := TJanuaBindManager.Create(self);
end;

function TJanuaBindableClass.GetBindManager: IJanuaBindManager;
begin
  Result := FBindManager
end;

function TJanuaBindableClass.GetSelf: TObject;
begin
  Result := self
end;

procedure TJanuaBindableClass.NotifiyAllProperties;
begin
  FBindManager.NotifyAll
end;

procedure TJanuaBindableClass.Notify(const AProperty: string);
begin
  FBindManager.Notify(AProperty);
end;

function TJanuaBindableClass.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
  if GetInterface(IID, Obj) then
    Result := S_OK
  else
    Result := E_NOINTERFACE;
end;

function TJanuaBindableClass._AddRef: Integer;
begin
  Result := -1; // Non facciamo reference counting
end;

function TJanuaBindableClass._Release: Integer;
begin
  Result := -1; // Non facciamo reference counting
end;

end.
