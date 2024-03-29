unit Janua.Anagraph.UniGUI.frameAccountingInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, uniGUIBaseClasses, uniLabel,
  // Januaproject
  Janua.UniGUI.Interposers, Janua.Core.Classes, Janua.Core.Types, Janua.Anagraph.Types,
  JOrm.Anagraph.Intf, uniButton, uniBitBtn, UniFSButton, uniPanel, Janua.Core.Commons,
  Janua.UniGUI.Controller, Janua.CarService.UniGUI.SimpleAnagraphController, uniImageList;

type
  TframeUniGUIAnagAccountingInfo = class(TUniFrame {TAccountingInfoController})
    lbVATCode: TUniLabel;
    cnt00Name: TUniContainerPanel;
    lbProfileCompanyName: TUniLabel;
    cnt01FullAddress: TUniContainerPanel;
    lbProfileAddress: TUniLabel;
    cntFullAddress: TUniContainerPanel;
    edtProfileAddress: TUniEdit;
    btnSearch: TUniFSButton;
    cnt06AddressTown: TUniContainerPanel;
    cntAdddressTownLabels: TUniContainerPanel;
    lbAddressCode: TUniLabel;
    lbProvince: TUniLabel;
    lbTown: TUniLabel;
    cntAddressTown: TUniContainerPanel;
    edtAddressCode: TUniEdit;
    edtStateProvinceCode: TUniEdit;
    edtTown: TUniEdit;
    cnt07Email: TUniContainerPanel;
    lbEmail: TUniLabel;
    edtEMail: TUniEdit;
    cnt05Address: TUniContainerPanel;
    cntAddress: TUniContainerPanel;
    edtAddressNumber: TUniEdit;
    edAddressPlace: TUniEdit;
    cntAddressLabels: TUniContainerPanel;
    lbAddressNumber: TUniLabel;
    lbAddressPlace: TUniLabel;
    cnt03Coordinates: TUniContainerPanel;
    lbLatLegend: TUniLabel;
    lbLongitude: TUniLabel;
    txtLatitude: TUniLabel;
    txtLongitude: TUniLabel;
    cnt08VatCode: TUniContainerPanel;
    cntVatCode: TUniContainerPanel;
    edSDINumber: TUniEdit;
    edtVATCode: TUniEdit;
    cntVatCodeLabels: TUniContainerPanel;
    lbIDNumber: TUniLabel;
    lbEuVatCode: TUniLabel;
    cnt09FiscalCode: TUniContainerPanel;
    lbFiscalCode: TUniLabel;
    edtFiscalCode: TUniEdit;
    UniContainerPanel8: TUniContainerPanel;
    edtProfileCompanyName: TUniEdit;
    btnCopyAddress: TUniFSButton;
    AccountingInfoController1: TAccountingInfoController;
    UniNativeImageList1: TUniNativeImageList;
  private
    FAnagraph: IAnagraphView;
    FAccountAnagraph: IAnagraphView;
    procedure SetAnagraph(const Value: IAnagraphView);
    procedure SetAccountAnagraph(const Value: IAnagraphView);
  public
    procedure NewAnagraph;
    procedure SaveAnagraph;
    procedure RefreshAnagraph;
  public
    { Public declarations }
    property Anagraph: IAnagraphView read FAnagraph write SetAnagraph;
    property AccountAnagraph: IAnagraphView read FAccountAnagraph write SetAccountAnagraph;
  end;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
{ TframeUniGUIAnagAccountingInfo }

procedure TframeUniGUIAnagAccountingInfo.NewAnagraph;
begin
  FAccountAnagraph.Clear;
  FAccountAnagraph.AnagraphID.AsInteger := 0;
  FAccountAnagraph.DbSchemaId.AsInteger := TJanuaApplication.DbSchemaId;
end;

procedure TframeUniGUIAnagAccountingInfo.RefreshAnagraph;
begin
  { Anagraph.AnName.AsString := edtFirstName.Text; }
  edtProfileCompanyName.Text := FAccountAnagraph.AnLastName.AsString;
  edtProfileAddress.Text := FAccountAnagraph.AnAddress.AsString;
  edtTown.Text := FAccountAnagraph.AnTown.AsString;
  edtAddressNumber.Text := FAccountAnagraph.AnAddressNumber.AsString;
  edtAddressCode.Text := FAccountAnagraph.AnPostalCode.AsString;

  { edtEMail.Text := Anagraph.AnEmail.AsString; }
end;

procedure TframeUniGUIAnagAccountingInfo.SaveAnagraph;
begin
  { Anagraph.AnName.AsString := edtFirstName.Text; }
  FAccountAnagraph.AnLastName.AsString := edtProfileCompanyName.Text;
  FAccountAnagraph.AnFullAddress.AsString := edtProfileAddress.Text;
  FAccountAnagraph.AnAddress.AsString := edtProfileAddress.Text;
  FAccountAnagraph.AnTown.AsString := edtTown.Text;
  FAccountAnagraph.AnAddressNumber.AsString := edtAddressNumber.Text;
  FAccountAnagraph.AnPostalCode.AsString := edtAddressCode.Text;
  FAccountAnagraph.AnEmail.AsString := edtEMail.Text;
end;

procedure TframeUniGUIAnagAccountingInfo.SetAccountAnagraph(const Value: IAnagraphView);
begin
  FAccountAnagraph := Value;
end;

procedure TframeUniGUIAnagAccountingInfo.SetAnagraph(const Value: IAnagraphView);
begin
  FAnagraph := Value;
end;

end.
