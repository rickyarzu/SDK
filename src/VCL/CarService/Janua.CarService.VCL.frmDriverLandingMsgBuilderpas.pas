unit Janua.CarService.VCL.frmDriverLandingMsgBuilderpas;

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
  TfrmVCLCSDriverLandingMsgBuilder = class(TfrmVCLLandingMessageConfig)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FCSDriverLandingMsgBuilder: IJanuaCSCustomerLandingMsgBuilder;
    FDMCarserviceUniPgSettings: TdmCarserviceUniPgSettings;
  public

  end;

var
  frmVCLCSDriverLandingMsgBuilder: TfrmVCLCSDriverLandingMsgBuilder;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLCSDriverLandingMsgBuilder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(FCSDriverLandingMsgBuilder) then
    TJanuaApplication.ReleaseObject(FCSDriverLandingMsgBuilder.GetSelf);
  FCSDriverLandingMsgBuilder := nil;
end;

procedure TfrmVCLCSDriverLandingMsgBuilder.FormCreate(Sender: TObject);
begin
  inherited;
  FDMCarserviceUniPgSettings := TdmCarserviceUniPgSettings.Create(self);
  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverLandingMsgBuilder, FCSDriverLandingMsgBuilder);
  FCSDriverLandingMsgBuilder.Dataset := FDMCarserviceUniPgSettings.qryConfigTimetable;
  FrameVCLLandingMessageConfig.LandingMessageBuilder := FCSDriverLandingMsgBuilder;

  FDMCarserviceUniPgSettings.qryConfiguration.Open;
  FDMCarserviceUniPgSettings.qryConfigTimetable.Open;

  MasterDataset := FDMCarserviceUniPgSettings.qryConfigTimetable;


end;

end.
