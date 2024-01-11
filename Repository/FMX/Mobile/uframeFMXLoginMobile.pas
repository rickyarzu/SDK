unit uframeFMXLoginMobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Janua Units
  Janua.Core.System, Janua.Core.Functions,
  // fmx
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, uframeFMXRegisterMobile, FMX.Objects,
  FMX.Edit, FMX.TabControl, FMX.Controls.Presentation, Janua.Core.Classes, Janua.FMX.Forms, FMX.Layouts;

type
  TframeFMXLoginMobile = class(TFrame)
    // Sub Frames
    frameFMXRegisterMobile1: TframeFMXRegisterMobile;
    // Tabs
    TabControlLogin: TTabControl;
    TabItemLogin: TTabItem;
    TabItemRegister: TTabItem;
    // Components
    Text4: TText;
    VertScrollBox1: TVertScrollBox;
    Layout1: TLayout;
    Label5: TLabel;
    edLogin: TEdit;
    Label6: TLabel;
    edPassword: TEdit;
    ckbPassword: TCheckBox;
    btnLogin: TButton;
    Button3: TButton;
    procedure btnLoginClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ckbPasswordClick(Sender: TObject);
    procedure edLoginEnter(Sender: TObject);
    procedure TabControlLoginChange(Sender: TObject);
    procedure frameFMXRegisterMobile1btnProfileClick(Sender: TObject);
  private
    FLoggedIN: boolean;
    FJanuaSystemClient: TJanuaCustomSystemClient;
    FJanuaFMXFormManager: TJanuaFMXFormManager;
    FActive: boolean;
    procedure SetLoggedIN(const Value: boolean);
    procedure SetJanuaSystemClient(const Value: TJanuaCustomSystemClient);
    procedure SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);
    procedure SetActive(const Value: boolean);
    { Private declarations }
  public
    procedure Default;
    procedure SetupFormManager;
    procedure GoLogin;
    procedure GoSettings;
  public
    { Public declarations }
    property LoggedIN: boolean read FLoggedIN write SetLoggedIN;
    property JanuaSystemClient: TJanuaCustomSystemClient read FJanuaSystemClient write SetJanuaSystemClient;
    property JanuaFMXFormManager: TJanuaFMXFormManager read FJanuaFMXFormManager write SetJanuaFMXFormManager;
    property Active: boolean read FActive write SetActive;
  end;

implementation

{$R *.fmx}
{ TFrame2 }

procedure TframeFMXLoginMobile.btnLoginClick(Sender: TObject);
begin
  self.FLoggedIN := False;
  if not assigned(FJanuaSystemClient) then
    raise Exception.Create('frmDico33MobileLogin: FJanuaRESTHealthClient not set');
  if self.edLogin.Text = '' then
    ShowMessage('Attenzione non avete inserito la mail')
  else if not Janua.Core.Functions.IsValidEmail(self.edLogin.Text) then
    ShowMessage('Attenzione immessa email errata')
  else
  begin
    FJanuaSystemClient.Login(self.edLogin.Text, self.edPassword.Text);
    if FJanuaSystemClient.IsLoggedIn then
    begin
      self.FLoggedIN := True;
    end
    else
    begin
      ShowMessage('Login Errata reinserite i dati o registratevi');
    end;
  end;
end;

procedure TframeFMXLoginMobile.Button3Click(Sender: TObject);
begin
  self.FJanuaFMXFormManager.VertScrollBox := self.frameFMXRegisterMobile1.VertScrollBox1;
  self.FJanuaFMXFormManager.MainLayout := self.frameFMXRegisterMobile1.Layout1;
  frameFMXRegisterMobile1.GoPassword;
  TabControlLogin.Next(TTAbTransition.Slide);
end;

procedure TframeFMXLoginMobile.ckbPasswordClick(Sender: TObject);
begin
  self.edPassword.Password := self.ckbPassword.IsChecked;
end;

procedure TframeFMXLoginMobile.Default;
begin
  frameFMXRegisterMobile1.Default;
  self.FActive := False;
end;

procedure TframeFMXLoginMobile.SetupFormManager;
begin
  if not assigned(self.FJanuaFMXFormManager) then
    Exit;

  if self.TabControlLogin.ActiveTab = self.TabItemLogin then
  begin
    self.FJanuaFMXFormManager.VertScrollBox := self.VertScrollBox1;
    self.FJanuaFMXFormManager.MainLayout := self.Layout1;
  end
  else if self.TabControlLogin.ActiveTab = self.TabItemRegister then
  begin
    self.frameFMXRegisterMobile1.JanuaFMXFormManager := self.FJanuaFMXFormManager;
    self.frameFMXRegisterMobile1.SetupFormManager;
  end;

end;

procedure TframeFMXLoginMobile.edLoginEnter(Sender: TObject);
begin
  self.Text4.Visible := False;
end;

procedure TframeFMXLoginMobile.frameFMXRegisterMobile1btnProfileClick(Sender: TObject);
begin
  frameFMXRegisterMobile1.btnProfileClick(Sender);

end;

procedure TframeFMXLoginMobile.GoLogin;
begin
  self.Active := True;
  self.Default;
  self.TabControlLogin.First(TTAbTransition.None);
  self.SetupFormManager;
end;

procedure TframeFMXLoginMobile.GoSettings;
begin
  self.Active := True;
  self.Default;
  self.TabControlLogin.Last(TTAbTransition.None);
  self.SetupFormManager;
end;

procedure TframeFMXLoginMobile.SetActive(const Value: boolean);
begin
  if not self.FActive and Value then
  begin
    self.TabControlLogin.First(TTAbTransition.None);
    SetupFormManager;
  end;

  FActive := Value;
end;

procedure TframeFMXLoginMobile.SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);
begin
  FJanuaFMXFormManager := Value;
  self.frameFMXRegisterMobile1.JanuaFMXFormManager := Value;
end;

procedure TframeFMXLoginMobile.SetJanuaSystemClient(const Value: TJanuaCustomSystemClient);
begin
  FJanuaSystemClient := Value;
  self.frameFMXRegisterMobile1.JanuaSystemClient := Value;
end;

procedure TframeFMXLoginMobile.SetLoggedIN(const Value: boolean);
begin
  FLoggedIN := Value;
end;

procedure TframeFMXLoginMobile.TabControlLoginChange(Sender: TObject);
begin
  if self.FActive and assigned(self.FJanuaFMXFormManager) then
  begin
    if self.TabControlLogin.ActiveTab = self.TabItemLogin then
      SetupFormManager
    else
    begin
      self.frameFMXRegisterMobile1.SetupFormManager;
    end;
  end;
end;

end.
