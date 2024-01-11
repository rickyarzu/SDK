unit ufrmFootballRankingPanel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCGrids, AdvOfficeImage, Vcl.Grids,
  Vcl.DBGrids, CRGrid, Janua.VCL.EnhCRDBGrid, System.Actions, Vcl.ActnList, Data.DB,
  Janua.Core.Classes, Janua.Core.Football, Janua.VCL.FootballControllers, Vcl.Menus, AdvMenus,
  Vcl.StdCtrls, Vcl.DBCtrls;

type
  TfrmFootballRankingPanel = class(TForm)
    Panel1: TPanel;
    AdvOfficeImage1: TAdvOfficeImage;
    DBCtrlGrid1: TDBCtrlGrid;
    EnhCRDBGrid1: TEnhCRDBGrid;
    dsSeasons: TDataSource;
    dsLeagues: TDataSource;
    dsMatches: TDataSource;
    dsNextMatches: TDataSource;
    dsGoalRanking: TDataSource;
    dsRanking: TDataSource;
    AdvMainMenu1: TAdvMainMenu;
    Campionato1: TMenuItem;
    VediGiornata1: TMenuItem;
    DBText1: TDBText;
    Panel2: TPanel;
    Panel3: TPanel;
    CRDBGrid1: TCRDBGrid;
    CRDBGrid2: TCRDBGrid;
    CRDBGrid3: TCRDBGrid;
    CRDBGrid4: TCRDBGrid;
    procedure VediGiornata1Click(Sender: TObject);
  private
    { Private declarations }
    JanuaVCLFootballRankingController: TJanuaVCLFootballRankingController;
  public
    { Public declarations }
  end;

var
  frmFootballRankingPanel: TfrmFootballRankingPanel;

implementation

{$R *.dfm}

uses udmVCLPgErgoAdminController;

procedure TfrmFootballRankingPanel.VediGiornata1Click(Sender: TObject);
begin
 JanuaVCLFootballRankingController := TJanuaVCLFootballRankingController.Create(self);
  JanuaVCLFootballRankingController.JanuaLogger := dmVCLPgErgoAdminController.JanuaCoreLogger;
  JanuaVCLFootballRankingController.ServerFootball := dmVCLPgErgoAdminController.JanuaServerPgFootball;

  self.JanuaVCLFootballRankingController.Activate;
  JanuaVCLFootballRankingController.dsSeasons := self.dsSeasons;
  JanuaVCLFootballRankingController.dsLeagues := self.dsLeagues;
  JanuaVCLFootballRankingController.dsMatches := self.dsMatches;
  JanuaVCLFootballRankingController.dsNextMatches := self.dsNextMatches;
  JanuaVCLFootballRankingController.dsGoalRanking := self.dsGoalRanking;
  JanuaVCLFootballRankingController.dsRanking := self.dsRanking;
end;

end.
