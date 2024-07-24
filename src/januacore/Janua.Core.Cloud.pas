unit Janua.Core.Cloud;

interface

{$I JANUACORE.INC}

uses
  // System Libraries ..............................................
  System.IOUtils, System.SysUtils, System.Math,
  System.Net.Mime, System.Classes, System.StrUtils, System.Generics.Collections,

  // Http Libraries
  System.Net.HttpClient, System.Net.HttpClientComponent,
  // DB Libraries
  Data.DB,

  // REST Utils and oAuth Utils
  REST.Utils,
  // REST.Types,
  // REST.Client,
  // REST.Response.Adapter,
  // REST.Authenticator.Simple,
  // REST.Authenticator.Basic,
  // REST.Authenticator.OAuth,
  // REST.Json,

  // Json Xml Libraries
  System.JSON, System.JSONConsts, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
{$IFDEF MSWINDOWS}
  Xml.Win.msxmldom,
{$ENDIF}
  // Janua Core Libraries
  Janua.Core.DB, Janua.Core.Classes, Janua.Core.Types, Janua.Core.CustomControls, Janua.Core.Classes.Social,
  Janua.Http.Types, Janua.Core.Sockets, Janua.Legacy.Classes, Janua.Core.Entities;

Type
  TFileRecord = record
    filedate: TDateTime;
    fileext: string;
    filename: string;
    fileKey: string;
    fileid: int64;
  end;

Type

  TJanuaCloudComponent = class(TJanuaCoreComponent)
  private
    FHTTPClient: THTTPClient;
    FIsoLanguage: TJanuaISOLanguages;
    FUrl: string;
    FAccept: TJanuaMime;
    FProtocol: TJanuaProtocol;
    FMethod: TJanuaHttpMethod;
    FNetHTTPRequest: TNetHTTPRequest;
    FISOCountry: TJanuaISOCountry;
  strict protected
    FResponseText: TStrings;
{$IFDEF MSWINDOWS}
    FResponseString: UTF8String;
{$ELSE}
    FResponseString: string;
{$ENDIF}
  protected
    function GetHTTPClient: THTTPClient;
    function GetIsoLanguage: TJanuaISOLanguages;
    function GetUrl: string;
    function GetResponseText: TStrings;
    function GetAccept: TJanuaMime;
    function GetProtocol: TJanuaProtocol;
    function GetMethod: TJanuaHttpMethod;
    function GetNetHTTPRequest: TNetHTTPRequest;
    function GetISOCountry: TJanuaISOCountry;
{$IF defined(MSWINDOWS)}
    function GetResponseString: UTF8String;
{$ELSE}
    function GetResponseString: string;
{$ENDIF}
    function getLanguage: TJanuaLanguage;
    function getLanguageCode: string;
    procedure SetInternalParams(const Value: TJanuaParams);
    procedure SetNetHTTPRequest(const Value: TNetHTTPRequest);
    procedure SetMethod(const Value: TJanuaHttpMethod);
    // questa procedura si occupa di aprire fisicamente l'URL di ricerca ed estreae un testo se compatibile MIME
    function GetUrlResponse: boolean;
    procedure SetISOCountry(const Value: TJanuaISOCountry);
    procedure SetLanguageCode(const Value: string);
{$IF defined(MSWINDOWS)}
    procedure SetResponseString(const Value: UTF8String);
{$ELSE}
    procedure SetResponseString(const Value: string);
{$ENDIF}
  strict protected
    FInternalParams: TJanuaParams;
    FMultiPartForm: TMultiPartFormData;
    procedure SetIsoLanguage(const Value: TJanuaISOLanguages);
    function GetStringUrl: string; virtual;
    procedure SetResponseText(const Value: TStrings);
    function InternalActivate: boolean; override;
    function GetResponse: boolean; overload;
    function GetJsonResponse: boolean; overload;
    function GetXmlResponse: boolean; overload;
    function GetRSSREsponse: boolean; overload;
    function GetJsonResponse(const AURL: string; aMethod: TJanuaHttpMethod = jhmNone;
      aProtocol: TJanuaProtocol = jptNone): boolean; overload;
    function GetJsonResponse(const AURL: string; Params: TJanuaParams; aMethod: TJanuaHttpMethod = jhmNone;
      aProtocol: TJanuaProtocol = jptNone): boolean; overload;
    function GetXmlResponse(const AURL: string; aMethod: TJanuaHttpMethod = jhmNone;
      aProtocol: TJanuaProtocol = jptNone): boolean; overload;
    function GetXmlResponse(const AURL: string; Params: TJanuaParams; aMethod: TJanuaHttpMethod = jhmNone;
      aProtocol: TJanuaProtocol = jptNone): boolean; overload;
    function GetRSSREsponse(const AURL: string; aMethod: TJanuaHttpMethod = jhmNone;
      aProtocol: TJanuaProtocol = jptNone): boolean; overload;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetResponse(const AURL: string; aMethod: TJanuaHttpMethod = jhmNone;
      aProtocol: TJanuaProtocol = jptNone): boolean; overload;
    function OpenURL(const AURL: string = ''): string;
  public
    property InternalParams: TJanuaParams read FInternalParams write SetInternalParams;
    property Method: TJanuaHttpMethod read FMethod write SetMethod;
  published
    property ISOLanguage: TJanuaISOLanguages read FIsoLanguage write SetIsoLanguage;
    property ISOCountry: TJanuaISOCountry read FISOCountry write SetISOCountry;
    property ResponseText: TStrings read FResponseText write SetResponseText;
    // property Language: TJanuaLanguage read getLanguage write SetLanguage stored False;
    property LanguageCode: string read getLanguageCode write SetLanguageCode stored False;
    property Url: string read GetStringUrl;
    property NetHTTPRequest: TNetHTTPRequest read FNetHTTPRequest write SetNetHTTPRequest;
{$IFDEF MSWINDOWS}
    property ResponseString: UTF8String read FResponseString write SetResponseString;
{$ELSE}
    property ResponseString: string read FResponseString write SetResponseString;
{$ENDIF}
  end;

