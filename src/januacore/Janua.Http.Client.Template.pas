unit Janua.Http.Client.Template;

interface

uses
  System.SysUtils, System.Classes, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent,
  // Janua
  Janua.Http.Types, Janua.Http.Client.RTLNetClient, Janua.Http.Client.Intf, Janua.Core.Types,
  Janua.Core.Classes.Intf, Janua.Core.Classes;

type

  TJanuaHttpRequest = class(TJanuaInterfacedObject, IJanuaInterface)
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

  TIJanuaHttpResponse = class(TJanuaInterfacedObject, IJanuaInterface)
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

  TJanuaNetHttpClient = class(TJanuaInterfacedObject, IJanuaInterface)
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

{ TJanuaHttpRequest }

function TJanuaHttpRequest.GetBaseUrl: string;
begin
  Result := FBaseUrl
end;

function TJanuaHttpRequest.GetBlob: TJanuaBlob;
begin
  Result := FBlob
end;

function TJanuaHttpRequest.GetContentType: TJanuaMime;
begin
  Result := FContentType
end;

function TJanuaHttpRequest.GetHttpMethod: TJanuaHttpMethod;
begin
  Result := FHttpMethod
end;

procedure TJanuaHttpRequest.SetBlob(const Value: TJanuaBlob);
begin
  FBlob := Value
end;

procedure TJanuaHttpRequest.SetContentType(const Value: TJanuaMime);
begin
  FContentType := Value
end;

procedure TJanuaHttpRequest.SetHttpMethod(const Value: TJanuaHttpMethod);
begin
  FHttpMethod := Value
end;

{ TIJanuaHttpResponse }

function TIJanuaHttpResponse.GetBaseUrl: string;
begin
  Result := FBaseUrl
end;

function TIJanuaHttpResponse.GetBlob: TJanuaBlob;
begin
  Result := FBlob
end;

function TIJanuaHttpResponse.GetContentType: TJanuaMime;
begin
  Result := FContentType
end;

function TIJanuaHttpResponse.GetHttpMethod: TJanuaHttpMethod;
begin
  Result := FHttpMethod
end;

procedure TIJanuaHttpResponse.SetBlob(const Value: TJanuaBlob);
begin
  FBlob := Value;
end;

procedure TIJanuaHttpResponse.SetContentType(const Value: TJanuaMime);
begin
  FContentType := Value
end;

procedure TIJanuaHttpResponse.SetHttpMethod(const Value: TJanuaHttpMethod);
begin
  FHttpMethod := Value;
end;

{ TJanuaNetHttpClient }

function TJanuaNetHttpClient.GetBaseUrl: string;
begin

end;

procedure TJanuaNetHttpClient.SetBaseUrl(const Value: string);
begin

end;

end.
