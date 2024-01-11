unit uframeVCLLogisticReceipt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExStdCtrls, JvCombobox, Vcl.ExtCtrls,
  JvExControls, JvDBCombobox, JvDBLookup, Vcl.ComCtrls,
  // DB
  Data.DB, MemDS, VirtualTable, DBAccess, Uni,
  // Spring
  Spring.Collections,
  // Januaproject
  uJanuaVCLFrame, Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types,
  Janua.Core.Classes.Intf, JOrm.Documents.Intf, MoneyEdit, Janua.Core.Classes, Janua.Bindings.Intf,
  Janua.Vcl.Interposers, Janua.Vcl.ViewModel.Search, Janua.Documents.WarehouseReceipts.ViewModel.Intf,
  Janua.Core.Commons;

type
  TframeVCLLogisticReceipt = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    grpImportExport: TRadioGroup;
    grpTypeOfGoods: TGroupBox;
    grpDocInfo: TGroupBox;
    cboTypeOfGoods: TJvDBLookupCombo;
    vtTypeOfGoods: TVirtualTable;
    vtTypeOfGoodsid: TSmallintField;
    vtTypeOfGoodsdescription: TStringField;
    dsTypeOfGoods: TUniDataSource;
    edWarehouseName: TEdit;
    Label1: TLabel;
    edDocDate: TDateTimePicker;
    Label2: TLabel;
    edDocNumber: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edDocYear: TEdit;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    lbSupplier: TLabel;
    lbVessel: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edSupplier: TEdit;
    edVesselName: TEdit;
    JvDBLookupCombo2: TJvDBLookupCombo;
    vtDepartments: TVirtualTable;
    edPONumber: TEdit;
    ButtonedEdit7: TEdit;
    lbPONumber: TLabel;
    Label12: TLabel;
    CheckBox1: TCheckBox;
    GroupBox2: TGroupBox;
    edCarrier: TEdit;
    lbCarrier: TLabel;
    vtDepartmentsid: TSmallintField;
    vtDepartmentsname: TStringField;
    dsDepartments: TUniDataSource;
    edCarrierInvoiceDate: TDateTimePicker;
    Label14: TLabel;
    edCarrierInvoiceNumber: TEdit;
    CarrierInvoiceNumber: TLabel;
    edCarrierInvoiceAmount: TMoneyEdit;
    lbTransportInvoice: TLabel;
    edTrackingNumber: TEdit;
    lbTrackingNumber: TLabel;
    GroupBox3: TGroupBox;
    edDocRefNumber: TEdit;
    edDocAmount: TMoneyEdit;
    cboInvoiceCurrency: TJvDBLookupCombo;
    lbDocAmount: TLabel;
    lbCurrency: TLabel;
    lbInvoiceNumber: TLabel;
    radioTypeOperation: TRadioGroup;
    jscWarehouseName: TJanuaVCLSearchController;
    jscVesselLocation: TJanuaVCLSearchController;
    jscSupplier: TJanuaVCLSearchController;
    jscCarrier: TJanuaVCLSearchController;
    btnSupplier: TButton;
    btnVesselLocation: TButton;
    btnCarrier: TButton;
    btnWarehouseName: TButton;
    edCarrierID: TLabel;
    edLocationID: TLabel;
    edHolderID: TLabel;
    edWarehouseID: TLabel;
  private
    [weak]
    FDocHead: IDocHeadView;
    [weak]
    FWHReceiptsViewModel: IJanuaWHReceiptsViewModel;
    function GetDocHead: IDocHeadView;
    procedure SetDocHead(const Value: IDocHeadView);
    procedure SetWHReceiptsViewModel(const Value: IJanuaWHReceiptsViewModel);
    procedure UnbindComponents;
  protected
    { Private declarations }
  public
    property DocHead: IDocHeadView read GetDocHead write SetDocHead;
    property WHReceiptsViewModel: IJanuaWHReceiptsViewModel read FWHReceiptsViewModel write SetWHReceiptsViewModel;
    { Public declarations }
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    procedure Initialize; override;
    procedure Terminate; override;
    procedure ActivateSearch;
  end;

implementation

uses Janua.Vcl.Framework, Janua.Application.Framework, Janua.Core.Functions;

{$R *.dfm}

procedure TframeVCLLogisticReceipt.ActivateSearch;
begin
  try
    jscWarehouseName.Activate;
    jscCarrier.Activate;
    jscSupplier.Activate;
    jscVesselLocation.Activate;
  except
    on e: Exception do
      RaiseException('ActivateSearch', e, Self);
  end;
end;

procedure TframeVCLLogisticReceipt.UnbindComponents;
begin
  jscCarrier.SearchViewModel := nil;
  jscSupplier.SearchViewModel := nil;
  jscVesselLocation.SearchViewModel := nil;
  jscWarehouseName.SearchViewModel := nil;
end;

constructor TframeVCLLogisticReceipt.Create;
begin
  inherited;
end;

destructor TframeVCLLogisticReceipt.Destroy;
begin
  UnbindComponents;
  Terminate;
  if ASsigned(FDocHead) then
    FDocHead.ClearBindings;
  SetDocHead(nil);
  SetWHReceiptsViewModel(nil);
  inherited;
