unit Janua.Core.Legacy;

interface

{$I JANUACORE.INC}

uses
{$IFDEF delphixe}
  // System Procedures ............................................................
  System.SysUtils, System.Classes, System.Rtti, System.UITypes,
  System.IOUtils, System.Variants, System.StrUtils, System.TypInfo, System.Generics.Collections, System.Types,
  // Custom Units ......................................................................................................
{$ELSE}
  Process,
{$ENDIF delphixe}
  Data.DB,
  // Januaproject
  Janua.Http.Types, Janua.Orm.Types, Janua.Core.Entities, Janua.Core.DB.Types, Janua.Core.Types,
  Janua.Core.Commons,  Janua.Bindings.Intf, Janua.Core.Classes.Intf, Janua.Controls.Intf, Janua.Core.Classes;

type
  TJanuaCustomLogger = class(TJanuaCustomComponent)
  private
    FComponent: TComponent;
    FText: string;
    FAutoFileName: Boolean;
    FResolveToFile: Boolean;
    FIsCustomServer: Boolean;
    FlogRecords: TJanuaLogRecords;
    FLogRecord: TJanuaLogRecord;
    FLogDataset: TDataset;
    FOnLogMsg: TJanuaLogEvent;
    function GetLogMessage: string;
    function GetLogType: TJanuaLogType;
    function GetProcedureName: string;
    function GetFileDir: string;
    function GetOwnerName: string;
    function GetE: Exception;
    function GetRootDirectory: string;
    procedure SetComponent(const Value: TComponent);
    procedure SetE(const Value: Exception);
    procedure SetProcedureName(const Value: string);
    procedure WriteFile;
    procedure SetAutoFileName(const Value: Boolean);
    procedure SetLogMessage(const Value: string);
    procedure SetResolveToFile(const Value: Boolean);
    procedure SetErrorFileName(const Value: string);
    procedure SetLogFileName(const Value: string);
    procedure SetDataset(const Value: TDataset);
    procedure SetOnLogMsg(const Value: TJanuaLogEvent);
    function GetFileName: TFileName;
    procedure SetLogRecord(const Value: TJanuaLogRecord);
  public // Class functions common to any Logger in System ...........................................
    Class function GetApplicationType: TJanuaApplicationType;
    Class procedure SetApplicationType(const Value: TJanuaApplicationType);
    { Private declarations }
  protected
    { Protected declarations }
    FUpTime: TDateTime;
    FLogFileName: string;
    FErrorFileName: string;
    procedure RaiseException(ExceptionText: string);
    procedure SetIsCustomServer(const Value: Boolean); virtual;
    procedure SetLogType(const Value: TJanuaLogType); virtual;
  public
    { Public declarations }
    procedure Execute; virtual;
    property E: Exception read GetE write SetE;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property LogMessage: string read GetLogMessage write SetLogMessage;
  public
    // the method function itself + a pointer to the
    // object instance it's supposed to work on.
    procedure LogMsg(const Sender: TObject; const aLog: TJanuaLogRecord);
    procedure LogError(const Sender: TObject; const aLog: TJanuaLogRecord; E: Exception);
    property LogRecords: TJanuaLogRecords read FlogRecords;
    property LogRecord: TJanuaLogRecord read FLogRecord;
  published
    { Published declarations }
    // property JanuaOS: TJanuaCoreOS read FJanuaOS write SetJanuaOS;
    property Component: TComponent read FComponent write SetComponent;
    property LogType: TJanuaLogType read GetLogType write SetLogType;
    property FileName: TFileName read GetFileName;
    property ProcedureName: string read GetProcedureName write SetProcedureName;
    property FileDir: string read GetFileDir;
    property AutoFileName: Boolean read FAutoFileName write SetAutoFileName;
    property ResolveToFile: Boolean read FResolveToFile write SetResolveToFile default true;
    property RootDirectory: string read GetRootDirectory;
    property IsCustomServer: Boolean read FIsCustomServer write SetIsCustomServer;
    property Uptime: TDateTime read FUpTime;
    property ErrorFileName: string read FErrorFileName write SetErrorFileName;
    property LogFileName: string read FLogFileName write SetLogFileName;
    property ApplicationType: TJanuaApplicationType read GetApplicationType write SetApplicationType stored false;
    property Dataset: TDataset read FLogDataset write SetDataset;
    /// New Record Logging Framework.
    property OnLogMsg: TJanuaLogEvent read FOnLogMsg write SetOnLogMsg;
    // This will hold the "closure", a pointer to
  end;

