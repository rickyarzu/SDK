unit Janua.Core.DataModule;

interface

uses
  System.SysUtils, System.Classes, Spring.Collections, System.Bindings.Helper,
  // JanuaProject
  Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf,
  Janua.Core.Types, Janua.Orm.Intf;

type
  TJanuaCoreDataModule = class(TDataModule, IJanuaDataModule, IJanuaBindable)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
    FLazyLoading: Boolean;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization
    // ------------------- Janua Bindable Component ------------------------------------------------------------
  protected
    function JanuaGetComponent: TComponent;
    procedure JanuaSetComponent(const Value: TComponent);
    function GetNameJ: TComponentName;
    procedure SetNameJ(const Value: TComponentName);
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    function GetSelf: TObject;
  public
    procedure ClearBindings;
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    property BindManager: IJanuaBindManager read GetBindManager;
    procedure Notify(const AProperty: string);
    // ************************************* Bindings Procedures ***********************************    // ************************************* End Bindings Procedures *****************************************

    // *********************************** Logging Procedures ************************************************
  private
    FLocalLog: string;
    FLogError: TJanuaLogRecord;
    FLogToFile: Boolean;
    FHasMessage: Boolean;
    FLastMessage: string;
    FVerbose: Boolean;
    FPixelsPerInch: Integer;
    procedure SetLogToFile(const Value: Boolean);
    function GetLogText: string;
    procedure ClearLocalLog(const aProcedureName: string);
    function GetParams: IJanuaParams;
{$IFNDEF VER350}
    procedure SetPixelsPerInch(const Value: Integer);
{$ENDIF VER350}
  strict protected
    FLogErrors: TJanuaLogRecords;
    FHasErrors: Boolean;
    FLastErrorMessage: string;
    // Profile : TJanuaRecordProfile;
    procedure SetHasErrors(const Value: Boolean);
    function GetLocalLog: string;
  public
    procedure RefreshDetails; virtual; abstract;
    procedure ClearMessage;
    procedure ClearErrors;
    procedure AddLog(aLog: string);
    procedure WriteLog(LogMessage: string; isError: Boolean = false); overload; virtual;
    procedure WriteLog(ProcedureName, LogMessage: string; isError: Boolean = false); overload; virtual;
    procedure WriteError(LogMessage: string; E: Exception; doraise: Boolean = true); overload; virtual;
    procedure WriteError(ProcedureName, LogMessage: string; E: Exception; doraise: Boolean = true);
      overload; virtual;
    property LocalLog: string read GetLocalLog;
    property LogText: string read GetLogText;
    // *********************************** end Logging Procedures ********************************************
  strict protected
    FParams: IJanuaParams;
    FInitialized: Boolean;
    FAfterActivate: TProc;
    FSelectedSchema: Integer;
    function GetAfterActivate: TProc;
    procedure SetAfterActivate(const Value: TProc);
    function InternalActivate: Boolean; virtual;
  protected
    function GetLazyLoading: Boolean;
    procedure SetLazyLoading(const Value: Boolean);
    function GetLogString: string;
    function GetActive: Boolean;
    procedure SetActive(const Value: Boolean);
    function GetSelectedSchema: Integer;
    procedure SetSelectedSchema(const Value: Integer);
  public
    function Activate: Boolean;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    property LogString: string read GetLogString;
    property Params: IJanuaParams read GetParams;
    /// <summary> Can be Set to initialize the Object (after creating it or in a IInd time) </summary>
    Property Active: Boolean read GetActive write SetActive;
    /// <summary>  Boolean: If True then the Details are refreshd on demand when Record Is Loaded</summary>
    /// <seealso href="https://ergomercator.atlassian.net/jira/software/projects/JF/boards/1?selectedIssue=JF-71">
    /// Lazy Loading of Remote Dataset (master-detail) for better  control/peformances JF-71 </seealso>
    property LazyLoading: Boolean read GetLazyLoading write SetLazyLoading;
  published
{$IFNDEF VER350}
    property PixelsPerInch: Integer read FPixelsPerInch write SetPixelsPerInch;
{$ENDIF}
    property SelectedSchema: Integer read GetSelectedSchema write SetSelectedSchema;
  end;

var
  JanuaCoreDataModule: TJanuaCoreDataModule;

implementation

uses Janua.Core.Classes, Janua.Application.Framework, Janua.Core.Commons;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaCoreDataModule }

procedure TJanuaCoreDataModule.AddLog(aLog: string);
begin

end;

procedure TJanuaCoreDataModule.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TJanuaCoreDataModule.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on E: Exception do
      RaiseException('Bind', E, Self);
  end;
end;

procedure TJanuaCoreDataModule.CallObservers;
begin

end;

procedure TJanuaCoreDataModule.ClearBindings;
begin
  if Assigned(FBindManager) then
    FBindManager.ClearBindings;
end;

procedure TJanuaCoreDataModule.ClearErrors;
begin

end;

procedure TJanuaCoreDataModule.ClearLocalLog(const aProcedureName: string);
begin

end;

procedure TJanuaCoreDataModule.ClearMessage;
begin

end;

