unit Janua.VCL.dlgInputFloat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, 
  VCL.Dialogs, VCL.Graphics, VCL.Forms, VCL.Controls,
  CurvyControls, AdvGlowButton, VCL.StdCtrls;

type
  TdlgInputFloat = class(TForm)
    Label1: TLabel;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvMaskEdit1: TCurvyEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgInputFloat: TdlgInputFloat;

implementation

{$R *.dfm}

end.
