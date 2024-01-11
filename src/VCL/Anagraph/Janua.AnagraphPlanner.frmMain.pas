unit Janua.AnagraphPlanner.frmMain;

interface

uses
  // RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ImgList, VCL.ComCtrls, VCL.ExtCtrls, VCL.StdCtrls,
  VCL.DBCtrls, VCL.CategoryButtons, VCL.ToolWin, VCL.Buttons, VCL.WinXCtrls, VCL.Menus,
  // TMS
  AdvAppStyler, AdvOfficeHint, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvToolBar, AdvToolBarStylers,
  AdvShapeButton, AdvGlowButton, AdvOfficeTabSet, AdvOfficeTabSetStylers, ToolPanels, AdvStyleIF, AdvMenus,
  AdvPageControl, SVGIconImage, AdvPanel,
  // JANUA
  ufrmMDIRibbonToolbar;

type
  TfrmAnagraphPlannerMain = class(TfrmMDIRibbonToolbar)
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure InternalAfterShow; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmAnagraphPlannerMain: TfrmAnagraphPlannerMain;

implementation

uses Janua.Core.Anagraph.Cache, udmVCLMainApplication, Janua.AnagraphPlanner.VCLApplication;

{$R *.dfm}

constructor TfrmAnagraphPlannerMain.Create(AOwner: TComponent);
begin
  inherited;
  TJanuaAnagraphPlannerVCLApplication.AfterLogin;
end;

procedure TfrmAnagraphPlannerMain.FormDestroy(Sender: TObject);
begin
  inherited;
  TJanuaAnagraphPlannerVCLApplication.Terminate;
end;

procedure TfrmAnagraphPlannerMain.InternalAfterShow;
begin
  inherited;
  Janua.Core.Anagraph.Cache.TJanuaAnagraphCache.Setup;
end;

end.
