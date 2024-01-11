unit Janua.VCL.Logistic.dlgAirWayBill;

interface

uses
  // System
  System.ImageList,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // vCal
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, JOrm.Logistic.AWBs.Intf, VCL.ComCtrls, VCL.Graphics, VCL.ToolWin,
  VCL.ExtCtrls, VCL.DBCtrls, VCL.DBCGrids, VCL.Mask, JvExMask, JvToolEdit, JvDBControls, JvExControls, JvDBLookup,
  // TMS
  AdvEdit, AdvMoneyEdit, DBAdvMoneyEdit, AdvMemo, Lucombo, MoneyEdit,
  // DB Controls
  MemDS, VirtualTable, Data.DB, VCL.Grids, VCL.DBGrids, CRGrid, Janua.VCL.EnhCRDBGrid,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Core.Classes,
  // Logistic AWB View Model
  Janua.Logistic.AWB.ViewModel.Intf,
  // Interposers
  Janua.VCL.Actions, Janua.Bindings.Intf, Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.Core.Commons;

type
  TdlgVCLLogisticAirWayBill = class(TJanuaVCLFormModel, IJanuaLogisticAWBDialog, IJanuaRecordEditDialog, IJanuaBindable)
    pgAWB: TPageControl;
    tabHead: TTabSheet;
    grpHeader: TGroupBox;
    lbField1b_Departure: TLabel;
    lbField1b_AiportID: TLabel;
    lbAWBNumber: TLabel;
    lbField1a: TLabel;
    edField1b_AirportCode: TEdit;
    btnDepartureAirport: TButton;
    edField1c_AWBNumber: TEdit;
    edField1a: TEdit;
    btnAWBNumber: TButton;
    grpShipper: TGroupBox;
    edField2_ShipperCode: TEdit;
    edField2_ShipperName: TEdit;
    edField21_ShipperAddress: TEdit;
    edField22_ShipperVATCode: TEdit;
    edField23_ShipperTownPostalCode: TEdit;
    grpAirCompany: TGroupBox;
    edAirCompanyName: TEdit;
    edAirAddress: TEdit;
    edAirlineTownPostalCode: TEdit;
    edAirVATNumber: TEdit;
    tabCommodities: TTabSheet;
    tabAdditiional: TTabSheet;
    grpConsigneeAddress: TGroupBox;
    Edit2: TEdit;
    edField3: TEdit;
    edField31: TEdit;
    edField32: TEdit;
    edField33: TEdit;
    JanuaMasterActionViewController: TJanuaActionViewController;
    pnlCommands: TPanel;
    tlbMaster: TToolBar;
    grpAgentCarrierIATA: TGroupBox;
    edField4a_IssuingCarrierName: TEdit;
    Edit9: TEdit;
    edField4b_AgentsIATACode: TEdit;
    edField4d_AccountNumber: TEdit;
    lbAccountNumber: TLabel;
    Label2: TLabel;
    grpRouting: TGroupBox;
    edfield8_AirportName: TEdit;
    edField8_FromAirportCode: TEdit;
    edField8a_DestinationCode: TEdit;
    edField8a_DestinationAirport: TEdit;
    edField8c: TEdit;
    edField8c1: TEdit;
    Label3: TLabel;
    edField8f_FlightNumber: TEdit;
    Label4: TLabel;
    edField8f1_FlightDate: TDateTimePicker;
    Edit14: TEdit;
    edIntermidateAirport2: TEdit;
    edField8d_By1: TEdit;
    edIntermidiateCompany1: TEdit;
    edField8d1: TEdit;
    Edit18: TEdit;
    grpInsurance: TGroupBox;
    grpDeclaredValue: TGroupBox;
    Label5: TLabel;
    edInsuranceAmount: TMoneyEdit;
    Label6: TLabel;
    lkpInsuranceCurrency: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Edit16: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    edWTAL: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label9: TLabel;
    MoneyEdit1: TMoneyEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    Label8: TLabel;
    MoneyEdit2: TMoneyEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    Label10: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Label11: TLabel;
    grpHandlingInformation: TGroupBox;
    grpSCI: TGroupBox;
    DBLookupComboBox7: TDBLookupComboBox;
    Edit19: TEdit;
    Edit20: TEdit;
    edField4c2: TEdit;
    grpCommoditiesList: TGroupBox;
    edField5_AirCode: TEdit;
    Button1: TButton;
    Label12: TLabel;
    DBCtrlGrid1: TDBCtrlGrid;
    Label13: TLabel;
    vtAWBRows: TVirtualTable;
    vtAWBRowsid: TLargeintField;
    vtAWBRowsawb_id: TLargeintField;
    vtAWBRowsrow_pos: TSmallintField;
    vtAWBRowsfield19a: TIntegerField;
    vtAWBRowsfield20a: TFloatField;
    vtAWBRowsfield21: TWideMemoField;
    vtAWBRowsfield22: TWideStringField;
    vtAWBRowsfield23: TWideStringField;
    vtAWBRowsfield24: TCurrencyField;
    vtAWBRowsfield25: TCurrencyField;
    vtAWBRowsfield26a: TCurrencyField;
    vtAWBRowsfield27: TWideStringField;
    vtAWBRowsjguid: TGuidField;
    vtAWBRowsdb_schema_id: TIntegerField;
    vtAWBRowsdeleted: TBooleanField;
    edfield19a: TDBEdit;
    dsAWBRows: TDataSource;
    edField20a: TDBEdit;
    Label14: TLabel;
    edRowPos: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    edfield22: TJvDBComboEdit;
    Button2: TButton;
    grpAccountingInformations: TGroupBox;
    edField7: TAdvMemo;
    Edit1: TEdit;
    lbShipperID: TLabel;
    lbField24: TLabel;
    edField24: TDBEdit;
    edField25: TDBEdit;
    lbField25: TLabel;
    edField26a: TDBEdit;
    lbField26a: TLabel;
    edField27: TDBEdit;
    lbField27: TLabel;
    vtAWBSurcharges: TVirtualTable;
    vtAWBSurchargesawb_id: TLargeintField;
    vtAWBSurchargesjguid: TGuidField;
    vtAWBSurchargescode: TWideStringField;
    vtAWBSurchargesposition: TSmallintField;
    vtAWBSurchargesamount: TCurrencyField;
    dsAWBSurcharges: TDataSource;
    dsAWBCodes: TDataSource;
    vtAWBCodes: TVirtualTable;
    grpSurcharges: TGroupBox;
    grpOther2: TGroupBox;
    dblCodOther2: TJvDBLookupCombo;
    edAmountOther2: TMoneyEdit;
    grpOther1: TGroupBox;
    dblCodOther1: TJvDBLookupCombo;
    edAmountOther1: TMoneyEdit;
    grpOther4: TGroupBox;
    dblCodOther4: TJvDBLookupCombo;
    edAmountOther4: TMoneyEdit;
    grpOther5: TGroupBox;
    dblCodOther5: TJvDBLookupCombo;
    edAmountOther5: TMoneyEdit;
    grpOther7: TGroupBox;
    dblCodOther7: TJvDBLookupCombo;
    edAmountOther7: TMoneyEdit;
    grpOther8: TGroupBox;
    dblCodOther8: TJvDBLookupCombo;
    edAmountOther8: TMoneyEdit;
    grpOther9: TGroupBox;
    dblCodOther9: TJvDBLookupCombo;
    edAmountOther9: TMoneyEdit;
    grpOther6: TGroupBox;
    dblCodOther6: TJvDBLookupCombo;
    edAmountOther6: TMoneyEdit;
    grpOther3: TGroupBox;
    dblCodOther3: TJvDBLookupCombo;
    edAmountOther3: TMoneyEdit;
    grpFooter: TGroupBox;
    grpWeightCharge: TGroupBox;
    grpValutationCharge: TGroupBox;
    grpTax: TGroupBox;
    grpField31: TGroupBox;
    grpField32a: TGroupBox;
    GroupBox6: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    edField28a: TMoneyEdit;
    edField28b: TMoneyEdit;
    edField29a: TMoneyEdit;
    edField29b: TMoneyEdit;
    edField30a: TMoneyEdit;
    edField30b: TMoneyEdit;
    edField31a: TMoneyEdit;
    edField31b: TMoneyEdit;
    edField32a: TMoneyEdit;
    edField32b: TMoneyEdit;
    edField33a: TMoneyEdit;
    edField33b: TMoneyEdit;
    grpFooterSignature: TGroupBox;
    lbSigner1: TLabel;
    lbSigner2: TLabel;
    edSigner1: TEdit;
    edSigner2: TEdit;
    grpSummary: TGroupBox;
    sumField19a: TMoneyEdit;
    sumField20a: TMoneyEdit;
    lbNOPieces: TLabel;
    lbSumGrossWeigth: TLabel;
    lbSumTotal: TLabel;
    sumField26a: TMoneyEdit;
    edField8b_ByFirstCarrier: TEdit;
    edByFirstCarrierName: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label1: TLabel;
    edField8e_FinalDestination: TEdit;
    edField8e_LocationName: TEdit;
    edHanlingInformations: TAdvMemo;
  private
    [weak]
    FAWB: ILogisticAWB;
    [weak]
    FAWBViewModel: IJanuaLogisticAWBDBViewModel;
    procedure SetAWB(const Value: ILogisticAWB);
    { Private declarations }
  protected
    procedure AssignFields;
  protected
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
    function GetLogisticAWBViewModel: IJanuaLogisticAWBDBViewModel;
    procedure SetLogisticAWBViewModel(const Value: IJanuaLogisticAWBDBViewModel);
  public
    { Public declarations }
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
    property LogisticAWBViewModel: IJanuaLogisticAWBDBViewModel read GetLogisticAWBViewModel
      write SetLogisticAWBViewModel;
    property AWB: ILogisticAWB read FAWB write SetAWB;
  end;

