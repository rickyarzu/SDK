unit Janua.Cloud.GoogleAPIs;

interface

uses
  Janua.Core.Entities,
{$IFDEF FPC}
  Classes, SysUtils, fpHTTPClient, fpjson, jsonparser;
{$ELSE}
System.SysUtils, System.Classes, System.JSON, REST.Client, REST.Types, System.Generics.Collections;
{$ENDIF}

type
  TGooglePrediction = record
    Description: string;
    PlaceID: string;
  end;

  TGooglePredictions = TArray<TGooglePrediction>;

  TGooglePlaces = class
  private
    class var FApiKey: string;
    class procedure SetApiKey(const Value: string); static;
  public
    class function GetPlaceDetails(const aPlaceId, aLanguage: string; var jSonOut: string)
      : TJanuaRecordAddress;
    class function PopulateAddressList(const aInput, aLanguage: string; var aJsonOut: string)
      : TGooglePredictions;
  public
    class property ApiKey: string read FApiKey write SetApiKey;
  end;

implementation

uses Janua.Core.Functions, Janua.Core.JSON;

const
  CComma: TFormatSettings = (DecimalSeparator: ',');
  CDot: TFormatSettings = (DecimalSeparator: '.');

  { TGooglePlaces }

class function TGooglePlaces.PopulateAddressList(const aInput, aLanguage: string; var aJsonOut: string)
  : TGooglePredictions;
{$IFDEF FPC}
var
  httpClient: TFPHTTPClient;
  apiUrl: string;
  jsonResponse: TJSONData;
  jsonArray: TJSONArray;
  i: Integer;
begin
  httpClient := TFPHTTPClient.Create(nil);
  try
    apiUrl := 'https://maps.googleapis.com/maps/api/place/autocomplete/json';
    apiUrl := apiUrl + '?input=' + URLEncode(input);
    apiUrl := apiUrl + '&types=address';
    apiUrl := apiUrl + '&key=' + FApiKey; // Replace with your own API key

    jsonResponse := GetJSON(httpClient.Get(apiUrl));

    if Assigned(jsonResponse) and (jsonResponse is TJSONObject) then
    begin
      jsonArray := TJSONArray(TJSONObject(jsonResponse).Get('predictions'));
      if Assigned(jsonArray) then
      begin
        SetLength(Result, jsonArray.Count);
        for i := 0 to jsonArray.Count - 1 do
        begin
          Result[i].Description := (jsonArray.Items[i].FindPath('description').AsString);
        end;
      end;
    end;
    Result := jsonResponse.ToString;
  finally
    httpClient.Free;
  end;
{$ELSE}

var
  restClient: TRESTClient;
  restRequest: TRESTRequest;
  restResponse: TRESTResponse;
  apiUrl: string;
  jsonResponse: TJSONObject;
  jsonArray: TJSONArray;
  aValue: TJsonValue;
  i: Integer;
begin
  restClient := TRESTClient.Create(nil);
  restRequest := TRESTRequest.Create(nil);
  restResponse := TRESTResponse.Create(nil);

  try
    restClient.BaseURL := 'https://maps.googleapis.com/maps/api/place/autocomplete/json';
    restRequest.Client := restClient;
    restRequest.Response := restResponse;

    restRequest.AddParameter('input', aInput);
    restRequest.AddParameter('language', aLanguage);
    restRequest.AddParameter('types', 'address');
    restRequest.AddParameter('key', FApiKey); // Replace with your own API key

    restRequest.Execute;
    jsonResponse := restResponse.JSONValue as TJSONObject;
    aJsonOut := restResponse.JSONValue.Format(4);
    if Assigned(jsonResponse) then
    begin
      jsonArray := jsonResponse.GetValue('predictions') as TJSONArray;
      if Assigned(jsonArray) then
      begin
        SetLength(Result, jsonArray.Count);
        for i := 0 to jsonArray.Count - 1 do
        begin
          Result[i].Description := (jsonArray.Items[i] as TJSONObject).GetValue('description').Value;
          Result[i].PlaceID := (jsonArray.Items[i] as TJSONObject).GetValue('place_id').Value;
        end;
      end;
    end;
  finally
    restClient.Free;
    restRequest.Free;
    restResponse.Free;
  end;
{$ENDIF}
end;

