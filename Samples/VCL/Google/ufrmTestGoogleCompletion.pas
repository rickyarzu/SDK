unit ufrmTestGoogleCompletion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Janua
  Janua.Cloud.GoogleAPIs, Janua.Core.Entities,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, AdvMemo, advmjson, Vcl.Mask,
  Vcl.ExtCtrls;

type
  TfrmGoogleCloudTest = class(TForm)
    PageControl1: TPageControl;
    tabGoogleCompletion: TTabSheet;
    edtSearchAddress: TEdit;
    btnGoogleCompletion: TButton;
    AdvMemo1: TAdvMemo;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    ListGoogle: TListBox;
    edtAddress: TLabeledEdit;
    edtPostalCode: TLabeledEdit;
    edtTown: TLabeledEdit;
    edtStateProvince: TLabeledEdit;
    edtCountry: TLabeledEdit;
    edtLatitude: TLabeledEdit;
    edtLongitude: TLabeledEdit;
    memJsonDetail: TAdvMemo;
    edtNumber: TLabeledEdit;
    edtRegion: TLabeledEdit;
    edtCountryCode: TLabeledEdit;
    edtProvinceName: TLabeledEdit;
    lbApiKey: TLabel;
    edApiKey: TEdit;
    procedure btnGoogleCompletionClick(Sender: TObject);
    procedure ListGoogleClick(Sender: TObject);
  private
    { Private declarations }
    FPredictions: TGooglePredictions;
    FGooglePlace: TJanuaRecordAddress;
  public
    { Public declarations }
  end;

var
  frmGoogleCloudTest: TfrmGoogleCloudTest;

implementation

{$R *.dfm}

procedure TfrmGoogleCloudTest.btnGoogleCompletionClick(Sender: TObject);
var
  lJsonOut: string;
  I: integer;
begin
  TGooglePlaces.ApiKey := edApiKey.Text;
  FPredictions := TGooglePlaces.PopulateAddressList(edtSearchAddress.Text, 'it', lJsonOut);
  AdvMemo1.Lines.Text := lJsonOut;
  ListGoogle.Clear;
  for I := 0 to Length(FPredictions) - 1 do
    ListGoogle.AddItem(FPredictions[I].Description, nil);
end;

procedure TfrmGoogleCloudTest.ListGoogleClick(Sender: TObject);
var
  lJsonOut: string;
begin
  var
  I := ListGoogle.ItemIndex;
  FGooglePlace := TGooglePlaces.GetPlaceDetails(FPredictions[I].PlaceID, 'it', lJsonOut);
  edtAddress.Text := FGooglePlace.Address;
  edtPostalCode.Text := FGooglePlace.PostalCode;
  edtTown.Text := FGooglePlace.Town;
  edtSearchAddress.Text := FGooglePlace.AddressFull;
  edtStateProvince.Text := FGooglePlace.StateProvince;
  edtCountry.Text := FGooglePlace.CountryName;
  memJsonDetail.Lines.Text := lJsonOut;
  edtStateProvince.Text := FGooglePlace.StateProvince;
  edtProvinceName.Text := FGooglePlace.StateProvinceName;
  edtNumber.Text := FGooglePlace.Number;
  edtRegion.Text := FGooglePlace.Region;
  edtCountry.Text := FGooglePlace.CountryName;
  edtLatitude.Text := FGooglePlace.Latitude.ToString;
  edtLongitude.Text := FGooglePlace.Longitude.ToString;
  edtCountryCode.Text := FGooglePlace.CountryCode;
end;

end.
