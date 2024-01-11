unit udmPgStorage;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Janua.Postgres.Functions, PgAccess,  MemDS;

type
  TdmPgStorage = class(TDataModule)
    PgErgoConnection: TPgConnection;
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    FServerFunctions: TJanuaPostgresServerFunctions;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    function ReportConf: string;
    procedure QueryDefault(aDataset: TDataset; aGUIDField: TField = nil; aDelField: TField = nil);
    procedure ParamsDefault(aDataset: TDataset);
  public
    { Public declarations }
    property ServerFunctions: TJanuaPostgresServerFunctions read FServerFunctions;
  end;

var
  dmPgStorage: TdmPgStorage;

implementation

uses
  Janua.Core.Types;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

constructor TdmPgStorage.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TdmPgStorage.DataModuleCreate(Sender: TObject);
begin
  FServerFunctions := TJanuaPostgresServerFunctions.Create(self);
end;

procedure TdmPgStorage.ParamsDefault(aDataset: TDataset);
begin
  if (aDataset is TPgQuery) then
    with (aDataset as TPgQuery) do
    begin
      ParamByName('db_schema_id').AsInteger := JanuaApplicationGlobalProfile.DBSchemaID
    end;
end;

procedure TdmPgStorage.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  self.PgErgoConnection.Server := JanuaApplicationGlobalProfile.JanuaServerConf.Address;
  self.PgErgoConnection.Port := JanuaApplicationGlobalProfile.JanuaServerConf.Port;
  self.PgErgoConnection.Database := JanuaApplicationGlobalProfile.JanuaServerConf.DatabaseName;
  // non aggiorno lo schema in quanto ogni server ha il suo schema ....................................................
  if self.PgErgoConnection.Schema = '' then
    self.PgErgoConnection.Schema := JanuaApplicationGlobalProfile.JanuaServerConf.Schema;
  self.PgErgoConnection.Username := JanuaApplicationGlobalProfile.JanuaServerConf.Username;
  self.PgErgoConnection.Password := JanuaApplicationGlobalProfile.JanuaServerConf.Password;
end;



procedure TdmPgStorage.QueryDefault(aDataset: TDataset; aGUIDField: TField = nil; aDelField: TField = nil);
begin
      aDataset.FieldByName('db_schema_id').AsInteger := JanuaApplicationGlobalProfile.DBSchemaID
end;

function TdmPgStorage.ReportConf: string;
begin
  Result := 'Address: ' + PgErgoConnection.Server + sLineBreak;
  Result := Result + 'Port: ' + PgErgoConnection.Port.ToString + sLineBreak;
  Result := Result + 'Database: ' + PgErgoConnection.Database + sLineBreak;
end;

end.
