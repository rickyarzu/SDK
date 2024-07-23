unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, UniFSButton,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniPageControl, uniButton, uniBitBtn, uniGUIFrame, uniLabel, UniFSMap,
  uniScrollBox;

type
  TMainForm = class(TUniForm)
    pnlMenu: TUniPanel;
    pgcMaster: TUniPageControl;
    btnMarcadoresSimples: TUniFSButton;
    btnMarcadoresComplexos: TUniFSButton;
    btnInfoWindow: TUniFSButton;
    btnGeoJSON: TUniFSButton;
    btnPolygon: TUniFSButton;
    btnPolyline: TUniFSButton;
    btnSearch: TUniFSButton;
    btnDrawing: TUniFSButton;
    btnPolygonDesenharObter: TUniFSButton;
    btnGeocode: TUniFSButton;
    btnGetPosition: TUniFSButton;
    btnMarcadores: TUniFSButton;
    btnRoutes: TUniFSButton;
    btnSearchBox: TUniFSButton;
    btnMultiRoutes: TUniFSButton;
    btnGetRoutes: TUniFSButton;
    ScrollBox: TUniScrollBox;
    pnlVersion: TUniPanel;
    lbl: TUniLabel;
    lblVersion: TUniLabel;
    lbl1: TUniLabel;
    btnheatMap: TUniFSButton;
    btnKrigingMap: TUniFSButton;
    procedure btnMarcadoresSimplesClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Rpl(Str: string):string;
    procedure NewTab(Frm, Caption: string);
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uFrmDebug;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

{ TMainForm }

procedure TMainForm.btnMarcadoresSimplesClick(Sender: TObject);
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
  frmDebug.Close;

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
  lblVersion.Caption := PackageVersion;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
