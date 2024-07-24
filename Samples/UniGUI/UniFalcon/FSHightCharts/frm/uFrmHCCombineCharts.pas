unit uFrmHCCombineCharts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniHTMLFrame, UniFSHighCharts, uniPageControl,
  uniButton, uniBitBtn, UniFSButton, uniGUIBaseClasses, uniPanel;

type
  TfrmHCCombineCharts = class(TUniFrame)
    pnlTop: TUniPanel;
    btnLoad: TUniFSButton;
    pgcMaster: TUniPageControl;
    tabChart: TUniTabSheet;
    HighCharts: TUniFSHighCharts;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TfrmHCCombineCharts }

procedure TfrmHCCombineCharts.btnLoadClick(Sender: TObject);
begin
  HighCharts.LoadChart;
end;

procedure TfrmHCCombineCharts.UniFrameCreate(Sender: TObject);
begin
  HighCharts.LoadChart;
end;

initialization
  RegisterClass(TfrmHCCombineCharts);

end.
