unit uFrmPie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Data.DB, Datasnap.DBClient, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  UniFSGoogleChart, UnimFSGoogleChart, UniFSKendoUI, UnimFSKendoUI;

type
  TfrmPie = class(TUnimForm)
    Chart: TUnimFSKendoUI;
    CDS: TClientDataSet;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
    procedure UnimFormAfterShow(Sender: TObject);
    procedure ChartAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    procedure LoadData;
    procedure LoadChart;
  public
    { Public declarations }
  end;

function frmPie: TfrmPie;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmPie: TfrmPie;
begin
  Result := TfrmPie(UniMainModule.GetFormInstance(TfrmPie));
end;

{ TfrmPie }

procedure TfrmPie.ChartAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName = 'ClickSeries' then
    ShowMessage('name = '+Params.Values['name']+'</br>'+
                'category = '+Params.Values['category']+'</br>'+
                'value = '+Params.Values['value'] );
end;

procedure TfrmPie.LoadChart;
begin
  Chart.ChartType := TUniFSKendoUIType.Pie;
  Chart.ChartTheme := TUniFSKendoUITheme.Metro;

  Chart.ChartSeries.Clear;
  Chart.ChartSeriesProperties.Clear;
  Chart.ChartProperties.Clear;
  Chart.ChartSeriesDefaults := EmptyStr;

  Chart.ChartTitleVisible := True;
  Chart.ChartTitle := 'Internet Users is USA';
  Chart.ChartDataSet := CDS;
  Chart.ChartSeries.Values['United States'] := 'year,us_users,selected'; //exploded pie
  Chart.ChartSeriesProperties.Values['United States'] := 'labels: {visible: true, align: "column", format: "{0}%"}';
  Chart.ChartLegendPosition := TUniFSKendoUIPosition.Bottom;

  Chart.InitChart;
end;

procedure TfrmPie.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('year', ftString, 10);
    FieldDefs.Add('us_users', ftFloat);
    FieldDefs.Add('world_users', ftFloat);
    FieldDefs.Add('Selected', ftBoolean);
    CreateDataSet;
    AppendRecord([2005, 70.52, 75.85, true]); // selected row for an exploded pie chart
    AppendRecord([2006, 68.93, 16.7]);
    AppendRecord([2007, 75, 20]);
    AppendRecord([2008, 100.23, 23.5]);
    AppendRecord([2009, 78, 26.6]);
  end;
end;

procedure TfrmPie.UnimFormAfterShow(Sender: TObject);
begin
  LoadChart;
end;

procedure TfrmPie.UnimFormCreate(Sender: TObject);
begin
  LoadData;
end;

procedure TfrmPie.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  case TUnimTitleButton(Sender).ButtonId of
    1 : Chart.Refresh;
  end;
end;

end.
