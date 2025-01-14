unit Janua.Controls.Dialogs.Impl;

interface

uses System.UITypes, System.SysUtils, System.Classes,
  // JanuaProject
  Janua.Controls.Dialogs.Intf, Janua.Core.Classes, Janua.Core.Types, Janua.Core.DB.Intf;

type
  TJanuaInterfacedDialog = class(TJanuaInterfacedObject)
  private
    FTitle: string;
    FText: string;
  protected
    function GetTitle: string;
    function GetText: string;
    procedure SetText(const Value: string);
    procedure SetTitle(const Value: string);
  public
    function Execute: boolean; virtual; abstract;
  public
    property Title: string read GetTitle write SetTitle;
    property Text: string read GetText write SetText;
  end;

  /// <summary> Template Class for IJanuaDialog Implementations </summary>
  TJanuaCustomDialog = class(TJanuaInterfacedDialog, IJanuaDialog)
  private
    FSelectedFile: TFileName;
    FDialogType: TJanuaDialogType;
  protected
    function GetSelectedFile: TFileName;
    procedure SetSelectedFile(const Value: TFileName);
    function GetDialogType: TJanuaDialogType;
    procedure SetDialogType(const Value: TJanuaDialogType);
    { Protected declarations }
  public
    { Public declarations }
    procedure JShowMessage(smessage: string; sExtra: string = ''; sHelp: string = ''); virtual; abstract;
    procedure JShowWarning(smessage: string; sExtra: string = ''; sHelp: string = ''); virtual; abstract;
    procedure JShowError(smessage: string; sExtra: string = ''; sHelp: string = ''); virtual; abstract;
    function JMessageDlg(smessage: string; const sExtra: string = ''): boolean; virtual; abstract;
    function JMessageDlgExt(smessage, button1, button2: string): boolean; virtual; abstract;
    function JOpenPicture: boolean; overload; virtual; abstract;
    function JOpenPicture(aDirectory: string): boolean; overload; virtual; abstract;
    // System Error mostra errori di sistema ed indica True se l'utente decide di Uscire.
    function JShowSystemError(sTitle, sContent, sExtra: string): boolean; virtual; abstract;
    function SelectDirectory(const aCaption, aRoot: string): boolean; virtual;
    function SelectMultiString(const Caption: string; const a: array of string; const b: array of integer)
      : integer; virtual; abstract;
  public
    { Published declarations }
    property DialogType: TJanuaDialogType read FDialogType write SetDialogType;
    property SelectedFile: TFileName read FSelectedFile write SetSelectedFile;
  end;

type
  TJanuaInterfacedDialogLogin = class(TJanuaInterfacedDialog, IJanuaLoginDialog)
  private
    FInternalDialog: IJanuaLoginDialogForm;
  private
    FSelectedServer: string;
    FSelectServer: boolean;
    FServerList: TStrings;
    FSetServer: boolean;
    FJanuaServerSession: TJanuaServerSession;
    FShowServerButton: boolean;
    FShowCancelButton: boolean;
    FLogoImage: TJanuaBlob;
  protected
    function GetPassword: string;
    function GetUsername: string;
    function GetLogoImage: TJanuaBlob;
    procedure SetLogoImage(const Value: TJanuaBlob);
    function GetSelectedServer: string;
    function GetSelectServer: boolean;
    function GetServerList: TStrings;
    function GetSetServer: boolean;
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
    procedure SetSelectServer(const Value: boolean);
  strict protected
    FPassword: string;
    FUsername: string;
  public
    constructor Create; override;
    destructor Destroy; override;
    function Execute: boolean; override;
  end;

type
  TJanuaInterfacedDialogText = class(TJanuaInterfacedDialog, IJanuaDialogText)
  private
    FCaption: String;
    FDisplayText: String;
    FCharCase: TEditCharCase;
  protected
    function GetCaption: String;
    function GetDisplayText: String;
    function GetCharCase: TEditCharCase;
    procedure SetCaption(const Value: String);
    procedure SetDisplayText(const Value: String);
    procedure SetCharCase(const Value: TEditCharCase);
  public
    function InputText(const sTitle, sCaption: string; const sDefault: string = ''): string; virtual;
      abstract;
    function Execute: boolean; override;
  end;

