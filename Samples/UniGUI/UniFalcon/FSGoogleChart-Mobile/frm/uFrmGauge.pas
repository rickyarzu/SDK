unit uFrmGauge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniPanel, uniHTMLFrame, UniFSGoogleChart, UnimFSGoogleChart,
  Data.DB, Datasnap.DBClient, uniTimer;

type
  TfrmGauge = class(TUnimForm)
    GoogleChart: TUnimFSGoogleChart;
    CDS: TClientDataSet;
    tmrRandom: TUniTimer;
    procedure tmrRandomTimer(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EnableRandomize;
  end;

function frmGauge: TfrmGauge;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmGauge: TfrmGauge;
begin
  Result := TfrmGauge(UniMainModule.GetFormInstance(TfrmGauge));
end;

procedure TfrmGauge.EnableRandomize;
begin
  tmrRandom.Enabled := not(tmrRandom.Enabled);
end;

procedure TfrmGauge.tmrRandomTimer(Sender: TObject);
begin
  Randomize;

  CDS.DisableControls;
  try
    CDS.First;
    while not CDS.Eof do
    begin
      CDS.Edit;
      CDS.Fields[1].AsInteger := Random(99);
      CDS.Post;
      CDS.Next;
    end;
  finally
    CDS.EnableControls;
    GoogleChart.LoadChart;
  end;
end;

procedure TfrmGauge.UnimFormCreate(Sender: TObject);
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Label', ftString,20);
    FieldDefs.Add('Value', ftInteger);
    CreateDataSet;
    AppendRecord(['Memory', 80]);
    AppendRecord(['CPU', 55]);
    AppendRecord(['Network', 68]);
  end;

  GoogleChart.ChartOptions.Clear;
  //GoogleChart.ChartOptions.Add('width: 700, height: 120, ');
  GoogleChart.ChartOptions.Add('redFrom: 90, redTo: 100, ');
  GoogleChart.ChartOptions.Add('yellowFrom:75, yellowTo: 90, ');
  GoogleChart.ChartOptions.Add('minorTicks: 5, ');

  GoogleChart.LoadChart;
end;

procedure TfrmGauge.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  case Sender.ButtonId of
    0 : EnableRandomize;
  end;

end;

end.
