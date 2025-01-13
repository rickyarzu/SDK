unit Janua.Components.Maps;

interface

uses System.Classes, Janua.Core.Types,  Janua.Core.Cloud, System.Json;

{$TYPEINFO ON}
{$METHODINFO ON}

Type
  TJanuaStreetMap = class(TJanuaMapComponent)
  protected
    function GetStringUrl: string; override;
  public
    function GetCoordinates: boolean; override;
    function GetSuggestions: boolean; override;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

Type
  TJanuaGoogleGeoCoding = class(TJanuaCustomGeoCoding)
  private
    FGoogleKey: string;
    FGoogleUrlType: TJanuaGoogleUrl;
  protected
    function GetGoogleKey: string; override;
    function GetGoogleUrlType: TJanuaGoogleUrl; override;
    procedure SetGoogleKey(const Value: string); override;
    procedure SetGoogleUrlType(const Value: TJanuaGoogleUrl); override;
    function InternalActivate: boolean; override;
    function GetStringUrl: string; override;
  public
    function GetCoordinates: boolean; override;
    function GetSuggestions: boolean; override;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses Janua.Core.Functions, Janua.Core.Json, System.StrUtils, System.SysUtils;

{ TJanuaGoogleCompletion }

constructor TJanuaGoogleGeoCoding.Create(AOwner: TComponent);
begin
  inherited;
  if self.FGoogleKey = '' then
    self.FGoogleKey := 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c';
end;

destructor TJanuaGoogleGeoCoding.Destroy;
begin
  // self.FCoordinates.Free;

  inherited;
end;

function TJanuaGoogleGeoCoding.GetCoordinates: boolean;
var
  FJsonObject: TJsonObject;

  aValue, gValue, lValue, cValue: TJsonValue;
  // aPair: TJSONPair;
  aPair: TJSONPair;
  aObject, gObject, lObject: TJsonObject;
begin
  inherited;
  // ?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA
  FGoogleUrlType := jguCoordinates;
  try
    if self.GetJsonResponse(Url) then
    begin
      // Load JSON data from the body request to the dataset using
      // the TDataSet class helpers provided by the open source
      // library DelphiMVCFramework project

      // self.FName := Value.GetValue('name').Value;
      // self.FSlug := Value.GetValue('slug').Value;
      if FResponseString <> '' then
      begin
        FJsonObject := TJsonObject.Create;
        try
{$IFDEF MSWINDOWS}
          // FJsonObject.Parse(TEncoding.Unicode.GetBytes(FResponseText.Text), 0);
          FJsonObject.Parse(BytesOf(self.FResponseString), 0);
{$ELSE}
          FJsonObject.Parse(BytesOf(self.FResponseString), 0);
{$ENDIF}
          aPair := FJsonObject.Get('results');
          // legge l'array di predizioni ... suggestions
          if Assigned(aPair) then
          begin
            for aValue in (aPair.JsonValue as TJsonArray) do
            begin
              aObject := (aValue as TJsonObject);
              if aObject.TryGetValue('geometry', gValue) then
              begin
                gObject := (gValue as TJsonObject);
                if gObject.TryGetValue('location', lValue) then
                begin
                  lObject := (lValue as TJsonObject);
                  if lObject.TryGetValue('lat', cValue) then
                    FLat := cValue.Value;
                  if lObject.TryGetValue('lng', cValue) then
                    FLng := cValue.Value;
                end;
              end;

            end;
          end;

          if FLat <> '' then
            self.FCoordinates.Latitude := Janua.Core.JSON.JsonStringToFloat(FLat);
          if FLng <> '' then
            self.FCoordinates.Longitude := Janua.Core.JSON.JsonStringToFloat(FLng);
        finally
          FJsonObject.Free;
        end;
      end;
    end;
    Result := FLat <> '';
  except
    on e: exception do
      Result := False;

  end;

end;

function TJanuaGoogleGeoCoding.GetGoogleKey: string;
begin
  Result := self.FGoogleKey
end;

function TJanuaGoogleGeoCoding.GetGoogleUrlType: TJanuaGoogleUrl;
begin
  Result := self.FGoogleUrlType
end;

function TJanuaGoogleGeoCoding.GetStringUrl: string;
var
  BaseURL, Params: string;
begin
  case self.FGoogleUrlType of
    jguSuggestions:
      begin
        BaseURL := 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=';
        Params := '';
        Params := Params + System.StrUtils.IfThen(self.GoogleKey <> '', '&key=' + self.FGoogleKey, '');
        Params := Params + System.StrUtils.IfThen(ISOLanguage.Language <> TJanuaLanguage.jlaNone,
          '&language=' + ISOLanguage.Code, '');
        Params := Params + System.StrUtils.IfThen(ISOCountry.ISOCountry <> TJanuaIsoCountries.jicNone,
          '&components=country:' + ISOCountry.Country2Code, '');
        Result := BaseURL + self.FSearchAddress + Params;
      end;
    jguCoordinates:
      begin
        BaseURL := 'https://maps.googleapis.com/maps/api/geocode/json?address=';
        // sAddress := TNetEncoding.URL.Encode(Address);
        Params := '&key=' + self.FGoogleKey;
        Result := BaseURL + self.FSearchAddress + Params;
      end;
  end;

