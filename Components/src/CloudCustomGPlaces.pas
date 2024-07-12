{***************************************************************************}
{ TMS Google Calendar access                                                }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2014                                               }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}

unit CloudCustomGPlaces;

{$I TMSDEFS.INC}

interface

uses
  Classes, CloudBase, CloudGoogleWin, SysUtils, DBXJSON
  {$IFDEF DELPHIXE6_LVL}
  , JSON
  {$ENDIF}
  ;

type
  TAdvCustomGPlaces = class;
  TGPlacesItems = class;
  TGPlacesItem = class;
  TPhotoItems = class;
  TPhotoItem = class;
  TGPlacesAddress = class;

  TGPlacesAddress = class(TPersistent)
  private
    FFormattedAddress: string;
    FParts: TStringList;
  public
    constructor Create;
    destructor Destroy; override;
  published
    property FormattedAddress: string read FFormattedAddress write FFormattedAddress;
    property Parts: TStringList read FParts write FParts;
  end;

  TPhotoItem = class(TCollectionItem)
  private
    FReference: string;
  public
    constructor Create(Collection: TCollection);  override;
    destructor Destroy; override;
  published
    property Reference: string read FReference write FReference;
  end;

  TPhotoItems = class(TOwnedCollection)
  public
    constructor Create(AOwner: TGPlacesItem);
    destructor Destroy; override;
  end;

  TGPlacesItem = class(TCollectionItem)
  private
    FPhotos: TPhotoItems;
    FTypes: TStringList;
    FName: string;
    FLat: double;
    FLong: double;
    FIcon: string;
    FPlaceId: string;
    FVicinity: string;
    FOpen: boolean;
    FRating: string;
    FAddress: TGPlacesAddress;
    FPhone: string;
    FWebsite: string;
  protected
    function GPlaces: TAdvCustomGPlaces;
  public
    constructor Create(Collection: TCollection);  override;
    destructor Destroy; override;
    function GetDetails(PlaceItem: TGPlacesItem): TGPlacesItem;
  published
    property PlaceId: string read FPlaceId write FPlaceId;
    property Title: string read FName write FName;
    property Lat: double read FLat write Flat;
    property Long: double read FLong write FLong;
    property Icon: string read FIcon write FIcon;
    property Open: boolean read FOpen write FOpen;
    property Vicinity: string read FVicinity write FVicinity;
    property Rating: string read FRating write FRating;
    property Photos: TPhotoItems read FPhotos write FPhotos;
    property Types: TStringList read FTypes write FTypes;
    property Address: TGPlacesAddress read FAddress write FAddress;
    property Phone: string read FPhone write FPhone;
    property Website: string read FWebsite write FWebsite;
  end;

  TGPlacesItems = class(TOwnedCollection)
  private
    function GetItem(Index: Integer): TGPlacesItem;
    procedure SetItem(Index: Integer; const Value: TGPlacesItem);
  protected
    procedure Update(Item: TCollectionItem); override;
  public
    constructor Create(AOwner: TAdvCustomGPlaces);
    destructor Destroy; override;
    property Items[Index: Integer]: TGPlacesItem read GetItem write SetItem; default;
    function Add: TGPlacesItem;
    function Insert(Index: integer): TGPlacesItem;
  end;

  TAdvCustomGPlaces = class(TCloudGoogleWin)
  private
    FItems: TGPlacesItems;
    FNextPageToken: string;
    FLastError: string;
    procedure SetItems(const Value: TGPlacesItems);
    procedure GetPlacesFromJson(jv: TJSONValue);
  protected
    property NextPageToken: string read FNextPageToken write FNextPageToken;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function SearchNearby(ALong, ALat: double; AType: string = ''): boolean;
    function SearchByText(ADescription: string; AType: string): boolean;
    function HasNextPage: boolean;
    procedure GetNextPlacesPage;
    function Autocomplete(search: string): string;
    property LastError: string read FLastError write FLastError;
  published
    property Items: TGPlacesItems read FItems write SetItems;
  end;

implementation

