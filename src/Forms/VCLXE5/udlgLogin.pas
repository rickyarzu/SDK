unit udlgLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Janua.Core.System, AdvGlowButton, Vcl.ImgList, CurvyControls,
  AdvSmoothLabel, AdvOfficeButtons, HTMLabel, AdvOfficeImage;

type
  TdlgLogin = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ckbShowPasswordCharClick(Sender: TObject);
  private
    FPassword: string;
    FUsername: string;
    FSelectedServer: string;
    FServerList: TStrings;
    FSelectServer: boolean;
    procedure SetPassword(const Value: string);
    procedure SetUsername(const Value: string);
    procedure SetSelectedServer(const Value: string);
    procedure SetServerList(const Value: TStrings);
    procedure SetSelectServer(const Value: boolean);
    { Private declarations }
  public
    { Public declarations }
  published
     property Username: string read FUsername write SetUsername;
     property Password: string read FPassword write SetPassword;
     property ServerList: TStrings read FServerList write SetServerList;
     property SelectedServer: string read FSelectedServer write SetSelectedServer;
     property SelectServer: boolean read FSelectServer write SetSelectServer;
  end;

var
  dlgLogin: TdlgLogin;

implementation

{$R *.dfm}

{ TdlgLogin }

procedure TdlgLogin.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TdlgLogin.ckbShowPasswordCharClick(Sender: TObject);
begin
   if ckbShowPasswordChar.Checked then
    self.edPassword.PasswordChar := #0
   else
    self.edPassword.PasswordChar := '*';

end;

procedure TdlgLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  self.FUsername := self.edUsername.Text;
  self.FPassword := self.edPassword.Text;
end;

procedure TdlgLogin.SetPassword(const Value: string);
begin
  FPassword := Value;

end;

procedure TdlgLogin.SetSelectedServer(const Value: string);
begin
  FSelectedServer := Value;
end;

procedure TdlgLogin.SetSelectServer(const Value: boolean);
begin
  FSelectServer := Value;
end;

procedure TdlgLogin.SetServerList(const Value: TStrings);
begin
  FServerList := Value;
end;

procedure TdlgLogin.SetUsername(const Value: string);
begin
  FUsername := Value;
  self.edUsername.Text := FUsername;
end;

end.
