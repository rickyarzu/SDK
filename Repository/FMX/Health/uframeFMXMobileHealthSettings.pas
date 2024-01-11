unit uframeFMXMobileHealthSettings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Janua Project
  Janua.Core.RESTClient.Health, Janua.Core.Types, Janua.FMX.Forms, Janua.FMX.Dialogs,
  // Frames
  uframeFMXRegisterMobile, uframeFMXLoginMobile,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.TMSButton, FMX.TabControl, FMX.Objects, FMX.Layouts, System.ImageList, FMX.ImgList,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TJanuaSettingsIcons = (Help, Password, Info, Settings, LogOut, LogIn, None);
  // none is set to 99 because is out of control.

type
  TframeFMXMobileHealthSettings = class(TFrame)
    // Sub Frames.......................................................................................................
    frameFMXRegisterMobile1: TframeFMXRegisterMobile;
    frameFMXLoginMobile1: TframeFMXLoginMobile;
    // Tabs ............................................................................................................
    Tab21SettingsHome: TTabItem;
    Tab23SettingsPersonal: TTabItem;
    Tab22SettingsHelp: TTabItem;
    Tab24SettingsPrivacy: TTabItem;
    Tab25SettingsLog: TTabItem;
    Tab26LoginFrame: TTabItem;
    Tab27Info: TTabItem;
    // Controls .......................................................................................................
    TabControlSettings: TTabControl;
    TMSFMXButton1: TTMSFMXButton;
    VertScrollBox1: TVertScrollBox;
    txtLog: TText;
    ImageList1: TImageList;
    ListView1: TListView;
    procedure TMSFMXButton1Click(Sender: TObject);
    procedure frameFMXLoginMobile1btnLoginClick(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure frameFMXRegisterMobile1btnProfileClick(Sender: TObject);
  private
    FLog: TStrings;
    FJanuaRESTHealthClient: TJanuaRESTHealthClient;
    FJanuaFMXFormManager: TJanuaFMXFormManager;
    FOnLogOut: TNotifyEvent;
    procedure DoLogOut;
    procedure SetLog(const Value: TStrings);
    procedure SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
    procedure SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);
    procedure SetOnLogOut(const Value: TNotifyEvent);
    { Private declarations }
  public
    { Public declarations }
    procedure Default;
    procedure Back;
    procedure First;
    procedure Next;
    function IsFirst: boolean;
  public // Settings and Login Procedures;
    procedure SetupFormManager;
    procedure GoLogin;
    procedure GoPersonalSettings;
    procedure GoUpdateUser;
    procedure GoLog;
    procedure GoHome;
    procedure GoHelp;
    procedure LogOut;
    procedure goInfo;
    procedure GotItemSelection(AItem: integer);
    procedure DoOnLogOut(const aBool: boolean);
  public
    property Log: TStrings read FLog write SetLog;
    property JanuaRESTHealthClient: TJanuaRESTHealthClient read FJanuaRESTHealthClient write SetJanuaRESTHealthClient;
    property JanuaFMXFormManager: TJanuaFMXFormManager read FJanuaFMXFormManager write SetJanuaFMXFormManager;
    property OnLogOut: TNotifyEvent read FOnLogOut write SetOnLogOut;
  end;

implementation

{$R *.fmx}
{ TframeFMXMobileHealthSettings }

procedure TframeFMXMobileHealthSettings.Back;
begin
  begin
    TabControlSettings.First; // := self.Tab21SettingsHome
  end;
end;

procedure TframeFMXMobileHealthSettings.Default;
var
  vTest: boolean;
begin
  self.TabControlSettings.ActiveTab := self.Tab21SettingsHome;
  self.ListView1.Items.Clear;
  vTest := self.FJanuaRESTHealthClient.IsLoggedIn;
  if vTest then
    vTest := not self.FJanuaRESTHealthClient.IsPublic;

  if not vTest then
  begin
    with ListView1.Items.Add do
    begin
      Text := 'Login';
      // Detail := Format('%d kg of paper', [1000 + Random(1234)]);
      ImageIndex := Ord(TJanuaSettingsIcons.LogIn);
    end;
  end
  else
  begin
    with ListView1.Items.Add do
    begin
      Text := 'LogOut';
      // Detail := Format('%d kg of paper', [1000 + Random(1234)]);
      ImageIndex := Ord(TJanuaSettingsIcons.LogOut);
    end;
    with ListView1.Items.Add do
    begin
      Text := 'Modifica EMail/Password';
      // Detail := Format('%d kg of paper', [1000 + Random(1234)]);
      ImageIndex := Ord(TJanuaSettingsIcons.Password);
    end;
    with ListView1.Items.Add do
    begin
      Text := 'Modifica Dati Personali';
      // Detail := Format('%d kg of paper', [1000 + Random(1234)]);
      ImageIndex := Ord(TJanuaSettingsIcons.Settings);
    end;
  end;

end;

procedure TframeFMXMobileHealthSettings.DoLogOut;
var
  aDialog: Janua.FMX.Dialogs.TJanuaFMXDialog;
