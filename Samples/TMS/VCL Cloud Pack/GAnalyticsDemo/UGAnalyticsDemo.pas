unit UGAnalyticsDemo;

interface

uses
  Windows, Messages, Controls, Forms, Dialogs,
  SysUtils, ExtCtrls, ComCtrls, Grids, StdCtrls,
  CloudBase, CloudBaseWin, CloudCustomGoogle, CloudGoogleWin,
  CloudCustomGAnalytics, CloudGAnalytics, Classes;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    lblMsg: TLabel;
    btnConnect: TButton;
    AdvGAnalytics1: TAdvGAnalytics;
    sgRealtime: TStringGrid;
    Timer1: TTimer;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    sgReport: TStringGrid;
    Panel2: TPanel;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    dtEnd: TDateTimePicker;
    dtStart: TDateTimePicker;
    btnAlterSelection: TButton;
    RadioGroup1: TRadioGroup;
    Panel4: TPanel;
    procedure btnConnectClick(Sender: TObject);
    procedure AdvGAnalytics1ReceivedAccessToken(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnAlterSelectionClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    procedure DisableControls;
    procedure EnableControls;
    procedure GetData;
    procedure GetReportData;
    procedure AutoSizeColumns(Grid: TstringGrid);
    procedure ResetSettings;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  StartDate, EndDate: string;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  GAppkey = 'xxxxxxxxx';
//  GAppSecret = 'yyyyyyyy';
//  GViewID = 'zzzzzzzz'; //Find this in Admin > View > View Settings > View ID  You need admin rights for this

{$I APPIDS.INC}

procedure TForm9.DisableControls;
begin
  PageControl1.Enabled := False;
end;

procedure TForm9.EnableControls;
begin
  PageControl1.Enabled := True;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  DisableControls;
  ReportMemoryLeaksOnShutdown := True;
  ProgressBar1.Max := 15;
  ProgressBar1.Position := ProgressBar1.Max;

  StartDate := 'today';
  EndDate := 'today';
end;

procedure TForm9.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.StepBy(-1);

  if ProgressBar1.Position = 0 then
  begin
    ProgressBar1.Position := ProgressBar1.Max;
    GetData;
  end;
end;

procedure TForm9.AdvGAnalytics1ReceivedAccessToken(Sender: TObject);
begin
  AdvGAnalytics1.SaveTokens;
  GetData;
  GetReportData;
  Timer1.Enabled := True;
  EnableControls;
end;

procedure TForm9.btnAlterSelectionClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  GetReportData;
  Screen.Cursor := crDefault;
end;

procedure TForm9.btnConnectClick(Sender: TObject);
var
  Acc: Boolean;
begin
  DisableControls;
  AdvGAnalytics1.App.Key := GAppkey;
  AdvGAnalytics1.App.Secret := GAppSecret;
  AdvGAnalytics1.App.ViewID := GViewID;

  if AdvGAnalytics1.App.Key <> '' then
  begin
    AdvGAnalytics1.PersistTokens.Location := plIniFile;
    AdvGAnalytics1.PersistTokens.Key := '.\google.ini';
    AdvGAnalytics1.PersistTokens.Section := 'tokens';
    AdvGAnalytics1.LoadTokens;

    Acc := AdvGAnalytics1.TestTokens;

    if not Acc then
    begin
      AdvGAnalytics1.RefreshAccess;
      AdvGAnalytics1.DoAuth;
    end
    else
    begin
      Timer1.Enabled := True;
      GetData;
      GetReportData;
      EnableControls;
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');
end;

procedure TForm9.AutoSizeColumns(Grid: TstringGrid);
const
  ColWidthMin = 10;
var
  C, R, W, ColWidthMax: integer;
begin
  for C := 0 to Grid.ColCount - 1 do begin
    ColWidthMax := ColWidthMin;
    for R := 0 to (Grid.RowCount - 1) do begin
      W := Grid.Canvas.TextWidth(Grid.Cells[C, R]);
      if W > ColWidthMax then
        ColWidthMax := W;
    end;
    Grid.ColWidths[C] := ColWidthMax + 10;
  end;
end;

procedure TForm9.GetReportData;
var
  I, J, X, Y, C: Integer;
  Error: string;
  Col: TGStringArray;
  MaxResults: Integer;
  EmptyRT: TRealtimeMetricsArray;
  EmptyRTUS: TRealtimeUserDimensionArray;
  EmptyRTGD: TRealtimeGeoDimensionArray;
  UM: TUserMetricArray;
  PM: TPageMetricsArray;
  SM: TSystemDimensionArray;
  DM: TPlatformOrDeviceDimensionArray;
  PGM: TPageDimensionArray;
  TM: TTimeDimensionArray;
begin
  MaxResults := 100;

  SetLength(EmptyRT,0);
  SetLength(EmptyRTUS,0);
  SetLength(EmptyRTGD,0);

  SetLength(UM,1);
  UM[0] := umUsers;
  SetLength(PM,3);
  PM[0] := pmTimeOnPage;
  PM[1] := pmPageviewsPerSession;
  PM[2] := pmUniquePageviews;
  SetLength(SM,1);
  SM[0] := sdScreenResolution;
  SetLength(DM,1);
  DM[0] := pdBrowser;
  SetLength(PGM,1);
  PGM[0] := ptdPageTitle;
  SetLength(TM,1);
  TM[0] := tdDate;

  AdvGAnalytics1.RequestData.RealtimeMetrics := EmptyRT;
  AdvGAnalytics1.RequestData.RealTimeUserDimension := EmptyRTUS;
  AdvGAnalytics1.RequestData.RealtimeGeoDimension := EmptyRTGD;


  AdvGAnalytics1.RequestData.UserMetrics := UM;
  AdvGAnalytics1.RequestData.PageMetrics:= PM;

  AdvGAnalytics1.RequestData.PlatformOrDeviceDimension := DM;
  AdvGAnalytics1.RequestData.SystemDimension := SM;
  AdvGAnalytics1.RequestData.PageDimension := PGM;
  AdvGAnalytics1.RequestData.TimeDimension := TM;

  Error := AdvGAnalytics1.GetData(StartDate, EndDate, MaxResults);

  if Error <> '' then
    ShowMessage(Error);

  // Fixed cols + dimCount + metricCount + 1;
  sgReport.ColCount := sgReport.FixedCols + AdvGAnalytics1.DimensionCount + AdvGAnalytics1.MetricCount +  1;

  // first clear the grid
  for I := 0 to sgReport.RowCount - 1 do
    sgReport.Rows[I].Clear;

  sgReport.ColWidths[0] := 100;
  sgReport.ColWidths[1] := 50;
  sgReport.ColWidths[4] := 250;
  sgReport.RowCount := MaxResults + 1;

  X := 1;
  Y := 0;

  sgReport.Cells[X, Y] := '# Users'; Inc(X);
  sgReport.Cells[X, Y] := 'Time On Page'; Inc(X);
  sgReport.Cells[X, Y] := 'Pageviews Per Session'; Inc(X);
  sgReport.Cells[X, Y] := 'Unique Pageview'; Inc(X);
  sgReport.Cells[X, Y] := 'Resolution'; Inc(X);
  sgReport.Cells[X, Y] := 'Browser'; Inc(X);
  sgReport.Cells[X, Y] := 'Date'; Inc(X);
  sgReport.Cells[X, Y] := 'Page'; Inc(Y);
  X := 1;
  C := 0;
  for I := 0 to AdvGAnalytics1.Data.Data.Count - 1 do
  begin
    Col := AdvGAnalytics1.Data.Data[I];

    Inc(C);
    if C > 4 then
      C := 1;

    if C < 4 then
    begin
      sgReport.Cells[X, Y] := Col[0]; Inc(X);
    end
    else
    begin
      for J := 0 to Length(Col) - 1 do
      begin
        sgReport.Cells[X, Y] := Col[J]; Inc(X);
      end;

      X := 1;
      Inc(Y);
    end;
  end;

  for I := 0 to sgReport.RowCount - 1 do
    sgReport.cells[0, I] := inttostr(I);

  AutoSizeColumns(sgReport);
end;

procedure TForm9.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0:
    begin
      StartDate := 'today';
      EndDate := 'today';
    end;
    1:
    begin
      StartDate := 'yesterday';
      StartDate := 'yesterday';
    end;
    2:
    begin
      StartDate := '7daysAgo';
      StartDate := '7daysAgo';
    end;
    3:
    begin
      StartDate := FormatDateTime('YYYY-MM-DD',(dtStart.Date));
      EndDate := FormatDateTime('YYYY-MM-DD',(dtEnd.Date));
    end;
  end;
end;

procedure TForm9.ResetSettings;
var
  UM: TUserMetricArray;
  PM: TPageMetricsArray;
  SM: TSystemDimensionArray;
  DM: TPlatformOrDeviceDimensionArray;
  PGM: TPageDimensionArray;
  TM: TTimeDimensionArray;

begin
  SetLength(UM,0);
  SetLength(PGM,0);
  SetLength(DM,0);
  SetLength(SM,0);
  SetLength(PM,0);
  SetLength(TM,0);


  AdvGAnalytics1.RequestData.UserMetrics := UM;
  AdvGAnalytics1.RequestData.PageMetrics:= PM;

  AdvGAnalytics1.RequestData.PlatformOrDeviceDimension := DM;
  AdvGAnalytics1.RequestData.SystemDimension := SM;
  AdvGAnalytics1.RequestData.PageDimension := PGM;
  AdvGAnalytics1.RequestData.TimeDimension := TM;
end;

procedure TForm9.GetData;
var
  I, J: Integer;
  Error: string;
  Col: TGStringArray;
  X, Y: Integer;
  RT: TRealtimeMetricsArray;
  RTU: TRealtimeUserDimensionArray;
  RGD: TRealtimeGeoDimensionArray;
begin
  ResetSettings;

  SetLength(RT,1);
  SetLength(RTU,1);
  SetLength(RGD,4);

  RT[0] := rtActiveUsers;
  RTU[0] := rudUserType;
  RGD[0] := rtgdCountry;
  RGD[1] := rtgdCity;
  RGD[2] := rtgdLatitude;
  RGD[3] := rtgdLongitude;

  AdvGAnalytics1.RequestData.RealtimeMetrics := RT;
  AdvGAnalytics1.RequestData.RealTimeUserDimension := RTU;
  AdvGAnalytics1.RequestData.RealtimeGeoDimension := RGD;

  Error := AdvGAnalytics1.GetData(AdvGAnalytics1.App.ViewID);

  if Error <> '' then
    ShowMessage(Error);

  sgRealtime.ColCount := 10;

  // first clear the grid
  for I := 0 to sgRealtime.ColCount - 1 do
    sgRealtime.Cols[I].Clear;

  sgRealtime.ColWidths[0] := 100;
  sgRealtime.RowCount := AdvGAnalytics1.Data.Data.Count;

  X := 0;
  Y := 1;

  sgRealtime.Cells[X, Y] := 'Realtime User Data'; Inc(X);
  sgRealtime.Cells[X, Y] := 'Active Users'; Inc(X);
  sgRealtime.Cells[X, Y] := 'User Type'; Inc(X);
  sgRealtime.Cells[X, Y] := 'Active Users'; Inc(X);
  sgRealtime.Cells[X, Y] := 'Country'; Inc(X);
  sgRealtime.Cells[X, Y] := 'City'; Inc(X);
  sgRealtime.Cells[X, Y] := 'Lat'; Inc(Y);
  X := 1;
  for I := 0 to AdvGAnalytics1.Data.Data.Count - 1 do
  begin
    Col := AdvGAnalytics1.Data.Data[I];

    for J := 0 to Length(Col) - 1 do
    begin
      sgRealtime.Cells[X, Y] := Col[J]; Inc(X);
    end;

    X := 1;
    Inc(Y);
  end;
end;

end.
