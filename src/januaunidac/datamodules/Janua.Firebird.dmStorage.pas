unit Janua.Firebird.dmStorage;

interface

uses
  System.SysUtils, System.Classes,
  // DB Acces
  Data.DB, DBAccess, MemDS, Uni, UniProvider, InterBaseUniProvider,
  // Janua
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Bindings.Intf, Janua.Core.DB.Intf, Janua.Uni.Intf,
  // Inherited DataModule
  Janua.Core.DataModule, Janua.Unidac.Connection;

type
  TdmJanuaFBStorage = class(TJanuaCoreDataModule, IJanuaDataModule, IJanuaBindable)
    pgErgoConnection: TJanuaUniConnection;
    IBUniProvider: TInterBaseUniProvider;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure pgErgoConnectionBeforeConnect(Sender: TObject);
    procedure pgErgoConnectionError(Sender: TObject; E: EDAError; var Fail: Boolean);
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
  dmJanuaFBStorage: TdmJanuaFBStorage;

implementation

uses
  Janua.Firebird.Impl, Janua.Application.Framework, Janua.Core.Types, Janua.Core.Classes,
  Janua.Core.Functions;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmJanuaFBStorage }

constructor TdmJanuaFBStorage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure TdmJanuaFBStorage.DataModuleCreate(Sender: TObject);
var
  i: integer;
begin
  // FIsSetSchema := false;
  FDatasetFunctions := TFbDatasetFunctions.Create;
  FDatasetFunctions.Activate(Self);
  FDatasetFunctions.SetupConnection(pgErgoConnection as TUniConnection);
  FServerFunctions := TJanuaFirebirdServerFunctions.Create;
  // Offset := 0;
  // Limit := 1000;
  ServerFunctions.Activate(Self);
end;

procedure TdmJanuaFBStorage.DataModuleDestroy(Sender: TObject);
begin
  try
    FServerFunctions := nil;
  except
    on E: exception do
      LogException('Destroy', E, Self);
  end;
end;

function TdmJanuaFBStorage.GetServerFunctions: IJanuaServerFunctions;
begin
  Result := FServerFunctions;
end;

function TdmJanuaFBStorage.GetSQLFunctions: IJanuaDatasetFunctions;
begin
  Result := FDatasetFunctions
end;

function TdmJanuaFBStorage.INternalActivate: Boolean;
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

procedure TdmJanuaFBStorage.ParamsDefault(aDataset: TDataset);
begin
  if (aDataset is TUniQuery) then
    with (aDataset as TUniQuery) do
    begin
      ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID
    end;
end;

procedure TdmJanuaFBStorage.pgErgoConnectionBeforeConnect(Sender: TObject);
var
  i: integer;
  a: TJanuaServerRecordConf;
  E: TJanuaUniConnection;
  s: string;
begin
  a := TJanuaApplication.JanuaServerConf;
  E := Self.pgErgoConnection;
  try
    E.SchemaID := TJanuaApplication.DBSchemaID;
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
  end;
end;

procedure TdmJanuaFBStorage.pgErgoConnectionError(Sender: TObject; E: EDAError; var Fail: Boolean);
begin
  inherited;
  raise exception.Create(TJanuaApplication.AppName + ' ' + ReportConf + sLineBreak + E.Message);
end;

procedure TdmJanuaFBStorage.QueryDefault(aDataset: TDataset; aGUIDField, aDelField: TField);
begin
  inherited
end;

function TdmJanuaFBStorage.ReportConf: string;
begin
  Result := 'Address: ' + PgErgoConnection.Server + sLineBreak;
  Result := Result + 'Port: ' + PgErgoConnection.Port.ToString + sLineBreak;
  Result := Result + 'Database: ' + PgErgoConnection.Database + sLineBreak;
end;

end.
