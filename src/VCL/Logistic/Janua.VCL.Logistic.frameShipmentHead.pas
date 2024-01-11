unit Janua.VCL.Logistic.frameShipmentHead;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, JvExStdCtrls, JvCombobox, VCL.ExtCtrls,
  JvExControls, JvDBCombobox, JvDBLookup, VCL.ComCtrls, VCL.DBGrids, Janua.VCL.EnhDBGrid, VCL.ToolWin,
  VCL.Grids, MoneyEdit, JvRadioGroup, AdvGroupBox, JvMemo, JvExExtCtrls,
  // DB
  Data.DB, MemDS, VirtualTable, DBAccess, Uni,
  // Firedac
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  // vcl.wwdbgrid
  VCL.wwbutton, VCL.wwdbigrd, VCL.wwdbgrid,
  // Januaproject
  uJanuaVCLFrame, Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types,
  Janua.Bindings.Intf, Janua.Core.Classes.Intf, JOrm.Logistic.Shipments.Intf, Janua.Core.Classes,
  Janua.VCL.ViewModel.Search, Janua.Logistic.Shipments.ViewModel.Intf, Janua.ViewModels.Intf,
  Janua.VCL.Actions, VCL.Samples.Spin, frameVCLAnagraphSimple,
  // Interposers
  Janua.VCL.Interposers, Janua.Core.Commons,  Vcl.Mask;

