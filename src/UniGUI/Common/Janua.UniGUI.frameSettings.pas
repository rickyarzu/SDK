unit Janua.UniGUI.frameSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPageControl, uniPanel,
  uniCheckBox, uniEdit, uniLabel, uniButton, uniBitBtn, UniFSButton, uniGroupBox,
  // Janua.VCL.Anagraph
  Janua.UniGUI.Interposers, Janua.Core.Classes, Janua.Core.Types, Janua.Anagraph.Types,
{ Janua.Anagraph.UniGUI.frameSimpleAnagraph, }
{ Janua.Anagraph.UniGUI.frameAccountingInfo, }
{ Janua.UniGUI.frameDBUser; }

  JOrm.Anagraph.Intf, Janua.Core.Commons, Janua.UniGUI.Controller,
  Janua.CarService.UniGUI.SimpleAnagraphController, uniImageList;



type
  TframeUniGUIAccountSettings = class(TUniFrame)
    // Replaced by Controllers
    { frameUniGUISimpleAnagraph: TframeUniGUISimpleAnagraph;  -> SimpleAnagraphController}
    { frameUniGUIAnagAccountingInfo: TframeUniGUIAnagAccountingInfo; -> TAccountingInfoController }
    { frameUniGUIDBUser1: TframeUniGUIDBUser; }
    pgcSettings: TUniPageControl;
    pgAnagraphSettings: TUniTabSheet;
    pgUserNamePassword: TUniTabSheet;
    cntAnagraphSettings: TUniContainerPanel;
    grpAnagraphData: TUniGroupBox;
    grpAccoutingInformations: TUniGroupBox;
    UniContainerPanel2: TUniContainerPanel;
    btnSaveAnagraph: TUniFSButton;
    UniContainerPanel3: TUniContainerPanel;
    UniFSButton1: TUniFSButton;
    grpDBUser: TUniGroupBox;
    UniContainerPanel4: TUniContainerPanel;
    btnUpdateDBUser: TUniFSButton;
    tbAddresses: TUniTabSheet;
    cntSimpleAnagraph: TUniContainerPanel;
    cntTop: TUniContainerPanel;
    UniContainerPanel01: TUniContainerPanel;
    lbProfileCompanyName: TUniLabel;
    edtProfileCompanyName: TUniEdit;
    UniContainerPanel02: TUniContainerPanel;
    lbProfileAddress: TUniLabel;
    UniContainerPanel5: TUniContainerPanel;
    edtProfileAddress: TUniEdit;
    btnSearch: TUniFSButton;
    UniContainerPanel03: TUniContainerPanel;
    lbLatLegend: TUniLabel;
    lbLongitude: TUniLabel;
    txtLatitude: TUniLabel;
    txtLongitude: TUniLabel;
    UniContainerPanel05: TUniContainerPanel;
    UniContainerPanel11: TUniContainerPanel;
    edtAddressNumber: TUniEdit;
    edAddressPlace: TUniEdit;
    UniContainerPanel12: TUniContainerPanel;
    lbAddressNumber: TUniLabel;
    lbAddressPlace: TUniLabel;
    cntBottom: TUniContainerPanel;
    UniContainerPanel09: TUniContainerPanel;
    lbEmail: TUniLabel;
    edtEMail: TUniEdit;
    UniContainerPanel08: TUniContainerPanel;
    lbCellularPhone: TUniLabel;
    edtCellularPhone: TUniEdit;
    UniContainerPanel07: TUniContainerPanel;
    lbPhone: TUniLabel;
    edtPhone: TUniEdit;
    UniContainerPanel06: TUniContainerPanel;
    UniContainerPanel6: TUniContainerPanel;
    lbAddressCode: TUniLabel;
    lbProvince: TUniLabel;
    lbTown: TUniLabel;
    UniContainerPanel7: TUniContainerPanel;
    edtAddressCode: TUniEdit;
    edtStateProvinceCode: TUniEdit;
    edtTown: TUniEdit;
    UniNativeImageList1: TUniNativeImageList;
    SimpleAnagraphController: TSimpleAnagraphController;
    cntAccountSimpleAnagraph: TUniContainerPanel;
    lbVATCode: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniContainerPanel8: TUniContainerPanel;
    UniEdit1: TUniEdit;
    btnCopyAddress: TUniFSButton;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniContainerPanel10: TUniContainerPanel;
    UniEdit2: TUniEdit;
    UniFSButton2: TUniFSButton;
    UniContainerPanel04: TUniContainerPanel;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniContainerPanel14: TUniContainerPanel;
    UniEdit3: TUniEdit;
    UniEdit4: TUniEdit;
    UniEdit5: TUniEdit;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniEdit6: TUniEdit;
    UniContainerPanel16: TUniContainerPanel;
    UniContainerPanel17: TUniContainerPanel;
    UniEdit7: TUniEdit;
    UniEdit8: TUniEdit;
    UniContainerPanel18: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniContainerPanel20: TUniContainerPanel;
    UniContainerPanel21: TUniContainerPanel;
    edSDINumber: TUniEdit;
    edtVATCode: TUniEdit;
    UniContainerPanel22: TUniContainerPanel;
    lbIDNumber: TUniLabel;
    lbEuVatCode: TUniLabel;
    UniContainerPanel23: TUniContainerPanel;
    lbFiscalCode: TUniLabel;
    edtFiscalCode: TUniEdit;
    AccountingInfoController: TAccountingInfoController;
    UniNativeImageList2: TUniNativeImageList;
    procedure btnSaveAccountInfoClick(Sender: TObject);
  private
    FAnagraph: IAnagraphView;
    procedure SetAnagraph(const Value: IAnagraphView);
  public
    procedure NewAnagraph;
    procedure SaveAnagraph;
    procedure RefreshAnagraph;
  public
    { Public declarations }
    property Anagraph: IAnagraphView read FAnagraph write SetAnagraph;
  end;

implementation

uses
  System.Math, System.StrUtils, Janua.Core.Functions, Janua.Application.Framework, uniGUIApplication;

{$R *.dfm}
{ TframeUniGUIAccountSettings }

procedure TframeUniGUIAccountSettings.btnSaveAccountInfoClick(Sender: TObject);
begin
  AccountingInfoController.SaveAnagraph;
end;

procedure TframeUniGUIAccountSettings.NewAnagraph;
begin
  Anagraph.Clear;
  Anagraph.AnagraphID.AsInteger := 0;
  Anagraph.DbSchemaId.AsInteger := TJanuaApplication.DbSchemaId;
end;

procedure TframeUniGUIAccountSettings.RefreshAnagraph;
begin
  AccountingInfoController.Anagraph := FAnagraph;
  SimpleAnagraphController.Anagraph := FAnagraph;
end;

procedure TframeUniGUIAccountSettings.SaveAnagraph;
begin

end;

procedure TframeUniGUIAccountSettings.SetAnagraph(const Value: IAnagraphView);
begin
  FAnagraph := Value;
end;

end.
