unit Janua.VCL.Logistic.frameWarehouseReceipt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, JvExStdCtrls, JvCombobox, VCL.ExtCtrls,
  JvExControls, JvDBCombobox, JvDBLookup, VCL.ComCtrls, VCL.DBGrids, Janua.VCL.EnhDBGrid, VCL.ToolWin,
  VCL.Grids, MoneyEdit,
  // DB
  Data.DB, MemDS, VirtualTable, DBAccess, Uni,
  // FireDAC
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  // Januaproject
  uJanuaVCLFrame, Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types,
  Janua.Bindings.Intf, Janua.Core.Classes.Intf, JOrm.Documents.Intf, Janua.Core.Classes,
  Janua.VCL.ViewModel.Search, Janua.Documents.WarehouseReceipts.ViewModel.Intf,
  Janua.VCL.Interposers, Janua.VCL.Actions, Janua.VCL.MVVM.frameNavigator,
  Janua.Documents.frameVCLAttachments, Janua.TMS.Interposers,
  Janua.VCL.Logistic.frameWHReceiptRowsNavigator, Janua.VCL.Logistic.frameWHReceiptChargesNavigator,
  Janua.Core.Commons;

type
  TFrameVCLLogisticWarehouseReceipt = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    pgWarehouseReceipt: TPageControl;
    tabHead: TTabSheet;
    tabShipperConsignee: TTabSheet;
    tabCarrierCharges: TTabSheet;
    tabAttachments: TTabSheet;
    tabNotes: TTabSheet;
    tabCommodities: TTabSheet;
    grpImportExport: TRadioGroup;
    grpDocInfo: TGroupBox;
    lbBondedWarehouse: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edWarehouseID: TLabel;
    edWarehouseName: TEdit;
    edDocDate: TDateTimePicker;
    edDocNumber: TEdit;
    edDocYear: TEdit;
    btnWarehouseName: TButton;
    tabCharges: TTabSheet;
    radioTypeOperation: TRadioGroup;
    grpDocumentCustoms: TGroupBox;
    lbDocAmount: TLabel;
    lbCurrency: TLabel;
    lbInvoiceNumber: TLabel;
    edDocRefNumber: TEdit;
    edDocAmount: TMoneyEdit;
    cboInvoiceCurrencyID: TJvDBLookupCombo;
    tabLocationVessel: TGroupBox;
    cboDepartment: TJvDBLookupCombo;
    Label10: TLabel;
    Label9: TLabel;
    edLocationID: TLabel;
    btnVesselSearch: TButton;
    edVesselName: TEdit;
    lbVessel: TLabel;
    grpReferences: TGroupBox;
    edtWorkPaperCode: TEdit;
    lbWorkCode: TLabel;
    lbPONumber: TLabel;
    edPONumber: TEdit;
    btnWorkShipments: TButton;
    grpIssuedBy: TGroupBox;
    grpSupplierShipper: TGroupBox;
    edSupplier: TEdit;
    lbSupplierName: TLabel;
    edHolderID: TLabel;
    btnSupplier: TButton;
    edHolderAddress: TEdit;
    edHolderTown: TEdit;
    edHolderPostalCode: TEdit;
    edHolderStateProvince: TEdit;
    edHolderCountryCode: TEdit;
    Button2: TButton;
    Button3: TButton;
    lbSupplierAddress: TLabel;
    lbSupplierTown: TLabel;
    lbSupplierPostalCode: TLabel;
    lbSupplierStateProvince: TLabel;
    lbShipperCountryCode: TLabel;
    lbSupplierCountry: TLabel;
    grpConsignee: TGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit7: TEdit;
    Button4: TButton;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Button5: TButton;
    Button6: TButton;
    GroupBox2: TGroupBox;
    lbCarrier: TLabel;
    Label16: TLabel;
    CarrierInvoiceNumber: TLabel;
    lbTransportInvoice: TLabel;
    lbTrackingNumber: TLabel;
    edCarrierID: TLabel;
    edCarrier: TEdit;
    edCarrierInvoiceDate: TDateTimePicker;
    edCarrierInvoiceNumber: TEdit;
    edTrackingNumber: TEdit;
    btnCarrier: TButton;
    edCarrierInvoiceAmount: TMoneyEdit;
    tabCustoms: TTabSheet;
    vtTypeOfGoods: TVirtualTable;
    vtTypeOfGoodsid: TSmallintField;
    vtTypeOfGoodsdescription: TStringField;
    dsDepartments: TUniDataSource;
    dsTypeOfGoods: TUniDataSource;
    grpCustomsReference: TGroupBox;
    JvLinkLabel15: TLabel;
    edCustomsNumber: TLabel;
    edCustomsCin: TLabel;
    edCustomsDocDate: TLabel;
    lbCustomsExpirationDate: TLabel;
    edCustomsMRN: TLabel;
    cboCustomsDocumentType: TJvDBLookupCombo;
    Edit14: TEdit;
    Edit15: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit16: TEdit;
    grpCommoditiesTotals: TGroupBox;
    grpChargesTotals: TGroupBox;
    MasterActionViewController: TJanuaActionViewController;
    frameVCLWHReceiptRowsNavigator1: TframeVCLWHReceiptRowsNavigator;
    chkInternetVisible: TCheckBox;
    lbWorkID: TLabel;
    fdmCurrencies: TFDMemTable;
    fdmCurrenciescurrency_id: TSmallintField;
    fdmCurrenciescurrency_code: TWideStringField;
    fdmCurrenciescurrency_name: TWideStringField;
    fdmSystemUsers: TFDMemTable;
    fdmSystemUsersdb_user_id: TIntegerField;
    fdmSystemUsersemail: TWideStringField;
    fdmSystemUsersusername: TWideStringField;
    cboUserInsert: TJvDBLookupCombo;
    dsSystemUsers: TDataSource;
    btnNewHolder: TButton;
    btnNewConsignee: TButton;
    btnNewCarrier: TButton;
    dsCountries: TDataSource;
    fdmCountries: TFDMemTable;
    fdmCountriesiso_country_code: TWideStringField;
    fdmCountriesiso_country_code2: TWideStringField;
    fdmCountriescountry_year: TSmallintField;
    fdmCountriescountry_name: TWideStringField;
    fdmCountriesiso_currency_id: TSmallintField;
    fdmCountriescountry_id: TSmallintField;
    fdmCountriesiso_country_number: TWideStringField;
    fdmCountriesjguid: TGuidField;
    cboCountryName: TJvDBLookupCombo;
    dsCurrencies: TDataSource;
    fdmLkpDepartments: TFDMemTable;
    fdmLkpDepartmentsid: TSmallintField;
    fdmLkpDepartmentsdescription: TWideStringField;
    fdmLkpDepartmentsguid: TGuidField;
    cboCarrierCurrencyCode: TJvDBLookupCombo;

    frameVCLWHReceiptChargesNavigator1: TframeVCLWHReceiptChargesNavigator;
    memNotes: TMemo;
    edWarehouseLocation: TEdit;
    btnWarehouseLocationSearch: TButton;
    lbLocationName: TLabel;
    // Search Controllers
    jscWorkShipments: TJanuaVCLSearchController;
    jscVessel: TJanuaVCLSearchController;
    jscSupplier: TJanuaVCLSearchController;
    jscLocation: TJanuaVCLSearchController;
    jscWarehouse: TJanuaVCLSearchController;
    jscCarrier: TJanuaVCLSearchController;
    edVesselID: TLabel;
    jscShipment: TJanuaVCLSearchController;
    // Events procedures
    procedure cbCarrierCurrencyCodeCloseUp(Sender: TObject);
    procedure tabAttachmentsShow(Sender: TObject);
  private
    FWHReceiptsViewModel: IJanuaWHReceiptsViewModel;
    FDocHead: IDocHeadView;
    FframeVCLDocAttachments: TframeVCLDocAttachments;
    function GetDocHead: IDocHeadView;
    procedure SetDocHead(const Value: IDocHeadView);
    procedure SetWHReceiptsViewModel(const Value: IJanuaWHReceiptsViewModel);
    procedure SetframeVCLDocAttachments(const Value: TframeVCLDocAttachments);
    { Private declarations }
  public
    property DocHead: IDocHeadView read GetDocHead write SetDocHead;
    property WHReceiptsViewModel: IJanuaWHReceiptsViewModel read FWHReceiptsViewModel
      write SetWHReceiptsViewModel;
    property frameVCLDocAttachments: TframeVCLDocAttachments read FframeVCLDocAttachments
      write SetframeVCLDocAttachments;
    { Public declarations }
  public
    procedure AfterConstruction; override;
    procedure Initialize; override;
    procedure ActivateSearch;
  end;

