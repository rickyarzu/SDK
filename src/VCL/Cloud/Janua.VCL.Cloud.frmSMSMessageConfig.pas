unit Janua.VCL.Cloud.frmSMSMessageConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ComCtrls,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  Janua.Anagraph.Types, Janua.Cloud.Sms.Intf,
  // Impl
  Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.CarService.PgSettings, Janua.CarService.Intf,
  // Janua
  Janua.VCL.Cloud.frameSMSMessageConfig;

type
  TfrmVCLSMSMessageConfig = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
    frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig;
    procedure frameVCLSMSMessageConfigbtnSendMailToClick(Sender: TObject);
  private
    FSMSBuilder: IJanuaSMSBuilder;
    procedure SetSMSBuilder(const Value: IJanuaSMSBuilder);
    { Private declarations }
  public
    { Public declarations }
    property SMSBuilder: IJanuaSMSBuilder read FSMSBuilder write SetSMSBuilder;
  end;

var
  frmVCLSMSMessageConfig: TfrmVCLSMSMessageConfig;

implementation

{$R *.dfm}
{ TfrmVCLSMSMessageConfig }

procedure TfrmVCLSMSMessageConfig.frameVCLSMSMessageConfigbtnSendMailToClick(Sender: TObject);
begin
  inherited;
  frameVCLSMSMessageConfig.btnSendMailToClick(Sender);

end;

procedure TfrmVCLSMSMessageConfig.SetSMSBuilder(const Value: IJanuaSMSBuilder);
begin
  FSMSBuilder := Value;
  frameVCLSMSMessageConfig.SMSMessageBuilder := FSMSBuilder;
end;

end.
