unit Janua.VCL.Dialogs;

interface

uses
  // System
  System.SysUtils, System.Classes, GDIPicture,
  // VCL
  VCL.Imaging.pngimage, VCL.ExtCtrls, VCL.Controls, VCL.Forms, VCL.StdCtrls, VCL.Graphics, VCL.ExtDlgs,
  // TMS
  TaskDialog, TaskDialogEx,
  // JANUA
  Janua.Core.Classes, Janua.Core.CustomControls,
  // JanuaVCL
  Janua.VCL.dlgInputNumber, Janua.VCL.dlgServer, Janua.VCL.dlgLogin, Janua.VCL.dlgInputDate, Janua.VCL.dlgInputFloat,
  Janua.VCL.dlgInputText;

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
    property LoginPromptColorTo: TColor read FLoginPromptColorTo write SetLoginPromptColorTo default $00754F00;
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

type
  TJanuaDialogInteger = class(TJanuaCustomDialogInteger)
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

type
  TJanuaDialogNumber = class(TComponent)
  private
    FCaption: widestring;
    FNumber: Real;
    FDisplayText: widestring;
    procedure SetCaption(const Value: widestring);
    procedure SetDisplayText(const Value: widestring);
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
    property Caption: widestring read FCaption write SetCaption;
    property DisplayText: widestring read FDisplayText write SetDisplayText;
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

type
  TJanuaDialog = class(TJanuaCustomDialog)
  private

    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure JShowMessage(smessage: string; sExtra: string; sHelp: string); override;
    procedure JShowWarning(smessage: string; sExtra: string; sHelp: string); override;
    procedure JShowError(smessage: string; sExtra: string; sHelp: string); override;
    function JMessageDlg(smessage: string): boolean; override;
    function JMessageDlgExt(smessage, button1, button2: string): boolean; override;
    function JOpenPicture: boolean; overload; override;
    function JOpenPicture(aDirectory: string): boolean; overload; override;
  published
    { Published declarations }

  end;

type
  TJanuaDialogText = class(TComponent)
  private
    FCaption: String;
    FText: String;
    FDisplayText: String;
    FCharCase: TEditCharCase;
    procedure SetCaption(const Value: String);
    procedure SetDisplayText(const Value: String);
    procedure SetText(const Value: String);
    procedure SetCharCase(const Value: TEditCharCase);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function Execute: boolean;
    function InputText(sTitle: string; sCaption: string; sDefault: string): string;
  published
    { Published declarations }
    property Caption: String read FCaption write SetCaption;
    property Text: String read FText write SetText;
    property DisplayText: String read FDisplayText write SetDisplayText;
    property CharCase: TEditCharCase read FCharCase write SetCharCase;
  end;

implementation

{ TJanuaDialog }

function TJanuaDialog.JMessageDlg(smessage: string): boolean;
var
  TaskDialog1: TAdvTaskDialogEx;
  risultato: integer;
begin
  TaskDialog1 := nil;
  try
    TaskDialog1 := TAdvTaskDialogEx.Create(Application);
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

function TJanuaDialog.JMessageDlgExt(smessage, button1, button2: string): boolean;
var
  TaskDialog1: TAdvTaskDialogEx;
  risultato: integer;
begin
  TaskDialog1 := nil;
  try
    TaskDialog1 := TAdvTaskDialogEx.Create(self);
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

function TJanuaDialog.JOpenPicture: boolean;
begin

end;

function TJanuaDialog.JOpenPicture(aDirectory: string): boolean;
var
  a: TOpenPictureDialog;
begin
  a := TOpenPictureDialog.Create(self);
  try
    if a.Execute then
      self.SelectedFile := a.FileName;

  finally
    FreeAndNil(a);
  end;
end;

procedure TJanuaDialog.JShowError(smessage, sExtra, sHelp: string);
var
  TaskDialog1: TAdvTaskDialogEx;
begin
  TaskDialog1 := nil;
  try
    TaskDialog1 := TAdvTaskDialogEx.Create(self);
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

procedure TJanuaDialog.JShowMessage(smessage: string;  sExtra: string = '';  sHelp: string = '');
var
  TaskDialog1: TAdvTaskDialogEx;
begin
  TaskDialog1 := nil;
  try
    TaskDialog1 := TAdvTaskDialogEx.Create(Application);
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

procedure TJanuaDialog.JShowWarning(smessage, sExtra, sHelp: string);
var
  TaskDialog1: TAdvTaskDialogEx;
begin
  TaskDialog1 := nil;
  try
    TaskDialog1 := TAdvTaskDialogEx.Create(Application);
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

{ TJanuaDialogInteger }

function TJanuaDialogInteger.Execute: boolean;
var
  dlgInput: TDlgInputNumber;
