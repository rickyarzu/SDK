program LNDLiguriaAppTest;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmTestLNDTabbedNavigation in 'ufrmTestLNDTabbedNavigation.pas' {TabbedwithNavigationForm},
  Janua.FMX.LND.dmMain in '..\..\..\src\FMX\Football\Janua.FMX.LND.dmMain.pas' {LNDMainDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTabbedwithNavigationForm, TabbedwithNavigationForm);
  Application.CreateForm(TLNDMainDataModule, LNDMainDataModule);
  Application.Run;
end.
