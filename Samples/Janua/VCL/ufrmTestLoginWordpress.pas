unit ufrmTestLoginWordpress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client, REST.Authenticator.Simple,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, AdvMemo,
  advmjson;

type
  TForm2 = class(TForm)
    RESTClientBasic: TRESTClient;
    RESTRequestBasic: TRESTRequest;
    RESTResponseBasic: TRESTResponse;
    SimpleAuthenticatorBasic: TSimpleAuthenticator;
    PageControl1: TPageControl;
    tabBasicAuthentication: TTabSheet;
    Panel1: TPanel;
    edSiteUrl: TLabeledEdit;
    Panel2: TPanel;
    edResourceUrl: TLabeledEdit;
    edUsername: TLabeledEdit;
    edPassword: TLabeledEdit;
    memJsonJWTResponse: TAdvMemo;
    edJsonJWTDTO: TAdvMemo;
    btnTestJwt: TButton;
    pnlJwt: TPanel;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    RESTClient1: TRESTClient;
    RESTRequestValidate: TRESTRequest;
    RESTResponseValidate: TRESTResponse;
    procedure btnTestJwtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Janua.Core.Functions, Janua.Core.Json, DTO.WpJson;

{$R *.dfm}

procedure TForm2.btnTestJwtClick(Sender: TObject);
begin
  RESTRequestBasic.Execute;

  memJsonJWTResponse.Lines.Text := JsonPretty(RESTResponseBasic.Content);

  if RESTResponseBasic.StatusCode = 200 then
  begin
    var
    vTokenRoot := TWPJGetWebTokenRoot.Create;
    vTokenRoot.AsJson := RESTResponseBasic.Content;
    pnlJwt.Caption := vTokenRoot.JwtToken;
    edJsonJWTDTO.Lines.Text := vTokenRoot.AsJson;

    // Add headers
    RESTRequestValidate.Params.AddHeader('Authorization', 'Bearer ' + vTokenRoot.JwtToken);
    // FRESTRequest.Params.AddHeader(AUTHORIZATION, AToken);
    RESTRequestValidate.Params.ParameterByName('Authorization').Options := [poDoNotEncode];
    RESTRequestValidate.Execute;

    memJsonJWTResponse.Lines.Add('');
    memJsonJWTResponse.Lines.Add(RESTResponseValidate.Content);

    RESTRequestValidate.Params.Clear;
    // https://agenziabadantifinaleligure.it/wp-json/wp/v2/posts
    RESTClient1.BaseURL := 'https://agenziabadantifinaleligure.it/wp-json/wp/v2/posts';
    // Add headers
    RESTRequestValidate.Params.AddHeader('Authorization', 'Bearer ' + vTokenRoot.JwtToken);
    // FRESTRequest.Params.AddHeader(AUTHORIZATION, AToken);
    RESTRequestValidate.Params.ParameterByName('Authorization').Options := [poDoNotEncode];
    RESTRequestValidate.Execute;

    memJsonJWTResponse.Lines.Add('');
    memJsonJWTResponse.Lines.Add(JsonPretty(RESTResponseValidate.Content));
  end;

end;

end.
