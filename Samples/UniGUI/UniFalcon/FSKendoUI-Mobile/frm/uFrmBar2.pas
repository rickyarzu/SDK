unit uFrmBar2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Data.DB, Datasnap.DBClient, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  UniFSGoogleChart, UnimFSGoogleChart, UniFSKendoUI, UnimFSKendoUI;

type
  TfrmBar2 = class(TUnimForm)
    CDS: TClientDataSet;
    Chart: TUnimFSKendoUI;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimFormAfterShow(Sender: TObject);
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
    procedure ChartAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    { Private declarations }
    procedure LoadData;
    procedure LoadChart;
  public
    { Public declarations }
  end;

function frmBar2: TfrmBar2;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmBar2: TfrmBar2;
begin
  Result := TfrmBar2(UniMainModule.GetFormInstance(TfrmBar2));
end;

{ TfrmBar2 }

procedure TfrmBar2.ChartAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName = 'ClickSeries' then
    ShowMessage('name = '+Params.Values['name']+'</br>'+
                'category = '+Params.Values['category']+'</br>'+
                'value = '+Params.Values['value'] );
end;

procedure TfrmBar2.LoadChart;
begin
  Chart.ChartType := TUniFSKendoUIType.Column;
  Chart.ChartTheme := TUniFSKendoUITheme.Metro;

  Chart.ChartSeries.Clear;
  Chart.ChartSeriesProperties.Clear;
  Chart.ChartProperties.Clear;
  Chart.ChartSeriesDefaults := EmptyStr;

  Chart.ChartTitleVisible := True;
  Chart.ChartTitle := 'Força de Vendas';
  Chart.ChartDataSet := CDS;
  Chart.ChartSeries.Values['categoryAxis'] := 'Periodo';
  Chart.ChartSeries.Values['Meta Mês'] := 'Meta Mês';
  Chart.ChartSeries.Values['Valor Venda'] := 'Valor Venda';
  Chart.ChartSeriesDefaults := 'labels: {visible: true, position: "insideEnd"}';
  Chart.ChartProperties.Values['valueAxis'] := '{labels: {rotation: "auto"}}';
  Chart.ChartSeriesProperties.Values['Meta Mês'] := 'labels: {visible: true, align: "column", format: "{0:C}"}';
  Chart.ChartSeriesProperties.Values['Valor Venda'] := 'labels: {visible: false, align: "center", format: "{0:C}"}';
  Chart.ChartLegendPosition := TUniFSKendoUIPosition.Bottom;

  Chart.ChartSeriesStyle := TUniFSKendoUISeriesStyle.Smooth;

  Chart.InitChart;
end;

procedure TfrmBar2.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Periodo', ftString, 10);
    FieldDefs.Add('Meta Mês', ftFloat);
    FieldDefs.Add('Valor Venda', ftFloat);
    CreateDataSet;
    AppendRecord(['202102', 250000, 26630.36]);
    AppendRecord(['202103', 300000, 18245.19]);
    AppendRecord(['202104', 300000, 23288.36]);
    AppendRecord(['202105', 1000000, 20718.99]);
    AppendRecord(['202106', 1000000, 36037.77]);
    AppendRecord(['202107', 500000, 13620]);
  end;
end;

procedure TfrmBar2.UnimFormAfterShow(Sender: TObject);
begin
  LoadChart;
end;

procedure TfrmBar2.UnimFormCreate(Sender: TObject);
begin
  LoadData;
end;

procedure TfrmBar2.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  case TUnimTitleButton(Sender).ButtonId of
    1 : Chart.Refresh;
  end;
end;

end.
