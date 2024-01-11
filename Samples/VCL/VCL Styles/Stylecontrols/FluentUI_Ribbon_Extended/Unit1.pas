unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyledForm, scControls, scGPControls,
  scGPExtControls, scGPPagers, Vcl.Menus, Vcl.ComCtrls, scStyleManager, Vcl.Themes,
  scExtControls, scModernControls, scAdvancedControls, Vcl.StdCtrls, Vcl.Mask,
  System.Types, scDrawUtils, scGPImages, Vcl.ImgList, System.ImageList,
  scImageCollection, ShellApi, scGPFontControls, scGPMeters;

type
  TForm1 = class(TForm)
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
    scGPImageCollection1: TscGPImageCollection;
    scGPVirtualImageList1: TscGPVirtualImageList;
    PopupMenu2: TPopupMenu;
    Item11: TMenuItem;
    Item21: TMenuItem;
    Item31: TMenuItem;
    BorderPanel: TscGPPanel;
    scPageViewer1: TscPageViewer;
    scPageViewerPage1: TscPageViewerPage;
    ClientPanel: TscGPPanel;
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
    scLabel1: TscGPLabel;
    scGPToolPager1: TscGPToolPager;
    scGPGlyphButton7: TscGPGlyphButton;
    scGPGlyphButton8: TscGPGlyphButton;
    MenuButton: TscGPButton;
    scGPToolPagerPage3: TscGPToolPagerPage;
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
    scGPPanel3: TscGPPanel;
    scGPSizeBox1: TscGPSizeBox;
    scGPLabel1: TscGPLabel;
    scPageViewerPage2: TscPageViewerPage;
    scGPPanel5: TscGPPanel;
    BackButton: TscGPGlyphButton;
    scGPCharGlyphButton4: TscGPCharGlyphButton;
    scGPCharGlyphButton2: TscGPCharGlyphButton;
    scGPCharGlyphButton5: TscGPCharGlyphButton;
    scGPCharGlyphButton1: TscGPCharGlyphButton;
    ClientPanel2: TscPanel;
    scPageViewer2: TscPageViewer;
    scPageViewerPage3: TscPageViewerPage;
    scLabel12: TscLabel;
    scAdvancedListBox1: TscAdvancedListBox;
    scPanel1: TscPanel;
    scGPCharGlyphButton3: TscGPCharGlyphButton;
    scGPCharGlyphButton6: TscGPCharGlyphButton;
    scGPPanel1: TscGPPanel;
    CloseButton2: TscGPGlyphButton;
    MinButton2: TscGPGlyphButton;
    scGPGlyphButton12: TscGPGlyphButton;
    MaxButton2: TscGPGlyphButton;
    scGPLabel2: TscGPLabel;
    scPageViewerPage4: TscPageViewerPage;
    scPageViewerPage5: TscPageViewerPage;
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    scLabel4: TscLabel;
    scComboBox1: TscComboBox;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scGPLabel3: TscGPLabel;
    scCheckBox4: TscCheckBox;
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
    procedure MenuButtonClick(Sender: TObject);
    procedure BackButtonClick(Sender: TObject);
    procedure scGPCharGlyphButton1Click(Sender: TObject);
    procedure scGPCharGlyphButton4Click(Sender: TObject);
    procedure scGPCharGlyphButton2Click(Sender: TObject);
    procedure scGPCharGlyphButton5Click(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FW, FH: Integer;
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
var
  I: Integer;
begin
  for I := Low(TStyleManager.StyleNames) to High(TStyleManager.StyleNames) do
    scComboBox1.Items.Add(TStyleManager.StyleNames[I]);
  scComboBox1.ItemIndex := scComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);

  if not scStyledForm1.IsFluentUIAvailable or (scStyledForm1.FluentUIBackground = scfuibNone) then
  begin
    StyleElements := [seClient];
    SC_SetDrawTextModeInControl(scGPPanel2, scdtmGDI);
    SC_SetDrawTextModeInControl(scGPPanel3, scdtmGDI);
    SC_SetDrawTextModeInControl(scGPPanel5, scdtmGDI);
    scGPPanel5.TransparentBackground := False;
    scGPPanel2.TransparentBackground := False;
    scGPPanel2.FillColorAlpha := 255;
    scGPPanel5.FillColorAlpha := 255;
    scPageViewerPage1.Color := clWindow;
    scPageViewerPage2.Color := clWindow;
    BorderPanel.FillColor := clWindow;
    BorderPanel.FillColorAlpha := 255;
    BorderPanel.FrameWidth := 1;
    BorderPanel.FrameColorAlpha := 255;
    scCheckBox1.Visible := False;
    ClientPanel.FluentUIOpaque := False;
    ClientPanel2.FluentUIOpaque := False;
  end;

  FW := 0;
  FH := 0;
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

procedure TForm1.BackButtonClick(Sender: TObject);
begin
  if (scStyledForm1.IsFluentUIEnabled) and ((FW <> Width) or (FH <> Height)) then
    ClientPanel.Visible := False;
  scPageViewer1.PageIndex := 0;
  if (scStyledForm1.IsFluentUIEnabled) and ((FW <> Width) or (FH <> Height)) then
    ClientPanel.Visible := True;
  begin
    FW := Width;
    FH := Height;
  end;
end;

