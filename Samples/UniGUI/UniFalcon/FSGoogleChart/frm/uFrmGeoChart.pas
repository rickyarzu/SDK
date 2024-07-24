unit uFrmGeoChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, Datasnap.DBClient, uniMemo, uniHTMLFrame,
  UniFSGoogleChart, uniBasicGrid, uniDBGrid, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniPanel, uniRadioGroup, uniDBNavigator, uniLabel, uniTimer,
  UniFSButton;

type
  TfrmGeoChart = class(TUniFrame)
    pnlTop: TUniPanel;
    btnLoad: TUniFSButton;
    btnOptions: TUniFSButton;
    GoogleChart: TUniFSGoogleChart;
    CDS: TClientDataSet;
    DS: TDataSource;
    pnlRight: TUniPanel;
    memOptions: TUniMemo;
    rdgExample: TUniRadioGroup;
    pnlLeft: TUniPanel;
    dbg1: TUniDBGrid;
    dbnMaster: TUniDBNavigator;
    lblInfo: TUniLabel;
    tmrRandom: TUniTimer;
    memEvent: TUniMemo;
    procedure rdgExampleClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure memOptionsChange(Sender: TObject);
    procedure lblInfoClick(Sender: TObject);
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

procedure TfrmGeoChart.btnLoadClick(Sender: TObject);
begin
  GoogleChart.LoadChart;
end;

procedure TfrmGeoChart.btnOptionsClick(Sender: TObject);
begin
  pnlRight.Visible := not(pnlRight.Visible);
end;

procedure TfrmGeoChart.GoogleChartAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if EventName = 'fs_select' then
    memEvent.Lines.Add('Select: '+ Params.Values['select']);
end;

procedure TfrmGeoChart.lblInfoClick(Sender: TObject);
begin
  UniSession.AddJS('window.open("'+TUniLabel(Sender).Caption+'")');
end;

procedure TfrmGeoChart.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Pais', ftString,20);
    FieldDefs.Add('Popularidade', ftInteger);
    CreateDataSet;
    AppendRecord(['Germany', 200]);
    AppendRecord(['United States', 300]);
    AppendRecord(['Brazil', 400]);
    AppendRecord(['Canada', 500]);
    AppendRecord(['France', 600]);
    AppendRecord(['RU', 700]);
  end;
end;

procedure TfrmGeoChart.memOptionsChange(Sender: TObject);
begin
  GoogleChart.ChartOptions.Clear;
  GoogleChart.ChartOptions.Add(memOptions.Lines.Text);
end;

procedure TfrmGeoChart.rdgExampleClick(Sender: TObject);
begin
  memOptions.Lines.Clear;

  if rdgExample.ItemIndex = 0 then
    memOptions.Lines.Add('region: "IT", displayMode: "markers", colorAxis: {colors: ["green", "blue"]}');
  if rdgExample.ItemIndex = 1 then
    memOptions.Lines.Add('displayMode: "text",');
  if rdgExample.ItemIndex = 2 then
    memOptions.Lines.Add('displayMode: "region",');
  if rdgExample.ItemIndex = 3 then
  begin
    memOptions.Lines.Add('displayMode: "region",');
    memOptions.Lines.Add('colorAxis: {colors: ["green", "blue"]}, ');
  end;
  if rdgExample.ItemIndex = 4 then
  begin
    memOptions.Lines.Add('displayMode: "region",');
    memOptions.Lines.Add('backgroundColor: "#81d4fa",');
    memOptions.Lines.Add('colorAxis: {colors: ["#00853f", "black", "#e31b23"]},');
    memOptions.Lines.Add('tooltip: {textStyle: {color: "#FF0000"}, showColorCode: true},');
  end;

  memOptions.OnChange(Sender);
  btnLoad.Click;
end;

procedure TfrmGeoChart.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;
  LoadData;
  GoogleChart.LoadChart;
end;

initialization
  RegisterClass(TfrmGeoChart);

end.
