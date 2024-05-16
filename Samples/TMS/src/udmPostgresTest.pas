unit udmPostgresTest;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniDacVcl, UniProvider, PostgreSQLUniProvider,
  MemDS;

type
  TdmPostgresTest = class(TDataModule)
    pgConnection: TUniConnection;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    UniConnectDialog1: TUniConnectDialog;
    UniQuery1: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPostgresTest: TdmPostgresTest;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
