unit Janua.Cloud.VCL.dlgWhatsAppTestSetting;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.StrUtils,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.Mask, VCL.ExtCtrls, VCL.ComCtrls, VCL.Graphics,
  // Janua
  Janua.Cloud.Types, Janua.Cloud.Conf,
  // Interposers
  Janua.VCL.Interposers, Janua.TMS.Interposers, AdvMemo, advmjson;

type
  TdlgVCLCloudWhatsAppTestSetting = class(TForm)
    lbKey: TLabel;
    Label1: TLabel;
    edKey: TEdit;
    edToken: TEdit;
    lbMetaWhatsAppPhone: TLabel;
    edPhone: TEdit;
    lbDefaultMessage: TLabel;
    btnOK: TButton;
    btnUndo: TButton;
    btnSendTest: TButton;
    grpTestMessage: TGroupBox;
    edRecipient: TLabeledEdit;
    edDate: TDateTimePicker;
    Label2: TLabel;
    edAddress: TLabeledEdit;
    lbTestMessageID: TLabel;
    edTestMessageID: TEdit;
    lbMessageTemplateID: TLabel;
    edDefaultMessageID: TEdit;
    btnTestCustom: TButton;
    btnTestDefault: TButton;
    PageControl1: TPageControl;
    tabMessage: TTabSheet;
    edWAMesage: TMemo;
    tabLog: TTabSheet;
    AdvMemo1: TAdvMemo;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    procedure btnSendTestClick(Sender: TObject);
    procedure btnTestCustomClick(Sender: TObject);
    procedure btnTestDefaultClick(Sender: TObject);
  private
    FONSendMsgClick: TSendMessageTestEvent;
    FWhatsAppSettings: TJanuaWhatsAppConf;
    procedure SetONSendMsgClick(const Value: TSendMessageTestEvent);
    procedure SetWhatsAppSettings(const Value: TJanuaWhatsAppConf);
    { Private declarations }
  public
    property ONSendMsgClick: TSendMessageTestEvent read FONSendMsgClick write SetONSendMsgClick;
    property WhatsAppSettings: TJanuaWhatsAppConf read FWhatsAppSettings write SetWhatsAppSettings;
  end;

var
  dlgVCLCloudWhatsAppTestSetting: TdlgVCLCloudWhatsAppTestSetting;

implementation

uses Janua.Cloud.TwilioClient, Janua.VCL.Functions, Janua.Core.Functions, Janua.TMS.SMS;

{$R *.dfm}
{ TdlgVCLCloudWhatsAppTestSetting }

procedure TdlgVCLCloudWhatsAppTestSetting.btnSendTestClick(Sender: TObject);
var
  AdvTwilio: Janua.TMS.SMS.TJanuaAdvTwilio;
begin
  AdvTwilio := Janua.TMS.SMS.TJanuaAdvTwilio.Create(nil);
  try
    AdvTwilio.App.Key := FWhatsAppSettings.Key;
    // 'AC221a150df22723daef8d097a7f76cfcf';
    AdvTwilio.App.Secret := FWhatsAppSettings.Secret;
    // 'f3c90112efdccd931b81dea46f74f1da';
    AdvTwilio.App.Name := 'whatsapp:' + FWhatsAppSettings.AppName;
    // +39 351 353 5778
    // '+15302036772';
    var
    lSMS := edWAMesage.Text;
    lSMS := StringReplace(lSMS, '{{1}}', DateToStr(edDate.DateTime), [rfIgnoreCase, rfReplaceAll]);
    lSMS := StringReplace(lSMS, '{{2}}', edAddress.Text, [rfIgnoreCase, rfReplaceAll]);

    var
    lRecipient := edRecipient.Text; // +39 348 826 1954

    lRecipient := 'whatsapp:' + lRecipient;

    lSMS := ''; // per questo Test uso un 'template' Liscio

    AdvTwilio.ContentSid := edTestMessageID.Text;

    if AdvTwilio.SendSMS(lRecipient, lSMS) then
      ShowMessage('Messaggio inviato correttamente')
    else
      raise Exception.Create('Error sending Message' + sLineBreak + AdvTwilio.LastError);
  finally
    AdvTwilio.Free;
    AdvTwilio := nil;
  end;

  (*
    var
    lMessage := edWAMesage.Text;
    lMessage := StringReplace(lMessage, '{{1}}', DateToStr(edDate.DateTime), [rfIgnoreCase, rfReplaceAll]);
    lMessage := StringReplace(lMessage, '{{2}}', edAddress.Text, [rfIgnoreCase, rfReplaceAll]);

    if Assigned(FONSendMsgClick) then
    begin
    FONSendMsgClick(edRecipient.Text, lMessage);
    end;
  *)
