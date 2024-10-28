unit Janua.Cloud.VCL.dlgWhatsAppTestSetting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  // Janua
  Janua.Cloud.Types
  ;

type
  TdlgVCLCloudWhatsAppTestSetting = class(TForm)
    lbKey: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    lbMetaWhatsAppPhone: TLabel;
    Edit3: TEdit;
    edWAMesage: TMemo;
    lbDefaultMessage: TLabel;
  private
    FONSendMsgClick: TSendMessageEvent;
    procedure SetONSendMsgClick(const Value: TSendMessageEvent);
    { Private declarations }
  public
    property ONSendMsgClick: TSendMessageEvent read FONSendMsgClick write SetONSendMsgClick;
  end;

var
  dlgVCLCloudWhatsAppTestSetting: TdlgVCLCloudWhatsAppTestSetting;

implementation

{$R *.dfm}

{ TdlgVCLCloudWhatsAppTestSetting }

procedure TdlgVCLCloudWhatsAppTestSetting.SetONSendMsgClick(const Value: TSendMessageEvent);
begin
  FONSendMsgClick := Value;
end;

end.
