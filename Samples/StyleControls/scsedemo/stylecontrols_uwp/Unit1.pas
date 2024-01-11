unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scModernControls,
  Vcl.StdCtrls, scExtControls, scStyledForm, scStyleManager, Vcl.ImgList,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, scImageCollection, ShellApi, Vcl.Mask,
  scAdvancedControls, scHint, scDrawUtils, scGPImages,
  scGPControls, scGPExtControls, se_effect, se_ani;

type
  TForm1 = class(TForm)
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    ImageList48: TImageList;
    scGPVirtualImageList1: TscGPVirtualImageList;
    BorderPanel: TscGPPanel;
    scSplitView1: TscSplitView;
    BackgroundPanel: TscPanel;
    ClientPanel: TscPanel;
    scPageViewer1: TscPageViewer;
    scPageViewerPage2: TscPageViewerPage;
    scLabel2: TscLabel;
    scPageViewerPage1: TscPageViewerPage;
    scLabel1: TscLabel;
    scLabel8: TscLabel;
    scMemo1: TscMemo;
    scSplitView3: TscSplitView;
    scPanel2: TscPanel;
    scLabel7: TscLabel;
    scLabel28: TscLabel;
    scLabel13: TscLabel;
    scLabel14: TscLabel;
    scButton10: TscButton;
    scSplitView2: TscSplitView;
    scGPPanel2: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    CaptionLabel: TscLabel;
    MaxButton: TscGPGlyphButton;
    scGPPanel4: TscGPPanel;
    scGPEdit1: TscGPEdit;
    scGPPanel3: TscGPPanel;
    scGPSizeBox1: TscGPSizeBox;
    scGPImageCollection1: TscGPImageCollection;
    scGPButton1: TscGPButton;
    scGPButton2: TscGPButton;
    scGPButton3: TscGPButton;
    scGPButton4: TscGPButton;
    scGPButton5: TscGPButton;
    scGPButton6: TscGPButton;
    seAnimationList1: TseAnimationList;
    seAnimation1: TseAnimation;
    seAnimation2: TseAnimation;
    scLabel4: TscLabel;
    scScrollBox1: TscScrollBox;
    scListGroupPanel1: TscListGroupPanel;
    scLabel5: TscLabel;
    scLabel6: TscLabel;
    scLabel3: TscLabel;
    scGPSwitch3: TscGPSwitch;
    scGPSwitch4: TscGPSwitch;
    scGPSwitch5: TscGPSwitch;
    scListGroupPanel3: TscListGroupPanel;
    scLabel12: TscLabel;
    scLabel17: TscLabel;
    scPasswordEdit1: TscPasswordEdit;
    scEdit2: TscEdit;
    scListGroupPanel4: TscListGroupPanel;
    scLabel18: TscLabel;
    scAdvancedComboBox1: TscAdvancedComboBox;
    scCheckBox5: TscCheckBox;
    scCheckBox6: TscCheckBox;
    seAnimation3: TseAnimation;
    procedure scButton9Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure CloseButtonClick(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure CaptionLabelDblClick(Sender: TObject);
    procedure scStyledForm1ChangeActive(Sender: TObject);
    procedure CaptionLabelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CaptionLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CaptionLabelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure scStyledForm1BeforeChangeScale(Sender: TObject);
    procedure scStyledForm1DWMClientMaximize(Sender: TObject);
    procedure scStyledForm1DWMClientRestore(Sender: TObject);
    procedure scGPButton2Click(Sender: TObject);
    procedure scGPButton1Click(Sender: TObject);
    procedure scGPButton4Click(Sender: TObject);
    procedure scGPButton6Click(Sender: TObject);
    procedure scGPButton3Click(Sender: TObject);
    procedure scGPButton5Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CaptionLabelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) and not (ssDouble in Shift) and scStyledForm1.IsDWMClientMaximized then
   scStyledForm1.DWMClientStartDrag;
end;

procedure TForm1.CaptionLabelMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if scStyledForm1.IsDWMClientMaximized and scStyledForm1.IsDWMClientDragging then
  begin
    scStyledForm1.DWMClientDrag;
    if not scStyledForm1.IsDWMClientMaximized then
    begin
      MaxButton.GlyphOptions.Kind := scgpbgkMaximize;
      scGPSizeBox1.Visible := True;
    end;
  end;
end;

procedure TForm1.CaptionLabelMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  scStyledForm1.DWMClientEndDrag;
end;

procedure TForm1.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.MaxButtonClick(Sender: TObject);
begin
  if scStyledForm1.IsDWMClientMaximized then
    scStyledForm1.DWMClientRestore
  else
    scStyledForm1.DWMClientMaximize;
end;

