unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scModernControls,
  Vcl.StdCtrls, scExtControls, scStyledForm, scStyleManager,
  Vcl.ExtCtrls, scImageCollection, ShellApi, Vcl.Mask,
  scAdvancedControls, scHint, scDrawUtils, scGPImages,
  scGPControls, scGPExtControls, Vcl.Menus, scGPFontControls, scGPPagers, Vcl.Themes;

type
  TForm1 = class(TForm)
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    scGPImageCollection1: TscGPImageCollection;
    BorderPanel: TscGPPanel;
    ClientPanel: TscPanel;
    scGPPanel15: TscGPPanel;
    PageLabel: TscLabel;
    scGPPanel2: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    CaptionLabel: TscLabel;
    MaxButton: TscGPGlyphButton;
    scGPPanel3: TscGPPanel;
    scGPSizeBox1: TscGPSizeBox;
    scLabel3: TscLabel;
    scPageViewer1: TscPageViewer;
    scPageViewerPage2: TscPageViewerPage;
    scPageViewerPage3: TscPageViewerPage;
    scPageViewerPage4: TscPageViewerPage;
    scPageViewerPage5: TscPageViewerPage;
    scPageViewerPage6: TscPageViewerPage;
    scPageViewerPage1: TscPageViewerPage;
    scLabel2: TscLabel;
    scLabel4: TscLabel;
    scPanel4: TscPanel;
    scGPPanel4: TscGPPanel;
    scGPCharGlyphButton1: TscGPCharGlyphButton;
    scGPCharGlyphButton2: TscGPCharGlyphButton;
    scGPCharGlyphButton5: TscGPCharGlyphButton;
    scGPPanel11: TscGPPanel;
    scGPImage1: TscGPImage;
    scGPPanel5: TscGPPanel;
    scGPLabel1: TscGPLabel;
    scGPLabel2: TscGPLabel;
    scGPLabel3: TscGPLabel;
    scGPLabel4: TscGPLabel;
    scGPSwitch1: TscGPSwitch;
    scGPSwitch2: TscGPSwitch;
    scGPTrackBar1: TscGPTrackBar;
    scGPCharGlyphButton3: TscGPCharGlyphButton;
    scGPCharGlyphButton4: TscGPCharGlyphButton;
    scGPCharGlyphButton6: TscGPCharGlyphButton;
    scGPCharGlyphButton7: TscGPCharGlyphButton;
    scGPComboBox4: TscGPComboBox;
    scGPCheckBox1: TscGPCheckBox;
    scGPButton1: TscGPButton;
    scGPButton2: TscGPButton;
    scGPButton3: TscGPButton;
    scGPButton4: TscGPButton;
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
    procedure Exit1Click(Sender: TObject);
    procedure scStyledForm1DWMClientMaximize(Sender: TObject);
    procedure scStyledForm1DWMClientRestore(Sender: TObject);
    procedure scGPCharGlyphButton1Click(Sender: TObject);
    procedure scGPCharGlyphButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scGPComboBox4Change(Sender: TObject);
    procedure scGPCheckBox1Click(Sender: TObject);
    procedure scGPButton2Click(Sender: TObject);
    procedure scGPButton4Click(Sender: TObject);
    procedure scGPButton3Click(Sender: TObject);
    procedure scGPButton1Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation
  Uses MessageUnit, Unit2;