class function TGooglePlaces.GetPlaceDetails(const aPlaceId, aLanguage: string; var jSonOut: string)
  : TJanuaRecordAddress;
var
  restClient: TRESTClient;
  restRequest: TRESTRequest;
  restResponse: TRESTResponse;
  apiUrl: string;
  jsonResponse: TJSONObject;
  resultObject: TJSONObject;
  addressComponentArray: TJSONArray;
  i: Integer;
  vTemp: Extended;
  addressComponent, lGeometry, lLocation: TJSONObject;
  componentType, componentValue: string;
begin
  restClient := TRESTClient.Create(nil);
  restRequest := TRESTRequest.Create(nil);
  restResponse := TRESTResponse.Create(nil);

  try
    restClient.BaseURL := 'https://maps.googleapis.com/maps/api/place/details/json';
    restRequest.Client := restClient;
    restRequest.Response := restResponse;

    restRequest.AddParameter('place_id', aPlaceId);
    restRequest.AddParameter('language', aLanguage);
    restRequest.AddParameter('key', FApiKey); // Replace with your own API key

    restRequest.Execute;
    jsonResponse := restResponse.JSONValue as TJSONObject;

    if Assigned(jsonResponse) then
    begin
      jSonOut := restResponse.JSONValue.Format(4);
      resultObject := jsonResponse.GetValue('result') as TJSONObject;
      if Assigned(resultObject) then
      begin
        Result.PlaceName := resultObject.GetValue('name').Value;
        lGeometry := resultObject.GetValue('geometry') as TJSONObject;
        lLocation := lGeometry.GetValue('location') as TJSONObject;

        componentValue := lLocation.GetValue('lat').Value;
        if not TryStrToFloat(componentValue, Result.Latitude, CDot) then
          TryStrToFloat(componentValue, Result.Latitude, CComma);

        componentValue := lLocation.GetValue('lng').Value;
        if not TryStrToFloat(componentValue, Result.Longitude, CDot) then
          TryStrToFloat(componentValue, Result.Longitude, CComma);

        Result.AddressFull := resultObject.GetValue('formatted_address').Value;

        addressComponentArray := resultObject.GetValue('address_components') as TJSONArray;
        if Assigned(addressComponentArray) then
        begin
          for i := 0 to addressComponentArray.Count - 1 do
          begin
            addressComponent := addressComponentArray.Items[i] as TJSONObject;
            componentType := (addressComponent.GetValue('types') as TJSONArray)[0].Value;
            componentValue := addressComponent.GetValue('long_name').Value;

            if componentType = 'postal_code' then
              Result.PostalCode := componentValue
            else if componentType = 'administrative_area_level_1' then
              Result.Region := componentValue
              // street_number
            else if componentType = 'street_number' then
              Result.Number := componentValue
              // locality
            else if componentType = 'locality' then
              Result.Town := componentValue
            else if componentType = 'administrative_area_level_2' then
            begin
              Result.StateProvince := addressComponent.GetValue('short_name').Value;
              Result.StateProvinceName := componentValue
            end
            // country
            else if componentType = 'country' then
            begin
              Result.CountryCode := addressComponent.GetValue('short_name').Value;
              Result.CountryName := componentValue
            end
            // administrative_area_level_1 - regione
            else if componentType = 'administrative_area_level_1' then
              Result.Region := componentValue
              // route
            else if componentType = 'route' then
              Result.Address := componentValue
          end;
        end;
      end;
    end;
  finally
    restClient.Free;
    restRequest.Free;
    restResponse.Free;
  end;
end;

class procedure TGooglePlaces.SetApiKey(const Value: string);
begin
  FApiKey := Value;
end;

end.
