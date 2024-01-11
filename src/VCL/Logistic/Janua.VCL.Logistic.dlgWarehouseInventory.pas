unit Janua.VCL.Logistic.dlgWarehouseInventory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, System.Actions, VCL.ActnList,
  VCL.ImgList, VCL.Buttons, VCL.StdCtrls, Janua.Core.Classes, Janua.VCL.Actions, VCL.DBCtrls, VCL.Menus,
  VCL.ToolWin, VCL.ComCtrls, Janua.VCL.ViewModel, VCL.Mask, JvExMask, JvToolEdit, VCL.Themes,

  System.ImageList, SVGIconImageListBase, SVGIconImageList,
  // TMS
  Lucombo, AdvSplitter,
  // DB Controls
  Data.DB, VCL.Grids, VCL.DBGrids, CRGrid,
  // VCL
  VCL.wwbutton, VCL.wwdbigrd, VCL.wwdbgrid, VCL.WinXPickers, VCL.WinXCtrls,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  // Interposers
  Janua.VCL.EnhCRDBGrid, Janua.VCL.EnhDBGrid, Janua.VCL.Interposers, Janua.TMS.Interposers,
  Janua.VCL.FormController,
  Janua.Components.Grids, Janua.Logistic.PgWarehouseList, JvExControls, JvDBLookup;

type
  TdlgVCLWarehouseInventory = class(TForm)
    pnlBottom: TPanel;
    dsWarehouses: TDataSource;
    dsVesselsLocations: TDataSource;
    dsSuppliers: TDataSource;
    dsInventoryList: TDataSource;
    grdWarehouseList: TCRDBGrid;
    pnlWarehouseList: TPanel;
    lbWarehouse: TLabel;
    navWarehouseList: TDBNavigator;
    lkpWarehouses: TJvDBLookupCombo;
    lkpShipperSuppliers: TJvDBLookupCombo;
    lkpVesselsLocations: TJvDBLookupCombo;
    Button1: TButton;
    ckbShipperSupplier: TCheckBox;
    ckbVesselLocation: TCheckBox;
    btnOK: TButton;
    btnCancel: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FWarehouseListDM: TdmPgWarehouseList;
  public
    { Public declarations }
  end;

var
  dlgVCLWarehouseInventory: TdlgVCLWarehouseInventory;

implementation

{$R *.dfm}

procedure TdlgVCLWarehouseInventory.Button1Click(Sender: TObject);
begin

  if not VarIsNull(lkpWarehouses.KeyValue) then
    FWarehouseListDM.WarehouseID := lkpWarehouses.KeyValue
  else
    FWarehouseListDM.WarehouseID := 0;

  FWarehouseListDM.CheckSupplier := ckbShipperSupplier.Checked;

  if not VarIsNull(lkpShipperSuppliers.KeyValue) then
    FWarehouseListDM.HolderID := lkpShipperSuppliers.KeyValue
  else
    FWarehouseListDM.HolderID := 0;

  FWarehouseListDM.CheckVessel := ckbVesselLocation.Checked;
  FWarehouseListDM.VesselName := lkpVesselsLocations.Value;
  FWarehouseListDM.OpenWareHouseList;
end;

procedure TdlgVCLWarehouseInventory.FormCreate(Sender: TObject);
begin
  FWarehouseListDM := TdmPgWarehouseList.Create(self);
end;

end.
