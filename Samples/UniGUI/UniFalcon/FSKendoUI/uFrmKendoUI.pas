unit uFrmKendoUI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniHTMLFrame, uniBasicGrid,
  uniDBGrid, uniGUIBaseClasses, uniPanel, uniButton, uniBitBtn, uniCheckBox,
  uniRadioButton, uniMultiItem, uniComboBox, uniLabel, uniTimer, Data.DB,
  Datasnap.DBClient, uniDBNavigator, UniFSKendoUI, uniEdit, uniMemo,
  Vcl.Imaging.pngimage, uniImage;

type
  TfrmKendoUI = class(TUniFrame)
    pnlFilter: TUniPanel;
    dbgDados: TUniDBGrid;
    Chart: TUniFSKendoUI;
    UniLabel1: TUniLabel;
    cmbTheme: TUniComboBox;
    UniLabel2: TUniLabel;
    rdbColumn: TUniRadioButton;
    rdbBar: TUniRadioButton;
    rdbLine: TUniRadioButton;
    rdbPie: TUniRadioButton;
    rdbScatter: TUniRadioButton;
    rdbScatterLine: TUniRadioButton;
    cbStacked: TUniCheckBox;
    btnExportJPG: TUniBitBtn;
    btnExportPDF: TUniBitBtn;
    btnExportSVG: TUniBitBtn;
    ClientDataSet2: TClientDataSet;
    ClientDataSet2x1: TIntegerField;
    ClientDataSet2y1: TIntegerField;
    ClientDataSet2x2: TIntegerField;
    ClientDataSet2y2: TIntegerField;
    ClientDataSet2x3: TIntegerField;
    ClientDataSet2y3: TIntegerField;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1year: TStringField;
    ClientDataSet1us_users: TFloatField;
    ClientDataSet1world_users: TFloatField;
    ClientDataSet1selected: TBooleanField;
    UniTimer1: TUniTimer;
    UniDBNavigator: TUniDBNavigator;
    pnlGrid: TUniPanel;
    cmbStyle: TUniComboBox;
    pnlChart: TUniPanel;
    imgFalcon: TUniImage;
    lblVersion: TUniLabel;
    cmbLegend: TUniComboBox;
    lbl1: TUniLabel;
    cmbCulture: TUniComboBox;
    lbl11: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure rdbColumnClick(Sender: TObject);
    procedure btnExportJPGClick(Sender: TObject);
    procedure btnExportPDFClick(Sender: TObject);
    procedure btnExportSVGClick(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
    procedure ChartAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure cmbLegendCloseUp(Sender: TObject);
    procedure ChartGetImage(Sender: TObject; PathImage: string);
    procedure cmbCultureCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIServer;

{$R *.dfm}

procedure TfrmKendoUI.btnExportJPGClick(Sender: TObject);
begin
  Chart.GetImage(TUniFSKendoUIExport.png);
end;

procedure TfrmKendoUI.btnExportPDFClick(Sender: TObject);
begin
  Chart.GetImage(TUniFSKendoUIExport.pdf);
end;

procedure TfrmKendoUI.btnExportSVGClick(Sender: TObject);
begin
  Chart.GetImage(TUniFSKendoUIExport.svg);
end;

procedure TfrmKendoUI.ChartAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName = 'ClickSeries' then
    ShowMessage('name = '+Params.Values['name']+'</br>'+
                'category = '+Params.Values['category']+'</br>'+
                'value = '+Params.Values['value'] );

end;

procedure TfrmKendoUI.ChartGetImage(Sender: TObject; PathImage: string);
var
  vUrl: string;
begin
  vUrl := UniServerInstance.LocalCacheURL + ExtractFileName(PathImage);
  UniSession.AddJS('window.open("'+vUrl+'")');
end;

procedure TfrmKendoUI.cmbCultureCloseUp(Sender: TObject);
begin
  Chart.SetCulture(cmbCulture.Text);
  Chart.InitChart;
end;

procedure TfrmKendoUI.cmbLegendCloseUp(Sender: TObject);
begin
  Chart.ChartLegendPosition := TUniFSKendoUIPosition(cmbLegend.ItemIndex);
  Chart.InitChart;
end;

procedure TfrmKendoUI.rdbColumnClick(Sender: TObject);
begin
  if Assigned(Sender) then
    if Sender is TUniRadioButton then
      Chart.ChartType := TUniFSKendoUIType(TUniRadioButton(Sender).Tag);
  Chart.ChartTheme  := TUniFSKendoUITheme(cmbTheme.ItemIndex);

  Chart.ChartSeries.Clear;
  Chart.ChartSeriesProperties.Clear;
  Chart.ChartProperties.Clear;
  Chart.ChartSeriesDefaults := EmptyStr;

  if (Chart.ChartType = Bar) or (Chart.ChartType = Column) or (Chart.ChartType = Line) then
  begin
    Chart.ChartTitleVisible := True;
    Chart.ChartTitle := 'Title Test (bar, column, line)';
    Chart.ChartDataSet := ClientDataSet1;
    // "categoryAxis" - reserved keyworld for categories (Linha do Tempo)
    Chart.ChartSeries.Values['categoryAxis'] := 'year';
    // first set of data, name=dbfield  1ª Barra
    Chart.ChartSeries.Values['Brasil'] := 'us_users';
    // second set of data 2ª Barra
    Chart.ChartSeries.Values['Mundo'] := 'world_users';
    // tooltip for line chart
    Chart.ChartProperties.Values['tooltip'] := '{visible: true, format: "{0:n3}"}';//{0:c}
    // labels for bars and columns
    Chart.ChartSeriesDefaults := 'labels: {visible: true, position: "insideEnd", template: "#= kendo.format(''{0:n3}'', value) #"}';// kendo.format('{0:c}',99999);
    Chart.ChartProperties.Values['valueAxis'] := '{labels: {font: "18px Tahoma", color: "red", template: "#= kendo.format(''{0:n3}'', value) #"}}';
    //Chart.ChartProperties.Values['categoryAxis'] := '{labels: {visible: true, font: "18px Tahoma", color: "red", template: "#= kendo.format(''{0:n3}'', value) #"}}';
    Chart.ChartLegendPosition := TUniFSKendoUIPosition.Top;
    Chart.ChartStacked := cbStacked.Checked;
    Chart.ChartSeriesStyle := TUniFSKendoUISeriesStyle(cmbStyle.ItemIndex);
  end
  else
  if Chart.ChartType = Pie then
  begin
    Chart.ChartTitleVisible := True;
    Chart.ChartTitle := 'Chart Title';
    Chart.ChartDataSet := ClientDataSet1;
    // pie charts are defined with 2 or 3 fields
    // 2 fields: categories and values
    // 3 fields: categories, values and boolean field for selected values
    //kendo.Series.Values['United States'] := 'year,us_users'; // unexploded pie
    Chart.ChartSeries.Values['United States'] := 'year,us_users,selected'; //exploded pie
    Chart.ChartSeriesProperties.Values['United States'] := 'labels: {visible: true, align: "column", format: "{0:c}"}';
    Chart.ChartLegendPosition := TUniFSKendoUIPosition.Bottom;
  end
  else
  if Chart.ChartType = Scatter then
  begin
    Chart.ChartTitleVisible := True;
    Chart.ChartTitle := 'Scatter Chart';
    Chart.ChartDataSet := ClientDataSet1;
    // name - doesn't matter, not used in scatter plots
    // field1 - point label
    // field2 - X value
    // field3 - Y value
    Chart.ChartSeries.Values['anything'] := 'year,us_users,world_users';
    //kendo.SeriesDefaults := 'labels: {visible: true, template: "#= series.name #", position: "right"}';
    Chart.ChartSeriesDefaults := 'labels: {visible: true, template: "${series.name} x:${value.x}  y:${value.y}", position: "right"}';
    Chart.ChartLegendPosition := TUniFSKendoUIPosition.None;
  end
  else
  if Chart.ChartType = ScatterLine then
  begin
    Chart.ChartTitleVisible := True;
    Chart.ChartTitle := 'Charge current vs. charge time';
    Chart.ChartDataSet := ClientDataSet2;
    // name - series name
    // field1 - X value
    // field2 - Y value
    Chart.ChartSeries.Values['0.8C'] := 'x1,y1';
    Chart.ChartSeries.Values['1.6C'] := 'x2,y2';
    Chart.ChartSeries.Values['3.1C'] := 'x3,y3';
    Chart.ChartSeriesProperties.Values['0.8C'] := 'markers: {type: "triangle", size: 14}';
    Chart.ChartSeriesProperties.Values['1.6C'] := 'width: 4, markers: {type: "square", size: 12}';
    Chart.ChartProperties.Values['tooltip'] := '{visible: true, format: "{0}% in {1} minutes"}';
    Chart.ChartLegendPosition := TUniFSKendoUIPosition.Right;
    Chart.ChartProperties.Values['xAxis'] := '{max: 90, labels: {format: "{0}m"}}';
    Chart.ChartProperties.Values['yAxis'] := '{max: 100, labels: {format: "{0}%"}}';
  end;
  cmbLegend.ItemIndex := Integer(Chart.ChartLegendPosition);

  Chart.InitChart;
end;

procedure TfrmKendoUI.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;
  rdbBar.Checked := True;

  // Populate some data
  with ClientDataSet1 do begin
    CreateDataSet;
    // year, us_users, world_users, selected
    AppendRecord([2005, 500000.52, 700000.52, true]); // selected row for an exploded pie chart
    AppendRecord([2006, 479999.93, 579999.93]);
    AppendRecord([2007, 350000.21, 750000.21]);
    AppendRecord([2008, 809890.23, 109890.23]);
    AppendRecord([2009, 285382.11, 785382.11]);
  end;
  with ClientDataSet2 do begin
    CreateDataSet;
    // x1, y1, x2, y2, x3, y3
    AppendRecord([10, 10, 10, 40, 10, 70]);
    AppendRecord([15, 20, 17, 50, 13, 90]);
    AppendRecord([20, 25, 18, 70, 25,100]);
    AppendRecord([32, 40, 35, 90]);
    AppendRecord([43, 50, 47, 95]);
    AppendRecord([55, 60, 60,100]);
    AppendRecord([60, 70]);
    AppendRecord([70, 80]);
    AppendRecord([90,100]);
  end;

  lblVersion.Caption := 'UniFSKendoUI - Component Version: '+UniFSKendoUI.PackageVersion;
end;

procedure TfrmKendoUI.UniTimer1Timer(Sender: TObject);
begin
  rdbBar.Checked := True;
  rdbColumnClick(rdbBar);
end;

initialization
  RegisterClass(TfrmKendoUI);

end.
