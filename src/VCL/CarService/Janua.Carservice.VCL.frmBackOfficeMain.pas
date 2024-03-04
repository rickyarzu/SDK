unit Janua.Carservice.VCL.frmBackOfficeMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvAppStyler, AdvOfficeHint, Vcl.ImgList,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvToolBar, AdvToolBarStylers, AdvShapeButton,
  Vcl.StdCtrls, AdvGlowButton, AdvOfficeTabSet, AdvOfficeTabSetStylers, Vcl.ComCtrls, ToolPanels,
  Vcl.ExtCtrls, AdvStyleIF, Vcl.Menus, AdvMenus, Vcl.WinXCtrls, AdvPageControl, Vcl.Buttons, SVGIconImage,
  AdvPanel, Vcl.DBCtrls, Vcl.CategoryButtons, Vcl.ToolWin,
  // Januaproject
  ufrmMDIRibbonToolbar;

type
  //   TfrmCarserviceMain = class(TfrmMDIRibbonToolbar)
  TfrmVCLCarServiceBackOfficeMain = class(TfrmMDIRibbonToolbar)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLCarServiceBackOfficeMain: TfrmVCLCarServiceBackOfficeMain;

implementation

{$R *.dfm}

end.
