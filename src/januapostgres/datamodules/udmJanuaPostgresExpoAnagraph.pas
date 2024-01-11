unit udmJanuaPostgresExpoAnagraph;

interface

uses
  System.SysUtils, System.Classes, udmPgAnagraph, DBAccess, PgAccess, Data.DB,
  MemDS, Datasnap.Provider, Datasnap.DBClient;

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