procedure TForm1.MinButtonClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scButton9Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scGPButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPButton2Click(Sender: TObject);
begin
  if seAnimation1.IsControlFrozen(Self) or seAnimation2.IsControlFrozen(Self) then
     Exit;

  seAnimation3.FreezeControlClient(Self, Self.ClientRect);

  if scSplitView1.Opened then
    seAnimation3.Rotation := krRotate270
  else
    seAnimation3.Rotation := krRotate90;

  scSplitView1.Opened := not scSplitView1.Opened;
  try
    seAnimation3.Execute;
  finally
    seAnimation3.Restore;
  end;
end;

procedure TForm1.scGPButton3Click(Sender: TObject);
var
  R: TRect;
begin
  if seAnimation1.IsControlFrozen(Self) or seAnimation2.IsControlFrozen(Self) then
     Exit;

  R := Rect(scSplitView1.Left + scSplitView1.Width,
    0, scSplitView1.Left + scSplitView1.Width + scSplitView3.OpenedWidth, Height);
  seAnimation2.FreezeControlClient(Self, R);
  if scSplitView3.Opened then
    seAnimation2.Rotation := krRotate270
  else
    seAnimation2.Rotation := krRotate90;
  scSplitView3.Opened := not scSplitView3.Opened;
  try
    seAnimation2.Execute;
  finally
    seAnimation2.Restore;
  end;
end;

procedure TForm1.scGPButton4Click(Sender: TObject);
begin
  if seAnimation1.IsControlFrozen(Self) or seAnimation2.IsControlFrozen(Self) then
     Exit;

  seAnimation1.FreezeControlClient(Self, Self.ClientRect);
  scPageViewer1.PageIndex := 0;
  try
    seAnimation1.Execute;
  finally
    seAnimation1.Restore;
  end;
end;

procedure TForm1.scGPButton5Click(Sender: TObject);
var
  R: TRect;
begin
  if seAnimation1.IsControlFrozen(Self) or seAnimation2.IsControlFrozen(Self) then
     Exit;

  R := Rect(scSplitView1.Left + scSplitView1.Width,
    0, scSplitView1.Left + scSplitView1.Width + scSplitView2.OpenedWidth, Height);
  seAnimation2.FreezeControlClient(Self, R);
  if scSplitView2.Opened then
    seAnimation2.Rotation := krRotate270
  else
    seAnimation2.Rotation := krRotate90;
  scSplitView2.Opened := not scSplitView2.Opened;
  try
    seAnimation2.Execute;
  finally
    seAnimation2.Restore;
  end;
end;
procedure TForm1.scGPButton6Click(Sender: TObject);
begin
  if seAnimation1.IsControlFrozen(Self) or seAnimation2.IsControlFrozen(Self) then
     Exit;

  seAnimation1.FreezeControlClient(Self, Self.ClientRect);
  scPageViewer1.PageIndex := 1;
  try
    seAnimation1.Execute;
  finally
    seAnimation1.Restore;
  end;
end;

procedure TForm1.CaptionLabelDblClick(Sender: TObject);
begin
  if scStyledForm1.IsDWMClientMaximized then
    scStyledForm1.DWMClientRestore
  else
    scStyledForm1.DWMClientMaximize;
end;

procedure TForm1.scStyledForm1BeforeChangeScale(Sender: TObject);
begin
  // avoid Delphi bug with Constrains when DPI chnaged
  Form1.Constraints.MinWidth := 0;
  Form1.Constraints.MinHeight := 0;
end;

procedure TForm1.scStyledForm1ChangeActive(Sender: TObject);
begin
  if Active then
  begin
    CaptionLabel.Font.Color := clBtnText;
    CloseButton.GlyphOptions.NormalColorAlpha := 255;
    MinButton.GlyphOptions.NormalColorAlpha := 190;
    MaxButton.GlyphOptions.NormalColorAlpha := 190;
  end
  else
  begin
    CaptionLabel.Font.Color := clGray;
    CloseButton.GlyphOptions.NormalColorAlpha := 150;
    MinButton.GlyphOptions.NormalColorAlpha := 120;
    MaxButton.GlyphOptions.NormalColorAlpha := 120;
  end;
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);
  Form1.Constraints.MinWidth := Round(400 * scStyledForm1.ScaleFactor);
  Form1.Constraints.MinHeight := Round(400 * scStyledForm1.ScaleFactor);
end;

procedure TForm1.scStyledForm1DWMClientMaximize(Sender: TObject);
begin
  MaxButton.GlyphOptions.Kind := scgpbgkRestore;
  scGPSizeBox1.Visible := False;
  BorderPanel.Sizeable := False;
end;

procedure TForm1.scStyledForm1DWMClientRestore(Sender: TObject);
begin
  MaxButton.GlyphOptions.Kind := scgpbgkMaximize;
  scGPSizeBox1.Visible := True;
  BorderPanel.Sizeable := True;
end;

end.