Type
  TJanuaFacebookOAuth = class(TJanuaPersistent)
  private
    FJanuaFacebookUrl: TJanuaFacebookUrl;
    FTokenUrl: string;
    FToken: string;
    FJsonResponse: string;
    FJsonObjectResponse: TJsonObject;
    FResponseMessage: string;
    FJanuaFacebookUser: TJanuaFacebookUser;
    procedure SetJanuaFacebookUrl(const Value: TJanuaFacebookUrl);
    procedure SetAppID(const Value: string);
    procedure SetDestURL(const Value: string);
    function GetFacebookuURL: string;
    function GetFBScopeTypes: TJanuaFBSCopeTypes;
    procedure SetFBSCopeTypes(const Value: TJanuaFBSCopeTypes);
    procedure SetToken(const Value: string);
    procedure SetTokenUrl(const Value: string);
    procedure SetBaseURL(const Value: string);
    function GetResourceURI: string;
    procedure SetOAuthURL(const Value: string);
    procedure SetJsonResponse(const Value: string);
    procedure SetJsonObjectResponse(const Value: TJsonObject);
    procedure SetResponseMessage(const Value: string);
    procedure SetJanuaFacebookUser(const Value: TJanuaFacebookUser);
    procedure SetResponseType(const Value: TJanuaFBResponseType);
    procedure SetCode(const Value: string);
    procedure SetAppSecret(const Value: string);
    function GetCodeURL: string;
  strict protected
    FOwner: TJanuaCloudComponent;
  public
    constructor Create; override;
    constructor Create(AOwner: TJanuaCloudComponent); overload;
    destructor Destroy; override;
  public
    property JanuaFacebookUrl: TJanuaFacebookUrl read FJanuaFacebookUrl write SetJanuaFacebookUrl;
    // Record Parser For Facebook User After Log-IN.
    property JanuaFacebookUser: TJanuaFacebookUser read FJanuaFacebookUser write SetJanuaFacebookUser;
    property JsonObjectResponse: TJsonObject read FJsonObjectResponse write SetJsonObjectResponse;
  public
    procedure Execute; // Fetches Data starting from Token-URL and so on .........................
    // This method manages the Facebook OAuth URL from the OAuth Form both VCL and FMX FORMS .....
    procedure OAuth2_Facebook_AccessTokenRedirect(const AURL: string; var DoCloseWebView: boolean);
    procedure HttpGetToken; // procedura che usando il framework JanuaCloud Richiede Un Token.
  published
    // il token che viene elaborato dal Token Url o inserito dal sistema se presente
    property Token: string read FToken write SetToken;
    // Il Token che arriva da un url il parser lo converte poi in Token
    property TokenUrl: string read FTokenUrl write SetTokenUrl;
    // Url di Base del Graph serve per recuperare i dati da Facebook
    property BaseURL: string read FJanuaFacebookUrl.BaseURL write SetBaseURL;
    // Url di Richiesta di OAuth  https://www.facebook.com/dialog/oauth
    property OAuthURL: string read FJanuaFacebookUrl.AuthURL write SetOAuthURL;
    // Application ID identificata in sede di creazine della App su Facebook. 174153993173442
    property AppID: string read FJanuaFacebookUrl.AppID write SetAppID;
    // Application Secret identificata in sede di creazine della App su Facebook. ebe8cb227561474f7cfb114cedfbffef
    property AppSecret: string read FJanuaFacebookUrl.AppSecret write SetAppSecret;
    // Destination Url sul nostro Sito Web: http://www.almanaccocalcioligure.com/fbtoken
    property DestURL: string read FJanuaFacebookUrl.DestURL write SetDestURL;
    // Questo è il Resource URI dove fare le richieste dopo che si è ottenuto il Toke oAuth
    property ResourceURI: string read GetResourceURI;
    // Ad esempio:
    // https://www.facebook.com/dialog/oauth?client_id=174153993173442&response_type=token&scope=email%2Cpublic_profile%2Cuser_friends&redirect_uri=
    property FacebookURL: string read GetFacebookuURL;
    property Scopes: TJanuaFBSCopeTypes read GetFBScopeTypes write SetFBSCopeTypes
      default [jfsEmail, jfsPublicProfile, jfsFriends];
    property JsonResponse: string read FJsonResponse write SetJsonResponse;
    property ResponseMessage: string read FResponseMessage write SetResponseMessage;
    property ResponseType: TJanuaFBResponseType read FJanuaFacebookUrl.ResponseType write SetResponseType;
    property Code: string read FJanuaFacebookUrl.Code write SetCode;
    property CodeURL: string read GetCodeURL;
  end;

Type
  TJanuaCustomCloudOAuthForm = class(TJanuaCoreComponent)
  private
    FFacebookOAuth: TJanuaFacebookOAuth;
    procedure SetFacebookOAuth(const Value: TJanuaFacebookOAuth);
  public
    procedure Execute; Virtual; Abstract;
    property FacebookOAuth: TJanuaFacebookOAuth read FFacebookOAuth write SetFacebookOAuth;
  end;

Type
  TJanuaCustomCloudOAuth = class abstract(TJanuaCloudComponent)
  strict protected
    function GetSocialType: TJanuaSocialType; Virtual; Abstract;
    function GetJanuaFacebookOuth: TJanuaFacebookOAuth; Virtual; Abstract;
    function GetJanuaCloudOAuthForm: TJanuaCustomCloudOAuthForm; virtual; abstract;
    procedure SetJanuaFacebookOuth(const Value: TJanuaFacebookOAuth); virtual; abstract;
    function GetStrToken: string; virtual; abstract;
    function GetTokenURL: string; virtual; abstract;
    procedure SetStrToken(const Value: string); virtual; abstract;
    procedure SetTokenUrl(const Value: string); virtual; abstract;
    procedure SetJanuaCloudOAuthForm(const Value: TJanuaCustomCloudOAuthForm); virtual; abstract;
    procedure SetCode(const Value: string); virtual; abstract;
    function GetCode: string; virtual; abstract;
  strict protected
    procedure SetSocialType(const Value: TJanuaSocialType); virtual; abstract;
    // This can be inherited by WebBroker or VCL or FMX Components to manage oAuth Tokens.
  public
    procedure Execute; overload; virtual; abstract;
    procedure Execute(aToken: string); overload; virtual; abstract;
    procedure Execute(aToken: string; aSocialType: TJanuaSocialType); overload; virtual; abstract;
    procedure SetToken(AURL: string); overload; virtual; abstract;
    procedure GetWinOAuth; virtual; abstract;
  published
    property SocialType: TJanuaSocialType read GetSocialType write SetSocialType;
    // (jstFacebook, jstTwitter, jstLinkedIN, jstVKontakte);
    property JanuaFacebookOuth: TJanuaFacebookOAuth read GetJanuaFacebookOuth write SetJanuaFacebookOuth;
    property JanuaCloudOAuthForm: TJanuaCustomCloudOAuthForm read GetJanuaCloudOAuthForm
      write SetJanuaCloudOAuthForm;
    property TokenUrl: string read GetTokenURL write SetTokenUrl;
    property Token: string read GetStrToken write SetStrToken;
    property Code: string read GetCode write SetCode;
  end;

type
  TJanuaCloudConnection = class(TJanuaCloudComponent)
  private
    FServer: string;
    FServerIP: string;
    FPort: integer;
    procedure SetServer(const Value: string);
    procedure SetServerIP(const Value: string);
    procedure SetPort(const Value: integer);
  protected
    FInternalResource: string;
    function InternalActivate: boolean; override;
    function ResourceUrl(aResource: string): string;
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    function GetXMLResult(Resource: string; Params: TJanuaParams): string;
    function GetJsonResult(Resource: string; Params: TJanuaParams): string;
  published
    property Server: string read FServer write SetServer;
    property ServerIP: string read FServerIP write SetServerIP;
    property Port: integer read FPort write SetPort;
  end;

type
  TJanuaJsonDACRemoteDS = class(TJanuaJsonDacDataset)
  private
    FJanuaCloudConnection: TJanuaCloudConnection;
    FMethod: TJanuaHttpMethod;
    FResourceName: string;
    FParams: TJanuaParams;
    procedure SetJanuaCloudConnection(const Value: TJanuaCloudConnection);
    procedure SetMethod(const Value: TJanuaHttpMethod);
    procedure SetDataset(const Value: TJanuaJsonDacDataset);
    procedure SetResourceName(const Value: string);
    procedure SetParams(const Value: TJanuaParams);
  protected
    function InternalActivate: boolean; override;
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    procedure OpenDataset;
    procedure Refresh;
    function ApplyUpdates: boolean;
  published
    property JanuaCloudConnection: TJanuaCloudConnection read FJanuaCloudConnection
      write SetJanuaCloudConnection;
    property Method: TJanuaHttpMethod read FMethod write SetMethod;
    property ResourceName: string read FResourceName write SetResourceName;
    property Params: TJanuaParams read FParams write SetParams;
  end;

