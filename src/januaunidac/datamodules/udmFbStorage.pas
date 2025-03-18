unit udmFbStorage;

interface

uses
  System.SysUtils, System.Classes,
  // DB Acces
  Data.DB, DBAccess, MemDS, Uni, UniProvider, PostgreSQLUniProvider,
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Bindings.Intf, Janua.Core.DB.Intf, Janua.Uni.Intf,
  // Inherited DataModule
  Janua.Core.DataModule, Janua.Unidac.Connection, InterBaseUniProvider;

type
  TdmFbStorage = class(TJanuaCoreDataModule, IJanuaDataModule, IJanuaBindable)
    InterBaseUniProvider: TInterBaseUniProvider;
    FbPhoenixConnection: TUniConnection;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
    procedure FbPhoenixConnectionError(Sender: TObject; E: EDAError; var Fail: Boolean);
    procedure FbPhoenixConnectionBeforeConnect(Sender: TObject);
  private
    FServerFunctions: IJanuaServerFunctions;
    FDatasetFunctions: IJanuaUniDatasetFunctions;
    function GetSQLFunctions: IJanuaDatasetFunctions;
    { Private declarations }
  strict protected
    function INternalActivate: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    function ReportConf: string;
    function GetServerFunctions: IJanuaServerFunctions;
    procedure QueryDefault(aDataset: TDataset; aGUIDField: TField = nil; aDelField: TField = nil);
    procedure ParamsDefault(aDataset: TDataset);
  public
    { Public declarations }
    property ServerFunctions: IJanuaServerFunctions read GetServerFunctions;
    property SQLFunctions: IJanuaDatasetFunctions read GetSQLFunctions;
  end;

var
  dmFbStorage: TdmFbStorage;

implementation

uses
  Janua.Firebird.Impl, Janua.Application.Framework, Janua.Core.Types, Janua.Core.Classes,
  Janua.Core.Functions;

{$R *.dfm}

constructor TdmFbStorage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure TdmFbStorage.DataModuleDestroy(Sender: TObject);
begin
  try
    FServerFunctions := nil;
  except
    on E: exception do
      LogException('Destroy', E, Self);
  end;
end;

procedure TdmFbStorage.FbPhoenixConnectionBeforeConnect(Sender: TObject);
var
  i: integer;
  a: TJanuaServerRecordConf;
  E: TUniConnection;
  s: string;
begin
  a := TJanuaApplication.JanuaServerConf;
  E := FbPhoenixConnection;
  try
    {E.SchemaID := TJanuaApplication.DBSchemaID;}
    E.Server := TJanuaApplication.ServerAddress;
    E.Port := TJanuaApplication.ServerPort;
    E.Database := TJanuaApplication.ServerDatabaseName;
    // non aggiorno lo schema in quanto ogni server ha il suo schema .........................................
    s := 'PostgreSQL.Schema' + E.SpecificOptions.NameValueSeparator + a.Schema;
    i := E.SpecificOptions.IndexOfName('PostgreSQL.Schema');
    if (i > -1) and (E.SpecificOptions[i] <> s) then
      E.SpecificOptions[i] := s;
    E.Password := a.Password;
    E.Username := a.Username;
    s := 'PostgreSQL.UseUnicode' + E.SpecificOptions.NameValueSeparator + 'True';
    i := E.SpecificOptions.IndexOfName('PostgreSQL.UseUnicode');
    if (i > -1) and (E.SpecificOptions[i] <> s) then
      E.SpecificOptions[i] := s;
  except
    on E: exception do
      raise exception.Create(ClassName + '. PgErgoConnectionBeforeConnect Error: ' + E.Message);
  end
end;

procedure TdmFbStorage.FbPhoenixConnectionError(Sender: TObject; E: EDAError; var Fail: Boolean);
begin
  inherited;
  raise exception.Create(TJanuaApplication.AppName + ' ' + ReportConf + sLineBreak + E.Message);
end;

procedure TdmFbStorage.DataModuleCreate(Sender: TObject);
var
  i: integer;
begin
  // FIsSetSchema := false;
  FDatasetFunctions := TFbDatasetFunctions.Create;
  FDatasetFunctions.Activate(Self);
  FDatasetFunctions.SetupConnection(FbPhoenixConnection as TUniConnection);
  FServerFunctions := TJanuaFirebirdServerFunctions.Create;
  // Offset := 0;
  // Limit := 1000;
  ServerFunctions.Activate(Self);
end;

function TdmFbStorage.GetServerFunctions: IJanuaServerFunctions;
begin
  Result := FServerFunctions;
end;

function TdmFbStorage.GetSQLFunctions: IJanuaDatasetFunctions;
begin
  Result := FDatasetFunctions;
end;

function TdmFbStorage.INternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := True;
      end;
    except
      on E: exception do
        RaiseException('InternalActivate', E, Self);
    end;
end;

procedure TdmFbStorage.ParamsDefault(aDataset: TDataset);
begin
  if (aDataset is TUniQuery) then
    with (aDataset as TUniQuery) do
    begin
      ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID
    end;
end;

procedure TdmFbStorage.PgErgoConnectionBeforeConnect(Sender: TObject);
begin;
end;

procedure TdmFbStorage.QueryDefault(aDataset: TDataset; aGUIDField: TField = nil; aDelField: TField = nil);
begin
  aDataset.FieldByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID
end;

function TdmFbStorage.ReportConf: string;
begin
  Result := 'Address: ' + FbPhoenixConnection.Server + sLineBreak;
  Result := Result + 'Port: ' + FbPhoenixConnection.Port.ToString + sLineBreak;
  Result := Result + 'Database: ' + FbPhoenixConnection.Database + sLineBreak;
end;

end.
