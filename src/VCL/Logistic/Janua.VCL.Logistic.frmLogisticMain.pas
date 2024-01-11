unit Janua.VCL.Logistic.frmLogisticMain;

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
  TfrmLogisticMain = class(TfrmMDIRibbonToolbar)
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
  frmLogisticMain: TfrmLogisticMain;

implementation

uses Janua.Core.TMLogistic.Cache, udmVCLMainApplication, Janua.TMLogistic.VCLApplication;

{$R *.dfm}

constructor TfrmLogisticMain.Create(AOwner: TComponent);
begin
  inherited;
  TJanuaTMLogisticVCLApplication.AfterLogin;
end;

procedure TfrmLogisticMain.FormDestroy(Sender: TObject);
begin
  inherited;
  TJanuaTMLogisticVCLApplication.Terminate;
end;

procedure TfrmLogisticMain.InternalAfterShow;
begin
  inherited;
  Janua.Core.TMLogistic.Cache.TJanuaLogisticCache.Setup;
end;

end.
