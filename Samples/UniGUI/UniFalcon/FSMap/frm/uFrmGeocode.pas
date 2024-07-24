unit uFrmGeocode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniBitBtn, uniEdit, uniLabel,
  uniGUIBaseClasses, uniPanel, uniPageControl, uniHTMLFrame, UniFSMap,
  uniMemo, UniFSButton;

type
  TfrmGeocode = class(TUniFrame)
    pnlSearch: TUniPanel;
    lbl1: TUniLabel;
    edtSearch: TUniEdit;
    btnSearch: TUniFSButton;
    pgcMaster: TUniPageControl;
    tabMap: TUniTabSheet;
    tabAdress: TUniTabSheet;
    map: TUniFSMap;
    tabJson: TUniTabSheet;
    lbl2: TUniLabel;
    lblStreetNumber: TUniLabel;
    lbl4: TUniLabel;
    lbl5: TUniLabel;
    lbl6: TUniLabel;
    lbl7: TUniLabel;
    lbl8: TUniLabel;
    lbl9: TUniLabel;
    lbl10: TUniLabel;
    lbl11: TUniLabel;
    lbl12: TUniLabel;
    lbl13: TUniLabel;
    lblRoute: TUniLabel;
    lblLocality: TUniLabel;
    lblAdministrativeLvl1: TUniLabel;
    lblAdministrativeLvl2: TUniLabel;
    lblSublocality1: TUniLabel;
    lblCountry: TUniLabel;
    lblPostalCode: TUniLabel;
    lblLat: TUniLabel;
    lblLng: TUniLabel;
    lblPlaceId: TUniLabel;
    lbl3: TUniLabel;
    lblFormattedAddress: TUniLabel;
    memSyn: TUniMemo;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  ServerModule;

{$R *.dfm}

procedure TfrmGeocode.btnSearchClick(Sender: TObject);
var
  Geocode: TGeocode;
begin
  Geocode := map.GetGeocode(edtSearch.Text);
  try
    lblStreetNumber.Caption := Geocode.StreetNumber;
    lblRoute.Caption := Geocode.Route;
    lblLocality.Caption := Geocode.Locality;
    lblAdministrativeLvl2.Caption := Geocode.AdministrativeLvl2;
    lblAdministrativeLvl1.Caption := Geocode.AdministrativeLvl1;
    lblSublocality1.Caption := Geocode.SublocalityLvl1;
    lblCountry.Caption := Geocode.Country;
    lblPostalCode.Caption := Geocode.PostalCode;
    lblLat.Caption := Geocode.Lat;
    lblLng.Caption := Geocode.Lng;
    lblPlaceId.Caption := Geocode.PlaceId;
    lblFormattedAddress.Caption := Geocode.FormattedAddress;

    memSyn.Lines.Add(Geocode.Json);
    map.SetCenter(Geocode.Lat, Geocode.Lng);
    map.SetZoom(16);
  finally
    FreeAndNil(Geocode);
  end;
end;

procedure TfrmGeocode.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;

  map.APIKeys := UniServerModule.APIKeys;
  map.InitMap;
end;

initialization
  RegisterClass(TfrmGeocode);

end.
