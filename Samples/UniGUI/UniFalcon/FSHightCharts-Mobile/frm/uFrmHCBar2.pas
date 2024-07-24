unit uFrmHCBar2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Data.DB, Datasnap.DBClient, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  UniFSHighCharts, UnimFSHighCharts;

type
  TfrmHCBar2 = class(TUnimForm)
    CDS: TClientDataSet;
    HighCharts: TUnimFSHighCharts;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
  private
    { Private declarations }
    procedure LoadData;
    procedure BuildChart;
  public
    { Public declarations }
  end;

function frmHCBar2: TfrmHCBar2;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule;

function frmHCBar2: TfrmHCBar2;
begin
  Result := TfrmHCBar2(UniMainModule.GetFormInstance(TfrmHCBar2));
end;

{ TfrmBar2 }

procedure TfrmHCBar2.BuildChart;
begin
  with HighCharts.ChartJavascriptContent do
  begin
    Clear;
    Add(' chart: { ');
    Add('     type: ''column'' ');
    Add(' }, ');

    Add(' title: { ');
    Add('     text: ''Monthly Average Rainfall'' ');
    Add(' }, ');

    Add(' subtitle: { ');
    Add('     text: ''Source: WorldClimate.com'' ');
    Add(' }, ');

    Add(' xAxis: { ');
    Add('     categories: ["Jan","Fev","Mar","Abr","Mai","Jun","Jul","Ago","Set","Out","Nov","Dez"], ');
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

    Add('   series: [{ ');
    Add('        name: ''Tokyo'', ');
    Add('        data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4] ');

    Add('    }, { ');
    Add('        name: ''New York'', ');
    Add('        data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3] ');

    Add('    }, { ');
    Add('        name: ''London'', ');
    Add('        data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2] ');

    Add('    }, { ');
    Add('        name: ''Berlin'', ');
    Add('        data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1] ');

    Add('    }] ');

    //Add(' series: ['+GetSeries+'] ');
  end;
end;

procedure TfrmHCBar2.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Tokyo', ftFloat);
    FieldDefs.Add('New Work', ftFloat);
    FieldDefs.Add('London', ftFloat);
    FieldDefs.Add('Berlin', ftFloat);
    CreateDataSet;
    AppendRecord([49.90, 83.60, 48.90, 42.40]);
    AppendRecord([71.50, 78.80, 38.80, 33.20]);
    AppendRecord([106.40, 98.50, 39.30, 34.50]);
    AppendRecord([129.20, 93.40, 41.40, 39.70]);
    AppendRecord([144.00, 106.00, 47.00, 52.60]);
    AppendRecord([176.00, 84.50, 48.30, 75.50]);
    AppendRecord([135.60, 105.00, 59.00, 57.40]);
    AppendRecord([148.50, 104.30, 59.60, 60.40]);
    AppendRecord([216.40, 91.20, 52.40, 47.60]);
    AppendRecord([194.10, 83.50, 65.20, 39.10]);
    AppendRecord([95.60, 106.60, 59.30, 46.80]);
    AppendRecord([54.40, 92.30, 51.20, 51.10]);
  end;
end;

procedure TfrmHCBar2.UnimFormCreate(Sender: TObject);
begin
  LoadData;
  BuildChart;
  HighCharts.LoadChart;
end;

procedure TfrmHCBar2.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  if TUnimTitleButton(Sender).ButtonId = 1 then
  begin
    BuildChart;
    HighCharts.LoadChart;
  end;
end;

end.