type
  TJanuaCoreLogger = class(TJanuaCustomLogger)
  private
    { Private declarations }
  protected
    // procedure DefaulTJanuaCoreOS;
    procedure SetIsCustomServer(const Value: Boolean); override;
    procedure SetLogType(const Value: TJanuaLogType); override;
  public
    { Public declarations }
  published
    { Published declarations }
  end;

type
  TJanuaDBLogger = class(TJanuaCoreLogger)
  private
    FOnDBDatasetError: TJanuaDBDatasetErrorEvent;
    procedure SetOnDBDatasetError(const Value: TJanuaDBDatasetErrorEvent);
  public
    procedure LogDatabaseError(aItem: TJanuaDBDatasetError);
  published
    property OnDBDatasetError: TJanuaDBDatasetErrorEvent read FOnDBDatasetError write SetOnDBDatasetError;
  end;

implementation

uses
{$IFDEF delphixe}
  // Janua Core Libraries .........................................................................
  Spring, Janua.Mocks.Helpers, System.DateUtils, Soap.EncdDecd, FireDAC.Comp.Dataset,
{$ELSE}
  DateUtils, FileUtil,
{$ENDIF}
  {Janua.Bindings.Impl,} Janua.Application.Framework, Janua.Core.Functions, Janua.Core.JSON;

{ TJanuaCustomLogger }

procedure TJanuaCustomLogger.SetLogFileName(const Value: string);
begin
  FLogFileName := Value;
end;

procedure TJanuaCustomLogger.SetLogMessage(const Value: string);
begin
  self.FLogRecord.LogMessage := Value;
end;

procedure TJanuaCustomLogger.SetLogRecord(const Value: TJanuaLogRecord);
begin
  FLogRecord := Value;
end;

procedure TJanuaCustomLogger.SetLogType(const Value: TJanuaLogType);
begin
  self.FLogRecord.LogType := Value;
end;

procedure TJanuaCustomLogger.SetOnLogMsg(const Value: TJanuaLogEvent);
begin
  FOnLogMsg := Value;
end;

procedure TJanuaCustomLogger.SetProcedureName(const Value: string);
begin
  self.FLogRecord.ProcedureName := Value;
end;

procedure TJanuaCustomLogger.SetResolveToFile(const Value: Boolean);
begin
  FResolveToFile := Value;
end;

procedure TJanuaCustomLogger.WriteFile;
begin
end;

constructor TJanuaCustomLogger.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FAutoFileName := true;

  if Assigned(AOwner) then
  begin
    FComponent := AOwner;
    self.FLogRecord.OwnerName := AOwner.Name;
  end;
  self.FUpTime := Now();
  self.LogType := jltError;
  self.FResolveToFile := true;
  FErrorFileName := 'Error';
  self.FLogFileName := 'Log';
end;

destructor TJanuaCustomLogger.Destroy;
begin
  inherited;
end;

procedure TJanuaCustomLogger.Execute;
begin
  if Assigned(self.FOnLogMsg) then
    FOnLogMsg(self, self.FLogRecord);
  FText := self.FLogRecord.LogText;
end;

class function TJanuaCustomLogger.GetApplicationType: TJanuaApplicationType;
begin
  Result := TJanuaApplication.ApplicationType;
end;

function TJanuaCustomLogger.GetE: Exception;
begin
  Result := nil
