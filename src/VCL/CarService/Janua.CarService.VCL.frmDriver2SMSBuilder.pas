unit Janua.CarService.VCL.frmDriver2SMSBuilder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ComCtrls,
  // JOrm.Documents.Impl Booking
  JOrm.CarService.Booking.Intf, Janua.Orm.Types, JOrm.Anagraph.Intf,
  // Januaproject
  // Core
  Janua.Core.Http, Janua.Cloud.Types, Janua.Cloud.Mail.Conf, Janua.Core.System.Types,
  // Lookup Interface
  Janua.Orm.Intf, Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Intf, Janua.Cloud.Mail.Intf,
  Janua.Cloud.Sms.Intf, Janua.Controls.Forms.Intf, Janua.Search.ViewModels.Engines.Impl,
  Janua.CarService.Intf, Janua.Core.Types, Janua.CarService.PgSettings, Janua.VCL.Cloud.frameSMSMessageConfig,
  Janua.VCL.Cloud.frmSMSMessageConfig;

type
  TfrmVCLCSDriver2SMSBuilder = class(TfrmVCLSMSMessageConfig)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FCSSMSSender: IJanuaSMSTwilio;
    FDMCarserviceUniPgSettings: TdmCarserviceUniPgSettings;
    FCSDriverSMSBuilder2: IJanuaCSDriverSMSBuilder2;
  public
    { Public declarations }
  end;

var
  frmVCLCSDriver2SMSBuilder: TfrmVCLCSDriver2SMSBuilder;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLCSDriver2SMSBuilder.FormCreate(Sender: TObject);
begin
  inherited;
  FDMCarserviceUniPgSettings := TdmCarserviceUniPgSettings.Create(self);
  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSSMSSender) then
    TJanuaApplicationFactory.TryGetInterface(IJanuaSMSTwilio, FCSSMSSender, True);

  if not Assigned(FCSDriverSMSBuilder2) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverSMSBuilder2, FCSDriverSMSBuilder2);
    FCSDriverSMSBuilder2.Dataset := FDMCarserviceUniPgSettings.qryBooking;
    { FCSCustomerSMSBuilder.LogProc := LogProc; }
    FCSDriverSMSBuilder2.SMSSender := FCSSMSSender;
    FCSDriverSMSBuilder2.LoadSettings;
  end;
  frameVCLSMSMessageConfig.SMSMessageBuilder := FCSDriverSMSBuilder2;
end;

procedure TfrmVCLCSDriver2SMSBuilder.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(FCSDriverSMSBuilder2) then
    TJanuaApplication.ReleaseObject(FCSDriverSMSBuilder2.GetSelf);
  FCSDriverSMSBuilder2 := nil;

end;

end.
