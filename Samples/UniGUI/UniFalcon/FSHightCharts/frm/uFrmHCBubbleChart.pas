unit uFrmHCBubbleChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, uniGUIBaseClasses, uniTimer, uniLabel,
  uniButton, uniBitBtn, uniRadioGroup, uniMemo, uniDBNavigator, uniBasicGrid,
  uniDBGrid, uniPanel, uniHTMLFrame, UniFSGoogleChart, Datasnap.DBClient,
  UniFSButton, uniPageControl, UniFSHighCharts;

type
  TfrmHCBubbleChart = class(TUniFrame)
    CDS: TClientDataSet;
    pnlTop: TUniPanel;
    btnLoad: TUniFSButton;
    lblInfo: TUniLabel;
    tmrRandom: TUniTimer;
    DS: TDataSource;
    pgcMaster: TUniPageControl;
    tabChart: TUniTabSheet;
    tabData: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    DBNMaster1: TUniDBNavigator;
    HighCharts: TUniFSHighCharts;
    procedure btnLoadClick(Sender: TObject);
    procedure lblInfoClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
  public
    { Public declarations }
  end;

implementation

uses
  ServerModule;

{$R *.dfm}

procedure TfrmHCBubbleChart.btnLoadClick(Sender: TObject);
begin
  HighCharts.LoadChart;
end;

procedure TfrmHCBubbleChart.lblInfoClick(Sender: TObject);
begin
  UniSession.AddJS('window.open("'+TUniLabel(Sender).Caption+'")');
end;

procedure TfrmHCBubbleChart.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('ID', ftString, 7);
    FieldDefs.Add('Life Expe', ftFloat);
    FieldDefs.Add('Fertility', ftFloat);
    FieldDefs.Add('Region', ftString, 15);
    FieldDefs.Add('Population', ftInteger);
    CreateDataSet;
    AppendRecord(['CAN',    80.66,              1.67,      'North America',  33739900]);
    AppendRecord(['DEU',    79.84,              1.36,      'Europe',         81902307]);
    AppendRecord(['DNK',    78.6,               1.84,      'Europe',         5523095]);
    AppendRecord(['EGY',    72.73,              2.78,      'Middle East',    79716203]);
    AppendRecord(['GBR',    80.05,              2,         'Europe',         61801570]);
    AppendRecord(['IRN',    72.49,              1.7,       'Middle East',    73137148]);
    AppendRecord(['IRQ',    68.09,              4.77,      'Middle East',    31090763]);
    AppendRecord(['ISR',    81.55,              2.96,      'Middle East',    7485600]);
    AppendRecord(['RUS',    68.6,               1.54,      'Europe',         141850000]);
    AppendRecord(['USA',    78.09,              2.05,      'North America',  307007000] );
  end;
end;

procedure TfrmHCBubbleChart.UniFrameCreate(Sender: TObject);
begin
  LoadData;
  HighCharts.LoadChart;
end;

initialization
  RegisterClass(TfrmHCBubbleChart);

end.
