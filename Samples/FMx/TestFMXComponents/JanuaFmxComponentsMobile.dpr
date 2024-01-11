program JanuaFmxComponentsMobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  TabbedFormwithNavigation in 'TabbedFormwithNavigation.pas' {TabbedwithNavigationForm},
  Janua.FMX.Resources in '..\..\..\src\FMX\Commons\Janua.FMX.Resources.pas' {dmFMXResources: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTabbedwithNavigationForm, TabbedwithNavigationForm);
  Application.CreateForm(TdmFMXResources, dmFMXResources);
  Application.Run;
end.
