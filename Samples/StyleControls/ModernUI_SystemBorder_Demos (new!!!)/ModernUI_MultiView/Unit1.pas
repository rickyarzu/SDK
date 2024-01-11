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
    ClientPanel: TscPanel;
    scGPPanel3: TscGPPanel;
    scComboBox1: TscComboBox;
    scLabel1: TscLabel;
    scPageViewer1: TscPageViewer;
    scPageViewerPage2: TscPageViewerPage;
    scPageViewerPage4: TscPageViewerPage;
    scLabel28: TscLabel;
    scLabel13: TscLabel;
    scButton10: TscButton;
    scLabel14: TscLabel;
    scPageViewerPage1: TscPageViewerPage;
    scPageViewerPage3: TscPageViewerPage;
    scCheckBox4: TscCheckBox;
    scGPToggleSwitch1: TscGPToggleSwitch;
    scGPPanel15: TscGPPanel;
    scGPPanel1: TscGPPanel;
    ExitButton: TscGPCharGlyphButton;
    scGPCharGlyphButton2: TscGPCharGlyphButton;
    scGPCharGlyphButton4: TscGPCharGlyphButton;
    scGPCharGlyphButton5: TscGPCharGlyphButton;
    scGPCharGlyphButton3: TscGPCharGlyphButton;
    procedure scButton10Click(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scComboBox1Change(Sender: TObject);
    procedure scGPCharGlyphButton4Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scGPToggleSwitch1ChangeState(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  for I := Low(TStyleManager.StyleNames) to High(TStyleManager.StyleNames) do
    scComboBox1.Items.Add(TStyleManager.StyleNames[I]);
  scComboBox1.ItemIndex := scComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
  if IsWindows11 then
   scGPToggleSwitch1.State := scswOn;
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scCheckBox4Click(Sender: TObject);
begin
  ExitButton.FluentLightEffect := scCheckBox4.Checked;
  scGPCharGlyphButton2.FluentLightEffect := scCheckBox4.Checked;
  scGPCharGlyphButton3.FluentLightEffect := scCheckBox4.Checked;
  scGPCharGlyphButton4.FluentLightEffect := scCheckBox4.Checked;
  scGPCharGlyphButton5.FluentLightEffect := scCheckBox4.Checked;
end;

procedure TForm1.scComboBox1Change(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
  if scStyledForm1.FluentUIBackground = scfuibNone then
    Color := scDrawUtils.GetStyleColor(clBtnFace);
end;

procedure TForm1.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPCharGlyphButton4Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := TControl(Sender).Tag;
  scGPPanel15.Caption := TscGPCharGlyphButton(Sender).Caption;
end;

procedure TForm1.scGPToggleSwitch1ChangeState(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to scGPPanel1.ControlCount - 1 do
    if (scGPPanel1.Controls[I] is TscGPCharGlyphButton) then
       if scGPPanel1.Controls[I].Tag >= 0 then
       with TscGPCharGlyphButton(scGPPanel1.Controls[I]) do
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
    scGPCharGlyphButton4.Margins.Left := scGPCharGlyphButton2.Margins.Left;
    scGPCharGlyphButton4.Margins.Right := scGPCharGlyphButton2.Margins.Right;
    ExitButton.Options.ShapeStyle := scgpRoundedRect;
    ExitButton.AlignWithMargins := True;
    scStyledForm1.DWMClientRoundedCornersType := scDWMRoundedCornersDefault;
  end
  else
  begin
    scGPCharGlyphButton4.Margins.Left := 0;
    scGPCharGlyphButton4.Margins.Right := 0;
    ExitButton.Options.ShapeStyle := scgpRect;
    ExitButton.AlignWithMargins := False;
    scStyledForm1.DWMClientRoundedCornersType := scDWMRoundedCornersOff;
  end;

end;

end.