end;

procedure TdlgVCLCloudWhatsAppTestSetting.btnTestCustomClick(Sender: TObject);
var
  aTwilioSender: TJanuaTwilioClient;
begin
  // Sends a Custom Message to Twilio
  aTwilioSender := TJanuaTwilioClient.Create(FWhatsAppSettings.Key, FWhatsAppSettings.Secret);
  try
    aTwilioSender.MessageID := FWhatsAppSettings.TestMessageID;
    aTwilioSender.From := 'whatsapp:' + FWhatsAppSettings.AppName;
    aTwilioSender.Recipient := 'whatsapp:' + edRecipient.Text;
    if aTwilioSender.SendMessage then
      JShowMessage('Messaggio ' + aTwilioSender.MessageSID + ' Inviato')
    else
      JShowError('Errore invio Messaggio, consultare log');

  finally
    aTwilioSender.Free;
    aTwilioSender := nil;
  end;
end;

procedure TdlgVCLCloudWhatsAppTestSetting.btnTestDefaultClick(Sender: TObject);
var
  AdvTwilio: Janua.TMS.SMS.TJanuaAdvTwilio;
begin
  AdvTwilio := Janua.TMS.SMS.TJanuaAdvTwilio.Create(nil);
  try
    AdvTwilio.App.Key := FWhatsAppSettings.Key;
    // 'AC221a150df22723daef8d097a7f76cfcf';
    AdvTwilio.App.Secret := FWhatsAppSettings.Secret;
    // 'f3c90112efdccd931b81dea46f74f1da';
    AdvTwilio.App.Name := 'whatsapp:' + FWhatsAppSettings.AppName;
    // +39 351 353 5778
    // '+15302036772';
    var
    lSMS := edWAMesage.Text;
    lSMS := StringReplace(lSMS, '{{1}}', DateToStr(edDate.DateTime), [rfIgnoreCase, rfReplaceAll]);
    lSMS := StringReplace(lSMS, '{{2}}', edAddress.Text, [rfIgnoreCase, rfReplaceAll]);

    var
    lRecipient := edRecipient.Text; // +39 348 826 1954

    lRecipient := 'whatsapp:' + lRecipient;

    lSMS := ''; // per questo Test uso un 'template' Liscio

    AdvTwilio.ContentSid := edDefaultMessageID.Text;
    AdvTwilio.ContentVariables.Add(DateToStr(edDate.Date));
    AdvTwilio.ContentVariables.Add(edAddress.Text);

    if AdvTwilio.SendSMS(lRecipient, lSMS) then
      ShowMessage('Messaggio inviato correttamente')
    else
      raise Exception.Create('Error sending Message' + sLineBreak + AdvTwilio.LastError);
  finally
    AdvTwilio.Free;
    AdvTwilio := nil;
  end;



end;

procedure TdlgVCLCloudWhatsAppTestSetting.SetONSendMsgClick(const Value: TSendMessageTestEvent);
begin
  FONSendMsgClick := Value;
end;

procedure TdlgVCLCloudWhatsAppTestSetting.SetWhatsAppSettings(const Value: TJanuaWhatsAppConf);
begin
  FWhatsAppSettings := Value;
  if Assigned(FWhatsAppSettings) then
  begin
    edKey.Text := FWhatsAppSettings.Key;
    FWhatsAppSettings.Bind('key', edKey, 'Text', False);
    edToken.Text := FWhatsAppSettings.Secret;
    FWhatsAppSettings.Bind('Secret', edToken, 'Text', False);
    edPhone.Text := FWhatsAppSettings.AppName;
    FWhatsAppSettings.Bind('AppName', edPhone, 'Text', False);
    edWAMesage.Text := FWhatsAppSettings.DefaultMessage;
    FWhatsAppSettings.Bind('DefaultMessage', edWAMesage, 'Text', False);
    edTestMessageID.Text := FWhatsAppSettings.TestMessageID;
    FWhatsAppSettings.Bind('TestMessageID', edTestMessageID, 'Text', False);
    edDefaultMessageID.Text := FWhatsAppSettings.DefaultMessageID;
    FWhatsAppSettings.Bind('DefaultMessageID', edDefaultMessageID, 'Text', False);
  end;

end;

end.
