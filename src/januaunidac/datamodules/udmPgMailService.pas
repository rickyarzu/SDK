unit udmPgMailService;

interface

uses
  System.SysUtils, System.Classes, udmJanuaPostgresModel,
  Data.DB, Uni, MemDS,
  DBAccess, UniProvider, PostgreSQLUniProvider, Janua.Unidac.Connection;

type
  TdmPgMailService = class(TdmJanuaPostgresModel)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgMailService: TdmPgMailService;

implementation

{$R *.dfm}

end.
