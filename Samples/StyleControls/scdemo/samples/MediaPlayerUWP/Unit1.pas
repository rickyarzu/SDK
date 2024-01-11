unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyledForm, scControls, scGPControls,
  scGPExtControls, scGPPagers, Vcl.Menus, Vcl.ComCtrls, scStyleManager, Vcl.Themes,
  scExtControls, scModernControls, scAdvancedControls, Vcl.StdCtrls, Vcl.Mask,
  System.Types, scDrawUtils, scGPImages, Vcl.ImgList,
  scImageCollection, ShellApi;

type
  TForm1 = class(TForm)
    scGPPanel1: TscGPPanel;
    scStyledForm1: TscStyledForm;
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
    scStyleManager1: TscStyleManager;
    scGPPanel3: TscGPPanel;
    scGPSizeBox1: TscGPSizeBox;
    scLabel10: TscLabel;
    scGPImageCollection1: TscGPImageCollection;
    scPanel1: TscPanel;
    scGPGlyphButton1: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    MaxButton: TscGPGlyphButton;
    CloseButton: TscGPGlyphButton;
    scGPGlyphButton2: TscGPGlyphButton;
    scGPGlyphButton3: TscGPGlyphButton;
    scGPGlyphButton4: TscGPGlyphButton;
    scGPTrackBar1: TscGPTrackBar;
    CaptionLabel: TscLabel;
    scGPEdit1: TscGPEdit;
    PopupMenu2: TPopupMenu;
    Searchitem11: TMenuItem;
    Searchitem21: TMenuItem;
    Searchitem31: TMenuItem;
    scGPListBox1: TscGPListBox;
    scGPGlyphButton5: TscGPGlyphButton;
    scListView1: TscListView;
    procedure CloseButtonClick(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scStyledForm1ChangeActive(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure CaptionLabelDblClick(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure CaptionLabelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CaptionLabelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CaptionLabelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scButton1Click(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scStyledForm1BeforeChangeScale(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scGPButton7Click(Sender: TObject);
    procedure Searchitem11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FOldBoundsRect: TRect;
    FMaximized: Boolean;
    FDown: Boolean;
    FDownP: TPoint;
    FShowing: Boolean;
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
  MaxButton.GlyphOptions.Kind := scgpbgkMaximize;
  scGPSizeBox1.Visible := True;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i, j, k: Integer;
  S: String;
begin
  FShowing := True;
  scListView1.Items.BeginUpdate;
  for i := 1 to 20 do
  begin
    scListView1.AddItem('Song ' + IntToStr(i), nil);
    j := 2 + Random(7);
    k := 10 + Random(50);
    S := '0' + IntToStr(j)+ ':' + IntToStr(k);
    scListView1.Items[i - 1].SubItems.Add(S);
    scListView1.Items[i - 1].SubItems.Add('Artist' + IntToStr(i));
    scListView1.Items[i - 1].SubItems.Add('My album');
  end;
  scListView1.Items.EndUpdate;
  scListView1.ItemIndex := 6;
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

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  MaxButton.Left := CloseButton.Left;
end;

procedure TForm1.scGPButton7Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.CaptionLabelDblClick(Sender: TObject);
begin
   if FMaximized then
    DoRestore
  else
    DoMaximize;
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

procedure TForm1.scStyledForm1ChangeActive(Sender: TObject);
begin
  if not FShowing then
    if Active then
    begin
      CaptionLabel.Font.Color := clWhite;
      CloseButton.GlyphOptions.NormalColorAlpha := 230;
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
  FShowing := False;
end;

procedure TForm1.scStyledForm1BeforeChangeScale(Sender: TObject);
begin
  // avoid Delphi bug with Constrains when DPI chnaged
  Form1.Constraints.MinWidth := 0;
  Form1.Constraints.MinHeight := 0;
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  // avoid Delphi bug with Constrains when DPI chnaged
  Form1.Constraints.MinWidth := Round(700 * scStyledForm1.ScaleFactor);
  Form1.Constraints.MinHeight := Round(300 * scStyledForm1.ScaleFactor);
end;

procedure TForm1.Searchitem11Click(Sender: TObject);
begin
  scGPEdit1.Text := TMenuItem(Sender).Caption;
end;

end.
