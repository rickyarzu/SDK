unit uFrmHCBarChartCustom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame,
  uniGUIBaseClasses, uniTimer, uniLabel, uniButton, uniBitBtn, uniRadioGroup,
  uniMemo, uniDBNavigator, uniBasicGrid, uniDBGrid, uniPanel, uniHTMLFrame,
  Data.DB, Datasnap.DBClient, UniFSButton, uniPageControl, UniFSHighCharts;

type
  TfrmHCBarChartCustom = class(TUniFrame)
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

procedure TfrmHCBarChartCustom.btnLoadClick(Sender: TObject);
begin
  BuildChart;
  HighCharts.LoadChart;
end;

function TfrmHCBarChartCustom.GetSeries: string;
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

function TfrmHCBarChartCustom.GetXAxis: string;
begin
  CDS.First;
  while not CDS.Eof do
  begin
    Result := Result + CDS.FieldByName('Periodo').AsString + ',';
    CDS.Next;
  end;
end;

procedure TfrmHCBarChartCustom.lblInfoClick(Sender: TObject);
begin
  UniSession.AddJS('window.open("'+TUniLabel(Sender).Caption+'")');
end;

procedure TfrmHCBarChartCustom.LoadData;
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

procedure TfrmHCBarChartCustom.BuildChart;
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

    Add('   yAxis: {');
    Add('       title: {');
    Add('           text: ''Valores'' ');
    Add('       },');
    Add('       labels: { ');
    Add('           format: ''R$ {value:,.0f}'' ');
    Add('       }');
    Add('   },');

    Add('   tooltip: { ');
    Add('        valueDecimals: 2, ');
    Add('        valuePrefix: ''R$ '' ');
    Add('    }, ');

    Add(' series: ['+GetSeries+'] ');
  end;
end;

procedure TfrmHCBarChartCustom.UniFrameCreate(Sender: TObject);
begin
  LoadData;
  BuildChart;
  HighCharts.LoadChart;
end;

initialization
  RegisterClass(TfrmHCBarChartCustom);

end.
