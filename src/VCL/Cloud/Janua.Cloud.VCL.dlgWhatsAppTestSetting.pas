unit Janua.Cloud.VCL.dlgWhatsAppTestSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls,
  // Janua
  Janua.Cloud.Types, Janua.Cloud.Conf,
  // Interposers
  Janua.VCL.Interposers, Janua.TMS.Interposers, VCL.Mask, VCL.ExtCtrls, VCL.ComCtrls;

type
  TdlgVCLCloudWhatsAppTestSetting = class(TForm)
    lbKey: TLabel;
    Label1: TLabel;
    edKey: TEdit;
    edToken: TEdit;
    lbMetaWhatsAppPhone: TLabel;
    edPhone: TEdit;
    edWAMesage: TMemo;
    lbDefaultMessage: TLabel;
    btnOK: TButton;
    btnUndo: TButton;
    btnSendTest: TButton;
    grpTestMessage: TGroupBox;
    edRecipient: TLabeledEdit;
    edDate: TDateTimePicker;
    Label2: TLabel;
    edAddress: TLabeledEdit;
    procedure btnSendTestClick(Sender: TObject);
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

{$R *.dfm}
{ TdlgVCLCloudWhatsAppTestSetting }

procedure TdlgVCLCloudWhatsAppTestSetting.btnSendTestClick(Sender: TObject);
begin
  var
  lMessage := edWAMesage.Text;
  lMessage := StringReplace(lMessage, '{{1}}', DateToStr(edDate.DateTime), [rfIgnoreCase, rfReplaceAll]);
  lMessage := StringReplace(lMessage, '{{2}}', edAddress.Text, [rfIgnoreCase, rfReplaceAll]);

  if Assigned(FONSendMsgClick) then
  begin
    FONSendMsgClick(edRecipient.Text, lMessage);
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
  end;

end;

end.
