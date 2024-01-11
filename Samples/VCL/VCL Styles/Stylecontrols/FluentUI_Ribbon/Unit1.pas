unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyledForm, scControls, scGPControls,
  scGPExtControls, scGPPagers, Vcl.Menus, Vcl.ComCtrls, scStyleManager, Vcl.Themes,
  scExtControls, scModernControls, scAdvancedControls, Vcl.StdCtrls, Vcl.Mask,
  System.Types, scDrawUtils, scGPImages, Vcl.ImgList, System.ImageList,
  scImageCollection, ShellApi;

type
  TForm1 = class(TForm)
    BorderPanel: TscGPPanel;
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
    scGPImageCollection1: TscGPImageCollection;
    scGPVirtualImageList1: TscGPVirtualImageList;
    scGPPanel2: TscGPPanel;
    scGPPanel4: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    scGPGlyphButton2: TscGPGlyphButton;
    scGPGlyphButton3: TscGPGlyphButton;
    scGPGlyphButton4: TscGPGlyphButton;
    MaxButton: TscGPGlyphButton;
    scGPGlyphButton1: TscGPGlyphButton;
    scGPGlyphButton5: TscGPGlyphButton;
    scGPGlyphButton6: TscGPGlyphButton;
    scGPToolPager1: TscGPToolPager;
    scGPGlyphButton7: TscGPGlyphButton;
    scGPGlyphButton8: TscGPGlyphButton;
    MenuButton: TscGPButton;
    scGPToolPagerPage2: TscGPToolPagerPage;
    scGPToolPagerPage1: TscGPToolPagerPage;
    scGPToolGroupPanel1: TscGPToolGroupPanel;
    scGPButton5: TscGPButton;
    scGPButton6: TscGPButton;
    scGPButton7: TscGPButton;
    scGPToolGroupPanel2: TscGPToolGroupPanel;
    scGPButton3: TscGPButton;
    scGPButton4: TscGPButton;
    scGPToolGroupPanel3: TscGPToolGroupPanel;
    scGPButton1: TscGPButton;
    scGPButton2: TscGPButton;
    PopupMenu2: TPopupMenu;
    Item11: TMenuItem;
    Item21: TMenuItem;
    Item31: TMenuItem;
    scLabel1: TscGPLabel;
    ClientPanel: TscPanel;
    scGPLabel1: TscGPLabel;
    scGPToolPagerPage3: TscGPToolPagerPage;
    scCheckBox1: TscCheckBox;
    scGPImageCollection2: TscGPImageCollection;
    procedure CloseButtonClick(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scStyledForm1ChangeActive(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure scLabel1DblClick(Sender: TObject);
    procedure scLabel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure scLabel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scLabel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scStyledForm1BeforeChangeScale(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scGPButton7Click(Sender: TObject);
    procedure scStyledForm1DWMClientMaximize(Sender: TObject);
    procedure scStyledForm1DWMClientRestore(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  if not scStyledForm1.IsFluentUIAvailable or (scStyledForm1.FluentUIBackground = scfuibNone) then
  begin
    SC_SetDrawTextModeInControl(scGPPanel2, scdtmGDI);
    SC_SetDrawTextModeInControl(scGPPanel3, scdtmGDI);
    BorderPanel.FillColor := clWindow;
    BorderPanel.FillColorAlpha := 255;
    BorderPanel.FrameWidth := 1;
    BorderPanel.FrameColorAlpha := 255;
    ClientPanel.FluentUIOpaque := False;
    scCheckBox1.Visible := False;
  end;
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

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  if scStyledForm1.IsFluentUIAvailable then
    if scCheckBox1.Checked then
    begin
      BorderPanel.SetRedraw(False);
      BorderPanel.FillColor := clBlack;
      BorderPanel.FrameWidth := 0;
      scGPPanel2.TransparentBackground := True;
      scGPPanel3.TransparentBackground := True;
      scGPPanel2.FillColorAlpha := 100;
      scGPPanel3.FillColorAlpha := 100;
      ClientPanel.FluentUIOpaque := True;
      SC_SetDrawTextModeInControl(scGPPanel2, scdtmGDIPlus);
      SC_SetDrawTextModeInControl(scGPPanel3, scdtmGDIPlus);
      BorderPanel.SetRedraw(True);
      scStyledForm1.FluentUIBackground := scfuibAcrylic;
    end
    else
    begin
      BorderPanel.SetRedraw(False);
      BorderPanel.FillColor := clWindow;
      ClientPanel.FluentUIOpaque := False;
      BorderPanel.FrameWidth := 1;
      SC_SetDrawTextModeInControl(scGPPanel2, scdtmGDI);
      SC_SetDrawTextModeInControl(scGPPanel3, scdtmGDI);
      scGPPanel2.TransparentBackground := False;
      scGPPanel3.TransparentBackground := False;
      scGPPanel2.FillColorAlpha := 255;
      scGPPanel3.FillColorAlpha := 255;
      BorderPanel.SetRedraw(True);
      Color := clBtnFace;
      scStyledForm1.FluentUIBackground := scfuibNone;
    end;
end;

procedure TForm1.scGPButton7Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scLabel1DblClick(Sender: TObject);
begin
  if scStyledForm1.IsDWMClientMaximized then
    scStyledForm1.DWMClientRestore
  else
    scStyledForm1.DWMClientMaximize;
end;

procedure TForm1.scLabel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if (Button = mbLeft) and not (ssDouble in Shift) and scStyledForm1.IsDWMClientMaximized then
   scStyledForm1.DWMClientStartDrag;
end;

procedure TForm1.scLabel1MouseMove(Sender: TObject; Shift: TShiftState; X,
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

procedure TForm1.scLabel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  scStyledForm1.DWMClientEndDrag;
end;

procedure TForm1.scStyledForm1ChangeActive(Sender: TObject);
begin
  if Active then
  begin
    scLabel1.Font.Color := clWindowText;
    CloseButton.GlyphOptions.NormalColorAlpha := 255;
    MinButton.GlyphOptions.NormalColorAlpha := 190;
    MaxButton.GlyphOptions.NormalColorAlpha := 190;
  end
  else
  begin
    scLabel1.Font.Color := clGray;
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
  Form1.Constraints.MinWidth := scStyledForm1.ScaleInt(800);
  Form1.Constraints.MinHeight := scStyledForm1.ScaleInt(300);
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
  if scStyledForm1.FluentUIBackground <> scfuibNone then
    scGPPanel4.Repaint;
end;

end.
