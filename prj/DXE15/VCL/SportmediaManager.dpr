program SportmediaManager;

{$R 'SportmediaManager.res' '..\..\..\..\Projects\VCL\Football\prj\SportmediaManager.rc'}

{uses
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Themes,
  Vcl.Styles,
  Midaslib,
  Janua.Core.Classes,
  Janua.Core.Types,
  ufrmMDCFootball in '..\src\ufrmMDCFootball.pas' {frmMdcFootballChampionship},
  udlgFootballNewSeason in '..\src\udlgFootballNewSeason.pas' {dlgFootballNewSeason},
  udlgFootballSelectTeamLastSeason in '..\src\udlgFootballSelectTeamLastSeason.pas' {dlgFootballSelectTeamLastSeason},
  udlgFootballSelectMatchTeams in '..\src\udlgFootballSelectMatchTeams.pas' {dlgFootballSelectMatchTeams},
  udlgFootballSelectTeamClubPlayers in '..\src\udlgFootballSelectTeamClubPlayers.pas' {dlgFootballSelectTeamClubPlayers},
  udlgFootballClub in '..\src\udlgFootballClub.pas' {dlgFootballClub},
  udlgFootballPlayer in '..\src\udlgFootballPlayer.pas' {dlgFootballPlayer},
  udlgSelectPlayerMatch in '..\src\udlgSelectPlayerMatch.pas' {dlgSelectPlayerMatch},
  udmFootballAnagraph in '..\src\udmFootballAnagraph.pas' {dmFootballAnagraph: TDSServerModule},
  udlgFootballSuAnagraph in '..\src\udlgFootballSuAnagraph.pas' {dlgFootballSubAnagraph},
  udmFootballPlayerAnagraph in '..\src\udmFootballPlayerAnagraph.pas' {dmFootballPlayerAnagraph: TDSServerModule},
  ufrmRichEdit in '..\..\..\..\sdk\src\januavcl\ufrmRichEdit.pas' {frmRichEdit},
  udmPgAnagraph in '..\..\..\..\sdk\src\JanuaUnidac\datamodules\udmPgAnagraph.pas' {dmPgAnagraph: TDataModule},
  uJanuaVCLfrmMDCModel in '..\..\..\..\SDK\src\VCL\Legacy\uJanuaVCLfrmMDCModel.pas' {frmJanuaMdcModel},
  udmJanuaPostgresModel in '..\..\..\..\SDK\src\JanuaUnidac\datamodules\udmJanuaPostgresModel.pas' {dmJanuaPostgresModel: TDataModule},
  udlgFootballSelectSeason in '..\src\udlgFootballSelectSeason.pas' {dlgFootballSelectSeason},
  ufrmTeamLogo in '..\src\ufrmTeamLogo.pas' {dlgTeamsLogos},
  Janua.VCL.HtmlPreviewDialog in '..\..\..\..\SDK\src\VCL\Commons\Janua.VCL.HtmlPreviewDialog.pas' {HtmlPreviewDialog},
  udlgSelectLkpPlayer in '..\src\udlgSelectLkpPlayer.pas' {dlgSelectLkpPlayer},
  SMEConf in '..\..\..\Common\SMEConf.pas',
  udmJanuaCoreStorage in '..\..\..\..\SDK\src\januacore\datamodule\udmJanuaCoreStorage.pas' {dmJanuaCoreStorage: TDataModule},
  udmJanuaCoreServer in '..\..\..\..\SDK\src\januacore\udmJanuaCoreServer.pas' {dmJanuaCoreServer: TDataModule},
  udmFootballPostgres in '..\..\..\..\SDK\src\JanuaUnidac\datamodules\udmFootballPostgres.pas' {dmFootballPostgres: TDataModule},
  udmPgStorage in '..\..\..\..\SDK\src\JanuaUnidac\datamodules\udmPgStorage.pas' {dmPgStorage: TDataModule},
  udmPgSystemStorage in '..\..\..\..\SDK\src\JanuaUnidac\datamodules\udmPgSystemStorage.pas' {dmPgSystemStorage: TDataModule},
  udmPgViewModelSystem in '..\..\..\..\SDK\src\JanuaUnidac\ViewModels\udmPgViewModelSystem.pas' {dmViewModelSystem: TDataModule},
  udmPgSystemViewModel in '..\..\..\..\SDK\src\VCL\udmPgSystemViewModel.pas' {dmPgSystemViewModel: TDataModule},
  ufrmModelNewUser in '..\..\..\..\SDK\src\VCL\System\ufrmModelNewUser.pas' {frmModelNewUser},
  udmVCLPgFootballViewModel in '..\..\..\..\SDK\src\VCL\udmVCLPgFootballViewModel.pas' {dmVCLPgFootballViewModel: TDataModule},
  udmFootballController in '..\src\udmFootballController.pas' {dmFootballController: TDataModule};

{$R *.res}

type
  TFootballOperator = (Sportmedia, Dilettantissimo);

var
  aOperator: TFootballOperator;

begin
  aOperator := TFootballOperator.Sportmedia;
  JanuaApplicationGlobalProfile.JanuaServerConf.Address := 'baltun.pasolutions.ru';
  JanuaApplicationGlobalProfile.JanuaServerConf.DatabaseName := 'januaproject';

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  // Application.CreateForm(TdmFootball, dmFootball);
  // ShowMessage('Inizializzo frmErgoMail');
  Application.Title := 'Sportmedia Football Magazine';
  ApApplication.CreateForm(TfrmMdcFootballChampionship, frmMdcFootballChampionship);
  Application.CreateForm(TdlgFootballSubAnagraph, dlgFootballSubAnagraph);
  Application.CreateForm(TdlgFootballSelectTeamClubPlayers, dlgFootballSelectTeamClubPlayers);
  Application.CreateForm(TdlgFootballClub, dlgFootballClub);
  plication.Run;

end.