const
  Komma: TFormatSettings = (DecimalSeparator: ',');
  Dot: TFormatSettings = (DecimalSeparator: '.');


function FloatToStrDotted(const aNumber: Double): string;
begin
  Result := FloatToStr(aNumber, Dot);
end;

function FloatToStrComma(const aNumber: Double): string;
begin
  Result := FloatToStr(aNumber, Komma);
end;

function StrToFloatAny(const S: string): Extended;
begin
  if not TryStrToFloat(S, Result, Komma) then
    Result := StrToFloat(S, Dot);
end;

{ TAdvCustomGPlaces }

function TAdvCustomGPlaces.Autocomplete(search: string): string;
var
  url,resstr: string;
  resdat: ansistring;
  headers: TCoreCloudHeaders;
  jv: TJSONValue;
  ja: TJSONArray;
  o, fo: TJSONObject;
begin
  // form url
  url := 'https://maps.googleapis.com/maps/api/place/queryautocomplete/json'
          + '?input=' + search
          + '&key=' + App.Key;

  // add needed headers
  AddHeader(headers, 'Content-Type', 'application/json');

  // do the get
  resdat := HttpsGet(url, headers);
  resstr := UTF8ToString(resdat);

  // get the object
  jv := TJSONObject.ParseJSONValue(resstr);

  if Assigned(jv) and (jv is TJSONObject) then
  begin
    o := jv as TJSONObject;
    ja := GetJSONValue(o,'predictions') as TJSONArray;
    if Assigned(ja) then
    begin
      if GetArraySize(ja) > 0 then
      begin
        fo := GetArrayItem(ja,0) as TJSONObject;
        Result := GetJSONProp(fo, 'description');
      end;
    end
    else
    begin
      Result := '';
    end;
  end
  else
  begin
    Result := '';
  end;
end;

constructor TAdvCustomGPlaces.Create(AOwner: TComponent);
begin
  inherited;
  FItems := TGPlacesItems.Create(Self);
end;

destructor TAdvCustomGPlaces.Destroy;
begin
  FItems.Free;
  inherited;
end;

procedure TAdvCustomGPlaces.GetNextPlacesPage;
var
  url: string;
  resdat: ansistring;
  headers: TCoreCloudHeaders;
  resstr: string;
  jv: TJSONValue;
begin
  // form url
  url := 'https://maps.googleapis.com/maps/api/place/nearbysearch/json'
          + '?pagetoken=' + NextPageToken
          + '&key=' + App.Key;

  // add needed headers
  AddHeader(headers, 'Content-Type', 'application/json');

  // do the get
  resdat := HttpsGet(url, headers);
  resstr := UTF8ToString(resdat);

  // get the object
  jv := TJSONObject.ParseJSONValue(resstr);

  if Assigned(jv) and (jv is TJSONObject) then
  begin
    GetPlacesFromJson(jv);
  end;
end;

procedure TAdvCustomGPlaces.GetPlacesFromJson(jv: TJSONValue);
var
  ref, s: string;
  o, fo, jo, joo: TJSONObject;
  ja, jaa: TJSONArray;
  di: TGPlacesItem;
  i,ii: integer;
  Photo: TPhotoItem;
