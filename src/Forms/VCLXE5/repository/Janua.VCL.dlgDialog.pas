unit Janua.VCL.dlgDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Shader, AdvAppStyler, Janua.Core.Classes,
  Janua.VCL.TMSStyles, AdvGlowButton;

type
  TdlgDialogModel = class(TForm)
    pnlTop: TShader;
    AdvFormStyler1: TAdvFormStyler;
    JanuaFormStyler1: TJanuaFormStyler;
    pnlBottom: TShader;
    btnOk: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgDialogModel: TdlgDialogModel;

implementation

{$R *.dfm}

end.
