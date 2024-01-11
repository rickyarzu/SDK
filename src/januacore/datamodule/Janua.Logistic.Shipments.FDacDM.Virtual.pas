unit Janua.Logistic.Shipments.FDacDM.Virtual;

interface

uses
  System.SysUtils, System.Classes, Janua.Workflow.FDacDM.Virtual, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  // Januaproject Logistic
  Janua.Logistic.Shipments.ViewModel.Intf, Janua.Logistic.Shipments.Model.Impl;

type
  TdmVirtualShipments = class(TdmWorkFlowFiredac)
    vtShipmentRows: TFDMemTable;
    vtShipmentRowsyear: TSmallintField;
    vtShipmentRowsoffice_id: TIntegerField;
    vtShipmentRowswarehouse_id: TIntegerField;
    vtShipmentRowspos: TSmallintField;
    vtShipmentRowsquantity: TSmallintField;
    vtShipmentRowsweight: TFloatField;
    vtShipmentRowsvolume: TFloatField;
    vtShipmentRowsbooking: TWideStringField;
    vtShipmentRowscntr_type: TWideStringField;
    vtShipmentRowscntr_code: TWideStringField;
    vtShipmentRowscntr_seal: TWideStringField;
    vtShipmentRowspkg_type_code: TWideStringField;
    vtShipmentRowspo1: TWideStringField;
    vtShipmentRowspo2: TWideStringField;
    vtShipmentRowspo3: TWideStringField;
    vtShipmentRowspo4: TWideStringField;
    vtShipmentRowspo5: TWideStringField;
    vtShipmentRowspo6: TWideStringField;
    vtShipmentRowspo7: TWideStringField;
    vtShipmentRowspo8: TWideStringField;
    vtShipmentRowsfreight_amount: TFloatField;
    vtShipmentRowsmarks: TWideStringField;
    vtShipmentRowsdescription1: TWideStringField;
    vtShipmentRowsdescription2: TWideStringField;
    vtShipmentRowsbol: TWideStringField;
    vtShipmentRowsbolhouse: TWideStringField;
    vtShipmentRowsnote: TWideStringField;
    vtShipmentRowstemperature: TFloatField;
    vtShipmentRowssupplier: TWideStringField;
    vtShipmentRowssupplier_code: TWideStringField;
    vtShipmentRowswarehouse_receipt_date: TSQLTimeStampField;
    vtShipmentRowsinvoice_number: TWideStringField;
    vtShipmentRowsinvoice_date: TDateField;
    vtShipmentRowstaxable_weight: TFloatField;
    vtShipmentRowsmunit_id: TIntegerField;
    vtShipmentRowsvalue: TCurrencyField;
    vtShipmentRowscurrency_id: TSmallintField;
    vtShipmentRowsinvoice_amount: TFloatField;
    vtShipmentRowsexchange_rate: TFloatField;
    vtShipmentRowsdimentions: TWideStringField;
    vtShipmentRowsremarks: TWideStringField;
    vtShipmentRowsweght_volume_ratio: TFloatField;
    vtShipmentRowsflgnotaxw: TBooleanField;
    vtShipmentRowsactual_weight: TFloatField;
    vtShipmentRowsactual_volume: TFloatField;
    vtShipmentRowsbooking_number: TIntegerField;
    vtShipmentRowscustoms_tariff: TWideStringField;
    vtShipmentRowssize_weight: TFloatField;
    vtShipmentRowssize_length: TFloatField;
    vtShipmentRowssize_height: TFloatField;
    vtShipmentRowssupplier_warehouse_code: TWideStringField;
    vtShipmentRowssupplier_warehouse_id: TIntegerField;
    vtShipmentRowsjguid: TGuidField;
    vtShipmentRowsid: TLargeintField;
    vtShipmentRowsshipment_id: TLargeintField;
    vtLkpLocations: TFDMemTable;
    vtLkpLocationsid: TIntegerField;
    vtLkpLocationsjguid: TGuidField;
    vtLkpLocationsdb_schema_id: TIntegerField;
    vtLkpLocationsdeleted: TBooleanField;
    vtLkpLocationsinsert_date: TSQLTimeStampField;
    vtLkpLocationsupdate_date: TSQLTimeStampField;
    vtLkpLocationsuser_insert: TIntegerField;
    vtLkpLocationsuser_update: TIntegerField;
    vtLkpLocationscode: TWideStringField;
    vtLkpLocationsname: TWideStringField;
    vtLkpLocationsstate_province: TWideStringField;
    vtLkpLocationscountry: TWideStringField;
    vtLkpLocationsarea_code: TWideStringField;
    vtLkpLocationsflgairport: TBooleanField;
    vtLkpLocationsiso_code: TWideStringField;
    vtLkpLocationsiata_code: TWideStringField;
    vtLkpLocationsgroup_id: TSmallintField;
    vtLkpLocationssearch_index: TWideStringField;
    vtLkpLocationspos: TIntegerField;
    vtLkpLocationsdisplay_index: TWideStringField;
    vtConditions: TFDMemTable;
    vtConditionsid: TSmallintField;
    vtConditionsjguid: TGuidField;
    vtConditionscode: TWideStringField;
    vtConditionsdb_schema_id: TIntegerField;
    vtConditionsdescription: TIntegerField;
    vtContainerTypes: TFDMemTable;
    vtContainerTypesid: TSmallintField;
    vtContainerTypesdb_schema_id: TIntegerField;
    vtContainerTypescode: TWideStringField;
    vtContainerTypesdescription: TWideStringField;
    vtContainerTypescntr_size: TWideStringField;
    vtContainerTypesfranchise_days: TIntegerField;
    vtContainerTypesrate: TIntegerField;
    vtContainerTypesthcimp: TFloatField;
    vtContainerTypesthcval: TWideStringField;
    vtContainerTypestarifpri: TIntegerField;
    vtContainerTypesprirate_days: TIntegerField;
    vtContainerTypesmax_weight: TFloatField;
    vtContainerTypesmax_volume: TFloatField;
    vtContainerTypescntr_length: TFloatField;
    vtContainerTypescntr_width: TFloatField;
    vtContainerTypescntr_height: TFloatField;
    vtContainerTypesinternal_length: TFloatField;
    vtContainerTypesto_door_length: TFloatField;
    vtContainerTypesinternal_width: TFloatField;
    vtContainerTypesto_door_width: TFloatField;
    vtContainerTypesinternal_heigth: TFloatField;
    vtContainerTypesto_door_heigth: TFloatField;
    vtContainerTypesinsert_date: TSQLTimeStampField;
    vtContainerTypesuser_insert: TIntegerField;
    vtContainerTypesuser_update: TIntegerField;
    vtContainerTypesupdate_date: TSQLTimeStampField;
    vtContainerTypesjguid: TGuidField;
    vtShipments: TFDMemTable;
    vtShipmentsid: TLargeintField;
    vtShipmentsjguid: TGuidField;
    vtShipmentscreation_date: TSQLTimeStampField;
    vtShipmentspickup_date: TDateField;
    vtShipmentsdelivery_date: TDateField;
    vtShipmentsoffice_id: TIntegerField;
    vtShipmentsworkflow_uid: TGuidField;
    vtShipmentsagent_id: TIntegerField;
    vtShipmentsshipper_id: TIntegerField;
    vtShipmentsshipper_address: TWideMemoField;
    vtShipmentspickup_address: TWideMemoField;
    vtShipmentsyear: TSmallintField;
    vtShipmentsgroupage_number: TSmallintField;
    vtShipmentsexport_type_id: TSmallintField;
    vtShipmentsfullcontainer: TWideStringField;
    vtShipmentsvessel_id: TIntegerField;
    vtShipmentswork_code: TWideStringField;
    vtShipmentstravel_identification_code: TWideStringField;
    vtShipmentscarrier_id: TIntegerField;
    vtShipmentscarrier_code: TWideStringField;
    vtShipmentsworkflow_id: TLargeintField;
    vtShipmentspol_id: TIntegerField;
    vtShipmentspol_code: TWideStringField;
    vtShipmentspol_name: TWideStringField;
    vtShipmentspod_id: TIntegerField;
    vtShipmentspod_name: TWideStringField;
    vtShipmentspod_code: TWideStringField;
    vtShipmentscustomer_id: TIntegerField;
    vtShipmentsnotes: TWideMemoField;
    vtShipmentswarehouse_id: TIntegerField;
    vtShipmentswork_date: TDateField;
    vtShipmentsorder_state: TSmallintField;
    vtShipmentsairport_id: TIntegerField;
    vtShipmentsairport_code: TWideStringField;
    vtShipmentsawb_number: TWideStringField;
    vtShipmentsinternal_notes: TWideMemoField;
    vtShipmentsinternal_notes2: TWideMemoField;
    vtShipmentswarehouse_notes: TWideMemoField;
    vtShipmentsroute_type: TWideStringField;
    vtShipmentsinternet_visible: TBooleanField;
    vtShipmentsflag_air: TBooleanField;
    vtShipmentsflag_ground: TBooleanField;
    vtShipmentsdeparture_date: TDateField;
    vtShipmentsarrival_date: TDateField;
    vtShipmentspo_state: TSmallintField;
    vtShipmentspo_level: TSmallintField;
    vtShipmentsfinal_date: TDateField;
    vtShipmentsflg_house: TBooleanField;
    vtShipmentsflg_master: TBooleanField;
    vtShipmentsdelivered: TBooleanField;
    vtShipmentsflg_billable: TBooleanField;
    vtShipmentscustoms_declearer: TWideStringField;
    vtShipmentscustoms_date: TDateField;
    vtShipmentsupdate_date: TSQLTimeStampField;
    vtShipmentsinsert_date: TSQLTimeStampField;
    vtShipmentsdeleted: TBooleanField;
    vtShipmentsdb_schema_id: TIntegerField;
    vtShipmentscarrier_name: TWideStringField;
    vtShipmentsworkdate: TSQLTimeStampField;
    vtShipmentscode: TWideStringField;
    vtShipmentstype_id: TSmallintField;
    vtShipmentslevel_id: TSmallintField;
    vtShipmentsagent_name: TWideStringField;
    vtShipmentsagent_code: TWideStringField;
    vtShipmentsagent_town: TWideStringField;
    vtShipmentsshipper_name: TWideStringField;
    vtShipmentsshipper_code: TWideStringField;
    vtShipmentsshipper_town: TWideStringField;
    vtShipmentsvessel_name: TWideStringField;
    vtShipmentsairport_name: TWideStringField;
    vtShipmentscarrier_town: TWideStringField;
    vtShipmentscustomer_name: TWideStringField;
    vtShipmentscustomer_code: TWideStringField;
    vtShipmentscustomer_town: TWideStringField;
    vtShipmentscustomer_address: TWideStringField;
    vtShipmentscustomer_postal_code: TWideStringField;
    vtShipmentscustomer_phone: TWideStringField;
    vtShipmentssearch_index: TWideStringField;
    fdmLkpWarehouses: TFDMemTable;
    fdmLkpWarehousesanagraph_id: TIntegerField;
    fdmLkpWarehousesan_last_name: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