begin
  o := jv as TJSONObject;
    try
      // fetch the next page token
      NextPageToken := GetJSONProp(o,'next_page_token');

      // disect the results array
      ja := GetJSONValue(o,'results') as TJSONArray;
      if Assigned(ja) then
      begin
        for i := 0 to GetArraySize(ja) - 1 do
        begin
          fo := GetArrayItem(ja,i) as TJSONObject;
          di := TGPlacesItem(Items.Add);

          // get standard data
          di.Title := GetJSONProp(fo,'name');
          di.Icon := GetJSONProp(fo,'icon');
          di.PlaceId := GetJSONProp(fo,'place_id');
          di.Vicinity := GetJSONProp(fo,'vicinity');
          di.Rating := GetJSONProp(fo,'rating');

          if di.Rating = '' then
            di.Rating := '/';

          // get location data
          jo := GetJSONValue(fo,'geometry') as TJSONObject;
          if Assigned(jo) then
          begin
            joo := GetJSONValue(jo,'location') as TJSONObject;
            if Assigned(joo) then
            begin
              di.Lat := StrToFloatAny(GetJSONProp(joo,'lat'));
              di.Long := StrToFloatAny(GetJSONProp(joo,'lng'));
            end;
          end;

          // get opening data
          jo := GetJSONValue(fo,'opening_hours') as TJSONObject;
          if Assigned(jo) then
          begin
            s := GetJSONProp(jo,'open_now');
            di.Open := true;

            if (s <> '') then
              di.Open := StrToBool(s);
          end;

          // get photo data
          jaa := GetJSONValue(fo,'photos') as TJSONArray;
          if Assigned(jaa) then
          begin
            for ii := 0 to GetArraySize(jaa) - 1 do
            begin
              jo := GetArrayItem(jaa,ii) as TJSONObject;
              ref := GetJSONProp(jo,'photo_reference');
              Photo := TPhotoItem(di.Photos.Add);
              Photo.Reference := ref;
            end;
          end;

          // get types data
          jaa := GetJSONValue(fo,'types') as TJSONArray;
          if Assigned(jaa) then
          begin
            for ii := 0 to GetArraySize(jaa) - 1 do
            begin
              di.Types.Add( StringReplace(GetArrayItem(jaa,ii).ToString, '"', '', [rfReplaceAll]) );
            end;
          end;
        end;
      end;
    finally
      jv.Free;
    end;
end;

function TAdvCustomGPlaces.HasNextPage: boolean;
begin
  Result := NextPageToken <> '';
end;

function TAdvCustomGPlaces.SearchByText(ADescription: string; AType: string): boolean;
var
  url: string;
  resdat: ansistring;
  headers: TCoreCloudHeaders;
  resstr: string;
  jv: TJSONValue;
begin
  Result := false;

  // clear the list first
  Items.Clear;

  // form url
  url := 'https://maps.googleapis.com/maps/api/place/textsearch/json'
          + '?query=' + ADescription
          + '&key=' + App.Key ;

  if AType <> '' then
    url := url + '&type=' + AType;

  // add needed headers
  AddHeader(headers, 'Content-Type', 'application/json');

  // do the get
  resdat := HttpsGet(url, headers);
  resstr := UTF8ToString(resdat);

  // get the object
  jv := TJSONObject.ParseJSONValue(resstr);

  if Assigned(jv) and (jv is TJSONObject) then
  begin
    FLastError := GetJSONProp((jv as TJSONObject),'error_message');

    Result := (FLastError = '');
    if Result then
      GetPlacesFromJson(jv);
  end;
end;

function TAdvCustomGPlaces.SearchNearby(ALong, ALat: double; AType: string = ''): boolean;
var
  url, lat, long: string;
  resdat: ansistring;
  headers: TCoreCloudHeaders;
  resstr: string;
  jv: TJSONValue;
begin
  Result := false;
  // clear the list first
  Items.Clear;

  // format Lat & Long
  lat := StringReplace(FloatToStr(ALat), ',' , '.', []);
  long := StringReplace(FloatToStr(ALong), ',','.', []);

  // form url
  url := 'https://maps.googleapis.com/maps/api/place/nearbysearch/json'
          + '?location=' + lat + ',' + long
          + '&radius=500'
          + '&types=' + AType
          + '&key=' + App.Key;

  // add needed headers
  AddHeader(headers, 'Content-Type', 'application/json');

  // do the get
  resdat := HttpsGet(url, headers);
  resstr := UTF8ToString(resdat);

  // get the object
  jv := TJSONObject.ParseJSONValue(resstr);

  if Assigned(jv) and (jv is TJSONObject) then
  begin
    FLastError := GetJSONProp((jv as TJSONObject),'error_message');

    Result := (FLastError = '');
    if Result then
      GetPlacesFromJson(jv);
  end;
end;

procedure TAdvCustomGPlaces.SetItems(const Value: TGPlacesItems);
begin
  FItems.Assign(Value);