end;

function TframeVCLLogisticReceipt.GetDocHead: IDocHeadView;
begin
  Result := FDocHead;
end;

{ TframeVCLLogisticReceipt }

procedure TframeVCLLogisticReceipt.Initialize;
begin
  try
    inherited;

    cboTypeOfGoods.Value := FDocHead.GoodsTypeId.AsString;
    FDocHead.GoodsTypeId.Bind('AsString', cboTypeOfGoods, 'Value');

    edWarehouseName.Text := FDocHead.DestName.AsString;
    FDocHead.DestName.Bind('AsString', edWarehouseName, 'Text');

    edWarehouseID.Caption := FDocHead.AnagraphId.AsString;
    FDocHead.AnagraphId.Bind('AsString', edWarehouseID, 'Caption');

    edDocDate.Date := FDocHead.DocDate.AsDateTime;
    FDocHead.DocDate.Bind('AsDateTime', edDocDate, 'Date');

    edDocNumber.Text := FDocHead.DocNumber.AsString;
    FDocHead.DocNumber.Bind('AsString', edDocNumber, 'Text');

    edDocYear.Text := FDocHead.DocYear.AsString;
    FDocHead.DocYear.Bind('AsString', edDocYear, 'Text');

    grpImportExport.ItemIndex := FDocHead.ImportExport.AsInteger;
    FDocHead.ImportExport.Bind('AsInteger', grpImportExport, 'ItemIndex');

    // radioTypeOperation.ItemIndex := FDocHead.

    edSupplier.Text := DocHead.HolderName.AsString;
    FDocHead.HolderName.Bind('AsString', edSupplier, 'Text');
    edHolderID.Caption := DocHead.HolderId.AsString;
    FDocHead.HolderId.Bind('AsString', edHolderID, 'Caption');

    edVesselName.Text := DocHead.LocationName.AsString;
    FDocHead.LocationName.Bind('AsString', edVesselName, 'Text');
    edLocationID.Caption := DocHead.WarehouseLocationId.AsString;
    FDocHead.WarehouseLocationId.Bind('AsString', edLocationID, 'Caption');

    edPONumber.Text := DocHead.PoNumber.AsString;
    FDocHead.PoNumber.Bind('AsString', edPONumber, 'Text');

    // ---------- Carrier Section ----------------------------------------------------------------------
    edCarrier.Text := DocHead.CarrierName.AsString;
    FDocHead.CarrierName.Bind('AsString', edCarrier, 'Text');
    edCarrierID.Caption := DocHead.CarrierId.AsString;
    FDocHead.CarrierId.Bind('AsString', edCarrierID, 'Caption');

    (*
      FSearchViewModelAnagraph.CallBackSearch := CallBackSearch;
      FViewModelController.Activate;
    *)

    // edCarrierInvoiceDate.Date := DocHead.carri

    // edCarrierInvoiceNumber.Text := DocHead.carrier
  except
    on e: Exception do
      RaiseException('Initialize', e, Self);
  end;
end;

procedure TframeVCLLogisticReceipt.SetDocHead(const Value: IDocHeadView);
begin
  try
    if (FDocHead <> Value) then
    begin
      if Value = nil then
        Terminate;
      FDocHead := Value;
      if ASsigned(FDocHead) then
        Initialize;
    end;
  except
    on e: Exception do
      RaiseException('SetDocHead', e, Self);
  end;
end;

procedure TframeVCLLogisticReceipt.SetWHReceiptsViewModel(const Value: IJanuaWHReceiptsViewModel);
begin
  try
    FWHReceiptsViewModel := Value;
    if ASsigned(FWHReceiptsViewModel) then
    begin
      // Search ViewModels -------------------------------------------------------------------------------
      jscCarrier.SearchViewModel := FWHReceiptsViewModel.SVMCarrier; //
      jscSupplier.SearchViewModel := FWHReceiptsViewModel.SVMHolder; // 10 - Shippers
      jscVesselLocation.SearchViewModel := FWHReceiptsViewModel.SVMVesselLocation; // 9
      jscWarehouseName.SearchViewModel := FWHReceiptsViewModel.SVMAnagraph; // 16 - Warehouse
    end
    else
    begin
      UnbindComponents;
    end;
  except
    on e: Exception do
      RaiseException('SetWHReceiptsViewModel', e, Self);
  end;
end;

procedure TframeVCLLogisticReceipt.Terminate;
begin
  inherited;
  if ASsigned(FDocHead) then
  begin
    FDocHead.GoodsTypeId.ClearBindings;
    FDocHead.DestName.ClearBindings;
    FDocHead.AnagraphId.ClearBindings;
    FDocHead.DocDate.ClearBindings;
    FDocHead.DocNumber.ClearBindings;
    FDocHead.DocYear.ClearBindings;
    FDocHead.ImportExport.ClearBindings;
    FDocHead.HolderName.ClearBindings;
    FDocHead.HolderId.ClearBindings;
    FDocHead.LocationName.ClearBindings;
    FDocHead.WarehouseLocationId.ClearBindings;
    FDocHead.PoNumber.ClearBindings;
    FDocHead.CarrierName.ClearBindings;
    FDocHead.CarrierId.ClearBindings;
  end;
end;

end.
