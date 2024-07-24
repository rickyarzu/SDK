unit uFrmBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Data.DB, Datasnap.DBClient, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  UniFSGoogleChart, UnimFSGoogleChart, UniFSKendoUI, UnimFSKendoUI;

type
  TfrmBar = class(TUnimForm)
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

function frmBar: TfrmBar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmBar: TfrmBar;
begin
  Result := TfrmBar(UniMainModule.GetFormInstance(TfrmBar));
end;

{ TfrmBar }

procedure TfrmBar.ChartAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName = 'ClickSeries' then
    ShowMessage('name = '+Params.Values['name']+'</br>'+
                'category = '+Params.Values['category']+'</br>'+
                'value = '+Params.Values['value'] );
end;

procedure TfrmBar.LoadChart;
begin
  Chart.ChartType := TUniFSKendoUIType.Column;
  Chart.ChartTheme := TUniFSKendoUITheme.Flat;

  Chart.ChartSeries.Clear;
  Chart.ChartSeriesProperties.Clear;
  Chart.ChartProperties.Clear;
  Chart.ChartSeriesDefaults := EmptyStr;

  Chart.ChartTitleVisible := True;
  Chart.ChartTitle := 'Internet Users is USA';
  Chart.ChartDataSet := CDS;
  Chart.ChartSeries.Values['United States'] := 'year,us_users';
  Chart.ChartSeriesProperties.Values['United States'] := 'labels: {visible: true, align: "column", format: "{0}%"}';
  Chart.ChartLegendPosition := TUniFSKendoUIPosition.Bottom;

  Chart.InitChart;
end;

procedure TfrmBar.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('year', ftString, 10);
    FieldDefs.Add('us_users', ftFloat);
    FieldDefs.Add('world_users', ftFloat);
    CreateDataSet;
    AppendRecord([2005, 70.52, 75.85]);
    AppendRecord([2006, 68.93, 16.7]);
    AppendRecord([2007, 75, 20]);
    AppendRecord([2008, 100.23, 23.5]);
    AppendRecord([2009, 78, 26.6]);
  end;
end;

procedure TfrmBar.UnimFormAfterShow(Sender: TObject);
begin
  LoadChart;
end;

procedure TfrmBar.UnimFormCreate(Sender: TObject);
begin
  LoadData;
end;

procedure TfrmBar.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  case TUnimTitleButton(Sender).ButtonId of
    1 : Chart.Refresh;
  end;
end;

end.