type
  TFrameVCLLogisticShipmentHead = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    pgcShipmentOrders: TPageControl;
    tsHead: TTabSheet;
    tsCarriers: TTabSheet;
    tsPolPod: TTabSheet;
    tsCommodities: TTabSheet;
    tsCharges: TTabSheet;
    tsNotes: TTabSheet;
    tsInternalNotes: TTabSheet;
    tsEvents: TTabSheet;
    lbedNumber: TLabeledEdit;
    lbedPurchaseOrder: TLabeledEdit;
    seYear: TSpinEdit;
    lblYear: TLabel;
    cboWorkTypeID: TJvDBLookupCombo;
    cboWarehouseID: TJvDBLookupCombo;
    lblWorkTypeID: TLabel;
    lblWarehouseID: TLabel;
    seNumber: TSpinEdit;
    lblWorkNumber: TLabel;
    dtpWorkDate: TDateTimePicker;
    dtpETD: TDateTimePicker;
    dtpETA: TDateTimePicker;
    lblWorkDate: TLabel;
    lblETD: TLabel;
    lblETA: TLabel;
    chkCites: TCheckBox;
    chkAssurance: TCheckBox;
    chkPickUp: TCheckBox;
    chkFumigation: TCheckBox;
    chkENAC: TCheckBox;
    chkDAU: TCheckBox;
    chkDangerousGoods: TCheckBox;
    rgWorkState: TRadioGroup;
    lbedUserName: TLabeledEdit;
    lbedVesselName: TLabeledEdit;
    lbedWarehouseLocation: TLabeledEdit;
    tsSubjects: TTabSheet;
    grpCustomer: TGroupBox;
    pgcSubjects: TPageControl;
    tsShipper: TTabSheet;
    tsConsignee: TTabSheet;
    grpShipper: TAdvGroupBox;
    grpShipmentLocation: TAdvGroupBox;
    grpConsignee: TAdvGroupBox;
    grpDestinationAddress: TAdvGroupBox;
    tsSupplier: TTabSheet;
    grpSupplier: TAdvGroupBox;
    edtShipperName: TEdit;
    btnShipperSearch: TButton;
    lbShipperAddress: TLabel;
    edShipperAddress: TEdit;
    lbShipperPostalCode: TLabel;
    lbShipperTown: TLabel;
    edShipperPostalCode: TEdit;
    edShipperTown: TEdit;
    lbConsigneeTownLocation: TLabel;
    edtConsigneeTown: TEdit;
    edtConsigneeZipPostalCode: TEdit;
    lbConsigneePostalCode: TLabel;
    lbConsigneeStreetAddres: TLabel;
    edtConsigneeAddress: TEdit;
    btnConsignee: TButton;
    edtConsigneeName: TEdit;
    edtSupplierName: TEdit;
    btnSupplier: TButton;
    lblSupplierAddress: TLabel;
    edtSupplierAddress: TEdit;
    lblSupplierZipPostalCode: TLabel;
    edtSuplierZipPostalCode: TEdit;
    edtSupplierTownLocation: TEdit;
    lblSupplierTownLocation: TLabel;
    grpSupplierInvoiceInfo: TAdvGroupBox;
    edtInvoiceNumber: TEdit;
    edtPurchaseOrderNumber: TEdit;
    lblInvoiceNUmber: TLabel;
    lblPurchaseOrder: TLabel;
    btnVesselName: TButton;
    btnWarehouseLocation: TButton;
    btnUpdateShipmentLocation: TButton;
    btnSearchShipmentLocation: TButton;
    mmoShipmentLocation: TJvMemo;
    btnCopyFromConsignee: TButton;
    btnSearchDestination: TButton;
    mmoShipmentDestination: TJvMemo;
    grpMainCarrier: TAdvGroupBox;
    lblReturningAddress: TLabel;
    lblBookingNumber: TLabel;
    edtMainCarrier: TEdit;
    btnSearchMainCarrier: TButton;
    edtReturningAddress: TEdit;
    edtBookingNumber: TEdit;
    grpInlandCarrier: TAdvGroupBox;
    lblPRONumber: TLabel;
    lblTrackingNumber: TLabel;
    edtLandCarrierName: TEdit;
    btnSearchCarrier: TButton;
    edtPRONumber: TEdit;
    edtTrackingNumber: TEdit;
    btnChangeReturningAddress: TButton;
    grpPol: TAdvGroupBox;
    btnPolFromShipper: TButton;
    btnSearchPolLocation: TButton;
    mmoPoDeliveryLocation: TJvMemo;
    grpPoD: TAdvGroupBox;
    btnCopyPodFromConsignee: TButton;
    btnSearchPoDLocation: TButton;
    mmoPoL: TJvMemo;
    edtPoLName: TEdit;
    btnSearchPOLName: TButton;
    edtPodName: TEdit;
    btnSearchPodName: TButton;
    tlbCommodities: TToolBar;
    grdMaster: TwwDBGrid;
    grdCommodities: TwwIButton;
    grdCharges: TwwDBGrid;
    btnCharges: TwwIButton;
    tlbCharges: TToolBar;
    fdmWorkTypes: TFDMemTable;
    fdmWorkTypesid: TSmallintField;
    fdmWorkTypesjguid: TGuidField;
    fdmWorkTypesname: TWideStringField;
    fdmWorkTypesicon_id: TSmallintField;
    dsWorkTypes: TDataSource;
    fdmLkpWarehouses: TFDMemTable;
    fdmLkpWarehousesanagraph_id: TIntegerField;
    fdmLkpWarehousesan_last_name: TWideStringField;
    dsWarehouses: TDataSource;
    JanuaMasterActionViewController: TJanuaActionViewController;
    jscCarrier: TJanuaVCLSearchController;
    jscWarehouseName: TJanuaVCLSearchController;
    jscVesselLocation: TJanuaVCLSearchController;
    jscSupplier: TJanuaVCLSearchController;
    jscShipper: TJanuaVCLSearchController;
    jscVessel: TJanuaVCLSearchController;
    jscAgent: TJanuaVCLSearchController;
    jscCustomer: TJanuaVCLSearchController;
    jscAirport: TJanuaVCLSearchController;
    jscArrivalAirport: TJanuaVCLSearchController;
    jscPod: TJanuaVCLSearchController;
    jscPol: TJanuaVCLSearchController;
    grpRouting: TGroupBox;
    chkAir: TCheckBox;
    chkGround: TCheckBox;
    chkSea: TCheckBox;
    jscLandCarrier: TJanuaVCLSearchController;
    jscMainCarrier: TJanuaVCLSearchController;
    edCustomerName: TEdit;
    Button1: TButton;
    edCustomerAddress: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edCustomerPostalCode: TEdit;
    edCustomerTown: TEdit;
    Label3: TLabel;
    procedure btnUpdateShipmentLocationClick(Sender: TObject);
  private
    [weak]
    FShipmentsVM: IJanuaDBShipmentsViewModel;
    [weak]
    FShipment: IShipmentView;
    procedure SetShipmentsVM(const Value: IJanuaDBShipmentsViewModel);
    function GetShipmentView: IShipmentView;
    procedure SetShipmentView(const Value: IShipmentView);
    procedure BindGeneral;
    procedure BindSubjects;
    procedure BindCarriers;
    procedure BindPolPod;
    procedure BindCommodities;

    { Private declarations }
  protected
    procedure AssignFields;
  protected
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
  public
    { Public declarations }
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
    property ShipmentView: IShipmentView read GetShipmentView write SetShipmentView;
    property ShipmentsVM: IJanuaDBShipmentsViewModel read FShipmentsVM write SetShipmentsVM;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework, System.StrUtils;

