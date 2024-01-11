unit udmJanuaPostgresExpo;

interface

uses
  System.SysUtils, System.Variants, System.Classes,
  udmJanuaPostgresModel, Data.DB, Uni, MemDS, DBAccess, Datasnap.Provider, Datasnap.DBClient, UniProvider,
  PostgreSQLUniProvider;

type
  TdmJanuaPostgresExpo = class(TdmJanuaPostgresModel)
    qryTradeFairs: TUniQuery;
    qryTradeFairsanagraph_id: TIntegerField;
    qryTradeFairsdb_schema_id: TIntegerField;
    qryTradeFairsuser_id: TIntegerField;
    qryTradeFairsan_name: TWideStringField;
    qryTradeFairsan_town: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmJanuaPostgresExpo: TdmJanuaPostgresExpo;

implementation

{$R *.dfm}

end.
