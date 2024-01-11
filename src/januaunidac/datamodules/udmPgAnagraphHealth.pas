unit udmPgAnagraphHealth;

interface

uses
  System.SysUtils, System.Classes, udmJanuaPostgresModel, Data.DB, Uni, MemDS, DBAccess, UniProvider,
  PostgreSQLUniProvider;

type
  TdmPgAnagraphHealth = class(TdmJanuaPostgresModel)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgAnagraphHealth: TdmPgAnagraphHealth;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

end.
