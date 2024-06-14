unit ufrmTMSPlannerDBperformanceQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBPlanner, Planner, StdCtrls, Grids, DBGrids, {DebugUtil,} ComObj, ActiveX;

const
  numres = 200;

type
  TForm1 = class(TForm)
    DBPlanner1: TDBPlanner;
    DBPeriodSource1: TDBPeriodSource;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBPeriodSource1ChangeQuery(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  DBPeriodSource1.Active := false;
  DBPeriodSource1.StartDate := DBPeriodSource1.StartDate - 7;
  DBPeriodSource1.EndDate := DBPeriodSource1.EndDate - 7;
  DBPeriodSource1.Active := true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  DBPeriodSource1.Active := false;
  DBPeriodSource1.StartDate := DBPeriodSource1.StartDate + 7;
  DBPeriodSource1.EndDate := DBPeriodSource1.EndDate + 7;
  DBPeriodSource1.Active := true;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i: integer;
  GUID: TGUID;
begin
  (*
    starttimer;
    dbperiodsource1.DataSource := nil;
    for I := 1 to 1200  do
    begin
    adoquery1.Insert;
    CoCreateGUID(GUID);
    adoquery1.fieldbyname('STARTTIME').AsDateTime := Now + random(5);
    adoquery1.fieldbyname('ENDTIME').AsDateTime := Now + random(5);
    adoquery1.fieldbyname('RESOURCE').AsInteger := random(numres);
    adoquery1.fieldbyname('KEYFIELD').AsString := GUIDToString(GUID);
    adoquery1.fieldbyname('SUBJECT').AsString := '';
    adoquery1.fieldbyname('NOTES').AsString := '';
    adoquery1.Post;
    end;
    stoptimer(taMessage);
    Exit;
  *)

  DBPlanner1.Items.BeginUpdate;

  for i := 1 to 1200 do
  begin
    with DBPlanner1.CreateItem do
    begin
      itemstarttime := DBPeriodSource1.StartDate + random(5);
      itemendtime := itemstarttime + 1;
      itempos := random(numres);
      update;
    end;
  end;
  DBPlanner1.Items.EndUpdate;

end;

procedure TForm1.DBPeriodSource1ChangeQuery(Sender: TObject);
begin
  ADOQuery1.SQL.Text := 'SELECT * FROM SCHEDULES WHERE ((STARTTIME > #' +
    datetostr(DBPeriodSource1.StartDate - 1) + '#) AND (ENDTIME < #' +
    datetostr(DBPeriodSource1.EndDate + 1) + '#))';
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: integer;
begin
  DBPlanner1.Sidebar.Position := spTop;
  DBPlanner1.Sidebar.Width := 60;
  DBPlanner1.Display.DisplayScale := 100;

  DBPlanner1.PositionWidth := 120;
  DBPlanner1.Positions := numres;

  DBPlanner1.Header.Captions.Clear;
  DBPlanner1.Header.Captions.Add('');

  for i := 1 to DBPlanner1.Positions do
    DBPlanner1.Header.Captions.Add(inttostr(i));

  for i := 0 to numres - 1 do
  begin
    with DBPeriodSource1.ResourceMap.Add do
    begin
      ResourceIndex := i;
      PositionIndex := i;
    end;
  end;

  DBPeriodSource1.Active := false;

  DBPeriodSource1.StartDate := Now;
  DBPeriodSource1.EndDate := Now + 7;
  DBPeriodSource1.Active := true;
end;

end.
