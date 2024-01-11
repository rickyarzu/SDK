unit Janua.Components.Dialogs;

interface

uses System.Classes, System.UITypes, System.SysUtils,
  Janua.Core.Types, Janua.Forms.Types, Janua.Controls.Dialogs.Intf, Janua.Forms.TextEditor.Intf,
  Janua.Core.Classes;

type
  TJanuaDialogLogin = class(TComponent)
  private
    // FJanuaLoginDialog: IJanuaLoginDialog;
    function GetSelectServer: boolean;
    procedure SetSelectServer(const Value: boolean);
  protected
    function GetPassword: string;
    function GetUsername: string;
    function GetLogoImage: TJanuaBlob;
    procedure SetLogoImage(const Value: TJanuaBlob);
    function GetSelectedServer: string;
    function GetServerList: TStrings;
    function GetSetServer: boolean;
    function GetLoginPrompt: string;
    function GetJanuaServerSession: TJanuaServerSession;
    function GetShowServerButton: boolean;
    function GetShowCancelButton: boolean;
    procedure SetPassword(const Value: string);
    procedure SetUsername(const Value: string);
    procedure SetSelectedServer(const Value: string);
    procedure SetServerList(const Value: TStrings);
    procedure SetSetServer(const Value: boolean);
    procedure SetJanuaServerSession(const Value: TJanuaServerSession);
    procedure SetShowServerButton(const Value: boolean);
    procedure SetShowCancelButton(const Value: boolean);
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Username: string read GetUsername write SetUsername;
    property Password: string read GetPassword write SetPassword;
    property LogoImage: TJanuaBlob read GetLogoImage write SetLogoImage;
    property ServerList: TStrings read GetServerList write SetServerList;
    property SelectedServer: string read GetSelectedServer write SetSelectedServer;
    property SelectServer: boolean read GetSelectServer write SetSelectServer;
  end;

type
  TJanuaDialogText = class(TJanuaCoreComponent)
  private
    FDialogText: IJanuaDialogText;
    FText: String;
  protected
    function GetCaption: String;
    function GetDisplayText: String;
    function GetCharCase: TEditCharCase;
    procedure SetCaption(const Value: String);
    procedure SetDisplayText(const Value: String);
    procedure SetCharCase(const Value: TEditCharCase);
    function GetText: string;
    procedure SetText(const Value: string);
  public
    function InputText(sTitle: string; sCaption: string; sDefault: string = ''): string;
    function Execute: boolean;
  public
    Constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property Caption: String read GetCaption write SetCaption;
    property Text: String read FText write SetText;
    property DisplayText: String read GetDisplayText write SetDisplayText;
    property CharCase: TEditCharCase read GetCharCase write SetCharCase;
  end;

type
  TJanuaInputText = class(TJanuaDialogText)

  end;

type
  TJanuaDialogInteger = class(TJanuaCoreComponent)
  private
    FNumber: integer;
    FCaption: string;
    FDisplayText: string;
    procedure SetNumber(const Value: integer);
    procedure SetCaption(const Value: string);
    procedure SetDisplayText(const Value: string);
    { Private declarations }
  protected
    { Protected declarations }
  public
    Constructor Create(AOwner: TComponent); override;
    function Execute: boolean;
  published
    { Published declarations }
    property Number: integer read FNumber write SetNumber;
    property Caption: string read FCaption write SetCaption;
    property DisplayText: string read FDisplayText write SetDisplayText;
  end;

type
  TJanuaDialogDate = class(TComponent)
  private
    FDate: TDateTime;
    FDisplayText: string;
    FCaption: string;
    FDialogDate: IJanuaDialogDate;
    procedure SetDate(const Value: TDateTime);
    procedure SetDisplayText(const Value: string);
    procedure SetCaption(const Value: string);
    function GetDialogDate: IJanuaDialogDate;
    procedure CreateDialogDate;
    { Private declarations }
  protected
    { Protected declarations }
    // FDialogDate: IJanuaDialogDate
    property DialogDate: IJanuaDialogDate read GetDialogDate;
  public
    { Public declarations }
    function Execute: boolean;
  published
    property Date: TDateTime read FDate write SetDate;
    property DisplayText: string read FDisplayText write SetDisplayText;
    property Caption: string read FCaption write SetCaption;
    { Published declarations }
  end;

