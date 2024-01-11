unit Janua.Sports.UniGUIFormPadelMatchesFrontEnd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, uniGUIBaseClasses, uniImageList, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uniButton, uniBitBtn, UniFSButton, uniGUIClasses, uniDBNavigator, uniBasicGrid, uniDBGrid, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniLabel,
  // Januaprojet
  Janua.Sports.UniGUIFormMatches, uniGridExporters, Vcl.Menus, uniMainMenu, uniMenuButton, UniFSMenuButton;

type
  TfrmUniGUIPadelMatchesFrontEnd = class(TfrmUniGUISportMatches)
    ugexMatches: TUniGridExcelExporter;
    lbChampionship: TUniLabel;
    procedure btnNewMatchClick(Sender: TObject);
    procedure btnManageMatchClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUniGUIPadelMatchesFrontEnd: TfrmUniGUIPadelMatchesFrontEnd;

implementation

uses
  uniGUIVars, Janua.UniGUI.MainModule, uniGUIApplication, Janua.Core.Functions,
  Janua.Sports.UniGUIFormPadelMatch;

{$R *.dfm}

procedure TfrmUniGUIPadelMatchesFrontEnd.btnManageMatchClick(Sender: TObject);
var
  lFrmMatch: TfrmUniGUIPadelMatch;
begin
  inherited;
  lFrmMatch := TfrmUniGUIPadelMatch.Create(UniApplication);
  lFrmMatch.DM := dmJanuaPgSportsMatches;
  lFrmMatch.NewRecord := False;
  lFrmMatch.ShowModal(
    procedure(Sender: TComponent; AResult: Integer)
    begin
      // lFrmMatch.Free;
    end);
end;

procedure TfrmUniGUIPadelMatchesFrontEnd.btnNewMatchClick(Sender: TObject);
var
  lFrmMatch: TfrmUniGUIPadelMatch;
begin
  inherited;
  dmJanuaPgSportsMatches.qryMatches.Append;
  lFrmMatch := TfrmUniGUIPadelMatch.Create(UniApplication);
  lFrmMatch.DM := dmJanuaPgSportsMatches;
  lFrmMatch.NewRecord := True;
  lFrmMatch.ShowModal(
    procedure(Sender: TComponent; AResult: Integer)
    begin
      // lFrmMatch.Free;
    end);
end;

procedure TfrmUniGUIPadelMatchesFrontEnd.UniFormCreate(Sender: TObject);
begin
  inherited;
  var
  sSeasonID := TUniGUIApplication(UniApplication).Parameters.Values['SeasonID'];
  if (sSeasonID <> '') and IsNumeric(sSeasonID) then
    dmJanuaPgSportsMatches.SeasonID := sSeasonID.ToInteger;

  var
  sLeagueID := TUniGUIApplication(UniApplication).Parameters.Values['LeagueID'];
  if (sLeagueID <> '') and IsNumeric(sLeagueID) then
    dmJanuaPgSportsMatches.LeagueID := sLeagueID.ToInteger;

  lbChampionship.Caption :=  dmJanuaPgSportsMatches.ChampionshipName;
end;

initialization

RegisterAppFormClass(TfrmUniGUIPadelMatchesFrontEnd);

end.