implementation

uses Spring, Janua.Application.Framework, Janua.Core.Functions;

{$R *.dfm}
{ TFrame1 }

procedure TFrameVCLLogisticWarehouseReceipt.ActivateSearch;
begin
  jscWarehouse.Activate;
  jscCarrier.Activate;
  jscSupplier.Activate;
  { jscVessel.Activate; }
  jscWorkShipments.Activate;
  { jscLocation.Activate; }
end;

procedure TFrameVCLLogisticWarehouseReceipt.AfterConstruction;
begin
  inherited;
  FframeVCLDocAttachments := TframeVCLDocAttachments.Create(self);
  FframeVCLDocAttachments.Parent := tabAttachments;
  FframeVCLDocAttachments.Align := alClient;
end;

procedure TFrameVCLLogisticWarehouseReceipt.cbCarrierCurrencyCodeCloseUp(Sender: TObject);
begin
  inherited;
  if fdmCurrencies.Locate('currency_code', cboCarrierCurrencyCode.Text, []) then
  begin

  end;
end;

function TFrameVCLLogisticWarehouseReceipt.GetDocHead: IDocHeadView;
begin
  Result := FDocHead;
end;

procedure TFrameVCLLogisticWarehouseReceipt.Initialize;
begin
  inherited;
  try
    {
      TODO: check if implementation of type of Gooods is at single Row or Document's level
      cboTypeOfGoods.Value := FDocHead.GoodsTypeId.AsString;
      FDocHead.GoodsTypeId.Bind('AsString', cboTypeOfGoods, 'Value'); }

    cboUserInsert.BindToField(DocHead.UserInsert);

    // Doc Warehouse and Head Info
    edWarehouseName.BindToField(DocHead.DestName);
    edWarehouseID.BindToField(DocHead.AnagraphId);
    edDocNumber.BindToField(DocHead.DocNumber);
    edDocDate.BindToField(DocHead.DocDate);
    edDocYear.BindToField(DocHead.DocYear);
    grpImportExport.BindToField(DocHead.ImportExport);

    // Invoice Informations
    edDocAmount.BindToField(DocHead.Amount);
    edDocRefNumber.BindToField(DocHead.DocRefCode);
    cboInvoiceCurrencyID.BindToField(DocHead.CurrencyId);

    // Reason is linked to Operation Type for Warehouse Receipts documents
    radioTypeOperation.ItemIndex := FDocHead.Reason.AsInteger;
    FDocHead.Reason.Bind('AsInteger', radioTypeOperation, 'ItemIndex');

    edSupplier.Text := DocHead.HolderName.AsString;
    FDocHead.HolderName.Bind('AsString', edSupplier, 'Text');

    edHolderID.Caption := DocHead.HolderId.AsString;
    FDocHead.HolderId.Bind('AsString', edHolderID, 'Caption');

    { edVesselName.Text := DocHead.LocationName.AsString;
      FDocHead.LocationName.Bind('AsString', edVesselName, 'Text'); }

    edVesselName.BindToField(DocHead.VesselName);
    edVesselID.BindToField(DocHead.VesselID);
    edWarehouseLocation.BindToField(DocHead.LocationName);
    edLocationID.BindToField(DocHead.WarehouseLocationId);

    { edLocationID.Caption := DocHead.WarehouseLocationId.AsString;
      FDocHead.WarehouseLocationId.Bind('AsString', edLocationID, 'Caption'); }

    edPONumber.Text := DocHead.PurchaseOrderNumber.AsString;
    FDocHead.PurchaseOrderNumber.Bind('AsString', edPONumber, 'Text');

    // ---------- Carrier Section ----------------------------------------------------------------------
    edCarrier.Text := DocHead.CarrierName.AsString;
    FDocHead.CarrierName.Bind('AsString', edCarrier, 'Text');
    edCarrierID.Caption := DocHead.CarrierId.AsString;
    FDocHead.CarrierId.Bind('AsString', edCarrierID, 'Caption');

    // HolderSection
    edHolderTown.BindToField(DocHead.HolderTown);
    edHolderAddress.BindToField(DocHead.HolderAddress);
    edHolderPostalCode.BindToField(DocHead.HolderPostalCode);
    edHolderStateProvince.BindToField(DocHead.HolderStateProvince);

    memNotes.BindToField(DocHead.Notes1);

    { cboDepartment.Value := DocHead.VesselDepartmentId.AsString;
      FDocHead.VesselDepartmentId.Bind('AsString', cboDepartment, 'Value'); }

    // ---------- Carrier Invoice Details --------------------------------------------------------------

    { CarrierExpenses
      CarrierExpensesCurrencyId
      CarrierInvoiceDate
      CarrierInvoiceNumber }

    (*
      FSearchViewModelAnagraph.CallBackSearch := CallBackSearch;
      FViewModelController.Activate;
    *)

    // edCarrierInvoiceDate.Date := DocHead.carri

    // edCarrierInvoiceNumber.Text := DocHead.carrier

    // ---------- Work  Reference  Section --------------------------------------------------------------
    { TODO: lbWorkID.Caption := FDocHead.WorkFlowID.AnsiString; }

    lbWorkID.BindToField(FDocHead.FolderId);
    edtWorkPaperCode.BindToField(FDocHead.ShipmentDes);

  except
    on e: Exception do
      RaiseException('Initialize', e, self);
  end;

