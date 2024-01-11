unit Janua.Http.Client.RTLNetClient;

interface

uses
  System.SysUtils, System.Classes, System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent
  // Janua
    , Janua.Http.Types, Janua.Http.Client.Intf, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Core.Classes;

type
  TdmNetHTTPClient = class(TDataModule)
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TJanuaCustomHttpRequest = class(TJanuaInterfacedObject, IJanuaInterface)
  private
    FHttpMethod: TJanuaHttpMethod;
    FBlob: TJanuaBlob;
    FBaseUrl: string;
    FContentType: TJanuaMime;
    function GetContentType: TJanuaMime;
    procedure SetContentType(const Value: TJanuaMime);
  protected
    function GetHttpMethod: TJanuaHttpMethod;
    function GetBlob: TJanuaBlob;
    procedure SetHttpMethod(const Value: TJanuaHttpMethod);
    procedure SetBlob(const Value: TJanuaBlob);
    function GetBaseUrl: string;
  public
    constructor Create; override;
    property Blob: TJanuaBlob read GetBlob write SetBlob;
    property HttpMethod: TJanuaHttpMethod read GetHttpMethod write SetHttpMethod;
    property ContentType: TJanuaMime read GetContentType write SetContentType;
  end;

  TIJanuaCustomHttpResponse = class(TJanuaInterfacedObject, IJanuaInterface)
  private
    FHttpMethod: TJanuaHttpMethod;
    FBlob: TJanuaBlob;
    FBaseUrl: string;
    FContentType: TJanuaMime;
    function GetContentType: TJanuaMime;
    procedure SetContentType(const Value: TJanuaMime);
  protected
    function GetHttpMethod: TJanuaHttpMethod;
    function GetBlob: TJanuaBlob;
    procedure SetHttpMethod(const Value: TJanuaHttpMethod);
    procedure SetBlob(const Value: TJanuaBlob);
    function GetBaseUrl: string;
  public
    property Blob: TJanuaBlob read GetBlob write SetBlob;
    property HttpMethod: TJanuaHttpMethod read GetHttpMethod write SetHttpMethod;
    property ContentType: TJanuaMime read GetContentType write SetContentType;
  end;

  TJanuaCustomNetHttpClient = class(TJanuaInterfacedObject, IJanuaInterface)
  private
    FBaseUrl: string;
  protected
    function GetBaseUrl: string;
    procedure SetBaseUrl(const Value: string);
  public
    property BaseUrl: string read FBaseUrl write SetBaseUrl;
  end;

var
  dmNetHTTPClient: TdmNetHTTPClient;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaNetHttpClient }

{ TJanuaCustomHttpRequest }

constructor TJanuaCustomHttpRequest.Create;
begin
  inherited;

end;

function TJanuaCustomHttpRequest.GetBaseUrl: string;
begin

end;

function TJanuaCustomHttpRequest.GetBlob: TJanuaBlob;
begin

end;

function TJanuaCustomHttpRequest.GetContentType: TJanuaMime;
begin
  Result := FContentType
end;

function TJanuaCustomHttpRequest.GetHttpMethod: TJanuaHttpMethod;
begin
  Result := FHttpMethod
end;

procedure TJanuaCustomHttpRequest.SetBlob(const Value: TJanuaBlob);
begin

end;

procedure TJanuaCustomHttpRequest.SetContentType(const Value: TJanuaMime);
begin

end;

procedure TJanuaCustomHttpRequest.SetHttpMethod(const Value: TJanuaHttpMethod);
begin

end;

{ TIJanuaCustomHttpResponse }

function TIJanuaCustomHttpResponse.GetBaseUrl: string;
begin

end;

function TIJanuaCustomHttpResponse.GetBlob: TJanuaBlob;
begin
  Result := FBlob
end;

function TIJanuaCustomHttpResponse.GetContentType: TJanuaMime;
begin
  Result := FContentType
end;

function TIJanuaCustomHttpResponse.GetHttpMethod: TJanuaHttpMethod;
begin
  Result := FHttpMethod;
end;

procedure TIJanuaCustomHttpResponse.SetBlob(const Value: TJanuaBlob);
begin
  FBlob := Value
end;

procedure TIJanuaCustomHttpResponse.SetContentType(const Value: TJanuaMime);
begin
  FContentType := Value;
end;

procedure TIJanuaCustomHttpResponse.SetHttpMethod(const Value: TJanuaHttpMethod);
begin

end;

{ TJanuaCustomNetHttpClient }

function TJanuaCustomNetHttpClient.GetBaseUrl: string;
begin
  Result := FBaseUrl
end;

procedure TJanuaCustomNetHttpClient.SetBaseUrl(const Value: string);
begin
  FBaseUrl := Value;
end;

end.
