unit Janua.CarService.VCL.frmCustConfirmationMsgBuilder;

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
  Janua.Cloud.Mail.Impl, Janua.VCL.Cloud.FrameLandingMessageConfig, Vcl.ComCtrls;

type
  TfrmVCLCSCustConfirmationMsgBuilder = class(TfrmVCLLandingMessageConfig)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FCSCustConfirmationMsgBuilder: IJanuaCSCustConfirmationMsgBuilder;
    FDMCarserviceUniPgSettings: TdmCarserviceUniPgSettings;
  public

  end;

var
  frmVCLCSCustConfirmationMsgBuilder: TfrmVCLCSCustConfirmationMsgBuilder;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLCSCustConfirmationMsgBuilder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(FCSCustConfirmationMsgBuilder) then
    TJanuaApplication.ReleaseObject(FCSCustConfirmationMsgBuilder.GetSelf);
  FCSCustConfirmationMsgBuilder := nil;
end;

procedure TfrmVCLCSCustConfirmationMsgBuilder.FormCreate(Sender: TObject);
begin
  inherited;
  FDMCarserviceUniPgSettings := TdmCarserviceUniPgSettings.Create(self);
  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustConfirmationMsgBuilder, FCSCustConfirmationMsgBuilder);
  FCSCustConfirmationMsgBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FrameVCLLandingMessageConfig.LandingMessageBuilder := FCSCustConfirmationMsgBuilder;

  FDMCarserviceUniPgSettings.qryConfiguration.Open;
  FDMCarserviceUniPgSettings.qryBooking.Open;

  MasterDataset := FDMCarserviceUniPgSettings.qryBooking;
end;

end.
