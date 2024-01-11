unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scModernControls,
  Vcl.StdCtrls, scExtControls, scStyledForm, scStyleManager,
  Vcl.ExtCtrls, scImageCollection, ShellApi, Vcl.Mask,
  scAdvancedControls, scHint, scDrawUtils, scGPImages,
  scGPControls, scGPExtControls, Vcl.Menus, scGPFontControls, scGPPagers, Vcl.Themes,
  System.ImageList, Vcl.ImgList, Vcl.VirtualImageList, Vcl.BaseImageCollection,
  Vcl.ImageCollection;

type
  TForm1 = class(TForm)
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    BorderPanel: TscGPPanel;
    ClientPanel: TscPanel;
    scGPPanel2: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    CaptionLabel: TscLabel;
    MaxButton: TscGPGlyphButton;
    scGPPanel4: TscGPPanel;
    scGPPanel3: TscGPPanel;
    scGPSizeBox1: TscGPSizeBox;
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
    scComboBox1: TscComboBox;
    scPageViewer1: TscPageViewer;
    scPageViewerPage1: TscPageViewerPage;
    scPageViewerPage2: TscPageViewerPage;
    scPageViewerPage4: TscPageViewerPage;
    scLabel28: TscLabel;
    scLabel13: TscLabel;
    scButton10: TscButton;
    scLabel14: TscLabel;
    scPageViewerPage3: TscPageViewerPage;
    scButton1: TscButton;
    scButton2: TscButton;
    scButton3: TscButton;
    scButton4: TscButton;
    scLabel1: TscLabel;
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    scGPPanel1: TscGPPanel;
    scGPPanel15: TscGPPanel;
    MenuButton: TscGPGlyphButton;
    scCheckBox1: TscCheckBox;
    scGPImageCollection1: TscGPImageCollection;
    scCheckBox2: TscCheckBox;
    scCheckBox3: TscCheckBox;
    scCheckBox4: TscCheckBox;
    scGPToggleSwitch1: TscGPToggleSwitch;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    scGPButton1: TscGPButton;
    ExitButton: TscGPButton;
    scGPButton3: TscGPButton;
    scGPButton4: TscGPButton;
    scGPButton2: TscGPButton;
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
    procedure Exit1Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scStyledForm1DWMClientMaximize(Sender: TObject);
    procedure scStyledForm1DWMClientRestore(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scButton1Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scButton3Click(Sender: TObject);
    procedure scButton4Click(Sender: TObject);
    procedure scComboBox1Change(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scGPToggleSwitch1ChangeState(Sender: TObject);
    procedure scGPButton1Click(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, MessageUnit;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  if not scStyledForm1.IsFluentUIAvailable or (scStyledForm1.FluentUIBackground = scfuibNone) then
  begin
    StyleElements := [seClient];
    BorderPanel.FrameWidth := 1;
    SC_SetDrawTextModeInControl(scGPPanel1, scdtmGDI);
    scGPPanel1.FillColorAlpha := 200;
    scGPPanel1.TransparentBackground := False;
    scCheckBox1.Visible := False;
    BorderPanel.FillColor := clBtnFace;
    ClientPanel.FluentUIOpaque := False;
  end;
  for I := Low(TStyleManager.StyleNames) to High(TStyleManager.StyleNames) do
    scComboBox1.Items.Add(TStyleManager.StyleNames[I]);
  scComboBox1.ItemIndex := scComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);

  if IsWindows11 then
   scGPToggleSwitch1.State := scswOn;
end;

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

procedure TForm1.scButton1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.scButton2Click(Sender: TObject);
begin
  UWPInfoMessage('UWP Message Form', 'Info message text');
end;

procedure TForm1.scButton3Click(Sender: TObject);
begin
  UWPErrorMessage('UWP Message Form', 'Error message text');
end;

procedure TForm1.scButton4Click(Sender: TObject);
begin
  if UWPQuestionMessage('UWP Message Caption', 'Question message text') = mrOK then
    scButton4.Caption := 'Show Question Message (Ok)'
  else
    scButton4.Caption := 'Show Question Message';
 end;

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
   if scStyledForm1.IsFluentUIAvailable then
     if scCheckBox1.Checked then
     begin
       BorderPanel.FillColor := clBlack;
       BorderPanel.FrameWidth := 0;
       ClientPanel.FluentUIOpaque := True;
       SC_SetDrawTextModeInControl(scGPPanel1, scdtmGDIPlus);
       scGPPanel1.FillColorAlpha := 100;
       scGPPanel1.TransparentBackground := True;
       scStyledForm1.FluentUIBackground := scfuibAcrylic;
       scCheckBox1.SetFocus;
     end
     else
     begin
       BorderPanel.FrameWidth := 1;
       BorderPanel.FillColor := clBtnFace;
       ClientPanel.FluentUIOpaque := False;
       SC_SetDrawTextModeInControl(scGPPanel1, scdtmGDI);
       scGPPanel1.FillColorAlpha := 200;
       scGPPanel1.TransparentBackground := False;
       Color := scDrawUtils.GetStyleColor(clBtnFace);
       scStyledForm1.FluentUIBackground := scfuibNone;
       scCheckBox1.SetFocus;
     end;
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  if scCheckBox2.Checked then
    scGPPanel1.CustomImageIndex := 0
  else
    scGPPanel1.CustomImageIndex := -1;
end;

procedure TForm1.scCheckBox3Click(Sender: TObject);
begin
  scStyledForm1.FluentUIInactiveAcrylicColorOpaque := scCheckBox3.Checked;
end;

procedure TForm1.scCheckBox4Click(Sender: TObject);
begin
  MenuButton.FluentLightEffect := scCheckBox4.Checked;
  ExitButton.FluentLightEffect := scCheckBox4.Checked;
  scGPButton1.FluentLightEffect := scCheckBox4.Checked;
  scGPButton2.FluentLightEffect := scCheckBox4.Checked;
  scGPButton3.FluentLightEffect := scCheckBox4.Checked;
  scGPButton4.FluentLightEffect := scCheckBox4.Checked;
end;

procedure TForm1.scComboBox1Change(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
  if scStyledForm1.FluentUIBackground = scfuibNone then
    Color := scDrawUtils.GetStyleColor(clBtnFace);
end;

procedure TForm1.scGPButton1Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := TControl(Sender).Tag;
  scGPPanel15.Caption := TscGPButton(Sender).Caption;
end;

procedure TForm1.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPToggleSwitch1ChangeState(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to scGPPanel1.ControlCount - 1 do
    if (scGPPanel1.Controls[I] is TscGPButton) then
       if scGPPanel1.Controls[I].Tag >= 0 then
       with TscGPButton(scGPPanel1.Controls[I]) do
       begin
         if scGPToggleSwitch1.IsOn then
         begin
           Options.ShapeStyle := scgpLeftRoundedLine;
           AlignWithMargins := True;
         end
         else
         begin
           if Tag > 0 then
             AlignWithMargins := False;
           Options.ShapeStyle := scgpLeftLine;
         end;
       end;

  if scGPToggleSwitch1.IsOn then
  begin
    scGPButton4.Margins.Left := scGPButton1.Margins.Left;
    scGPButton4.Margins.Right := scGPButton1.Margins.Right;
    MenuButton.Options.ShapeStyle := scgpTabBottom;
    ExitButton.Options.ShapeStyle := scgpRoundedRect;
    ExitButton.AlignWithMargins := True;
    scStyledForm1.DWMClientRoundedCornersType := scDWMRoundedCornersDefault;
  end
  else
  begin
    scGPButton4.Margins.Left := 0;
    scGPButton4.Margins.Right := 0;
    MenuButton.Options.ShapeStyle := scgpRect;
    ExitButton.Options.ShapeStyle := scgpRect;
    ExitButton.AlignWithMargins := False;
    scStyledForm1.DWMClientRoundedCornersType := scDWMRoundedCornersOff;
  end;

end;

procedure TForm1.CaptionLabelDblClick(Sender: TObject);
begin
  if scStyledForm1.IsDWMClientMaximized then
    scStyledForm1.DWMClientRestore
  else
    scStyledForm1.DWMClientMaximize;
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

procedure TForm1.scStyledForm1DWMClientMaximize(Sender: TObject);
begin
  BorderPanel.FrameColor := clBlack;
  MaxButton.GlyphOptions.Kind := scgpbgkRestore;
  scGPSizeBox1.Visible := False;
  BorderPanel.Sizeable := False;
end;

procedure TForm1.scStyledForm1DWMClientRestore(Sender: TObject);
begin
  BorderPanel.FrameColor := clHighLight;
  MaxButton.GlyphOptions.Kind := scgpbgkMaximize;
  scGPSizeBox1.Visible := True;
  BorderPanel.Sizeable := True;
end;

end.
