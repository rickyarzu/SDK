unit Janua.VCL.Geocoding;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  // TMS components
  UWebGMapsTimeZone, UWebGMapsReverseGeocoding, UWebGMapsCommon, UWebGMapsGeocoding, UWebGMapsDialogForm,
  // Januaproject
  Janua.Core.Classes, Janua.Core.Types, Janua.Anagraph.Types;

type
  TJanuaVCLGeoMaps = class(TJanuaCoreComponent)
  private
    { Private declarations }
    FWebGMapsDialog: TWebGMapsDialog;
    FWebGMapsGeocoding: TWebGMapsGeocoding;
    FWebGMapsReverseGeocoding: TWebGMapsReverseGeocoding;
    FWebGMapsTimeZone: TWebGMapsTimeZone;
    FCoordinates: TJanuaCoordinates;
    FApiKey: string;
    FGeoCodingResult: TGeoCodingResult;
    FAnagraph: TJanuaAnagraphRecord;
    procedure SetCoordinates(const Value: TJanuaCoordinates);
    procedure SetApiKey(const Value: string);
    function getWebGMapsDialog: TWebGMapsDialog;
    function getWebGMapsReverseGeocoding: TWebGMapsReverseGeocoding;
    function getWebGMapsTimeZone: TWebGMapsTimeZone;
    procedure setWebGMapsDialog(const Value: TWebGMapsDialog);
    procedure setWebGMapsGeocoding(const Value: TWebGMapsGeocoding);
    procedure setWebGMapsReverseGeocoding(const Value: TWebGMapsReverseGeocoding);
    procedure setWebGMapsTimeZone(const Value: TWebGMapsTimeZone);
    function getWebGMapsGeocoding: TWebGMapsGeocoding;
    procedure SetGeoCodingResult(const Value: TGeoCodingResult);
    procedure SetAnagraph(const Value: TJanuaAnagraphRecord);
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: boolean; override;
  protected
    property WebGMapsDialog: TWebGMapsDialog read getWebGMapsDialog write setWebGMapsDialog;
    property WebGMapsGeocoding: TWebGMapsGeocoding read getWebGMapsGeocoding write setWebGMapsGeocoding;
    property WebGMapsReverseGeocoding: TWebGMapsReverseGeocoding read getWebGMapsReverseGeocoding
      write setWebGMapsReverseGeocoding;
    property WebGMapsTimeZone: TWebGMapsTimeZone read getWebGMapsTimeZone write setWebGMapsTimeZone;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure RecordGeoCoding(const aDataset: TDataSet);
    procedure DataSetGeocoding(const aDataset: TDataSet);
    function getGeoCoding(const sAddress: string): TJanuaRecordCoordinates;
    function ReverseGeoCoding: string; overload;
    function ReverseGeoCoding(aCoordinates: TJanuaRecordCoordinates): string; overload;
  public
    property Coordinates: TJanuaCoordinates read FCoordinates write SetCoordinates;
    property GeoCodingResult: TGeoCodingResult read FGeoCodingResult write SetGeoCodingResult;
    property Anagraph: TJanuaAnagraphRecord read FAnagraph write SetAnagraph;
  published
    property ApiKey: string read FApiKey write SetApiKey;
  end;

implementation

{ TJanuaVCLGeoMaps }

procedure TJanuaVCLGeoMaps.SetCoordinates(const Value: TJanuaCoordinates);
begin
  FCoordinates := Value;
end;

procedure TJanuaVCLGeoMaps.SetGeoCodingResult(const Value: TGeoCodingResult);
begin
  FGeoCodingResult := Value;
end;

procedure TJanuaVCLGeoMaps.setWebGMapsDialog(const Value: TWebGMapsDialog);
begin
  self.FWebGMapsDialog := Value;
end;

procedure TJanuaVCLGeoMaps.setWebGMapsGeocoding(const Value: TWebGMapsGeocoding);
begin
  self.FWebGMapsGeocoding := Value;
end;

procedure TJanuaVCLGeoMaps.setWebGMapsReverseGeocoding(const Value: TWebGMapsReverseGeocoding);
begin
  self.FWebGMapsReverseGeocoding := Value;
end;

procedure TJanuaVCLGeoMaps.setWebGMapsTimeZone(const Value: TWebGMapsTimeZone);
begin
  self.FWebGMapsTimeZone := Value;
end;

procedure TJanuaVCLGeoMaps.RecordGeoCoding(const aDataset: TDataSet);
begin
  with aDataset do
  begin
    self.FCoordinates.Coordinates := getGeoCoding(aDataset.FieldByName('an_address').AsWideString + ' ' +
      aDataset.FieldByName('an_postal_code').AsWideString + ' ' + aDataset.FieldByName('an_town')
      .AsWideString);
    if self.FCoordinates.Coordinates.Latitude <> 0 then
    begin
      aDataset.Edit;
      aDataset.FieldByName('latitude').AsFloat := FCoordinates.Latitude;
      aDataset.FieldByName('longitude').AsFloat := FCoordinates.Longitude;
      aDataset.Post;
    end;
  end;
