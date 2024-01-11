unit Janua.TMS.Dialogs;

interface

uses
  // System
  System.SysUtils, System.Classes, GDIPicture,
  // VCL
  VCL.Imaging.pngimage, VCL.ExtCtrls, VCL.Controls, VCL.Forms, VCL.StdCtrls, VCL.Graphics, VCL.ExtDlgs,
  // TMS
  TaskDialog, // TaskDialogEx,
  // JANUA Core
  Janua.Core.Classes, Janua.Core.CustomControls,
  // Janua Interfaces
  Janua.Controls.Dialogs.Impl, Janua.Controls.Dialogs.Intf,
  // JanuaVCL
  Janua.VCL.dlgInputNumber, Janua.TMS.dlgServer, Janua.TMS.dlgLogin, Janua.VCL.dlgInputFloat,
  {Janua.VCL.dlgInputText,} Janua.VCL.dlgInputDate;

(*
  type
  TJanuaDialogLogin = class(TJanuaCustomDialogLogin)
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
  property CustomImage: boolean read FCustomImage write SetCustomImage;
  property LoginPromptColor: TColor read FLoginPromptColor write SetLoginPromptColor default $00FFE09F;
  property LoginPromptColorTo: TColor read FLoginPromptColorTo write SetLoginPromptColorTo
  default $00754F00;
  end;
*)

(*
  type
  TJanuaVCLDialogServer = class(TJanuaCustomDialogServer)
  private
  dlgServer: Janua.TMS.dlgServer.TdlgSelectServer;
  protected
  procedure CreateDialog;
  procedure DestroyDialog;
  public
  function Execute: boolean; override;
  end;
*)

