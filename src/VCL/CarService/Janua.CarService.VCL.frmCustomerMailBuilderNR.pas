unit Janua.CarService.VCL.frmCustomerMailBuilderNR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs,
  // Januaproject ----
  Janua.CarService.PgSettings, Janua.CarService.Intf, Janua.VCL.Cloud.frmMailMessageConfig,
  Janua.Cloud.Mail.Intf,
  Janua.VCL.Cloud.frameMailMessageConfig;

type
  TfrmVCLFCSCustomerMailBuilderNR = class(TfrmVCLMailMessageConfig)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    FGridMailSender: IJanuaMailSendGridSender;
    FCSCustomerMailNRBuilder: IJanuaCSCustomerMailNRBuilder;
    FDMCarserviceUniPgSettings: TdmCarserviceUniPgSettings;
  public
    { Public declarations }
  end;

var
  frmVCLFCSCustomerMailBuilderNR: TfrmVCLFCSCustomerMailBuilderNR;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLFCSCustomerMailBuilderNR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(FCSCustomerMailNRBuilder) then
    TJanuaApplication.ReleaseObject(FCSCustomerMailNRBuilder.GetSelf);
  FCSCustomerMailNRBuilder := nil;
end;

procedure TfrmVCLFCSCustomerMailBuilderNR.FormCreate(Sender: TObject);
begin
  inherited;
  FDMCarserviceUniPgSettings := TdmCarserviceUniPgSettings.Create(self);
  // Grid Sender ---------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaMailSendGridSender, FGridMailSender, True); // ;
  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerMailNRBuilder, FCSCustomerMailNRBuilder);
  FCSCustomerMailNRBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FCSCustomerMailNRBuilder.MailSender := FGridMailSender;
  FrameVCLMailMessageConfig.MailMessageBuilder := FCSCustomerMailNRBuilder;
end;

end.
