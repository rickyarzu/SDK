unit uFrmLineChartValuesCurrency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, Datasnap.DBClient, uniGUIBaseClasses,
  uniTimer, uniCheckBox, uniLabel, uniButton, uniBitBtn, uniRadioGroup, uniMemo,
  uniDBNavigator, uniBasicGrid, uniDBGrid, uniPanel, uniHTMLFrame,
  UniFSGoogleChart, UniFSButton;

type
  TfrmLineChartValuesCurrency = class(TUniFrame)
    GoogleChart: TUniFSGoogleChart;
    pnlLeft: TUniPanel;
    DBNMaster1: TUniDBNavigator;
    memEvent: TUniMemo;
    pnlTop: TUniPanel;
    btnLoad: TUniFSButton;
    lblInfo: TUniLabel;
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    DS: TDataSource;
    CDS: TClientDataSet;
    procedure btnLoadClick(Sender: TObject);
    procedure GoogleChartAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
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



{ TfrmLineChartValuesCurrency }

procedure TfrmLineChartValuesCurrency.btnLoadClick(Sender: TObject);
begin
  GoogleChart.LoadChart;
end;

procedure TfrmLineChartValuesCurrency.GoogleChartAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if EventName = 'fs_select' then
    memEvent.Lines.Add('Select: '+ Params.Values['select']);
end;

procedure TfrmLineChartValuesCurrency.lblInfoClick(Sender: TObject);
begin
  UniSession.AddJS('window.open("'+TUniLabel(Sender).Caption+'")');
end;

procedure TfrmLineChartValuesCurrency.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Mês', ftString, 10);
    FieldDefs.Add('Receita', ftFloat);
    FieldDefs.Add('Despesa', ftFloat);
    CreateDataSet;
    AppendRecord(['Janeiro', 3200.25, 3100]);
    AppendRecord(['Fevereiro', 5000, 4800.50]);
    AppendRecord(['Março', 7000.52, 6000]);
    AppendRecord(['Abril', 3000, 2900.65]);
    AppendRecord(['Maio', 2500.25, 3000]);
    AppendRecord(['Junho', 2000, 3500.25]);
    AppendRecord(['Julho', 4000.50, 4000]);
    AppendRecord(['Agosto', 6700.58, 5000]);
    AppendRecord(['Setembro', 9000, 6700.90]);
    AppendRecord(['Outubro', 12000, 10000]);
    AppendRecord(['Novembro', 8000, 6000.58]);
    AppendRecord(['Dezembro', 6500.58, 5000]);
  end;
end;

procedure TfrmLineChartValuesCurrency.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;
  LoadData;
  GoogleChart.LoadChart;
end;

initialization
  RegisterClass(TfrmLineChartValuesCurrency);

end.
