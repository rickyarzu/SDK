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
    scGPImageCollection2: TscGPImageCollection;
    scPageViewer1: TscPageViewer;
    scPageViewerPage2: TscPageViewerPage;
    scGPPanel5: TscGPPanel;
    scGPCharGlyphButton4: TscGPCharGlyphButton;
    scGPCharGlyphButton2: TscGPCharGlyphButton;
    scGPCharGlyphButton5: TscGPCharGlyphButton;
    scGPCharGlyphButton1: TscGPCharGlyphButton;
    BackButton: TscGPGlyphButton;
    ClientPanel2: TscPanel;
    scPageViewer2: TscPageViewer;
    scPageViewerPage4: TscPageViewerPage;
    scLabel2: TscLabel;
    scPageViewerPage5: TscPageViewerPage;
    scLabel3: TscLabel;
    scPageViewerPage3: TscPageViewerPage;
    scLabel12: TscLabel;
    scAdvancedListBox1: TscAdvancedListBox;
    scPanel1: TscPanel;
    scGPCharGlyphButton3: TscGPCharGlyphButton;
    scGPCharGlyphButton6: TscGPCharGlyphButton;
    scPageViewerPage1: TscPageViewerPage;
    ClientPanel: TscGPPanel;
    scLabel4: TscLabel;
    scComboBox1: TscComboBox;
    scCheckBox4: TscCheckBox;
    scCheckBox3: TscCheckBox;
    scGPPanel2: TscGPPanel;
    scGPToolPager1: TscGPToolPager;
    scGPGlyphButton7: TscGPGlyphButton;
    scGPGlyphButton8: TscGPGlyphButton;
    MenuButton: TscGPButton;
    scGPToolPagerPage3: TscGPToolPagerPage;
    scGPToolPagerPage2: TscGPToolPagerPage;
    scGPLabel3: TscGPLabel;
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
    scGPLabel1: TscGPLabel;
    procedure CloseButtonClick(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure scLabel1DblClick(Sender: TObject);
    procedure scLabel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scButton10Click(Sender: TObject);
    procedure scGPButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuButtonClick(Sender: TObject);
    procedure BackButtonClick(Sender: TObject);
    procedure scGPCharGlyphButton1Click(Sender: TObject);
    procedure scGPCharGlyphButton4Click(Sender: TObject);
    procedure scGPCharGlyphButton2Click(Sender: TObject);
    procedure scGPCharGlyphButton5Click(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
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

procedure TForm1.scCheckBox3Click(Sender: TObject);
begin
  if scCheckBox3.Checked then
    scGPPanel2.CustomImageIndex := 0
  else
    scGPPanel2.CustomImageIndex := -1;
  scGPToolPager1.FullUpdateControl;
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

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);
end;

end.
