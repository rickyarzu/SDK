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
    MenuButton: TscGPCharGlyphButton;
    scGPPanel6: TscGPPanel;
    scGPPanel3: TscGPPanel;
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
    scGPButton1: TscGPButton;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    scGPButton2: TscGPButton;
    scGPButton3: TscGPButton;
    scGPButton4: TscGPButton;
    scPageViewer3: TscPageViewer;
    scPageViewerPage7: TscPageViewerPage;
    scPageViewerPage8: TscPageViewerPage;
    scPageViewerPage6: TscPageViewerPage;
    scPageViewerPage9: TscPageViewerPage;
    scLabel4: TscLabel;
    scComboBox1: TscComboBox;
    scCheckBox4: TscCheckBox;
    scGPToggleSwitch1: TscGPToggleSwitch;
    scGPImageCollection1: TscGPImageCollection;
    procedure Exit1Click(Sender: TObject);
    procedure scLabel1DblClick(Sender: TObject);
    procedure scLabel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scButton10Click(Sender: TObject);
    procedure scGPButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scGPCharGlyphButton12Click(Sender: TObject);
    procedure scGPCharGlyphButton13Click(Sender: TObject);
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

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
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

end.
