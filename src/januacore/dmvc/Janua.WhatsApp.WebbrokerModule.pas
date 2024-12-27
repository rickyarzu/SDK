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
  TJanuaWhatSappWebBrokerModule = class(TWebModule)
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    JanuaUniConnection1: TJanuaUniConnection;
    qryTwilioLog: TUniQuery;
    qryTwilioLogid: TLargeintField;
    qryTwilioLogdb_schema_id: TIntegerField;
    qryTwilioLogjguid: TGuidField;
    qryTwilioLogdeleted: TBooleanField;
    qryTwilioLoginsert_date: TDateTimeField;
    qryTwilioLogupdate_date: TDateTimeField;
    qryTwilioLoguser_insert: TWideStringField;
    qryTwilioLoguser_update: TWideStringField;
    qryTwilioLogjson_content: TWideMemoField;
    qryTwilioLogbody_received: TWideMemoField;
    qryTwilioLogaction: TWideStringField;
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
  WebModuleClass: TComponentClass = TJanuaWhatSappWebBrokerModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TJanuaWhatSappWebBrokerModule.WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: Boolean);
begin
  Response.Content := '<html>' + '<head><title>Web Server Application</title></head>' +
    '<body>Web Server Application</body>' + '</html>';
end;

procedure TJanuaWhatSappWebBrokerModule.WebModule1WactFallbackAction(Sender: TObject; Request: TWebRequest;
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

procedure TJanuaWhatSappWebBrokerModule.WebModule1WactStatusCallbackAction(Sender: TObject; Request: TWebRequest;
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
    lStatus.SetFromStrings(lLines);
  finally
    lLines.Free;
  end;
  qryTwilioLog.Append;
  qryTwilioLogbody_received.AsString := lText;
  qryTwilioLogaction.AsString := 'status_callback';
  qryTwilioLog.Post;
end;

procedure TJanuaWhatSappWebBrokerModule.WebModule1WactWebhookAction(Sender: TObject; Request: TWebRequest;
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
    lHook.SetFromStrings(lLines);
  finally
    lLines.Free;
  end;
  qryTwilioLog.Append;
  qryTwilioLogbody_received.AsString := lText;
  qryTwilioLogaction.AsString := 'webhook';
  qryTwilioLog.Post;
end;

procedure TJanuaWhatSappWebBrokerModule.WebModuleCreate(Sender: TObject);
begin
  self.qryTwilioLog.Open;

end;

end.
