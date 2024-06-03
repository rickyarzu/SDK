unit UmyCloudDataWeather;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CloudBase, CloudBaseWin, CloudCustomDataStore,
  CloudCustomMyCloudData, CloudMyCloudData, DB, AdvUtil, Grids, AdvObj,
  BaseGrid, AdvGrid, StdCtrls, AdvChartView, AdvChart;

type
  TForm1 = class(TForm)
    AdvMyCloudData1: TAdvMyCloudData;
    AdvStringGrid1: TAdvStringGrid;
    Button1: TButton;
    AdvChartView1: TAdvChartView;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure AdvMyCloudData1Connected(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    table: TMyCloudDataTable;
    procedure Init;
    procedure GetRecords;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{$I TMSAPPIDS.INC}

procedure TForm1.AdvMyCloudData1Connected(Sender: TObject);
begin
  Init;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  GetRecords;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i,r: integer;
begin
  table.Query();
  for i := table.Entities.Count - 1 downto 0 do
  begin
    table.Entities[i].Delete;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;

  AdvMyCloudData1.PersistTokens.Location := plIniFile;
  AdvMyCloudData1.PersistTokens.Key := '.\myclouddata.ini';
  AdvMyCloudData1.PersistTokens.Section := 'tokens';

  AdvMyCloudData1.App.Key := MYCLOUDDATAKEY;
  AdvMyCloudData1.App.Secret := MYCLOUDDATASECRET;

  AdvMyCloudData1.App.CallBackPort := 8888;
  AdvMyCloudData1.App.CallBackURL := 'http://127.0.0.1:8888';

  AdvMyCloudData1.Connect;

end;

procedure TForm1.GetRecords;
var
  i,r: integer;
  dt: TDateTime;
  t,p: double;
begin
  table.Query();

  AdvstringGrid1.RowCount := 1 + table.Entities.Count;

  AdvChartView1.Panes[0].Range.RangeFrom := 0;
  AdvChartView1.Panes[0].Range.RangeTo := table.Entities.Count;

  AdvChartView1.BeginUpdate;

  for i := 0 to table.Entities.Count - 1 do
  begin
    r := i + 1;

    dt := table.Entities[i].Value['TIMESTAMP'];
    t := table.Entities[i].Value['TEMP'];
    p := table.Entities[i].Value['PRESS'];

    AdvStringGrid1.Cells[0,r] := formatDateTime('dd/mm/yyyy hh:nn:ss', dt);
    AdvStringGrid1.Floats[1,r] := t;
    AdvStringGrid1.Floats[2,r] := p;

    AdvChartView1.Panes[0].Series[0].AddSinglePoint(t,inttostr(i*5)+'s');
  end;

  AdvChartView1.EndUpdate;

  AdvStringgrid1.AutoSizeColumns(false);
end;

procedure TForm1.Init;
begin
  AdvStringGrid1.ColCount := 3;
  AdvStringGrid1.FixedCols := 0;
  AdvStringGrid1.FixedRowAlways := true;

  AdvChartView1.Panes[0].Series.Clear;
  AdvChartView1.Panes[0].Series.Add;
  AdvChartView1.Panes[0].Series[0].ChartType := ctLine;
  AdvChartView1.Panes[0].Series[0].LegendText := 'Temperature °C';
  AdvChartView1.Panes[0].Title.Text := 'my Raspberry Pi Weather station';
  AdvChartView1.Panes[0].XAxis.Text := 'time (sec)';
  AdvChartView1.Panes[0].YAxis.Text := 'temp (°C)';

  AdvStringGrid1.Cells[0,0] := 'Timestamp';
  AdvStringGrid1.Cells[1,0] := 'Temp';
  AdvStringGrid1.Cells[2,0] := 'Pressure';

  table := AdvMyCloudData1.TableByName('WEATHER');

  if not Assigned(table) then
  begin
    table := AdvMyCloudData1.CreateTable('WEATHER');
    table.MetaData.Add('STATIONID', ftString, 50);
    table.MetaData.Add('TIMESTAMP',ftDateTime);
    table.MetaData.Add('TEMP', ftFloat);
    table.MetaData.Add('PRESS', ftFloat);
    table.SetMetaData;
  end
  else
  begin
    GetRecords;
  end;

end;

end.