type
  TJanuaJsonDACResource = class(TJanuaCloudComponent)
  private
    FJsonDACDatasets: TDictionary<string, TJanuaJsonDacDataset>;
  protected
    procedure SetFJsonDACDatasets(FJsonDACDatasets: TDictionary<string, TJanuaJsonDacDataset>);
  public
    procedure LoadFromJson;
    function AsJson: string;
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
  published
    property JsonDACDatasets: TDictionary<string, TJanuaJsonDacDataset> read FJsonDACDatasets
      write SetFJsonDACDatasets;
  end;

Type

  TJanuaRecordAddresses = TArray<TJanuaRecordAddress>;

  TJanuaMapComponent = class(TJanuaCloudComponent)
  private
    FAddress: string;
    FAddressText: TStrings;
  strict protected
    FLat: string;
    FLng: string;
    FFoundAddress: TJanuaRecordAddress;
    FInputAddress: TJanuaRecordAddress;
    FCoordinates: TJanuaCoordinates;
    FAddressList: TJanuaRecordAddresses;
    FSearchAddress: string;
  protected
    procedure SetAddress(const Value: string);
    procedure SetCoordinates(const Value: TJanuaCoordinates);
    function getCount: integer;
    procedure SetAddressText(const Value: TStrings);
    procedure SetFoundAddress(const Value: TJanuaRecordAddress);
    procedure SetInputAddress(const Value: TJanuaRecordAddress);
    function GetLat: string;
    function GetLng: string;
    function GetSearchAddress: string;
    function GetAddress: string;
    function GetAddressList: TJanuaRecordAddresses;
    function GetAddressText: TStrings;
    function GetFoundAddress: TJanuaRecordAddress;
    function GetInputAddress: TJanuaRecordAddress;
    function GetFCoordinates: TJanuaCoordinates;
    procedure SetSearchAddress;
    procedure Prepare;
    function InternalActivate: boolean; override;
    procedure AddAddress(aObject: TJsonObject);
  public
    function GetCoordinates: boolean; overload; virtual;
    function GetCoordinates(const aAddress: TJanuaRecordAddress): boolean; overload; virtual;
    function GetCoordinates(const sAddress: string): boolean; overload; virtual;
    function GetSuggestions: boolean; virtual;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Clear;
  public
    property Coordinates: TJanuaCoordinates read GetFCoordinates write SetCoordinates;
    property FoundAddress: TJanuaRecordAddress read GetFoundAddress write SetFoundAddress;
    property InputAddress: TJanuaRecordAddress read GetInputAddress write SetInputAddress;
  published
    property Address: string read GetAddress write SetAddress;
    property Count: integer read getCount;
    property AddressText: TStrings read GetAddressText write SetAddressText stored False;
  end;

Type
  TJanuaGoogleUrl = (jguSuggestions, jguCoordinates);

type
  TJanuaCustomGeoCoding = class abstract(TJanuaMapComponent)
  protected
    function GetGoogleKey: string; virtual; abstract;
    function GetGoogleUrlType: TJanuaGoogleUrl; virtual; abstract;
    procedure SetGoogleKey(const Value: string); virtual; abstract;
    procedure SetGoogleUrlType(const Value: TJanuaGoogleUrl); virtual; abstract;
  published
    property GoogleKey: string read GetGoogleKey write SetGoogleKey;
    property GoogleUrlType: TJanuaGoogleUrl read GetGoogleUrlType write SetGoogleUrlType
      default jguSuggestions;
  end;

type
  TJanuaRSSReader = class(TJanuaCoreComponent)
  private
    FFeeds: TJanuaFeeds;
    FRSSTags: TJanuaRSSTags;
    FFeedURL: string;
    FXmlText: TStringList;
    FFeed_ID: int64;
    FXMLDoc: TXMLDocument;
    procedure SetFeeds(const Value: TJanuaFeeds);
    procedure SetRSSTags(const Value: TJanuaRSSTags);
    procedure SetFeed_ID(const Value: int64);
    procedure SetFeedURL(const Value: string);
    procedure SetXmlText(const Value: TStringList);
    procedure SetXMLDoc(const Value: TXMLDocument);
    procedure SetChannelNode(const Value: string);
    procedure SetTagImage(const Value: string);
    procedure SetTagImageHeigth(const Value: string);
    procedure SetTagImageLink(const Value: string);
    procedure SetTagImageTitle(const Value: string);
    procedure SetTagImageUrl(const Value: string);
    procedure SetTagImageWidth(const Value: string);
  strict protected
    function RefreshFeeds: boolean;
    function UpdateFeeds: boolean;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  public
    property RSSTags: TJanuaRSSTags read FFeeds.RSSTags write SetRSSTags;
    property Feeds: TJanuaFeeds read FFeeds write SetFeeds;
  published
    property FeedURL: string read FFeedURL write SetFeedURL;
    property XmlText: TStringList read FXmlText write SetXmlText;
    property Feed_ID: int64 read FFeed_ID write SetFeed_ID;
    property XMLDoc: TXMLDocument read FXMLDoc write SetXMLDoc;
    property ChannelNode: string read FFeeds.RSSTags.Channel write SetChannelNode;
    property TagImage: string read FFeeds.RSSTags.Image.Image write SetTagImage;
    property TagImageUrl: string read FFeeds.RSSTags.Image.Url write SetTagImageUrl;
    property TagImageTitle: string read FFeeds.RSSTags.Image.Title write SetTagImageTitle;
    property TagImageLink: string read FFeeds.RSSTags.Image.Link write SetTagImageLink;
    property TagImageWidth: string read FFeeds.RSSTags.Image.Width write SetTagImageWidth;
    property TagImageHeigth: string read FFeeds.RSSTags.Image.Heigth write SetTagImageHeigth;
  end;

type
  TJanuaMapComponentClass = class of TJanuaMapComponent;
  TJanuaCustomGeoCodingClass = class of TJanuaCustomGeoCoding;

type
  TJanuaCloudFactory = class
    // Janua Street Maps
  private
    class var FJanuaStreetMapClass: TJanuaMapComponentClass;
  public
    class function CreateJanuaStreetMap(const AOwner: TComponent): TJanuaMapComponent;
  public
    class Property JanuaStreetMapClass: TJanuaMapComponentClass read FJanuaStreetMapClass
      write FJanuaStreetMapClass;
    // Janua Google Maps
  private
    class var FJanuaCustomGeoCodingClass: TJanuaCustomGeoCodingClass;
  public
    class function CreateJanuaGoogleGeoCoding(const AOwner: TComponent): TJanuaCustomGeoCoding;
  public
    class Property JanuaGoogleGeoCodingClass: TJanuaCustomGeoCodingClass read FJanuaCustomGeoCodingClass
      write FJanuaCustomGeoCodingClass;
    //
  end;

  // function Normalize(const aAddress: string; convercommas: boolean = true): string;
function LoadTextFileFromUrl(const AURL: string; aFileName: string): string;

implementation

uses Janua.Core.RESTCloudDatamodule, System.Threading, System.Diagnostics,
  System.SyncObjs, Janua.Core.Functions, Janua.Core.JSON, Janua.Application.Framework;

function LoadTextFileFromUrl(const AURL: string; aFileName: string): string;
var
  aStream: TMemoryStream;
  aStrings: TStrings;
  LNetHttpRequest: TNetHTTPRequest;
  LNetHttpClient: TNetHttpClient;
