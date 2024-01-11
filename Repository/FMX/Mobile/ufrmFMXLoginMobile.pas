unit ufrmFMXLoginMobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.ImageList,
  // Janua
  Janua.Core.Functions, Janua.Core.Classes, Janua.Core.RESTClient.Health,
  // Frames
  uframeFMXRegisterMobile,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.TabControl, FMX.ImgList;

type
  TfrmDico33MobileLogin = class(TForm)
    ToolBar2: TToolBar;
    lblTitle2: TLabel;
    btnBack: TSpeedButton;
    Image2: TImage;
    TabControlLogin: TTabControl;
    TabItemLogin: TTabItem;
    TabItemRegister: TTabItem;
    Label5: TLabel;
    edLogin: TEdit;
    Label6: TLabel;
    edPassword: TEdit;
    Button2: TButton;
    Button3: TButton;
    Text4: TText;
    frameFMXRegisterMobile1: TframeFMXRegisterMobile;
    procedure Button2Click(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure frameFMXRegisterMobile1btnRegisterClick(Sender: TObject);
  private
    FLoggedIN: boolean;
    FJanuaRESTHealthClient: TJanuaRESTHealthClient;
    procedure SetLoggedIN(const Value: boolean);
    procedure SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
    { Private declarations }
  public
    { Public declarations }
    property LoggedIN: boolean read FLoggedIN write SetLoggedIN;
    property JanuaRESTHealthClient: TJanuaRESTHealthClient read FJanuaRESTHealthClient
      write SetJanuaRESTHealthClient;
  end;

var
  frmDico33MobileLogin: TfrmDico33MobileLogin;

implementation

{$R *.fmx}

procedure TfrmDico33MobileLogin.btnBackClick(Sender: TObject);
begin
  if TabControlLogin.TabIndex > 0 then
    TabControlLogin.Previous(TTAbTransition.Slide)
  else
  begin
    self.ModalResult := 2;
    self.DisposeOf;
  end;
end;

procedure TfrmDico33MobileLogin.Button2Click(Sender: TObject);
begin
  if not assigned(FJanuaRESTHealthClient) then
    raise Exception.Create('frmDico33MobileLogin: FJanuaRESTHealthClient not set');

  if self.edPassword.Text = '' then
    ShowMessage('Attenzione non avete inserito la mail')
  else if not Janua.Core.Functions.IsValidEmail(self.edLogin.Text) then
    ShowMessage('Attenzione immessa email errata')
  else
  begin
    FJanuaRESTHealthClient.Login(self.edLogin.Text, self.edPassword.Text);
    if FJanuaRESTHealthClient.ClientRecord.IsLoggedIn then
    begin
      self.ModalResult := 1;
      self.Close;
    end
    else
    begin
      ShowMessage('Login Errata reinserite i dati o registratevi');
    end;
  end;
end;

procedure TfrmDico33MobileLogin.Button3Click(Sender: TObject);
begin
  TabControlLogin.Next(TTAbTransition.Slide);
end;

procedure TfrmDico33MobileLogin.FormCreate(Sender: TObject);
begin
  FLoggedIN := False;
  frameFMXRegisterMobile1.IsRegistered := False;
end;

procedure TfrmDico33MobileLogin.frameFMXRegisterMobile1btnRegisterClick(Sender: TObject);
begin
  if not assigned(FJanuaRESTHealthClient) then
    raise Exception.Create('frmDico33MobileLogin: FJanuaRESTHealthClient not set');

  frameFMXRegisterMobile1.btnRegisterClick(Sender);
  if frameFMXRegisterMobile1.IsRegistered then
  begin
    self.ModalResult := 1;
    self.Close;
  end;

end;

procedure TfrmDico33MobileLogin.SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
begin
  FJanuaRESTHealthClient := Value;
  self.frameFMXRegisterMobile1.JanuaSystemClient := self.FJanuaRESTHealthClient;
end;

procedure TfrmDico33MobileLogin.SetLoggedIN(const Value: boolean);
begin
  FLoggedIN := Value;
end;

end.
