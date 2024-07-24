unit uFrmPieChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniButton, uniBitBtn, uniRadioGroup,
  uniMemo, uniDBNavigator, uniBasicGrid, uniDBGrid, uniPanel, uniGUIBaseClasses,
  uniHTMLFrame, UniFSGoogleChart, Data.DB, Datasnap.DBClient, uniCheckBox,
  uniTimer, UniFSButton;

type
  TfrmPieChart = class(TUniFrame)
    CDS: TClientDataSet;
    GoogleChart: TUniFSGoogleChart;
    pnlLeft: TUniPanel;
    dbg1: TUniDBGrid;
    dbnMaster: TUniDBNavigator;
    pnlRight: TUniPanel;
    memOptions: TUniMemo;
    rdgExample: TUniRadioGroup;
    pnlTop: TUniPanel;
    btnLoad: TUniFSButton;
    btnOptions: TUniFSButton;
    lblInfo: TUniLabel;
    DS: TDataSource;
    memEvent: TUniMemo;
    procedure lblInfoClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure memOptionsChange(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure rdgExampleClick(Sender: TObject);
    procedure GoogleChartAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
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

procedure TfrmPieChart.btnLoadClick(Sender: TObject);
begin
  GoogleChart.LoadChart;
end;

procedure TfrmPieChart.btnOptionsClick(Sender: TObject);
begin
  pnlRight.Visible := not(pnlRight.Visible);
end;

procedure TfrmPieChart.GoogleChartAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if EventName = 'fs_select' then
    memEvent.Lines.Add('Select: '+ Params.Values['select']);
end;

procedure TfrmPieChart.lblInfoClick(Sender: TObject);
begin
  UniSession.AddJS('window.open("'+TUniLabel(Sender).Caption+'")');
end;

procedure TfrmPieChart.LoadData;
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

procedure TfrmPieChart.memOptionsChange(Sender: TObject);
begin
  GoogleChart.ChartOptions.Clear;
  GoogleChart.ChartOptions.Add(memOptions.Lines.Text);
end;

procedure TfrmPieChart.rdgExampleClick(Sender: TObject);
begin
  memOptions.Lines.Clear;

  if rdgExample.ItemIndex = 0 then
  begin
    memOptions.Lines.Add('title: "My Daily Activities (1)", ');
    memOptions.Lines.Add('tooltip: {textStyle: {color: "#FF0000"}, showColorCode: true},');
  end;
  if rdgExample.ItemIndex = 1 then
  begin
    memOptions.Lines.Add('title: "My Daily Activities (2)", ');
    memOptions.Lines.Add('is3D: true, ');
  end;
  if rdgExample.ItemIndex = 2 then
  begin
    memOptions.Lines.Add('title: "My Daily Activities (3)", ');
    memOptions.Lines.Add('pieHole: 0.4,');
  end;
  if rdgExample.ItemIndex = 3 then
  begin
    memOptions.Lines.Add('title: "My Daily Activities (4)", ');
    memOptions.Lines.Add('sliceVisibilityThreshold: .2 ');
  end;
  if rdgExample.ItemIndex = 4 then
  begin
    memOptions.Lines.Add('legend: "bottom",');
    memOptions.Lines.Add('pieStartAngle: 100,');
  end;
  if rdgExample.ItemIndex = 5 then
  begin
    memOptions.Lines.Add('pieSliceText: "label", ');
  end;
  if rdgExample.ItemIndex = 6 then
  begin
    memOptions.Lines.Add('pieSliceText: "value", ');
  end;

  memOptions.OnChange(Sender);
  btnLoad.Click;
end;

procedure TfrmPieChart.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;
  LoadData;
  GoogleChart.LoadChart;
end;

initialization
  RegisterClass(TfrmPieChart);

end.
