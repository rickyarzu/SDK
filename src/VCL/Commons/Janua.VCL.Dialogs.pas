unit Janua.VCL.Dialogs;

interface

uses
  // System
  System.SysUtils, System.Classes,
  // VCL
  VCL.Imaging.pngimage, VCL.ExtCtrls, VCL.Controls, VCL.Forms, VCL.StdCtrls, VCL.Graphics, VCL.ExtDlgs,
  // JANUA
  Janua.Controls.Dialogs.Intf, Janua.Controls.Dialogs.Impl, Janua.Core.Classes, Janua.Core.CustomControls;
// JanuaVCL
(*
  Janua.VCL.dlgInputNumber, Janua.VCL.dlgServer, Janua.TMS.dlgLogin, Janua.VCL.dlgInputFloat,
  Janua.VCL.dlgInputText, Janua.VCL.dlgInputDate
*)

(*
  type
  TJanuaVCLDialogLogin = class(TJanuaCustomDialogLogin)
  private
  FImage1: TGDIPPicture;
  FCustomImage: boolean;
  FLoginPromptColor: TColor;
  FLoginPromptColorTo: TColor;
  FImageHeight: integer;
  FImageWidth: integer;
  procedure SetImage1(const Value: TGDIPPicture);
  procedure SetCustomImage(const Value: boolean);
  procedure SetLoginPromptColor(const Value: TColor);
  procedure SetLoginPromptColorTo(const Value: TColor);
  procedure SetImageHeight(const Value: integer);
  procedure SetImageWidth(const Value: integer);
  public
  function Execute: boolean; override;
  constructor Create(AOwner: TComponent); override;
  published
  property Image1: TGDIPPicture read FImage1 write SetImage1;
  property ImageWidth: integer read FImageWidth write SetImageWidth;
  property ImageHeight: integer read FImageHeight write SetImageHeight;
  property LoginPromptColor: TColor read FLoginPromptColor write SetLoginPromptColor default $00FFE09F;
  property LoginPromptColorTo: TColor read FLoginPromptColorTo write SetLoginPromptColorTo
  default $00754F00;
  end;


  type
  TJanuaVCLDialogServer = class(TJanuaCustomDialogServer)
  private
  dlgServer: Janua.VCL.dlgServer.TdlgSelectServer;
  protected
  procedure CreateDialog;
  procedure DestroyDialog;
  public
  function Execute: boolean; override;
  end;

  type
  TJanuaDialogSelectSchema = class(TJanuaCustomDialogSchemaSelector)
  public
  /// <summary>
  /// This function triggers the Dialog to Select the Schema. The Dialog
  /// contains itself a Dataset that has to be populated.
  /// </summary>
  function SelectSchema(dID: integer): boolean; override;
  end;
*)

(*
  type
  TJanuaDialogNumber = class(TComponent)
  private
  FCaption: string;
  FNumber: Real;
  FDisplayText: string;
  procedure SetCaption(const Value: string);
  procedure SetDisplayText(const Value: string);
  procedure SetNumber(const Value: Real);
  { Private declarations }
  protected
  { Protected declarations }
  public
  { Public declarations }
  function Execute: boolean;
  published
  { Published declarations }
  property Number: Real read FNumber write SetNumber;
  property Caption: string read FCaption write SetCaption;
  property DisplayText: string read FDisplayText write SetDisplayText;
  end;

  type
  TJanuaDialogDate = class(TComponent)
  private
  FDate: TDateTime;
  FDisplayText: string;
  FCaption: string;
  procedure SetDate(const Value: TDateTime);
  procedure SetDisplayText(const Value: string);
  procedure SetCaption(const Value: string);
  { Private declarations }
  protected
  { Protected declarations }
  public
  { Public declarations }
  function Execute: boolean;
  published
  property Date: TDateTime read FDate write SetDate;
  property DisplayText: string read FDisplayText write SetDisplayText;
  property Caption: string read FCaption write SetCaption;
  { Published declarations }
  end;
*)
type
  TJanuaVCLDialog = class(TJanuaCustomDialog, IJanuaDialog)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure JShowMessage(smessage: string; sExtra: string = ''; sHelp: string = ''); override;
    procedure JShowWarning(smessage: string; sExtra: string = ''; sHelp: string = ''); override;
    procedure JShowError(smessage: string; sExtra: string = ''; sHelp: string = ''); override;
    function JMessageDlg(smessage: string; const sExtra: string = ''): boolean; override;
    function JMessageDlgExt(smessage, button1, button2: string): boolean; override;
    function JOpenPicture: boolean; overload; override;
    function JOpenPicture(aDirectory: string): boolean; overload; override;
    function JShowSystemError(sTitle, sContent, sExtra: string): boolean; override;
    function SelectDirectory(const aCaption, aRoot: string): boolean; override;
    function Execute: boolean; override;
    function SelectMultiString(const Caption: string; const a: array of string; const b: array of integer)
      : integer; override;
  end;

