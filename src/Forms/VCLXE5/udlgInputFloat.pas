unit Janua.VCL.dlgInputFloat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, AdvSpin, AdvGlowButton, AdvEdit, CurvyControls;

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
