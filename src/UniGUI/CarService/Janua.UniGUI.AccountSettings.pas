unit Janua.UniGUI.AccountSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniPanel, uniGUIBaseClasses, uniImageList, uniEdit, uniLabel, uniButton,
  uniBitBtn, UniFSButton, uniGroupBox, uniPageControl, Janua.Core.Commons, Janua.UniGUI.Controller,
  Janua.CarService.UniGUI.SimpleAnagraphController;

type
  TUniForm4 = class(TUniForm)
    AccountingInfoController: TAccountingInfoController;
    pgcSettings: TUniPageControl;
    pgAnagraphSettings: TUniTabSheet;
    cntAnagraphSettings: TUniContainerPanel;
    grpAnagraphData: TUniGroupBox;
    UniContainerPanel2: TUniContainerPanel;
    btnSaveAnagraph: TUniFSButton;
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
    pgUserNamePassword: TUniTabSheet;
    grpDBUser: TUniGroupBox;
    UniContainerPanel4: TUniContainerPanel;
    btnUpdateDBUser: TUniFSButton;
    ledFirstName: TUniEdit;
    lbProfileFirstName: TUniLabel;
    lbLastName: TUniLabel;
    ledLastName: TUniEdit;
    lbProfilePasswordRepeat: TUniLabel;
    ledProfilePasswordRepeat: TUniEdit;
    lbProfilePassword: TUniLabel;
    ledProfilePassword: TUniEdit;
    lbProfileEmail: TUniLabel;
    ledProfileEmail: TUniEdit;
    tbAddresses: TUniTabSheet;
    tabAccountingInfo: TUniTabSheet;
    grpAccoutingInformations: TUniGroupBox;
    UniContainerPanel3: TUniContainerPanel;
    UniFSButton1: TUniFSButton;
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
    SimpleAnagraphController: TSimpleAnagraphController;
    UniNativeImageList1: TUniNativeImageList;
    pnlBottom: TUniPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIApplication;

{$R *.dfm}


end.
