unit udmFootballController;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  // Janua
  Janua.football.Types;

type
  TdmFootballController = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExportCareer;
    procedure ExportTeam(const aCommand: string; const aFootballForm: TJanuaFooballForm);
  end;

var
  dmFootballController: TdmFootballController;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses udmFootballPostgres, ufrmRichEdit;

{$R *.dfm}
{ TDataModule1 }

procedure TdmFootballController.ExportCareer;
var
  a: TfrmRichEdit;
  LRow: string;
begin
  a := TfrmRichEdit.Create(nil);
  try
    a.advMemo1.Lines.Clear;
    with dmFootballPostgres, a.advMemo1.Lines do
    begin
      Add(qryAllPlayersfirst_name.AsWideString + ' ' + qryAllPlayersfamily_name.AsWideString + ' nato il: ' +
        qryAllPlayersbirth_date.AsWideString + ', ruolo: ' + qryAllPlayerslkpRoleName.AsWideString);
      qryPlayerHistory.First;
      while not dmFootballPostgres.qryPlayerHistory.Eof do
      begin
        LRow := qryPlayerHistoryseason_code.AsWideString + #9 + qryPlayerHistoryleague_code.AsWideString + #9
          + qryPlayerHistoryteam_name.AsWideString + #9 + qryPlayerHistorymatches.AsWideString + #9 +
          qryPlayerHistorygoals.AsWideString + #9 + qryPlayerHistoryminutes.AsWideString;
        a.advMemo1.Lines.Add(LRow);
        dmFootballPostgres.qryPlayerHistory.Next;
      end;
    end;
    a.ShowModal
  finally
    FreeAndNil(a);
  end;
end;

procedure TdmFootballController.ExportTeam(const aCommand: string; const aFootballForm: TJanuaFooballForm);
var
  DataSource: TDataSource;
  a: TfrmRichEdit;
begin
  a := nil;
  DataSource := nil;
  // Application.CreateForm(TfrmRichEdit, a);
  a := TfrmRichEdit.Create(nil);
  try
    case aFootballForm of
      jffClubs:
        DataSource := dmFootballPostgres.dsTeamPlayers;
      jffChampionship:
        DataSource := dmFootballPostgres.dsTeamChampPlayers;
      jffMatch:
        ;
    else
      DataSource := dmFootballPostgres.dsTeamChampPlayers;
    end;
    a.advMemo1.Lines.Clear;

    Assert(Assigned(DataSource), 'Datasource is Null .. Error');
    Assert(Assigned(DataSource.DataSet), 'Dataset is Null .. Error');

    if DataSource.DataSet.RecordCount > 0 then
      with DataSource.DataSet do
      begin
        First;
        while not Eof do
        begin
          if aCommand = 'N4Colonne1' then
            a.advMemo1.Lines.Add(FieldByName('first_name').AsWideString + FieldByName('last_name')
              .AsWideString + #9 + FieldByName('birth_date').AsWideString + #9)
          else if aCommand = 'N5Colonne1' then
            a.advMemo1.Lines.Add(FieldByName('first_name').AsWideString + FieldByName('last_name')
              .AsWideString + #9 + FieldByName('birth_date').AsWideString + #9 + FieldByName('minutes')
              .AsWideString)
          else if aCommand = 'N4Colonne1' then
            a.advMemo1.Lines.Add(FieldByName('first_name').AsWideString + FieldByName('last_name')
              .AsWideString + #9 + FieldByName('birth_date').AsWideString + #9 + FieldByName('minutes')
              .AsWideString + #9 + FieldByName('goal').AsWideString);

          dmFootballPostgres.qryChampRanking.Next;
          Next;
        end;
      end;
    a.ShowModal;
  finally
    a.Free;
  end;

end;

end.