begin
  aDialog := Janua.FMX.Dialogs.TJanuaFMXDialog.Create(self);
  try
    aDialog.OnMessageDlgResult := self.DoOnLogOut;
    aDialog.JMessageDlg('Attenzione eseguo il log out utente?');
  finally
    aDialog.DisposeOf;
    aDialog := nil;
  end;

  // self.First;
end;

procedure TframeFMXMobileHealthSettings.First;
begin
  TabControlSettings.First; // := self.Tab21SettingsHome
end;

procedure TframeFMXMobileHealthSettings.frameFMXLoginMobile1btnLoginClick(Sender: TObject);
begin
  frameFMXLoginMobile1.btnLoginClick(Sender);
  if frameFMXLoginMobile1.LoggedIN then
    self.TabControlSettings.First(TTAbTransition.None);

end;

procedure TframeFMXMobileHealthSettings.frameFMXRegisterMobile1btnProfileClick(Sender: TObject);
begin
   self.frameFMXLoginMobile1.frameFMXRegisterMobile1.btnProfileClick(Sender);
end;

procedure TframeFMXMobileHealthSettings.GoHelp;
begin
  self.TabControlSettings.ActiveTab := self.Tab22SettingsHelp;
end;

procedure TframeFMXMobileHealthSettings.GoHome;
begin
  self.TabControlSettings.ActiveTab := self.Tab21SettingsHome;
end;

procedure TframeFMXMobileHealthSettings.goInfo;
begin
  self.TabControlSettings.ActiveTab := self.Tab27Info;
end;

procedure TframeFMXMobileHealthSettings.GoLog;
begin
  self.TabControlSettings.ActiveTab := self.Tab25SettingsLog;
end;

procedure TframeFMXMobileHealthSettings.GoLogin;
begin
  // imposto come visibile il Frame Login
  self.TabControlSettings.ActiveTab := self.Tab26LoginFrame;
  // Mi sposto su Login ....................................
  self.frameFMXLoginMobile1.GoLogin;
end;

procedure TframeFMXMobileHealthSettings.GoPersonalSettings;
begin
  self.frameFMXRegisterMobile1.LoadProfile;
  frameFMXRegisterMobile1.GoPersonal;
  TabControlSettings.Next(TTAbTransition.Slide);

end;

procedure TframeFMXMobileHealthSettings.GotItemSelection(AItem: integer);
var
  aSetting: TJanuaSettingsIcons;
begin
  if Janua.Core.Types.TEnumConvertor<TJanuaSettingsIcons>.TryFromInteger(AItem, aSetting) then
    case aSetting of
      TJanuaSettingsIcons.Help:
        self.GoHelp;
      TJanuaSettingsIcons.Password:
        self.GoUpdateUser;
      TJanuaSettingsIcons.Info:
        self.goInfo;
      TJanuaSettingsIcons.Settings:
        self.GoPersonalSettings;
      TJanuaSettingsIcons.LogOut:
        self.LogOut;
    end;

end;

procedure TframeFMXMobileHealthSettings.GoUpdateUser;
begin
  self.TabControlSettings.ActiveTab := self.Tab23SettingsPersonal;
  self.frameFMXRegisterMobile1.GoPassword;
end;

function TframeFMXMobileHealthSettings.IsFirst: boolean;
begin
  Result := self.TabControlSettings.TabIndex = 0;
end;

procedure TframeFMXMobileHealthSettings.ListView1ItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  self.GotItemSelection(AItem.ImageIndex);
end;

procedure TframeFMXMobileHealthSettings.LogOut;
begin
  self.DoLogOut
end;

procedure TframeFMXMobileHealthSettings.Next;
begin
  // Actually do Nothing at all ......................................................................................
end;

procedure TframeFMXMobileHealthSettings.DoOnLogOut(const aBool: boolean);
begin
  if aBool then
  begin
    self.JanuaRESTHealthClient.LogOut;
    ShowMessage('Eseguito il LogOut e disconessa questa app dal profilo utente');
    if Assigned(self.FOnLogOut) then
      self.FOnLogOut(self);
  end;
end;

procedure TframeFMXMobileHealthSettings.SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);
begin
  FJanuaFMXFormManager := Value;
  frameFMXRegisterMobile1.JanuaFMXFormManager := Value;
  frameFMXLoginMobile1.JanuaFMXFormManager := Value;
end;

procedure TframeFMXMobileHealthSettings.SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
begin
  FJanuaRESTHealthClient := Value;
  self.frameFMXRegisterMobile1.JanuaSystemClient := self.FJanuaRESTHealthClient;
  self.frameFMXLoginMobile1.JanuaSystemClient := self.FJanuaRESTHealthClient;
end;

procedure TframeFMXMobileHealthSettings.SetLog(const Value: TStrings);
begin
  FLog := Value;
end;

procedure TframeFMXMobileHealthSettings.SetOnLogOut(const Value: TNotifyEvent);
begin
  FOnLogOut := Value;
end;

procedure TframeFMXMobileHealthSettings.SetupFormManager;
begin

end;

procedure TframeFMXMobileHealthSettings.TMSFMXButton1Click(Sender: TObject);
begin
  self.TabControlSettings.ActiveTab := self.Tab25SettingsLog;
  txtLog.Text := self.FLog.Text;
end;

end.
