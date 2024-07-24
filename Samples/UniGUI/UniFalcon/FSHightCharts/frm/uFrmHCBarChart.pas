unit uFrmHCBarChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame,
  uniGUIBaseClasses, uniTimer, uniLabel, uniButton, uniBitBtn, uniRadioGroup,
  uniMemo, uniDBNavigator, uniBasicGrid, uniDBGrid, uniPanel, uniHTMLFrame,
  Data.DB, Datasnap.DBClient, UniFSButton, uniPageControl, UniFSHighCharts;

type
  TfrmHCBarChart = class(TUniFrame)
    CDS: TClientDataSet;
    pnlTop: TUniPanel;
    btnLoad: TUniFSButton;
    lblInfo: TUniLabel;
    DS: TDataSource;
    HighCharts: TUniFSHighCharts;
    pgcMaster: TUniPageControl;
    tabChart: TUniTabSheet;
    tabData: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    DBNMaster1: TUniDBNavigator;
    procedure btnLoadClick(Sender: TObject);
    procedure lblInfoClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  protected
    function GetXAxis(): string;
    function GetSeries(): string;
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

{ TfrmBarChart }

procedure TfrmHCBarChart.btnLoadClick(Sender: TObject);
begin
  BuildChart;
  HighCharts.LoadChart;
end;

function TfrmHCBarChart.GetSeries: string;
var
  vMetaMes: string;
  vVendasMes: string;
begin
  FormatSettings.DecimalSeparator := '.';
  try
    CDS.First;
    while not CDS.Eof do
    begin
      if vMetaMes = EmptyStr then
        vMetaMes := FloatToStr(CDS.FieldByName('Meta Mês').AsFloat)
      else
        vMetaMes := vMetaMes +','+ FloatToStr(CDS.FieldByName('Meta Mês').AsFloat);
      if vVendasMes = EmptyStr then
        vVendasMes := FloatToStr(CDS.FieldByName('Vendas Mês').AsFloat)
      else
        vVendasMes := vVendasMes +','+ FloatToStr(CDS.FieldByName('Vendas Mês').AsFloat);
      CDS.Next;
    end;

    vMetaMes := '{name: ''Meta Mês'', data: ['+vMetaMes+']},';
    vVendasMes := '{name: ''Vendas Mês'', data: ['+vVendasMes+']}';

    Result := vMetaMes + vVendasMes;
  finally
    FormatSettings.DecimalSeparator := ',';
  end;
end;

function TfrmHCBarChart.GetXAxis: string;
begin
  CDS.First;
  while not CDS.Eof do
  begin
    Result := Result + CDS.FieldByName('Periodo').AsString + ',';
    CDS.Next;
  end;
end;

procedure TfrmHCBarChart.lblInfoClick(Sender: TObject);
begin
  UniSession.AddJS('window.open("'+TUniLabel(Sender).Caption+'")');
end;

procedure TfrmHCBarChart.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Periodo', ftString, 10);
    FieldDefs.Add('Meta Mês', ftFloat);
    FieldDefs.Add('Vendas Mês', ftFloat);
    CreateDataSet;
    AppendRecord(['202101', 50000, 4000]);
    AppendRecord(['202102', 40000, 2000]);
    AppendRecord(['202103', 250000, 40000]);
    AppendRecord(['202104', 25000, 25000]);
    AppendRecord(['202105', 30000, 22000]);
    AppendRecord(['202106', 50000, 15000]);
    AppendRecord(['202107', 40000, 2000]);
    AppendRecord(['202108', 250000, 40000]);
    AppendRecord(['202109', 25000, 25000]);
  end;
end;

procedure TfrmHCBarChart.BuildChart;
begin
  with HighCharts.ChartJavascriptContent do
  begin
    Clear;
    Add(' chart: { ');
    Add('     type: ''column'' ');
    Add(' }, ');

    Add(' title: { ');
    Add('     text: ''Gráfico de Vendas'' ');
    Add(' }, ');

    Add(' subtitle: { ');
    Add('     text: ''Source: WorldFinance.com'' ');
    Add(' }, ');

    Add(' xAxis: { ');
    Add('     categories: ['+GetXAxis+'], ');
    Add('     crosshair: true ');
    Add(' }, ');

    Add(' yAxis: {');
    Add('     title: {');
    Add('         text: ''Valores'' ');
    Add('     },');
    Add('     labels: { ');
    Add('         format: ''R$ {value:,.0f}'' ');
    Add('     }');
    Add(' },');

    Add(' tooltip: { ');
    Add('      valueDecimals: 2, ');
    Add('      valuePrefix: ''R$ '' ');
    Add('  }, ');

    Add(' series: [{ ');
    Add('     name: ''Tokyo'', ');
    Add('     data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4] ');

    Add(' }, { ');
    Add('     name: ''New York'', ');
    Add('     data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3] ');

    Add(' }, { ');
    Add('     name: ''London'', ');
    Add('     data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2] ');

    Add(' }, { ');
    Add('     name: ''Berlin'', ');
    Add('     data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1] ');

    Add(' }] ');
  end;
end;

procedure TfrmHCBarChart.UniFrameCreate(Sender: TObject);
begin
  LoadData;
  BuildChart;
  HighCharts.LoadChart;
end;

initialization
  RegisterClass(TfrmHCBarChart);

end.
