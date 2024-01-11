unit uframeTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvBaseEdits, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.StdCtrls, Vcl.Samples.Spin, Janua.Controls.Forms.Intf, Janua.Controls.Intf, uJanuaVCLFrame,
  Vcl.ExtCtrls, AdvPanel;

type
  TframeTest = class(TJanuaVCLFrameModel, IJanuaContainer)
    AdvPanel1: TAdvPanel;
    SpinEdit1: TSpinEdit;
    Edit1: TEdit;
    JvDateEdit1: TJvDateEdit;
    JvCalcEdit1: TJvCalcEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
