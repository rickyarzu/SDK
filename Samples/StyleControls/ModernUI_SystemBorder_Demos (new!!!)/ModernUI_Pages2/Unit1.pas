unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyledForm, scControls, scGPControls,
  scGPExtControls, scGPPagers, Vcl.Menus, Vcl.ComCtrls, scStyleManager, Vcl.Themes,
  scExtControls, scModernControls, scAdvancedControls, Vcl.StdCtrls, Vcl.Mask,
  System.Types, scDrawUtils, scGPImages, Vcl.ImgList, System.ImageList,
  scImageCollection, ShellApi, scGPFontControls;

type
  TForm1 = class(TForm)
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
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
    scGPPanel2: TscGPPanel;
    MenuButton: TscGPCharGlyphButton;
    scGPPanel6: TscGPPanel;
    scGPCharGlyphButton8: TscGPCharGlyphButton;
    scGPCharGlyphButton9: TscGPCharGlyphButton;
    scGPCharGlyphButton12: TscGPCharGlyphButton;
    scGPCharGlyphButton13: TscGPCharGlyphButton;
    scGPPanel3: TscGPPanel;
    scGPLabel1: TscGPLabel;
    scPageViewer3: TscPageViewer;
    scPageViewerPage7: TscPageViewerPage;
    scPageViewerPage8: TscPageViewerPage;
    scPageViewerPage6: TscPageViewerPage;
    scPageViewerPage9: TscPageViewerPage;
    scCheckBox3: TscCheckBox;
    scLabel4: TscLabel;
    scComboBox1: TscComboBox;
    scCheckBox4: TscCheckBox;
    scGPToggleSwitch1: TscGPToggleSwitch;
    procedure CloseButtonClick(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scGPButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scGPCharGlyphButton1Click(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scGPCharGlyphButton8Click(Sender: TObject);
    procedure scGPCharGlyphButton9Click(Sender: TObject);
    procedure scGPCharGlyphButton12Click(Sender: TObject);
    procedure scGPCharGlyphButton13Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scGPGlyphButton1Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scGPToggleSwitch1ChangeState(Sender: TObject);
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
var
  I: Integer;
begin
  for I := Low(TStyleManager.StyleNames) to High(TStyleManager.StyleNames) do
    scComboBox1.Items.Add(TStyleManager.StyleNames[I]);
  scComboBox1.ItemIndex := scComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);

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
  scGPCharGlyphButton8.FluentLightEffect := scCheckBox4.Checked;
  scGPCharGlyphButton9.FluentLightEffect := scCheckBox4.Checked;
  scGPCharGlyphButton12.FluentLightEffect := scCheckBox4.Checked;
  scGPCharGlyphButton13.FluentLightEffect := scCheckBox4.Checked;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
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

procedure TForm1.scGPCharGlyphButton8Click(Sender: TObject);
begin
  scPageViewer3.PageIndex := 0;
end;

procedure TForm1.scGPCharGlyphButton9Click(Sender: TObject);
begin
  scPageViewer3.PageIndex := 2;
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
    if (scGPPanel6.Controls[I] is TscGPCharGlyphButton) then
       with TscGPCharGlyphButton(scGPPanel6.Controls[I]) do
       begin
         if scGPToggleSwitch1.IsOn then
           Options.ShapeStyle := scgpBottomRoundedLine
         else
           Options.ShapeStyle := scgpBottomLine;
       end;
  if scGPToggleSwitch1.IsOn then
  begin
    MenuButton.Options.ShapeStyle := scgpBottomRoundedLine;
  end
  else
  begin
    MenuButton.Options.ShapeStyle := scgpBottomLine;
  end;
end;

end.
