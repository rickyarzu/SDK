unit udmPgLogisticStorage;

interface

uses
  System.SysUtils, System.Classes,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  // Januaproject
  Janua.Search.ViewModels.Intf, Janua.Search.ViewModels.Engines.Impl, JOrm.Logistic.Locations.Intf,
  Janua.Orm.Intf, udmPgStorage, Janua.Search.ViewModels.Engines.Intf, Janua.Unidac.Connection;

type
  /// <summary>
  /// Generic Anagraph Module that contains all anagraphs in one specific
  /// schema in database.
  /// </summary>
  TdmPgLogisticStorage = class(TdmPgStorage)
    qryShipments: TUniQuery;
    qryLkpLocations: TUniQuery;
    qryShipmentRows: TUniQuery;
    qryShipmentsid: TLargeintField;
    qryShipmentsjguid: TGuidField;
    qryShipmentscreation_date: TDateTimeField;
    qryShipmentspickup_date: TDateField;
    qryShipmentsdelivery_date: TDateField;
    qryShipmentsoffice_id: TIntegerField;
    qryShipmentsworkflow_uid: TGuidField;
    qryShipmentsagent_id: TIntegerField;
    qryShipmentsshipper_id: TIntegerField;
    qryShipmentsshipper_address: TWideMemoField;
    qryShipmentspickup_address: TWideMemoField;
    qryShipmentsyear: TSmallintField;
    qryShipmentsgroupage_number: TSmallintField;
    qryShipmentsexport_type_id: TSmallintField;
    qryShipmentsfullcontainer: TWideStringField;
    qryShipmentsvessel_id: TIntegerField;
    qryShipmentswork_code: TWideStringField;
    qryShipmentstravel_identification_code: TWideStringField;
    qryShipmentscarrier_id: TIntegerField;
    qryShipmentscarrier_code: TWideStringField;
    qryShipmentsworkflow_id: TLargeintField;
    qryShipmentspol_id: TIntegerField;
    qryShipmentspol_code: TWideStringField;
    qryShipmentspol_name: TWideStringField;
    qryShipmentspod_id: TIntegerField;
    qryShipmentspod_name: TWideStringField;
    qryShipmentspod_code: TWideStringField;
    qryShipmentscustomer_id: TIntegerField;
    qryShipmentsnotes: TWideMemoField;
    qryShipmentswarehouse_id: TIntegerField;
    qryShipmentswork_date: TDateField;
    qryShipmentsorder_state: TSmallintField;
    qryShipmentsairport_id: TIntegerField;
    qryShipmentsairport_code: TWideStringField;
    qryShipmentsawb_number: TWideStringField;
    qryShipmentsinternal_notes: TWideMemoField;
    qryShipmentsinternal_notes2: TWideMemoField;
    qryShipmentswarehouse_notes: TWideMemoField;
    qryShipmentsroute_type: TWideStringField;
    qryShipmentsinternet_visible: TBooleanField;
    qryShipmentsflag_air: TBooleanField;
    qryShipmentsflag_ground: TBooleanField;
    qryShipmentsdeparture_date: TDateField;
    qryShipmentsarrival_date: TDateField;
    qryShipmentspo_state: TSmallintField;
    qryShipmentspo_level: TSmallintField;
    qryShipmentsfinal_date: TDateField;
    qryShipmentsflg_house: TBooleanField;
    qryShipmentsflg_master: TBooleanField;
    qryShipmentsdelivered: TBooleanField;
    qryShipmentsflg_billable: TBooleanField;
    qryShipmentscustoms_declearer: TWideStringField;
    qryShipmentscustoms_date: TDateField;
    qryShipmentsupdate_date: TDateTimeField;
    qryShipmentsinsert_date: TDateTimeField;
    qryShipmentsdeleted: TBooleanField;
    qryShipmentsdb_schema_id: TIntegerField;
    qryShipmentRowsyear: TSmallintField;
    qryShipmentRowsoffice_id: TIntegerField;
    qryShipmentRowswarehouse_id: TIntegerField;
    qryShipmentRowspos: TSmallintField;
    qryShipmentRowsquantity: TSmallintField;
    qryShipmentRowsweight: TFloatField;
    qryShipmentRowsvolume: TFloatField;
    qryShipmentRowsbooking: TWideStringField;
    qryShipmentRowscntr_type: TWideStringField;
    qryShipmentRowscntr_code: TWideStringField;
    qryShipmentRowscntr_seal: TWideStringField;
    qryShipmentRowspkg_type_code: TWideStringField;
    qryShipmentRowspo1: TWideStringField;
    qryShipmentRowspo2: TWideStringField;
    qryShipmentRowspo3: TWideStringField;
    qryShipmentRowspo4: TWideStringField;
    qryShipmentRowspo5: TWideStringField;
    qryShipmentRowspo6: TWideStringField;
    qryShipmentRowspo7: TWideStringField;
    qryShipmentRowspo8: TWideStringField;
    qryShipmentRowsfreight_amount: TFloatField;
    qryShipmentRowsmarks: TWideStringField;
    qryShipmentRowsdescription1: TWideStringField;
    qryShipmentRowsdescription2: TWideStringField;
    qryShipmentRowsbol: TWideStringField;
    qryShipmentRowsbolhouse: TWideStringField;
    qryShipmentRowsnote: TWideStringField;
    qryShipmentRowstemperature: TFloatField;
    qryShipmentRowssupplier: TWideStringField;
    qryShipmentRowssupplier_code: TWideStringField;
    qryShipmentRowswarehouse_receipt_date: TDateTimeField;
    qryShipmentRowsinvoice_number: TWideStringField;
    qryShipmentRowsinvoice_date: TDateField;
    qryShipmentRowstaxable_weight: TFloatField;
    qryShipmentRowsmunit_id: TIntegerField;
    qryShipmentRowsvalue: TCurrencyField;
    qryShipmentRowscurrency_id: TSmallintField;
    qryShipmentRowsinvoice_amount: TFloatField;
    qryShipmentRowsexchange_rate: TFloatField;
    qryShipmentRowsdimentions: TWideStringField;
    qryShipmentRowsremarks: TWideStringField;
    qryShipmentRowsweght_volume_ratio: TFloatField;
    qryShipmentRowsflgnotaxw: TBooleanField;
    qryShipmentRowsactual_weight: TFloatField;
    qryShipmentRowsactual_volume: TFloatField;
    qryShipmentRowsbooking_number: TIntegerField;
    qryShipmentRowscustoms_tariff: TWideStringField;
    qryShipmentRowssize_weight: TFloatField;
    qryShipmentRowssize_length: TFloatField;
    qryShipmentRowssize_height: TFloatField;
    qryShipmentRowssupplier_warehouse_code: TWideStringField;
    qryShipmentRowssupplier_warehouse_id: TIntegerField;
    qryShipmentRowsjguid: TGuidField;
    qryShipmentRowsid: TLargeintField;
    qryShipmentRowsshipment_id: TLargeintField;
    DataSource1: TDataSource;
    qryLkpLocationsid: TIntegerField;
    qryLkpLocationsjguid: TGuidField;
    qryLkpLocationsdb_schema_id: TIntegerField;
    qryLkpLocationsdeleted: TBooleanField;
    qryLkpLocationsinsert_date: TDateTimeField;
    qryLkpLocationsupdate_date: TDateTimeField;
    qryLkpLocationsuser_insert: TIntegerField;
    qryLkpLocationsuser_update: TIntegerField;
    qryLkpLocationscode: TWideStringField;
    qryLkpLocationsname: TWideStringField;
    qryLkpLocationsstate_province: TWideStringField;
    qryLkpLocationscountry: TWideStringField;
    qryLkpLocationsarea_code: TWideStringField;
    qryLkpLocationsflgairport: TBooleanField;
    qryLkpLocationsiso_code: TWideStringField;
    qryLkpLocationsiata_code: TWideStringField;
    qryLkpLocationsgroup_id: TSmallintField;
    qryLkpLocationssearch_index: TWideStringField;
    qryLkpLocationspos: TIntegerField;
    qryLkpLocationsdisplay_index: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

type
  TJanuaPgSearchLocationsModel = class(TJanuaSearchLocationsModel, ISearchModelLocation, ISearchModel)
  protected
    function InternalCreateDataset: IJanuaDBDataset; override;
  end;

var
  dmPgLogisticStorage: TdmPgLogisticStorage;

implementation

uses Janua.Orm.UniDac, Janua.Core.Types, Janua.Orm.Types, Janua.Application.Framework, Janua.Uni.Virtual;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaPgSearchAnagraph }

function TJanuaPgSearchLocationsModel.InternalCreateDataset: IJanuaDBDataset;
var
  FDM: TdmPgLogisticStorage;
begin
  FDM := TdmPgLogisticStorage.Create(nil);
  try
    FDM.qryLkpLocations.ParamByName('p_group_id').AsInteger := GetGroupID;
    FDM.qryLkpLocations.Open;
    FDM.qryLkpLocations.Last;
    Result := TJanuaUniMemTable.CreateWithEntities(FDM.qryLkpLocations, [TJanuaEntity.LogLocations]);
  finally
    FDM.Free;
  end;

end;

{ TdmPgLogisticStorage }

procedure TdmPgLogisticStorage.RefreshDetails;
begin
  inherited;

end;

end.


