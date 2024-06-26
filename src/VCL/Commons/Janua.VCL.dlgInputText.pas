unit Janua.VCL.dlgInputText;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, // Janua
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.Functions, Janua.VCL.Functions,
  VCL.Controls, VCL.StdCtrls, VCL.Graphics, VCL.Forms, SVGIconImage;

type
  TdlgVCLInputText = class(TForm)
    AdvGlowButton1: TButton;
    AdvGlowButton2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    SVGIconImage1: TSVGIconImage;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  dlgVCLInputText: TdlgVCLInputText;

implementation

{$R *.dfm}

procedure TdlgVCLInputText.Edit1Enter(Sender: TObject);
begin
  if Sender is TEdit then
    (Sender as TEdit).Color := clYellow

end;

procedure TdlgVCLInputText.Edit1Exit(Sender: TObject);
begin
  if Sender is TEdit then
    (Sender as TEdit).Color := clWhite

end;

procedure TdlgVCLInputText.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
  begin
    ModalResult := 1;
    Close;
  end;
end;

end.
