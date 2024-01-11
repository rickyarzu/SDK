unit ufrmTestVCLMaps;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Janua.Core.Cloud, Janua.Core.Classes, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, Janua.Core.System, Janua.Vcl.OS, Vcl.ExtCtrls, Shader,
  AdvAppStyler, Vcl.StdCtrls, AdvMemo, advmjson, UWebGMapsCommon, UWebGMaps, AdvGlowButton, UWebGMapsGeocoding,
  UWebGMapsLookupEdit;

type
  TfrmTestVCLMaps = class(TForm)
    JanuaStreetMap: TJanuaStreetMap;
    JanuaGoogleGeoCoding: TJanuaGoogleGeoCoding;
    NetHTTPRequest1: TNetHTTPRequest;
    NetHTTPClient1: TNetHTTPClient;
    JanuaVCLOS1: TJanuaVCLOS;
    JanuaCoreLogger1: TJanuaCoreLogger;
    Shader1: TShader;
    AdvFormStyler1: TAdvFormStyler;
    lbAddressTest: TLabeledEdit;
    AdvMemo1: TAdvMemo;
    lbUrl: TLabel;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    WebGMaps1: TWebGMaps;
    WebGMapsGeocoding1: TWebGMapsGeocoding;
    WebGMapsLookupEdit1: TWebGMapsLookupEdit;
    lbLatitude: TLabel;
    lbLongitude: TLabel;
    procedure WebGMapsLookupEdit1Change(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
  private
    FCoordinates: TJanuaCoordinates;
    { Private declarations }
    procedure InternalOpenMapGeoCoding;
    procedure InternalGoogleGeoCoding;
    procedure SetCoordinates(const Value: TJanuaCoordinates);
  public
    { Public declarations }
    property Coordinates: TJanuaCoordinates read FCoordinates write SetCoordinates;
  end;

var
  frmTestVCLMaps: TfrmTestVCLMaps;

implementation

{$R *.dfm}
{ TfrmTestVCLMaps }

procedure TfrmTestVCLMaps.AdvGlowButton1Click(Sender: TObject);
begin
  self.InternalOpenMapGeoCoding;
end;

procedure TfrmTestVCLMaps.AdvGlowButton2Click(Sender: TObject);
begin
  self.InternalGoogleGeoCoding;
end;

procedure TfrmTestVCLMaps.AdvGlowButton3Click(Sender: TObject);
var
  aCoordinates: TJanuaCoordinates;
begin
  WebGMapsGeocoding1.Address := self.lbAddressTest.Text;
  if WebGMapsGeocoding1.LaunchGeocoding = erOK then
  begin
    aCoordinates.Latitude := WebGMapsGeocoding1.ResultLatitude;
    aCoordinates.Longitude := WebGMapsGeocoding1.ResultLongitude;
  end;

end;

procedure TfrmTestVCLMaps.InternalGoogleGeoCoding;
begin
  try
    // JanuaGoogleGeoCoding.NetHTTPRequest := self.FNetHTTPRequest;
    JanuaGoogleGeoCoding.Address := self.lbAddressTest.Text;
    if JanuaGoogleGeoCoding.GetCoordinates then
    begin
      self.Coordinates := JanuaGoogleGeoCoding.Coordinates;
    end
    else
    begin
      begin
        self.Coordinates.Latitude := 0;
        self.Coordinates.Longitude := 0;
      end;
    end;
  finally
    self.AdvMemo1.Lines.Clear;
    self.AdvMemo1.Lines.AddStrings(self.JanuaGoogleGeoCoding.ResponseText);
    self.lbUrl.Caption := self.JanuaGoogleGeoCoding.Url;
  end;

end;

procedure TfrmTestVCLMaps.InternalOpenMapGeoCoding;
begin
  JanuaStreetMap.Address := self.lbAddressTest.Text;
  if JanuaStreetMap.GetCoordinates then
  begin
    self.Coordinates := JanuaStreetMap.Coordinates;
  end
  else
  begin
    begin
      self.Coordinates.Latitude := 0;
      self.Coordinates.Longitude := 0;
    end;
  end;
end;

procedure TfrmTestVCLMaps.SetCoordinates(const Value: TJanuaCoordinates);
begin
  FCoordinates := Value;
  self.lbLatitude.Caption := self.FCoordinates.Latitude.ToString;
  self.lbLongitude.Caption := self.FCoordinates.Longitude.ToString;
  if WebGMaps1.Launch then
  begin
    self.WebGMaps1.MapPanTo(FCoordinates.Latitude, FCoordinates.Longitude);
    self.WebGMaps1.Markers.Clear;
    self.WebGMaps1.Markers.Add(self.FCoordinates.Latitude, self.FCoordinates.Longitude)
  end;
end;

procedure TfrmTestVCLMaps.WebGMapsLookupEdit1Change(Sender: TObject);
begin
  self.lbAddressTest.Text := self.WebGMapsLookupEdit1.Text;
end;

end.