end;

function TJanuaGoogleGeoCoding.GetSuggestions: boolean;
var
  FJsonObject: TJsonObject;
  aValue: TJsonValue;
  // aPair: TJSONPair;
  aPair: TJSONPair;
  aObject: TJsonObject;
begin
  inherited;
  self.FGoogleUrlType := TJanuaGoogleUrl.jguSuggestions;
  try
    if self.GetJsonResponse(GetStringUrl) then
    begin
      if self.FResponseText.Text <> '' then
      begin
        FJsonObject := TJsonObject.Create;
        try
          FJsonObject.Parse(BytesOf(self.FResponseText.Text), 0);
          aPair := FJsonObject.Get('predictions');
          // legge l'array di predizioni ... suggestions
          if Assigned(aPair) then
          begin
            for aValue in (aPair.JsonValue as TJsonArray) do
            begin
              aObject := (aValue as TJsonObject);
              self.AddAddress(aObject);
            end;
          end;

        finally
          FJsonObject.Free;
        end;
      end;
    end;
    Result := self.Count <> 0;
  except
    on e: exception do
    begin
      self.WriteError(self.ClassName + '.' + self.Name + '.GetSuggestions', 'Error on Geo-Localization',
        e, False);
      Result := False;
    end;

  end;

end;

function TJanuaGoogleGeoCoding.InternalActivate: boolean;
begin
  Result := Active; // if already Active Result should be True;
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

procedure TJanuaGoogleGeoCoding.SetGoogleKey(const Value: string);
begin
  self.FGoogleKey := Value;
end;

procedure TJanuaGoogleGeoCoding.SetGoogleUrlType(const Value: TJanuaGoogleUrl);
begin
  FGoogleUrlType := Value;
end;


{ TJanuaStreetMap }

constructor TJanuaStreetMap.Create(AOwner: TComponent);
begin
  inherited;
end;

destructor TJanuaStreetMap.Destroy;
begin
  inherited;
end;

function TJanuaStreetMap.GetCoordinates: boolean;
var
  FJsonObject, aJsonAddress: TJsonObject;
  aValue: TJsonValue;
  // aPair: TJSONPair;
begin
  inherited;
  try
    if self.GetJsonResponse(GetStringUrl) then
    begin
      // Load JSON data from the body request to the dataset using
      // the TDataSet class helpers provided by the open source
      // library DelphiMVCFramework project

      // self.FName := Value.GetValue('name').Value;
      // self.FSlug := Value.GetValue('slug').Value;
      ResponseText.Text := StringReplace(ResponseText.Text, '[', '', []);
      ResponseText.Text := StringReplace(ResponseText.Text, ']', '', []);
      if ResponseText.Text <> '' then
      begin
        FJsonObject := TJsonObject.Create;
        try
          FJsonObject.Parse(BytesOf(ResponseText.Text), 0);
          if FJsonObject.TryGetValue('lat', aValue) then
            FLat := aValue.Value;
          if FJsonObject.TryGetValue('lon', aValue) then
            FLng := aValue.Value;
          if FLat <> '' then
            Coordinates.Latitude := Janua.Core.Json.JsonStringToFloat(FLat);
          if FLng <> '' then
            Coordinates.Longitude := Janua.Core.Json.JsonStringToFloat(FLng);
          if FJsonObject.TryGetValue('address', aValue) then
          begin
            aJsonAddress := aValue as TJsonObject;
            Janua.Core.Json.JsonValue(aJsonAddress, 'road', FFoundAddress.Address);
            Janua.Core.Json.JsonValue(aJsonAddress, 'number', FFoundAddress.Number);
            Janua.Core.Json.JsonValue(aJsonAddress, 'postcode', FFoundAddress.postalcode);

          end;

        finally
          FJsonObject.Free;
        end;
      end;
    end;
    Result := FLat <> '';
  except
    on e: exception do
      Result := False;

  end;

end;

function TJanuaStreetMap.GetSuggestions: boolean;
begin
  inherited;
  Result := False;
end;

function TJanuaStreetMap.GetStringUrl: string;
var
  BaseURL, Params: string;
begin
  BaseURL := 'http://nominatim.openstreetmap.org/search/';
  // sAddress := TNetEncoding.URL.Encode(Address);
  Params := '?format=json&addressdetails=1&limit=1&polygon_svg=1';
  Result := BaseURL + FSearchAddress + Params;
end;


end.

