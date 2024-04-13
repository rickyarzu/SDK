unit UdmFirebirdOrmGenerator;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, UniDacVcl;

type
  TdmFirebirdOrmGenerator = class(TDataModule)
    UniConnection1: TUniConnection;
    dlgConnect: TUniConnectDialog;
    qryTables: TUniQuery;
    qryTablesTABLE_NAME: TStringField;
    dsTables: TUniDataSource;
    tbFields: TUniTable;
  private
    FTargetDirectory: string;
    procedure SetTargetDirectory(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property TargetDirectory: string read FTargetDirectory write SetTargetDirectory;
  end;

var
  dmFirebirdOrmGenerator: TdmFirebirdOrmGenerator;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmFirebirdOrmGenerator }

procedure TdmFirebirdOrmGenerator.SetTargetDirectory(const Value: string);
begin
  FTargetDirectory := Value;
end;

end.
