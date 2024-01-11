unit Janua.TMS.dlgLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Janua.Core.System, AdvGlowButton, Vcl.ImgList, CurvyControls,
  AdvSmoothLabel, AdvOfficeButtons, HTMLabel, AdvOfficeImage, System.ImageList,
  // Januaproject
  Janua.Controls.Forms.Intf, uJanuaVCLCustomLoginDialog, Janua.Controls.Dialogs.Intf;

type
  TdlgTMSLogin = class(TdlgVCLCustomLoginDialog, IJanuaContainer, IJanuaForm, IJanuaLoginDialogForm)
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    btnServer: TAdvGlowButton;
    ImageList: TImageList;
    ImageListD: TImageList;
    ImageListH: TImageList;
    edUserName: TCurvyEdit;
    edPassword: TCurvyEdit;
    AdvSmoothLabel1: TAdvSmoothLabel;
    ckbShowPasswordChar: TAdvOfficeCheckBox;
    lbUsername: THTMLabel;
    HTMLabel1: THTMLabel;
    lbServer: TLabel;
    AdvOfficeImage1: TAdvOfficeImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure ckbShowPasswordCharClick(Sender: TObject);
  protected
    function GetPassword: string; override;
    function GetUsername: string;  override;
    procedure SetPassword(const Value: string);  override;
    procedure SetUsername(const Value: string);  override;
    { Private declarations }
  public
    { Public declarations }
    property Username: string read GetUsername write SetUsername;
    property Password: string read GetPassword write SetPassword;
  end;

var
  dlgTMSLogin: TdlgTMSLogin;

implementation

{$R *.dfm}
{ TdlgLogin }

procedure TdlgTMSLogin.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TdlgTMSLogin.ckbShowPasswordCharClick(Sender: TObject);
begin
  if ckbShowPasswordChar.Checked then
    self.edPassword.PasswordChar := #0
  else
    self.edPassword.PasswordChar := '*';

end;

function TdlgTMSLogin.GetPassword: string;
begin
   Result := edPassword.Text
end;

function TdlgTMSLogin.GetUsername: string;
begin
  Result := edUserName.Text
end;

procedure TdlgTMSLogin.SetPassword(const Value: string);
begin
  edPassword.Text := Value;
end;

procedure TdlgTMSLogin.SetUsername(const Value: string);
begin
  self.edUserName.Text := Value;
end;

end.