{$R *.dfm}
{ TFrameVCLLogisticShipmentHead }

procedure TFrameVCLLogisticShipmentHead.AssignFields;
begin
  BindGeneral;

end;

function TFrameVCLLogisticShipmentHead.GetShipmentView: IShipmentView;
begin
  Result := FShipment;
end;

function TFrameVCLLogisticShipmentHead.GetViewModel: IJanuaViewModel;
begin
  Result := FShipmentsVM as IJanuaViewModel
end;

procedure TFrameVCLLogisticShipmentHead.SetShipmentsVM(const Value: IJanuaDBShipmentsViewModel);
begin
  if Value <> FShipmentsVM then
  begin
    FShipmentsVM := Value;
    if Assigned(FShipmentsVM) then
      SetShipmentView(FShipmentsVM.ShipmentRecord);
  end;

  if Assigned(FShipmentsVM) then
  begin
    // Search ViewModels -------------------------------------------------------------------------------
    jscCarrier.SearchViewModel := FShipmentsVM.SVMCarrier; //
    jscShipper.SearchViewModel := FShipmentsVM.SVMShipper;
    jscSupplier.SearchViewModel := FShipmentsVM.SVMSupplier; // 10 - Shippers
    jscVesselLocation.SearchViewModel := FShipmentsVM.SVMLocation; // 9
    jscWarehouseName.SearchViewModel := FShipmentsVM.SVMWarehouse; // 16 - Warehouse
    jscAgent.SearchViewModel := FShipmentsVM.SVMAgent;
    jscCustomer.SearchViewModel := FShipmentsVM.SVMCustomer;
    jscVessel.SearchViewModel := FShipmentsVM.SVMVessel;
    jscAirport.SearchViewModel := FShipmentsVM.SVMAirport;
    jscArrivalAirport.SearchViewModel := FShipmentsVM.SVMArrivalAirport;
    jscPol.SearchViewModel := FShipmentsVM.SVMPoL;
    jscPod.SearchViewModel := FShipmentsVM.SVMPoD;
  end
  else
  begin
    jscCarrier.SearchViewModel := nil; //
    jscShipper.SearchViewModel := nil; //
    jscSupplier.SearchViewModel := nil; //
    jscVesselLocation.SearchViewModel := nil; //
    jscWarehouseName.SearchViewModel := nil; //
    jscAgent.SearchViewModel := nil;
    jscCustomer.SearchViewModel := nil; //
    jscVessel.SearchViewModel := nil; //
    jscAirport.SearchViewModel := nil; //
    jscArrivalAirport.SearchViewModel := nil; //
    jscPol.SearchViewModel := nil; //
    jscPod.SearchViewModel := nil; //
  end;
end;

procedure TFrameVCLLogisticShipmentHead.SetShipmentView(const Value: IShipmentView);
begin
  if Assigned(Value) then
  begin
    FShipment := Value;
    AssignFields
  end;
end;

procedure TFrameVCLLogisticShipmentHead.SetViewModel(const Value: IJanuaViewModel);
begin

end;