procedure TForm1.MenuButtonClick(Sender: TObject);
begin
  if (scStyledForm1.IsFluentUIEnabled) and ((FW <> Width) or (FH <> Height)) then
    ClientPanel2.Visible := False;
  scPageViewer1.PageIndex := 1;
  if (scStyledForm1.IsFluentUIEnabled) and ((FW <> Width) or (FH <> Height)) then
  begin
    ClientPanel2.Visible := True;
    FW := Width;
    FH := Height;
  end;
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
      scGPPanel2.TransparentBackground := True;
      scGPPanel3.TransparentBackground := True;
      scGPPanel5.TransparentBackground := True;
      scGPPanel2.FillColorAlpha := 150;
      scGPPanel3.FillColorAlpha := 150;
      scGPPanel5.FillColorAlpha := 150;
      ClientPanel.FluentUIOpaque := True;
      ClientPanel2.FluentUIOpaque := True;
      BorderPanel.FillColor := clBlack;
      scPageViewerPage1.Color := clBlack;
      scPageViewerPage2.Color := clBlack;
      BorderPanel.FrameWidth := 0;
      SC_SetDrawTextModeInControl(scGPPanel2, scdtmGDIPlus);
      SC_SetDrawTextModeInControl(scGPPanel3, scdtmGDIPlus);
      SC_SetDrawTextModeInControl(scGPPanel5, scdtmGDIPlus);
      BorderPanel.SetRedraw(True);
      scStyledForm1.FluentUIBackground := scfuibAcrylic;
      scCheckBox1.SetFocus;
    end
    else
    begin
      BorderPanel.SetRedraw(False);
      ClientPanel.FluentUIOpaque := False;
      ClientPanel2.FluentUIOpaque := False;
      BorderPanel.FillColor := clWindow;
      scPageViewerPage1.Color := clWindow;
      scPageViewerPage2.Color := clWindow;
      SC_SetDrawTextModeInControl(scGPPanel2, scdtmGDI);
      SC_SetDrawTextModeInControl(scGPPanel3, scdtmGDI);
      SC_SetDrawTextModeInControl(scGPPanel5, scdtmGDI);
      scGPPanel2.TransparentBackground := False;
      scGPPanel3.TransparentBackground := False;
      scGPPanel5.TransparentBackground := False;
      scGPPanel2.FillColorAlpha := 255;
      scGPPanel3.FillColorAlpha := 255;
      scGPPanel5.FillColorAlpha := 255;
      BorderPanel.FrameWidth := 1;
      BorderPanel.SetRedraw(True);
      Color := scDrawUtils.GetStyleColor(clBtnFace);
      scStyledForm1.FluentUIBackground := scfuibNone;
      scCheckBox1.SetFocus;
    end;
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  scStyledForm1.FluentUIInactiveAcrylicColorOpaque := scCheckBox2.Checked;
end;

procedure TForm1.scCheckBox4Click(Sender: TObject);
begin
  MenuButton.FluentLightEffect := scCheckBox4.Checked;
  scGPButton1.FluentLightEffect := scCheckBox4.Checked;
  scGPButton2.FluentLightEffect := scCheckBox4.Checked;
  scGPButton3.FluentLightEffect := scCheckBox4.Checked;
  scGPButton4.FluentLightEffect := scCheckBox4.Checked;
  scGPButton5.FluentLightEffect := scCheckBox4.Checked;
  scGPButton6.FluentLightEffect := scCheckBox4.Checked;
  scGPButton7.FluentLightEffect := scCheckBox4.Checked;
  BackButton.FluentLightEffect := scCheckBox4.Checked;
  scGPCharGlyphButton1.FluentLightEffect := scCheckBox4.Checked;
  scGPCharGlyphButton2.FluentLightEffect := scCheckBox4.Checked;
  scGPCharGlyphButton4.FluentLightEffect := scCheckBox4.Checked;
  scGPCharGlyphButton5.FluentLightEffect := scCheckBox4.Checked;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
  if scStyledForm1.FluentUIBackground = scfuibNone then
    Color := scDrawUtils.GetStyleColor(clBtnFace);
end;

procedure TForm1.scGPButton7Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scGPCharGlyphButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPCharGlyphButton2Click(Sender: TObject);
begin
  scPageViewer2.PageIndex := 1;
end;

procedure TForm1.scGPCharGlyphButton4Click(Sender: TObject);
begin
  scPageViewer2.PageIndex := 0;
end;

procedure TForm1.scGPCharGlyphButton5Click(Sender: TObject);
begin
  scPageViewer2.PageIndex := 2;
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
      MaxButton2.GlyphOptions.Kind := scgpbgkMaximize;
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
    MaxButton.GlyphOptions.NormalColorAlpha := 190;
    MinButton2.GlyphOptions.NormalColorAlpha := 190;
    MaxButton2.GlyphOptions.NormalColorAlpha := 190;
    CloseButton2.GlyphOptions.NormalColorAlpha := 255;
  end
  else
  begin
    scLabel1.Font.Color := clGray;
    CloseButton.GlyphOptions.NormalColorAlpha := 150;
    MinButton.GlyphOptions.NormalColorAlpha := 120;
    MaxButton.GlyphOptions.NormalColorAlpha := 120;
    CloseButton2.GlyphOptions.NormalColorAlpha := 150;
    MinButton2.GlyphOptions.NormalColorAlpha := 120;
    MaxButton2.GlyphOptions.NormalColorAlpha := 120;
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
  MaxButton2.GlyphOptions.Kind := scgpbgkRestore;
  scGPSizeBox1.Visible := False;
  BorderPanel.Sizeable := False;
end;

procedure TForm1.scStyledForm1DWMClientRestore(Sender: TObject);
begin
  MaxButton.GlyphOptions.Kind := scgpbgkMaximize;
  MaxButton2.GlyphOptions.Kind := scgpbgkMaximize;
  scGPSizeBox1.Visible := True;
  BorderPanel.Sizeable := True;
  if (scStyledForm1.FluentUIBackground <> scfuibNone) and (scPageViewer1.PageIndex = 0) then
    scGPPanel4.Repaint;
end;

end.