begin
  // Assert(Assigned(NetHttpRequest), 'TJanuaFMXListNews.LoadImageFromStream NetHttpRequest not set');
  LNetHttpClient := TNetHttpClient.Create(nil);
  try
    LNetHttpRequest := TNetHTTPRequest.Create(nil);
    LNetHttpRequest.Client := LNetHttpClient;
    try
      aStream := TMemoryStream.Create;
      try
        LNetHttpRequest.Get(AURL + '/' + aFileName, aStream);
        aStream.Position := 0;
        aStrings := TStringList.Create;
        try
          aStrings.LoadFromStream(aStream);
          Result := aStrings.Text;
        finally
          aStrings.Free;
        end;
      finally
        aStream.Free;
      end;
    finally
      LNetHttpRequest.Free;
    end;
  finally
    LNetHttpClient.Free;
  end;
end;

{ TJanuaCloudComponent }

constructor TJanuaCloudComponent.Create(AOwner: TComponent);
begin
  inherited;
  // self.FCoordinates := TJanuaCoordinates.Create;
  self.FResponseText := TStringList.Create;
  FHTTPClient := THTTPClient.Create;
  FAccept := TJanuaMime.Create;
  FISOCountry := TJanuaISOCountry.Create(self, TJanuaIsoCountries.jicItalia);
  FIsoLanguage := TJanuaISOLanguages.Create(self, TJanuaLanguage.jlaItalian);
end;

destructor TJanuaCloudComponent.Destroy;
begin
  self.FResponseText.Free;
  self.FHTTPClient.Free;
  self.FAccept.Free;
  inherited;
end;

function TJanuaCloudComponent.GetStringUrl: string;
begin
  Result := FUrl;
end;

function TJanuaCloudComponent.OpenURL(const AURL: string): string;
var
  AResponse: IHTTPResponse;
begin
  FNetHTTPRequest.Accept := FAccept.MimeString;
  FNetHTTPRequest.MethodString := 'GET';

  if AURL = '' then
    FNetHTTPRequest.Url := self.GetStringUrl
  else
    FNetHTTPRequest.Url := AURL;
  AResponse := FNetHTTPRequest.Execute();

{$IFDEF MSWINDOWS}
  Result := AResponse.ContentAsString(TEncoding.UTF8);
{$ELSE}
  Result := AResponse.ContentAsString();
{$ENDIF MSWINDOWS}
end;

function TJanuaCloudComponent.GetUrl: string;
begin

end;

function TJanuaCloudComponent.GetUrlResponse: boolean;
var
  lURL: string;
begin
  // {$IFDEF mswindows}
  // self.FResponseText.Text := Janua.Core.Sockets.OpenUrlIndy(FUrl, self.FMethod);
  // {$ELSE}
  Result := False;
  try
    FResponseText.Clear;
{$IFNDEF FPC}
    lURL := string(GetStringUrl);
    if not Assigned(FNetHTTPRequest) then
    begin
{$IFDEF MSWINDOWS}
      // property ResponseString: UTF8String read FResponseString write SetResponseString;
      FResponseString := System.UTF8String(OpenUrlDelphi(lURL, nil, FAccept, FMethod));
      FResponseText.Text := UTF8ToString(FResponseString);
{$ELSE}
      // property ResponseString: string read FResponseString write SetResponseString;
      FResponseString := OpenUrlDelphi(lURL, nil, FAccept, FMethod);
      FResponseText.Text := FResponseString;
{$ENDIF}
    end
    else
    begin
      FResponseString := System.UTF8String(OpenURL(lURL));
      FResponseText.Text := System.string(FResponseString);
    end;
{$ELSE}
    self.FResponseText.Text := Janua.Core.Sockets.OpenUrlIndy(FUrl, self.FMethod);
{$ENDIF FPC}
    Result := FResponseText.Text <> '';
  except
    on e: exception do
    begin
      self.WriteError('GetJsonResponse', 'Error Getting Url: ' + self.GetStringUrl + ' - Mime: ' +
        JanuaMimeString[FAccept.MimeType] + ' - Method: ' + JanuaHttpMethodString[self.FMethod], e, False);
      raise
    end;
  end;
end;

function TJanuaCloudComponent.GetAccept: TJanuaMime;
begin
  Result := FAccept
end;

function TJanuaCloudComponent.GetHTTPClient: THTTPClient;
begin
  Result := FHTTPClient
end;

function TJanuaCloudComponent.GetISOCountry: TJanuaISOCountry;
begin
  Result := FISOCountry
end;

function TJanuaCloudComponent.GetIsoLanguage: TJanuaISOLanguages;
begin
  Result := FIsoLanguage
end;

function TJanuaCloudComponent.GetJsonResponse(const AURL: string; Params: TJanuaParams;
  aMethod: TJanuaHttpMethod = jhmNone; aProtocol: TJanuaProtocol = jptNone): boolean;
begin
  self.FInternalParams.Assign(Params);
  Result := GetJsonResponse(AURL, aMethod, aProtocol);
end;

function TJanuaCloudComponent.GetJsonResponse(const AURL: string; aMethod: TJanuaHttpMethod = jhmNone;
  aProtocol: TJanuaProtocol = jptNone): boolean;
begin
  FProtocol := aProtocol;
  FMethod := aMethod;
  FUrl := AURL;
  Result := GetJsonResponse;
end;

function TJanuaCloudComponent.GetJsonResponse: boolean;
begin
  try
    Result := False;
    FAccept.MimeType := TJanuaMimeType.jmtApplicationJson;
    {
      sTestUrl := StringReplace(self.FUrl, 'https://', '', [rfIgnoreCase, rfReplaceAll]);
      sTestUrl := StringReplace(sTestUrl, 'http://', '', [rfIgnoreCase, rfReplaceAll]);

      if Pos('?', sTestUrl) > 0 then
      sTestUrl := Copy(self.FUrl, 1, Pos('?', sTestUrl) - 1);

      if Pos('/', sTestUrl) > 0 then
      sTestUrl := Copy(sTestUrl, 1, Pos('/', sTestUrl) - 1);

      if sTestUrl <> ''  then Result := Janua.Core.Functions.Ping(sTestUrl)  else Result := True;
    }

    Result := GetUrlResponse;
    // {$ENDIF mswindows}
  except
    on e: exception do
    begin
      self.WriteError('GetJsonResponse', 'Error Getting Url: ' + self.FUrl, e, False);
      raise
    end;
  end;

end;

function TJanuaCloudComponent.GetResponse: boolean;
begin
  try
    Result := False;
    self.FAccept.MimeType := TJanuaMimeType.jmtUnknown;
    {
      sTestUrl := StringReplace(self.FUrl, 'https://', '', [rfIgnoreCase, rfReplaceAll]);
      sTestUrl := StringReplace(sTestUrl, 'http://', '', [rfIgnoreCase, rfReplaceAll]);

      if Pos('?', sTestUrl) > 0 then
      sTestUrl := Copy(self.FUrl, 1, Pos('?', sTestUrl) - 1);

      if Pos('/', sTestUrl) > 0 then
      sTestUrl := Copy(sTestUrl, 1, Pos('/', sTestUrl) - 1);

      if sTestUrl <> ''  then Result := Janua.Core.Functions.Ping(sTestUrl)  else Result := True;
    }

    Result := GetUrlResponse;
    // {$ENDIF mswindows}
  except
    on e: exception do
    begin
      self.WriteError('GetJsonResponse', 'Error Getting Url: ' + self.FUrl, e, False);
      raise
    end;
  end
