unit udmPgBooks;

interface

uses
  System.SysUtils, System.Variants, System.Classes,
  udmJanuaPostgresModel, Data.DB, PgAccess, MemDS, DBAccess, Janua.Core.Classes,
  Janua.Postgres.Functions, Datasnap.Provider, Datasnap.DBClient;

type
  TdmPgBooks = class(TdmJanuaPostgresModel)
    qryPublicBooksDef: TPgQuery;
    qryPublicBooksDefbook_def_id: TIntegerField;
    qryPublicBooksDeftitle: TWideStringField;
    qryPublicBooksDefsubtitle: TWideStringField;
    qryPublicBooksDefcover_type_id: TSmallintField;
    qryPublicBooksDefeditor_id: TIntegerField;
    qryPublicBooksDefauthor_id: TIntegerField;
    qryPublicBooksDefcollection_id: TSmallintField;
    qryPublicBooksDeflanguage_id: TSmallintField;
    qryPublicBooksDefisbn13: TWideStringField;
    qryPublicBooksDefisbn10: TWideStringField;
    qryPublicBooksDefpublish_year: TSmallintField;
    qryPublicBooksDefrelease_date: TPgDateField;
    qryPublicBooksDefdescription: TWideMemoField;
    qryPublicBooksDefdb_schema_id: TIntegerField;
    qryBooksOffers: TPgQuery;
    qryBooksOffersoffer_id: TLargeintField;
    qryBooksOffersvalid_since: TPgDateField;
    qryBooksOffersvalid_until: TPgDateField;
    qryBooksOffersused: TBooleanField;
    qryBooksOffersconditions: TSmallintField;
    qryBooksOffersimage_id: TLargeintField;
    qryBooksOffersadvertiser_id: TIntegerField;
    qryBooksOffersdb_schema_id: TIntegerField;
    qryBooksOffersbook_def_id: TIntegerField;
    qryBooksOffersuni_id: TSmallintField;
    qryBooksOfferstitle: TWideStringField;
    qryBooksOfferssubtitle: TWideStringField;
    qryBooksOfferscover_type_id: TSmallintField;
    qryBooksOfferseditor_id: TIntegerField;
    qryBooksOffersauthor_id: TIntegerField;
    qryBooksOfferscollection_id: TSmallintField;
    qryBooksOfferslanguage_id: TSmallintField;
    qryBooksOffersisbn13: TWideStringField;
    qryBooksOffersisbn10: TWideStringField;
    qryBooksOfferspublish_year: TSmallintField;
    qryBooksOffersrelease_date: TPgDateField;
    qryBooksOffersdescription: TWideMemoField;
    qryPublicBooksDefmain_image_id: TLargeintField;
    procedure qryPublicBooksDefNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgBooks: TdmPgBooks;

implementation

{$R *.dfm}

procedure TdmPgBooks.qryPublicBooksDefNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryPublicBooksDefdb_schema_id.Value := 0;
end;

end.