type
  TJanuaDialog = class(TComponent)
    constructor Create(AOwner: TComponent); override;
  private
    FDialog: IJanuaDialog;
  strict protected
    function GetDialog: IJanuaDialog;
  protected
    property Dialog: IJanuaDialog read GetDialog;
    procedure SetSelectedFile(const Value: TFileName);
    procedure SetDialogType(const Value: TJanuaDialogType);
    function GetDialogType: TJanuaDialogType;
    function GetSelectedFile: TFileName;
  public
    procedure JShowMessage(smessage: string; sExtra: string = ''; sHelp: string = '');
    procedure JShowWarning(smessage: string; sExtra: string = ''; sHelp: string = '');
    procedure JShowError(smessage: string; sExtra: string = ''; sHelp: string = '');
    function JMessageDlg(smessage: string; const sExtra: string = ''): boolean;
    function JMessageDlgExt(smessage, button1, button2: string): boolean;
    function JOpenPicture: boolean; overload;
    function JOpenPicture(aDirectory: string): boolean; overload;
    // System Error mostra errori di sistema ed indica True se l'utente decide di Uscire.
    function JShowSystemError(sTitle, sContent, sExtra: string): boolean;
    function SelectDirectory(const aCaption, aRoot: string): boolean;
    function SelectMultiString(const Caption: string; const a: array of string; const b: array of integer): integer;
  published
    property DialogType: TJanuaDialogType read GetDialogType write SetDialogType;
    property SelectedFile: TFileName read GetSelectedFile write SetSelectedFile;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework, Janua.Mock.Dialogs;

{ TJanuaDialogLogin }

constructor TJanuaDialogLogin.Create(AOwner: TComponent);
begin
  inherited;

end;

function TJanuaDialogLogin.GetJanuaServerSession: TJanuaServerSession;
begin

end;

function TJanuaDialogLogin.GetLoginPrompt: string;
begin

end;

function TJanuaDialogLogin.GetLogoImage: TJanuaBlob;
begin

end;

function TJanuaDialogLogin.GetPassword: string;
begin

end;

function TJanuaDialogLogin.GetSelectedServer: string;
begin

end;

function TJanuaDialogLogin.GetSelectServer: boolean;
begin
  Result := False; { TODO : Implement TJanuaDialogLogin.GetSelectedServer }
end;

function TJanuaDialogLogin.GetServerList: TStrings;
begin
  Result := nil; { TODO : Implement TJanuaDialogLogin.GetServerList }
end;

function TJanuaDialogLogin.GetSetServer: boolean;
begin
  Result := False; { TODO : Implement TJanuaDialogLogin.GetSetServer }
end;

function TJanuaDialogLogin.GetShowCancelButton: boolean;
begin
  Result := False; { TODO : Implement TJanuaDialogLogin.GetShowCancelButton }
end;

function TJanuaDialogLogin.GetShowServerButton: boolean;
begin
  Result := False; { TODO : Implement TJanuaDialogLogin.GetShowServerButton }
end;

function TJanuaDialogLogin.GetUsername: string;
begin
  Result := ''; { TODO : Implement TJanuaDialogLogin.GetUsername }
end;

procedure TJanuaDialogLogin.SetJanuaServerSession(const Value: TJanuaServerSession);
begin

end;

procedure TJanuaDialogLogin.SetLogoImage(const Value: TJanuaBlob);
begin

end;

procedure TJanuaDialogLogin.SetPassword(const Value: string);
begin

end;

procedure TJanuaDialogLogin.SetSelectedServer(const Value: string);
begin