end;

{ TGPlacesItem }

constructor TGPlacesItem.Create(Collection: TCollection);
begin
  inherited;
  Photos := TPhotoItems.Create(Self);
  Types := TStringList.Create;
  Address := TGPlacesAddress.Create;
end;

destructor TGPlacesItem.Destroy;
begin

  inherited;
end;

function TGPlacesItem.GetDetails(PlaceItem: TGPlacesItem): TGPlacesItem;
var
  ii: integer;
  url: string;
  resdat: ansistring;
  headers: TCoreCloudHeaders;
  resstr: string;
  jv: TJSONValue;
  o,jo,fo: TJSONObject;
  jaa: TJSONArray;
begin
  // form url
  url := 'https://maps.googleapis.com/maps/api/place/details/json'
          + '?placeid=' + PlaceItem.PlaceId
          + '&key=' + GPlaces.App.Key;

  // add needed headers
  AddHeader(headers, 'Content-Type', 'application/json');

  // do the get
  resdat := GPlaces.HttpsGet(url, headers);
  resstr := UTF8ToString(resdat);

  // get the object
  jv := TJSONObject.ParseJSONValue(resstr);

  if Assigned(jv) and (jv is TJSONObject) then
  begin
    o := jv as TJSONObject;
    try
      // disect the results array
      fo := GPlaces.GetJSONValue(o,'result') as TJSONObject;
      if Assigned(fo) then
      begin
        // address
        PlaceItem.Address.FFormattedAddress := GPlaces.GetJSONProp(fo,'formatted_address');

        jaa := GPlaces.GetJSONValue(fo,'address_components') as TJSONArray;
        if Assigned(jaa) then
        begin
          for ii := 0 to GetArraySize(jaa) - 1 do
          begin
            jo := GetArrayItem(jaa,ii) as TJSONObject;
            PlaceItem.Address.Parts.Add(GPlaces.GetJSONProp(jo, 'long_name'));
          end;
        end;

        // other props
        PlaceItem.Phone := GPlaces.GetJSONProp(fo,'international_phone_number');
        PlaceItem.Website := GPlaces.GetJSONProp(fo,'website');
      end;
    finally
      jv.Free;
    end;
  end;
  Result := PlaceItem;
end;

function TGPlacesItem.GPlaces: TAdvCustomGPlaces;
begin
  Result := (Collection as TGPlacesItems).Owner as TAdvCustomGPlaces;
end;

{ TGPlacesItems }

function TGPlacesItems.Add: TGPlacesItem;
begin
  Result := TGPlacesItem(inherited Add);
end;

constructor TGPlacesItems.Create(AOwner: TAdvCustomGPlaces);
begin
  inherited Create(AOwner,TGPlacesItem);
end;

destructor TGPlacesItems.Destroy;
begin
  inherited;
end;

function TGPlacesItems.GetItem(Index: Integer): TGPlacesItem;
begin
  Result := TGPlacesItem(inherited Items[Index]);
end;

function TGPlacesItems.Insert(Index: integer): TGPlacesItem;
begin
  Result := TGPlacesItem(inherited Insert(Index));
end;

procedure TGPlacesItems.SetItem(Index: Integer; const Value: TGPlacesItem);
begin
  inherited Items[Index] := Value;
end;

procedure TGPlacesItems.Update(Item: TCollectionItem);
begin
  inherited;
end;

{ TPhotoItems }

constructor TPhotoItems.Create(AOwner: TGPlacesItem);
begin
  inherited Create(AOwner,TPhotoItem);
end;

destructor TPhotoItems.Destroy;
begin
  inherited;
end;

{ TPhotoItem }

constructor TPhotoItem.Create(Collection: TCollection);
begin
  inherited;

end;

destructor TPhotoItem.Destroy;
begin

  inherited;
end;

{ TGPlacesAddress }

constructor TGPlacesAddress.Create;
begin
  inherited create;
  Parts := TStringList.Create;
end;

destructor TGPlacesAddress.Destroy;
begin
  inherited;
end;

end.
