program CarServiceCustomerConfirmation;

uses
  Forms,
  Janua.Application.Framework,
  Janua.UniGUI.Interposers,
  Janua.UniGUI.MainModule in '..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Janua.UniGUI.ServerModule in '..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Janua.CarService.UniGUI.frameTimeCalendarSelect in '..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeCalendarSelect.pas' {frameTimeCalendarSelect: TUniFrame},
  Janua.Carservice.UniGUIApplication in '..\..\src\UniGUI\CarService\Janua.Carservice.UniGUIApplication.pas',
  Janua.UniGUI.mainFormCustConfirmation in '..\..\src\UniGUI\CarService\Janua.UniGUI.mainFormCustConfirmation.pas' {MainCustConfForm: TUniForm},
  Janua.Carservice.PgCustomers in '..\..\src\januaunidac\datamodules\Janua.Carservice.PgCustomers.pas' {dmPgCarServiceCustomers: TDataModule},
  Janua.UniGUI.TextConfirmation in '..\..\src\UniGUI\Common\Janua.UniGUI.TextConfirmation.pas' {frameUniGUITextConfirmation: TUniFrame};

{$R *.res}

begin
{$IFDEF DEBUG} ReportMemoryLeaksOnShutdown := True; {$ENDIF}
  Application.Initialize;
  TJanuaCarServiceUniGUIApplication.ApplicationSetup('customerconf.pikapp.it');
  TJanuacoreOS.WriteParam('UniGUI', 'Port', 8084);
{$IFDEF DEBUG}ReportMemoryLeaksOnShutdown := True; {$ENDIF}
  TUniServerModule.Create(Application);
  Application.Run;

end.
