unit udmPgAnagraphPharmacies;

interface

uses
  System.SysUtils, System.Variants, System.Classes, udmJanuaPostgresModel,
  Data.DB, PgAccess, MemDS,
  DBAccess, Datasnap.Provider, Datasnap.DBClient;

type
  TdmPgAnagraphPharmacies = class(TdmJanuaPostgresModel)
    qryPharmaciesWebsites: TPgQuery;
    qryPharmaciesWebsitesanagraph_id: TIntegerField;
    qryPharmaciesWebsitesweb_title: TWideStringField;
    qryPharmaciesWebsitesdescription: TWideMemoField;
    qryPharmaciesWebsitesmeta_description: TWideStringField;
    qryPharmaciesWebsitesfocus_keyword: TWideStringField;
    qryPharmaciesWebsitesslug: TWideStringField;
    qryPharmaciesWebsitestimetable: TWideStringField;
    qryPharmaciesWebsitesdistricts: TWideStringField;
    qryServices: TPgQuery;
    qrySections: TPgQuery;
    qryPharmaciesServices: TPgQuery;
    qryPharmaciesSections: TPgQuery;
    qryServicesservice_id: TSmallintField;
    qryServicesservice_name: TWideStringField;
    qrySectionssection_id: TSmallintField;
    qrySectionssection_name: TWideStringField;
    qrySectionsimage_id: TLargeintField;
    procedure qryPharmaciesWebsitesNewRecord(DataSet: TDataSet);
  private
    FAnagraph_id: int64;
    procedure SetAnagraph_id(const Value: int64);
    { Private declarations }
  public
    { Public declarations }
    property Anagraph_id: int64 read FAnagraph_id write SetAnagraph_id;
    procedure OpenAnagraph(aAnagraph_id: integer);
  end;

var
  dmPgAnagraphPharmacies: TdmPgAnagraphPharmacies;

implementation

{$R *.dfm}
{ TdmJanuaPostgresModel1 }

procedure TdmPgAnagraphPharmacies.OpenAnagraph(aAnagraph_id: integer);
begin
  qryPharmaciesWebsitesanagraph_id.Value := aAnagraph_id;
  FAnagraph_id := aAnagraph_id;
end;

procedure TdmPgAnagraphPharmacies.qryPharmaciesWebsitesNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryPharmaciesWebsitesanagraph_id.Value := FAnagraph_id;
end;

procedure TdmPgAnagraphPharmacies.SetAnagraph_id(const Value: int64);
begin
  FAnagraph_id := Value;
end;

end.
