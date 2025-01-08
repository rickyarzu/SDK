unit Janua.WhatsApp.WebbrokerModule;

interface

uses
  System.SysUtils, System.Classes,
  // Http
  Web.HTTPApp,
  // DB
  Janua.Twilio.dmPgWhatsApp,
  // Janua
  Janua.Unidac.Connection, Janua.Cloud.Types;

type
  TJanuaWhatSappWebBrokerModule = class(TWebModule)
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
    FdmPgTwilioWhatsApp: TdmPgTwilioWhatsApp;
  public
    { Public declarations }
  end;

var
  WhatsAppWebModuleClass: TComponentClass = TJanuaWhatSappWebBrokerModule;

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
    dmPgTwilioWhatsApp.FallBack(lLines.Text);
  finally
    lLines.Free;
  end;

end;

procedure TJanuaWhatSappWebBrokerModule.WebModule1WactStatusCallbackAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  lText: string;
  lStatus: TTWilioStatus;
begin
  var
  lLines := TStringList.Create;
  try
    Request.ExtractContentFields(lLines);
    lStatus.SetFromStrings(lLines);
    dmPgTwilioWhatsApp.StatusCallback(lLines.Text, lStatus);
  finally
    lLines.Free;
  end;

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
    lHook.SetFromStrings(lLines);
     dmPgTwilioWhatsApp.WebHook(lLines.Text, lHook);
  finally
    lLines.Free;
  end;

end;

procedure TJanuaWhatSappWebBrokerModule.WebModuleCreate(Sender: TObject);
begin

end;

end.
