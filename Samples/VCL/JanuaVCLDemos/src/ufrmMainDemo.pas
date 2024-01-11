unit ufrmMainDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmMDIRibbonToolbar, Vcl.Menus, AdvMenus, Vcl.ComCtrls,
  Vcl.WinXCtrls, Vcl.ToolWin, Vcl.ExtCtrls;

type
  TfrmMainDemo = class(TfrmMDIRibbonToolbar)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainDemo: TfrmMainDemo;

implementation

{$R *.dfm}

end.