end;

function TJanuaVCLGeoMaps.ReverseGeoCoding: string;
begin
  self.WebGMapsReverseGeocoding.Latitude := self.Coordinates.Coordinates.Latitude;
  self.WebGMapsReverseGeocoding.Longitude := self.Coordinates.Coordinates.Longitude;
  FGeoCodingResult := WebGMapsReverseGeocoding.LaunchReverseGeocoding;
  if FGeoCodingResult = erOk then
  begin
    Result := WebGMapsReverseGeocoding.ResultAddress.FormattedAddress;
    FAnagraph.Address.Latitude := self.FCoordinates.Coordinates.Latitude;
    FAnagraph.Address.Longitude := self.FCoordinates.Coordinates.Longitude;
    FAnagraph.Address.AddressFull := Result;
    FAnagraph.Address.Address := WebGMapsReverseGeocoding.ResultAddress.Street;
    FAnagraph.Address.Number := WebGMapsReverseGeocoding.ResultAddress.StreetNumber;
    FAnagraph.Address.postalcode := WebGMapsReverseGeocoding.ResultAddress.postalcode;
    FAnagraph.Address.Town := WebGMapsReverseGeocoding.ResultAddress.City;
    FAnagraph.Address.StateProvince := WebGMapsReverseGeocoding.ResultAddress.RegionCode;
  end;
end;

function TJanuaVCLGeoMaps.ReverseGeoCoding(aCoordinates: TJanuaRecordCoordinates): string;
begin
  self.FCoordinates.Coordinates := aCoordinates;
  Result := self.ReverseGeoCoding;
end;

function TJanuaVCLGeoMaps.getGeoCoding(const sAddress: string): TJanuaRecordCoordinates;
begin
  InternalActivate;
  WebGMapsGeocoding.Address := sAddress;
  WebGMapsGeocoding.LaunchGeocoding;
  Result.Latitude := WebGMapsGeocoding.ResultLatitude;
  Result.Longitude := WebGMapsGeocoding.ResultLongitude;
  self.FCoordinates.Coordinates := Result;
end;

function TJanuaVCLGeoMaps.getWebGMapsDialog: TWebGMapsDialog;
begin
  if not Assigned(FWebGMapsDialog) then
    FWebGMapsDialog := TWebGMapsDialog.Create(self);

  Result := FWebGMapsDialog
end;

function TJanuaVCLGeoMaps.getWebGMapsGeocoding: TWebGMapsGeocoding;
begin
  if not Assigned(self.FWebGMapsGeocoding) then
    FWebGMapsGeocoding := TWebGMapsGeocoding.Create(self);
  if FWebGMapsGeocoding.ApiKey = '' then
    FWebGMapsGeocoding.ApiKey := self.FApiKey;
  Result := FWebGMapsGeocoding;
end;

function TJanuaVCLGeoMaps.getWebGMapsReverseGeocoding: TWebGMapsReverseGeocoding;
begin
  if not Assigned(self.FWebGMapsReverseGeocoding) then
    FWebGMapsReverseGeocoding := TWebGMapsReverseGeocoding.Create(self);
  if FWebGMapsReverseGeocoding.ApiKey = '' then
    FWebGMapsReverseGeocoding.ApiKey := self.FApiKey;
  Result := FWebGMapsReverseGeocoding;
end;

function TJanuaVCLGeoMaps.getWebGMapsTimeZone: TWebGMapsTimeZone;
begin
  if not Assigned(self.FWebGMapsTimeZone) then
    FWebGMapsTimeZone := TWebGMapsTimeZone.Create(self);

  if FWebGMapsTimeZone.ApiKey = '' then
    FWebGMapsTimeZone.ApiKey := self.FApiKey;
  Result := FWebGMapsTimeZone;
end;

function TJanuaVCLGeoMaps.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
  try
    Result := inherited;
    if Result then
    begin
      // Insert code Here ........
    end;
  except on e: exception do
       RaiseLocalException('InternalActivate', e);
  end;

end;

constructor TJanuaVCLGeoMaps.Create(AOwner: TComponent);
begin
  inherited;
  FCoordinates := TJanuaCoordinates.Create(0.0, 0.0);
end;

procedure TJanuaVCLGeoMaps.DataSetGeocoding(const aDataset: TDataSet);
begin
  if (aDataset.Active) and (aDataset.RecordCount > 0) then
  begin
    aDataset.First;
    while not aDataset.eof do
    begin
      if (aDataset.FieldByName('latitude').AsFloat > 0) and (aDataset.FieldByName('longitude').AsFloat > 0)
      then
        RecordGeoCoding(aDataset);
      aDataset.Next;
    end;
  end;
end;

destructor TJanuaVCLGeoMaps.Destroy;
begin
  FCoordinates.Free;
  inherited;
end;

procedure TJanuaVCLGeoMaps.SetAnagraph(const Value: TJanuaAnagraphRecord);
begin
  FAnagraph := Value;
end;

procedure TJanuaVCLGeoMaps.SetApiKey(const Value: string);
begin
  FApiKey := Value;
end;

end.
