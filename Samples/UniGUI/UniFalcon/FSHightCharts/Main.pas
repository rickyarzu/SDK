unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniHTMLFrame, UniFSHighCharts, uniButton, uniBitBtn, uniBasicGrid, uniDBGrid,
  Data.DB, Datasnap.DBClient, uniMemo, uniSplitter,
  uniPageControl, uniLabel, UniFSButton, uniScrollBox;

type
  TMainForm = class(TUniForm)
    pgcMaster: TUniPageControl;
    pnlMenu: TUniPanel;
    ScrollBox: TUniScrollBox;
    btnHCPieChart: TUniFSButton;
    btnHCBarChart: TUniFSButton;
    btnHCBarChartCustom: TUniFSButton;
    btnHCLineChart: TUniFSButton;
    btnHCAreaChart: TUniFSButton;
    btnHCColumnWithNegative: TUniFSButton;
    btnHCFunnelChart: TUniFSButton;
    pnlAbout: TUniPanel;
    lbl1: TUniLabel;
    lbl: TUniLabel;
    lblVersion: TUniLabel;
    btnHCCombineCharts: TUniFSButton;
    procedure UniFormCreate(Sender: TObject);
    procedure btnHCPieChartClick(Sender: TObject);
  private
    { Private declarations }
    function Rpl(Str: string):string;
    procedure NewTab(Frm, Caption: string);
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniGUIFrame;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.btnHCPieChartClick(Sender: TObject);
begin
  NewTab(Rpl(TUniFSButton(Sender).Name), TUniFSButton(Sender).Caption);
end;

procedure TMainForm.NewTab(Frm, Caption: string);
var
  TabSheet: TUniTabSheet;
  FCurrentFrame: TUniFrameClass;
  Fr: TUniFrame;
  vI: Integer;
begin
  for vI := 0 to pgcMaster.PageCount - 1 do
    if pgcMaster.Pages[vI].Caption = Trim(Caption) then
    begin
      pgcMaster.ActivePageIndex := vI;
      Exit;
    end
    else
      pgcMaster.Pages[vI].Close;

  TabSheet := TUniTabSheet.Create(MainForm);
  TabSheet.PageControl := pgcMaster;
  TabSheet.Caption := Caption;
  TabSheet.Closable := True;

  FCurrentFrame:= TUniFrameClass(FindClass(Frm));

  Fr := FCurrentFrame.Create(TabSheet);
  Fr.Parent := TabSheet;
end;

function TMainForm.Rpl(Str: string): string;
begin
  Result := StringReplace(Str,'btn','Tfrm',[rfReplaceAll]);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  lblVersion.Caption := UniFSHighCharts.PackageVersion;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
