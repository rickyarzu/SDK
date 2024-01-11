unit Janua.VCL.Cloud.frmMailMessageConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs,
  // Janua Project
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  Janua.Anagraph.Types, Janua.Cloud.Intf, Janua.Cloud.Mail.Intf, Janua.Cloud.Sms.Intf,
  // Impl
  Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.CarService.PgSettings, Janua.CarService.Intf,
  Janua.VCL.Cloud.frameMailMessageConfig, Vcl.ComCtrls;

type
  TfrmVCLMailMessageConfig = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
    FrameVCLMailMessageConfig: TframeVCLMailMessageConfig;
  private
    { Private declarations }
    FMailMessageBuilder: IJanuaMailMessageBuilder;
  protected
    procedure SetInterface(const IID: TGUID);
    procedure SetSettingLocation(const aSettingLocation: string);
  public
    { Public declarations }
  end;

var
  frmVCLMailMessageConfig: TfrmVCLMailMessageConfig;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
{ TfrmVCLMailMessageConfig }

procedure TfrmVCLMailMessageConfig.SetInterface(const IID: TGUID);
begin
  if TJanuaApplicationFactory.TryGetInterface(IID, FMailMessageBuilder, True) then
    FrameVCLMailMessageConfig.MailMessageBuilder := FMailMessageBuilder;
end;

procedure TfrmVCLMailMessageConfig.SetSettingLocation(const aSettingLocation: string);
begin
 { TODO : Impostare il metodo basato su stringa }
  if TJanuaApplicationFactory.TryGetInterface(IJanuaMailMessageBuilder, FMailMessageBuilder, True) then
  begin
    {FMailMessageBuilder.Key := aSettingLocation.ToLower;}
    FrameVCLMailMessageConfig.MailMessageBuilder := FMailMessageBuilder;
  end;
end;

end.
