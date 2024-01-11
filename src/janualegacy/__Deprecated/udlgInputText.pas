unit udlgInputText;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, // Janua
  Janua.Legacy.Core, Janua.Core.Types, Janua.Core.Classes, Janua.Core.Functions, Janua.VCL.Functions,
  Janua.Legacy.Functions, Janua.VCL.Dialogs, VCL.Graphics, VCL.Forms, VCL.StdCtrls, VCL.Controls, AdvGlowButton;

type
  TdlgInputText = class(TForm)
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  published

  end;

var
  dlgInputText: TdlgInputText;

implementation

{$R *.dfm}

procedure TdlgInputText.Edit1Enter(Sender: TObject);
begin
  if Sender is TEdit then
    (Sender as TEdit).Color := clYellow

end;

procedure TdlgInputText.Edit1Exit(Sender: TObject);
begin
  if Sender is TEdit then
    (Sender as TEdit).Color := clWhite

end;

procedure TdlgInputText.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
  begin
    ModalResult := 1;
    Close;
  end;
end;

end.
