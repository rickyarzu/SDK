unit uFrmBubbleChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, uniGUIBaseClasses, uniTimer, uniLabel,
  uniButton, uniBitBtn, uniRadioGroup, uniMemo, uniDBNavigator, uniBasicGrid,
  uniDBGrid, uniPanel, uniHTMLFrame, UniFSGoogleChart, Datasnap.DBClient,
  UniFSButton;

type
  TfrmBubbleChart = class(TUniFrame)
    CDS: TClientDataSet;
    GoogleChart: TUniFSGoogleChart;
    pnlLeft: TUniPanel;
    DBNMaster1: TUniDBNavigator;
    memEvent: TUniMemo;
    pnlRight: TUniPanel;
    memOptions: TUniMemo;
    rdgExample: TUniRadioGroup;
    pnlTop: TUniPanel;
    btnLoad: TUniFSButton;
    btnOptions: TUniFSButton;
    lblInfo: TUniLabel;
    tmrRandom: TUniTimer;
    DS: TDataSource;
    UniDBGrid1: TUniDBGrid;
    procedure btnLoadClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure GoogleChartAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure lblInfoClick(Sender: TObject);
    procedure memOptionsChange(Sender: TObject);
    procedure rdgExampleClick(Sender: TObject);
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

procedure TfrmBubbleChart.btnLoadClick(Sender: TObject);
begin
  GoogleChart.LoadChart;
end;

procedure TfrmBubbleChart.btnOptionsClick(Sender: TObject);
begin
  pnlRight.Visible := not(pnlRight.Visible);
end;

procedure TfrmBubbleChart.GoogleChartAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if EventName = 'fs_select' then
    memEvent.Lines.Add('Select: '+ Params.Values['select']);
end;

procedure TfrmBubbleChart.lblInfoClick(Sender: TObject);
begin
  UniSession.AddJS('window.open("'+TUniLabel(Sender).Caption+'")');
end;

procedure TfrmBubbleChart.LoadData;
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

procedure TfrmBubbleChart.memOptionsChange(Sender: TObject);
begin
  GoogleChart.ChartOptions.Clear;
  GoogleChart.ChartOptions.Add(memOptions.Lines.Text);
end;

procedure TfrmBubbleChart.rdgExampleClick(Sender: TObject);
begin
  memOptions.Lines.Clear;

  if rdgExample.ItemIndex = 0 then
  begin
    memOptions.Lines.Add(' hAxis: {title: "Life Expectancy"}, ');
    memOptions.Lines.Add(' vAxis: {title: "Fertility Rate"}, ');
    memOptions.Lines.Add('bubble: { ');
    memOptions.Lines.Add('  textStyle: { ');
    memOptions.Lines.Add('    fontSize: 12, ');
    memOptions.Lines.Add('    fontName: "Times-Roman", ');
    memOptions.Lines.Add('    color: "green", ');
    memOptions.Lines.Add('    bold: true, ');
    memOptions.Lines.Add('     italic: true ');
    memOptions.Lines.Add('   } ');
    memOptions.Lines.Add(' }, ');
  end;
  if rdgExample.ItemIndex = 1 then
  begin
    memOptions.Lines.Add(' title: "Correlation between life expectancy", ');
    memOptions.Lines.Add(' hAxis: {title: "Life Expectancy"}, ');
    memOptions.Lines.Add(' vAxis: {title: "Fertility Rate"}, ');
    memOptions.Lines.Add(' bubble: {textStyle: {fontSize: 11}}, ');
  end;
  if rdgExample.ItemIndex = 2 then
  begin
    memOptions.Lines.Add('title: "Correlation between life expectancy", ');
  end;
  if rdgExample.ItemIndex = 3 then
  begin
    memOptions.Lines.Add(' hAxis: {title: "Other1"}, ');
    memOptions.Lines.Add(' vAxis: {title: "New"}, ');
  end;
  if rdgExample.ItemIndex = 4 then
  begin
    memOptions.Lines.Add('title: "Many possibility", ');
  end;

  memOptions.OnChange(Sender);
  btnLoad.Click;
end;

procedure TfrmBubbleChart.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;
  LoadData;
  GoogleChart.LoadChart;
end;

initialization
  RegisterClass(TfrmBubbleChart);

end.
