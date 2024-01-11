unit Janua.CarService.VCL.frmPageNotFound;

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
  TfrmVCLCSPageNotFound = class(TfrmVCLLandingMessageConfig)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FCSCustomerLandingMsgBuilder: IJanuaCSBookingURLNotFoundBuilder;
   { FDMCarserviceUniPgSettings: TdmCarserviceUniPgSettings;}
  public

  end;

var
  frmVCLCSPageNotFound: TfrmVCLCSPageNotFound;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLCSPageNotFound.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(FCSCustomerLandingMsgBuilder) then
    TJanuaApplication.ReleaseObject(FCSCustomerLandingMsgBuilder.GetSelf);
  FCSCustomerLandingMsgBuilder := nil;
end;

procedure TfrmVCLCSPageNotFound.FormCreate(Sender: TObject);
begin
  inherited;
  {FDMCarserviceUniPgSettings:= TdmCarserviceUniPgSettings.Create(self);}
  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSBookingURLNotFoundBuilder, FCSCustomerLandingMsgBuilder);
  {FCSCustomerLandingMsgBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;}
  FrameVCLLandingMessageConfig.LandingMessageBuilder := FCSCustomerLandingMsgBuilder;

{  FDMCarserviceUniPgSettings.qryConfiguration.Open;
  FDMCarserviceUniPgSettings.qryBooking.Open;
    MasterDataset := FDMCarserviceUniPgSettings.qryBooking;}
end;

end.
