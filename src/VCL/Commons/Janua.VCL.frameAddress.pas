unit Janua.VCL.frameAddress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ComCtrls, VCL.StdCtrls, UWebGMapsCommon, UWebGMaps,
  // Januaproject
  Janua.Bindings.Intf, Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf,
  Janua.Orm.Intf, Janua.Core.Classes, Janua.VCL.Geocoding, Janua.VCL.Interposers, uJanuaVCLFrame, JvExControls,
  JvDBLookup, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Janua.VCL.frameCountrySearch, Janua.Core.Commons;

type
  TframeVCLAddress = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    grpAddress: TGroupBox;
    pgAddress: TPageControl;
    tsAddress: TTabSheet;
    tsMapLocation: TTabSheet;
    edTown: TEdit;
    lbStateProvince: TLabel;
    edStateProvince: TEdit;
    lbTown: TLabel;
    lbPostalCode: TLabel;
    edPostalCode: TEdit;
    lbNumber: TLabel;
    edtAddressNumber: TEdit;
    edtAddress: TEdit;
    lbStreetAddress: TLabel;
    edGoogleSearchAddress: TEdit;
    edFullAddressGoogleMaps: TEdit;
    gmpGeoCoding: TWebGMaps;
    JanuaVCLGeoMaps1: TJanuaVCLGeoMaps;
    lbSearchAddress: TLabel;
    lbLat: TLabel;
    lbFieldLatitude: TLabel;
    lbLongitude: TLabel;
    lbFieldLongitude: TLabel;
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
    lblPhoneNumber: TLabel;
    edtPhoneNumber: TEdit;
    frameVCLCountrySearch: TframeVCLCountrySearch;
    procedure edGoogleSearchAddressExit(Sender: TObject);
    procedure tsMapLocationShow(Sender: TObject);
  private
    [weak]
    FAddressField: IJanuaField;
    [weak]
    FPostalField: IJanuaField;
    [weak]
    FTownField: IJanuaField;
    [weak]
    FAddressNumberField: IJanuaField;
    [weak]
    FLongField: IJanuaField;
    [weak]
    FLatField: IJanuaField;
    [weak]
    FFullAddressField: IJanuaField;
    FStateProvinceField: IJanuaField;
    procedure SetAddressField(const Value: IJanuaField);
    procedure SetPostalField(const Value: IJanuaField);
    procedure SetAddressNumberField(const Value: IJanuaField);
    procedure SetTownField(const Value: IJanuaField);
    procedure SetFullAddressField(const Value: IJanuaField);
    procedure SetLatField(const Value: IJanuaField);
    procedure SetLongField(const Value: IJanuaField);
    procedure SetStateProvinceField(const Value: IJanuaField);
    { Private declarations }
  public
    { Public declarations }
    property AddressField: IJanuaField read FAddressField write SetAddressField;
    property PostalField: IJanuaField read FPostalField write SetPostalField;
    property AddressNumberField: IJanuaField read FAddressNumberField write SetAddressNumberField;
    property TownField: IJanuaField read FTownField write SetTownField;
    property FullAddressField: IJanuaField read FFullAddressField write SetFullAddressField;
    property LatField: IJanuaField read FLatField write SetLatField;
    property LongField: IJanuaField read FLongField write SetLongField;
    property StateProvinceField: IJanuaField read FStateProvinceField write SetStateProvinceField;
  end;

implementation

{$R *.dfm}

procedure TframeVCLAddress.edGoogleSearchAddressExit(Sender: TObject);
var
  aCoordinates: TJanuaRecordCoordinates;
begin
  aCoordinates := JanuaVCLGeoMaps1.GetGeoCoding(edGoogleSearchAddress.Text);

  if Assigned(FLatField) then
    FLatField.AsFloat := aCoordinates.Latitude
  else
    lbFieldLatitude.Caption := aCoordinates.Latitude.ToString;

  if Assigned(FLongField) then
    FLongField.AsFloat := aCoordinates.Longitude
  else
    lbFieldLongitude.Caption := aCoordinates.Longitude.ToString;

end;


