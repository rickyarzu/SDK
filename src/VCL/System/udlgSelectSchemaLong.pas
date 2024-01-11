unit udlgSelectSchemaLong;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Shader, AdvAppStyler, Janua.Core.Classes,
  Janua.VCL.TMSStyles, AdvGlowButton;

type
  TForm4 = class(TForm)
    Shader1: TShader;
    AdvFormStyler1: TAdvFormStyler;
    JanuaFormStyler1: TJanuaFormStyler;
    Shader2: TShader;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

end.