type
  TJanuaVCLOpenDialog = class(TJanuaCustomOpenDialog, IJanuaOpenFileDialog)
  public
    function OpenFile: boolean;  override;
    function OpenDirectory(const aInitialDir: string = ''): string; override;
  end;

type
  TJanuaVCLDialogText = class(TJanuaInterfacedDialogText, IJanuaDialogText)
    { Protected declarations }
  public
    { Public declarations }
    function Execute: boolean; override;
    function InputText(const sTitle, sCaption: string; const sDefault: string = ''): string; override;
  end;

implementation

uses Janua.VCL.dlgInputText, VCL.Dialogs, VCL.FileCtrl, Janua.Core.Functions, Janua.Application.Framework,
  udlgSelectMultiString, Janua.VCL.Framework;

var
  FJanuaDialog: TJanuaVCLDialog;
  (*
    function InputInteger(InputText: string): integer;
    var
    a: TJanuaDialogInteger;
    begin
    a := TJanuaDialogInteger.Create(nil);
    try
    a.Caption := 'Inserire un numero';
    a.DisplayText := InputText;
    a.Number := 1;
    if a.Execute then
    Result := a.Number
    else
    Result := -1;
    finally
    a.Free;
    end;
    end;

    function JanuainputText(sTitle: string; sCaption: string; sDefault: string): string;
    var
    a: TJanuaDialogText;
    begin
    a := TJanuaDialogText.Create(nil);
    try
    a.Caption := sTitle;
    a.DisplayText := sCaption;
    a.Text := sDefault;
    if a.Execute then
    Result := a.Text
    else
    Result := sDefault;
    finally
    a.Free;
    end;
    end;

    function JMessageDlg(smessage: string): boolean;
    var
    TaskDialog1: TAdvTaskDialog;
    risultato: integer;
    begin
    TaskDialog1 := nil;
    try
    TaskDialog1 := TAdvTaskDialog.Create(Application);
    TaskDialog1.Title := 'Domanda:';
    TaskDialog1.Instruction := smessage;
    TaskDialog1.Icon := tiQuestion;
    TaskDialog1.CustomButtons.Clear;
    TaskDialog1.CustomButtons.Add('Ok');
    TaskDialog1.CustomButtons.Add('No');
    TaskDialog1.DefaultButton := 100;
    risultato := TaskDialog1.Execute;
    Result := risultato = 100;
    finally
    TaskDialog1.Free;
    end;
    end;

    function SelectMultiString(const Caption: string; const a: array of string): integer;
    var
    i: integer;
    AdvTaskDialogEx1: TAdvTaskDialog;
    begin
    AdvTaskDialogEx1 := TAdvTaskDialog.Create(nil);
    try
    AdvTaskDialogEx1.Icon := tiQuestion;
    AdvTaskDialogEx1.Instruction := Caption;
    for i := 0 to High(a) do
    AdvTaskDialogEx1.CustomButtons.Add(a[i]);

    AdvTaskDialogEx1.Options := [doCommandLinks];
    AdvTaskDialogEx1.DefaultButton := 100;
    Result := AdvTaskDialogEx1.Execute - 100;
    finally
    AdvTaskDialogEx1.Free;
    end;
    end;

    procedure JShowMessage(smessage: string; sExtra: string = ''; sHelp: string = '');
    begin
    FJanuaDialog.JShowMessage(smessage, sExtra, sHelp);
    end;

    procedure JShowWarning(smessage: string; sExtra: string = ''; sHelp: string = '');
    begin
    FJanuaDialog.JShowWarning(smessage, sExtra, sHelp);
    end;

    procedure JShowError(smessage: string; sExtra: string = ''; sHelp: string = '');
    begin
    FJanuaDialog.JShowError(smessage, sExtra, sHelp);
    end;
  *)

  { TJanuaVCLDialogText }
