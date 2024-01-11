unit udlgInputNumber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, VCL.Graphics, VCL.Controls, VCL.Forms,
  VCL.Dialogs, VCL.StdCtrls, VCL.Mask, AdvSpin, AdvGlowButton;

type
  TdlgInputNumber = class(TForm)
    AdvSpinEdit1: TAdvSpinEdit;
    Label1: TLabel;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgInputNumber: TdlgInputNumber;

implementation

{$R *.dfm}

end.
