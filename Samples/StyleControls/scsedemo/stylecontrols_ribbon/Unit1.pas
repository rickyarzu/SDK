unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyledForm, scControls, scGPControls,
  scGPExtControls, scGPPagers, Vcl.Menus, Vcl.ComCtrls, scStyleManager, Vcl.Themes,
  scExtControls, scModernControls, scAdvancedControls, Vcl.StdCtrls, Vcl.Mask,
  System.Types, scDrawUtils, scGPImages,
  scImageCollection, ShellApi, scAppPager, System.ImageList, Vcl.ImgList,
  se_effect, se_ani;

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
    ClientPageView: TscPageViewer;
    scPageViewerPage1: TscPageViewerPage;
    scGPPanel2: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    scLabel1: TscLabel;
    scGPGlyphButton2: TscGPGlyphButton;
    scGPGlyphButton3: TscGPGlyphButton;
    scGPGlyphButton4: TscGPGlyphButton;
    MaxButton: TscGPGlyphButton;
    scGPGlyphButton1: TscGPGlyphButton;
    scGPGlyphButton5: TscGPGlyphButton;
    scGPGlyphButton6: TscGPGlyphButton;
    scGPPanel4: TscGPPanel;
    scGPEdit1: TscGPEdit;
    scGPToolPager1: TscGPToolPager;
    scGPGlyphButton7: TscGPGlyphButton;
    scGPGlyphButton8: TscGPGlyphButton;
    MenuButton: TscGPButton;
    scGPToolPagerPage2: TscGPToolPagerPage;
    scLabel2: TscLabel;
    scLabel5: TscLabel;
    scLabel6: TscLabel;
    scLabel3: TscLabel;
    scGPToolPagerPage3: TscGPToolPagerPage;
    scLabel28: TscLabel;
    scLabel4: TscLabel;
    scButton10: TscButton;
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
    scLabel10: TscLabel;
    scPageViewerPage2: TscPageViewerPage;
    scGPPanel6: TscGPPanel;
    CloseButton2: TscGPGlyphButton;
    MinButton2: TscGPGlyphButton;
    scLabel7: TscLabel;
    MaxButton2: TscGPGlyphButton;
    OptionsButton2: TscGPGlyphButton;
    HelpButton2: TscGPGlyphButton;
    scGPPanel7: TscGPPanel;
    scGPGlyphButton11: TscGPGlyphButton;
    scAppPager1: TscAppPager;
    scAppPagerPage4: TscAppPagerPage;
    scLabel8: TscLabel;
    scAppPagerPage3: TscAppPagerPage;
    scLabel9: TscLabel;
    scAppPagerPage1: TscAppPagerPage;
    scLabel11: TscLabel;
    scAppPagerPage2: TscAppPagerPage;
    scLabel12: TscLabel;
    scAdvancedListBox1: TscAdvancedListBox;
    seAnimationList1: TseAnimationList;
    seAnimation1: TseAnimation;
    procedure CloseButtonClick(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scStyledForm1ChangeActive(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure scLabel1DblClick(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scLabel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure scLabel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scLabel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scButton1Click(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scStyledForm1BeforeChangeScale(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scGPButton7Click(Sender: TObject);
    procedure scStyledForm1DWMClientMaximize(Sender: TObject);
    procedure scStyledForm1DWMClientRestore(Sender: TObject);
    procedure scGPGlyphButton11Click(Sender: TObject);
    procedure scAppPager1Items7Click(Sender: TObject);
    procedure MenuButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure scAppPager1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure scAdvancedListBox1DblClick(Sender: TObject);
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

procedure TForm1.FormShow(Sender: TObject);
begin
  if ClientPageView.PageIndex = 0 then
    ActiveControl := scGPToolPager1;
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

procedure TForm1.MenuButtonClick(Sender: TObject);
begin
  seAnimation1.FreezeControl(ClientPageView, ClientPageView.ClientRect);
  seAnimation1.Rotation := krRotate90;

  ClientPageView.PageIndex := 1;
  scAppPager1.SetFocus;

  try
    seAnimation1.Execute;
  finally
    seAnimation1.Restore;
  end;
end;

procedure TForm1.MinButtonClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TForm1.scAdvancedListBox1DblClick(Sender: TObject);
begin
  scGPGlyphButton11Click(Self);
end;

procedure TForm1.scAppPager1Items7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scAppPager1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
   scGPGlyphButton11Click(Self);
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  MaxButton.Left := CloseButton.Left;
end;

procedure TForm1.scGPButton7Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scGPGlyphButton11Click(Sender: TObject);
begin
  seAnimation1.FreezeControl(ClientPageView, ClientPageView.ClientRect);
  seAnimation1.Rotation := krRotate270;

  ClientPageView.PageIndex := 0;
  scGPToolPager1.SetFocus;

  try
    seAnimation1.Execute;
  finally
    seAnimation1.Restore;
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
  if scStyledForm1.IsDWMClientMaximized and scStyledForm1.IsDWMClientDragging and not (ssDouble in Shift) then
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
    scLabel1.Font.Color := clWhite;
    scLabel7.Font.Color := clBtnText;
    CloseButton.GlyphOptions.NormalColorAlpha := 255;
    MinButton.GlyphOptions.NormalColorAlpha := 190;
    MaxButton.GlyphOptions.NormalColorAlpha := 190;
    MaxButton2.GlyphOptions.NormalColorAlpha := 190;
    CloseButton2.GlyphOptions.NormalColorAlpha := 255;
    MinButton2.GlyphOptions.NormalColorAlpha := 190;
  end
  else
  begin
    scLabel1.Font.Color := clSilver;
    scLabel7.Font.Color := clGray;
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
  Form1.Constraints.MinWidth := Round(700 * scStyledForm1.ScaleFactor);
  Form1.Constraints.MinHeight := Round(300 * scStyledForm1.ScaleFactor);
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
end;

end.
