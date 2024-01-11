unit unitTestJanuaVCLComponents;

interface

uses
  DUnitX.TestFramework,
  // tms
  UWebGMapsTimeZone, UWebGMapsReverseGeocoding, UWebGMapsCommon, UWebGMapsGeocoding, UWebGMapsDialogForm,
  // Janua
  Janua.VCL.Geocoding, Janua.Core.Types, Janua.Core.Classes;

type

  [TestFixture]
  TVCLComponentsTest = class(TObject)
  private
    JanuaVCLGeoMaps: TJanuaVCLGeoMaps;
    testCoordinates: TJanuaRecordCoordinates;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    //
    [TestCase('A', 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c')]
    procedure ApiKey(aApiKey: string);
    // Test with TestCase Attribute to supply parameters.
    //
    [TestCase('A', 'Via Cabruna, 43, 16166, Genova, Italia')]
    procedure GeoCoding(const aAddress: string);

    // testCoordinates (44,3551787, 9,2166521, '')
    [TestCase('A', '44.3551787, 9.2166521')]
    procedure ReverseGeoCoding(Lat, Lon: Double);
    // Test with TestCase Attribute to supply parameters.
  end;

implementation

procedure TVCLComponentsTest.Setup;
begin
  JanuaVCLGeoMaps := TJanuaVCLGeoMaps.Create(nil);
  self.JanuaVCLGeoMaps.ApiKey := 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
end;

procedure TVCLComponentsTest.TearDown;
begin
  JanuaVCLGeoMaps.Free;
end;

procedure TVCLComponentsTest.ApiKey(aApiKey: string);
begin
  JanuaVCLGeoMaps.ApiKey := aApiKey;
  Assert.Pass();
end;

procedure TVCLComponentsTest.GeoCoding(const aAddress: string);
begin
  testCoordinates := JanuaVCLGeoMaps.getGeoCoding(aAddress);
  Assert.IsTrue(testCoordinates.Latitude > 0);
  Assert.IsTrue(testCoordinates.Longitude > 0);
end;

procedure TVCLComponentsTest.ReverseGeoCoding(Lat, Lon: Double);
var
  temp: string;
  aCoordinates: TJanuaRecordCoordinates;
begin
  aCoordinates.Latitude := Lat;
  aCoordinates.Longitude := Lon;
  temp := JanuaVCLGeoMaps.ReverseGeoCoding(aCoordinates);
  Assert.IsTrue(temp <> '');
end;

initialization

TDUnitX.RegisterTestFixture(TVCLComponentsTest);

end.
