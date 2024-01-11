unit udmJanuaPostgresExpoAnagraph;

interface

uses
  System.SysUtils, System.Classes, udmPgAnagraph, DBAccess, Uni, Data.DB,
  MemDS, Datasnap.Provider, Datasnap.DBClient, UniProvider, PostgreSQLUniProvider;

type
  TdmJanuaPostgresExpoAnagraph = class(TdmPgAnagraph)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmJanuaPostgresExpoAnagraph: TdmJanuaPostgresExpoAnagraph;

implementation

{$R *.dfm}

end.
