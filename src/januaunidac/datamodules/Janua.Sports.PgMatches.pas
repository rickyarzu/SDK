unit Janua.Sports.PgMatches;

interface

uses
  // System units ................................
  System.SysUtils, System.Variants, System.Classes,
  // DB Units
  Data.DB, Uni, MemDS, DBAccess, DAScript, UniScript, UniProvider, PostgreSQLUniProvider,
  // Janua Core Functions
  Janua.Core.Classes, Janua.Core.System, Janua.Core.Cloud,
  // Janua Postgres DataModules Functions
  // Janua.Football.Types, Janua.Football.Intf,
  udmPgAnagraph, Janua.Postgres.Cloud, Janua.Sports.PgModel, Janua.Core.Exceptions,
  Janua.Unidac.Connection;

type
  TdmJanuaPgSportsMatches = class(TdmJanuaPgSportsModel)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmJanuaPgSportsMatches: TdmJanuaPgSportsMatches;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