type
  TJanuaDialogSelectSchema = class(TJanuaCustomDialogSchemaSelector)
  public
    /// <summary>
    /// This function triggers the Dialog to Select the Schema. The Dialog
    /// contains itself a Dataset that has to be populated.
    /// </summary>
    function SelectSchema(dID: integer): boolean; override;
  end;

  (*
    type
    TJanuaTMSDialogInteger = class(TJanuaCustomDialogInteger)
    private
    { Private declarations }
    protected
    { Protected declarations }
    public
    { Public declarations }
    function Execute: boolean; override;
    published
    { Published declarations }
    end;
  *)

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

  (*
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
  TJanuaTMSDialog = class(TJanuaCustomDialog, IJanuaDialog)
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
  TJanuaTMSDialogText = class(TJanuaInterfacedDialogText, IJanuaDialogText)
    { Protected declarations }
  public
    { Public declarations }
    function Execute: boolean; override;
    function InputText(const sTitle, sCaption: string; const sDefault: string = ''): string; override;
  end;

implementation

uses Janua.Application.Framework, Janua.Core.Functions, Janua.TMS.dlgInputText;

(*
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

  function InputBox(sTitle: string; sCaption: string; sDefault: string): string;
  begin
  Result := JanuainputText(sTitle, sCaption, sDefault);
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

{ TJanuaTMSDialog }

function TJanuaTMSDialog.Execute: boolean;
var
  TaskDialog1: TAdvTaskDialog;
  risultato: integer;
begin
  TaskDialog1 := nil;
  try
    TaskDialog1 := TAdvTaskDialog.Create(Application);
    TaskDialog1.Title := 'Domanda:';
    TaskDialog1.Instruction := Self.Text;
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

function TJanuaTMSDialog.JMessageDlg(smessage: string; const sExtra: string = ''): boolean;
begin
  Text := smessage;
  Result := Self.Execute;
end;

function TJanuaTMSDialog.JMessageDlgExt(smessage, button1, button2: string): boolean;
var
  TaskDialog1: TAdvTaskDialog;
  risultato: integer;
begin
  TaskDialog1 := nil;
  try
    TaskDialog1 := TAdvTaskDialog.Create(nil);
    TaskDialog1.Title := 'Domanda:';
    TaskDialog1.Instruction := smessage;
    TaskDialog1.Icon := tiQuestion;
    TaskDialog1.CustomButtons.Clear;
    TaskDialog1.CustomButtons.Add(button1);
    TaskDialog1.CustomButtons.Add(button2);
    TaskDialog1.DefaultButton := 100;
    risultato := TaskDialog1.Execute;
    Result := risultato = 100;
  finally
    TaskDialog1.Free;
  end;
end;

function TJanuaTMSDialog.JOpenPicture: boolean;
begin
  Result := False
  { TODO : Implementare JanuaDialog.OpenPicture }
end;

function TJanuaTMSDialog.JOpenPicture(aDirectory: string): boolean;
var
  a: TOpenPictureDialog;
begin
  a := TOpenPictureDialog.Create(nil);
  try
    Result := a.Execute;
    if a.Execute then
      Self.SelectedFile := a.FileName;
  finally
    JanuaFree(a);
  end;
end;

function TJanuaTMSDialog.SelectMultiString(const Caption: string; const a: array of string;
  const b: array of integer): integer;
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

procedure TJanuaTMSDialog.JShowError(smessage: string; sExtra: string = ''; sHelp: string = '');
var
  TaskDialog1: TAdvTaskDialog;
begin
  TaskDialog1 := nil;
  try
    TaskDialog1 := TAdvTaskDialog.Create(nil);
    TaskDialog1.Title := 'Attenzione';
    TaskDialog1.Instruction := smessage;
    TaskDialog1.Icon := tiError;
    TaskDialog1.ExpandControlText := 'Premi qui per nascondere';
    TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
    TaskDialog1.ExpandedText := sExtra;
    TaskDialog1.Footer := sHelp;
    TaskDialog1.FooterIcon := tfiInformation;
    TaskDialog1.Execute;
  finally
    TaskDialog1.Free;
  end;
end;

procedure TJanuaTMSDialog.JShowMessage(smessage: string; sExtra: string = ''; sHelp: string = '');
var
  TaskDialog1: TAdvTaskDialog;
begin
  TaskDialog1 := nil;
  try
    TaskDialog1 := TAdvTaskDialog.Create(Application);
    TaskDialog1.Title := 'Informazione';
    TaskDialog1.Instruction := smessage;
    TaskDialog1.Icon := tiInformation;
    TaskDialog1.ExpandedText := sExtra;
    TaskDialog1.ExpandControlText := 'Premi qui per nascondere';
    TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
    TaskDialog1.Footer := sHelp;
    TaskDialog1.FooterIcon := tfiInformation;
    TaskDialog1.Execute;
  finally
    TaskDialog1.Free;
  end;
end;

function TJanuaTMSDialog.JShowSystemError(sTitle, sContent, sExtra: string): boolean;
var
  TaskDialog1: TAdvTaskDialog;
begin
  TaskDialog1 := TAdvTaskDialog.Create(nil);
  try
    TaskDialog1.Title := 'Attenzione Errore nell''applicazione';

    TaskDialog1.Instruction := sTitle;
    TaskDialog1.Icon := tiError;
    TaskDialog1.Content := sContent;
    TaskDialog1.ExpandedText := sExtra;
    TaskDialog1.ExpandControlText := 'Premi qui per nascondere';

    TaskDialog1.CustomButtons.Clear;
    TaskDialog1.CustomButtons.Add('Termina Programma');
    TaskDialog1.CustomButtons.Add('OK');
    TaskDialog1.DefaultButton := 101;

    // TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
    // TaskDialog1.Footer := 'Brought to Delphi by <A href="http://www.tmssoftware.com">TMS software</A>';
    // TaskDialog1.FooterIcon := tfiWarning;
    Result := TaskDialog1.Execute = 100;
    // Application.Terminate;
  finally
    FreeAndNil(TaskDialog1);
  end;
end;

procedure TJanuaTMSDialog.JShowWarning(smessage: string; sExtra: string = ''; sHelp: string = '');
var
  TaskDialog1: TAdvTaskDialog;
begin
  TaskDialog1 := nil;
  try
    TaskDialog1 := TAdvTaskDialog.Create(Application);
    TaskDialog1.Title := 'Informazione';
    TaskDialog1.Instruction := smessage;
    TaskDialog1.Icon := tiWarning;
    TaskDialog1.ExpandedText := sExtra;
    TaskDialog1.ExpandControlText := 'Premi qui per nascondere';
    TaskDialog1.CollapsControlText := 'Premi qui per maggiori informazioni';
    TaskDialog1.Footer := sHelp;
    TaskDialog1.FooterIcon := tfiInformation;
    TaskDialog1.Execute;
  finally
    TaskDialog1.Free;
  end;
end;

function TJanuaTMSDialog.SelectDirectory(const aCaption, aRoot: string): boolean;
begin
  Result := inherited;
end;

(*
  { TJanuaTMSDialogInteger }

  function TJanuaTMSDialogInteger.Execute: boolean;
  var
  dlgInput: TDlgInputNumber;
  begin
  dlgInput := TDlgInputNumber.Create(nil);
  try
  dlgInput.Caption := Self.FCaption;
  dlgInput.Label1.Caption := Self.FDisplayText;
  dlgInput.AdvSpinEdit1.Value := Self.FNumber;
  dlgInput.ShowModal;
  Result := dlgInput.ModalResult = mrOK;
  if Result then
  Self.FNumber := dlgInput.AdvSpinEdit1.Value;
  finally
  dlgInput.Free;
  end;
  end;
*)

(*
  { TJanuaDialogDate }

  function TJanuaDialogDate.Execute: boolean;
  var
  vdlgInput: TdlgInputDate;
  begin
  vdlgInput := TdlgInputDate.Create(nil);
  try
  vdlgInput.Label1.Caption := FDisplayText;
  vdlgInput.Caption := Self.FCaption;
  if FDate <= 1 then
  FDate := Now();
  vdlgInput.DefaultDate := FDate;
  vdlgInput.ShowModal;
  Result := (vdlgInput.ModalResult = mrOK) or (vdlgInput.Tag = mrOK);
  if Result then
  FDate := vdlgInput.PlannerMaskDatePicker1.Date
  finally
  vdlgInput.Free;
  end;
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
*)

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
function TJanuaTMSDialogText.InputText(const sTitle, sCaption: string; const sDefault: string = ''): string;
// function TJanuaTMSDialogText.InputText(sTitle: string; sCaption: string; sDefault: string = ''): string;
begin
  Self.SetCaption(sTitle);
  Self.SetDisplayText(sCaption);
  Self.Text := sDefault;
  if Self.Execute then
    Result := Self.Text
  else
    Result := sDefault;
end;

function TJanuaTMSDialogText.Execute: boolean;
var
  dlgInput: TdlgTMSInputText;
begin
  dlgInput := TdlgTMSInputText.Create(nil);
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

(*

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
  a.AdvSmoothLabel1.Caption.Text := GetText;
  a.AdvSmoothLabel1.Caption.ColorStart := FLoginPromptColor;
  a.AdvSmoothLabel1.Caption.ColorEnd := FLoginPromptColorTo;
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
  a.btnServer.Enabled := Self.GetSetServer;
  a.lbServer.Caption := Self.GetSelectedServer;
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
*)

(*
  { TJanuaVCLDialogServer }

  procedure TJanuaVCLDialogServer.CreateDialog;
  begin
  if not Assigned(Self.dlgServer) then
  try
  Self.dlgServer := Janua.VCL.dlgServer.TdlgSelectServer.Create(Self);
  except
  on e: exception do
  RaiseException('CreateDialog', e, Self);
  end;

  end;

  procedure TJanuaVCLDialogServer.DestroyDialog;
  begin
  try
  if Assigned(Self.dlgServer) then
  FreeAndNil(dlgServer);
  except
  on e: exception do
  RaiseException('CreateDialog', e, Self);
  end;
  end;

  function TJanuaVCLDialogServer.Execute: boolean;
  begin
  Result := False;
  { TODO : implement TJanuaVCLDialogServer.Execute }
  end;
*)

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

try
  // TJanuaTMSDialogText, IJanuaDialogText
  TJanuaApplicationFactory.RegisterClass(IJanuaDialogText, TJanuaTMSDialogText);
except
  on e: exception do
    raise exception.Create('TMS.Dialogs.Initialization ' + e.Message);
end;

finalization

end.
