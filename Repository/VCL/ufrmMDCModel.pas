unit ufrmMDCModel;

interface

uses
  // System ...........................................................................................
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ImgList,
  // Janua .............................................................................................
  Janua.Core.Classes,
  // Database / Devart
  Data.DB,
  // TMS
  AdvAppStyler, UWebGMapsCommon, UWebGMapsGeocoding;

type
  TfrmMDCModel = class(TForm)
    AdvFormStyler1: TAdvFormStyler;
    WebGMapsGeocoding1: TWebGMapsGeocoding;
    btn16standard: TImageList;
    btn16All: TImageList;
    btn16Hot: TImageList;
    btn16Disabled: TImageList;
  private
    FTitle: string;
    FCoordinates: TJanuaCoordinates;
    procedure SetTitle(const Value: string);
    procedure SetCoordinates(const Value: TJanuaCoordinates);
    { Private declarations }
  protected
    procedure DatasetGeoCoding(aDataset: TDataSet);
    function getGeoCoding(const sAddress: string): TJanuaRecordCoordinates;
  public
    { Public declarations }
    property Title: string read FTitle write SetTitle;
    property Coordinates: TJanuaCoordinates read FCoordinates write SetCoordinates;
  end;

var
  frmMDCModel: TfrmMDCModel;

implementation

{$R *.dfm}
{ TfrmMDCModel }

procedure TfrmMDCModel.DatasetGeoCoding(aDataset: TDataSet);
begin
  with aDataset do
  begin
    self.FCoordinates.Coordinates := getGeoCoding(aDataset.FieldByName('an_address').AsWideString + ' ' +
      aDataset.FieldByName('an_postal_code').AsWideString + ' ' + aDataset.FieldByName('an_town')
      .AsWideString);
    aDataset.Edit;
    aDataset.FieldByName('latitude').AsFloat := FCoordinates.Latitude;
    aDataset.FieldByName('longitude').AsFloat := FCoordinates.Longitude;
    aDataset.Post;
  end;
end;

function TfrmMDCModel.getGeoCoding(const sAddress: string): TJanuaRecordCoordinates;
begin
  self.WebGMapsGeocoding1.Address := sAddress;
  self.WebGMapsGeocoding1.LaunchGeocoding;
  Result.Latitude := WebGMapsGeocoding1.ResultLatitude;
  Result.Longitude := WebGMapsGeocoding1.ResultLongitude;
  self.Coordinates.Coordinates := Result;
end;

procedure TfrmMDCModel.SetCoordinates(const Value: TJanuaCoordinates);
begin
  FCoordinates := Value;
end;

procedure TfrmMDCModel.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

end.
