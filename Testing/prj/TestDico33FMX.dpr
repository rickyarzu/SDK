program TestDico33FMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmTestDico33Fmx in '..\src\ufrmTestDico33Fmx.pas' {TabbedwithNavigationForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTabbedwithNavigationForm, TabbedwithNavigationForm);
  Application.Run;
end.
