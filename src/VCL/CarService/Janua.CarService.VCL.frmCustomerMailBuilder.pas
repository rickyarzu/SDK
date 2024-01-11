unit Janua.CarService.VCL.frmCustomerMailBuilder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs,
  // Januaproject ----
  Janua.CarService.PgSettings, Janua.CarService.Intf, Janua.VCL.Cloud.frmMailMessageConfig,
  Janua.Cloud.Mail.Intf,
  Janua.VCL.Cloud.frameMailMessageConfig, Vcl.ComCtrls;

type
  TfrmVCLFCSCustomerMailBuilder = class(TfrmVCLMailMessageConfig)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    FGridMailSender: IJanuaMailSendGridSender;
    FCSCustomerMailBuilder: IJanuaCSCustomerMailBuilder;
    FDMCarserviceUniPgSettings: TdmCarserviceUniPgSettings;
  public
    { Public declarations }
  end;

var
  frmVCLFCSCustomerMailBuilder: TfrmVCLFCSCustomerMailBuilder;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLFCSCustomerMailBuilder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(FCSCustomerMailBuilder) then
    TJanuaApplication.ReleaseObject(FCSCustomerMailBuilder.GetSelf);
  FCSCustomerMailBuilder := nil;
end;

procedure TfrmVCLFCSCustomerMailBuilder.FormCreate(Sender: TObject);
begin
  inherited;
  FDMCarserviceUniPgSettings := TdmCarserviceUniPgSettings.Create(self);
  // Grid Sender ---------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaMailSendGridSender, FGridMailSender, True); // ;
  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSCustomerMailBuilder, FCSCustomerMailBuilder);
  FCSCustomerMailBuilder.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FCSCustomerMailBuilder.MailSender := FGridMailSender;
  FrameVCLMailMessageConfig.MailMessageBuilder := FCSCustomerMailBuilder;
  FrameVCLMailMessageConfig.MasterDataset := FDMCarserviceUniPgSettings.qryBooking;
end;

end.
