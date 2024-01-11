unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scModernControls,
  Vcl.StdCtrls, scExtControls, scStyledForm, scStyleManager, Vcl.ImgList,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, scImageCollection, ShellApi, Vcl.Mask,
  scAdvancedControls, scHint, scDrawUtils, scGPImages,
  scGPControls, scGPExtControls;

type
  TForm1 = class(TForm)
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    ImageList48: TImageList;
    scGPVirtualImageList1: TscGPVirtualImageList;
    BorderPanel: TscGPPanel;
    scSplitView1: TscSplitView;
    scButton6: TscButton;
    scButton2: TscButton;
    scButton3: TscButton;
    scButton1: TscButton;
    scButton4: TscButton;
    scButton5: TscButton;
    scGPSwitch1: TscGPSwitch;
    scLabel9: TscLabel;
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
    scPanel3: TscPanel;
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
    scGPPanel2: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    CaptionLabel: TscLabel;
    MaxButton: TscGPGlyphButton;
    scGPPanel4: TscGPPanel;
    scGPEdit1: TscGPEdit;
    scGPPanel3: TscGPPanel;
    scGPSizeBox1: TscGPSizeBox;
    scLabel11: TscLabel;
    procedure scButton5Click(Sender: TObject);
    procedure scButton9Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scButton6Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scButton3Click(Sender: TObject);
    procedure scButton1Click(Sender: TObject);
    procedure scButton4Click(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scGPSwitch1ChangeState(Sender: TObject);
    procedure scGPSwitch6ChangeState(Sender: TObject);
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
  private
    FOldBoundsRect: TRect;
    FMaximized: Boolean;
    FDown: Boolean;
    FDownP: TPoint;
  public
    procedure DoMaximize;
    procedure DoRestore;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DoMaximize;
begin
  FOldBoundsRect := BoundsRect;
  BoundsRect := scStyledForm1.GetMaximizeBounds;
  FMaximized := True;
  MaxButton.GlyphOptions.Kind := scgpbgkRestore;
  scGPSizeBox1.Visible := False;
end;

procedure TForm1.DoRestore;
begin
  BoundsRect :=  FOldBoundsRect;
  FMaximized := False;
  scLabel1.DragForm := True;
  MaxButton.GlyphOptions.Kind := scgpbgkMaximize;
  scGPSizeBox1.Visible := True;
end;

procedure TForm1.CaptionLabelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) and not (ssDouble in Shift) and FMaximized then
  begin
    GetCursorPos(FDownP);
    FDown := True;
  end;
end;

procedure TForm1.CaptionLabelMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  P: TPoint;
  W, H, L, T: Integer;
begin
  if FMaximized and FDown then
  begin
    GetCursorPos(P);
    W := FOldBoundsRect.Width;
    H := FOldBoundsRect.Height;
    L := Round(W * (P.X - Left) / Width);
    T := P.Y - Top;
    FOldBoundsRect.Left := P.X - L;
    FOldBoundsRect.Top := P.Y - T;
    FOldBoundsRect.Right := FOldBoundsRect.Left + W;
    FOldBoundsRect.Height := FOldBoundsRect.Top + H;
    DoRestore;
  end;
end;

procedure TForm1.CaptionLabelMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDown := False;
end;

procedure TForm1.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.MaxButtonClick(Sender: TObject);
begin
  if FMaximized then
    DoRestore
  else
    DoMaximize;
end;

procedure TForm1.MinButtonClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scButton2Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 0;
end;

procedure TForm1.scButton3Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 1;
end;

procedure TForm1.scButton4Click(Sender: TObject);
begin
  scSplitView2.Opened := not scSplitView2.Opened;
end;

procedure TForm1.scButton5Click(Sender: TObject);
begin
  scSplitView3.Opened := not scSplitView3.Opened;
end;

procedure TForm1.scButton6Click(Sender: TObject);
begin
  scSplitView1.Opened := not scSplitView1.Opened;
end;

procedure TForm1.scButton9Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scGPSwitch1ChangeState(Sender: TObject);
begin
  if scSplitView1.DisplayMode = scsvmDocked then
    scSplitView1.DisplayMode := scsvmOverlay
  else
    scSplitView1.DisplayMode := scsvmDocked;
end;

procedure TForm1.scGPSwitch6ChangeState(Sender: TObject);
begin
  if scSplitView1.AnimationType = scsvaInertial then
    scSplitView1.AnimationType := scsvaLinear
  else
    scSplitView1.AnimationType := scsvaInertial;
  scSplitView2.AnimationType := scSplitView1.AnimationType;
  scSplitView3.AnimationType := scSplitView1.AnimationType;
end;

procedure TForm1.CaptionLabelDblClick(Sender: TObject);
begin
  if FMaximized then
    DoRestore
  else
    DoMaximize;
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

end.
