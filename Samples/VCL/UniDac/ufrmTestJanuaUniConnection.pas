unit ufrmTestJanuaUniConnection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, Uni, Janua.Unidac.Connection, UniProvider,
  PostgreSQLUniProvider, UniDacVcl, Vcl.StdCtrls;

type
  TfrmTestJanuaUniConnection = class(TForm)
    JanuaUniConnection1: TJanuaUniConnection;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    UniConnectDialog1: TUniConnectDialog;
    btnTestBaseConnect: TButton;
    btnTestSchemaConnect: TButton;
    btnTestParamConnection: TButton;
    procedure btnTestBaseConnectClick(Sender: TObject);
    procedure btnTestSchemaConnectClick(Sender: TObject);
    procedure btnTestParamConnectionClick(Sender: TObject);
  private
    procedure SetupSchema;
    procedure CleanUp;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestJanuaUniConnection: TfrmTestJanuaUniConnection;

implementation

{$R *.dfm}

procedure TfrmTestJanuaUniConnection.btnTestBaseConnectClick(Sender: TObject);
begin
  CleanUp;
  JanuaUniConnection1.Connect;
  ShowMessage(JanuaUniConnection1.SchemaResult);
end;

procedure TfrmTestJanuaUniConnection.btnTestParamConnectionClick(Sender: TObject);
var
  aItem: TSettingsItem;
begin
  CleanUp;
  SetupSchema;
  aItem := JanuaUniConnection1.SchemaParams.Add;
  aItem.Key := 'sports.an_player_group_id';
  aItem.Value := 30;
  JanuaUniConnection1.Connect;
  ShowMessage(JanuaUniConnection1.SchemaResult);
end;

procedure TfrmTestJanuaUniConnection.SetupSchema;
begin
  JanuaUniConnection1.SchemaID := 0;
  JanuaUniConnection1.SchemaParamKey := 'system.db_schema_id';
  JanuaUniConnection1.SchemaSQL := 'SET SESSION "%s" = %s; ';
end;

procedure TfrmTestJanuaUniConnection.CleanUp;
begin
  JanuaUniConnection1.Connected := False;
  JanuaUniConnection1.SchemaSQL := '';
  JanuaUniConnection1.SchemaParams.Clear;
end;

procedure TfrmTestJanuaUniConnection.btnTestSchemaConnectClick(Sender: TObject);
begin
  CleanUp;
  SetupSchema;
  JanuaUniConnection1.Connect;
  ShowMessage(JanuaUniConnection1.SchemaResult);
end;

end.
