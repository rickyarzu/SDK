unit udmPgItems;

interface

uses
  System.SysUtils, System.Classes, udmJanuaPostgresModel, Data.DB, Uni, MemDS, DBAccess, Datasnap.Provider,
  Datasnap.DBClient, UniProvider, PostgreSQLUniProvider;

type
  TdmPgItems = class(TdmJanuaPostgresModel)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgItems: TdmPgItems;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

end.
