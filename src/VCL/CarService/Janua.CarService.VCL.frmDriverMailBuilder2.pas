unit Janua.CarService.VCL.frmDriverMailBuilder2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs,
  // Januaproject
  Janua.CarService.PgSettings, Janua.VCL.Cloud.frmMailMessageConfig, Janua.Cloud.Mail.Intf,
  Janua.CarService.Intf, Janua.VCL.Cloud.frameMailMessageConfig;

type
  TfrmVCLFCSDriverMailBuilder2 = class(TfrmVCLMailMessageConfig)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FGridMailSender: IJanuaMailSendGridSender;
    FCSDriverMailBuilder2: IJanuaCSDriverMailBuilder2;
    FDMCarserviceUniPgSettings : TdmCarserviceUniPgSettings;
  public
    { Public declarations }
  end;

var
  frmVCLFCSDriverMailBuilder2: TfrmVCLFCSDriverMailBuilder2;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLFCSDriverMailBuilder2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(FCSDriverMailBuilder2) then
    TJanuaApplication.ReleaseObject(FCSDriverMailBuilder2.GetSelf);
  FCSDriverMailBuilder2 := nil;
end;

procedure TfrmVCLFCSDriverMailBuilder2.FormCreate(Sender: TObject);
begin
  inherited;
  FDMCarserviceUniPgSettings := TdmCarserviceUniPgSettings.Create(self);
  // Grid Sender ---------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaMailSendGridSender, FGridMailSender, True); // ;
  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverMailBuilder2, FCSDriverMailBuilder2);
  FCSDriverMailBuilder2.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FCSDriverMailBuilder2.MailSender := FGridMailSender;
  FrameVCLMailMessageConfig.MailMessageBuilder := FCSDriverMailBuilder2;
end;

end.
