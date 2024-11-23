program CarServiceCustomerConfirmation;

uses
  Forms,
  Janua.Application.Framework,
  Janua.UniGUI.Interposers,
  Janua.Carservice.UniGUIApplication in '..\..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUIApplication.pas',
  Janua.UniGUI.CustConfirmationMainForm in '..\..\..\src\UniGUI\CarService\Janua.UniGUI.CustConfirmationMainForm.pas' {MainForm: TUniForm},
  Janua.UniGUI.MainModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Janua.UniGUI.ServerModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Janua.Carservice.PgCustomers in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.PgCustomers.pas' {dmPgCarServiceCustomers: TDataModule},
  Janua.CarService.UniGUI.frameTimeSlot in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeSlot.pas' {frameTimeSelect: TUniFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  TJanuaUniGUIApplication.ApplicationSetup;
  Application.Run;

end.