function TJanuaVCLDialogText.Execute: boolean;
var
  dlgInput: TdlgVCLInputText;
begin
  dlgInput := TdlgVCLInputText.Create(nil);
  try
    dlgInput.Caption := Self.GetCaption;
    dlgInput.Label1.Caption := Self.GetDisplayText;
    dlgInput.Edit1.Text := Self.GetText;
    dlgInput.Edit1.CharCase := Self.GetCharCase;
    dlgInput.ShowModal;
    Result := dlgInput.ModalResult = mrOK;
    if Result then
      Self.SetText(dlgInput.Edit1.Text);
  finally
    dlgInput.Free;
  end;
end;

function TJanuaVCLDialogText.InputText(const sTitle, sCaption: string; const sDefault: string = ''): string;
begin
  SetCaption(sTitle);
  SetDisplayText(sCaption);
  Text := sDefault;
  if Self.Execute then
    Result := Self.Text
  else
    Result := sDefault;
end;

{ TJanuaDialog }

function TJanuaVCLDialog.Execute: boolean;
var
  TaskDialog1: TTaskDialog;
  risultato: integer;
begin
  TaskDialog1 := nil;
  Result := False;
  try
    TaskDialog1 := TTaskDialog.Create(Application);
    TaskDialog1.Title := 'Domanda:';
    TaskDialog1.Caption := Text;
    TaskDialog1.MainIcon := 1;
    TaskDialog1.Buttons.Clear;
    TaskDialog1.CommonButtons := [tcbYes, tcbNo];
    TaskDialog1.DefaultButton := tcbYes;
    if TaskDialog1.Execute then
      Result := TaskDialog1.ModalResult = mrYes;
    // risultato := TaskDialog1.Execute;
    // Result := risultato = 100;
  finally
    TaskDialog1.Free;
  end;
end;

function TJanuaVCLDialog.JMessageDlg(smessage: string; const sExtra: string = ''): boolean;
begin
  Result := False;
  with TTaskDialog.Create(nil) do
    try
      Caption := '';
      Title := smessage;
      Text := sExtra;
      CommonButtons := [tcbYes, tcbNo];
      if Execute then
        Result := ModalResult = mrYes;
    finally
      Free;
    end;
end;

function TJanuaVCLDialog.JMessageDlgExt(smessage, button1, button2: string): boolean;
var
  TaskDialog1: TTaskDialog;
  risultato: integer;
  bt1, bt2: TTAskDialogBaseButtonItem;
begin
  TaskDialog1 := nil;
  Result := False;
  try
    TaskDialog1 := TTaskDialog.Create(nil);
    TaskDialog1.Title := 'Domanda:';
    TaskDialog1.Caption := smessage;
    TaskDialog1.MainIcon := tdiNone;
    TaskDialog1.Buttons.Clear;
    bt1 := TaskDialog1.Buttons.Add;
    bt1.Caption := button1;
    bt1.ModalResult := mrOK;
    bt2 := TaskDialog1.Buttons.Add;
    bt2.Caption := button2;
    bt2.ModalResult := mrCancel;
    // TaskDialog1.DefaultButton := bt1;
    if TaskDialog1.Execute then
      Result := TaskDialog1.ModalResult = mrOK;
  finally
    TaskDialog1.Free;
  end;
end;

function TJanuaVCLDialog.JOpenPicture: boolean;
begin
  Result := False
  { TODO : Implementare JanuaDialog.OpenPicture }
end;