var
  dlgVCLLogisticAirWayBill: TdlgVCLLogisticAirWayBill;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}
{ TfrmAirWayBill }

procedure TdlgVCLLogisticAirWayBill.AssignFields;
begin
  edField1c_AWBNumber.Text := FAWB.Field1c.AsString;
  FAWB.Field1c.Bind('AsString', edField1c_AWBNumber, 'Text', True);
  edField1a.Text := FAWB.Field1a.AsString;
  FAWB.Field1a.Bind('AsString', edField1a, 'Text', True);
  // Airpor Code and Description ...................................
  edField1b_AirportCode.Text := FAWB.Field1b.AsString;
  FAWB.Field1b.Bind('AsString', edField1b_AirportCode, 'Text', True);

  // Airport Routing .........................................................................................
  edField8_FromAirportCode.Text := FAWB.Field8.AsString;
  FAWB.Field8.Bind('AsString', edField8_FromAirportCode, 'Text', True);
  // non collego tra loro i due campi in quanto il campo 1b ed 8 possono differire
  // edField1b_AirportCode.Bind('AsString', edField8_FromAirportCode, 'Text', True);
  edField8b_ByFirstCarrier.Text := FAWB.Field8b.AsString;
  FAWB.Field8b.Bind('AsString', edField8b_ByFirstCarrier, 'Text', True);
  edField8a_DestinationCode.Text := FAWB.Field8a.AsString;
  FAWB.Field8a.Bind('AsString', edField8a_DestinationCode, 'Text', True);
  // To 1
  edField8c.Text := FAWB.Field8c.AsString;
  FAWB.Field8c.Bind('AsString', edField8c, 'Text', True);
  edField8d_By1.Text := FAWB.Field8d.AsString;
  FAWB.Field8d.Bind('AsString', edField8d_By1, 'Text', True);
  // To 2
  edField8c1.Text := FAWB.Field8c1.AsString;
  FAWB.Field8c1.Bind('AsString', edField8c1, 'Text', True);
  edField8d1.Text := FAWB.Field8d1.AsString;
  FAWB.Field8d1.Bind('AsString', edField8d1, 'Text', True);

  // Shipper's Code and Address
  lbShipperID.Caption := FAWB.ShipperId.AsString;
  FAWB.ShipperId.Bind('AsString', lbShipperID, 'Caption', False);
  edField2_ShipperName.Text := FAWB.Field2.AsString;
  FAWB.Field2.Bind('AsString', edField2_ShipperName, 'Text', True);
  edField21_ShipperAddress.Text := FAWB.Field21.AsString;
  FAWB.Field21.Bind('AsString', edField21_ShipperAddress, 'Text', True);
  edField22_ShipperVATCode.Text := FAWB.Field22.AsString;
  FAWB.Field22.Bind('AsString', edField22_ShipperVATCode, 'Text', True);
  edField23_ShipperTownPostalCode.Text := FAWB.Field23.AsString;
  FAWB.Field23.Bind('AsString', edField23_ShipperTownPostalCode, 'Text', True);

  // Air Company and Issuer
  edField5_AirCode.Text := FAWB.Field5.AsString;
  FAWB.Field5.Bind('AsString', edField5_AirCode, 'Text', True);

  // Master Notes and handling Informations Masternotes
  edHanlingInformations.Text := FAWB.Masternotes.AsString;
  FAWB.Masternotes.Bind('AsString', edHanlingInformations, 'Text', True);

  // Consignees
  edField3.Text := FAWB.Field3.AsString;
  FAWB.Field3.Bind('AsString', edField3, 'Text', True);
  edField31.Text := FAWB.Field31.AsString;
  FAWB.Field31.Bind('AsString', edField31, 'Text', True);
  edField32.Text := FAWB.Field32.AsString;
  FAWB.Field32.Bind('AsString', edField32, 'Text', True);
  edField33.Text := FAWB.Field33.AsString;
  FAWB.Field33.Bind('AsString', edField33, 'Text', True);

  // IATA Agent's Name and Code
  edField4a_IssuingCarrierName.Text := FAWB.Field4a.AsString;
  FAWB.Field4a.Bind('AsString', edField4a_IssuingCarrierName, 'Text', True);
  edField4c2.Text := FAWB.Field4c2.AsString;
  FAWB.Field4c2.Bind('AsString', edField4c2, 'Text', True);
  edField4b_AgentsIATACode.Text := FAWB.Field4b.AsString;
  FAWB.Field4b.Bind('AsString', edField4b_AgentsIATACode, 'Text', True);

  // Accouting Informations
  edField7.Text := FAWB.Field7.AsString;
  FAWB.Field7.Bind('AsString', edField7, 'Text', False);

  // Other Surchages (Amount and Codes) ...............................

  // Footer ............................................................
  edField28a.Value := FAWB.field28a.AsFloat;
  FAWB.field28a.Bind('AsFloat', edField28a, 'Value', False);
  edField28b.Value := FAWB.field28b.AsFloat;
  FAWB.field28b.Bind('AsFloat', edField28b, 'Value', False);

  edField29a.Value := FAWB.field29a.AsFloat;
  FAWB.field29a.Bind('AsFloat', edField29a, 'Value', False);
  edField29b.Value := FAWB.field29b.AsFloat;
  FAWB.field29b.Bind('AsFloat', edField29b, 'Value', False);

  edField30a.Value := FAWB.field30a.AsFloat;
  FAWB.field30a.Bind('AsFloat', edField30a, 'Value', False);
  edField30b.Value := FAWB.field30b.AsFloat;
  FAWB.field30b.Bind('AsFloat', edField30b, 'Value', False);

  edField31a.Value := FAWB.field31a.AsFloat;
  FAWB.field31a.Bind('AsFloat', edField31a, 'Value', False);
  edField31b.Value := FAWB.field31b.AsFloat;
  FAWB.field31b.Bind('AsFloat', edField31b, 'Value', False);

  edField32a.Value := FAWB.field32a.AsFloat;
  FAWB.field32a.Bind('AsFloat', edField32a, 'Value', False);
  edField32b.Value := FAWB.field32b.AsFloat;
  FAWB.field32b.Bind('AsFloat', edField32b, 'Value', False);

  edField33a.Value := FAWB.field33a.AsFloat;
  FAWB.field33a.Bind('AsFloat', edField33a, 'Value', False);
  edField33b.Value := FAWB.field33b.AsFloat;
  FAWB.field33b.Bind('AsFloat', edField33b, 'Value', False);