begin
  dlgInput := TDlgInputNumber.Create(nil);
  try
    dlgInput.Caption := self.FCaption;
    dlgInput.Label1.Caption := self.FDisplayText;
    dlgInput.AdvSpinEdit1.Value := self.FNumber;
    dlgInput.ShowModal;
    Result := dlgInput.ModalResult = mrOK;
    if Result then
      self.FNumber := dlgInput.AdvSpinEdit1.Value;
  finally
    dlgInput.Free;
  end;
end;

{ TJanuaDialogDate }

function TJanuaDialogDate.Execute: boolean;
var
  vdlgInput: TdlgInputDate;
begin
  try
    vdlgInput := TdlgInputDate.Create(nil);
    vdlgInput.Label1.Caption := FDisplayText;
    vdlgInput.Caption := self.FCaption;
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

{ TJanuaDialogNumber }

function TJanuaDialogNumber.Execute: boolean;
var
  dlgInput: TDlgInputFloat;
begin
  dlgInput := TDlgInputFloat.Create(nil);
  try
    dlgInput.Caption := self.FCaption;
    dlgInput.Label1.Caption := self.FDisplayText;
    dlgInput.AdvMaskEdit1.Text := FormatFloat('0.00', self.FNumber);
    dlgInput.ShowModal;
    Result := dlgInput.ModalResult = mrOK;
    if Result then
      self.FNumber := StrToFloat(dlgInput.AdvMaskEdit1.Text);
  finally
    dlgInput.Free;
  end;
end;

procedure TJanuaDialogNumber.SetCaption(const Value: widestring);
begin
  FCaption := Value;
end;

procedure TJanuaDialogNumber.SetDisplayText(const Value: widestring);
begin
  FDisplayText := Value;
end;

procedure TJanuaDialogNumber.SetNumber(const Value: Real);
begin
  FNumber := Value;
end;

{ TJanuaDialogText }

function TJanuaDialogText.InputText(sTitle: string; sCaption: string; sDefault: string): string;
begin
  self.Caption := sTitle;
  self.DisplayText := sCaption;
  self.Text := sDefault;
  if self.Execute then
    Result := self.Text
  else
    Result := sDefault;
end;

function TJanuaDialogText.Execute: boolean;
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
  self.FImage1 := TGDIPPicture.Create;
  self.FLoginPromptColorTo := $00754F00;
  self.FLoginPromptColor := $00FFE09F;

end;

function TJanuaDialogLogin.Execute: boolean;
var
  a: TdlgLogin;
  i: integer;
begin
  a := TdlgLogin.Create(self);
  try
    a.Password := self.FPassword;
    a.Username := self.FUsername;
    a.AdvSmoothLabel1.Caption.Text := self.LoginPrompt;
    a.AdvSmoothLabel1.Caption.ColorStart := self.FLoginPromptColor;
    a.AdvSmoothLabel1.Caption.ColorEnd := self.FLoginPromptColorTo;
    if self.CustomImage then
    begin
      a.AdvOfficeImage1.Picture.Assign(self.FImage1);
      i := a.AdvOfficeImage1.Height;
      if FImageWidth > 0 then
      begin
        a.AdvOfficeImage1.Height := Round(a.AdvOfficeImage1.Width * FImageHeight / FImageWidth);
        if i > a.AdvOfficeImage1.Height then
          a.AdvOfficeImage1.Top := a.AdvOfficeImage1.Top + Trunc((i - a.AdvOfficeImage1.Height) / 2);
      end;
    end;
    a.lbServer.Visible := True;
    a.btnServer.Enabled := self.SetServer;
    a.lbServer.Caption := self.SelectedServer;
    a.ShowModal;
    self.FPassword := a.Password;
    self.FUsername := a.Username;
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
    self.FImageHeight := self.FImage1.Height;
    self.FImageWidth := self.FImage1.Width;
  end
  else
  begin
    self.FImageHeight := 0;
    self.FImageWidth := 0;
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
  if not Assigned(self.dlgServer) then
    try
      self.dlgServer := Janua.VCL.dlgServer.TdlgSelectServer.Create(self);
    except
      on e: exception do
        self.WriteError('TJanuaVCLDialogServer.CreateDialog', e);
    end;

end;

procedure TJanuaVCLDialogServer.DestroyDialog;
begin
  try
    if Assigned(self.dlgServer) then
      FreeAndNil(dlgServer);
  except
    on e: exception do
      self.WriteError('TJanuaVCLDialogServer.CreateDialog', e);
  end;
end;

function TJanuaVCLDialogServer.Execute: boolean;
begin

end;

{ TJanuaDialogSelectSchema }

function TJanuaDialogSelectSchema.SelectSchema(dID: integer): boolean;
begin
  if Length(self.JanuaServerSession.UserSchemas) = 1 then
  begin

  end
  else if Length(self.JanuaServerSession.UserSchemas) = 0 then
  begin
    Result := False;
  end
  else
  begin

  end;

end;

end.
