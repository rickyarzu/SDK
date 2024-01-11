program TestSDKMobile;

uses
  System.StartUpCopy,
  FMX.Forms,
  TabbedFormwithNavigation in '..\src\TabbedFormwithNavigation.pas' {TabbedwithNavigationForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTabbedwithNavigationForm, TabbedwithNavigationForm);
  Application.Run;
end.
