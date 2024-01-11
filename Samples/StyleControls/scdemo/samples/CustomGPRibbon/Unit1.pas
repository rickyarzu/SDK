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
    scGPPanel2: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
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
    scStyleManager1: TscStyleManager;
    scGPGlyphButton2: TscGPGlyphButton;
    scGPGlyphButton3: TscGPGlyphButton;
    scGPGlyphButton4: TscGPGlyphButton;
    scGPPanel3: TscGPPanel;
    MaxButton: TscGPGlyphButton;
    scGPSizeBox1: TscGPSizeBox;
    scLabel10: TscLabel;
    scGPToolPager1: TscGPToolPager;
    scGPToolPagerPage1: TscGPToolPagerPage;
    scGPToolPagerPage2: TscGPToolPagerPage;
    scGPToolPagerPage3: TscGPToolPagerPage;
    scGPGlyphButton1: TscGPGlyphButton;
    scGPGlyphButton5: TscGPGlyphButton;
    scGPGlyphButton6: TscGPGlyphButton;
    scGPToolGroupPanel1: TscGPToolGroupPanel;
    scGPToolGroupPanel2: TscGPToolGroupPanel;
    scGPToolGroupPanel3: TscGPToolGroupPanel;
    scGPImageCollection1: TscGPImageCollection;
    scGPVirtualImageList1: TscGPVirtualImageList;
    scGPButton1: TscGPButton;
    scGPButton2: TscGPButton;
    scGPButton3: TscGPButton;
    scGPButton4: TscGPButton;
    scGPButton5: TscGPButton;
    scGPButton6: TscGPButton;
    scGPButton7: TscGPButton;
    PopupMenu2: TPopupMenu;
    Item11: TMenuItem;
    Item21: TMenuItem;
    Item31: TMenuItem;
    scLabel2: TscLabel;
    scLabel5: TscLabel;
    scLabel6: TscLabel;
    scLabel3: TscLabel;
    scGPGlyphButton7: TscGPGlyphButton;
    scLabel28: TscLabel;
    scLabel4: TscLabel;
    scButton10: TscButton;
    scGPGlyphButton8: TscGPGlyphButton;
    MenuButton: TscGPButton;
    scGPPanel4: TscGPPanel;
    scGPEdit1: TscGPEdit;
    procedure CloseButtonClick(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scStyledForm1ChangeActive(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure scLabel1DblClick(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scLabel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure scLabel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scLabel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scButton1Click(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scStyledForm1BeforeChangeScale(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scGPButton7Click(Sender: TObject);
    procedure MenuButtonDropDown(Sender: TObject);
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
  Uses Unit2;

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

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
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

procedure TForm1.MenuButtonDropDown(Sender: TObject);
begin
  AppPagerForm.scStyledForm1.DropDown(MenuButton);
end;

procedure TForm1.scLabel1DblClick(Sender: TObject);
begin
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

procedure TForm1.scStyledForm1BeforeChangeScale(Sender: TObject);
begin
  // avoid Delphi bug with Constrains when DPI chnaged
  Form1.Constraints.MinWidth := 0;
  Form1.Constraints.MinHeight := 0;
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);
  // avoid Delphi bug with Constrains when DPI chnaged
  Form1.Constraints.MinWidth := Round(700 * scStyledForm1.ScaleFactor);
  Form1.Constraints.MinHeight := Round(300 * scStyledForm1.ScaleFactor);
end;

end.
