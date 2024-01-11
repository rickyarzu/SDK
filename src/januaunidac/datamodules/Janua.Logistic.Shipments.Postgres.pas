unit Janua.Logistic.Shipments.Postgres;

interface

uses
  System.SysUtils, System.Classes,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  // Januaproject
  Janua.Workflow.Postgres, VirtualTable, Janua.Logistic.Shipments.ViewModel.Intf,
  Janua.Logistic.Shipments.Model.Impl,
  Janua.Search.ViewModels.Intf, Janua.Search.ViewModels.Engines.Impl,
  Janua.Search.ViewModels.Engines.Intf, Janua.Orm.Intf, Janua.Unidac.Connection;

type
  TdmPgLogisticShipments = class(TdmPgWorkFlow)
    qryShipments: TUniQuery;
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
    qryShipmentscarrier_name: TWideStringField;
    qryShipmentsworkdate: TDateTimeField;
    qryShipmentscode: TWideStringField;
    qryShipmentstype_id: TSmallintField;
    qryShipmentslevel_id: TSmallintField;
    qryShipmentsagent_name: TWideStringField;
    qryShipmentsagent_code: TWideStringField;
    qryShipmentsagent_town: TWideStringField;
    qryShipmentsshipper_name: TWideStringField;
    qryShipmentsshipper_code: TWideStringField;
    qryShipmentsshipper_town: TWideStringField;
    qryShipmentsvessel_name: TWideStringField;
    qryShipmentsairport_name: TWideStringField;
    qryShipmentscarrier_town: TWideStringField;
    qryShipmentscustomer_name: TWideStringField;
    qryShipmentscustomer_code: TWideStringField;
    qryShipmentscustomer_town: TWideStringField;
    qryShipmentscustomer_address: TWideStringField;
    qryShipmentscustomer_postal_code: TWideStringField;
    qryShipmentscustomer_phone: TWideStringField;
    qryLkpLocations: TUniQuery;
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
    dsShipments: TUniDataSource;
    qryShipmentRows: TUniQuery;
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
    qryConditions: TUniQuery;
    qryConditionsid: TSmallintField;
    qryConditionsjguid: TGuidField;
    qryConditionscode: TWideStringField;
    qryConditionsdb_schema_id: TIntegerField;
    qryConditionsdescription: TIntegerField;
    qryContainerTypes: TUniQuery;
    qryContainerTypesid: TSmallintField;
    qryContainerTypesdb_schema_id: TIntegerField;
    qryContainerTypescode: TWideStringField;
    qryContainerTypesdescription: TWideStringField;
    qryContainerTypescntr_size: TWideStringField;
    qryContainerTypesfranchise_days: TIntegerField;
    qryContainerTypesrate: TIntegerField;
    qryContainerTypesthcimp: TFloatField;
    qryContainerTypesthcval: TWideStringField;
    qryContainerTypestarifpri: TIntegerField;
    qryContainerTypesprirate_days: TIntegerField;
    qryContainerTypesmax_weight: TFloatField;
    qryContainerTypesmax_volume: TFloatField;
    qryContainerTypescntr_length: TFloatField;
    qryContainerTypescntr_width: TFloatField;
    qryContainerTypescntr_height: TFloatField;
    qryContainerTypesinternal_length: TFloatField;
    qryContainerTypesto_door_length: TFloatField;
    qryContainerTypesinternal_width: TFloatField;
    qryContainerTypesto_door_width: TFloatField;
    qryContainerTypesinternal_heigth: TFloatField;
    qryContainerTypesto_door_heigth: TFloatField;
    qryContainerTypesinsert_date: TDateTimeField;
    qryContainerTypesuser_insert: TIntegerField;
    qryContainerTypesuser_update: TIntegerField;
    qryContainerTypesupdate_date: TDateTimeField;
    qryContainerTypesjguid: TGuidField;
    qryShipmentssearch_index: TWideStringField;
    qryLkpWarehouses: TUniQuery;
    qryLkpWorkFlows: TUniQuery;
    lkpShipments: TUniQuery;
    lkpShipmentsid: TLargeintField;
    lkpShipmentsname: TWideStringField;
    lkpShipmentswork_code: TWideStringField;
    lkpShipmentspol_code: TWideStringField;
    lkpShipmentspol_name: TWideStringField;
    lkpShipmentspod_code: TWideStringField;
    lkpShipmentspod_name: TWideStringField;
    lkpShipmentschar_date: TWideStringField;
    lkpShipmentsdisplay_index: TWideStringField;
    lkpShipmentssearch_index: TWideStringField;
    lkpShipmentsjguid: TGuidField;
    lkpShipmentsdeleted: TBooleanField;
    qryShipmentswork_number: TIntegerField;
    lkpShipmentsdeparture_date: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TJanuaPgLogisticShipmentsDataModule = class(TJanuaLogisticShipmentsDataModule, IJanuaShipmentsDataModule)
  private
    FDM: TdmPgLogisticShipments;
  strict protected
    procedure GetInternalCreate; override;
  public
  public
    destructor Destroy; override;
    constructor Create; override;
  end;

