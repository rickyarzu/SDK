unit udmJanuaPostgresExpo;

interface

uses
  System.SysUtils, System.Variants, System.Classes,
  udmJanuaPostgresModel, Data.DB, PgAccess, MemDS, DBAccess, Datasnap.Provider, Datasnap.DBClient;

type
  TdmJanuaPostgresExpo = class(TdmJanuaPostgresModel)
    qryTradeFairs: TPgQuery;
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
