unit Janua.WhatsApp.WebbrokerModule;

interface

uses
  System.SysUtils, System.Classes,
  // Http
  Web.HTTPApp,
  // DB
  MemDS, UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni,
  // Janua
  Janua.Unidac.Connection, Janua.Cloud.Types;

type
  TWebModule1 = class(TWebModule)
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    JanuaUniConnection1: TJanuaUniConnection;
    qryTwilioLog: TUniQuery;
    qryTwilioLogid: TIntegerField;
    qryTwilioLogdb_schema_id: TIntegerField;
    qryTwilioLogjguid: TGuidField;
    qryTwilioLogdeleted: TBooleanField;
    qryTwilioLoginsert_date: TDateTimeField;
    qryTwilioLogupdate_date: TDateTimeField;
    qryTwilioLoguser_insert: TStringField;
    qryTwilioLoguser_update: TStringField;
    qryTwilioLogjson_content: TMemoField;
    qryTwilioLogbody_received: TMemoField;
    qryTwilioLogaction: TStringField;
    procedure WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: Boolean);
    procedure WebModule1WactWebhookAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: Boolean);
    procedure WebModuleCreate(Sender: TObject);
    procedure WebModule1WactFallbackAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: Boolean);
    procedure WebModule1WactStatusCallbackAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TWebModule1.WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: Boolean);
begin
  Response.Content := '<html>' + '<head><title>Web Server Application</title></head>' +
    '<body>Web Server Application</body>' + '</html>';
end;

procedure TWebModule1.WebModule1WactFallbackAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: Boolean);
var
  vText: string;
begin
  var
  lLines := TStringList.Create;
  try
    Request.ExtractContentFields(lLines);
    vText := lLines.Text;
  finally
    lLines.Free;
  end;
  qryTwilioLog.Append;
  qryTwilioLogbody_received.AsString := vText;
  qryTwilioLogaction.AsString := 'fallback';
  qryTwilioLog.Post;
end;

procedure TWebModule1.WebModule1WactStatusCallbackAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: Boolean);
var
  lText: string;
  lStatus: TTWilioStatus;
begin
  var
  lLines := TStringList.Create;
  try
    Request.ExtractContentFields(lLines);
    lText := lLines.Text;
    lStatus.ChannelPrefix := lLines.Values['ChannelPrefix'];
    lStatus.ApiVersion := lLines.Values['ApiVersion'];
    lStatus.MessageStatus := lLines.Values['MessageStatus'];
    lStatus.SmsSid := lLines.Values['SmsSid'];
    lStatus.ChannelInstallSid := lLines.Values['ChannelInstallSid'];
    lStatus.MsgTo := lLines.Values['To'];
    lStatus.MsgFrom := lLines.Values['From'];
    lStatus.MessageSid := lLines.Values['MessageSid'];
    lStatus.StructuredMessage := lLines.Values['StructuredMessage'];
    lStatus.AccountSid := lLines.Values['AccountSid'];
    lStatus.ChannelToAddress := lLines.Values['ChannelToAddress'];
  finally
    lLines.Free;
  end;
  qryTwilioLog.Append;
  qryTwilioLogbody_received.AsString := lText;
  qryTwilioLogaction.AsString := 'status_callback';
  qryTwilioLog.Post;
end;

procedure TWebModule1.WebModule1WactWebhookAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: Boolean);
var
  lText: string;
  lHook: TTwilioWebHook;
begin
  var
  lLines := TStringList.Create;
  try
    Request.ExtractContentFields(lLines);
    lText := lLines.Text;
    lHook.SmsMessageSid := lLines.Values['SmsMessageSid'];
    lHook.NumMedia := lLines.Values['NumMedia'];
    lHook.ProfileName := lLines.Values['ProfileName'];
    lHook.MessageType := lLines.Values['MessageType'];
    lHook.SmsSid := lLines.Values['SmsSid'];
    lHook.WaId := lLines.Values['WaId'];
    lHook.SmsStatus := lLines.Values['SmsStatus'];
    lHook.Body := lLines.Values['Body'];
    lHook.MsgTo := lLines.Values['MsgTo'];
    lHook.NumSegments := lLines.Values['NumSegments'];
    lHook.ReferralNumMedia := lLines.Values['ReferralNumMedia'];
    lHook.MessageSid := lLines.Values['MessageSid'];
    lHook.AccountSid := lLines.Values['AccountSid'];
    lHook.ApiVersion := lLines.Values['ApiVersion'];
  finally
    lLines.Free;
  end;
  qryTwilioLog.Append;
  qryTwilioLogbody_received.AsString := lText;
  qryTwilioLogaction.AsString := 'webhook';
  qryTwilioLog.Post;
end;

procedure TWebModule1.WebModuleCreate(Sender: TObject);
begin
  self.qryTwilioLog.Open;

end;

end.
