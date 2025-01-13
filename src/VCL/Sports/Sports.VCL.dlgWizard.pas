unit Sports.VCL.dlgWizard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, JvExControls, JvDBLookup, Data.DB, VCL.Grids, VCL.DBGrids, CRGrid,
  Janua.VCL.EnhCRDBGrid, VCL.StdCtrls, VCL.Mask, JvExMask, JvSpin, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit;

type
  TdlgVCLSportsWizard = class(TForm)
    JvDBLookupCombo1: TJvDBLookupCombo;
    dsSeasons: TDataSource;
    dsChampionships: TDataSource;
    JvDBLookupCombo2: TJvDBLookupCombo;
    EnhCRDBGrid1: TEnhCRDBGrid;
    dsTeamsChampioships: TDataSource;
    EnhCRDBGrid2: TEnhCRDBGrid;
    EnhCRDBGrid3: TEnhCRDBGrid;
    memTeams: TMemo;
    memMatches: TMemo;
    edSpinMatch: TJvSpinEdit;
    btnInsertTeams: TButton;
    EnhCRDBGrid4: TEnhCRDBGrid;
    dsAllTeams: TDataSource;
    Button1: TButton;
    EnhCRDBGrid5: TEnhCRDBGrid;
    dsMatches: TDataSource;
    edMatchDate: TJvDatePickerEdit;
    EnhCRDBGrid6: TEnhCRDBGrid;
    dsMatchDays: TDataSource;
    procedure btnInsertTeamsClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgVCLSportsWizard: TdlgVCLSportsWizard;

implementation

{$R *.dfm}

uses Janua.Sports.pgChampionshipWizard;

procedure TdlgVCLSportsWizard.btnInsertTeamsClick(Sender: TObject);
begin
  var
  m := dmPgSportsChampionshipWizard;

  for var aString in memTeams.Lines do
  begin

    if not m.qryAllTeams.Locate('team_name', Trim(aString), []) then
    begin
      m.qryAllTeams.Append;
      m.qryAllTeamsteam_name.AsString := Trim(aString);
      m.qryAllTeams.Post;
    end;

    m.qryTeamsChampionships.Append;
    m.qryTeamsChampionshipsteam_name.AsString := (Trim(aString));
    m.qryTeamsChampionships.Post;
  end;

end;

procedure TdlgVCLSportsWizard.Button1Click(Sender: TObject);
begin
  var
  m := dmPgSportsChampionshipWizard;

  if not m.qryMatchDays.Locate('match_day_number', Trunc(edSpinMatch.Value), [] ) then
  begin
    m.qryMatchDays.Append;
    m.qryMatchDaysmatch_day_number.AsInteger := Trunc(edSpinMatch.Value);
    m.qryMatchDaysmatch_day_date.AsDateTime := edMatchDate.Date;
    m.qryMatchDays.Post;
  end;

  for var aString in memMatches.Lines do
  begin

    var
    aList := TStringList.Create;
    aList.NameValueSeparator := '-';

    aList.Text := aString;
    var
    vHome := Trim(aList.KeyNames[0]);

    var
    vVisitors := Trim(aList.ValueFromIndex[0]);

    m.qryMatches.Append;
    m.qryMatchesmatch_day_number.AsInteger := Trunc(edSpinMatch.Value);
    m.qryMatcheshome_team_name.AsString := vHome;
    m.qryMatchesvisitors_team_name.AsString := vVisitors;
    m.qryMatchesmatch_date.AsDateTime := edMatchDate.Date;
    m.qryMatches.Post;



    {
      if not m.qryAllTeams.Locate('team_name', Trim(aString), []) then
      begin
      m.qryAllTeams.Append;
      m.qryAllTeamsteam_name.AsString := Trim(aString);
      m.qryAllTeams.Post;
      end;

      m.qryTeamsChampionships.Append;
      m.qryTeamsChampionshipsteam_name.AsString := (Trim(aString));
      m.qryTeamsChampionships.Post;
    }
  end;
end;

end.