end;

function TJanuaCloudComponent.GetMethod: TJanuaHttpMethod;
begin
  Result := FMethod;
end;

function TJanuaCloudComponent.GetNetHTTPRequest: TNetHTTPRequest;
begin
  Result := FNetHTTPRequest;
end;

function TJanuaCloudComponent.GetProtocol: TJanuaProtocol;
begin
  Result := FProtocol;
end;

function TJanuaCloudComponent.GetResponse(const AURL: string; aMethod: TJanuaHttpMethod;
  aProtocol: TJanuaProtocol): boolean;
begin
  self.FProtocol := aProtocol;
  self.FMethod := aMethod;
  self.FUrl := AURL;
  Result := self.GetResponse;
end;

{$IF defined(MSWINDOWS)}

function TJanuaCloudComponent.GetResponseString: UTF8String;
{$ELSE}

function TJanuaCloudComponent.GetResponseString: string;
{$ENDIF}
begin
  Result := FResponseString;
end;

function TJanuaCloudComponent.GetResponseText: TStrings;
begin
  Result := FResponseText;
end;

function TJanuaCloudComponent.GetRSSREsponse(const AURL: string; aMethod: TJanuaHttpMethod;
  aProtocol: TJanuaProtocol): boolean;
begin
  self.FProtocol := aProtocol;
  self.FMethod := aMethod;
  self.FUrl := AURL;
  Result := self.GetRSSREsponse;
end;

function TJanuaCloudComponent.GetRSSREsponse: boolean;
begin
  try
    Result := False;
    self.FAccept.MimeType := TJanuaMimeType.jmtRSSXML;
    Result := GetUrlResponse;
  except
    on e: exception do
    begin
      self.WriteError('GetJsonResponse', 'Error Getting Url: ' + self.FUrl, e, False);
      raise
    end;
  end;
end;

function TJanuaCloudComponent.GetXmlResponse(const AURL: string; Params: TJanuaParams;
  aMethod: TJanuaHttpMethod = jhmNone; aProtocol: TJanuaProtocol = jptNone): boolean;
begin
  self.FInternalParams.Assign(Params);
  Result := GetXmlResponse(AURL, aMethod, aProtocol);
end;

function TJanuaCloudComponent.GetXmlResponse: boolean;
begin
  try
    Result := False;
    self.FAccept.MimeType := TJanuaMimeType.jmtApplicationXml;
    {
      sTestUrl := StringReplace(self.FUrl, 'https://', '', [rfIgnoreCase, rfReplaceAll]);
      sTestUrl := StringReplace(sTestUrl, 'http://', '', [rfIgnoreCase, rfReplaceAll]);

      if Pos('?', sTestUrl) > 0 then
      sTestUrl := Copy(self.FUrl, 1, Pos('?', sTestUrl) - 1);

      if Pos('/', sTestUrl) > 0 then
      sTestUrl := Copy(sTestUrl, 1, Pos('/', sTestUrl) - 1);

      if sTestUrl <> ''  then Result := Janua.Core.Functions.Ping(sTestUrl)  else Result := True;
    }

    Result := GetUrlResponse;
    // {$ENDIF mswindows}
  except
    on e: exception do
    begin
      self.WriteError('GetJsonResponse', 'Error Getting Url: ' + self.FUrl, e, False);
      raise
    end;
  end;
end;

function TJanuaCloudComponent.GetXmlResponse(const AURL: string; aMethod: TJanuaHttpMethod = jhmNone;
  aProtocol: TJanuaProtocol = jptNone): boolean;
begin
  self.FAccept.MimeType := TJanuaMimeType.jmtApplicationXml;
  self.FProtocol := aProtocol;
  self.FMethod := aMethod;
  self.FUrl := AURL;
  Result := self.GetJsonResponse;
end;

function TJanuaCloudComponent.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        // Insert code Here ........
      end;
    except
      on e: exception do
        RaiseLocalException('TJanuaCloudComponent.InternalActivate', e);
    end;
end;

{$IF defined(MSWINDOWS)}

procedure TJanuaCloudComponent.SetResponseString(const Value: UTF8String);
begin
  FResponseString := Value;
end;
{$ELSE}

procedure TJanuaCloudComponent.SetResponseString(const Value: string);
begin
  FResponseString := Value;
end;
{$ENDIF}

procedure TJanuaCloudComponent.SetResponseText(const Value: TStrings);
begin
  self.FResponseText := Value;
end;

function TJanuaCloudComponent.getLanguage: TJanuaLanguage;
begin
  if Assigned(FIsoLanguage) then
    Result := self.FIsoLanguage.Language
  else
    Result := TJanuaLanguage.jlaNone;
end;

function TJanuaCloudComponent.getLanguageCode: string;
begin
  Result := self.FIsoLanguage.Code;
end;

procedure TJanuaCloudComponent.SetInternalParams(const Value: TJanuaParams);
begin
  FInternalParams := Value;
end;

procedure TJanuaCloudComponent.SetISOCountry(const Value: TJanuaISOCountry);
begin
  FISOCountry := Value;
end;

procedure TJanuaCloudComponent.SetIsoLanguage(const Value: TJanuaISOLanguages);
begin
  FIsoLanguage := Value;
end;

procedure TJanuaCloudComponent.SetLanguageCode(const Value: string);
begin
  if Assigned(self.FIsoLanguage) then
    self.FIsoLanguage.Code := Value;
end;

procedure TJanuaCloudComponent.SetMethod(const Value: TJanuaHttpMethod);
begin
  FMethod := Value;
end;

procedure TJanuaCloudComponent.SetNetHTTPRequest(const Value: TNetHTTPRequest);
begin
  FNetHTTPRequest := Value;
end;

{ TJanuaMapComponent }

constructor TJanuaMapComponent.Create(AOwner: TComponent);
begin
  self.FAddressText := TStringList.Create;
  self.FLanguage := TJanuaLanguage.jlaItalian;
  inherited;
end;

destructor TJanuaMapComponent.Destroy;
begin
  FAddressText.Free;
  inherited;
end;

function TJanuaMapComponent.GetCoordinates(const aAddress: TJanuaRecordAddress): boolean;
begin
  self.FAddress := aAddress.AddressFull;
  self.FSearchAddress := aAddress.AddressFull;
  Result := self.GetCoordinates;
end;

function TJanuaMapComponent.GetAddress: string;
begin
  Result := FAddress;
end;

function TJanuaMapComponent.GetAddressList: TJanuaRecordAddresses;
begin
  Result := FAddressList;
end;

function TJanuaMapComponent.GetAddressText: TStrings;
begin
  Result := FAddressText;
end;

function TJanuaMapComponent.GetCoordinates(const sAddress: string): boolean;
begin
  self.FAddress := sAddress;
  self.FSearchAddress := sAddress;
  Result := self.GetCoordinates;
end;

function TJanuaMapComponent.GetCoordinates: boolean;
begin
  Result := False;
  try
    Prepare;
    { TODO : Implement TJanuaMapComponent.GetCoordinates from TJanuaRecordAddress }
  except
    on e: exception do
      RaiseLocalException('GetCoordinates', e);
  end;

end;

function TJanuaMapComponent.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := GetCoordinates;
      end;
    except
      on e: exception do
        RaiseLocalException('TJanuaMapComponent.InternalActivate', e);
    end;
end;

