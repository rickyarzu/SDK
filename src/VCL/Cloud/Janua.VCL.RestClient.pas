unit Janua.VCL.RestClient;

interface

uses
  // RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.IOUtils,
  System.NetEncoding, REST.Types, REST.Client, Data.Bind.Components, System.Net.Mime, System.Json,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.ComCtrls, VCL.Imaging.pngimage, VCL.Mask, VCL.Dialogs,
  VCL.StdCtrls,
  // DB
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, VCL.ExtCtrls,
  // Tms
  AdvMemo, DBAdvMemo, advmjson, Advmxml,
  // Rest
  RESTRequest4D,
  // Janua
  uJanuaVCLForm, AdvEdit, AdvEdBtn, AdvFileNameEdit,
  Data.Bind.ObjectScope,
  // INdy
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdServerIOHandler, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TMyCompletionHandlerWithError = TProc<TObject>;

  TfrmVCLRestClient = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    edtAccept: TLabeledEdit;
    Label1: TLabel;
    mmCustomBody: TMemo;
    btnDELETE: TButton;
    btnPUT: TButton;
    btnPOST: TButton;
    btnGET: TButton;
    lblStatusCode: TLabel;
    Label3: TLabel;
    pnlRequest: TPanel;
    edtBaseURL: TLabeledEdit;
    lbedToken: TLabeledEdit;
    pnlUsernamePassword: TPanel;
    mmBody: TDBAdvMemo;
    AdvXMLMemoStyler1: TAdvXMLMemoStyler;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    tabSQLQueryRequest: TTabSheet;
    lbedUserName: TLabeledEdit;
    lbedPassword: TLabeledEdit;
    rgAuthentication: TRadioGroup;
    pnlSQLButtons: TPanel;
    DBAdvMemo1: TDBAdvMemo;
    tabHeaders: TTabSheet;
    tabParams: TTabSheet;
    edFileName: TAdvFileNameEdit;
    lbFile: TLabel;
    ckbAddFile: TCheckBox;
    GetImage: TTabSheet;
    tabImage: TTabSheet;
    lbedImageUrl: TLabeledEdit;
    Image2: TImage;
    btnGetIndy: TButton;
    btnGetHttpClient: TButton;
    btnGetRestClient: TButton;
    RestClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    btnUpload: TButton;
    btnCurl: TButton;
    IdHTTP: TIdHTTP;
    OpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    btnIndy: TButton;
    btnTHttp: TButton;
    btnHttpClient: TButton;
    btnJsonParse: TButton;
    procedure btnGETClick(Sender: TObject);
    procedure btnPOSTClick(Sender: TObject);
    procedure btnPUTClick(Sender: TObject);
    procedure btnDELETEClick(Sender: TObject);
    procedure btnUploadClick(Sender: TObject);
    procedure btnCurlClick(Sender: TObject);
    procedure btnIndyClick(Sender: TObject);
    procedure btnTHttpClick(Sender: TObject);
    procedure btnHttpClientClick(Sender: TObject);
    procedure btnJsonParseClick(Sender: TObject);
  public
    procedure ManageFileAttach(const aRequest: IRequest);
    procedure ManageAuthentication(const aRequest: IRequest);
  end;

var
  frmVCLRestClient: TfrmVCLRestClient;

implementation

uses Janua.Application.Framework, System.Net.HttpClientComponent, Janua.Core.Json,
  System.Net.HttpClient, IdMultipartFormData, Janua.Core.Functions;

{$R *.dfm}

