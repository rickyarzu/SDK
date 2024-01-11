unit ufrmLogisticMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmMDIRibbonToolbar, AdvAppStyler, AdvOfficeHint, System.ImageList,
  Vcl.ImgList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvToolBar, AdvToolBarStylers, AdvShapeButton,
  Vcl.StdCtrls, AdvGlowButton, AdvOfficeTabSet, AdvOfficeTabSetStylers, Vcl.ComCtrls, ToolPanels,
  Vcl.ExtCtrls,
  AdvStyleIF, Vcl.Menus, AdvMenus, Vcl.WinXCtrls, AdvPageControl, Vcl.Buttons, SVGIconImage, AdvPanel,
  Vcl.DBCtrls, Vcl.CategoryButtons,  Vcl.ToolWin;

type
  TfrmLogisticMain = class(TfrmMDIRibbonToolbar)
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogisticMain: TfrmLogisticMain;

implementation

{$R *.dfm}

uses udmVCLMainApplication, Janua.TMLogistic.VCLApplication;

procedure TfrmLogisticMain.FormDestroy(Sender: TObject);
begin
  inherited;
  TJanuaTMLogisticVCLApplication.Terminate;
end;

end.
