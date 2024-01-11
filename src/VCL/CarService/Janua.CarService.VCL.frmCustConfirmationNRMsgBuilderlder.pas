unit Janua.CarService.VCL.frmCustConfirmationNRMsgBuilderlder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs,
  // inherited
  Janua.VCL.Cloud.frmLandingMessageConfig,
  // Januaproject
  uJanuaVCLForm, Janua.Core.Types,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  // Types/Intf
  Janua.Cloud.Types, Janua.Cloud.Mail.Conf, Janua.Core.System.Types, Janua.Cloud.Sms.Intf,
  Janua.Cloud.Mail.Intf, Janua.CarService.Intf,
  // Impl
  Janua.Unidac.Connection, Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.CarService.PgSettings,
  Janua.Cloud.Mail.Impl, Janua.VCL.Cloud.FrameLandingMessageConfig;

type
  TfrmVCLCSCustConfirmationNRMsgBuilder = class(TfrmVCLLandingMessageConfig)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FCSCustConfirmationNRMsgBuilder: IJanuaCSCustConfirmationNRMsgBuilder;
    FDMCarserviceUniPgSettings: TdmCarserviceUniPgSettings;
  public

  end;

var
  frmVCLCSCustConfirmationNRMsgBuilder: TfrmVCLCSCustConfirmationNRMsgBuilder;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLCSCustConfirmationNRMsgBuilder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(FCSCustConfirmationNRMsgBuilder) then
    TJanuaApplication.ReleaseObject(FCSCustConfirmationNRMsgBuilder.GetSelf);
  FCSCustConfirmationNRMsgBuilder := nil;
end;

procedure TfrmVCLCSCustConfirmationNRMsgBuilder.FormCreate(Sender: TObject);
begin
  inherited;
  FDMCarserviceUniPgSettings:= TdmCarserviceUniPgSettings.Create(self);
  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustConfirmationNRMsgBuilder, FCSCustConfirmationNRMsgBuilder);
  FCSCustConfirmationNRMsgBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FrameVCLLandingMessageConfig.LandingMessageBuilder := FCSCustConfirmationNRMsgBuilder;

  FDMCarserviceUniPgSettings.qryConfiguration.Open;
  FDMCarserviceUniPgSettings.qryBooking.Open;

  MasterDataset := FDMCarserviceUniPgSettings.qryBooking;
end;

end.
