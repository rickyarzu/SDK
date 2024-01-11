unit ufrmMDIRibbonToolbar;

interface

uses
  // System
  System.Classes, System.ImageList,
  // Forms
  uJanuaVclForm, uJanuaVCLMainForm,
  // VCL
  Vcl.Menus, Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.Controls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.StdCtrls,
  // Tms
  AdvMenus, // PasMgr,
  // Janua
  Janua.Controls.Forms.Intf, Janua.Core.Classes, Janua.TMS.NavBar, Janua.Controls.Forms.Impl,
  Janua.Vcl.Controls.Forms.Impl;

type
  TfrmMDIRibbonToolbar = class(TJanuaVCLMainForm, IJanuaForm)
    AdvPopupMenu1: TAdvPopupMenu;
    tmrWaitSpin: TTimer;
    procedure tmrWaitSpinTimer(Sender: TObject);
  private
    FTMSNavBarController: TJanuaTMSNavBarController;
  protected
    procedure FormSetup; override;
    procedure InternalAfterShow; virtual; abstract;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmMDIRibbonToolbar: TfrmMDIRibbonToolbar;

implementation

{$R *.dfm}

uses System.SysUtils, Vcl.Themes, Winapi.Windows, Janua.Vcl.dlgWaitSpin, Janua.Application.Framework,
  Janua.Core.Functions;

{ TfrmMDIRibbonToolbar }

constructor TfrmMDIRibbonToolbar.Create(AOwner: TComponent);
begin
  inherited;
  // JanuaTMSNavBarController1.Activate;
end;

procedure TfrmMDIRibbonToolbar.FormSetup;

begin
  inherited;
  FTMSNavBarController := TJanuaTMSNavBarController.Create(self);
  FTMSNavBarController.Container := SplitViewLeft;
  FTMSNavBarController.PageController := PageController;
  FTMSNavBarController.Enabled := True;
  FTMSNavBarController.Activate;
  if not FTMSNavBarController.Active then
    raise Exception.Create(ClassName + '.Create Main Menu not loaded');
  tmrWaitSpin.Enabled := True;
end;

procedure TfrmMDIRibbonToolbar.tmrWaitSpinTimer(Sender: TObject);
var
  aWaitSpin: TdlgVCLWaitSpin;
begin
  tmrWaitSpin.Enabled := False;
  TJanuaApplication.WindowsManager.ShowOverlay;
  try
    InternalAfterShow;
    aWaitSpin := TdlgVCLWaitSpin.Create(nil);
    try
      aWaitSpin.ShowModal;
    finally
      aWaitSpin.Free;
    end;
  finally
    TJanuaApplication.WindowsManager.HideOverlay;
  end;
end;

end.
