unit Janua.CarService.VCL.frmDriverMailBuilder1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs,
  // Januaproject
  Janua.CarService.intf, Janua.VCL.Cloud.frmMailMessageConfig, Janua.Cloud.Mail.intf,
  Janua.CarService.PgSettings, Janua.VCL.Cloud.frameMailMessageConfig;

type
  TfrmVCLFCSDriverMailBuilder1 = class(TfrmVCLMailMessageConfig)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FGridMailSender: IJanuaMailSendGridSender;
    FCSDriverMailBuilder1: IJanuaCSDriverMailBuilder1;
    FDMCarserviceUniPgSettings: TdmCarserviceUniPgSettings;
  public
    { Public declarations }
  end;

var
  frmVCLFCSDriverMailBuilder1: TfrmVCLFCSDriverMailBuilder1;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLFCSDriverMailBuilder1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(FCSDriverMailBuilder1) then
    TJanuaApplication.ReleaseObject(FCSDriverMailBuilder1.GetSelf);
  FCSDriverMailBuilder1 := nil;
end;

procedure TfrmVCLFCSDriverMailBuilder1.FormCreate(Sender: TObject);
begin
  inherited;
  FDMCarserviceUniPgSettings := TdmCarserviceUniPgSettings.Create(self);
  // Grid Sender ---------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaMailSendGridSender, FGridMailSender, True); // ;
  // ---------------------------------------------------------------------------------------------------------
  TJanuaApplicationFactory.TryGetInterface(IJanuaCSDriverMailBuilder1, FCSDriverMailBuilder1);
  FCSDriverMailBuilder1.Dataset := FDMCarserviceUniPgSettings.qryBooking;
  FCSDriverMailBuilder1.MailSender := FGridMailSender;
  FrameVCLMailMessageConfig.MailMessageBuilder := FCSDriverMailBuilder1;
end;

end.
