unit udmCloud;

interface

uses
  System.SysUtils, System.Classes, Data.DB, PgAccess, MemDS, DBAccess,
  Janua.Core.Jpublic,
{$IFDEF MSWINDOWS}
  MidasLib,
{$ENDIF}
  Datasnap.DBClient, Janua.Postgres.Functions, Janua.Core.System,
  Janua.Core.Functions, Datasnap.Provider, Janua.Core.Classes;

type
  TdmCloud = class(TDataModule)
    PgConnection1: TPgConnection;
    qryTextFiles: TPgQuery;
    qryTextFilestext_file_id: TLargeintField;
    qryTextFilestext_file_name: TWideStringField;
    qryTextFilestext_file_des: TWideStringField;
    qryTextFilestext_file: TWideMemoField;
    qryTextFilesdb_schema_id: TIntegerField;
    qryTextFilesdb_owner_id: TIntegerField;
    qryTextFilessystem_file: TBooleanField;
    qryTextFilestext_file_key: TWideStringField;
    procedure PgConnection1BeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    FServerSession: TJanuaServerSession;
    FServerFunctions: Janua.Postgres.Functions.TJanuaPostgresServerFunctions;
    FLog: TStringList;
    FisServer: boolean;
    FSessionKey: string;
    FJanuaCoreLogger: TJanuaCoreLogger;
    procedure SetServerSession(const Value: TJanuaServerSession);
    procedure SetisServer(const Value: boolean);
    procedure SetLog(const Value: TStringList);
    procedure SetSessionKey(const Value: string);
    procedure SetJanuaCoreLogger(const Value: TJanuaCoreLogger);
    { Private declarations }
  public
    { Public declarations }
    property ServerSession: TJanuaServerSession read FServerSession write SetServerSession;
    property SessionKey: string read FSessionKey write SetSessionKey;
    property Log: TStringList read FLog write SetLog;
    property isServer: boolean read FisServer write SetisServer;
    property JanuaCoreLogger: TJanuaCoreLogger read FJanuaCoreLogger write SetJanuaCoreLogger;
  end;

var
  dmCloud: TdmCloud;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure TdmCloud.DataModuleCreate(Sender: TObject);
begin
  FServerFunctions := Janua.Postgres.Functions.TJanuaPostgresServerFunctions.Create(self);
  self.FLog := TStringList.Create;
end;

procedure TdmCloud.PgConnection1BeforeConnect(Sender: TObject);
begin
  if FServerSession.CustomServer then
  begin
    self.PgConnection1.Server := FServerSession.CustomServerUrl;
    self.PgConnection1.Port := FServerSession.CustomServerPort.ToInteger;
    self.PgConnection1.Database := FServerSession.CustomServerSchema;
  end;
end;

procedure TdmCloud.SetisServer(const Value: boolean);
begin
  FisServer := Value;
end;

procedure TdmCloud.SetJanuaCoreLogger(const Value: TJanuaCoreLogger);
begin
  FJanuaCoreLogger := Value;
  if assigned(FJanuaCoreLogger) then
    FServerFunctions.JanuaLogger := FJanuaCoreLogger;
end;

procedure TdmCloud.SetLog(const Value: TStringList);
begin
  FLog := Value;
end;

procedure TdmCloud.SetServerSession(const Value: TJanuaServerSession);
begin
  FServerSession := Value;
  if FServerSession.CustomServer then
  begin
    self.PgConnection1.Close;
    self.PgConnection1.Server := FServerSession.CustomServerUrl;
    self.PgConnection1.Port := FServerSession.CustomServerPort.ToInteger;
    self.PgConnection1.Database := FServerSession.CustomServerSchema;
  end;
end;

procedure TdmCloud.SetSessionKey(const Value: string);
begin
  FSessionKey := Value;
end;

end.
