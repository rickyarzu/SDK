unit Janua.Anagraph.UniGUI.frameSimpleAnagraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniLabel,
  uniGUIBaseClasses, uniEdit, uniImageList, uniButton, uniBitBtn, UniFSButton, uniPanel,
  // Januaproject
  Janua.UniGUI.Interposers, Janua.Core.Classes, Janua.Core.Types, Janua.Anagraph.Types, JOrm.Anagraph.Intf,
  Janua.UniGUI.dlgSearchGoogleAddress, Janua.Core.Entities, Janua.Core.Commons, Janua.UniGUI.Controller,
  Janua.CarService.UniGUI.SimpleAnagraphController;

type
  TframeUniGUISimpleAnagraph = class(TUniFrame {TSimpleAnagraphController})
    cntSimpleAnagraph: TUniContainerPanel;
    cntTop: TUniContainerPanel;
    UniContainerPanel01: TUniContainerPanel;
    lbProfileCompanyName: TUniLabel;
    edtProfileCompanyName: TUniEdit;
    UniContainerPanel02: TUniContainerPanel;
    lbProfileAddress: TUniLabel;
    UniContainerPanel3: TUniContainerPanel;
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
    UniContainerPanel5: TUniContainerPanel;
    lbAddressCode: TUniLabel;
    lbProvince: TUniLabel;
    lbTown: TUniLabel;
    UniContainerPanel6: TUniContainerPanel;
    edtAddressCode: TUniEdit;
    edtStateProvinceCode: TUniEdit;
    edtTown: TUniEdit;
    UniNativeImageList1: TUniNativeImageList;
    SimpleAnagraphController1: TSimpleAnagraphController;

    procedure btnSearchClick(Sender: TObject);
  private
    FAnagraph: IAnagraphView;
    FAnagraphID: Integer;
    FAddress: IAnAddress;
    FRecordAddress: TJanuaRecordAddress;
    FGoogleSearchDialog: TUniGoogleSearchDialog;
    FOnSaveAddressRecord: TSaveAddressEvent;
    FOnSaveAnagraph: TSaveAnagraphEvent;
    procedure SetAnagraph(const Value: IAnagraphView);
    procedure SetAddress(const Value: IAnAddress);
    procedure SetRecordAddress(const Value: TJanuaRecordAddress);
    procedure SetOnSaveAddressRecord(const Value: TSaveAddressEvent);
    procedure SetOnSaveAnagraph(const Value: TSaveAnagraphEvent);
  public
    procedure NewAnagraph;
    procedure SaveAnagraph;
    procedure RefreshAnagraph;
    procedure NewAddress;
    procedure SaveAddress;
    procedure RefreshAddress;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    constructor CreateWithAddress(AOwner: TComponent; const aAddress: IAnAddress);
    property Anagraph: IAnagraphView read FAnagraph write SetAnagraph;
    property Address: IAnAddress read FAddress write SetAddress;
    property RecordAddress: TJanuaRecordAddress read FRecordAddress write SetRecordAddress;
    property OnSaveAnagraph: TSaveAnagraphEvent read FOnSaveAnagraph write SetOnSaveAnagraph;
    property OnSaveAddressRecord: TSaveAddressEvent read FOnSaveAddressRecord write SetOnSaveAddressRecord;
  end;

implementation

uses
  Janua.Core.Functions, Janua.Application.Framework, uniGUIApplication, System.Math, System.StrUtils;

{$R *.dfm}
{ TframeUniGUISimpleAnagraph }

procedure TframeUniGUISimpleAnagraph.btnSearchClick(Sender: TObject);
begin
  FGoogleSearchDialog.Execute(edtProfileAddress.Text);
end;

constructor TframeUniGUISimpleAnagraph.Create(AOwner: TComponent);
begin
  inherited;
  FGoogleSearchDialog := TUniGoogleSearchDialog.Create(Self);
end;

constructor TframeUniGUISimpleAnagraph.CreateWithAddress(AOwner: TComponent; const aAddress: IAnAddress);
begin
  FAddress := aAddress;
  RefreshAddress;
end;

