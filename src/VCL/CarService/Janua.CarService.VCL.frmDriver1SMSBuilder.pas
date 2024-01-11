unit Janua.CarService.VCL.frmDriver1SMSBuilder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, Janua.VCL.Cloud.frmSMSMessageConfig, VCL.ComCtrls,
  // JOrm.Documents.Impl Booking
  JOrm.CarService.Booking.Intf, Janua.Orm.Types, JOrm.Anagraph.Intf,
  // Januaproject
  // Core
  Janua.Core.Http, Janua.Cloud.Types, Janua.Cloud.Mail.Conf, Janua.Core.System.Types,
  // Lookup Interface
  Janua.Orm.Intf, Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Intf, Janua.Cloud.Mail.Intf,
  Janua.Cloud.Sms.Intf, Janua.Controls.Forms.Intf, Janua.Search.ViewModels.Engines.Impl,
  Janua.CarService.Intf, Janua.Core.Types, Janua.CarService.PgSettings, Janua.VCL.Cloud.frameSMSMessageConfig;

type
  TfrmVCLCSDriver1SMSBuilder = class(TfrmVCLSMSMessageConfig)
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    // SMSSender
    FCSSMSSender: IJanuaSMSTwilio;
    FDMCarserviceUniPgSettings: TdmCarserviceUniPgSettings;
    FCSDriverSMSBuilder1: IJanuaCSDriverSMSBuilder1;
  public
    { Public declarations }
  end;

var
  frmVCLCSDriver1SMSBuilder: TfrmVCLCSDriver1SMSBuilder;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLCSDriver1SMSBuilder.FormCreate(Sender: TObject);
begin
  inherited;
  FDMCarserviceUniPgSettings := TdmCarserviceUniPgSettings.Create(self);
  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSSMSSender) then
    TJanuaApplicationFactory.TryGetInterface(IJanuaSMSTwilio, FCSSMSSender, True);

  if not Assigned(FCSDriverSMSBuilder1) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverSMSBuilder1, FCSDriverSMSBuilder1);
    FCSDriverSMSBuilder1.Dataset := FDMCarserviceUniPgSettings.qryBooking;
    {FCSCustomerSMSBuilder.LogProc := LogProc;}
    FCSDriverSMSBuilder1.SMSSender := FCSSMSSender;
    FCSDriverSMSBuilder1.LoadSettings;
  end;
  frameVCLSMSMessageConfig.SMSMessageBuilder := FCSDriverSMSBuilder1;
end;

procedure TfrmVCLCSDriver1SMSBuilder.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(FCSDriverSMSBuilder1) then
    TJanuaApplication.ReleaseObject(FCSDriverSMSBuilder1.GetSelf);
  FCSDriverSMSBuilder1 := nil;
end;

end.