procedure TfrmVCLRestClient.btnCurlClick(Sender: TObject);
begin
  var
  vExec := AnsiString('curl -X POST -F file=@C:\Januaproject\Data\images\photo-1560521166-117ca72366bd.jpg ' +
    '-H "Authorization: Bearer H7YcKbPCuD648zcxffLlw4xFfPtRYaECgzdjYNMi" ' +
    'https://api.cloudflare.com/client/v4/accounts/d39f5796a2b5f87a11e9ea7c7b2cfac7/images/v1 ' +
    ' > output.json'); { 'C:\Januaproject\Data\images\' }

  { curlphoto.bat }

  TJanuaCoreOS.RunAndWait('C:\Januaproject\Data\images\curlphoto.bat', '');

  { TJanuaCoreOS.Exce(vExec, ''  ); }

end;

procedure TfrmVCLRestClient.btnDELETEClick(Sender: TObject);
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL(edtBaseURL.Text).Accept(edtAccept.Text).Delete;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

procedure TfrmVCLRestClient.btnGETClick(Sender: TObject);
var
  LResponse: IResponse;
  LRequest: IRequest;
begin
  LRequest := TRequest.New.BaseURL(edtBaseURL.Text).Accept(edtAccept.Text);

  ManageAuthentication(LRequest);

  LResponse := LRequest.Get;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

procedure TfrmVCLRestClient.btnHttpClientClick(Sender: TObject);
var
  LResponse: IHTTPResponse;
  WebClient: { THTTPClient } TNetHTTPClient;
  bytes: TBytes;
  aFile: String;
  postdata: TStringList;
  MimeMultiPart: TMultipartFormData;
begin
  // send image as base64
  bytes := TFile.ReadAllBytes('C:\Januaproject\Data\images\photo-1560521166-117ca72366bd.jpg');
  aFile := TNetEncoding.Base64.EncodeBytesToString(bytes);

  WebClient := TNetHTTPClient.Create(nil);
  try
    WebClient.ContentType := 'application/x-www-form-urlencoded';
    WebClient.CustomHeaders['Authorization'] := 'Bearer H7YcKbPCuD648zcxffLlw4xFfPtRYaECgzdjYNMi';

    { postdata := TStringList.Create; }
    MimeMultiPart := TMultipartFormData.Create;
    try
      { postdata.Add('file=' + aFile); }

      var
      aFileName := 'C:\Januaproject\Data\images\photo-1560521166-117ca72366bd.jpg';

      MimeMultiPart.AddFile('file', aFileName);

      // Post Usando Multipart Vediamo se va
      { function Post(const AURL: string; const ASource: TMultipartFormData; const AResponseContent: TStream = nil;
        const AHeaders: TNetHeaders = nil): IHTTPResponse; overload; }
      LResponse := WebClient.Post
        ('https://api.cloudflare.com/client/v4/accounts/d39f5796a2b5f87a11e9ea7c7b2cfac7/images/v1',
        MimeMultiPart);

      /// Post usando il File Name (non va)
      { function Post(const AURL: string; const ASourceFile: string; const AResponseContent: TStream = nil;
        const AHeaders: TNetHeaders = nil): IHTTPResponse; overload; }
      {
        LResponse := WebClient.Post
        ('https://api.cloudflare.com/client/v4/accounts/d39f5796a2b5f87a11e9ea7c7b2cfac7/images/v1',
        aFileName);
      }

      // Post usando la String List (non va)
      {
        LResponse := WebClient.Post
        ('https://api.cloudflare.com/client/v4/accounts/d39f5796a2b5f87a11e9ea7c7b2cfac7/images/v1', postdata,
        nil, TEncoding.UTF8, nil);
      }
    finally
      { postdata.Free; }
      MimeMultiPart.Free;
    end;
  finally
    WebClient.Free;
  end;

  mmBody.Lines.Text := LResponse.ContentAsString;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;

end;

procedure TfrmVCLRestClient.btnIndyClick(Sender: TObject);
begin

  { var
    vExec := AnsiString('curl -X POST -F file=@C:\Januaproject\Data\images\photo-1560521166-117ca72366bd.jpg ' +
    '-H "Authorization: Bearer H7YcKbPCuD648zcxffLlw4xFfPtRYaECgzdjYNMi" ' +
    'https://api.cloudflare.com/client/v4/accounts/d39f5796a2b5f87a11e9ea7c7b2cfac7/images/v1 ' +
    ' > output.json'); { 'C:\Januaproject\Data\images\' }

  { curlphoto.bat }

  (*
    Response := TStringStream.Create;
    try
    IdHTTP1.Post('https://api.cloudflare.com/client/v4/accounts/d39f5796a2b5f87a11e9ea7c7b2cfac7/images/v1',
    'C:\Januaproject\Data\images\photo-1560521166-117ca72366bd.jpg', Response);
    mmBody.Lines.LoadFromStream(Response);
    finally
    Response.Free;
    end;
  *)

  OpenSSL.SSLOptions.SSLVersions := [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];
  IdHTTP.IOHandler := OpenSSL;
  var
  Data := TIdMultipartFormDataStream.Create;
  var
  Response := TMemoryStream.Create;
  try
    try
      { with Data.AddFormField('file', 'photo-1560521166-117ca72366bd.jpg') do
        begin
        ContentType := '';
        ContentTransfer := '';
        end; }
      IdHTTP.Request.CustomHeaders.FoldLines := False;
      IdHTTP.Request.CustomHeaders.Add('Authorization:Bearer ' + 'H7YcKbPCuD648zcxffLlw4xFfPtRYaECgzdjYNMi');

      with Data.AddFile('file', 'C:\Januaproject\Data\images\photo-1560521166-117ca72366bd.jpg',
        'image/jpeg') do
        ContentTransfer := '';
      IdHTTP.Post('https://api.cloudflare.com/client/v4/accounts/d39f5796a2b5f87a11e9ea7c7b2cfac7/images/v1',
        Data, Response);
    finally
      mmBody.Lines.Text := StreamToString(Response);
      Response.Free;
    end;
  finally
    Data.Free;
  end;
end;

procedure TfrmVCLRestClient.btnJsonParseClick(Sender: TObject);
var
  lResult: TJsonObject;
  aDateTime: TDateTime;
  lID: TGUID;
  lVariants: TJsonArray;
  lFileName: string;
begin
  // JsonValue(aObject: TJsonObject; const aParam: string; var AValue: TJsonObject); overload;
  var
  aObject := JsonParse(mmBody.Lines.Text);
  var
  lTest := False;

  JSonValue(aObject, 'success', lTest);

  // System.DateUtils.ISO8601ToDate

  if lTest then
  begin
    JSonValue(aObject, 'result', lResult);
    JSonValue(lResult, 'uploaded', aDateTime);
    JSonValue(lResult, 'id', lID);
    JSonValue(lResult, 'variants', lVariants);
    lFileName := lVariants[0].Value;
  end;

  aObject.Free;
end;

procedure TfrmVCLRestClient.btnPOSTClick(Sender: TObject);
var
  LResponse: IResponse;
begin
  var
  LRequest := TRequest.New.BaseURL(edtBaseURL.Text).Accept(edtAccept.Text);

  ManageAuthentication(LRequest);

  if mmCustomBody.Lines.Text <> '' then
    LRequest.AddBody(mmCustomBody.Lines.Text);

  ManageFileAttach(LRequest);

  LResponse := LRequest.Post;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

procedure TfrmVCLRestClient.btnPUTClick(Sender: TObject);
var
  LResponse: IResponse;
begin
  LResponse := TRequest.New.BaseURL(edtBaseURL.Text).Accept(edtAccept.Text)
    .AddBody(mmCustomBody.Lines.Text).Put;

  mmBody.Lines.Text := LResponse.Content;
  lblStatusCode.Caption := LResponse.StatusCode.ToString;
end;

procedure TfrmVCLRestClient.btnTHttpClick(Sender: TObject);
var
  LResponse: IHTTPResponse;
  LClient: THTTPClient;
  LTmp: string;
begin
  { var
    vExec := AnsiString('curl -X POST -F file=@C:\Januaproject\Data\images\photo-1560521166-117ca72366bd.jpg ' +
    '-H "Authorization: Bearer H7YcKbPCuD648zcxffLlw4xFfPtRYaECgzdjYNMi" ' +
    'https://api.cloudflare.com/client/v4/accounts/d39f5796a2b5f87a11e9ea7c7b2cfac7/images/v1 ' +
    ' > output.json'); { 'C:\Januaproject\Data\images\'
  }

  LClient := THTTPClient.Create;

  var
  aFile := 'photo-1560521166-117ca72366bd.jpg';
  var
  aFileName := 'C:\Januaproject\Data\images\photo-1560521166-117ca72366bd.jpg';

  { if self.FAuthorization.AuthType <> TJanuaAuthType.None then }
  LClient.CustomHeaders['Authorization'] := 'Bearer H7YcKbPCuD648zcxffLlw4xFfPtRYaECgzdjYNMi';

  { FAccept.Extension := ExtractFileExt(aFileName); }

  // Content-Disposition: attachment; filename="acme.png
  { LTmp := 'attachment; filename="' + ExtractFileName(aFileName) + '"';
    LClient.CustomHeaders['Content-Disposition'] := LTmp; }

  { if FAccept.MimeType <> TJanuaMimeType.jmtUnknown then }
  LResponse := LClient.Post
    ('https://api.cloudflare.com/client/v4/accounts/d39f5796a2b5f87a11e9ea7c7b2cfac7/images/v1',
    aFileName, nil, []);
  // TNameValuePair.Create('content-type', JanuaMimeString[FMimeType])
  var
  lResult := LResponse.StatusCode = 200;
{$IFDEF MSWINDOWS}
  mmBody.Lines.Text := LResponse.ContentAsString(TEncoding.UTF8);
{$ELSE}
  mmBody.Lines.Text := LResponse.ContentAsString();
{$ENDIF MSWINDOWS}
end;

procedure TfrmVCLRestClient.btnUploadClick(Sender: TObject);
var
  FileStream: TFileStream;
begin
  RestClient.BaseURL := edtBaseURL.Text;
  RESTRequest.Method := rmPOST;
  { RESTRequest.Params.Clear; }

  // Aggiungere l'header Authorization
  { RESTRequest.AddParameter('Authorization', 'Bearer ' + lbedToken.Text, pkHTTPHEADER); }

  // Aggiungere il file al corpo della richiesta
  FileStream := TFileStream.Create(edFileName.Text, fmOpenRead or fmShareDenyWrite);
  try
    var
    aFileName := ExtractFileName(edFileName.Text);
    RESTRequest.AddParameter('file', aFileName, pkGetorPOST);
    RESTRequest.AddBody(FileStream, ctMULTIPART_FORM_DATA);
    RESTRequest.Execute;

    lblStatusCode.Caption := RESTResponse.StatusCode.ToString;

    mmBody.Lines.Text := RESTResponse.Content;

  finally
    FileStream.Free;
  end;

end;

procedure TfrmVCLRestClient.ManageAuthentication(const aRequest: IRequest);
begin
  case rgAuthentication.ItemIndex of
    1:
      aRequest.TokenBearer(lbedToken.Text);
    2:
      aRequest.BasicAuthentication(lbedUserName.Text, lbedPassword.Text);
  end;
end;

procedure TfrmVCLRestClient.ManageFileAttach(const aRequest: IRequest);
begin

  // Aggiungere il file al corpo della richiesta
  var
  FileStream := TFileStream.Create(edFileName.Text, fmOpenRead or fmShareDenyWrite);
  aRequest.AddFile(ExtractFileName(edFileName.Text), FileStream);
end;

end.