end;

procedure TJanuaDialogLogin.SetSelectServer(const Value: boolean);
begin

end;

procedure TJanuaDialogLogin.SetServerList(const Value: TStrings);
begin

end;

procedure TJanuaDialogLogin.SetSetServer(const Value: boolean);
begin

end;

procedure TJanuaDialogLogin.SetShowCancelButton(const Value: boolean);
begin

end;

procedure TJanuaDialogLogin.SetShowServerButton(const Value: boolean);
begin

end;

procedure TJanuaDialogLogin.SetUsername(const Value: string);
begin

end;

{ TJanuaDialogText }

constructor TJanuaDialogText.Create(AOwner: TComponent);
begin
  inherited;
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaDialogText, FDialogText) then
    raise Exception.Create('TJanuaDialogText.Create IJanuaDialogText not defined');
end;

function TJanuaDialogText.Execute: boolean;
begin
  Result := FDialogText.Execute;
end;

function TJanuaDialogText.GetCaption: String;
begin
  if Assigned(FDialogText) then
    Result := FDialogText.GetCaption
end;

function TJanuaDialogText.GetCharCase: TEditCharCase;
begin
  Result := TEditCharCase.ecNormal;

  if Assigned(FDialogText) then
    Result := FDialogText.GetCharCase;
end;

function TJanuaDialogText.GetDisplayText: String;
begin
  Result := '';

  if Assigned(FDialogText) then
    Result := FDialogText.DisplayText
end;

function TJanuaDialogText.GetText: string;
begin
  if Assigned(FDialogText) then
    Result := FDialogText.Text
end;

function TJanuaDialogText.InputText(sTitle, sCaption, sDefault: string): string;
begin

  (*
    var
    dlgInput: TdlgInputText;
    begin
    dlgInput := TdlgInputText.Create(nil);
    try
    dlgInput.Caption := self.FCaption;
    dlgInput.Label1.Caption := self.FDisplayText;
    dlgInput.Edit1.Text := self.FText;
    dlgInput.Edit1.CharCase := self.FCharCase;
    dlgInput.ShowModal;
    Result := dlgInput.ModalResult = mrOK;
    if Result then
    self.FText := dlgInput.Edit1.Text;
    finally
    dlgInput.Free;
  *)
  if Assigned(FDialogText) then
    Result := FDialogText.InputText(sTitle, sCaption, sDefault)
end;

procedure TJanuaDialogText.SetCaption(const Value: String);
begin
  FDialogText.Caption := Value;
end;

procedure TJanuaDialogText.SetCharCase(const Value: TEditCharCase);
begin
  FDialogText.CharCase := Value;
end;

procedure TJanuaDialogText.SetDisplayText(const Value: String);
begin
  FDialogText.DisplayText := Value
end;

procedure TJanuaDialogText.SetText(const Value: string);
begin
  FDialogText.Text := Value
end;

{ TJanuaDialogInteger }

constructor TJanuaDialogInteger.Create(AOwner: TComponent);
begin
  inherited;

end;

function TJanuaDialogInteger.Execute: boolean;
begin
  Result := False; { TODO : Implement TJanuaDialogInteger.Execute }
end;

procedure TJanuaDialogInteger.SetCaption(const Value: string);
begin
  FCaption := Value;
end;

procedure TJanuaDialogInteger.SetDisplayText(const Value: string);
begin
  FDisplayText := Value;
end;

procedure TJanuaDialogInteger.SetNumber(const Value: integer);
begin
  FNumber := Value;
end;

{ TJanuaDialogDate }

function TJanuaDialogDate.Execute: boolean;
begin
  CreateDialogDate;
  FDialogDate.Date := self.FDate;
  FDialogDate.Caption := self.Caption;
  FDialogDate.DisplayText := self.DisplayText;
  Result := FDialogDate.Execute;
end;