procedure TframeUniGUISimpleAnagraph.NewAddress;
begin
  FAddress.Clear;
  FAddress.AnagraphId.AsInteger := 0;
  FAddress.Id.AsInteger := 0;
  FAddress.DbSchemaId;
end;

procedure TframeUniGUISimpleAnagraph.NewAnagraph;
begin
  Anagraph.Clear;
  Anagraph.AnagraphId.AsInteger := 0;
  Anagraph.DbSchemaId.AsInteger := TJanuaApplication.DbSchemaId;
end;

procedure TframeUniGUISimpleAnagraph.RefreshAddress;
begin
  edtProfileCompanyName.Text := FAddress.AddressName.AsString;
  edAddressPlace.Text := FAddress.Address.AsString;
  edtProfileAddress.Text := FAddress.FullAddress.AsString;
  edtTown.Text := FAddress.TownName.AsString;
  edtAddressNumber.Text := FAddress.AddressNumber.AsString;
  edtAddressCode.Text := FAddress.PostalCode.AsString;
  edtCellularPhone.Text := FAddress.Phone.AsString;
  edtEMail.Text := FAddress.Email.AsString;
  edtStateProvinceCode.Text := FAddress.StateProvince.AsString;
  txtLatitude.Text := FloatToStrDotted(FAddress.Latitude.AsFloat);
  txtLongitude.Text := FloatToStrDotted(FAddress.Longitude.AsFloat);
end;

procedure TframeUniGUISimpleAnagraph.RefreshAnagraph;
begin
  { Anagraph.AnName.AsString := edtFirstName.Text; }
  edtProfileCompanyName.Text := Anagraph.AnLastName.AsString;
  edtProfileAddress.Text := Anagraph.AnAddress.AsString;
  edtTown.Text := Anagraph.AnTown.AsString;
  edtAddressNumber.Text := Anagraph.AnAddressNumber.AsString;
  edtAddressCode.Text := Anagraph.AnPostalCode.AsString;
  edtPhone.Text := Anagraph.AnPhone.AsString;
  edtCellularPhone.Text := Anagraph.AnCellular.AsString;
  edtEMail.Text := Anagraph.AnEmail.AsString;
  edtProfileAddress.Text := Anagraph.AnAddress.AsString;
  txtLatitude.Text := FloatToStrDotted(FAddress.Latitude.AsFloat);
  txtLongitude.Text := FloatToStrDotted(FAddress.Longitude.AsFloat);
end;

procedure TframeUniGUISimpleAnagraph.SaveAddress;
begin

end;

procedure TframeUniGUISimpleAnagraph.SaveAnagraph;
begin
  { Anagraph.AnName.AsString := edtFirstName.Text; }
  Anagraph.AnLastName.AsString := edtProfileCompanyName.Text;
  Anagraph.AnFullAddress.AsString := edtProfileAddress.Text;
  Anagraph.AnAddress.AsString := edtProfileAddress.Text;
  Anagraph.AnTown.AsString := edtTown.Text;
  Anagraph.AnAddressNumber.AsString := edtAddressNumber.Text;
  Anagraph.AnPostalCode.AsString := edtAddressCode.Text;
  Anagraph.AnPhone.AsString := edtPhone.Text;
  Anagraph.AnCellular.AsString := edtCellularPhone.Text;
  Anagraph.AnEmail.AsString := edtEMail.Text;
end;

procedure TframeUniGUISimpleAnagraph.SetAddress(const Value: IAnAddress);
begin
  FAddress := Value;
end;

procedure TframeUniGUISimpleAnagraph.SetAnagraph(const Value: IAnagraphView);
begin
  FAnagraph := Value;
  if Assigned(FAnagraph) then
    RefreshAnagraph;
end;

procedure TframeUniGUISimpleAnagraph.SetOnSaveAddressRecord(const Value: TSaveAddressEvent);
begin
  FOnSaveAddressRecord := Value;
end;

procedure TframeUniGUISimpleAnagraph.SetOnSaveAnagraph(const Value: TSaveAnagraphEvent);
begin
  FOnSaveAnagraph := Value;
end;

procedure TframeUniGUISimpleAnagraph.SetRecordAddress(const Value: TJanuaRecordAddress);
begin
  FRecordAddress := Value;
end;

end.
