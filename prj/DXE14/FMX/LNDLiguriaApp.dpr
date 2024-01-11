program LNDLiguriaApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  Janua.FMX.LND.frmMainMobile in '..\..\..\src\FMX\Football\Janua.FMX.LND.frmMainMobile.pas' {TabbedwithNavigationForm},
  Janua.FMX.LND.dmMain in '..\..\..\src\FMX\Football\Janua.FMX.LND.dmMain.pas' {LNDMainDataModule: TDataModule},
  Janua.FMX.frmBrowser in '..\..\..\src\FMX\Janua.FMX.frmBrowser.pas' {fmLndBrowser},
  Janua.FMX.LND.frameArticle in '..\..\..\src\FMX\Football\Janua.FMX.LND.frameArticle.pas' {FrameLNDArticle: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTabbedwithNavigationForm, TabbedwithNavigationForm);
  //Application.CreateForm(TfmLndBrowser, fmLndBrowser);
  //Application.CreateForm(TLNDDMMobileDB, LNDDMMobileDB);
  Application.Run;

end.
