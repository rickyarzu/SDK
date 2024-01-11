unit Janua.Logistic.VCL.frmWarehouseList;

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
  // TJanuaVCLFormModel = class(TForm, IJanuaForm, IJanuaContainer, IJanuaControl, IJanuaBindable)
  TfrmVCLLogisticWarehouseList = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
    pnlWarehouseList: TPanel;
    navWarehouseList: TDBNavigator;
    dsWarehouses: TDataSource;
    grdWarehouseList: TCRDBGrid;
    lkpWarehouses: TJvDBLookupCombo;
    lkpShipperSuppliers: TJvDBLookupCombo;
    lkpVesselsLocations: TJvDBLookupCombo;
    dsInventoryList: TDataSource;
    Button1: TButton;
    lbWarehouse: TLabel;
    btnPrint: TButton;
    ckbShipperSupplier: TCheckBox;
    ckbVesselLocation: TCheckBox;
    ckbInInventory: TCheckBox;
    dsSuppliers: TDataSource;
    dsVesselsLocations: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
    FWarehouseListDM: TdmPgWarehouseList;
  public
    { Public declarations }
  end;

var
  frmVCLLogisticWarehouseList: TfrmVCLLogisticWarehouseList;

implementation

uses Janua.Logistic.qrpWarehouseList;

{$R *.dfm}

procedure TfrmVCLLogisticWarehouseList.btnPrintClick(Sender: TObject);
var
  QRP: TqrpWarehouseList;
begin
  inherited;
  QRP := TqrpWarehouseList.Create(self);
  try
    QRP.QuickRep1.Preview;
  finally
    QRP.Free;
  end;
end;

procedure TfrmVCLLogisticWarehouseList.Button1Click(Sender: TObject);
begin
  inherited;
  FWarehouseListDM.InInventory := ckbInInventory.Checked;

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

procedure TfrmVCLLogisticWarehouseList.FormCreate(Sender: TObject);
begin
  inherited;
  FWarehouseListDM := TdmPgWarehouseList.Create(self);
end;

end.
