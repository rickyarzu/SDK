program SportsManager;

uses
  Vcl.Forms,
  Vcl.Dialogs,
  Midaslib,
  Janua.Core.Classes,
  Janua.Core.Types,
  Janua.Application.Framework,
  ufrmMDCChampionship in '..\..\..\src\VCL\Sports\ufrmMDCChampionship.pas' {frmMdcChampionship},
  Vcl.Themes,
  Vcl.Styles,
  udlgSportsSelectSeason in '..\..\..\src\VCL\Sports\udlgSportsSelectSeason.pas' {dlgSportsSelectSeason},
  udlgSportsSelectTeamLastSeason in '..\..\..\src\VCL\Sports\udlgSportsSelectTeamLastSeason.pas' {dlgSportsSelectTeamLastSeason},
  udlgSportsSelectPlayerMatch in '..\..\..\src\VCL\Sports\udlgSportsSelectPlayerMatch.pas' {dlgSelectPlayerMatch},
  Janua.Sports.PgAnagraph in '..\..\..\src\januaunidac\datamodules\Janua.Sports.PgAnagraph.pas' {dmSportAnagraph: TDSServerModule},
  udlgSportsSubAnagraph in '..\..\..\src\VCL\Sports\udlgSportsSubAnagraph.pas' {dlgSportSubAnagraph},
  ufrmRichEdit in '..\..\..\src\VCL\ufrmRichEdit.pas' {frmRichEdit},
  uJanuaVCLfrmMDCModel in '..\..\..\src\VCL\Legacy\uJanuaVCLfrmMDCModel.pas' {frmJanuaMdcModel},
  udmJanuaPostgresModel in '..\..\..\src\januaunidac\datamodules\udmJanuaPostgresModel.pas' {dmJanuaPostgresModel: TDataModule},
  Janua.VCL.HtmlPreviewDialog in '..\..\..\src\VCL\Commons\Janua.VCL.HtmlPreviewDialog.pas' {HtmlPreviewDialog},
  ufrmTeamLogo in '..\..\..\src\VCL\Sports\ufrmTeamLogo.pas' {dlgTeamsLogos},
  Janua.Sports.PgChampionship in '..\..\..\src\januaunidac\datamodules\Janua.Sports.PgChampionship.pas' {dmUniDacPgChampionships: TDataModule},
  udmJanuaCoreServer in '..\..\..\src\januacore\udmJanuaCoreServer.pas' {dmJanuaCoreServer: TDataModule},
  udmPgAnagraph in '..\..\..\src\januaunidac\datamodules\udmPgAnagraph.pas' {dmPgAnagraph: TDataModule},
  udlgSportsSelectLkpPlayer in '..\..\..\src\VCL\Sports\udlgSportsSelectLkpPlayer.pas' {dlgSelectLkpPlayer},
  udmPgViewModelSystem in '..\..\..\src\JanuaUnidac\ViewModels\udmPgViewModelSystem.pas' {dmViewModelSystem: TDataModule},
  DILConf in '..\..\..\src\januacore\custom\DILConf.pas',
  udlgSportsNewSeason in '..\..\..\src\VCL\Sports\udlgSportsNewSeason.pas' {dlgSportsNewSeason},
  udlgSportsClub in '..\..\..\src\VCL\Sports\udlgSportsClub.pas' {dlgFootballClub};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TJanuaApplication.IsTestVersion := False;
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.ServerDatabaseName := 'ergomercator';
  TJanuaApplication.Initialize;
  TStyleManager.TrySetStyle('Win10IDE_Light');
  Application.Title := 'Sports Manager';
  Application.CreateForm(TfrmMdcChampionship, frmMdcChampionship);
  Application.Run;

end.
