program Dico33BackEnd;

uses
  Vcl.Forms,
  ufrmTestDico33BackEnd in '..\src\ufrmTestDico33BackEnd.pas' {frmTestDico33BackEnd},
  udmTestHealthBooking in '..\src\udmTestHealthBooking.pas' {dmTestHealthBooking: TDataModule},
  udmJanuaPostgresModel in '..\..\src\januaunidac\datamodules\udmJanuaPostgresModel.pas' {dmJanuaPostgresModel: TDataModule},
  ufrmTestRicettaSSN in '..\src\ufrmTestRicettaSSN.pas' {frmTestRicettaSSN},
  udlgTestDico33DatiParente in '..\src\udlgTestDico33DatiParente.pas' {dlgTestDico33DatiParente},
  udlgDico33Login in '..\..\..\Playground\Prototipi\Dico33\VCL\udlgDico33Login.pas' {dlgDico33Login},
  udlgDico33RegistrationForm in '..\src\udlgDico33RegistrationForm.pas' {dlgDico33RegistrationForm},
  udmTestDico33Public in '..\src\udmTestDico33Public.pas' {dmDico33Public: TDataModule},
  udmPublic in '..\..\src\januaunidac\datamodules\udmPublic.pas' {dmPublic: TDataModule},
  udlgPhoneConfirmation in '..\..\src\VCL\udlgPhoneConfirmation.pas' {dlgSmsConfirmation},
  ufrmTestingLogs in '..\src\ufrmTestingLogs.pas' {frmTestingLogs},
  udmDico33Server in '..\..\..\projects\WebBroker\src\Dico33\udmDico33Server.pas' {dmDico33Server: TDataModule},
  ufrmTestWebServices in '..\src\ufrmTestWebServices.pas' {frmTestBookingJson};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTestDico33BackEnd, frmTestDico33BackEnd);
  Application.CreateForm(TfrmTestRicettaSSN, frmTestRicettaSSN);
  Application.CreateForm(TdlgTestDico33DatiParente, dlgTestDico33DatiParente);
  Application.CreateForm(TdlgDico33Login, dlgDico33Login);
  Application.CreateForm(TdlgSmsConfirmation, dlgSmsConfirmation);
  Application.CreateForm(TfrmTestingLogs, frmTestingLogs);
  Application.CreateForm(TdmDico33Server, dmDico33Server);
  Application.CreateForm(TfrmTestBookingJson, frmTestBookingJson);
  Application.Run;
end.
