unit Janua.Intraweb.Classes;

interface

uses
  System.SysUtils, System.Classes, System.StrUtils,
  Janua.Core.Forms, IW.HTTP.Request, Janua.Core.HTTP, Janua.Core.System, Janua.Core.Classes,
  Janua.Core.Params;

type
  TJanuaIntraWebFramework = (jwfIntraweb, jwfCGDevTools, jvfTMSSoftware);

type
  TJanuaIntrawebRequestManager = class(Janua.Core.Classes.TJanuaCoreComponent)
  private
    FDebug: Boolean;
    FpostParams: TJanuaParamsReader;
    FgetParams: TJanuaParamsReader;
    procedure SetDebug(const Value: Boolean);
    procedure SetgetParams(const Value: TJanuaParamsReader);
    procedure SetpostParams(const Value: TJanuaParamsReader);
  protected
    FWebProfile: TJanuaRecordWebProfile;
  public
    procedure SendWebProfile(aProfile: TJanuaCustomWebProfile);
  published
    property Debug: Boolean read FDebug write SetDebug default false;
    property getParams: TJanuaParamsReader read FgetParams write SetgetParams;
    property postParams: TJanuaParamsReader read FpostParams write SetpostParams;
    procedure ProcessRequest(aRequest: THttpRequest);

  end;


type
  TJanuaIntraWebProfile = class(TJanuaCustomWebProfile)
  private
  protected
  public

  published

  end;

implementation


{ TJanuaIntrawebRequestManager }

procedure TJanuaIntrawebRequestManager.ProcessRequest(aRequest: THttpRequest);
begin
  if aRequest.HttpMethod = IW.HTTP.Request.hmGet then
  begin
    if aRequest.getParams.count > 1 then
    begin
      getParams.AssignParams(aRequest.getParams);
      FWebProfile.RawHeaders := aRequest.RawHeaders.Text;
    end;
  end
  else
  begin
    postParams.AssignParams(aRequest.getParams);
    FWebProfile.RawHeaders := aRequest.RawHeaders.Text;
  end;
  // postare il codice alla classe

  if (Pos('$', aRequest.PathInfo) <= 0) and not(aRequest.PathInfo = '/') then
    FWebProfile.PathInfo := aRequest.PathInfo;
  FWebProfile.UserAgent := aRequest.UserAgent;
  if aRequest.AcceptLanguage <> '' then
    FWebProfile.LanguageCode := (aRequest.AcceptLanguage);
  FWebProfile.Host := aRequest.Host;
  FWebProfile.RemoteAddr := aRequest.RemoteAddr;
  FWebProfile.RawHeaders := aRequest.RawHeaders.Text;
  self.WriteLog(aRequest.RawHeaders.Text);
end;


procedure TJanuaIntrawebRequestManager.SendWebProfile(aProfile: TJanuaCustomWebProfile);
begin
  aProfile.WebProfile := (self.FWebProfile);
end;

procedure TJanuaIntrawebRequestManager.SetDebug(const Value: Boolean);
begin

end;

procedure TJanuaIntrawebRequestManager.SetgetParams(const Value: TJanuaParamsReader);
begin

end;

procedure TJanuaIntrawebRequestManager.SetpostParams(const Value: TJanuaParamsReader);
begin

end;

end.
