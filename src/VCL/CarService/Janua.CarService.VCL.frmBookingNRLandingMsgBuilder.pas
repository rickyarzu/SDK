unit Janua.CarService.VCL.frmBookingNRLandingMsgBuilder;

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
  TfrmVCLCSBookingNRLandingMsgBuilder = class(TfrmVCLLandingMessageConfig)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FCSBookingLandingMsgBuilder: IJanuaCSBookingNRLandingMsgBuilder;
    FDMCarserviceUniPgSettings: TdmCarserviceUniPgSettings;
  public

  end;

var
  frmVCLCSBookingNRLandingMsgBuilder: TfrmVCLCSBookingNRLandingMsgBuilder;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLCSBookingNRLandingMsgBuilder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(FCSBookingLandingMsgBuilder) then
    TJanuaApplication.ReleaseObject(FCSBookingLandingMsgBuilder.GetSelf);
  FCSBookingLandingMsgBuilder := nil;
end;

procedure TfrmVCLCSBookingNRLandingMsgBuilder.FormCreate(Sender: TObject);
begin
  inherited;
  FDMCarserviceUniPgSettings:= TdmCarserviceUniPgSettings.Create(self);
  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSBookingNRLandingMsgBuilder, FCSBookingLandingMsgBuilder);
  FCSBookingLandingMsgBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FrameVCLLandingMessageConfig.LandingMessageBuilder := FCSBookingLandingMsgBuilder;

  FDMCarserviceUniPgSettings.qryConfiguration.Open;
  FDMCarserviceUniPgSettings.qryBooking.Open;

  MasterDataset := FDMCarserviceUniPgSettings.qryBooking;
end;

end.
