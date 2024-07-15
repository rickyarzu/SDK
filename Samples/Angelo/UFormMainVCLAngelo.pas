unit UFormMainVCLAngelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  // Januaproject
  ufrmMDIRibbonToolbar, Vcl.ExtCtrls, Vcl.Menus, AdvMenus, Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.ToolWin;

type
  TfrmMainAngeloTestVCL = class(TfrmMDIRibbonToolbar)
  private
    { Private declarations }
  protected
    procedure InternalAfterShow; override;
  public
    { Public declarations }
  end;

var
  frmMainAngeloTestVCL: TfrmMainAngeloTestVCL;

implementation

{$R *.dfm}

{ TfrmMainAngeloTestVCL }

procedure TfrmMainAngeloTestVCL.InternalAfterShow;
begin
  inherited;

end;

end.
