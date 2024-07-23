unit uFrmHCColumnWithNegative;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, Datasnap.DBClient, uniMemo, uniHTMLFrame,
  UniFSGoogleChart, uniBasicGrid, uniDBGrid, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniPanel, uniRadioGroup, uniDBNavigator, uniLabel, uniTimer,
  UniFSButton, UniFSHighCharts, uniPageControl;

type
  TfrmHCColumnWithNegative = class(TUniFrame)
    pnlTop: TUniPanel;
    btnLoad: TUniFSButton;
    CDS: TClientDataSet;
    DS: TDataSource;
    lblInfo: TUniLabel;
    pgcMaster: TUniPageControl;
    tabChart: TUniTabSheet;
    HighCharts: TUniFSHighCharts;
    tabData: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    DBNMaster1: TUniDBNavigator;
    procedure btnLoadClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure lblInfoClick(Sender: TObject);
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

procedure TfrmHCColumnWithNegative.btnLoadClick(Sender: TObject);
begin
  HighCharts.LoadChart;
end;

procedure TfrmHCColumnWithNegative.lblInfoClick(Sender: TObject);
begin
  UniSession.AddJS('window.open("'+TUniLabel(Sender).Caption+'")');
end;

procedure TfrmHCColumnWithNegative.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Pais', ftString,20);
    FieldDefs.Add('Popularidade', ftInteger);
    CreateDataSet;
    AppendRecord(['Germany', 200]);
    AppendRecord(['United States', 300]);
    AppendRecord(['Brazil', 400]);
    AppendRecord(['Canada', 500]);
    AppendRecord(['France', 600]);
    AppendRecord(['RU', 700]);
  end;
end;

procedure TfrmHCColumnWithNegative.UniFrameCreate(Sender: TObject);
begin
  LoadData;
  HighCharts.LoadChart;
end;

initialization
  RegisterClass(TfrmHCColumnWithNegative);

end.
