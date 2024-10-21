unit Janua.Sports.UniGUIFormMatches;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, System.Generics.Collections, System.ImageList,
  Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,
  uniImageList, uniButton, uniBitBtn, uniSpeedButton, uniPanel, uniPageControl,
  // Januaproject
  Janua.Sports.PgMatches, Janua.Carservice.UniGUI.frameCarBooking, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, unimComboBox, uniLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniBasicGrid, uniDBGrid, uniDBNavigator, UniFSButton,
  uniMenuButton, Vcl.Menus, uniMainMenu, uniGridExporters, UniFSMenuButton;

type
  TfrmUniGUISportMatches = class(TUniForm)
    { Datasources }
    dsMatchesPage: TDataSource;
    dsMatchDays: TDataSource;
    dsMatchdayRanking: TDataSource;
    dsMatches: TDataSource;
    { Local Table }
    fdmMatchesPage: TFDMemTable;
    fdmMatchesPageseason_id: TIntegerField;
    fdmMatchesPageleague_id: TIntegerField;
    fdmMatchesPagematchday: TSmallintField;
    cboMatchDay: TUniDBLookupComboBox;
    grdMatches: TUniDBGrid;
    btnNewMatch: TUniFSButton;
    btnManageMatch: TUniFSButton;
    UniFSButton1: TUniFSButton;
    grdRanking: TUniDBGrid;
    dsSelectTeams: TDataSource;
    btnAddMatchDay1: TUniFSButton;
    btnmnuExcel: TUniFSMenuButton;
    unpmnMatches: TUniPopupMenu;
    mnuMatches: TUniMenuItem;
    unmntmRanking: TUniMenuItem;
    ugexExcel1: TUniGridExcelExporter;
    dsSeason: TDataSource;
    dsChampionship: TDataSource;
    cboChampionship: TUniDBLookupComboBox;
    cboSeason: TUniDBLookupComboBox;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFSButton1Click(Sender: TObject);
    procedure btnAddMatchDay1Click(Sender: TObject);
    procedure unmntmRankingClick(Sender: TObject);
    procedure mnuMatchesClick(Sender: TObject);
  private
    { Private declarations }
    FCount: Integer;
    FMainFontColor: TColor;
    FdmJanuaPgSportsMatches: TdmJanuaPgSportsMatches;
    procedure SetdmJanuaPgSportsMatches(const Value: TdmJanuaPgSportsMatches);
  public
    { Public declarations }
    procedure FrameClose(Sender: TObject);
    property dmJanuaPgSportsMatches: TdmJanuaPgSportsMatches read FdmJanuaPgSportsMatches
      write SetdmJanuaPgSportsMatches;
  end;

function frmUniGUISportMatches: TfrmUniGUISportMatches;

implementation

{$R *.dfm}

uses
  uniGUIVars, Janua.UniGUI.MainModule, uniGUIApplication, Janua.Sports.Conf;

function frmUniGUISportMatches: TfrmUniGUISportMatches;
begin
  Result := TfrmUniGUISportMatches(UniMainModule.GetFormInstance(TfrmUniGUISportMatches));
end;

{ TfrmUniGUISportMatches }

procedure TfrmUniGUISportMatches.btnAddMatchDay1Click(Sender: TObject);
begin
  FdmJanuaPgSportsMatches.AddMatchDay
end;

procedure TfrmUniGUISportMatches.FrameClose(Sender: TObject);
begin

end;

procedure TfrmUniGUISportMatches.mnuMatchesClick(Sender: TObject);
begin
  grdMatches.Exporter.ExportGrid;
end;

procedure TfrmUniGUISportMatches.SetdmJanuaPgSportsMatches(const Value: TdmJanuaPgSportsMatches);
begin
  FdmJanuaPgSportsMatches := Value;
end;

procedure TfrmUniGUISportMatches.UniFormCreate(Sender: TObject);
begin
  FdmJanuaPgSportsMatches := TdmJanuaPgSportsMatches.Create(self);
  FdmJanuaPgSportsMatches.OpenLastMatchDay;
  { ulbSeasons.Caption := FdmJanuaPgSportsMatches.qrySeasonsseason_des.AsString;
    ulbLeague.Caption := FdmJanuaPgSportsMatches.qryChampionshipsleague_name.AsString; }

  fdmMatchesPage.Open;
  fdmMatchesPage.Append;
  fdmMatchesPageseason_id.AsInteger := FdmJanuaPgSportsMatches.qrySeasonsid.AsInteger;
  fdmMatchesPageleague_id.AsInteger := FdmJanuaPgSportsMatches.qryChampionshipsleague_id.AsInteger;
  fdmMatchesPagematchday.AsInteger := FdmJanuaPgSportsMatches.LastMatchDay;
  fdmMatchesPage.Post;

  dsMatchDays.DataSet := FdmJanuaPgSportsMatches.qryMatchDays;
  dsMatchdayRanking.DataSet := FdmJanuaPgSportsMatches.qryMatchdayRanking;

  FMainFontColor := Janua.Sports.Conf.TJanuaSportsConf.MainFontColor;

  cboMatchDay.Font.Color := FMainFontColor;
  grdMatches.TitleFont.Color := FMainFontColor;
  grdRanking.TitleFont.Color := FMainFontColor;
  cboChampionship.Font.Color := FMainFontColor;


end;

procedure TfrmUniGUISportMatches.UniFormDestroy(Sender: TObject);
begin
  if Assigned(FdmJanuaPgSportsMatches) then
    FreeAndNil(FdmJanuaPgSportsMatches);
end;

procedure TfrmUniGUISportMatches.UniFSButton1Click(Sender: TObject);
begin
  FdmJanuaPgSportsMatches.RefreshRanking;
end;

procedure TfrmUniGUISportMatches.unmntmRankingClick(Sender: TObject);
begin
  grdRanking.Exporter.ExportGrid;
end;

end.
