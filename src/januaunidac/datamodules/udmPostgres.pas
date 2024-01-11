unit udmPostgres;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, Janua.Unidac.Connection, UniProvider,
  PostgreSQLUniProvider;

type
  TdmPostgres = class(TDataModule)
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    UniConnection1: TJanuaUniConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPostgres: TdmPostgres;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

end.
