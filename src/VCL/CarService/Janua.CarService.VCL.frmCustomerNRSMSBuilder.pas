unit Janua.CarService.VCL.frmCustomerNRSMSBuilder;

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
  TfrmVCLCSCustomerNRSMSBuilder = class(  TfrmVCLSMSMessageConfig)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FCSSMSSender: IJanuaSMSTwilio;
    FDMCarserviceUniPgSettings: TdmCarserviceUniPgSettings;
    FCSCustomerNRSMSBuilder: IJanuaCSCustomerNRSMSBuilder;
  public
    { Public declarations }
  end;

var
  frmVCLCSCustomerNRSMSBuilder: TfrmVCLCSCustomerNRSMSBuilder;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLCSCustomerNRSMSBuilder.FormCreate(Sender: TObject);
begin
  inherited;
  FDMCarserviceUniPgSettings := TdmCarserviceUniPgSettings.Create(self);
  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSSMSSender) then
    TJanuaApplicationFactory.TryGetInterface(IJanuaSMSTwilio, FCSSMSSender, True);

  if not Assigned(FCSCustomerNRSMSBuilder) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerNRSMSBuilder, FCSCustomerNRSMSBuilder);
    FCSCustomerNRSMSBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
    {FCSCustomerSMSBuilder.LogProc := LogProc;}
    FCSCustomerNRSMSBuilder.SMSSender := FCSSMSSender;
    FCSCustomerNRSMSBuilder.LoadSettings;
  end;
  frameVCLSMSMessageConfig.SMSMessageBuilder := FCSCustomerNRSMSBuilder;
end;

procedure TfrmVCLCSCustomerNRSMSBuilder.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(FCSCustomerNRSMSBuilder) then
    TJanuaApplication.ReleaseObject(FCSCustomerNRSMSBuilder.GetSelf);
  FCSCustomerNRSMSBuilder := nil;
end;

end.
