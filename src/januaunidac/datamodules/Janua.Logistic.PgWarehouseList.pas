unit Janua.Logistic.PgWarehouseList;

interface

uses
  System.SysUtils, System.Classes,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  // FireDAC
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  // Januaproject
  // Lookup Interface
  Janua.Orm.Intf, Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Intf,
  Janua.Controls.Forms.Intf, Janua.Search.ViewModels.Engines.Impl,
  // Documents Module
  udmPgStorage, Janua.Documents.Model.Impl, Janua.Documents.ViewModel.Intf;

type
  /// <summary> Generic Anagraph Module that contains all anagraphs in one specific schema in database. </summary>
  TdmPgWarehouseList = class(TdmPgStorage, IJanuaDataModule)
    qryLocations: TUniQuery;
    qrySuppliers: TUniQuery;
    qrySuppliersanagraph_id: TIntegerField;
    qrySuppliersan_last_name: TWideStringField;
    qryLocationslocation_name: TWideStringField;
    qryWarehouses: TUniQuery;
    qryWarehousesanagraph_id: TIntegerField;
    qryWarehousesan_last_name: TWideStringField;
    qryInventoryList: TUniQuery;
    qryInventoryListid: TLargeintField;
    qryInventoryListdoc_id: TLargeintField;
    qryInventoryListitem_id: TLargeintField;
    qryInventoryListrow_date: TDateField;
    qryInventoryListinout: TSmallintField;
    qryInventoryListmodel: TWideStringField;
    qryInventoryListprice: TFloatField;
    qryInventoryListdelivered_qty: TFloatField;
    qryInventoryListsupplier_id: TIntegerField;
    qryInventoryListinventory_qty: TFloatField;
    qryInventoryListwarehouse_location_id: TIntegerField;
    qryInventoryListoffice_id: TIntegerField;
    qryInventoryListwarehouse_id: TIntegerField;
    qryInventoryListholder_id: TIntegerField;
    qryInventoryListholder_name: TWideStringField;
    qryInventoryListlocation_name: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    FInInventory: boolean;
    FCheckVessel: boolean;
    FCheckSupplier: boolean;
    FWarehouseID: integer;
    FHolderID: integer;
    FVesselName: string;
    procedure SetCheckSupplier(const Value: boolean);
    procedure SetCheckVessel(const Value: boolean);
    procedure SetInInventory(const Value: boolean);
    procedure SetHolderID(const Value: integer);
    procedure SetVesselName(const Value: string);
    procedure SetWarehouseID(const Value: integer);
  public
    procedure OpenWareHouseList;
  public
    property CheckSupplier: boolean read FCheckSupplier write SetCheckSupplier;
    property InInventory: boolean read FInInventory write SetInInventory;
    property CheckVessel: boolean read FCheckVessel write SetCheckVessel;
    property WarehouseID: integer read FWarehouseID write SetWarehouseID;
    property HolderID: integer read FHolderID write SetHolderID;
    property VesselName: string read FVesselName write SetVesselName;
  published
  end;

var
  dmPgWarehouseList: TdmPgWarehouseList;

implementation

uses Janua.Core.Functions, Janua.Application.Framework, System.Math, System.StrUtils;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmPgWarehouseList.DataModuleCreate(Sender: TObject);
begin
  inherited;
  qryWarehouses.Open;
  qrySuppliers.Open;
  qryLocations.Open;
end;

procedure TdmPgWarehouseList.OpenWareHouseList;
begin
  {
    select * from logistic.inventory_view
    where
    warehouse_id = :warehouse_id
    and
    (holder_id = :holder_id or :holder_id = 0)
    and
    (location_name = :location_name or :location_name = '' or :location_name is null)
    and
    (inventory_qty > 0 or not :inventory)
  }
  qryInventoryList.Close;
  qryInventoryList.ParamByName('holder_id').AsInteger := IfThen(FCheckSupplier, FHolderID, 0);
  qryInventoryList.ParamByName('location_name').AsString := IfThen(FCheckVessel, FVesselName, '');
  qryInventoryList.ParamByName('inventory').AsBoolean := FInInventory;
  qryInventoryList.ParamByName('warehouse_id').AsInteger :=  FWarehouseID;
  qryInventoryList.Open;
end;

procedure TdmPgWarehouseList.SetCheckSupplier(const Value: boolean);
begin
  FCheckSupplier := Value;
end;

procedure TdmPgWarehouseList.SetCheckVessel(const Value: boolean);
begin
  FCheckVessel := Value;
end;

procedure TdmPgWarehouseList.SetHolderID(const Value: integer);
begin
  FHolderID := Value;
end;

procedure TdmPgWarehouseList.SetInInventory(const Value: boolean);
begin
  FInInventory := Value;
end;

procedure TdmPgWarehouseList.SetVesselName(const Value: string);
begin
  FVesselName := Value;
end;

procedure TdmPgWarehouseList.SetWarehouseID(const Value: integer);
begin
  FWarehouseID := Value;
end;

end.