procedure TJanuaMapComponent.Prepare;
begin
  SetSearchAddress;
  self.FCoordinates.Latitude := 0;
  self.FCoordinates.Longitude := 0;
  self.FLat := '';
  self.FLng := '';
  // Load JSON data from the body request to the dataset using
  // the TDataSet class helpers provided by the open source
  // library DelphiMVCFramework project
  SetLength(self.FAddressList, 0);
  // self.FName := Value.GetValue('name').Value;
  // self.FSlug := Value.GetValue('slug').Value;
  self.FAddressText.Clear;
  // self.FResponseText.Text := StringReplace(self.FResponseText.Text, '[', '', []);
  // self.FResponseText.Text := StringReplace(self.FResponseText.Text, ']', '', []);
end;

procedure TJanuaMapComponent.SetSearchAddress;
begin
  FSearchAddress := NormalizeOpenStreetAddress(FAddress, true);
  WriteLog('TJanuaMapComponent.SetSearchAddress: ' + FSearchAddress);
end;

function TJanuaMapComponent.getCount: integer;
begin
  Result := Length(self.FAddressList);
end;

function TJanuaMapComponent.GetFCoordinates: TJanuaCoordinates;
begin
  Result := FCoordinates;
end;

function TJanuaMapComponent.GetFoundAddress: TJanuaRecordAddress;
begin
  Result := FFoundAddress;
end;

function TJanuaMapComponent.GetInputAddress: TJanuaRecordAddress;
begin
  Result := FInputAddress;
end;

function TJanuaMapComponent.GetLat: string;
begin
  Result := FLat;
end;

function TJanuaMapComponent.GetLng: string;
begin
  Result := FLng;
end;

function TJanuaMapComponent.GetSearchAddress: string;
begin
  Result := FSearchAddress;
end;

function TJanuaMapComponent.GetSuggestions: boolean;
begin
  Prepare;
  Result := False;
end;

procedure TJanuaMapComponent.SetAddress(const Value: string);
begin
  self.FAddress := Value;
  self.SetSearchAddress;
end;

procedure TJanuaMapComponent.SetAddressText(const Value: TStrings);
begin
  FAddressText := Value;
end;

procedure TJanuaMapComponent.SetCoordinates(const Value: TJanuaCoordinates);
begin
  self.FCoordinates := Value;
end;

procedure TJanuaMapComponent.SetFoundAddress(const Value: TJanuaRecordAddress);
begin
  FFoundAddress := Value;
end;

procedure TJanuaMapComponent.SetInputAddress(const Value: TJanuaRecordAddress);
begin
  FInputAddress := Value;
end;

procedure TJanuaMapComponent.Clear;
begin
  SetLength(self.FAddressList, 0);
  self.FAddressText.Clear;
end;

procedure TJanuaMapComponent.AddAddress(aObject: TJsonObject);
begin
  if Assigned(aObject) then
  begin
    SetLength(self.FAddressList, self.Count + 1);
    self.FAddressList[self.Count - 1].Address := aObject.GetValue('description').Value;
    self.AddressText.Add(self.FAddressList[self.Count - 1].Address)
  end;
end;

{ TJanuaJsonDACRemoteDS }

function TJanuaJsonDACRemoteDS.ApplyUpdates: boolean;
begin
  Result := False;
  { TODO : Implement TJanuaJsonDACRemoteDS.ApplyUpdates or Replace it }
end;

constructor TJanuaJsonDACRemoteDS.Create(AOwner: TComponent);
begin
  inherited;
  FParams := TJanuaParams.Create;
end;

destructor TJanuaJsonDACRemoteDS.Destroy;
begin
  FParams.Free;
  inherited;
end;

function TJanuaJsonDACRemoteDS.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited and Assigned(FJanuaCloudConnection);
      if Result then
      begin
        FJanuaCloudConnection.Activate;
        if FJanuaCloudConnection.Active then
        begin
          FJanuaCloudConnection.Method := TJanuaHttpMethod.jhmGet;
          if self.ResourceName = '' then
            raise exception.Create('TJanuaJsonDACRemoteDS.InternalActivate ResourceName not set ');
          self.LoadFromJson(self.FJanuaCloudConnection.GetJsonResult(self.ResourceName, self.FParams));
        end
        else
          Result := False;
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;

end;

procedure TJanuaJsonDACRemoteDS.OpenDataset;
begin
  self.Activate;
end;

procedure TJanuaJsonDACRemoteDS.Refresh;
begin
  self.FMemDataset.Close;
  self.FPostDataset.Close;
end;

procedure TJanuaJsonDACRemoteDS.SetDataset(const Value: TJanuaJsonDacDataset);
begin
  // FDataset := Value
end;

procedure TJanuaJsonDACRemoteDS.SetJanuaCloudConnection(const Value: TJanuaCloudConnection);
begin
  FJanuaCloudConnection := Value;
end;

procedure TJanuaJsonDACRemoteDS.SetMethod(const Value: TJanuaHttpMethod);
begin
  FMethod := Value;
end;

procedure TJanuaJsonDACRemoteDS.SetParams(const Value: TJanuaParams);
begin
  FParams := Value;
end;

procedure TJanuaJsonDACRemoteDS.SetResourceName(const Value: string);
begin
  FResourceName := Value;
end;

{ TJanuaJsonDACResource }

function TJanuaJsonDACResource.AsJson: string;
begin
  FJsonDACDatasets := TDictionary<string, TJanuaJsonDacDataset>.Create;
end;

constructor TJanuaJsonDACResource.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TJanuaJsonDACResource.Destroy;
begin
  FJsonDACDatasets.Free;
  inherited;
end;

procedure TJanuaJsonDACResource.LoadFromJson;
begin

end;

procedure TJanuaJsonDACResource.SetFJsonDACDatasets(FJsonDACDatasets
  : TDictionary<string, TJanuaJsonDacDataset>);
begin

end;

{ TJanuaCloudConnection }

constructor TJanuaCloudConnection.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TJanuaCloudConnection.Destroy;
begin
  inherited;
end;

function TJanuaCloudConnection.GetJsonResult(Resource: string; Params: TJanuaParams): string;
var
  AURL: string;
begin
  if not self.Active then
    self.Activate;

  if self.Active then
  begin
    if self.FMethod = TJanuaHttpMethod.jhmGet then
    begin
      FInternalParams.Assign(Params);
      FInternalResource := Resource;
      if self.FInternalParams.Count > 0 then
        AURL := self.ResourceUrl(Resource) + self.FInternalParams.AsHttpUrlGetString;
    end;
    if self.GetJsonResponse(AURL, self.FMethod, self.FProtocol) then
      Result := FResponseText.Text;
  end
  else
  begin
    Result := '';
  end;
end;

function TJanuaCloudConnection.GetXMLResult(Resource: string; Params: TJanuaParams): string;
begin

end;

function TJanuaCloudConnection.InternalActivate: boolean;
var
  AURL: string;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := Janua.Core.Functions.Ping(self.FServer);
        if Result then
        begin
          AURL := self.ResourceUrl('ping');
          Result := GetJsonResponse(AURL, TJanuaHttpMethod.jhmGet, self.FProtocol);
        end;
      end;
    except
      on e: exception do
        RaiseException('TJanuaCloudComponent.InternalActivate', e, self);
    end;
end;

