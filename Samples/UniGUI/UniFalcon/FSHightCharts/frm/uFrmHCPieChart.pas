unit uFrmHCPieChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniLabel,
  uniButton, uniBitBtn, uniRadioGroup, uniMemo, uniDBNavigator, uniBasicGrid,
  uniDBGrid, uniPanel, uniGUIBaseClasses, uniHTMLFrame, Data.DB,
  Datasnap.DBClient, uniCheckBox, uniTimer, UniFSButton, UniFSHighCharts,
  uniPageControl;

type
  TfrmHCPieChart = class(TUniFrame)
    CDS: TClientDataSet;
    pnlTop: TUniPanel;
    btnLoad: TUniFSButton;
    lblInfo: TUniLabel;
    DS: TDataSource;
    HighCharts: TUniFSHighCharts;
    pgcMaster: TUniPageControl;
    tabChart: TUniTabSheet;
    tabData: TUniTabSheet;
    dbg1: TUniDBGrid;
    dbnMaster: TUniDBNavigator;
    procedure lblInfoClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
    procedure BuildChart;
  public
    { Public declarations }
  end;

implementation

uses
  ServerModule;

{$R *.dfm}

procedure TfrmHCPieChart.btnLoadClick(Sender: TObject);
begin
  HighCharts.LoadChart;
end;

procedure TfrmHCPieChart.BuildChart;
begin
  with HighCharts.ChartJavascriptContent do
  begin
    Clear;
    Add(' chart: { ');
    Add('     plotBackgroundColor: null, ');
    Add('     plotBorderWidth: null, ');
    Add('     plotShadow: false, ');
    Add('     type: ''pie'' ');
    Add(' }, ');

    Add(' title: { ');
    Add('     text: ''Browser market shares in January, 2018'' ');
    Add(' }, ');

    Add(' tooltip: { ');
    Add('     pointFormat: ''{series.name}: <b>{point.percentage:.1f}%</b>'' ');
    Add(' }, ');

    Add(' accessibility: { ');
    Add('     point: { ');
    Add('         valueSuffix: ''%'' ');
    Add('     } ');
    Add(' }, ');

    Add(' series: [{ ');
    Add('     name: ''Brands'', ');
    Add('     colorByPoint: true, ');
    Add('     data: [{ ');
    Add('         name: ''Chrome'', ');
    Add('         y: 61.41, ');
    Add('         sliced: true, ');
    Add('         selected: true ');
    Add('     }, { ');
    Add('         name: ''Internet Explorer'', ');
    Add('         y: 11.84 ');
    Add('     }, { ');
    Add('         name: ''Firefox'', ');
    Add('         y: 10.85 ');
    Add('     }, { ');
    Add('         name: ''Edge'', ');
    Add('         y: 4.67 ');
    Add('     }, { ');
    Add('         name: ''Safari'', ');
    Add('         y: 4.18 ');
    Add('     }, { ');
    Add('         name: ''Sogou Explorer'', ');
    Add('         y: 1.64 ');
    Add('     }, { ');
    Add('         name: ''Opera'', ');
    Add('         y: 1.6 ');
    Add('     }, { ');
    Add('         name: ''QQ'', ');
    Add('         y: 1.2 ');
    Add('     }, { ');
    Add('         name: ''Other'', ');
    Add('         y: 2.61 ');
    Add('     }] ');
    Add(' }] ');
  end;
end;

procedure TfrmHCPieChart.lblInfoClick(Sender: TObject);
begin
  UniSession.AddJS('window.open("'+TUniLabel(Sender).Caption+'")');
end;

procedure TfrmHCPieChart.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Task', ftString,20);
    FieldDefs.Add('Cust', ftFloat);
    FieldDefs.Add('Hours per Day', ftInteger);
    CreateDataSet;
    AppendRecord(['Work', 25.20, 11]);
    AppendRecord(['Eat', 40, 2]);
    AppendRecord(['Commute', 35.60, 2]);
    AppendRecord(['Watch TV', 10, 10]);
    AppendRecord(['Sleep', 30, 7]);
  end;
end;

procedure TfrmHCPieChart.UniFrameCreate(Sender: TObject);
begin
  LoadData;
  HighCharts.LoadChart;
end;

initialization
  RegisterClass(TfrmHCPieChart);

end.
