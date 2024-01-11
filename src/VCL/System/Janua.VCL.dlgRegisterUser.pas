unit Janua.VCL.dlgRegisterUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.ExtCtrls,  AdvAppStyler,
  Vcl.StdCtrls,  System.ImageList, Vcl.ImgList, AdvStyleIF, Vcl.Mask;

type
  TdlgRegisterUser = class(TForm)
    Shader1: TPanel;
    btnOK: TAdvGlowButton;
    edUserEMail: TLabeledEdit;
    edPassword: TButtonedEdit;
    Label1: TLabel;
    edPasswordConfirm: TButtonedEdit;
    lbConfirmPassword: TLabel;
    edFirstName: TLabeledEdit;
    edUserLastName: TLabeledEdit;
    procedure edPasswordRightButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgRegisterUser: TdlgRegisterUser;

implementation

{$R *.dfm}

procedure TdlgRegisterUser.edPasswordRightButtonClick(Sender: TObject);
begin
  if self.edPassword.LeftButton.ImageIndex = 0 then
  begin
   self.edPassword.PasswordChar := #0;
   self.edPassword.LeftButton.ImageIndex := 1;
  end
  else
  begin
    self.edPassword.LeftButton.ImageIndex := 0;
    self.edPassword.PasswordChar := '*';
  end;
end;

end.
