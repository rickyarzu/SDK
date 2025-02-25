unit Janua.Test.VCL.frmTest;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, JvExMask, JvToolEdit, Vcl.StdCtrls,
  Vcl.Samples.Spin, JvBaseEdits, Vcl.ToolWin, Vcl.ComCtrls,
  // Januaproject
  Janua.Vcl.Interposers, uJanuaVclForm, Janua.Controls.Forms.Intf,
  Janua.Core.Classes, Janua.Vcl.Actions, Janua.Core.Conf;

type
  TfrmTest = class(TJanuaVCLFormModel, IJanuaContainer, IJanuaForm)
    SpinEdit1: TSpinEdit;
    Edit1: TEdit;
    JvDateEdit1: TJvDateEdit;
    JvCalcEdit1: TJvCalcEdit;
    Memo1: TMemo;
    ToolBar1: TToolBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTest: TfrmTest;

implementation

{$R *.dfm}

end.

