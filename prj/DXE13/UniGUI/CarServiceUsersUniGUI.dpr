program CarServiceUsersUniGUI;

uses
  Forms,
  Janua.CarService.UniGUI.ServerModule
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule} ,
  Janua.CarService.UniGUI.MainModule
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule} ,
  Janua.CarService.UniGUI.Main
    in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUI.Main.pas' {MainForm: TUniForm} ,
  Janua.CarService.UniGUI.LoginRegisterForm
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.LoginRegisterForm.pas' {frmCarServiceUniGUILoginRegister: TUniLoginForm} ,
  Janua.CarService.UniGUIApplication in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUIApplication.pas',
  Janua.CarService.UniGUI.frameCarBooking
    in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCarBooking.pas' {frameCarServiceUniGUIBooking: TUniFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TJanuaUniGUIApplication.ApplicationSetup;
  TUniServerModule.Create(Application);
  Application.Run;

end.