end;

function TdlgVCLLogisticAirWayBill.GetLogisticAWBViewModel: IJanuaLogisticAWBDBViewModel;
begin
  Result := FAWBViewModel;
end;

function TdlgVCLLogisticAirWayBill.GetViewModel: IJanuaViewModel;
begin
  Result := FAWBViewModel as IJanuaViewModel
end;

procedure TdlgVCLLogisticAirWayBill.SetAWB(const Value: ILogisticAWB);
begin
  if FAWB <> Value then
  begin
    FAWB := Value;
    if Assigned(FAWB) then
      AssignFields;
  end;

end;

procedure TdlgVCLLogisticAirWayBill.SetLogisticAWBViewModel(const Value: IJanuaLogisticAWBDBViewModel);
begin
  FAWBViewModel := Value;
  if Assigned(FAWBViewModel) then
    SetAWB(FAWBViewModel.AWBRecord);
end;

procedure TdlgVCLLogisticAirWayBill.SetViewModel(const Value: IJanuaViewModel);
var
  lViewModel: IJanuaLogisticAWBDBViewModel;
begin
  try
    if JSupports('IJanuaLogisticAWBDBViewModel', Value, IJanuaLogisticAWBDBViewModel, lViewModel) then
      SetLogisticAWBViewModel(lViewModel);
  except
    on e: exception do
      RaiseException('SetViewModel', e, self);
  end;
end;

end.