function TJanuaVCLDialog.JOpenPicture(aDirectory: string): boolean;
var
  a: TOpenPictureDialog;
begin
  Result := False;
  a := TOpenPictureDialog.Create(nil);
  try
    Result := a.Execute;
    if a.Execute then
      Self.SelectedFile := a.Filename;

  finally
    JanuaFree(a);
  end;
end;

procedure TJanuaVCLDialog.JShowError(smessage: string; sExtra: string = ''; sHelp: string = '');
begin
  with TTaskDialog.Create(nil) do
  begin
    try
      Caption := '';
      Title := smessage;
      Text := sExtra;
      MainIcon := tdiError;
      CommonButtons := [tcbClose];
      Execute;
    finally
      Free;
    end;
  end;
end;

procedure TJanuaVCLDialog.JShowMessage(smessage: string; sExtra: string = ''; sHelp: string = '');
begin
  with TTaskDialog.Create(nil) do
  begin
    try
      Caption := '';
      Title := smessage;
      Text := sExtra;
      CommonButtons := [tcbOK];
      Execute;
    finally
      Free;
    end;
  end;
end;

function TJanuaVCLDialog.JShowSystemError(sTitle, sContent, sExtra: string): boolean;
var
  TaskDialog1: TTaskDialog;
  bt1, bt2: TTAskDialogBaseButtonItem;
begin
  TaskDialog1 := TTaskDialog.Create(nil);
  Result := False;
  try
    TaskDialog1.Title := 'Attenzione Errore nell''applicazione';

    TaskDialog1.Caption := sTitle;
    TaskDialog1.MainIcon := tdiError;
    TaskDialog1.FooterText := sContent;
    TaskDialog1.ExpandedText := sExtra;
    // TaskDialog1.ExpandControlText := 'Premi qui per nascondere';
    TaskDialog1.Buttons.Clear;
    bt1 := TaskDialog1.Buttons.Add;
    bt1.Caption := 'OK';
    bt1.ModalResult := mrOK;
    bt2 := TaskDialog1.Buttons.Add;
    bt2.Caption := 'Termina Programma';
    bt2.ModalResult := mrCancel;
    // TaskDialog1.DefaultButton := bt1;

    // TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
    // TaskDialog1.Footer := 'Brought to Delphi by <A href="http://www.tmssoftware.com">TMS software</A>';
    // TaskDialog1.FooterIcon := tfiWarning;
    Result := TaskDialog1.Execute and (TaskDialog1.ModalResult = mrOK); // 100;
    // Application.Terminate;
  finally
    FreeAndNil(TaskDialog1);
  end;
end;

procedure TJanuaVCLDialog.JShowWarning(smessage: string; sExtra: string = ''; sHelp: string = '');
begin
  with TTaskDialog.Create(nil) do
  begin
    try
      Caption := '';
      Title := smessage;
      Text := sExtra;
      MainIcon := tdiWarning;
      CommonButtons := [tcbClose];
    finally
      Free;
    end;
  end;
end;

function TJanuaVCLDialog.SelectDirectory(const aCaption, aRoot: string): boolean;
// Result := inherited;
var
  Dir: string;
begin
  Dir := aRoot;
  Result := VCL.FileCtrl.SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt], 0);
  if Result then
    SetSelectedFile(Dir);
end;

function TJanuaVCLDialog.SelectMultiString(const Caption: string; const a: array of string;
  const b: array of integer): integer;
var
  lDlgMulti: TdlgSelectMultiString;
  i: integer;
  lb: TButton;
begin
  Result := -1;
  lDlgMulti := TdlgSelectMultiString.Create(nil);
  try
    for i := 0 to Pred(Length(a)) do
    begin
      lb := TButton.Create(lDlgMulti);
      lb.Parent := lDlgMulti;
      lb.AlignWithMargins := True;
      lb.Align := alTop;
      lb.Tag := i;
      lb.Caption := a[i];
      lb.Height := 60;
      lb.ImageMargins.Left := 60;
      if Length(b) > 0 then
      begin
        lb.Images := TJanuaVCLApplication.ImgListVCLIcons32;
        lb.ImageIndex := b[i];
      end;
      lb.OnClick := lDlgMulti.OnButtonClick;
    end;
    lDlgMulti.ShowModal;
    Result := lDlgMulti.Selection;
  finally
    lDlgMulti.Free;
  end;
