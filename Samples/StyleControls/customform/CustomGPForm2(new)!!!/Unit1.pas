unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyledForm, scControls, scGPControls,
  scGPExtControls, scGPPagers, Vcl.Menus, Vcl.ComCtrls, scStyleManager, Vcl.Themes,
  scExtControls, scModernControls, scAdvancedControls, Vcl.StdCtrls, Vcl.Mask,
  System.Types;

type
  TForm1 = class(TForm)
    scGPPanel1: TscGPPanel;
    scStyledForm1: TscStyledForm;
    scGPPanel2: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    scGPButton1: TscGPButton;
    PopupMenu1: TPopupMenu;
    Open1: TMenuItem;
    New1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    N2: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    scLabel1: TscLabel;
    scGPButton4: TscGPButton;
    scGPButton2: TscGPButton;
    scGPButton3: TscGPButton;
    scStyleManager1: TscStyleManager;
    scGPGlyphButton1: TscGPGlyphButton;
    scGPGlyphButton2: TscGPGlyphButton;
    scGPGlyphButton3: TscGPGlyphButton;
    scGPGlyphButton4: TscGPGlyphButton;
    scPageViewer1: TscPageViewer;
    scPageViewerPage1: TscPageViewerPage;
    scPageViewerPage2: TscPageViewerPage;
    scPageViewerPage3: TscPageViewerPage;
    scSplitView1: TscSplitView;
    scLabel4: TscLabel;
    scScrollBox1: TscScrollBox;
    scListGroupPanel1: TscListGroupPanel;
    scLabel5: TscLabel;
    scLabel6: TscLabel;
    scLabel9: TscLabel;
    scGPSwitch1: TscGPSwitch;
    scGPSwitch2: TscGPSwitch;
    scGPSwitch3: TscGPSwitch;
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
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    scLabel7: TscLabel;
    scMemo1: TscMemo;
    scLabel8: TscLabel;
    scComboBox1: TscComboBox;
    scGPPanel3: TscGPPanel;
    scGPTrackBar1: TscGPTrackBar;
    scGPGlyphButton5: TscGPGlyphButton;
    scGPGlyphButton6: TscGPGlyphButton;
    MaxButton: TscGPGlyphButton;
    scCheckBox1: TscCheckBox;
    scGPSizeBox1: TscGPSizeBox;
    scCheckBox2: TscCheckBox;
    scLabel10: TscLabel;
    procedure CloseButtonClick(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scStyledForm1ChangeActive(Sender: TObject);
    procedure scGPGlyphButton1Click(Sender: TObject);
    procedure scGPButton1Click(Sender: TObject);
    procedure scGPButton2Click(Sender: TObject);
    procedure scGPButton3Click(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scGPGlyphButton6Click(Sender: TObject);
    procedure scGPGlyphButton5Click(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure scLabel1DblClick(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scLabel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure scLabel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scLabel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scCheckBox2Click(Sender: TObject);
  private
    { Private declarations }
    FOldBoundsRect: TRect;
    FMaximized: Boolean;
    FDown: Boolean;
    FDownP: TPoint;
  public
    { Public declarations }
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
  scGPSizeBox1.Visible := scCheckBox2.Checked;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  scComboBox1.Items.Clear;
  scComboBox1.Items.AddStrings(TStyleManager.StyleNames);
  scComboBox1.ItemIndex := scComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
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

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  MaxButton.Left := CloseButton.Left;
  MaxButton.Visible := scCheckBox1.Checked;
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  scGPSizeBox1.Visible := scCheckBox2.Checked;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
end;

procedure TForm1.scGPButton1Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 0;
end;

procedure TForm1.scGPButton2Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 1;
end;

procedure TForm1.scGPButton3Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 2;
end;

procedure TForm1.scGPGlyphButton1Click(Sender: TObject);
begin
  scSplitView1.Opened := not scSplitView1.Opened;
end;

procedure TForm1.scGPGlyphButton5Click(Sender: TObject);
begin
  scGPTrackBar1.Value := scGPTrackBar1.Value - 10;
end;

procedure TForm1.scGPGlyphButton6Click(Sender: TObject);
begin
  scGPTrackBar1.Value := scGPTrackBar1.Value + 10;
end;

procedure TForm1.scLabel1DblClick(Sender: TObject);
begin
  if not scCheckBox1.Checked then Exit;

   if FMaximized then
    DoRestore
  else
    DoMaximize;
end;

procedure TForm1.scLabel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if (Button = mbLeft) and not (ssDouble in Shift) and FMaximized then
 begin
   GetCursorPos(FDownP);
   FDown := True;
 end;
end;

procedure TForm1.scLabel1MouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure TForm1.scLabel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDown := False;
end;

procedure TForm1.scStyledForm1ChangeActive(Sender: TObject);
begin
  if Active then
  begin
    scGPPanel1.FrameColor := $009A572B;
    scLabel1.Font.Color := clWhite;
    CloseButton.GlyphOptions.NormalColorAlpha := 255;
    MinButton.GlyphOptions.NormalColorAlpha := 190;
    MaxButton.GlyphOptions.NormalColorAlpha := 190;
  end
  else
  begin
    scGPPanel1.FrameColor := clGray;
    scLabel1.Font.Color := clSilver;
    CloseButton.GlyphOptions.NormalColorAlpha := 150;
    MinButton.GlyphOptions.NormalColorAlpha := 120;
    MaxButton.GlyphOptions.NormalColorAlpha := 120;
  end;
end;

end.
