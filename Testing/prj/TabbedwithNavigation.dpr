program TabbedWithNavigation;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmTestTabbedCreationComponents in '..\src\ufrmTestTabbedCreationComponents.pas' {TabbedwithNavigationForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTabbedwithNavigationForm, TabbedwithNavigationForm);
  Application.Run;
end.