end;

(*

  { TJanuaDialogNumber }

  function TJanuaDialogNumber.Execute: boolean;
  var
  dlgInput: TDlgInputFloat;
  begin
  dlgInput := TDlgInputFloat.Create(nil);
  try
  dlgInput.Caption := Self.FCaption;
  dlgInput.Label1.Caption := Self.FDisplayText;
  dlgInput.AdvMaskEdit1.Text := FormatFloat('0.00', Self.FNumber);
  dlgInput.ShowModal;
  Result := dlgInput.ModalResult = mrOK;
  if Result then
  Self.FNumber := StrToFloat(dlgInput.AdvMaskEdit1.Text);
  finally
  dlgInput.Free;
  end;
  end;

  procedure TJanuaDialogNumber.SetCaption(const Value: string);
  begin
  FCaption := Value;
  end;

  procedure TJanuaDialogNumber.SetDisplayText(const Value: string);
  begin
  FDisplayText := Value;
  end;

  procedure TJanuaDialogNumber.SetNumber(const Value: Real);
  begin
  FNumber := Value;
  end;

  { TJanuaDialogText }

  function TJanuaDialogText.InputText(sTitle: string; sCaption: string; sDefault: string = ''): string;
  begin
  Self.Caption := sTitle;
  Self.DisplayText := sCaption;
  Self.Text := sDefault;
  if Self.Execute then
  Result := Self.Text
  else
  Result := sDefault;
  end;

  function TJanuaDialogText.Execute: boolean;
  var
  dlgInput: TdlgInputText;
  begin
  dlgInput := TdlgInputText.Create(nil);
  try
  dlgInput.Caption := Self.FCaption;
  dlgInput.Label1.Caption := Self.FDisplayText;
  dlgInput.Edit1.Text := Self.FText;
  dlgInput.Edit1.CharCase := Self.FCharCase;
  dlgInput.ShowModal;
  Result := dlgInput.ModalResult = mrOK;
  if Result then
  Self.FText := dlgInput.Edit1.Text;
  finally
  dlgInput.Free;
  end;
  end;

  procedure TJanuaDialogText.SetCaption(const Value: String);
  begin
  FCaption := Value;
  end;

  procedure TJanuaDialogText.SetCharCase(const Value: TEditCharCase);
  begin
  FCharCase := Value;
  end;

  procedure TJanuaDialogText.SetDisplayText(const Value: String);
  begin
  FDisplayText := Value;
  end;

  procedure TJanuaDialogText.SetText(const Value: String);
  begin
  FText := Value;
  end;

  { TJanuaDialogLogin }

  constructor TJanuaDialogLogin.Create(AOwner: TComponent);
  begin
  inherited;
  Self.FImage1 := TGDIPPicture.Create;
  Self.FLoginPromptColorTo := $00754F00;
  Self.FLoginPromptColor := $00FFE09F;

  end;

  function TJanuaDialogLogin.Execute: boolean;
  var
  a: TdlgTMSLogin;
  i: integer;
  begin
  a := TdlgTMSLogin.Create(Self);
  try
  a.Password := Self.FPassword;
  a.Username := Self.FUsername;
  a.AdvSmoothLabel1.Caption.Text := Self.LoginPrompt;
  a.AdvSmoothLabel1.Caption.ColorStart := Self.FLoginPromptColor;
  a.AdvSmoothLabel1.Caption.ColorEnd := Self.FLoginPromptColorTo;
  if Self.CustomImage then
  begin
  a.AdvOfficeImage1.Picture.Assign(Self.FImage1);
  i := a.AdvOfficeImage1.Height;
  if FImageWidth > 0 then
  begin
  a.AdvOfficeImage1.Height := Round(a.AdvOfficeImage1.Width * FImageHeight / FImageWidth);
  if i > a.AdvOfficeImage1.Height then
  a.AdvOfficeImage1.Top := a.AdvOfficeImage1.Top + Trunc((i - a.AdvOfficeImage1.Height) / 2);
  end;
  end;
  a.lbServer.Visible := True;
  a.btnServer.Enabled := Self.SetServer;
  a.lbServer.Caption := Self.SelectedServer;
  a.ShowModal;
  Self.FPassword := a.Password;
  Self.FUsername := a.Username;
  Result := True;
  finally
  FreeAndNil(a);
  end;
  end;

  procedure TJanuaDialogLogin.SetCustomImage(const Value: boolean);
  begin
  FCustomImage := Value;
  end;

  procedure TJanuaDialogLogin.SetImage1(const Value: TGDIPPicture);
  begin
  FImage1.Assign(Value);
  if Assigned(FImage1) then
  begin
  Image1.GetImageSizes;
  Self.FImageHeight := Self.FImage1.Height;
  Self.FImageWidth := Self.FImage1.Width;
  end
  else
  begin
  Self.FImageHeight := 0;
  Self.FImageWidth := 0;
  end;
  end;

  procedure TJanuaDialogLogin.SetImageHeight(const Value: integer);
  begin
  FImageHeight := Value;
  end;

  procedure TJanuaDialogLogin.SetImageWidth(const Value: integer);
  begin
  FImageWidth := Value;
  end;

  procedure TJanuaDialogLogin.SetLoginPromptColor(const Value: TColor);
  begin
  FLoginPromptColor := Value;
  end;

  procedure TJanuaDialogLogin.SetLoginPromptColorTo(const Value: TColor);
  begin
  FLoginPromptColorTo := Value;
  end;

  { TJanuaVCLDialogServer }

  procedure TJanuaVCLDialogServer.CreateDialog;
  begin
  if not Assigned(Self.dlgServer) then
  try
  Self.dlgServer := Janua.VCL.dlgServer.TdlgSelectServer.Create(Self);
  except
  on e: exception do
  Self.WriteError('TJanuaVCLDialogServer.CreateDialog', e);
  end;

  end;

  procedure TJanuaVCLDialogServer.DestroyDialog;
  begin
  try
  if Assigned(Self.dlgServer) then
  FreeAndNil(dlgServer);
  except
  on e: exception do
  Self.WriteError('TJanuaVCLDialogServer.CreateDialog', e);
  end;
  end;

  function TJanuaVCLDialogServer.Execute: boolean;
  begin
  Result := False;
  { TODO : implement TJanuaVCLDialogServer.Execute }
  end;

  { TJanuaDialogSelectSchema }

  function TJanuaDialogSelectSchema.SelectSchema(dID: integer): boolean;
  begin
  Result := False;

  if Length(Self.JanuaServerSession.UserSchemas) = 1 then
  begin

  end
  else if Length(Self.JanuaServerSession.UserSchemas) = 0 then
  begin
  Result := False;
  end
  else
  begin

  end;

  end;

  initialization

  FJanuaDialog := TJanuaDialog.Create(nil);

  finalization

  FJanuaDialog.Free;
*)

{ TJanuaVCLOpenDialog }

function TJanuaVCLOpenDialog.OpenDirectory(const aInitialDir: string): string;
var
  Dialog: TFileOpenDialog;
begin
  Dialog := TFileOpenDialog.Create(nil);
  try
    Dialog.Options := [fdoPickFolders];
    Dialog.Title := Title;
    if Dialog.Execute then
      Result := Dialog.Filename
    else
      Result := '';
  finally
    Dialog.Free;
  end;
end;

function TJanuaVCLOpenDialog.OpenFile: boolean;
begin
  Result := False;
  { TODO: implement or remove OpenFile function }
end;

initialization

try
  TJanuaApplicationFactory.RegisterClass(IJanuaDialog, TJanuaVCLDialog);
  TJanuaApplicationFactory.RegisterClass(IJanuaOpenFileDialog, TJanuaVCLOpenDialog);
except
  on e: exception do
    raise exception.Create('RegisterClass(IJanuaDialog)' + e.Message);
end;

end.