type
  TJanuaInterfacedDialogServer = class(TJanuaInterfacedDialog)
  private
    FJanuaServerSession: TJanuaServerSession;
  protected
    function GetJanuaServerSession: TJanuaServerSession;
    procedure SetJanuaServerSession(const Value: TJanuaServerSession);
  public
    function Execute: boolean; override;
    // published
    property JanuaServerSession: TJanuaServerSession read FJanuaServerSession write SetJanuaServerSession;
  end;

type
  TJanuaInterfacedDialogInteger = class(TJanuaInterfacedDialog, IJanuaDialogInteger)
  private
    { Private declarations }
    FNumber: Int64;
  protected
    { Protected declarations }
    function GetNumber: Int64;
    procedure SetNumber(const Value: Int64);
  public
    function InputInteger(const InputText: string; const aDefault: integer = 0): integer;
    function Execute: boolean; override;
  end;

Type
  TJanuaCustomDBServerDialog = class(TJanuaInterfacedDialog)
  private
    FJanuaDBConnection: IJanuaDBConnection;
    FLastErrorMessage: string;
  protected
    procedure SetServerRecordConf(const Value: TJanuaServerRecordConf);
    function GetServerRecordConf: TJanuaServerRecordConf;
    procedure SetJanuaDBConnection(const Value: IJanuaDBConnection);
    function GetJanuaDBConnection: IJanuaDBConnection;
    function GetLastErrorMessage: string;
  public
    property JanuaDBConnection: IJanuaDBConnection read GetJanuaDBConnection write SetJanuaDBConnection;
    property ServerConf: TJanuaServerRecordConf read GetServerRecordConf write SetServerRecordConf;
  end;

type
  TJanuaCustomDialogSchemaSelector = class(TJanuaInterfacedDialog)
  private
    FJanuaServerSession: TJanuaServerSession;
    procedure SetSelectedSchema(const Value: TJanuaRecordSchema);
    procedure SetJanuaServerSession(const Value: TJanuaServerSession);
  protected
    FSelectedSchema: TJanuaRecordSchema;
  public
    function SelectSchema(dID: integer): boolean; virtual; abstract;
    property SelectedSchema: TJanuaRecordSchema read FSelectedSchema write SetSelectedSchema;
    // published
    property JanuaServerSession: TJanuaServerSession read FJanuaServerSession write SetJanuaServerSession;
  end;

Type
  TJanuaInterfacedDialogDate = class(TJanuaInterfacedDialog, IJanuaDialogDate)
  public
    constructor Create; override;
  private
    FDate: TDateTime;
    FUseDateTime: boolean;
    procedure SetUseDateTime(const Value: boolean);
  protected
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
  public
    function Execute: boolean; override;
    property UseDateTime: boolean read FUseDateTime write SetUseDateTime;
  end;

type
  TJanuaCustomOpenDialog = class(TJanuaInterfacedDialog, IJanuaOpenFileDialog)
  private
    FFileName: string;
    FInitialDir: string;
    function GetFileExtension: string;
    function GetFilename: String;
    function GetInitialDir: string;
    procedure SetFilename(const Value: String);
    procedure SetInitialDir(const Value: string);
    function GetFileNameNoExt: string;
    function GetDirectoryName: string;
  public
    function OpenFile: boolean; virtual; abstract;
    function OpenDirectory(const aInitialDir: string = ''): string; virtual; abstract;
  public
    property Filename: String read GetFilename write SetFilename;
    property FileNameNoExt: string read GetFileNameNoExt;
    property InitialDir: string read GetInitialDir write SetInitialDir;
    property FileExtension: string read GetFileExtension;
  end;

implementation

uses Janua.Application.Framework, System.Math, System.IOUtils;

{ TJanuaCustomDialog }

function TJanuaCustomDialog.GetDialogType: TJanuaDialogType;
begin
  Result := FDialogType;
end;

function TJanuaCustomDialog.GetSelectedFile: TFileName;
begin
  Result := self.FSelectedFile;
