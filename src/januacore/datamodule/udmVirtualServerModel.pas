unit udmVirtualServerModel;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes, Janua.Core.Types, Janua.Core.DB.Intf,
  Janua.Core.Entities, Janua.Core.Servers, Janua.Core.DB.Types;

type
  TdmVirtualServerModel = class(TDataModule, IJanuaServerDataModule)
  private
    FLastErrorSpecs: string;
    FLog: string;
    FLastErrorMessage: string;
    FSchemaID: integer;
    FSessionKey: string;
    FSessionChecked: boolean;
    FDatasetErrors: TJanuaDBDatasetErrors;
    FServerSession: TJanuaServerSession;
    FCustomServerFunctions: IJanuaServerFunctions;
    function GetLastErrorMessage: string;
    function GetSessionKey: string;
    procedure SetLastErrorMessage(const Value: string);
    procedure SetDatasetErrors(const Value: TJanuaDBDatasetErrors);
    procedure SetLastErrorSpecs(const Value: string);
    procedure SetHaserrors(const Value: boolean);
    procedure DataModuleCreate(Sender: TObject);
    function GetLog: string;
    procedure SetLog(const Value: string);
    { Private declarations }
  protected
    FUserProfile: TJanuaRecordUserProfile;
    function GetCustomServerFunctions: IJanuaServerFunctions;
    procedure SetCustomServerFunctions(const Value: IJanuaServerFunctions);
    function GetDatasetErrors: TJanuaDBDatasetErrors;
  protected
    FUserKey: String;
    FHaserrors: boolean;
    FVerbose: boolean;
    procedure CreateTestLog;
    procedure DestroyTestLog;
    procedure WriteLog(aLog: string; aProcedureName: string = ''); virtual;
    procedure WriteError(aLog: string; e: Exception; aProcedureName: string = ''); virtual;
    procedure SetServerSession(const Value: TJanuaServerSession); virtual;
    procedure SetSessionKey(const Value: string); virtual;
  public
    procedure TestDataModule;
    function TestConnect: boolean;
    function TestConnection: boolean; virtual;
    property LastErrorMessage: string read FLastErrorMessage write SetLastErrorMessage;
  public
    { Public declarations }
    property LastErrorSpecs: string read FLastErrorSpecs write SetLastErrorSpecs;
    property DatasetErrors: TJanuaDBDatasetErrors read GetDatasetErrors write SetDatasetErrors;
    property Log: string read GetLog write SetLog;
    property ServerSession: TJanuaServerSession read FServerSession write SetServerSession;
    property Haserrors: boolean read FHaserrors write SetHaserrors;
    property SessionKey: string read GetSessionKey write SetSessionKey;
  end;

var
  dmVirtualServerModel: TdmVirtualServerModel;

implementation


{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TdmVirtualServerModel }

procedure TdmVirtualServerModel.CreateTestLog;
begin

end;

procedure TdmVirtualServerModel.DataModuleCreate(Sender: TObject);
begin

end;

procedure TdmVirtualServerModel.DestroyTestLog;
begin

end;

function TdmVirtualServerModel.GetCustomServerFunctions: IJanuaServerFunctions;
begin
  Result := FCustomServerFunctions
end;

function TdmVirtualServerModel.GetDatasetErrors: TJanuaDBDatasetErrors;
begin
  Result := self.FDatasetErrors
end;

function TdmVirtualServerModel.GetLastErrorMessage: string;
begin
  Result := self.FLastErrorMessage
end;

function TdmVirtualServerModel.GetLog: string;
begin
  Result := self.FLog
end;

function TdmVirtualServerModel.GetSessionKey: string;
begin
  Result := FSessionKey
end;

procedure TdmVirtualServerModel.SetCustomServerFunctions(const Value: IJanuaServerFunctions);
begin

end;

procedure TdmVirtualServerModel.SetDatasetErrors(const Value: TJanuaDBDatasetErrors);
begin

end;

procedure TdmVirtualServerModel.SetHaserrors(const Value: boolean);
begin

end;

procedure TdmVirtualServerModel.SetLastErrorMessage(const Value: string);
begin

end;

procedure TdmVirtualServerModel.SetLastErrorSpecs(const Value: string);
begin

end;

procedure TdmVirtualServerModel.SetLog(const Value: string);
begin
  self.FLog := Value
end;

procedure TdmVirtualServerModel.SetServerSession(const Value: TJanuaServerSession);
begin

end;

procedure TdmVirtualServerModel.SetSessionKey(const Value: string);
begin

end;

function TdmVirtualServerModel.TestConnect: boolean;
begin
  Result := True; // mock true result
end;

function TdmVirtualServerModel.TestConnection: boolean;
begin
  Result := True; // mock server Result
end;

procedure TdmVirtualServerModel.TestDataModule;
begin

end;

procedure TdmVirtualServerModel.WriteError(aLog: string; e: Exception; aProcedureName: string);
begin

end;

procedure TdmVirtualServerModel.WriteLog(aLog, aProcedureName: string);
begin

end;

end.
