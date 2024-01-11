program TabbedWithNavigation;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.CarService.FMX.frmTabbedCarService in '..\..\..\src\FMX\CarService\Janua.CarService.FMX.frmTabbedCarService.pas' {TabbedwithNavigationForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTabbedwithNavigationForm, TabbedwithNavigationForm);
  Application.Run;
end.
