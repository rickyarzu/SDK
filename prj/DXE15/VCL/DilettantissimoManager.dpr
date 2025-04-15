program DilettantissimoManager;

uses
  Vcl.Forms,
  Vcl.Dialogs,
  Midaslib,
  Janua.Core.Classes,
  Janua.Core.Types,
  Janua.Application.Framework,
  ufrmMDCFootball in '..\..\..\src\VCL\Football\ufrmMDCFootball.pas' {frmMdcFootballChampionship},
  Vcl.Themes,
  Vcl.Styles,
  udlgFootballNewSeason in '..\..\..\src\VCL\Football\udlgFootballNewSeason.pas' {dlgFootballNewSeason},
  udlgFootballSelectSeason in '..\..\..\src\VCL\Football\udlgFootballSelectSeason.pas' {dlgFootballSelectSeason},
  udlgFootballSelectTeamLastSeason in '..\..\..\src\VCL\Football\udlgFootballSelectTeamLastSeason.pas' {dlgFootballSelectTeamLastSeason},
  udlgFootballSelectMatchTeams in '..\..\..\src\VCL\Football\udlgFootballSelectMatchTeams.pas' {dlgFootballSelectMatchTeams},
  udlgFootballSelectTeamClubPlayers in '..\..\..\src\VCL\Football\udlgFootballSelectTeamClubPlayers.pas' {dlgFootballSelectTeamClubPlayers},
  udlgFootballClub in '..\..\..\src\VCL\Football\udlgFootballClub.pas' {dlgFootballClub},
  udlgFootballPlayer in '..\..\..\src\VCL\Football\udlgFootballPlayer.pas' {dlgFootballPlayer},
  udlgSelectPlayerMatch in '..\..\..\src\VCL\Football\udlgSelectPlayerMatch.pas' {dlgSelectPlayerMatch},
  udmFootball in '..\..\..\src\VCL\Football\udmFootball.pas' {dmFootball: TDSServerModule},
  udmFootballAnagraph in '..\..\..\src\VCL\Football\udmFootballAnagraph.pas' {dmFootballAnagraph: TDSServerModule},
  udlgFootballSuAnagraph in '..\..\..\src\VCL\Football\udlgFootballSuAnagraph.pas' {dlgFootballSubAnagraph},
  udmFootballPlayerAnagraph in '..\..\..\src\VCL\Football\udmFootballPlayerAnagraph.pas' {dmFootballPlayerAnagraph: TDSServerModule},
  ufrmRichEdit in '..\..\..\src\VCL\ufrmRichEdit.pas' {frmRichEdit},
  uJanuaVCLfrmMDCModel in '..\..\..\src\VCL\Legacy\uJanuaVCLfrmMDCModel.pas' {frmJanuaMdcModel},
  udmJanuaPostgresModel in '..\..\..\src\januaunidac\datamodules\udmJanuaPostgresModel.pas' {dmJanuaPostgresModel: TDataModule},
  Janua.VCL.HtmlPreviewDialog in '..\..\..\src\VCL\Commons\Janua.VCL.HtmlPreviewDialog.pas' {HtmlPreviewDialog},
  ufrmTeamLogo in '..\..\..\src\VCL\Football\ufrmTeamLogo.pas' {dlgTeamsLogos},
  udmFootballPostgres in '..\..\..\src\januaunidac\datamodules\udmFootballPostgres.pas' {dmFootballPostgres: TDataModule},
  udmJanuaCoreServer in '..\..\..\src\januacore\udmJanuaCoreServer.pas' {dmJanuaCoreServer: TDataModule},
  udmPgAnagraph in '..\..\..\src\januaunidac\datamodules\udmPgAnagraph.pas' {dmPgAnagraph: TDataModule},
  udlgSelectLkpPlayer in '..\..\..\src\VCL\Football\udlgSelectLkpPlayer.pas' {dlgSelectLkpPlayer},
  udmPgViewModelSystem in '..\..\..\src\JanuaUnidac\ViewModels\udmPgViewModelSystem.pas' {dmViewModelSystem: TDataModule},
  DILConf in '..\..\..\src\januacore\custom\DILConf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.ServerDatabaseName := 'ergomercator';
  Application.Title := 'Football Magazine';
  Application.CreateForm(TfrmMdcFootballChampionship, frmMdcFootballChampionship);
  // Application.CreateForm(TdlgFootballSubAnagraph, dlgFootballSubAnagraph);

  {
    Application.CreateForm(TdlgFootballSelectTeamClubPlayers, dlgFootballSelectTeamClubPlayers);
    Application.CreateForm(TdlgFootballClub, dlgFootballClub);
  }
  Application.Run;

end.
