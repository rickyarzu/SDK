unit Janua.CarService.VCLMainForm;

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
  TfrmCarserviceMain = class(TfrmMDIRibbonToolbar)
  private
    { Private declarations }
  protected
    procedure InternalAfterShow; override;
  public
    { Public declarations }
  end;

var
  frmCarserviceMain: TfrmCarserviceMain;

implementation

{$R *.dfm}
{ TfrmCarserviceMain }

procedure TfrmCarserviceMain.InternalAfterShow;
begin
  inherited;
  // nothing to do right now :)
end;

end.