end;

function TJanuaCustomDialog.SelectDirectory(const aCaption, aRoot: string): boolean;
var
  aFolder: string;
begin
  Result := TJanuaCoreOS.SelectFolder(aFolder, aCaption, 'Ok');
  if Result then
    FSelectedFile := aFolder;
end;

procedure TJanuaCustomDialog.SetDialogType(const Value: TJanuaDialogType);
begin
  FDialogType := Value;
end;

procedure TJanuaCustomDialog.SetSelectedFile(const Value: TFileName);
begin
  if Value <> '' then
    if not FileExists(Value) then
      raise Exception.Create('Errore selezionato un file inesistente');
  FSelectedFile := Value;
end;

{ TJanuaInterfacedDialog }

function TJanuaInterfacedDialog.GetText: string;
begin
  Result := self.FText
end;

function TJanuaInterfacedDialog.GetTitle: string;
begin
  Result := self.FTitle
end;

procedure TJanuaInterfacedDialog.SetText(const Value: string);
begin
  FText := Value;
end;

procedure TJanuaInterfacedDialog.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

{ TJanuaInterfacedDialogLogin }

constructor TJanuaInterfacedDialogLogin.Create;
begin
  inherited;
  FServerList := TStringList.Create;
end;

destructor TJanuaInterfacedDialogLogin.Destroy;
begin
  FServerList.Free;
  inherited;
end;

function TJanuaInterfacedDialogLogin.Execute: boolean;
var
  LDialogLogin: IJanuaLoginDialog;
begin
  inherited;
  Result := False;
  if TJanuaApplicationFactory.TryGetComponent(IJanuaLoginDialogForm, nil, FInternalDialog) then
    try
      if Supports(FInternalDialog, IJanuaLoginDialog, LDialogLogin) then
      begin
        LDialogLogin.LogoImage := FLogoImage;
        LDialogLogin.Username := FUsername;
        LDialogLogin.Password := FPassword;
        LDialogLogin.ServerList := self.FServerList;
        LDialogLogin.Title := self.GetTitle;
        LDialogLogin.Text := self.GetText;
        LDialogLogin.SelectServer := self.FSelectServer;
        LDialogLogin.SelectedServer := self.FSelectedServer;
        Result := LDialogLogin.Execute;
        if Result then
        begin
          FUsername := LDialogLogin.Username;
          FPassword := LDialogLogin.Password;
          FSelectedServer := LDialogLogin.SelectedServer;
        end;
      end;
    finally
      FInternalDialog.Component.Free
    end;
end;

function TJanuaInterfacedDialogLogin.GetJanuaServerSession: TJanuaServerSession;
begin
  Result := self.FJanuaServerSession
end;

function TJanuaInterfacedDialogLogin.GetLogoImage: TJanuaBlob;
begin
  Result := FLogoImage
end;

function TJanuaInterfacedDialogLogin.GetPassword: string;
begin
  Result := FPassword;
end;

function TJanuaInterfacedDialogLogin.GetSelectedServer: string;
begin
  Result := FSelectedServer;
end;

function TJanuaInterfacedDialogLogin.GetSelectServer: boolean;
begin
  Result := self.FSelectServer
end;

function TJanuaInterfacedDialogLogin.GetServerList: TStrings;
begin
  Result := self.FServerList
end;

function TJanuaInterfacedDialogLogin.GetSetServer: boolean;
begin
  Result := self.FSetServer
end;

function TJanuaInterfacedDialogLogin.GetShowCancelButton: boolean;
begin
  Result := self.FShowCancelButton
end;

function TJanuaInterfacedDialogLogin.GetShowServerButton: boolean;
begin
  Result := self.FShowServerButton
end;

function TJanuaInterfacedDialogLogin.GetUsername: string;
begin
  Result := self.FUsername
end;

procedure TJanuaInterfacedDialogLogin.SetJanuaServerSession(const Value: TJanuaServerSession);
begin
  FJanuaServerSession := Value;
end;

procedure TJanuaInterfacedDialogLogin.SetLogoImage(const Value: TJanuaBlob);
begin
  FLogoImage := Value;