procedure TJanuaDialogDate.CreateDialogDate;
begin
  // FDialogDate: IJanuaDialogDate
  if not Assigned(FDialogDate) and not TJanuaApplicationFactory.TryGetInterface(IJanuaDialogDate, FDialogDate) then
    raise Exception.Create('TJanuaDialogDate.GetDialogDate IJanuaDialogDate not set');
end;

function TJanuaDialogDate.GetDialogDate: IJanuaDialogDate;
begin
  CreateDialogDate;
  // this is like a 'lazy' loading
  Result := FDialogDate;
end;

procedure TJanuaDialogDate.SetCaption(const Value: string);
begin
  FCaption := Value;
end;

procedure TJanuaDialogDate.SetDate(const Value: TDateTime);
begin
  FDate := Value;
end;

procedure TJanuaDialogDate.SetDisplayText(const Value: string);
begin
  FDisplayText := Value;
end;

{ TJanuaDialog }

constructor TJanuaDialog.Create(AOwner: TComponent);

begin
  inherited;

end;

function TJanuaDialog.GetDialog: IJanuaDialog;
begin
  if not Assigned(FDialog) and not TJanuaApplicationFactory.TryGetInterface(IJanuaDialog, FDialog) then
    { const aProcName, aError: string; const aClass: TObject = nil; }
    CreateException('GetDialog', ' IJanuaDialog not set', self);
  Result := FDialog
end;

function TJanuaDialog.GetDialogType: TJanuaDialogType;
begin
  Result := Dialog.DialogType;
end;

function TJanuaDialog.GetSelectedFile: TFileName;
begin
  Result := Dialog.SelectedFile;
end;

function TJanuaDialog.JMessageDlg(smessage: string; const sExtra: string): boolean;
begin
  Result := self.Dialog.JMessageDlg(smessage, sExtra);
end;

function TJanuaDialog.JMessageDlgExt(smessage, button1, button2: string): boolean;
begin
  Result := self.Dialog.JMessageDlgExt(smessage, button1, button2);
end;

function TJanuaDialog.JOpenPicture: boolean;
begin
  Result := Dialog.JOpenPicture
end;

function TJanuaDialog.JOpenPicture(aDirectory: string): boolean;
begin
  Result := Dialog.JOpenPicture(aDirectory)
end;

procedure TJanuaDialog.JShowError(smessage, sExtra, sHelp: string);
begin
  self.Dialog.JShowError(smessage, sExtra, sHelp);
end;

procedure TJanuaDialog.JShowMessage(smessage, sExtra, sHelp: string);
begin
  self.Dialog.JShowMessage(smessage, sExtra, sHelp);
end;

function TJanuaDialog.JShowSystemError(sTitle, sContent, sExtra: string): boolean;
begin
  Result := self.Dialog.JShowSystemError(sTitle, sContent, sExtra);
end;

procedure TJanuaDialog.JShowWarning(smessage, sExtra, sHelp: string);
begin
  self.Dialog.JShowWarning(smessage, sExtra, sHelp);
end;

function TJanuaDialog.SelectDirectory(const aCaption, aRoot: string): boolean;
begin
  Result := Dialog.SelectDirectory(aCaption, aRoot);
end;

function TJanuaDialog.SelectMultiString(const Caption: string; const a: array of string;
  const b: array of integer): integer;
begin
  Result := self.Dialog.SelectMultiString(Caption, a, b);
end;

procedure TJanuaDialog.SetDialogType(const Value: TJanuaDialogType);
begin
  Dialog.DialogType := Value
end;

procedure TJanuaDialog.SetSelectedFile(const Value: TFileName);
begin
  Dialog.SelectedFile := Value
end;

initialization

// TJanuaMockDialog = class(TJanuaCustomDialog, IJanuaDialog)
try
  TJanuaApplicationFactory.RegisterClass(IJanuaDialog, TJanuaMockDialog);
except
  on e: Exception do
    raise Exception.Create('RegisterClass(IJanuaDialog)' + e.Message);
end;

end.