function TJanuaCloudConnection.ResourceUrl(aResource: string): string;
begin
  Result := JanuaProtocolText[self.FProtocol] + '://' + self.FServer;
  if self.FPort <> JanuaProtocolPort[self.FProtocol] then
    Result := Result + ':' + self.FPort.ToString;

  Result := JanuaProtocolText[self.FProtocol] + '://' + self.FServer + '/janua/dac/' + aResource;
  self.FUrl := Result;
end;

procedure TJanuaCloudConnection.SetPort(const Value: integer);
begin
  FPort := Value;
end;

procedure TJanuaCloudConnection.SetServer(const Value: string);
begin
  self.FServer := Value;
  if self.FServer <> '' then
    self.FServerIP := GetIPFromHost(Value)
    // se server non è settato posso usare semplicemente l'IP
    // else
    // self.FServerIP := '0.0.0.0.';
end;

procedure TJanuaCloudConnection.SetServerIP(const Value: string);
begin
  self.FServerIP := Value;
end;

{ TJanuaRSSReader }

constructor TJanuaRSSReader.Create(AOwner: TComponent);
begin
  inherited;
  self.FXmlText := TStringList.Create;
  self.FFeed_ID := 0;
  self.FFeeds.Create(TJanuaRSSFeedType.jrtStandard);
end;

destructor TJanuaRSSReader.Destroy;
begin
  FXmlText.Free;
  inherited;
end;

function TJanuaRSSReader.RefreshFeeds: boolean;
var
  FHTTPClient: THTTPClient;
  LResponse: IHTTPResponse;
begin
  if not Assigned(FXMLDoc) then
    FXMLDoc := TXMLDocument.Create(self);
  try
    FHTTPClient := THTTPClient.Create;
    try
      // 'http://api.nubeetv.net/api/v1/rss?subsystem=80906'
      if self.FFeedURL = '' then
        raise exception.Create('RefreshFeeds: FFeedURL not set');
      LResponse := FHTTPClient.Get(self.FFeedURL, nil, nil);
      Result := LResponse.StatusCode = 200;
      if Result then
      begin
        self.FXmlText.Clear;
        self.FXmlText.Text := (LResponse.ContentAsString(nil));
        FXMLDoc.Xml.AddStrings(FXmlText);
      end;
    finally
      FHTTPClient.Free;
      FHTTPClient := nil;
    end;
  except
    on e: exception do
    begin
      self.WriteError('FFeedURL', 'Error: + e.Message', e, False);
      raise;
    end;
  end;

end;

procedure TJanuaRSSReader.SetFeeds(const Value: TJanuaFeeds);
begin
  FFeeds := Value;
end;

procedure TJanuaRSSReader.SetChannelNode(const Value: string);
begin
  FFeeds.RSSTags.Channel := Value;
end;

function TJanuaRSSReader.UpdateFeeds: boolean;
var
  StartItemNode: IXMLNode;
  ANode: IXMLNode;
  aFeed: TJanuaFeed;
begin
  // This was connected to a ListView can be Implemented by a Descendant Class on VCL-FMX-TURBOCOCOA or WEB.
  // lv.Clear;
  XMLDoc.Active := true;
  StartItemNode := XMLDoc.DocumentElement.ChildNodes.First.ChildNodes.FindNode('item');
  ANode := StartItemNode;
  repeat
    aFeed.Title := ANode.ChildNodes['title'].Text;
    aFeed.LinkUrl := ANode.ChildNodes['link'].Text;
    aFeed.Text := ANode.ChildNodes['description'].Text;
    ANode := ANode.NextSibling;
  until ANode = nil;
  Result := true;
end;

procedure TJanuaRSSReader.SetFeedURL(const Value: string);
begin
  FFeedURL := Value;
end;

procedure TJanuaRSSReader.SetFeed_ID(const Value: int64);
begin
  FFeed_ID := Value;
end;

procedure TJanuaRSSReader.SetRSSTags(const Value: TJanuaRSSTags);
begin
  FRSSTags := Value;
end;

procedure TJanuaRSSReader.SetTagImage(const Value: string);
begin
  FFeeds.RSSTags.Image.Image := Value;
end;

procedure TJanuaRSSReader.SetTagImageHeigth(const Value: string);
begin
  FFeeds.RSSTags.Image.Heigth := Value;
end;

procedure TJanuaRSSReader.SetTagImageLink(const Value: string);
begin
  FFeeds.RSSTags.Image.Link := Value;
end;

procedure TJanuaRSSReader.SetTagImageTitle(const Value: string);
begin
  FFeeds.RSSTags.Image.Title := Value;
end;

procedure TJanuaRSSReader.SetTagImageUrl(const Value: string);
begin
  FFeeds.RSSTags.Image.Url := Value;
end;

procedure TJanuaRSSReader.SetTagImageWidth(const Value: string);
begin
  FFeeds.RSSTags.Image.Width := Value;
end;

procedure TJanuaRSSReader.SetXMLDoc(const Value: TXMLDocument);
begin
  FXMLDoc := Value;
end;

procedure TJanuaRSSReader.SetXmlText(const Value: TStringList);
begin
  FXmlText := Value;
end;

{ TJanuaFacebookOuth }

constructor TJanuaFacebookOAuth.Create;
begin
  inherited;
  self.FJanuaFacebookUrl.Clear;
  self.FJsonObjectResponse := TJsonObject.Create;
end;

constructor TJanuaFacebookOAuth.Create(AOwner: TJanuaCloudComponent);
begin
  self.Create;
  self.FOwner := AOwner;
end;

destructor TJanuaFacebookOAuth.Destroy;
begin
  FJsonObjectResponse.Free;
  inherited;
end;

procedure TJanuaFacebookOAuth.Execute;
var
  rdm: TJanuaRestCloudDataModule;
begin
  {
    ResetRESTComponentsToDefaults;   // Ok

    RESTClient.BaseURL := edt_Facebook_BaseURL.Text;
    // 'https://graph.facebook.com/'

    RESTClient.Authenticator := OAuth2_Facebook;
    RESTRequest.Resource := edt_Facebook_ResourceURI.Text;
    // 'me?fields=name,email,birthday,friends.limit(10).fields(name)'

    OAuth2_Facebook.AccessToken := edt_FaceBook_AccessToken.Text;
    //'EAACeZAGLmOcIBAO5rBV7nGaqQZCXXpd5EIZCoAGho1SobvdTlBqZAtI7Uhd7rXjEwz9aOLc5n8LXOMpHs0ssMuWejneXqTeHb9AfAd1ZAYrFbiD0wHpSYT0wOWELQ7f429hWhKVjEuKUgmQyxoauOBkayQFV7jAl8iZAJ0ZCwmwO2U2UPbMEEHgrsUfIqGi553oMuZB12ekocwZDZD'


    RESTRequest.Execute;

    ResetRESTComponentsToDefaults;
    RESTClient.BaseURL := edt_Facebook_BaseURL.Text;
    RESTClient.Authenticator := OAuth2_Facebook;
    RESTRequest.Resource := edt_Facebook_ResourceURI.Text;
    OAuth2_Facebook.AccessToken := edt_FaceBook_AccessToken.Text;
    RESTRequest.Execute;
  }
  rdm := TJanuaRestCloudDataModule.Create(nil);
  // per eseguire l'operazione occorre che siano valorizzati ed attivato il Token e selezionati gli Scopes.
  try
    // rdm.ResetRESTComponentsToDefaults; // imposta i componenti a Default
    rdm.Facebook_BaseURL := self.BaseURL; // Facebook Base URL  'https://graph.facebook.com/'
    // rdm.RESTClient.BaseURL := self.BaseURL;
    // rdm.RESTClient.Authenticator := rdm.OAuth2_Facebook; // OAuth2_Facebook;
    rdm.Facebook_ResourceURI := self.GetResourceURI;
    // rdm.Facebook_ResourceURI := 'me?fields=name,email,birthday,friends.limit(10).fields(name)';
    // rdm.RESTRequest.Resource := 'me?fields=name,email,birthday,friends.limit(10).fields(name)';
    rdm.FaceBook_AccessToken := self.FToken;
    // rdm.OAuth2_Facebook.AccessToken := self.FToken; // EAACeZAGLmOcIBAO5rBV7nGaqQZCXXpd5EIZCoAGho1Sobv
    rdm.FacebookFetchData;
    self.JsonResponse := rdm.ResponseData;
    // self.FJsonObjectResponse := Janua.Core.Json.JsonParse(rdm.ResponseData);
    FResponseMessage := rdm.StatusLable; // messaggio di risposta dal Server ...........
    // FJsonResponse := rdm.
  finally
    rdm.Free;
    rdm := nil;
  end;
