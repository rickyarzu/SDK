unit Janua.CarService.VCL.frmCustomerSMSBuilder;

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
  Janua.CarService.Intf, Janua.Core.Types, Janua.CarService.PgSettings,
  // FRM SMS MESSAGE CONFIG
  Janua.VCL.Cloud.frameSMSMessageConfig, Janua.VCL.Cloud.frmSMSMessageConfig;

type
  TfrmVCLCSCustomerSMSBuilder = class(TfrmVCLSMSMessageConfig)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FCSSMSSender: IJanuaSMSTwilio;
    FDMCarserviceUniPgSettings: TdmCarserviceUniPgSettings;
    FCSCustomerSMSBuilder: IJanuaCSCustomerSMSBuilder;
  public
    { Public declarations }
  end;

var
  frmVCLCSCustomerSMSBuilder: TfrmVCLCSCustomerSMSBuilder;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLCSCustomerSMSBuilder.FormCreate(Sender: TObject);
begin
  inherited;
  FDMCarserviceUniPgSettings := TdmCarserviceUniPgSettings.Create(self);
  // ---------------------------------------------------------------------------------------------------------
  if not Assigned(FCSSMSSender) then
    TJanuaApplicationFactory.TryGetInterface(IJanuaSMSTwilio, FCSSMSSender, True);

  if not Assigned(FCSCustomerSMSBuilder) then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerSMSBuilder, FCSCustomerSMSBuilder);
    FCSCustomerSMSBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
    { FCSCustomerSMSBuilder.LogProc := LogProc; }
    FCSCustomerSMSBuilder.SMSSender := FCSSMSSender;
    FCSCustomerSMSBuilder.LoadSettings;
  end;

  frameVCLSMSMessageConfig.SMSMessageBuilder := FCSCustomerSMSBuilder;

end;

procedure TfrmVCLCSCustomerSMSBuilder.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(FCSCustomerSMSBuilder) then
    TJanuaApplication.ReleaseObject(FCSCustomerSMSBuilder.GetSelf);
  FCSCustomerSMSBuilder := nil;
end;

end.
