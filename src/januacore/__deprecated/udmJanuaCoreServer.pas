unit udmJanuaCoreServer;

interface

uses
  System.SysUtils, System.Classes,
  // Datasnap
  // Januaproject
  Janua.Core.DB.Types, Janua.Core.Entities, Janua.Core.Classes, Janua.Core.DB.Intf, Janua.Core.Types;

type
  TdmJanuaCoreServer = class(TDataModule)
  strict private
    FServerFunctions: IJanuaServerFunctions;
  private
    FLastErrorSpecs: string;
    procedure SetLastErrorMessage(const Value: string);
    procedure SetDatasetErrors(const Value: TJanuaDBDatasetErrors);
    procedure SetLastErrorSpecs(const Value: string);
    procedure SetHaserrors(const Value: boolean);
    procedure DataModuleCreate(Sender: TObject);
    { Private declarations }
  protected
    FLastErrorMessage: string;
    FSchemaID: integer;
    FSessionKey: string;
    FSessionChecked: boolean;
    FUserProfile: TJanuaRecordUserProfile;
    FDatasetErrors: TJanuaDBDatasetErrors;
    FServerSession: TJanuaServerSession;
  protected
    FUserKey: String;
    FHaserrors: boolean;
    FVerbose: boolean;
    FLog: string;
    procedure CreateTestLog;
    procedure DestroyTestLog;
    procedure WriteLog(aLog: string; aProcedureName: string = ''); virtual;
    procedure WriteError(aLog: string; e: Exception; aProcedureName: string = ''); virtual;
    procedure SetServerSession(const Value: TJanuaServerSession); virtual;
    procedure SetSessionKey(const Value: string); virtual;
    function GetJanuaServerFunctions: IJanuaServerFunctions;
    procedure SetCustomServerFunctions(const Value: IJanuaServerFunctions);
  public
    procedure TestDataModule; virtual; abstract;
    function TestConnect: boolean; virtual; abstract;
    function TestConnection: boolean; virtual;
    property LastErrorMessage: string read FLastErrorMessage write SetLastErrorMessage;
  public
    { Public declarations }
    property LastErrorSpecs: string read FLastErrorSpecs write SetLastErrorSpecs;
    property DatasetErrors: TJanuaDBDatasetErrors read FDatasetErrors write SetDatasetErrors;
    property ServerFunctions: IJanuaServerFunctions read GetJanuaServerFunctions
      write SetCustomServerFunctions;
    property Log: string read FLog write FLog;
    property ServerSession: TJanuaServerSession read FServerSession write SetServerSession;
    property Haserrors: boolean read FHaserrors write SetHaserrors;
  end;

var
  dmJanuaCoreServer: TdmJanuaCoreServer;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

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

function TdmJanuaCoreServer.GetJanuaServerFunctions: IJanuaServerFunctions;
begin
  if not Assigned(FServerFunctions) and not TJanuaApplicationFactory.TryGetInterface(IJanuaServerFunctions,
    FServerFunctions) then
    CreateException('GetJanuaServerFunctions',
      'IJanuaServerFunctions not implemented', self);
  Result := FServerFunctions;
end;

procedure TdmJanuaCoreServer.SetCustomServerFunctions(const Value: IJanuaServerFunctions);
begin
  FServerFunctions := Value;
end;

procedure TdmJanuaCoreServer.SetDatasetErrors(const Value: TJanuaDBDatasetErrors);
begin
  FDatasetErrors := Value;
end;

procedure TdmJanuaCoreServer.SetHaserrors(const Value: boolean);
begin
  FHaserrors := Value;
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
  Result := True;
end;

procedure TdmJanuaCoreServer.WriteError(aLog: string; e: Exception; aProcedureName: string = '');
begin
  if not TJanuaCoreOS.PublicRaised then
    TJanuaCoreOS.PublicWriteError(self, aProcedureName, aLog, e, True);
  self.FHaserrors := True;
  self.FLastErrorMessage := DateTimeToStr(Now()) + 'WriteLog: ' + e.Message;
end;

procedure TdmJanuaCoreServer.WriteLog(aLog: string; aProcedureName: string = '');
begin
  TJanuaCoreOS.PublicWriteLog(self, aProcedureName, aLog)
end;

end.