end;

function TJanuaFacebookOAuth.GetCodeURL: string;
begin
  Result := FJanuaFacebookUrl.GetCodeURL;
end;

function TJanuaFacebookOAuth.GetFacebookuURL: string;
begin
  Result := self.FJanuaFacebookUrl.GetUrl;
end;

function TJanuaFacebookOAuth.GetFBScopeTypes: TJanuaFBSCopeTypes;
begin
  Result := self.FJanuaFacebookUrl.Scopes;
end;

function TJanuaFacebookOAuth.GetResourceURI: string;
begin
  Result := self.FJanuaFacebookUrl.GetResourceURI;
end;

procedure TJanuaFacebookOAuth.HttpGetToken;
var
  aJson: TJsonObject;
  vUrl: string;
  vError: string;
begin
  try
    if Assigned(self.FOwner) then
    begin
      vUrl := self.FJanuaFacebookUrl.GetCodeURL;
      self.FJsonResponse := FOwner.OpenURL(vUrl);
      aJson := Janua.Core.JSON.JsonParse(self.FJsonResponse);

      if Pos('error', FJsonResponse) > 0 then
      begin
        Janua.Core.JSON.JsonValue(aJson, 'message', vError);
        raise exception.Create('Error get Token: ' + vError);
      end;

      Janua.Core.JSON.JsonValue(aJson, 'access_token', FToken);
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaFacebookOAuth.HttpGetToken', e);
    end;
  end;
end;

procedure TJanuaFacebookOAuth.OAuth2_Facebook_AccessTokenRedirect(const AURL: string;
  var DoCloseWebView: boolean);
begin
  self.SetTokenUrl(AURL);
  if (self.FToken <> '') or (self.Code <> '') then
    DoCloseWebView := true;
end;

procedure TJanuaFacebookOAuth.SetAppID(const Value: string);
begin
  FJanuaFacebookUrl.AppID := Value;
end;

procedure TJanuaFacebookOAuth.SetAppSecret(const Value: string);
begin
  FJanuaFacebookUrl.AppSecret := Value;
end;

procedure TJanuaFacebookOAuth.SetBaseURL(const Value: string);
begin
  FJanuaFacebookUrl.BaseURL := Value;
end;

procedure TJanuaFacebookOAuth.SetCode(const Value: string);
begin
  FJanuaFacebookUrl.Code := Value;
end;

procedure TJanuaFacebookOAuth.SetDestURL(const Value: string);
begin
  FJanuaFacebookUrl.DestURL := Value;
end;

procedure TJanuaFacebookOAuth.SetFBSCopeTypes(const Value: TJanuaFBSCopeTypes);
begin
  self.FJanuaFacebookUrl.Scopes := Value;
end;

procedure TJanuaFacebookOAuth.SetJanuaFacebookUrl(const Value: TJanuaFacebookUrl);
begin
  FJanuaFacebookUrl := Value;
end;

procedure TJanuaFacebookOAuth.SetJanuaFacebookUser(const Value: TJanuaFacebookUser);
begin
  FJanuaFacebookUser := Value;
end;

procedure TJanuaFacebookOAuth.SetJsonObjectResponse(const Value: TJsonObject);
begin
  FJsonObjectResponse := Value;
end;

procedure TJanuaFacebookOAuth.SetJsonResponse(const Value: string);
begin
  FJsonResponse := Value;
  if Value <> '' then
  begin
    FJsonObjectResponse := Janua.Core.JSON.JsonParse(Value);
    self.FJanuaFacebookUser.Create(FJsonObjectResponse);
  end;

end;

procedure TJanuaFacebookOAuth.SetOAuthURL(const Value: string);
begin
  FJanuaFacebookUrl.AuthURL := Value;
end;

procedure TJanuaFacebookOAuth.SetResponseMessage(const Value: string);
begin
  FResponseMessage := Value;
  if Value <> '' then
    self.JsonObjectResponse := Janua.Core.JSON.JsonParse(Value);
end;

procedure TJanuaFacebookOAuth.SetResponseType(const Value: TJanuaFBResponseType);
begin
  FJanuaFacebookUrl.ResponseType := Value;
end;

procedure TJanuaFacebookOAuth.SetToken(const Value: string);
begin
  FToken := Value;
end;

procedure TJanuaFacebookOAuth.SetTokenUrl(const Value: string);
var
  LATPos: integer;
  LToken: string;
  LIsToken, LIsCode: boolean;
begin
  LIsCode := False; // Variable Initialization to False;

  // resetto Token e Code prima di fare il parse della procedura.
  self.Token := '';
  self.Code := '';
  // imposto il valore di Token URL con l'url ricevuto. Opero se Value <> '';
  if Value <> '' then
  begin
    FTokenUrl := Value;
    LATPos := Pos('access_token=', Value);

    LIsToken := LATPos > 0;

    if LATPos = 0 then
    begin
      LATPos := Pos('code=', Value);
      LIsCode := LATPos > 0;
    end;

    if (LIsToken) then
    begin
      LToken := Copy(Value, LATPos + 13, Length(Value));
      if (Pos('&', LToken) > 0) then
      begin
        LToken := Copy(LToken, 1, Pos('&', LToken) - 1);
      end;
      self.FToken := LToken;
    end
    else if LIsCode then
    begin
      LToken := Copy(Value, LATPos + 5, Length(Value));
      if (Pos('&', LToken) > 0) then
      begin
        LToken := Copy(LToken, 1, Pos('&', LToken) - 1);
      end;

      if (Pos('#', LToken) > 0) then
      begin
        LToken := Copy(LToken, 1, Pos('#', LToken) - 1);
      end;

      self.Code := LToken;
    end;
  end;
end;

{ TJanuaCustomCloudOAuthForm }

procedure TJanuaCustomCloudOAuthForm.SetFacebookOAuth(const Value: TJanuaFacebookOAuth);
begin
  FFacebookOAuth := Value;
end;

{ TJanuaCloudFactory }

class function TJanuaCloudFactory.CreateJanuaGoogleGeoCoding(const AOwner: TComponent): TJanuaCustomGeoCoding;
begin
  Result := FJanuaCustomGeoCodingClass.Create(AOwner);
end;

class function TJanuaCloudFactory.CreateJanuaStreetMap(const AOwner: TComponent): TJanuaMapComponent;
begin
  Result := FJanuaStreetMapClass.Create(AOwner);
end;

end.
