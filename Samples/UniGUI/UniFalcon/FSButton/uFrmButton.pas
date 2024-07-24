unit uFrmButton;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniButton, uniBitBtn,
  UniFSButton, uniPanel, uniImageList, uniGroupBox, uniEdit, uniRadioGroup,
  uniLabel, uniScrollBox, Vcl.Menus, uniMainMenu, uniMenuButton, uniSpeedButton;

type
  TfrmButton = class(TUniFrame)
    pnlPrincipal: TUniPanel;
    imgl32: TUniNativeImageList;
    scr1: TUniScrollBox;
    btn01: TUniFSButton;
    btn02: TUniFSButton;
    btn03: TUniFSButton;
    btn04: TUniFSButton;
    btn05: TUniFSButton;
    btn06: TUniFSButton;
    btn1: TUniFSButton;
    btn10: TUniFSButton;
    btn11: TUniFSButton;
    btn12: TUniFSButton;
    btn13: TUniFSButton;
    btn14: TUniBitBtn;
    btn15: TUniButton;
    btn19: TUniFSButton;
    btn2: TUniFSButton;
    btn20: TUniFSButton;
    btn21: TUniFSButton;
    btn22: TUniFSButton;
    btn24: TUniFSButton;
    btn25: TUniFSButton;
    btn26: TUniFSButton;
    btn27: TUniFSButton;
    btn28: TUniFSButton;
    btn29: TUniFSButton;
    btn3: TUniFSButton;
    btn30: TUniFSButton;
    btn31: TUniFSButton;
    btn32: TUniFSButton;
    btn33: TUniFSButton;
    btn34: TUniFSButton;
    btn35: TUniFSButton;
    btn4: TUniFSButton;
    btn5: TUniFSButton;
    btn6: TUniFSButton;
    btn7: TUniFSButton;
    btn8: TUniFSButton;
    btn9: TUniFSButton;
    btnModelo: TUniFSButton;
    lbl1: TUniLabel;
    lbl2: TUniLabel;
    lbl3: TUniLabel;
    lbl4: TUniLabel;
    lbl5: TUniLabel;
    pnlTransparent: TUniPanel;
    UniFSButton4: TUniFSButton;
    UniFSButton5: TUniFSButton;
    UniFSButton6: TUniFSButton;
    UniFSButton7: TUniFSButton;
    UniFSButton8: TUniFSButton;
    rdg1: TUniRadioGroup;
    Spb1: TUniSpeedButton;
    UniFSButton1: TUniFSButton;
    UniFSButton10: TUniFSButton;
    UniFSButton2: TUniFSButton;
    UniFSButton3: TUniFSButton;
    UniFSButton9: TUniFSButton;
    UniLabel1: TUniLabel;
    procedure pnlPrincipalAjaxEvent(Sender: TComponent; EventName: string; Params: TUniStrings);
    procedure rdg1Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure btn01Click(Sender: TObject);
    procedure btn02Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn31Click(Sender: TObject);
    procedure UniFSButton7Click(Sender: TObject);
    procedure btn19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  Main, uniGUIDialogs;

{$R *.dfm}

procedure TfrmButton.btn13Click(Sender: TObject);
var
  vI: Integer;
begin
  Randomize;
  vI := Random(99);
  TUniFSButton(Sender).BadgeText.Text := IntToStr(vI);
  if vI <= 25 then
    TUniFSButton(Sender).BadgeText.BackgroundColor := '#4285F4';
  if (vI > 25) and (vI <= 50) then
    TUniFSButton(Sender).BadgeText.BackgroundColor := '#EA4335';
  if (vI > 50) and (vI <= 75) then
    TUniFSButton(Sender).BadgeText.BackgroundColor := '#FBBC05';
  if (vI > 75) and (vI <= 100) then
    TUniFSButton(Sender).BadgeText.BackgroundColor := '#34A853';
end;

procedure TfrmButton.btn19Click(Sender: TObject);
begin
  btn01.BadgeText.Visible := True;
  btn01.BadgeText.Text := 'Falcon Sistemas';
end;

procedure TfrmButton.btn02Click(Sender: TObject);
begin
  TUniFSButton(Sender).BadgeText.Visible := True;
  TUniFSButton(Sender).BadgeText.Text := '20';
end;

procedure TfrmButton.btn01Click(Sender: TObject);
begin
  TUniFSButton(Sender).BadgeText.Text := 'Falcon Sistemas';
  TUniFSButton(Sender).BadgeText.TextSize := 18;
end;

procedure TfrmButton.btn31Click(Sender: TObject);
begin
 TUniFSButton(Sender).BadgeText.TextSize := 20;
end;

procedure TfrmButton.pnlPrincipalAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if EventName = '_get_param' then
  begin
    pnlPrincipal.Left   := (MainForm.Width div 2) - (pnlPrincipal.Width div 2);
    pnlPrincipal.Top := 0;
    pnlPrincipal.Height := 875;
  end;
end;

procedure TfrmButton.rdg1Click(Sender: TObject);
begin
  if rdg1.ItemIndex in [0,9,17,19,22,25,27,28] then
    btnModelo.Font.Color := clBlack
  else
    btnModelo.Font.Color := clWhite;

  btnModelo.StyleButton := TStyleButton(rdg1.ItemIndex);
end;

procedure TfrmButton.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;
  Self.Anchors := [akTop,akBottom];
end;

procedure TfrmButton.UniFSButton7Click(Sender: TObject);
begin
  TUniFSButton(Sender).BadgeText.TextColor := '#4E5BC5';
  TUniFSButton(Sender).BadgeText.BackgroundColor := 'white';
end;

initialization
  RegisterClass(TfrmButton)

end.