procedure TFrameVCLLogisticShipmentHead.BindCarriers;
begin
  edtMainCarrier.Text := FShipment.CarrierName.AsString;
  FShipment.CarrierName.Bind('AsString', edtMainCarrier, 'Text');
  { edtPRONumber.Text := FShipment.PRONumber.AsString;
    FShipment.PRONumber.Bind('AsString', edtPRONumber, 'Text'); }

end;

procedure TFrameVCLLogisticShipmentHead.BindCommodities;
begin

end;

procedure TFrameVCLLogisticShipmentHead.BindGeneral;
begin
  seYear.Value := FShipment.Year.AsInteger;
  FShipment.Year.Bind('AsInteger', seYear, 'Value');
  cboWorkTypeID.LookupSource := dsWorkTypes;
  cboWorkTypeID.LookupField := 'id';
  cboWorkTypeID.LookupDisplay := 'name';
  if fdmWorkTypes.Locate('id', FShipment.TypeId.AsInteger, []) then
  begin
    cboWorkTypeID.Value := FShipment.TypeId.AsString;
  end;
  FShipment.TypeId.Bind('AsString', cboWorkTypeID, 'Value');
  cboWarehouseID.LookupSource := dsWarehouses;
  cboWarehouseID.LookupField := 'anagraph_id';
  cboWarehouseID.LookupDisplay := 'name';
  if fdmWorkTypes.Locate('anagraph_id', FShipment.WarehouseId.AsInteger, []) then
  begin
    cboWarehouseID.Value := FShipment.WarehouseId.AsString;
  end;
  FShipment.WarehouseId.Bind('AsString', cboWarehouseID, 'Value');
  seNumber.Value := FShipment.WorkNumber.AsInteger;
  FShipment.WorkNumber.Bind('AsInteger', seNumber, 'Value');
  lbedNumber.Text := FShipment.WorkCode.AsString;
  FShipment.WorkCode.Bind('AsString', lbedNumber, 'Text');
  // lbedPurchaseOrder
  lbedPurchaseOrder.Text := FShipment.PoNumber.AsString;
  FShipment.PoNumber.Bind('AsString', lbedPurchaseOrder, 'Text');
  // dtpWorkDate
  dtpWorkDate.Date := FShipment.WorkDate.AsDateTime;
  FShipment.WorkDate.Bind('AsDateTime', dtpWorkDate, 'Date');
  // dtpETD
  dtpETD.Date := FShipment.DepartureDate.AsDateTime;
  FShipment.DepartureDate.Bind('AsDateTime', dtpETD, 'Date');
  // dtpETA
  dtpETA.Date := FShipment.ArrivalDate.AsDateTime;
  FShipment.ArrivalDate.Bind('AsDateTime', dtpETA, 'Date');
  // chkCites
  { chkCites.Checked := FShipment.flgCites.AsBoolean;
    FShipment.flgCites.Bind('AsBoolean', chkCites, 'Checked'); }
  // chkAssurance
  { chkAssurance.Checked := FShipment.flgAssurance.AsBoolean;
    FShipment.flgAssurance.Bind('AsBoolean', chkAssurance, 'Checked'); }
  // chkPickUp
  { chkPickUp.Checked := FShipment.flgPickUp.AsBoolean;
    FShipment.flgPickUp.Bind('AsBoolean', chkPickUp, 'Checked'); }
  // chkFumigation
  { chkFumigation.Checked := FShipment.flgFumigation.AsBoolean;
    FShipment.flgFumigation.Bind('AsBoolean', chkFumigation, 'Checked'); }
  // chkENAC
  { chkENAC.Checked := FShipment.flgENAC.AsBoolean;
    FShipment.flgENAC.Bind('AsBoolean', chkENAC, 'Checked'); }
  // chkDAU
  { chkDAU.Checked := FShipment.flgDAU.AsBoolean;
    FShipment.flgDAU.Bind('AsBoolean', chkDAU, 'Checked'); }
  // chkDangerousGoods
  { chkDangerousGoods.Checked := FShipment.flgDangerousGoods.AsBoolean;
    FShipment.flgDangerousGoods.Bind('AsBoolean', chkDangerousGoods, 'Checked'); }
  // rgWorkState
  rgWorkState.ItemIndex := FShipment.LevelId.AsInteger;
  FShipment.LevelId.Bind('AsInteger', rgWorkState, 'ItemIndex');
  // lbedUserName
  { lbedUserName.Text := FShipment.UserName.AsString;
    FShipment.UserName.Bind('AsString', lbedUserName, 'Text'); }
  // grpRouting
  chkAir.Checked := FShipment.FlagAir.AsBoolean;
  FShipment.FlagAir.Bind('AsBoolean', chkAir, 'Checked');
  chkGround.Checked := FShipment.FlagGround.AsBoolean;
  FShipment.FlagGround.Bind('AsBoolean', chkGround, 'Checked');
  { chkSea.Checked := FShipment.FlagSea.AsBoolean;
    FShipment.FlagSea.Bind('AsBoolean', chkSea, 'Checked'); }
  // lbedVesselName
  lbedVesselName.Text := FShipment.VesselName.AsString;
  FShipment.VesselName.Bind('AsString', lbedVesselName, 'Text');
