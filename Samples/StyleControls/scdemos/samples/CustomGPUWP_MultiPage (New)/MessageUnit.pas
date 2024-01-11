unit MessageUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scModernControls,
  Vcl.StdCtrls, scExtControls, scStyledForm, scStyleManager,
  Vcl.ExtCtrls, scImageCollection, ShellApi, Vcl.Mask,
  scAdvancedControls, scHint, scDrawUtils, scGPImages,
  scGPControls, scGPExtControls, Vcl.Menus, scGPFontControls, scGPPagers, Vcl.Themes;

type
  TMessageForm = class(TForm)
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    BorderPanel: TscGPPanel;
    PopupMenu1: TPopupMenu;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    MessageImage: TscGPCharImage;
    MessageLabel: TscLabel;
    scGPPanel1: TscGPPanel;
    CancelButton: TscButton;
    OkButton: TscButton;
    scGPPanel2: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    CaptionLabel: TscLabel;
    procedure CloseButtonClick(Sender: TObject);
    procedure scStyledForm1ChangeActive(Sender: TObject);
  end;

  procedure UWPInfoMessage(const MsgCaption, Msg: string);
  procedure UWPErrorMessage(const MsgCaption, Msg: string);
  function UWPQuestionMessage(const MsgCaption, Msg: string): Integer;

var
  MessageForm: TMessageForm;

implementation

{$R *.dfm}

procedure UWPInfoMessage(const MsgCaption, Msg: string);
var
  F: TMessageForm;
begin
  F := TMessageForm.Create(nil);
  F.CaptionLabel.Caption := MsgCaption;
  F.MessageLabel.Caption := Msg;
  F.CancelButton.Visible := False;
  F.ShowModal;
  F.Free;
end;

procedure UWPErrorMessage(const MsgCaption, Msg: string);
var
  F: TMessageForm;
begin
  F := TMessageForm.Create(nil);
  F.CaptionLabel.Caption := MsgCaption;
  F.MessageImage.ImageIndex := 87;
  F.MessageImage.ImageColor := $004040FF;
  F.BorderPanel.FrameColor := $004040FF;
  F.MessageLabel.Caption := Msg;
  F.CancelButton.Visible := False;
  F.ShowModal;
  F.Free;
end;

function UWPQuestionMessage(const MsgCaption, Msg: string): Integer;
var
  F: TMessageForm;
begin
  F := TMessageForm.Create(nil);
  F.CaptionLabel.Caption := MsgCaption;
  F.MessageImage.ImageIndex := 89;
  F.MessageLabel.Caption := Msg;
  F.ShowModal;
  Result := F.ModalResult;
  F.Free;
end;

procedure TMessageForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TMessageForm.scStyledForm1ChangeActive(Sender: TObject);
begin
  if Active then
  begin
    CaptionLabel.Font.Color := $002B2420;
    CloseButton.GlyphOptions.NormalColorAlpha := 255;
  end
  else
  begin
    CaptionLabel.Font.Color := clGray;
    CloseButton.GlyphOptions.NormalColorAlpha := 150;
  end;
end;

end.
