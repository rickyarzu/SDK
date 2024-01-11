unit udmPgBooks;

interface

uses
  System.SysUtils, System.Variants, System.Classes,
  udmJanuaPostgresModel, Data.DB, Uni, MemDS, DBAccess, Janua.Core.Classes,
  Datasnap.Provider, Datasnap.DBClient, UniProvider, PostgreSQLUniProvider;

type
  TdmPgBooks = class(TdmJanuaPostgresModel)
    qryPublicBooksDef: TUniQuery;
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
    qryPublicBooksDefdescription: TWideMemoField;
    qryPublicBooksDefdb_schema_id: TIntegerField;
    qryBooksOffers: TUniQuery;
    qryBooksOffersoffer_id: TLargeintField;
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
