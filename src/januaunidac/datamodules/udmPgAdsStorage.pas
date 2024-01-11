unit udmPgAdsStorage;

interface

uses
  System.SysUtils, System.Classes, udmPgStorage, Data.DB, DBAccess, Uni, MemDS, UniProvider,
  PostgreSQLUniProvider;

type
  TdmPgAdsStorage = class(TdmPgStorage)
    spAds: TUniStoredProc;
    spBanner: TUniStoredProc;
    qryBanners: TUniQuery;
    qryBannersimage_url: TWideStringField;
    qryBannerstarget_url: TWideStringField;
    qryBannersvisions: TLargeintField;
    qryBannersclicks: TLargeintField;
    qryBannerscustomer_id: TIntegerField;
    qryBannersdb_schema_id: TIntegerField;
    qryBannersabnn_jguid: TWideStringField;
    qryBannersabnn_deleted: TBooleanField;
    qryBannersimage_id: TLargeintField;
    qryBannersanagraph_id: TIntegerField;
    qryBannerstitle: TWideStringField;
    qryBannersnumber: TLargeintField;
    qryBannerswidth: TIntegerField;
    qryBannersheight: TIntegerField;
    qryBannerssince: TDateField;
    qryBannersuntil: TDateField;
    procedure qryBannersBeforeOpen(DataSet: TDataSet);
    procedure qryBannersBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPgAdsStorage: TdmPgAdsStorage;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TdmPgAdsStorage.qryBannersBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  self.ParamsDefault(Dataset);
end;

procedure TdmPgAdsStorage.qryBannersBeforePost(DataSet: TDataSet);
begin
  inherited;
  self.QueryDefault(Dataset);
end;

end.
