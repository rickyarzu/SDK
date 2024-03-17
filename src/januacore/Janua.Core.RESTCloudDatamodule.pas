unit Janua.Core.RESTCloudDatamodule;

interface

uses
  System.Json, REST.Json, System.SysUtils, System.Classes, REST.Client, REST.Response.Adapter, Data.DB,
  REST.Authenticator.OAuth, REST.Authenticator.Basic, Data.Bind.Components, Data.Bind.ObjectScope, REST.Types,

  // Januaproject
  Janua.Core.Classes, Janua.Core.Classes.Social, Janua.Core.Functions, Janua.Core.Types,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TJanuaRestCloudDataModule = class(TDataModule)
    DataSource: TDataSource;
    OAuth1_FitBit: TOAuth1Authenticator;
    OAuth1_Twitter: TOAuth1Authenticator;
    HTTPBasic_DelphiPRAXiS: THTTPBasicAuthenticator;
    OAuth2_GoogleTasks: TOAuth2Authenticator;
    OAuth2_Facebook: TOAuth2Authenticator;
    OAuth2_Foursquare: TOAuth2Authenticator;
    OAuth2_Dropbox: TOAuth2Authenticator;
    RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter;
    RESTResponse: TRESTResponse;
    RESTRequest: TRESTRequest;
    RESTClient: TRESTClient;

    FDMemTable1: TFDMemTable;
    OAuth2_Wordpress: TOAuth2Authenticator;
    RESTClient1: TRESTClient;
    RESTResponse1: TRESTResponse;
    RESTRequest1: TRESTRequest;
    procedure DataModuleCreate(Sender: TObject);
    procedure RESTRequestAfterExecute(Sender: TCustomRESTRequest);
    procedure ClearMemos;
  private
    FFacebook_ResourceURI: string;
    FFaceBook_AccessToken: string;
    FFacebook_BaseURL: string;
    FJanuaTwitterUrl: TJanuaTwitterUrl;
    FJanuaFacebookUrl: TJanuaFacebookUrl;
    FResponseData: string;
    FStatusLabel: string;
    FResponseJsonValue: TJsonValue;
    { Private declarations }
    procedure SetFaceBook_AccessToken(const Value: string);
    procedure SetFacebook_BaseURL(const Value: string);
    procedure SetFacebook_ResourceURI(const Value: string);
    procedure SetJanuaTwitterUrl(const Value: TJanuaTwitterUrl);
    procedure SetJanuaFacebookUrl(const Value: TJanuaFacebookUrl);
    procedure SetResponseData(const Value: string);
    procedure SetStatusLable(const Value: string);
    procedure SetResponseJsonValue(const Value: TJsonValue);
  public
    procedure ResetRESTComponentsToDefaults;
    procedure FacebookFetchData;
    function CreateWordpessPost(const aToken, aTitle, aText: string): TJsonObject;
  public
    { Public declarations }
    property Facebook_BaseURL: string read FFacebook_BaseURL write SetFacebook_BaseURL;
    property Facebook_ResourceURI: string read FFacebook_ResourceURI write SetFacebook_ResourceURI;
    property FaceBook_AccessToken: string read FFaceBook_AccessToken write SetFaceBook_AccessToken;
    property JanuaTwitterUrl: TJanuaTwitterUrl read FJanuaTwitterUrl write SetJanuaTwitterUrl;
    property JanuaFacebookUrl: TJanuaFacebookUrl read FJanuaFacebookUrl write SetJanuaFacebookUrl;
    property ResponseData: string read FResponseData write SetResponseData;
    property StatusLable: string read FStatusLabel write SetStatusLable;
    property ResponseJsonValue: TJsonValue read FResponseJsonValue write SetResponseJsonValue;
  end;

var
  JanuaRestCloudDataModule: TJanuaRestCloudDataModule;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaRestCloudDataModule }

procedure TJanuaRestCloudDataModule.ClearMemos;
begin
  self.FResponseData := '';
  self.FStatusLabel := '';
end;

function TJanuaRestCloudDataModule.CreateWordpessPost(const aToken, aTitle, aText: string): TJsonObject;
begin
  OAuth2_Wordpress.AccessToken := aToken;
  RESTRequest1.Accept := 'application/json';
  RESTClient1.Accept := 'application/json';
  RESTClient1.BaseURL :=
    'http://lnd.ergomercator.com/index.php/wp-json/wp/v2/posts/';
  RESTRequest1.Method := TRestRequestMethod.rmPOST;
  RESTRequest1.Params.Clear;
  RESTRequest1.Resource := '{"title":"' + 'aTitle' + '"}';
  RESTRequest1.Execute;
  Result := RESTResponse1.JSONValue as TJsonObject;
end;

procedure TJanuaRestCloudDataModule.DataModuleCreate(Sender: TObject);
begin
  FJanuaFacebookUrl.Clear;
end;

procedure TJanuaRestCloudDataModule.FacebookFetchData;
begin
  ResetRESTComponentsToDefaults;
  RESTClient.BaseURL := Facebook_BaseURL;
  RESTClient.Authenticator := OAuth2_Facebook;
  RESTRequest.Resource := Facebook_ResourceURI;
  OAuth2_Facebook.AccessToken := FaceBook_AccessToken;
  RESTRequest.Execute;
end;

procedure TJanuaRestCloudDataModule.ResetRESTComponentsToDefaults;
begin
  /// reset all of the rest-components for a complete
  /// new request
  ///
  /// --> we do not clear the private data from the
  /// individual authenticators.
  ///
  RESTRequest.ResetToDefaults;
  RESTClient.ResetToDefaults;
  RESTResponse.ResetToDefaults;
  RESTResponseDataSetAdapter.ResetToDefaults;
end;

procedure TJanuaRestCloudDataModule.RESTRequestAfterExecute(Sender: TCustomRESTRequest);
begin
  ClearMemos;
  FStatusLabel := 'URI: ' + Sender.GetFullRequestURL + ' Execution time: ' +
    IntToStr(Sender.ExecutionPerformance.TotalExecutionTime) + 'ms';
  if assigned(RESTResponse.JSONValue) then
  begin
    FResponseData := RESTResponse.JSONValue.ToJSON; // TJson.Format(
    FResponseJsonValue := RESTResponse.JSONValue;
  end
  else
  begin
    FResponseData := RESTResponse.Content;
  end;
end;

procedure TJanuaRestCloudDataModule.SetFaceBook_AccessToken(const Value: string);
begin
  FFaceBook_AccessToken := Value;
end;

procedure TJanuaRestCloudDataModule.SetFacebook_BaseURL(const Value: string);
begin
  FFacebook_BaseURL := Value;
end;

procedure TJanuaRestCloudDataModule.SetFacebook_ResourceURI(const Value: string);
begin
  FFacebook_ResourceURI := Value;
end;

procedure TJanuaRestCloudDataModule.SetJanuaFacebookUrl(const Value: TJanuaFacebookUrl);
begin
  FJanuaFacebookUrl := Value;
end;

procedure TJanuaRestCloudDataModule.SetJanuaTwitterUrl(const Value: TJanuaTwitterUrl);
begin
  FJanuaTwitterUrl := Value;
end;

procedure TJanuaRestCloudDataModule.SetResponseData(const Value: string);
begin
  FResponseData := Value;
end;

procedure TJanuaRestCloudDataModule.SetResponseJsonValue(const Value: TJsonValue);
begin
  FResponseJsonValue := Value;
end;

procedure TJanuaRestCloudDataModule.SetStatusLable(const Value: string);
begin
  FStatusLabel := Value;
end;

end.