constructor TJanuaCoreDataModule.Create(AOwner: TComponent);
begin
  inherited;
  FLazyLoading := false;
  FBindManager := TJanuaApplicationFactory.CreateBindManager(Self);
  if not Assigned(FParams) and not TJanuaApplicationFactory.TryGetInterface(IJanuaParams, FParams) then
    raise Exception.Create(ClassName + 'GetParams IJanuaParams not set');
end;

destructor TJanuaCoreDataModule.Destroy;
begin
  try
    FBindManager := nil;
    FObserversList := nil;
    FParams.ClearParams;
    FParams := nil;
  except
    on E: Exception do
      TJanuaCoreOS.PublicWriteLog(Self, 'Destroy', E.Message, true)
  end;
  inherited;
end;

procedure TJanuaCoreDataModule.Detach(const aObserver: TObject);
begin

end;

procedure TJanuaCoreDataModule.DetachObservers;
begin

end;

function TJanuaCoreDataModule.GetActive: Boolean;
begin
  Result := FInitialized
end;

function TJanuaCoreDataModule.GetAfterActivate: TProc;
begin

end;

function TJanuaCoreDataModule.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuaApplicationFactory.CreateBindManager(self); }
  Result := FBindManager
end;

function TJanuaCoreDataModule.GetLocalLog: string;
begin

end;

function TJanuaCoreDataModule.GetLogString: string;
begin

end;

function TJanuaCoreDataModule.GetLogText: string;
begin

end;

function TJanuaCoreDataModule.GetNameJ: TComponentName;
begin
  Result := Self.Name
end;

function TJanuaCoreDataModule.GetParams: IJanuaParams;
begin
  Result := Self.FParams;
end;

function TJanuaCoreDataModule.GetSelectedSchema: Integer;
begin
  Result := FSelectedSchema;
end;

function TJanuaCoreDataModule.GetSelf: TObject;
begin
  Result := Self as TObject;
end;

function TJanuaCoreDataModule.InternalActivate: Boolean;
begin
  // imposto result := True e poi a cascata.
  Result := true;
end;

function TJanuaCoreDataModule.Activate: Boolean;
begin
  FInitialized := InternalActivate;
  Result := FInitialized;
end;

function TJanuaCoreDataModule.GetLazyLoading: Boolean;
begin
{$IFDEF TESTPOSTGRES}
  Result := false;
{$ELSE}
  Result := FLazyLoading;
{$ENDIF TESTPOSTGRES}
end;

function TJanuaCoreDataModule.JanuaGetComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TJanuaCoreDataModule.JanuaSetComponent(const Value: TComponent);
begin
  if Value is Self.ClassType then
    Assign(Value)
end;

procedure TJanuaCoreDataModule.Notify(const AProperty: string);
begin
  BindManager.Notify(AProperty);
end;

procedure TJanuaCoreDataModule.SetActive(const Value: Boolean);
begin
  if Value <> FInitialized then
  begin
    if Value then
      Self.Activate
    else
      FInitialized := false;
  end;
end;

procedure TJanuaCoreDataModule.SetAfterActivate(const Value: TProc);
begin

end;

procedure TJanuaCoreDataModule.SetHasErrors(const Value: Boolean);
begin

end;

procedure TJanuaCoreDataModule.SetLazyLoading(const Value: Boolean);
begin
  // TODO -cMM: TJanuaCoreDataModule.SetLazyLoading default body inserted
end;

procedure TJanuaCoreDataModule.SetLogToFile(const Value: Boolean);
begin

end;

procedure TJanuaCoreDataModule.SetNameJ(const Value: TComponentName);
begin
  Self.Name := Value
end;

procedure TJanuaCoreDataModule.SetSelectedSchema(const Value: Integer);
begin
  if FSelectedSchema <> Value then
  begin
    FSelectedSchema := Value;
    Notify('SelectedSchema');
  end;
end;

{$IFNDEF VER350}

procedure TJanuaCoreDataModule.SetPixelsPerInch(const Value: Integer);
begin
  FPixelsPerInch := Value;
end;
{$ENDIF VER350}

procedure TJanuaCoreDataModule.WriteLog(LogMessage: string; isError: Boolean);
begin
  WriteLog('', LogMessage, isError)
end;

procedure TJanuaCoreDataModule.WriteError(ProcedureName, LogMessage: string; E: Exception; doraise: Boolean);
begin
  if not PublicRaised then
    TJanuaCoreOS.PublicWriteError(Self, '', LogMessage, E, doraise);
end;

procedure TJanuaCoreDataModule.WriteError(LogMessage: string; E: Exception; doraise: Boolean);
begin

  if not PublicRaised and Assigned(E) then
    WriteError(E.ClassName + '.' + Self.Name, LogMessage, E, doraise)
  else
    PublicRaised := false;

end;

procedure TJanuaCoreDataModule.WriteLog(ProcedureName, LogMessage: string; isError: Boolean);
begin
  if not(csDesigning in Self.ComponentState) then
    TJanuaCoreOS.PublicWriteLog(Self, ProcedureName, LogMessage, isError)
end;

end.
