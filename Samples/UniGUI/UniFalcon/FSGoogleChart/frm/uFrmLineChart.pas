unit uFrmLineChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, Datasnap.DBClient, uniGUIBaseClasses,
  uniTimer, uniCheckBox, uniLabel, uniButton, uniBitBtn, uniRadioGroup, uniMemo,
  uniDBNavigator, uniBasicGrid, uniDBGrid, uniPanel, uniHTMLFrame,
  UniFSGoogleChart, UniFSButton;

type
  TfrmLineChart = class(TUniFrame)
    GoogleChart: TUniFSGoogleChart;
    pnlLeft: TUniPanel;
    dbg1: TUniDBGrid;
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
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    DS: TDataSource;
    CDS: TClientDataSet;
    procedure btnLoadClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure GoogleChartAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure lblInfoClick(Sender: TObject);
    procedure memOptionsChange(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure rdgExampleClick(Sender: TObject);
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



{ TfrmLineChart }

procedure TfrmLineChart.btnLoadClick(Sender: TObject);
begin
  GoogleChart.LoadChart;
end;

procedure TfrmLineChart.btnOptionsClick(Sender: TObject);
begin
   pnlRight.Visible := not(pnlRight.Visible);
end;

procedure TfrmLineChart.GoogleChartAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if EventName = 'fs_select' then
    memEvent.Lines.Add('Select: '+ Params.Values['select']);
end;

procedure TfrmLineChart.lblInfoClick(Sender: TObject);
begin
  UniSession.AddJS('window.open("'+TUniLabel(Sender).Caption+'")');
end;

procedure TfrmLineChart.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Year', ftString, 10);
    FieldDefs.Add('Sales', ftInteger);
    FieldDefs.Add('Expenses', ftInteger);
    CreateDataSet;
    AppendRecord(['2004', 1000, 400]);
    AppendRecord(['2005', 1170, 490]);
    AppendRecord(['2006', 660, 460]);
    AppendRecord(['2007', 1030, 1120]);
    AppendRecord(['2008', 1080, 1000]);
    AppendRecord(['2009', 1090, 540]);
  end;
end;

procedure TfrmLineChart.memOptionsChange(Sender: TObject);
begin
  GoogleChart.ChartOptions.Clear;
  GoogleChart.ChartOptions.Add(memOptions.Lines.Text);
end;

procedure TfrmLineChart.rdgExampleClick(Sender: TObject);
begin
  memOptions.Lines.Clear;

  if rdgExample.ItemIndex = 0 then
  begin
    memOptions.Lines.Add('title: "Company Performance", ');
    memOptions.Lines.Add('curveType: "none", ');
    memOptions.Lines.Add('legend: { position: "right"}, ');
  end;
  if rdgExample.ItemIndex = 1 then
  begin
    memOptions.Lines.Add('title: "Company Performance", ');
    memOptions.Lines.Add('curveType: "function", ');
    memOptions.Lines.Add('legend: { position: "bottom" }, ');
  end;
  if rdgExample.ItemIndex = 2 then
  begin
    memOptions.Lines.Add('title: "Company Performance", ');
    memOptions.Lines.Add('curveType: "function", ');
    memOptions.Lines.Add('legend: { position: "bottom" }, ');
    memOptions.Lines.Add('orientation: "vertical", ');
  end;
  if rdgExample.ItemIndex = 3 then
  begin
    memOptions.Lines.Add('title: "Company Performance", ');
    memOptions.Lines.Add('curveType: "function", ');
    memOptions.Lines.Add('legend: { position: "bottom" }, ');
    memOptions.Lines.Add('orientation: "horizontal", ');
  end;
  if rdgExample.ItemIndex = 4 then
  begin
    memOptions.Lines.Add('title: "Company Performance", ');
    memOptions.Lines.Add('curveType: "none", ');
    memOptions.Lines.Add('legend: { position: "right"}, ');
    memOptions.Lines.Add('selectionMode: "multiple", ');
  end;

  memOptions.OnChange(Sender);
  btnLoad.Click;
end;

procedure TfrmLineChart.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;
  LoadData;
  GoogleChart.LoadChart;
end;

initialization
  RegisterClass(TfrmLineChart);

end.