end;

procedure TJanuaInterfacedDialogLogin.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TJanuaInterfacedDialogLogin.SetSelectedServer(const Value: string);
begin
  FSelectedServer := Value;
end;

procedure TJanuaInterfacedDialogLogin.SetSelectServer(const Value: boolean);
begin
  self.FSelectServer := Value
end;

procedure TJanuaInterfacedDialogLogin.SetServerList(const Value: TStrings);
begin
  FServerList.Assign(Value);
end;

procedure TJanuaInterfacedDialogLogin.SetSetServer(const Value: boolean);
begin
  FSetServer := Value;
end;

procedure TJanuaInterfacedDialogLogin.SetShowCancelButton(const Value: boolean);
begin
  FShowCancelButton := Value;
end;

procedure TJanuaInterfacedDialogLogin.SetShowServerButton(const Value: boolean);
begin
  FShowServerButton := Value;
end;

procedure TJanuaInterfacedDialogLogin.SetUsername(const Value: string);
begin
  FUsername := Value;
end;

{ TJanuaInterfacedDialogText }

function TJanuaInterfacedDialogText.Execute: boolean;
begin
  Result := False; // implementare Dialog Text usando le interfacce
  { TODO : Here goes the code fo Show the Text Input Dialog }
end;

function TJanuaInterfacedDialogText.GetCaption: String;
begin
  Result := FCaption
end;

function TJanuaInterfacedDialogText.GetCharCase: TEditCharCase;
begin
  Result := FCharCase
end;

function TJanuaInterfacedDialogText.GetDisplayText: String;
begin
  Result := FDisplayText
end;

procedure TJanuaInterfacedDialogText.SetCaption(const Value: String);
begin
  FCaption := Value;
end;

procedure TJanuaInterfacedDialogText.SetCharCase(const Value: TEditCharCase);
begin
  FCharCase := Value;
end;

procedure TJanuaInterfacedDialogText.SetDisplayText(const Value: String);
begin
  FDisplayText := Value;
end;

{ TJanuaInterfacedDialogInteger }

function TJanuaInterfacedDialogInteger.Execute: boolean;
var
  a: IJanuaDlgIntegerForm; // TJanuaDialogInteger;
begin
  // a := TJanuaDialogInteger.Create(nil);
  if TJanuaApplicationFactory.TryGetComponent(IJanuaDlgIntegerForm, nil, a) then
    try
      a.Caption := GetTitle;
      a.DisplayText := GetText;
      a.Number := GetNumber;
      Result := a.Execute;
      if Result then
        FNumber := a.Number
      else
        FNumber := -1;
    finally
      a.Component.Free;
    end
  else
    raise Exception.Create('TJanuaDialogInteger.Execute IJanuaLoginDialogIntegerForm not set');

  {
    // Original Procedure 'Framework-Based'
    function TJanuaDialogInteger.Execute: boolean;
    var
    dlgInput: TDlgInputNumber;
    begin
    dlgInput := TDlgInputNumber.Create(nil);
    try
    dlgInput.Caption := Self.FCaption;
    dlgInput.FDisplayText:= Self.FDisplayText;
    dlgInput.Value := Self.FNumber;
    dlgInput.ShowModal;
    Result := dlgInput.ModalResult = mrOK;
    if Result then
    Self.FNumber := dlgInput.Value;
    finally
    dlgInput.Free;
    end;
    end;
  }

end;

function TJanuaInterfacedDialogInteger.GetNumber: Int64;
begin
  Result := FNumber
end;

function TJanuaInterfacedDialogInteger.InputInteger(const InputText: string; const aDefault: integer)
  : integer;
begin
  SetText(InputText);
  SetNumber(aDefault);
  Result := IfThen(Execute, GetNumber, aDefault);
end;

procedure TJanuaInterfacedDialogInteger.SetNumber(const Value: Int64);
begin
  FNumber := Value;
end;

{ TJanuaCustomDBServerDialog }

function TJanuaCustomDBServerDialog.GetJanuaDBConnection: IJanuaDBConnection;
begin
  Result := FJanuaDBConnection
