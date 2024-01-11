unit Janua.VCLRetail.frmRetailMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmMDIRibbonToolbar, AdvAppStyler, AdvOfficeHint, System.ImageList,
  Vcl.ImgList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvToolBar, AdvToolBarStylers, AdvShapeButton,
  Vcl.StdCtrls, AdvGlowButton, AdvOfficeTabSet, AdvOfficeTabSetStylers, Vcl.ComCtrls, ToolPanels,
  Vcl.ExtCtrls,
  AdvStyleIF, Vcl.Menus, AdvMenus, Vcl.WinXCtrls, AdvPageControl, Vcl.Buttons, SVGIconImage, AdvPanel,
  Vcl.DBCtrls, Vcl.CategoryButtons, Vcl.ToolWin;

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
