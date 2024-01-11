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
    BorderPanel: TscGPPanel;
    ClientPanel: TscPanel;
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
    scPageViewer1: TscPageViewer;
    scPageViewerPage1: TscPageViewerPage;
    scGPPanel5: TscGPPanel;
    scPageViewerPage2: TscPageViewerPage;
    scGPPanel6: TscGPPanel;
    scPageViewerPage3: TscPageViewerPage;
    scGPPanel7: TscGPPanel;
    scPageViewerPage4: TscPageViewerPage;
    scGPPanel8: TscGPPanel;
    scPageViewerPage5: TscPageViewerPage;
    scGPPanel9: TscGPPanel;
    scPageViewerPage6: TscPageViewerPage;
    scGPPanel10: TscGPPanel;
    scPageViewerPage7: TscPageViewerPage;
    scGPPanel12: TscGPPanel;
    scPageViewerPage8: TscPageViewerPage;
    scGPPanel13: TscGPPanel;
    scPageViewerPage9: TscPageViewerPage;
    scGPPanel14: TscGPPanel;
    scGPToggleSwitch1: TscGPToggleSwitch;
    scGPToggleSwitch2: TscGPToggleSwitch;
    scPageViewerPage11: TscPageViewerPage;
    scGPPanel16: TscGPPanel;
    scLabel28: TscLabel;
    scLabel13: TscLabel;
    scButton10: TscButton;
    scLabel14: TscLabel;
    scPageViewerPage10: TscPageViewerPage;
    scGPPanel15: TscGPPanel;
    scButton1: TscButton;
    scButton2: TscButton;
    scButton3: TscButton;
    scButton4: TscButton;
    scGPPanel1: TscGPPanel;
    scGPPageViewer1: TscGPPageViewer;
    scGPPageViewerPage1: TscGPPageViewerPage;
    scGPCharGlyphButton6: TscGPCharGlyphButton;
    scGPCharGlyphButton7: TscGPCharGlyphButton;
    scGPCharGlyphButton8: TscGPCharGlyphButton;
    scGPCharGlyphButton9: TscGPCharGlyphButton;
    scGPPageViewerPage2: TscGPPageViewerPage;
    scGPCharGlyphButton10: TscGPCharGlyphButton;
    scGPCharGlyphButton11: TscGPCharGlyphButton;
    scGPCharGlyphButton12: TscGPCharGlyphButton;
    scGPPageViewerPage3: TscGPPageViewerPage;
    scGPCharGlyphButton13: TscGPCharGlyphButton;
    scGPCharGlyphButton14: TscGPCharGlyphButton;
    scGPCharGlyphButton15: TscGPCharGlyphButton;
    scGPCharGlyphButton16: TscGPCharGlyphButton;
    scGPPanel11: TscGPPanel;
    scGPCharGlyphButton1: TscGPCharGlyphButton;
    scGPCharGlyphButton2: TscGPCharGlyphButton;
    scGPCharGlyphButton3: TscGPCharGlyphButton;
    scGPCharGlyphButton4: TscGPCharGlyphButton;
    scGPCharGlyphButton5: TscGPCharGlyphButton;
    scGPPanel2: TscGPPanel;
    CaptionLabel: TscLabel;
    scGPPanel4: TscGPPanel;
    scComboBox1: TscComboBox;
    MinButton: TscGPGlyphButton;
    MaxButton: TscGPGlyphButton;
    CloseButton: TscGPGlyphButton;
    scGPImageCollection1: TscGPImageCollection;
    scCheckBox1: TscCheckBox;
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
    procedure scButton10Click(Sender: TObject);
    procedure scStyledForm1DWMClientMaximize(Sender: TObject);
    procedure scStyledForm1DWMClientRestore(Sender: TObject);
    procedure scGPCharGlyphButton1Click(Sender: TObject);
    procedure scGPCharGlyphButton4Click(Sender: TObject);
    procedure scGPCharGlyphButton3Click(Sender: TObject);
    procedure scGPCharGlyphButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scButton1Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scButton3Click(Sender: TObject);
    procedure scButton4Click(Sender: TObject);
    procedure scComboBox1Change(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
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
  for I := Low(TStyleManager.StyleNames) to High(TStyleManager.StyleNames) do
    scComboBox1.Items.Add(TStyleManager.StyleNames[I]);
  scComboBox1.ItemIndex := scComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
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
  if scCheckBox1.Checked then
    scGPPanel1.CustomImageIndex := 0
  else
    scGPPanel1.CustomImageIndex := -1;
end;

procedure TForm1.scComboBox1Change(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
end;

procedure TForm1.scGPCharGlyphButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPCharGlyphButton3Click(Sender: TObject);
begin
  BorderPanel.SetRedraw(False);
  if scGPPanel1.Tag = 1 then
  begin
    scGPPanel1.Width := scStyledForm1.ScaleInt(270);
    scGPPanel1.Tag := 0;
  end
  else
  begin
    scGPPanel1.Width := scStyledForm1.ScaleInt(400);
    scGPPanel1.Tag := 1;
  end;
  BorderPanel.SetRedraw(True);
end;

procedure TForm1.scGPCharGlyphButton4Click(Sender: TObject);
var
  I: Integer;
begin
  scGPPageViewer1.PageIndex := TControl(Sender).Tag;
  if scGPPageViewer1.ActivePage <> nil then
  for I := 0 to scGPPageViewer1.ActivePage.ControlCount - 1 do
    if (scGPPageViewer1.ActivePage.Controls[I] is TscGPCharGlyphButton) and
       (TscGPCharGlyphButton(scGPPageViewer1.ActivePage.Controls[I]).Down) then
    begin
      scPageViewer1.PageIndex := scGPPageViewer1.ActivePage.Controls[I].Tag;
      Break;
    end;
end;

procedure TForm1.scGPCharGlyphButton8Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := TControl(Sender).Tag;
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
  Form1.Constraints.MinWidth := scStyledForm1.ScaleInt(700);
  Form1.Constraints.MinHeight := scStyledForm1.ScaleInt(400);
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
