unit udmSportsAnagraph;

interface

uses
  System.SysUtils, System.Variants, System.Classes,
  // DB
  Data.DB, Uni, MemDS, DBAccess, UniProvider, PostgreSQLUniProvider,
  // Janua
  udmPgAnagraph, Janua.Core.Classes, Janua.Core.Exceptions, Janua.Unidac.Connection;

type
  TdmSportAnagraph = class(TdmPgAnagraph)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmSportAnagraph: TdmSportAnagraph;

implementation

{$R *.dfm}

end.