end;

function TJanuaCustomDBServerDialog.GetLastErrorMessage: string;
begin
  Result := self.FLastErrorMessage;
end;

function TJanuaCustomDBServerDialog.GetServerRecordConf: TJanuaServerRecordConf;
begin
  Result := FJanuaDBConnection.ServerConf
end;

procedure TJanuaCustomDBServerDialog.SetJanuaDBConnection(const Value: IJanuaDBConnection);
begin
  FJanuaDBConnection := Value;
end;

procedure TJanuaCustomDBServerDialog.SetServerRecordConf(const Value: TJanuaServerRecordConf);
begin
  FJanuaDBConnection.ServerConf := Value;
end;

{ TJanuaInterfacedDialogDate }

constructor TJanuaInterfacedDialogDate.Create;
begin
  inherited;
  FUseDateTime := False;
end;

function TJanuaInterfacedDialogDate.Execute: boolean;
var
  vdlgInput: IJanuadlgInputDate;
begin
  Result := False;

  if FUseDateTime then
    Result := TJanuaApplicationFactory.TryGetInterface(IJanuadlgInputDateTime, vdlgInput)
  else
    Result := TJanuaApplicationFactory.TryGetInterface(IJanuadlgInputDate, vdlgInput);

  if Result then
    // TdlgInputDate.Create(nil);
    try
      vdlgInput.Text := GetText;
      vdlgInput.Caption := GetTitle;
      if FDate <= 1 then
        FDate := Now();
      vdlgInput.Date := FDate;
      Result := vdlgInput.Execute;
      if Result then
        FDate := vdlgInput.Date
    finally
      vdlgInput.Component.Free;
    end
  else
    raise Exception.Create('TJanuaInterfacedDialogDate.Execute IdlgInputDate not set');
end;

function TJanuaInterfacedDialogDate.GetDate: TDateTime;
begin
  Result := self.FDate
end;

procedure TJanuaInterfacedDialogDate.SetDate(const Value: TDateTime);
begin
  self.FDate := Value
end;

procedure TJanuaInterfacedDialogDate.SetUseDateTime(const Value: boolean);
begin
  FUseDateTime := Value;
end;

{ TJanuaInterfacedDialogServer }

function TJanuaInterfacedDialogServer.Execute: boolean;
begin
  Result := False;
  { TODO : Here goes the code fo Show the Server Selection Dialog }
end;

function TJanuaInterfacedDialogServer.GetJanuaServerSession: TJanuaServerSession;
begin
  Result := FJanuaServerSession
end;

procedure TJanuaInterfacedDialogServer.SetJanuaServerSession(const Value: TJanuaServerSession);
begin
  FJanuaServerSession := Value;
end;

{ TJanuaCustomSchemaSelector }

procedure TJanuaCustomDialogSchemaSelector.SetJanuaServerSession(const Value: TJanuaServerSession);
begin
  FJanuaServerSession := Value;
end;

procedure TJanuaCustomDialogSchemaSelector.SetSelectedSchema(const Value: TJanuaRecordSchema);
begin
  FSelectedSchema := Value;
end;

{ TJanuaCustomOpenDialog }

function TJanuaCustomOpenDialog.GetDirectoryName: string;
begin
  Result := TPath.GetDirectoryName(FFileName);
end;

function TJanuaCustomOpenDialog.GetFileExtension: string;
begin
  Result := TPath.GetExtension(FFileName);
end;

function TJanuaCustomOpenDialog.GetFilename: String;
begin
  Result := FFileName
end;

function TJanuaCustomOpenDialog.GetFileNameNoExt: string;
begin
  Result := TPath.GetFileNameWithoutExtension(FFileName);
end;

function TJanuaCustomOpenDialog.GetInitialDir: string;
begin
  Result := FInitialDir
end;

procedure TJanuaCustomOpenDialog.SetFilename(const Value: String);
begin
  FFileName := Value
end;

procedure TJanuaCustomOpenDialog.SetInitialDir(const Value: string);
begin
  FInitialDir := Value;
end;

initialization

finalization

end.
