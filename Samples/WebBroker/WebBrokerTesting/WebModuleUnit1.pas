unit WebModuleUnit1;

interface

uses
  System.SysUtils, System.Classes, Web.HTTPApp, Datasnap.DSHTTPCommon,
  Datasnap.DSHTTPWebBroker, Datasnap.DSServer,
  Datasnap.DSAuth, IPPeerServer, Datasnap.DSCommonServer, Datasnap.DSHTTP;

type
  TWebModule1 = class(TWebModule)
    DSHTTPWebDispatcher1: TDSHTTPWebDispatcher;
    DSHTTPServiceFileDispatcher1: TDSHTTPServiceFileDispatcher;
    procedure WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModuleCreate(Sender: TObject);
  private
    FMessages: string;
    FSession: string;
    LCookie: TStringList;
    LValid: TDateTime;
    { Private declarations }
    procedure SetCookie(const aKey, aAvlue: string; aValid: integer; var aResponse: TWebResponse);
    procedure GetSessionCookie(aRequest: TWebRequest);
    procedure SetMessages(const Value: string);
    procedure SetSession(const Value: string);
  public
    { Public declarations }
    property Session: string read FSession write SetSession;
    property Messages: string read FMessages write SetMessages;
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{$R *.dfm}

uses ServerMethodsUnit1, ServerContainerUnit1, Web.WebReq;

procedure TWebModule1.GetSessionCookie(aRequest: TWebRequest);
begin
  if aRequest.CookieFields.Count > 0 then
  begin
    self.FSession := aRequest.CookieFields.Values['session_id'];
    self.FMessages := 'Session ID = ' + self.FSession;
  end;

  if self.FSession <> '' then
  begin

  end
  else
  begin

  end;
end;

procedure TWebModule1.SetCookie(const aKey, aAvlue: string; aValid: integer;
  var aResponse: TWebResponse);
var
  aCookie: TCookie;
begin

  LValid := Now + 10;
  aCookie := Response.Cookies.Add;
  aCookie.Name := aKey;
  aCookie.Value := aAvlue;
  // aCookie.Domain := 'localhost:';
  // aCookie.Path := '/';
  aCookie.Expires := self.LValid;

  self.FMessages := 'Cookie Set for TEST, Expires on : ' +
    FormatDateTime('dd/mm/yyyy hh:mm', LValid);

  {
    Add('CookieStep6=Cookie for Step6 project');
    Add('SetAt=' + FormatDateTime('dd/mm/yyyy hh:mm', Now));
    Add('ValidUntil=' + FormatDateTime('dd/mm/yyyy hh:mm', LValid));
    Response.SetCookieField(LCookie, , '/', LValid, False);
  }

end;

procedure TWebModule1.SetMessages(const Value: string);
begin
  FMessages := Value;
end;

procedure TWebModule1.SetSession(const Value: string);
begin
  FSession := Value;
end;

procedure TWebModule1.WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: Boolean);
begin
  self.GetSessionCookie(Request);
  if self.FSession = '' then
    self.SetCookie(Response);

  Response.Content := '<html>' + '<head><title>DataSnap Server</title></head>' +
    '<body>DataSnap Server' + '<p>' + self.Messages + '</p>' + '</body>' + '</html>';

  Response.SendResponse;
end;

procedure TWebModule1.WebModuleCreate(Sender: TObject);
var
  aActionGET: TWebActionItem;
  aActionPOST: TWebActionItem;
  aActionPUT: TWebActionItem;
  aActionDELETE: TWebActionItem;
begin

  LCookie := TStringList.Create;

  DSHTTPWebDispatcher1.Server := DSServer;
  if DSServer.Started then
  begin
    DSHTTPWebDispatcher1.DbxContext := DSServer.DbxContext;
    DSHTTPWebDispatcher1.Start;
  end;

  aActionGET := self.Actions.Add;

  aActionGET.Name := 'ActionGET';
  aActionGET.MethodType := TMethodType.mtGet;
  aActionGET.PathInfo := '/actionget';
  aActionGET.Enabled := True;

  aActionPOST := self.Actions.Add;
  aActionPOST.Name := 'ActionPOST';
  aActionPOST.MethodType := TMethodType.mtPost;
  aActionPOST.PathInfo := '/actionpost';
  aActionPOST.Enabled := True;

  aActionPUT := self.Actions.Add;
  aActionPUT.Name := 'ActionPUT';
  aActionPUT.MethodType := TMethodType.mtPost;
  aActionPUT.PathInfo := '/actionput';
  aActionPUT.Enabled := True;

  aActionDELETE := self.Actions.Add;
  aActionDELETE.Name := 'ActionDELETE';
  aActionDELETE.MethodType := TMethodType.mtPost;
  aActionDELETE.PathInfo := '/actiondelete';
  aActionDELETE.Enabled := True;

end;

initialization

finalization

Web.WebReq.FreeWebModules;

end.
