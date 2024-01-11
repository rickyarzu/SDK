unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyledForm, scControls, scGPControls,
  scGPExtControls, scGPPagers, Vcl.Menus, Vcl.ComCtrls, scStyleManager, Vcl.Themes,
  scExtControls, scModernControls, scAdvancedControls, Vcl.StdCtrls, Vcl.Mask,
  System.Types, scDrawUtils, scGPImages, Vcl.ImgList, System.ImageList,
  scImageCollection, ShellApi, scGPFontControls, Vcl.VirtualImageList,
  Vcl.BaseImageCollection, Vcl.ImageCollection;

type
  TForm1 = class(TForm)
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
    BorderPanel: TscGPPanel;
    scGPPanel2: TscGPPanel;
    scGPPanel4: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    MaxButton: TscGPGlyphButton;
    scGPGlyphButton1: TscGPGlyphButton;
    scGPGlyphButton6: TscGPGlyphButton;
    scLabel1: TscGPLabel;
    MenuButton: TscGPCharGlyphButton;
    scGPPanel6: TscGPPanel;
    scGPPanel3: TscGPPanel;
    scGPSizeBox1: TscGPSizeBox;
    scGPLabel1: TscGPLabel;
    PopupMenu1: TPopupMenu;
    OpenMediaFile1: TMenuItem;
    N3: TMenuItem;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    About1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    Print2: TMenuItem;
    Preview1: TMenuItem;
    New1: TMenuItem;
    scGPImageCollection1: TscGPImageCollection;
    ClientPanel: TscPanel;
    scPageViewer3: TscPageViewer;
    scPageViewerPage9: TscPageViewerPage;
    scPageViewerPage7: TscPageViewerPage;
    scPageViewerPage8: TscPageViewerPage;
    scPageViewerPage6: TscPageViewerPage;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scCheckBox3: TscCheckBox;
    scLabel4: TscLabel;
    scComboBox1: TscComboBox;
    scCheckBox4: TscCheckBox;
    scGPToggleSwitch1: TscGPToggleSwitch;
    scGPButton1: TscGPButton;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    scGPButton2: TscGPButton;
    scGPButton3: TscGPButton;
    scGPButton4: TscGPButton;
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
    procedure scButton10Click(Sender: TObject);
    procedure scGPButton7Click(Sender: TObject);
    procedure scStyledForm1DWMClientMaximize(Sender: TObject);
    procedure scStyledForm1DWMClientRestore(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scGPCharGlyphButton1Click(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scGPCharGlyphButton12Click(Sender: TObject);
    procedure scGPCharGlyphButton13Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scGPGlyphButton1Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scGPToggleSwitch1ChangeState(Sender: TObject);
    procedure scGPButton1Click(Sender: TObject);
    procedure scGPButton4Click(Sender: TObject);
    procedure scGPButton3Click(Sender: TObject);
    procedure scGPButton2Click(Sender: TObject);
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
    scGPPanel2.TransparentBackground := False;
    scGPPanel2.FillColorAlpha := 255;
    BorderPanel.FillColor := clWindow;
    BorderPanel.FillColorAlpha := 255;
    BorderPanel.FrameWidth := 1;
    BorderPanel.FrameColorAlpha := 255;
    scCheckBox1.Visible := False;
    ClientPanel.FluentUIOpaque := False;
  end;

  FW := 0;
  FH := 0;

  if IsWindows11 then
    scGPToggleSwitch1.State := scswOn;
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
      scGPPanel2.TransparentBackground := True;
      scGPPanel3.TransparentBackground := True;
      scGPPanel2.FillColorAlpha := 150;
      scGPPanel3.FillColorAlpha := 150;
      ClientPanel.FluentUIOpaque := True;
      BorderPanel.FillColor := clBlack;
      BorderPanel.FrameWidth := 0;
      SC_SetDrawTextModeInControl(scGPPanel2, scdtmGDIPlus);
      SC_SetDrawTextModeInControl(scGPPanel3, scdtmGDIPlus);
      BorderPanel.SetRedraw(True);
      scStyledForm1.FluentUIBackground := scfuibAcrylic;
      scCheckBox1.SetFocus;
    end
    else
    begin
      BorderPanel.SetRedraw(False);
      ClientPanel.FluentUIOpaque := False;
      BorderPanel.FillColor := clWindow;
      SC_SetDrawTextModeInControl(scGPPanel2, scdtmGDI);
      SC_SetDrawTextModeInControl(scGPPanel3, scdtmGDI);
      scGPPanel2.TransparentBackground := False;
      scGPPanel3.TransparentBackground := False;
      scGPPanel2.FillColorAlpha := 255;
      scGPPanel3.FillColorAlpha := 255;
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

procedure TForm1.scCheckBox3Click(Sender: TObject);
begin
  if scCheckBox3.Checked then
    scGPPanel2.CustomImageIndex := 0
  else
    scGPPanel2.CustomImageIndex := -1;
end;

procedure TForm1.scCheckBox4Click(Sender: TObject);
begin
  MenuButton.FluentLightEffect := scCheckBox4.Checked;
  scGPButton1.FluentLightEffect := scCheckBox4.Checked;
  scGPButton2.FluentLightEffect := scCheckBox4.Checked;
  scGPButton3.FluentLightEffect := scCheckBox4.Checked;
  scGPButton4.FluentLightEffect := scCheckBox4.Checked;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
  if scStyledForm1.FluentUIBackground = scfuibNone then
    Color := scDrawUtils.GetStyleColor(clBtnFace);
end;

procedure TForm1.scGPButton1Click(Sender: TObject);
begin
  scPageViewer3.PageIndex := 3;
end;

procedure TForm1.scGPButton2Click(Sender: TObject);
begin
  scPageViewer3.PageIndex := 2;
end;

procedure TForm1.scGPButton3Click(Sender: TObject);
begin
  scPageViewer3.PageIndex := 1;
end;

procedure TForm1.scGPButton4Click(Sender: TObject);
begin
  scPageViewer3.PageIndex := 0;
end;

procedure TForm1.scGPButton7Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scGPCharGlyphButton12Click(Sender: TObject);
begin
  scPageViewer3.PageIndex := 1;
end;

procedure TForm1.scGPCharGlyphButton13Click(Sender: TObject);
begin
  scPageViewer3.PageIndex := 3;
end;

procedure TForm1.scGPCharGlyphButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPGlyphButton1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scGPToggleSwitch1ChangeState(Sender: TObject);
var
  I: Integer;
begin
   for I := 0 to scGPPanel6.ControlCount - 1 do
    if (scGPPanel6.Controls[I] is TscGPButton) then
       with TscGPButton(scGPPanel6.Controls[I]) do
       begin
         if scGPToggleSwitch1.IsOn then
           Options.ShapeStyle := scgpBottomRoundedLine
         else
           Options.ShapeStyle := scgpBottomLine;
       end;
  if scGPToggleSwitch1.IsOn then
  begin
    MenuButton.Options.ShapeStyle := scgpBottomRoundedLine;
    scStyledForm1.DWMClientRoundedCornersType := scDWMRoundedCornersDefault;
  end
  else
  begin
    MenuButton.Options.ShapeStyle := scgpBottomLine;
    scStyledForm1.DWMClientRoundedCornersType := scDWMRoundedCornersOff;
  end;
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
