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
    UniContainerPanel01: TUniContainerPanel;
    lbProfileCompanyName: TUniLabel;
    UniContainerPanel02: TUniContainerPanel;
    lbProfileAddress: TUniLabel;
    UniContainerPanel3: TUniContainerPanel;
    edtProfileAddress: TUniEdit;
    btnSearch: TUniFSButton;
    UniContainerPanel04: TUniContainerPanel;
    UniContainerPanel5: TUniContainerPanel;
    lbAddressCode: TUniLabel;
    lbProvince: TUniLabel;
    lbTown: TUniLabel;
    UniContainerPanel6: TUniContainerPanel;
    edtAddressCode: TUniEdit;
    edtStateProvinceCode: TUniEdit;
    edtTown: TUniEdit;
    UniContainerPanel09: TUniContainerPanel;
    lbEmail: TUniLabel;
    edtEMail: TUniEdit;
    UniContainerPanel10: TUniContainerPanel;
    UniContainerPanel11: TUniContainerPanel;
    edtAddressNumber: TUniEdit;
    edAddressPlace: TUniEdit;
    UniContainerPanel12: TUniContainerPanel;
    lbAddressNumber: TUniLabel;
    lbAddressPlace: TUniLabel;
    UniContainerPanel13: TUniContainerPanel;
    lbLatLegend: TUniLabel;
    lbLongitude: TUniLabel;
    txtLatitude: TUniLabel;
    txtLongitude: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    edSDINumber: TUniEdit;
    edtVATCode: TUniEdit;
    UniContainerPanel4: TUniContainerPanel;
    lbIDNumber: TUniLabel;
    lbEuVatCode: TUniLabel;
    UniContainerPanel7: TUniContainerPanel;
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
