unit Janua.Intraweb.ServerController;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.System, Janua.Core.Classes,
  IWServerControllerBase, IWBaseForm, HTTPApp, IdURI, Janua.Intraweb.Classes,
  IW.Browser.Browser, IW.Browser.Other, IW.Browser.InternetExplorer,
  IW.Browser.Safari, IW.Browser.Chrome, IW.Browser.Firefox,
  IW.Browser.SearchEngine, IW.Browser.Android,
  IW.Browser.WebKit,
  IW.Browser.SafariMobile,
  // IW.Browser.OperaNext,
  //IW.Browser.Android  ,
  // to activate since version 14.0.46
  //  IW.Browser.Opera, IW.Browser.OperaMobile,  IW.Browser.ChromeMobile, IW.Browser.FirefoxMobile,
  // For OnNewSession Event
  IWApplication, IWAppForm, IW.HTTP.Request, IW.HTTP.Reply,
  Janua.Core.Params, Janua.Core.Http;


type
  TJanuaIntrawebHttpUrl = class(TComponent)
  private
    FRawHeaders: string;
    FRemoteAddr: string;
    FPathInfo: String;
    FHost: string;
    FUserAgent: String;
    FpostParams: TJanuaParamsReader;
    FgetParams: TJanuaParamsReader;
    FDomains: TJanuaDomains;
    procedure SetHost(const Value: string);
    procedure SetPathInfo(const Value: String);
    procedure SetRawHeaders(const Value: string);
    procedure SetRemoteAddr(const Value: string);
    procedure SetUserAgent(const Value: String);
    procedure SetgetParams(const Value: TJanuaParamsReader);
    procedure SetpostParams(const Value: TJanuaParamsReader);
  public
    procedure SetUrlParams(Request: THttpRequest);
    constructor Create(AOwner: TComponent); override;
  published
    property PathInfo: String read FPathInfo write SetPathInfo;
    property UserAgent: String read FUserAgent write SetUserAgent;
    property Host: string read FHost write SetHost;
    property RemoteAddr: string read FRemoteAddr write SetRemoteAddr;
    property RawHeaders: string read FRawHeaders write SetRawHeaders;
    property getParams: TJanuaParamsReader read FgetParams write SetgetParams;
    property postParams: TJanuaParamsReader read FpostParams write SetpostParams;
  end;

implementation

{ TJanuaIntrawebHttpUrl }

constructor TJanuaIntrawebHttpUrl.Create(AOwner: TComponent);
var
  aDomain: TJanuaDomain;
begin
  inherited;
  FDomains := TJanuaDomains.Create(0);
  aDomain.url := 'app.keriks.com';
  aDomain.id := 1;
  aDomain.Title := 'Keriks Medical Social Forum';
  FDomains.AddDomain(aDomain);
end;

procedure TJanuaIntrawebHttpUrl.SetgetParams(const Value: TJanuaParamsReader);
begin
  FgetParams.Assign(Value)
end;

procedure TJanuaIntrawebHttpUrl.SetHost(const Value: string);
begin
  FHost := Value;
end;

procedure TJanuaIntrawebHttpUrl.SetPathInfo(const Value: String);
begin
  FPathInfo := Value;
end;

procedure TJanuaIntrawebHttpUrl.SetpostParams(const Value: TJanuaParamsReader);
begin
  FpostParams.Assign(Value);
end;

procedure TJanuaIntrawebHttpUrl.SetRawHeaders(const Value: string);
begin
  FRawHeaders := Value;
end;

procedure TJanuaIntrawebHttpUrl.SetRemoteAddr(const Value: string);
begin
  FRemoteAddr := Value;
end;

procedure TJanuaIntrawebHttpUrl.SetUrlParams(Request: THttpRequest);
begin
  if Request.HttpMethod = IW.HTTP.Request.hmGet then
  begin
    {
      if Request.GetParams.Count = 1 then
      begin
      JanuaParamsReader1.DecodeURL(Request.GetParams.Text);
      end
      else }

    // Verificare Get Params .....................................

    if Request.QueryFields.Count > 1 then
    begin
      getParams.AssignParams(Request.QueryFields);
      FRawHeaders := Request.RawHeaders.Text;
    end;
  end;

  FPathInfo := Request.PathInfo;
  FUserAgent := Request.UserAgent;
  FHost := Request.Host;
  FRemoteAddr := Request.RemoteAddr;
  self.FRawHeaders := Request.RawHeaders.Text;

  {
    if (pos('$/start', s) > 0) or (s = '/') then
    begin
    // per ora non lo gestisco ........

    end;
  }
end;

procedure TJanuaIntrawebHttpUrl.SetUserAgent(const Value: String);
begin
  FUserAgent := Value;
end;

end.
