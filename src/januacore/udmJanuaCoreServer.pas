unit udmJanuaCoreServer;

interface

uses
  System.SysUtils, System.Classes,
  // Datasnap
  // Januaproject
  Janua.Core.Entities, Janua.Core.Types, Janua.Core.DB.Types, Janua.Core.Legacy, Janua.Core.Classes,
  Janua.Core.DB;

type
  TdmJanuaCoreServer = class(TDataModule)
  private
    FLastErrorSpecs: string;
    FJanuaCoreLogger: TJanuaCustomLogger;
    procedure SetLastErrorMessage(const Value: string);
    procedure SetDatasetErrors(const Value: TJanuaDBDatasetErrors);
    procedure SetLastErrorSpecs(const Value: string);
    procedure SetHaserrors(const Value: boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure SetCustomServerFunctions(const Value: TJanuaServerFunctions);
    { Private declarations }
  protected
    FLastErrorMessage: string;
    FSchemaID: integer;
    FSessionKey: string;
    FSessionChecked: boolean;
    FUserProfile: TJanuaRecordUserProfile;
    FDatasetErrors: TJanuaDBDatasetErrors;
    FServerSession: TJanuaServerSession;
    procedure SetJanuaCoreLogger(const Value: TJanuaCustomLogger); virtual;
  protected
    FCustomServerFunctions: TJanuaServerFunctions;
    FUserKey: String;
    FHaserrors: boolean;
    FVerbose: boolean;
    FLog: string;
    FPublicRaised: Boolean;
    procedure CreateTestLog;
    procedure DestroyTestLog;
    procedure WriteLog(aLog: string; aProcedureName: string = ''); virtual;
    procedure WriteError(aLog: string; e: Exception; aProcedureName: string = ''); virtual;
    procedure SetServerSession(const Value: TJanuaServerSession); virtual;
    procedure SetSessionKey(const Value: string); virtual;
  public
    procedure TestDataModule; virtual; abstract;
    function TestConnect: boolean; virtual; abstract;
    function TestConnection: boolean; virtual;
    property LastErrorMessage: string read FLastErrorMessage write SetLastErrorMessage;
    property JanuaCoreLogger: TJanuaCustomLogger read FJanuaCoreLogger write SetJanuaCoreLogger;
  public
    { Public declarations }
    property LastErrorSpecs: string read FLastErrorSpecs write SetLastErrorSpecs;
    property DatasetErrors: TJanuaDBDatasetErrors read FDatasetErrors write SetDatasetErrors;
    property ServerFunctions: TJanuaServerFunctions read FCustomServerFunctions
      write SetCustomServerFunctions;
    property Log: string read FLog write FLog;
    property ServerSession: TJanuaServerSession read FServerSession write SetServerSession;
    property Haserrors: boolean read FHaserrors write SetHaserrors;
  end;

var
  dmJanuaCoreServer: TdmJanuaCoreServer;

implementation

uses Janua.Application.Framework;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TdmJanuaCoreServer }

procedure TdmJanuaCoreServer.CreateTestLog;
begin

end;

procedure TdmJanuaCoreServer.DataModuleCreate(Sender: TObject);
begin
  // eliminata creazione del logo
end;

procedure TdmJanuaCoreServer.DestroyTestLog;
begin

end;

procedure TdmJanuaCoreServer.SetCustomServerFunctions(const Value: TJanuaServerFunctions);
begin
  FCustomServerFunctions := Value;
end;

procedure TdmJanuaCoreServer.SetDatasetErrors(const Value: TJanuaDBDatasetErrors);
begin
  FDatasetErrors := Value;
end;

procedure TdmJanuaCoreServer.SetHaserrors(const Value: boolean);
begin
  FHaserrors := Value;
end;

procedure TdmJanuaCoreServer.SetJanuaCoreLogger(const Value: TJanuaCustomLogger);
begin
  inherited;

end;

procedure TdmJanuaCoreServer.SetLastErrorMessage(const Value: string);
begin
  self.FLastErrorMessage := Value;
end;

procedure TdmJanuaCoreServer.SetLastErrorSpecs(const Value: string);
begin
  FLastErrorSpecs := Value;
end;

procedure TdmJanuaCoreServer.SetServerSession(const Value: TJanuaServerSession);
begin
  self.FServerSession := Value;
end;

procedure TdmJanuaCoreServer.SetSessionKey(const Value: string);
begin
  self.FSessionKey := Value;
end;

function TdmJanuaCoreServer.TestConnection: boolean;
begin
  Result := False;
end;

procedure TdmJanuaCoreServer.WriteError(aLog: string; e: Exception; aProcedureName: string = '');
begin
    if not FPublicRaised then
    TJanuaCoreOS.PublicWriteError(self, aProcedureName, aLog, e, true);

  self.FHaserrors := true;
  self.FLastErrorMessage := DateTimeToStr(Now()) + 'WriteLog: ' + e.Message;
end;

procedure TdmJanuaCoreServer.WriteLog(aLog: string; aProcedureName: string = '');
begin

  TJanuaCoreOS.PublicWriteLog(self, aProcedureName, aLog)
end;

end.
