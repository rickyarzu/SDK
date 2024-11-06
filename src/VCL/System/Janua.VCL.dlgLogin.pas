unit Janua.VCL.dlgLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, VCL.StdCtrls,
  VCL.Imaging.pngimage, VCL.Buttons,
  // tmsUXlsSST
  JvExExtCtrls, JvImage, VCL.TMSFNCTypes,
  // Janua
    Janua.Core.System, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Controls.Dialogs.Intf,
  // inherited
  uJanuaVCLCustomLoginDialog;

type
  TdlgVCLLoginDialog = class(TdlgVCLCustomLoginDialog, IJanuaContainer, IJanuaForm, IJanuaLoginDialogForm)
    Panel1: TPanel;
    btnLogin: TButton;
    btnServer: TButton;
    edUserName: TEdit;
    edPassword: TEdit;
    ckbShowPasswordChar: TCheckBox;
    lbUsername: TLabel;
    HTMLabel1: TLabel;
    lbServer: TLabel;
    JvImage1: TJvImage;
    procedure btnLoginClick(Sender: TObject);
    procedure ckbShowPasswordCharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  protected
    function GetPassword: string; override;
    function GetUsername: string; override;
    procedure SetPassword(const Value: string); override;
    procedure SetUsername(const Value: string); override;
    { Private declarations }
  public
    { Public declarations }
    property Username: string read GetUsername write SetUsername;
    property Password: string read GetPassword write SetPassword;
    property ServerList: TStrings read GetServerList write SetServerList;
    property SelectedServer: string read GetSelectedServer write SetSelectedServer;
    property SelectServer: boolean read GetSelectServer write SetSelectServer;
  end;

var
  dlgVCLLoginDialog: TdlgVCLLoginDialog;

implementation

uses Janua.VCL.Framework;

{$R *.dfm}
{ TdlgLogin }

procedure TdlgVCLLoginDialog.btnLoginClick(Sender: TObject);
begin
  Close;
end;

procedure TdlgVCLLoginDialog.ckbShowPasswordCharClick(Sender: TObject);
begin
  if ckbShowPasswordChar.Checked then
    self.edPassword.PasswordChar := #0
  else
    self.edPassword.PasswordChar := '*';
end;

procedure TdlgVCLLoginDialog.FormCreate(Sender: TObject);
begin
  inherited;
  btnServer.Images := TJanuaVCLApplication.ImgListVCLIcons16;
  btnLogin.Images := TJanuaVCLApplication.ImgListVCLIcons16;
end;

function TdlgVCLLoginDialog.GetPassword: string;
begin
  Result := edPassword.Text
end;

function TdlgVCLLoginDialog.GetUsername: string;
begin
  Result := edUserName.Text
end;

procedure TdlgVCLLoginDialog.SetPassword(const Value: string);
begin
  edPassword.Text := Value;
end;

procedure TdlgVCLLoginDialog.SetUsername(const Value: string);
begin
  edUserName.Text := Value;
end;

end.
