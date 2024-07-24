unit uFrmHCBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Data.DB, Datasnap.DBClient, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  UniFSHighCharts, UnimFSHighCharts;

type
  TfrmHCBar = class(TUnimForm)
    CDS: TClientDataSet;
    HighCharts: TUnimFSHighCharts;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
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

function frmHCBar: TfrmHCBar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmHCBar: TfrmHCBar;
begin
  Result := TfrmHCBar(UniMainModule.GetFormInstance(TfrmHCBar));
end;

{ TfrmBar }

procedure TfrmHCBar.BuildChart;
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

function TfrmHCBar.GetSeries: string;
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

function TfrmHCBar.GetXAxis: string;
begin
  CDS.First;
  while not CDS.Eof do
  begin
    Result := Result + CDS.FieldByName('Periodo').AsString + ',';
    CDS.Next;
  end;
end;

procedure TfrmHCBar.LoadData;
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

procedure TfrmHCBar.UnimFormCreate(Sender: TObject);
begin
  LoadData;
  BuildChart;
  HighCharts.LoadChart;
end;

procedure TfrmHCBar.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  if TUnimTitleButton(Sender).ButtonId = 1 then
  begin
    BuildChart;
    HighCharts.LoadChart;
  end;
end;

end.