end;

function TJanuaCustomLogger.GetFileDir: string;
begin
  Result := '';
  // if not(csDesigning in self.ComponentState) and Assigned(self.FJanuaOS) then
  if not(csDesigning in self.ComponentState) then
    Result := TJanuaCoreOS.GetAppLogPath;

end;

function TJanuaCustomLogger.GetFileName: TFileName;
begin
  Result := '';
  if not(csDesigning in self.ComponentState) then // and Assigned(FJanuaOS) then
    Result := FormatDateTime('yyyymmddhhnnss', Now()) + TJanuaCoreOS.GetAppName;
end;

function TJanuaCustomLogger.GetLogMessage: string;
begin
  Result := self.FLogRecord.LogMessage
end;

function TJanuaCustomLogger.GetLogType: TJanuaLogType;
begin
  Result := self.FLogRecord.LogType
end;

function TJanuaCustomLogger.GetOwnerName: string;
begin
  Result := self.FLogRecord.OwnerName;
end;

function TJanuaCustomLogger.GetProcedureName: string;
begin
  Result := self.FLogRecord.ProcedureName
end;

function TJanuaCustomLogger.GetRootDirectory: string;
begin
  if not(csDesigning in self.ComponentState) then // and Assigned(FJanuaOS) then
    Result := TJanuaCoreOS.GetAppHomePath;
end;

procedure TJanuaCustomLogger.LogError(const Sender: TObject; const aLog: TJanuaLogRecord; E: Exception);
begin
  self.FLogRecord := aLog;
  if Assigned(E) then
    self.FLogRecord.LogMessage := E.Message;
  self.FLogRecord.LogType := TJanuaLogType.jltError;
  self.Execute;
end;

procedure TJanuaCustomLogger.LogMsg(const Sender: TObject; const aLog: TJanuaLogRecord);
begin
  FLogRecord := aLog;
  self.Execute;
end;

procedure TJanuaCustomLogger.RaiseException(ExceptionText: string);
begin
  self.SetLogMessage(ExceptionText);
  raise Exception.Create(ExceptionText);
end;

Class procedure TJanuaCustomLogger.SetApplicationType(const Value: TJanuaApplicationType);
begin
  TJanuaApplication.ApplicationType := Value;
end;

procedure TJanuaCustomLogger.SetAutoFileName(const Value: Boolean);
begin
  FAutoFileName := Value;
end;

procedure TJanuaCustomLogger.SetComponent(const Value: TComponent);
begin
  FComponent := Value;
end;

procedure TJanuaCustomLogger.SetDataset(const Value: TDataset);
begin
  FLogDataset := Value;
end;

procedure TJanuaCustomLogger.SetE(const Value: Exception);
begin
  self.FLogRecord.LogMessage := Value.Message;
end;

procedure TJanuaCustomLogger.SetErrorFileName(const Value: string);
begin
  FErrorFileName := Value;
end;

procedure TJanuaCustomLogger.SetIsCustomServer(const Value: Boolean);
begin
  if Value <> self.FIsCustomServer then
  begin
    FIsCustomServer := Value;
  end;
end;

{ TJanuaCoreLogger }

procedure TJanuaCoreLogger.SetIsCustomServer(const Value: Boolean);
begin
  inherited;
end;

procedure TJanuaCoreLogger.SetLogType(const Value: TJanuaLogType);
begin
  inherited;
end;

{ TJanuaDBLogger }

procedure TJanuaDBLogger.LogDatabaseError(aItem: TJanuaDBDatasetError);
begin
  TJanuaLogger.LogDatabaseError(aItem);
  if Assigned(FOnDBDatasetError) then
    FOnDBDatasetError(self, aItem);
end;

procedure TJanuaDBLogger.SetOnDBDatasetError(const Value: TJanuaDBDatasetErrorEvent);
begin
  FOnDBDatasetError := Value;
end;

end.