end;

procedure TFrameVCLLogisticShipmentHead.BindPolPod;
begin

end;

procedure TFrameVCLLogisticShipmentHead.BindSubjects;
begin
  // Shipper   ------------------------------------------------------------------------------------
  edtShipperName.Text := FShipment.ShipperName.AsString;
  FShipment.ShipperName.Bind('AsString', edtShipperName, 'Text');

  edShipperAddress.Text := FShipment.ShipperAddress.AsString;
  FShipment.ShipperAddress.Bind('AsString', edShipperAddress, 'Text');

  edShipperPostalCode.Text := FShipment.ShipperCode.AsString;
  FShipment.ShipperCode.Bind('AsString', edShipperPostalCode, 'Text');

  edShipperTown.Text := FShipment.ShipperTown.AsString;
  FShipment.ShipperTown.Bind('AsString', edShipperTown, 'Text');

  mmoShipmentLocation.Text := FShipment.ShipperName.AsString + sLineBreak + FShipment.ShipperAddress.AsString +
    sLineBreak + FShipment.ShipperCode.AsString + IfThen(FShipment.ShipperCode.AsString <> '', ', ', ' ') +
    FShipment.ShipperTown.AsString;

  // Consignee ------------------------------------------------------------------------------------
  { TODO : FShipment.Consignee }
  // edtConsigneeName
  (*
    edtConsigneeName.Text := FShipment.ConsigneeName.AsString;
    FShipment.ConsigneeName.Bind('AsString', edtConsigneeName, 'Text');
  *)

  // Supplier  ------------------------------------------------------------------------------------
  { TODO : FShipment.SupplierName }
  (*
    edtSupplierName.Text       := FShipment.SupplierName.AsString;
  *)

  // Customer --------------------------------------------------------------------------------------
  (* edAddressNumber: TEdit;
    edTown: TEdit;
    edStateProvince: TEdit; *)
  edCustomerName.BindToField(FShipment.CustomerName);
  edCustomerAddress.BindToField(FShipment.CustomerName);
  edCustomerTown.BindToField( FShipment.CustomerTown);
  edCustomerPostalCode.BindToField(FShipment.CustomerPostalCode);
  // Invoice Order
  { TODO : FShipment.InvoiceNumber }
  { edtInvoiceNumber.Text := FShipment.InvoiceNumber.AnsiString; }
  edtPurchaseOrderNumber.Text := FShipment.PoNumber.AsString;
  FShipment.PoNumber.Bind('AsString', edtPurchaseOrderNumber, 'Text');
end;

procedure TFrameVCLLogisticShipmentHead.btnUpdateShipmentLocationClick(Sender: TObject);
begin
  mmoShipmentLocation.Text := FShipment.ShipperName.AsString + sLineBreak + FShipment.ShipperAddress.AsString +
    sLineBreak + FShipment.ShipperCode.AsString + IfThen(FShipment.ShipperCode.AsString <> '', ', ', ' ') +
    FShipment.ShipperTown.AsString;
end;

end.
