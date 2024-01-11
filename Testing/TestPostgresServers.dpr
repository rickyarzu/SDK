program TestPostgresServers;

uses
  Vcl.Forms,
  ufrmTestProcedures in 'src\ufrmTestProcedures.pas' {frmMDIUnitTestingForm},
  ufrmTestErgoWebBroker in 'src\ufrmTestErgoWebBroker.pas' {Form2},
  ufrmJanuaCoreFunctions in 'src\ufrmJanuaCoreFunctions.pas' {frmJanuaCoreFunctions},
  udlgServerSettings in '..\..\Playground\Prototipi\MailSender\udlgServerSettings.pas' {dlgServerSettings},
  ufrmTestMailSenderMain in '..\..\Playground\Prototipi\MailSender\ufrmTestMailSenderMain.pas' {frmTestMailSenderMain},
  ufrmTestJanuaCoreFTP in 'src\ufrmTestJanuaCoreFTP.pas' {frmTestJanuaCoreFTP},
  udmJanuaCoreTesting in 'src\udmJanuaCoreTesting.pas' {dmJanuaCoreTesting: TDataModule},
  udmJanuaCoreTestingController in 'src\udmJanuaCoreTestingController.pas' {dmJanuaCoreTestingController: TDataModule},
  ufrmTestJanuaCoreClasses in 'src\ufrmTestJanuaCoreClasses.pas' {frmTestJanuaCoreClasses},
  ufrmTestFootball in 'src\ufrmTestFootball.pas' {frmTestFootball};

{$R *.res}

var
  dmJanuaCoreTestingController: TdmJanuaCoreTestingController;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  dmJanuaCoreTestingController := TdmJanuaCoreTestingController.Create(Application);
  dmJanuaCoreTestingController.Activate;
  Application.CreateForm(TfrmMDIUnitTestingForm, frmMDIUnitTestingForm);
  frmMDIUnitTestingForm.dmJanuaCoreTestingController :=  dmJanuaCoreTestingController;
  Application.Run;
end.
