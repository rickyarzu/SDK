unit uFrmGauge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniButton, uniBitBtn, uniRadioGroup,
  uniMemo, uniDBNavigator, uniBasicGrid, uniDBGrid, uniPanel, uniGUIBaseClasses,
  uniHTMLFrame, UniFSGoogleChart, Data.DB, Datasnap.DBClient, uniCheckBox,
  uniTimer, UniFSButton;

type
  TfrmGauge = class(TUniFrame)
    CDS: TClientDataSet;
    GoogleChart: TUniFSGoogleChart;
    pnlLeft: TUniPanel;
    dbg1: TUniDBGrid;
    DBNMaster1: TUniDBNavigator;
    pnlRight: TUniPanel;
    memOptions: TUniMemo;
    rdgExample: TUniRadioGroup;
    pnlTop: TUniPanel;
    btnLoad: TUniFSButton;
    btnOptions: TUniFSButton;
    lblInfo: TUniLabel;
    DS: TDataSource;
    chkEnableRandom: TUniCheckBox;
    tmrRandom: TUniTimer;
    memEvent: TUniMemo;
    procedure btnLoadClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure lblInfoClick(Sender: TObject);
    procedure memOptionsChange(Sender: TObject);
    procedure rdgExampleClick(Sender: TObject);
    procedure chkEnableRandomClick(Sender: TObject);
    procedure tmrRandomTimer(Sender: TObject);
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

{ TfrmGauge }

procedure TfrmGauge.btnLoadClick(Sender: TObject);
begin
  GoogleChart.LoadChart;
end;

procedure TfrmGauge.btnOptionsClick(Sender: TObject);
begin
  pnlRight.Visible := not(pnlRight.Visible);
end;

procedure TfrmGauge.chkEnableRandomClick(Sender: TObject);
begin
  tmrRandom.Enabled := chkEnableRandom.Checked;
end;

procedure TfrmGauge.GoogleChartAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName = 'fs_select' then
    memEvent.Lines.Add('Select: '+ Params.Values['select']);
end;

procedure TfrmGauge.rdgExampleClick(Sender: TObject);
begin
  memOptions.Lines.Clear;

  if rdgExample.ItemIndex = 0 then
    memOptions.Lines.Clear;
  if rdgExample.ItemIndex = 1 then
  begin
    memOptions.Lines.Add('width: 400, height: 120, ');
    memOptions.Lines.Add('redFrom: 90, redTo: 100, ');
    memOptions.Lines.Add('yellowFrom:75, yellowTo: 90, ');
    memOptions.Lines.Add('minorTicks: 5, ');
  end;
  if rdgExample.ItemIndex = 2 then
  begin
    memOptions.Lines.Add('redFrom: 90, redTo: 100, ');
    memOptions.Lines.Add('yellowFrom:75, yellowTo: 90, ');
    memOptions.Lines.Add('minorTicks: 5, ');
  end;
  if rdgExample.ItemIndex = 3 then
  begin
    memOptions.Lines.Add('redFrom: 50, redTo: 100, ');
    memOptions.Lines.Add('yellowFrom:50, yellowTo: 90, ');
    memOptions.Lines.Add('minorTicks: 5, ');
  end;
  if rdgExample.ItemIndex = 4 then
  begin
    memOptions.Lines.Add('redFrom: 90, redTo: 200, ');
    memOptions.Lines.Add('yellowFrom:75, yellowTo: 90, ');
    memOptions.Lines.Add('min: 50, ');
    memOptions.Lines.Add('max: 200, ');
  end;

  memOptions.OnChange(Sender);
  btnLoad.Click;
end;

procedure TfrmGauge.tmrRandomTimer(Sender: TObject);
begin
  Randomize;

  CDS.DisableControls;
  try
    CDS.First;
    while not CDS.Eof do
    begin
      CDS.Edit;
      CDS.Fields[1].AsInteger := Random(99);
      CDS.Post;
      CDS.Next;
    end;
  finally
    CDS.EnableControls;
    dbg1.Refresh;
    GoogleChart.LoadChart;
  end;
end;

procedure TfrmGauge.lblInfoClick(Sender: TObject);
begin
  UniSession.AddJS('window.open("'+TUniLabel(Sender).Caption+'")');
end;

procedure TfrmGauge.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Label', ftString,20);
    FieldDefs.Add('Value', ftInteger);
    CreateDataSet;
    AppendRecord(['Memory', 80]);
    AppendRecord(['CPU', 55]);
    AppendRecord(['Network', 68]);
  end;
end;

procedure TfrmGauge.memOptionsChange(Sender: TObject);
begin
  GoogleChart.ChartOptions.Clear;
  GoogleChart.ChartOptions.Add(memOptions.Lines.Text);
end;

procedure TfrmGauge.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;
  LoadData;
  GoogleChart.LoadChart;
end;

initialization
  RegisterClass(TfrmGauge);

end.