type
  TJanuaPgJanuaSearchShipmentsModel = class(TJanuaSearchShipmentsModel, ISearchModelShipments, ISearchModel)
  protected
    function InternalCreateDataset: IJanuaDBDataset; override;
  end;

var
  dmPgLogisticShipments: TdmPgLogisticShipments;

implementation

uses Janua.Core.Functions, System.Types, Janua.Orm.UniDac, Janua.Core.Types, Janua.Orm.Types,
  Janua.Application.Framework, Janua.Uni.Virtual;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaPgLogisticShipmentsDataModule }

constructor TJanuaPgLogisticShipmentsDataModule.Create;
begin
  inherited;

end;

destructor TJanuaPgLogisticShipmentsDataModule.Destroy;
begin
  if Assigned(FDM) then
    FreeAndNil(FDM);
  inherited;
end;

procedure TJanuaPgLogisticShipmentsDataModule.GetInternalCreate;
begin
  inherited;
  FInternalCreate := procedure
    begin
      FDM := TdmPgLogisticShipments.Create(nil);
      try
        SetMainDataModule(FDM);
        jdsWorkTypes := TJanuaPgDataset.Create(FDM.qryWorkTypes, [TJanuaEntity.WorkTypes]);
        jdsWorks := TJanuaPgDataset.Create(FDM.qryWorkFlows, [TJanuaEntity.Workflows]);
        jdsWorkAttachments := TJanuaPgDataset.Create(FDM.qryWorkAttachments, [TJanuaEntity.WorkAttachments]);
        jdsWorkLevels := TJanuaPgDataset.Create(FDM.qryWorkAttachments, [TJanuaEntity.WorkAttachments]);
        jdsConditions := TJanuaPgDataset.Create(FDM.qryConditions, [TJanuaEntity.LogConditions]);
        jdsShipments := TJanuaPgDataset.Create(FDM.qryShipments, [TJanuaEntity.LogShipments]);
        jdsShipmentRows := TJanuaPgDataset.Create(FDM.qryShipmentRows, [TJanuaEntity.LogShipmentRows]);
        jdsLocations := TJanuaPgDataset.Create(FDM.qryLkpLocations, [TJanuaEntity.LogLocations]);
        jdsContainerTypes := TJanuaPgDataset.Create(FDM.qryContainerTypes, [TJanuaEntity.LogContainerTypes]);
        jdsAttachments := TJanuaPgDataset.Create(FDM.qryWorkAttachments, [TJanuaEntity.WorkAttachments]);
      except
        on e: exception do
          RaiseException('FInternalCreate', e, self);
      end;
    end;
end;

{ TJanuaPgJanuaSearchShipmentsModel }

function TJanuaPgJanuaSearchShipmentsModel.InternalCreateDataset: IJanuaDBDataset;
var
  FDM: TdmPgLogisticShipments;
begin
  FDM := TdmPgLogisticShipments.Create(nil);
  try
  {TODO: Add group id to Shipments works}
   { FDM.lkpShipments.ParamByName('p_group_id').AsInteger := self.GetGroupID;}
    FDM.lkpShipments.Open;
    FDM.lkpShipments.Last;
    Result := TJanuaUniMemTable.CreateWithEntities(FDM.lkpShipments, [TJanuaEntity.LogShipments]);
  finally
    FDM.Free;
  end;
end;

end.