{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  I: Integer;
  Item: TscGPListBoxItem;
begin
  if not scStyledForm1.IsFluentUIAvailable or (scStyledForm1.FluentUIBackground = scfuibNone) then
  begin
    StyleElements := [seClient];
    scControls.SC_SetDrawTextModeInControl(scGPPanel4, scdtmGDI);
    ClientPanel.FluentUIOpaque := False;
    BorderPanel.FrameWidth := 1;
    BorderPanel.FillColor := clBtnFace;
    scGPPanel4.TransparentBackground := False;
    scGPCheckBox1.Visible := False;
    scGPPanel4.FillColorAlpha := 255;
  end;
  for I := Low(TStyleManager.StyleNames) to High(TStyleManager.StyleNames) do
  begin
    Item := scGPComboBox4.Items.Add;
    Item.Caption := TStyleManager.StyleNames[I];
  end;
  scGPComboBox4.Sort;
  scGPComboBox4.InitItemIndex(scGPComboBox4.IndexOfCaption(TStyleManager.ActiveStyle.Name));
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
      MaxButton.GlyphOptions.Kind := scgpbgkMaximizeRect;
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

procedure TForm1.scGPButton1Click(Sender: TObject);
begin
  if not Assigned(Form2) then
    Form2 := TForm2.Create(Application);
  Form2.Show;
end;

procedure TForm1.scGPButton2Click(Sender: TObject);
begin
  UWPInfoMessage('UWP Message Form', 'Info message text');
end;

procedure TForm1.scGPButton3Click(Sender: TObject);
begin
  if UWPQuestionMessage('UWP Message Caption', 'Question message text') = mrOK then
    scGPButton3.Caption := 'Show Question Message (Ok)'
  else
    scGPButton3.Caption := 'Show Question Message';
end;

procedure TForm1.scGPButton4Click(Sender: TObject);
begin
   UWPErrorMessage('UWP Message Form', 'Error message text');
end;

procedure TForm1.scGPCharGlyphButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPCharGlyphButton3Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := TControl(Sender).Tag;
  PageLabel.Caption := TscGPCharGlyphButton(Sender).Caption;
end;

procedure TForm1.scGPCheckBox1Click(Sender: TObject);
begin
  if scStyledForm1.IsFluentUIAvailable then
    if scGPCheckBox1.Checked then
    begin
      scControls.SC_SetDrawTextModeInControl(scGPPanel4, scdtmGDIPlus);
      BorderPanel.FillColor := clBlack;
      ClientPanel.FluentUIOpaque := True;
      scStyledForm1.FluentUIBackground := scfuibAcrylic;
      BorderPanel.FrameWidth := 0;
      scGPPanel4.FillColorAlpha := 150;
      scGPPanel4.TransparentBackground := True;
      scGPCheckBox1.SetFocus;
    end
    else
    begin
      scControls.SC_SetDrawTextModeInControl(scGPPanel4, scdtmGDI);
      ClientPanel.FluentUIOpaque := False;
      BorderPanel.FrameWidth := 1;
      BorderPanel.FillColor := clBtnFace;
      scGPPanel4.FillColorAlpha := 255;
      scGPPanel4.TransparentBackground := False;
      Color := scDrawUtils.GetStyleColor(clBtnFace);
      scStyledForm1.FluentUIBackground := scfuibNone;
      scGPCheckBox1.SetFocus;
    end;
end;

procedure TForm1.scGPComboBox4Change(Sender: TObject);
begin
  TStyleManager.SetStyle(scGPComboBox4.Items[scGPComboBox4.ItemIndex].Caption);
  if scStyledForm1.FluentUIBackground = scfuibNone then
    Color := scDrawUtils.GetStyleColor(clBtnFace);
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
    CaptionLabel.Font.Color := clWindowText;
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
  Form1.Constraints.MinWidth := scStyledForm1.ScaleInt(700);
  Form1.Constraints.MinHeight := scStyledForm1.ScaleInt(700);
end;

procedure TForm1.scStyledForm1DWMClientMaximize(Sender: TObject);
begin
  MaxButton.GlyphOptions.Kind := scgpbgkRestoreRect;
  scGPSizeBox1.Visible := False;
end;

procedure TForm1.scStyledForm1DWMClientRestore(Sender: TObject);
begin
  MaxButton.GlyphOptions.Kind := scgpbgkMaximizeRect;
  scGPSizeBox1.Visible := True;
end;

end.