end;

procedure TFrameVCLLogisticWarehouseReceipt.SetDocHead(const Value: IDocHeadView);
begin
  if (FDocHead <> Value) then
  begin
    FDocHead := Value;
    if Assigned(FDocHead) then
      Initialize;
  end;
end;

procedure TFrameVCLLogisticWarehouseReceipt.SetframeVCLDocAttachments(const Value: TframeVCLDocAttachments);
begin
  FframeVCLDocAttachments := Value;
end;

procedure TFrameVCLLogisticWarehouseReceipt.SetWHReceiptsViewModel(const Value: IJanuaWHReceiptsViewModel);
begin
  FWHReceiptsViewModel := Value;

  if Assigned(FWHReceiptsViewModel) then
    try
      // Search ViewModels -------------------------------------------------------------------------------
      Guard.CheckNotNull(FWHReceiptsViewModel.WHRRowsViewModel, 'FWHReceiptsViewModel.WHRRowsViewModel');
      Guard.CheckNotNull(FWHReceiptsViewModel.AttachmentsViewModel,
        'FWHReceiptsViewModel.AttachmentsViewModel');
      Guard.CheckNotNull(FWHReceiptsViewModel.ChargesViewModel, 'FWHReceiptsViewModel.DocChargesViewModel');

      jscWorkShipments.SearchViewModel := FWHReceiptsViewModel.SVMShipment;
      jscCarrier.SearchViewModel := FWHReceiptsViewModel.SVMCarrier; //
      jscSupplier.SearchViewModel := FWHReceiptsViewModel.SVMHolder; // 10 - Shippers
      jscLocation.SearchViewModel := FWHReceiptsViewModel.SVMVesselLocation; // 9
      jscWarehouse.SearchViewModel := FWHReceiptsViewModel.SVMAnagraph; // 16 - Warehouse
      Guard.CheckNotNull(FWHReceiptsViewModel.SVMVessel, 'SVMVessel');
      jscVessel.SearchViewModel := FWHReceiptsViewModel.SVMVessel;
      frameVCLWHReceiptRowsNavigator1.WHRRowsViewModel := FWHReceiptsViewModel.WHRRowsViewModel;
      FframeVCLDocAttachments.AttachmentsViewModel := FWHReceiptsViewModel.AttachmentsViewModel;
      frameVCLWHReceiptChargesNavigator1.DocChargesViewModel := FWHReceiptsViewModel.ChargesViewModel;
      DocHead := FWHReceiptsViewModel.DocHeadRecord;
    except
      on e: Exception do
        RaiseException('SetWHReceiptsViewModel', e, self);
    end;
end;

procedure TFrameVCLLogisticWarehouseReceipt.tabAttachmentsShow(Sender: TObject);
begin
  inherited;
  FframeVCLDocAttachments.SetONewRecord;
end;

end.