procedure TframeVCLAddress.SetAddressField(const Value: IJanuaField);
begin
  { TODO : Connect MVVM Record Field to Labels }
  { // edCompanyName
    // edCompanyAddress
    FJanuaAnagraph.AnAddress.Bind('Title', lbStreetAddress, 'Caption');
    FJanuaAnagraph.AnAddress.Bind('AsString', edCompanyAddress, 'Text');
    // edAddressNumber
    FJanuaAnagraph.AnAddressNumber.Bind('Title', lbNumber, 'Caption');
    FJanuaAnagraph.AnAddressNumber.Bind('AsString', edAddressNumber, 'Text');
    // edPostalCode
    FJanuaAnagraph.AnPostalCode.Bind('Title', lbNumber, 'Caption');
    FJanuaAnagraph.AnPostalCode.Bind('AsString', edPostalCode, 'Text');
    // edTown
    FJanuaAnagraph.AnTown.Bind('Title', lbTown, 'Caption');
    FJanuaAnagraph.AnTown.Bind('AsString', edTown, 'Text');
    // edStateProvince
    FJanuaAnagraph.AnStateProvince.Bind('Title', lbStateProvince, 'Caption');
    FJanuaAnagraph.AnStateProvince.Bind('AsString', edStateProvince, 'Text');

    // edStateProvince
    FJanuaAnagraph.AnStateProvince.Bind('Title', lbStateProvince, 'Caption');
    FJanuaAnagraph.AnStateProvince.Bind('AsString', edStateProvince, 'Text'); }

  FAddressField := Value;
  if Assigned(FAddressField) then
  begin
    edtAddress.Text := FAddressField.AsString;
    FAddressField.Bind('AsString', edtAddress, 'Text');
  end;
end;

procedure TframeVCLAddress.SetAddressNumberField(const Value: IJanuaField);
begin
  FAddressNumberField := Value;
  if Assigned(FAddressNumberField) then
  begin
    edtAddressNumber.Text := FAddressNumberField.AsString;
    FAddressNumberField.Bind('AsString', edtAddressNumber, 'Text');
  end;
end;


procedure TframeVCLAddress.SetFullAddressField(const Value: IJanuaField);
begin
  FFullAddressField := Value;
  if Assigned(FFullAddressField) then
  begin
    edGoogleSearchAddress.Text := FFullAddressField.AsString;
    FFullAddressField.Bind('AsString', edGoogleSearchAddress, 'Text');
  end;
end;

procedure TframeVCLAddress.SetLatField(const Value: IJanuaField);
begin
  FLatField := Value;
  if Assigned(FLatField) then
  begin
    lbLat.Caption := FLatField.AsString;
    FLatField.Bind('AsString', lbLat, 'Caption');
  end;
end;

procedure TframeVCLAddress.SetLongField(const Value: IJanuaField);
begin
  FLongField := Value;
  if Assigned(FLongField) then
  begin
    lbFieldLongitude.Caption := FLongField.AsString;
    FLongField.Bind('AsString', lbFieldLongitude, 'Caption');
  end;
end;

procedure TframeVCLAddress.SetPostalField(const Value: IJanuaField);
begin
  FPostalField := Value;
  if Assigned(FPostalField) then
  begin
    edPostalCode.Text := FPostalField.AsString;
    FPostalField.Bind('AsString', edPostalCode, 'Text');
  end;
end;

procedure TframeVCLAddress.SetStateProvinceField(const Value: IJanuaField);
begin
  FStateProvinceField := Value;
  if Assigned(FStateProvinceField) then
  begin
    edStateProvince.Text := FStateProvinceField.AsString;
    FStateProvinceField.Bind('AsString', edStateProvince, 'Text');
  end;
end;

procedure TframeVCLAddress.SetTownField(const Value: IJanuaField);
begin
  FTownField := Value;
  if Assigned(FTownField) then
  begin
    edTown.Text := FTownField.AsString;
    FTownField.Bind('AsString', edTown, 'Text');
  end;
end;

procedure TframeVCLAddress.tsMapLocationShow(Sender: TObject);
var
  aCoordinates: TJanuaRecordCoordinates;
  lName: string;
begin
  aCoordinates := JanuaVCLGeoMaps1.GetGeoCoding(edGoogleSearchAddress.Text);

  if Assigned(FullAddressField) then
    lName := self.FullAddressField.AsString
  else
    lName := edGoogleSearchAddress.Text;

  edFullAddressGoogleMaps.Text := edGoogleSearchAddress.Text;

  if gmpGeoCoding.Launch then
  begin
    gmpGeoCoding.Markers.Clear;
    gmpGeoCoding.MapOptions.DefaultLatitude := aCoordinates.Latitude;
    gmpGeoCoding.MapOptions.DefaultLongitude := aCoordinates.Longitude;
    gmpGeoCoding.Markers.Add(aCoordinates.Latitude, aCoordinates.Longitude, lName, '', false, true, false,
      false, true, 0);
    gmpGeoCoding.MapPanTo(aCoordinates.Latitude, aCoordinates.Longitude);

  end;
end;

end.
