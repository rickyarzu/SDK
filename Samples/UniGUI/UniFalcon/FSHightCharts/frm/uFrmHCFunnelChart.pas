unit uFrmHCFunnelChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniTimer, uniLabel, uniButton,
  uniBitBtn, uniRadioGroup, uniMemo, uniDBNavigator, uniBasicGrid, uniDBGrid,
  uniPanel, uniHTMLFrame, UniFSGoogleChart, Data.DB, Datasnap.DBClient,
  UniFSButton, UniFSHighCharts, uniPageControl;

type
  TFrmHCFunnelChart = class(TUniFrame)
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



{ TFrmFunnelChart }

procedure TFrmHCFunnelChart.btnLoadClick(Sender: TObject);
begin
  HighCharts.LoadChart;
end;

procedure TFrmHCFunnelChart.lblInfoClick(Sender: TObject);
begin
  UniSession.AddJS('window.open("'+TUniLabel(Sender).Caption+'")');
end;

procedure TFrmHCFunnelChart.LoadData;
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

procedure TFrmHCFunnelChart.UniFrameCreate(Sender: TObject);
begin
  LoadData;
  HighCharts.LoadChart;
end;

initialization
  RegisterClass(TFrmHCFunnelChart);

end.
