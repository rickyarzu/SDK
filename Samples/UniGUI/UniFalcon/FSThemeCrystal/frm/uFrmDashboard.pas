unit uFrmDashboard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBasicGrid, uniDBGrid, uniButton,
  uniBitBtn, UniFSButton, uniLabel, uniHTMLFrame, uniPanel,
  uniGUIBaseClasses, uniScrollBox, UniFSHighCharts;

type
  TfrmDashboard = class(TUniFrame)
    scrPrincipal: TUniScrollBox;
    pnlPrincipal: TUniPanel;
    pnlGraficos2: TUniPanel;
    pnlReceitaDespesa: TUniPanel;
    pnlGrf1: TUniPanel;
    pnl1: TUniPanel;
    pnlGraficos1: TUniPanel;
    pnlReceitaDetalhada: TUniPanel;
    pnlGrf7: TUniPanel;
    dbgReceita: TUniDBGrid;
    pnlTopDetailReceita: TUniPanel;
    lblGrfDetalheRecMes: TUniLabel;
    btnAtl7: TUniFSButton;
    btnRecDetail: TUniFSButton;
    btnRecGraf: TUniFSButton;
    pnlDespesaDetalhada: TUniPanel;
    pnlGrf6: TUniPanel;
    dbgDespesa: TUniDBGrid;
    pnlTopDetailDespesa: TUniPanel;
    lblGrfDetalheCapMes: TUniLabel;
    btnDespDetail: TUniFSButton;
    btnDespGraf: TUniFSButton;
    btnAtl6: TUniFSButton;
    pnl3: TUniPanel;
    pnlDiv3: TUniPanel;
    pnlDiv4: TUniPanel;
    HighCharts2: TUniFSHighCharts;
    HighCharts3: TUniFSHighCharts;
    HighCharts1: TUniFSHighCharts;
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniFSButton3: TUniFSButton;
    procedure UniFrameReady(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadChart1();
    procedure LoadChart2();
    procedure LoadChart3();
  end;

implementation

{$R *.dfm}

procedure TfrmDashboard.LoadChart1;
begin
  with HighCharts1.ChartJavascriptContent do
  begin
    Clear;
    Add('chart: { ');
    Add('        type: ''column'' ');
    Add('    }, ');
    Add('    subtitle: { ');
    Add('        text: ''Source: WorldClimate.com'' ');
    Add('    }, ');
    Add('    xAxis: { ');
    Add('        categories: [ ');
    Add('            ''Jan'', ');
    Add('            ''Feb'', ');
    Add('            ''Mar'', ');
    Add('            ''Apr'', ');
    Add('            ''May'', ');
    Add('            ''Jun'', ');
    Add('            ''Jul'', ');
    Add('            ''Aug'', ');
    Add('            ''Sep'', ');
    Add('            ''Oct'', ');
    Add('            ''Nov'', ');
    Add('            ''Dec'' ');
    Add('        ], ');
    Add('        crosshair: true ');
    Add('    }, ');
    Add('    yAxis: { ');
    Add('        min: 0, ');
    Add('        title: { ');
    Add('            text: ''Rainfall (mm)'' ');
    Add('        } ');
    Add('    }, ');
    Add('    plotOptions: { ');
    Add('        column: { ');
    Add('            pointPadding: 0.2, ');
    Add('            borderWidth: 0 ');
    Add('        } ');
    Add('    }, ');
    Add('    series: [{ ');
    Add('        name: ''Tokyo'', ');
    Add('        data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4] ');
    Add(' ');
    Add('    }, { ');
    Add('        name: ''New York'', ');
    Add('        data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3] ');
    Add(' ');
    Add('    }, { ');
    Add('        name: ''London'', ');
    Add('        data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2] ');
    Add(' ');
    Add('    }, { ');
    Add('        name: ''Berlin'', ');
    Add('        data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1] ');
    Add(' ');
    Add('    }] ');
  end;

  HighCharts1.LoadChart;
end;

procedure TfrmDashboard.LoadChart2;
begin
  with HighCharts2.ChartJavascriptContent do
  begin
    Clear;
    Add('chart: { ');
    Add('        plotBackgroundColor: null, ');
    Add('        plotBorderWidth: null, ');
    Add('        plotShadow: false, ');
    Add('        type: ''pie'' ');
    Add('    }, ');
    Add('    tooltip: { ');
    Add('        pointFormat: ''{series.name}: <b>{point.percentage:.1f}%</b>'' ');
    Add('    }, ');
    Add('    accessibility: { ');
    Add('        point: { ');
    Add('            valueSuffix: ''%'' ');
    Add('        } ');
    Add('    }, ');
    Add('    plotOptions: { ');
    Add('        pie: { ');
    Add('            allowPointSelect: true, ');
    Add('            cursor: ''pointer'', ');
    Add('            dataLabels: { ');
    Add('                enabled: true, ');
    Add('                format: ''<b>{point.name}</b>: {point.percentage:.1f} %'' ');
    Add('            } ');
    Add('        } ');
    Add('    }, ');
    Add('    series: [{ ');
    Add('        name: ''Brands'', ');
    Add('        colorByPoint: true, ');
    Add('        data: [{ ');
    Add('            name: ''Chrome'', ');
    Add('            y: 61.41, ');
    Add('            sliced: true, ');
    Add('            selected: true ');
    Add('        }, { ');
    Add('            name: ''Internet Explorer'', ');
    Add('            y: 11.84 ');
    Add('        }, { ');
    Add('            name: ''Firefox'', ');
    Add('            y: 10.85 ');
    Add('        }, { ');
    Add('            name: ''Edge'', ');
    Add('            y: 4.67 ');
    Add('        }, { ');
    Add('            name: ''Safari'', ');
    Add('            y: 4.18 ');
    Add('        }, { ');
    Add('            name: ''Sogou Explorer'', ');
    Add('            y: 1.64 ');
    Add('        }, { ');
    Add('            name: ''Opera'', ');
    Add('            y: 1.6 ');
    Add('        }, { ');
    Add('            name: ''QQ'', ');
    Add('            y: 1.2 ');
    Add('        }, { ');
    Add('            name: ''Other'', ');
    Add('            y: 2.61 ');
    Add('        }] ');
    Add('    }] ');
  end;

  HighCharts2.LoadChart;
end;

procedure TfrmDashboard.LoadChart3;
begin
  with HighCharts3.ChartJavascriptContent do
  begin
    Clear;
    Add('chart: { ');
    Add('        plotBackgroundColor: null, ');
    Add('        plotBorderWidth: null, ');
    Add('        plotShadow: false, ');
    Add('        type: ''pie'' ');
    Add('    }, ');
    Add('    tooltip: { ');
    Add('        pointFormat: ''{series.name}: <b>{point.percentage:.1f}%</b>'' ');
    Add('    }, ');
    Add('    accessibility: { ');
    Add('        point: { ');
    Add('            valueSuffix: ''%'' ');
    Add('        } ');
    Add('    }, ');
    Add('    plotOptions: { ');
    Add('        pie: { ');
    Add('            allowPointSelect: true, ');
    Add('            cursor: ''pointer'', ');
    Add('            dataLabels: { ');
    Add('                enabled: true, ');
    Add('                format: ''<b>{point.name}</b>: {point.percentage:.1f} %'' ');
    Add('            } ');
    Add('        } ');
    Add('    }, ');
    Add('    series: [{ ');
    Add('        name: ''Brands'', ');
    Add('        colorByPoint: true, ');
    Add('        data: [{ ');
    Add('            name: ''Chrome'', ');
    Add('            y: 40.41, ');
    Add('            sliced: false, ');
    Add('            selected: false ');
    Add('        }, { ');
    Add('            name: ''Internet Explorer'', ');
    Add('            y: 11.84 ');
    Add('        }, { ');
    Add('            name: ''Firefox'', ');
    Add('            y: 10.85 ');
    Add('        }, { ');
    Add('            name: ''Edge'', ');
    Add('            y: 4.67 ');
    Add('        }, { ');
    Add('            name: ''Safari'', ');
    Add('            y: 4.18 ');
    Add('        }, { ');
    Add('            name: ''Sogou Explorer'', ');
    Add('            y: 1.64 ');
    Add('        }, { ');
    Add('            name: ''Opera'', ');
    Add('            y: 1.6 ');
    Add('        }, { ');
    Add('            name: ''QQ'', ');
    Add('            y: 1.2 ');
    Add('        }, { ');
    Add('            name: ''Other'', ');
    Add('            y: 2.61 ');
    Add('        }] ');
    Add('    }] ');

  end;

  HighCharts3.LoadChart;
end;

procedure TfrmDashboard.UniFrameReady(Sender: TObject);
begin
  LoadChart1();
  LoadChart2();
  LoadChart3();
end;

initialization
  RegisterClass(TfrmDashboard);

end.