type
  TJanuaFDacMemLogisticShipmentsDataModule = class(TJanuaLogisticShipmentsDataModule, IJanuaShipmentsDataModule)
  private
    FDM: TdmVirtualShipments;
  strict protected
    procedure GetInternalCreate; override;
  public
  public
    destructor Destroy; override;
    constructor Create; override;
  end;

var
  dmVirtualShipments: TdmVirtualShipments;

implementation

uses Janua.Application.Framework, Janua.Orm.Impl, Janua.Orm.Types, Janua.Orm.Firedac, Janua.Core.Types;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaFDacMemLogisticShipmentsDataModule }

constructor TJanuaFDacMemLogisticShipmentsDataModule.Create;
begin
  inherited;

end;

destructor TJanuaFDacMemLogisticShipmentsDataModule.Destroy;
begin

  inherited;
end;

procedure TJanuaFDacMemLogisticShipmentsDataModule.GetInternalCreate;
begin
  inherited;
  FInternalCreate := procedure
    begin
      try
        FDM := TdmVirtualShipments.Create(nil);
        SetMainDataModule(FDM);
        jdsWorkTypes := TJanuaVtDataset.Create(FDM.vtWorkTypes, [TJanuaEntity.WorkTypes]);
        jdsWorks := TJanuaVtDataset.Create(FDM.vtWorkFlows, [TJanuaEntity.Workflows]);
        jdsWorkAttachments := TJanuaVtDataset.Create(FDM.vtWorkAttachments, [TJanuaEntity.WorkAttachments]);
        jdsWorkLevels := TJanuaVtDataset.Create(FDM.vtWorkAttachments, [TJanuaEntity.WorkAttachments]);
        jdsConditions := TJanuaVtDataset.Create(FDM.vtConditions, [TJanuaEntity.LogConditions]);
        jdsShipments := TJanuaVtDataset.Create(FDM.vtShipments, [TJanuaEntity.LogShipments]);
        jdsShipmentRows := TJanuaVtDataset.Create(FDM.vtShipmentRows, [TJanuaEntity.LogShipmentRows]);
        jdsLocations := TJanuaVtDataset.Create(FDM.vtLkpLocations, [TJanuaEntity.LogLocations]);
        jdsContainerTypes := TJanuaVtDataset.Create(FDM.vtContainerTypes, [TJanuaEntity.LogContainerTypes]);
        jdsAttachments := TJanuaVtDataset.Create(FDM.vtWorkAttachments, [TJanuaEntity.WorkAttachments]);
        SetMainDataModule(FDM);
        jdsShipments.AddParam('p_db_schema_id', TJanuaFieldType.jptInteger).AsInteger := 0;
        jdsShipments.AddParam('p_search_name', TJanuaFieldType.jptString).AsString := '%';
        jdsShipments.AddParam('p_work_type_id', TJanuaFieldType.jptSmallint).AsSmallint := 0;
        jdsShipments.AddParam('p_work_id', TJanuaFieldType.jptLargeInt).AsLargeInt := 0;
        jdsShipments.AddParam('p_doc_id', TJanuaFieldType.jptLargeInt);
      except
        on e: exception do
          RaiseException('FInternalCreate', e, self);

      end;
    end;
end;

{ TdmVirtualShipments }

procedure TdmVirtualShipments.RefreshDetails;
begin
  inherited;

end;

end.
