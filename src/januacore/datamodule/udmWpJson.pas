unit udmWpJson;

interface

uses
  System.SysUtils, System.Classes, System.Json, REST.Types, REST.Client, REST.Authenticator.OAuth,
  Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TdmWpJson = class(TDataModule)
    RESTClient1: TRESTClient;
    OAuth2Authenticator1: TOAuth2Authenticator;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
  private
    { Private declarations }
  public
    { Public declarations }
    function CreatePost(const aToken, aTitle, aText: string): TJsonObject;
  end;

var
  dmWpJson: TdmWpJson;

implementation

{$R *.dfm}
{ TdmClientLNDWpJson }

function TdmWpJson.CreatePost(const aToken, aTitle, aText: string): TJsonObject;
begin
  self.OAuth2Authenticator1.AccessToken := aToken;
  self.RESTRequest1.Accept := 'application/json';
  self.RESTClient1.Accept := 'application/json';
  RESTClient1.BaseURL := 'http://lnd.ergomercator.com/index.php/wp-json/wp/v2/posts/';
  RESTRequest1.Method := TRestRequestMethod.rmPOST;
  RESTRequest1.Params.Clear;
  RESTRequest1.Resource := '{"title":"' + 'aTitle' + '"}';
  RESTRequest1.Execute;
  Result := RESTResponse1.JSONValue as TJsonObject;
end;

end.
