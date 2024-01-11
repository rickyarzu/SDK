unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyledForm, scControls, scGPControls,
  scGPExtControls, scGPPagers, Vcl.Menus, Vcl.ComCtrls, scStyleManager, Vcl.Themes,
  scExtControls, scModernControls, scAdvancedControls, Vcl.StdCtrls, Vcl.Mask,
  System.Types, scDrawUtils, scGPImages, Vcl.ImgList, System.ImageList;

type
  TForm1 = class(TForm)
    BorderPanel: TscGPPanel;
    scStyledForm1: TscStyledForm;
    scGPPanel2: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    MinButton: TscGPGlyphButton;
    scGPButton1: TscGPButton;
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
    scLabel1: TscLabel;
    PopupMenuButton: TscGPButton;
    scGPButton2: TscGPButton;
    scGPButton3: TscGPButton;
    scStyleManager1: TscStyleManager;
    scGPGlyphButton1: TscGPGlyphButton;
    scGPGlyphButton2: TscGPGlyphButton;
    scGPGlyphButton3: TscGPGlyphButton;
    scGPGlyphButton4: TscGPGlyphButton;
    scPageViewer1: TscPageViewer;
    scPageViewerPage1: TscPageViewerPage;
    scPageViewerPage2: TscPageViewerPage;
    scPageViewerPage3: TscPageViewerPage;
    scSplitView1: TscSplitView;
    scLabel4: TscLabel;
    scScrollBox1: TscScrollBox;
    scListGroupPanel1: TscListGroupPanel;
    scLabel5: TscLabel;
    scLabel6: TscLabel;
    scLabel9: TscLabel;
    scGPSwitch1: TscGPSwitch;
    scGPSwitch2: TscGPSwitch;
    scGPSwitch3: TscGPSwitch;
    scListGroupPanel3: TscListGroupPanel;
    scLabel12: TscLabel;
    scLabel17: TscLabel;
    scPasswordEdit1: TscPasswordEdit;
    scEdit2: TscEdit;
    scListGroupPanel4: TscListGroupPanel;
    scLabel18: TscLabel;
    scAdvancedComboBox1: TscAdvancedComboBox;
    scCheckBox5: TscCheckBox;
    scCheckBox6: TscCheckBox;
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    scLabel7: TscLabel;
    scMemo1: TscMemo;
    scLabel8: TscLabel;
    scComboBox1: TscComboBox;
    scGPPanel3: TscGPPanel;
    MaxButton: TscGPGlyphButton;
    scCheckBox1: TscCheckBox;
    scGPSizeBox1: TscGPSizeBox;
    scCheckBox2: TscCheckBox;
    scLabel10: TscLabel;
    ImageList48: TImageList;
    scGPVirtualImageList1: TscGPVirtualImageList;
    scSplitView2: TscSplitView;
    DetailsButton: TscGPGlyphButton;
    scRadioGroup1: TscRadioGroup;
    scPanel1: TscPanel;
    scButton2: TscButton;
    scButton3: TscButton;
    scGPSwitch4: TscGPSwitch;
    scLabel11: TscLabel;
    scGPSwitch5: TscGPSwitch;
    scLabel16: TscLabel;
    scButton5: TscButton;
    scButton4: TscButton;
    scButton1: TscButton;
    scCheckBox3: TscCheckBox;
    procedure CloseButtonClick(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scStyledForm1ChangeActive(Sender: TObject);
    procedure scGPGlyphButton1Click(Sender: TObject);
    procedure scGPButton1Click(Sender: TObject);
    procedure scGPButton2Click(Sender: TObject);
    procedure scGPButton3Click(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MaxButtonClick(Sender: TObject);
    procedure scLabel1DblClick(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scLabel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure scLabel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scLabel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scButton6Click(Sender: TObject);
    procedure DetailsButtonClick(Sender: TObject);
    procedure scButton4Click(Sender: TObject);
    procedure scButton1Click(Sender: TObject);
    procedure scRadioGroup1ButtonClick(Sender: TObject);
    procedure PopupMenuButtonDropDown(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scGPSwitch5ChangeState(Sender: TObject);
    procedure scGPSwitch4ChangeState(Sender: TObject);
    procedure scStyledForm1BeforeChangeScale(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scStyledForm1DWMClientMaximize(Sender: TObject);
    procedure scStyledForm1DWMClientRestore(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
  Uses Unit2;

{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  scComboBox1.Items.Clear;
  scComboBox1.Items.AddStrings(TStyleManager.StyleNames);
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

procedure TForm1.MinButtonClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TForm1.PopupMenuButtonDropDown(Sender: TObject);
begin
  AppPagerForm.scStyledForm1.DropDown(PopupMenuButton);
end;

procedure TForm1.scButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scButton4Click(Sender: TObject);
begin
  scSplitView1.Opened := not scSplitView1.Opened;
end;

procedure TForm1.scButton6Click(Sender: TObject);
begin
  scSplitView2.Opened := not scSplitView2.Opened;
end;

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  MaxButton.Left := CloseButton.Left;
  MaxButton.Visible := scCheckBox1.Checked;
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  BorderPanel.Sizeable := scCheckBox2.Checked;
  scGPSizeBox1.Visible := scCheckBox2.Checked;
  if scCheckBox2.Checked then
  begin
    Form1.Constraints.MinWidth := scStyledForm1.ScaleInt(880);
    Form1.Constraints.MinHeight := scStyledForm1.ScaleInt(450);
  end
  else
  begin
    Form1.Constraints.MinWidth := 0;
    Form1.Constraints.MinHeight := 0;
  end;
end;

procedure TForm1.scCheckBox3Click(Sender: TObject);
begin
  scStyledForm1.DWMClientShadowHitTest := scCheckBox3.Checked;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
end;

procedure TForm1.scGPButton1Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 0;
end;

procedure TForm1.scGPButton2Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 1;
end;

procedure TForm1.scGPButton3Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 2;
end;

procedure TForm1.scGPGlyphButton1Click(Sender: TObject);
begin
  scSplitView1.Opened := not scSplitView1.Opened;
end;

procedure TForm1.scGPSwitch4ChangeState(Sender: TObject);
begin
  if scSplitView2.DisplayMode = scsvmDocked then
    scSplitView2.DisplayMode := scsvmOverlay
  else
    scSplitView2.DisplayMode := scsvmDocked;
end;

procedure TForm1.scGPSwitch5ChangeState(Sender: TObject);
begin
  scSplitView2.Animation := scGPSwitch5.IsOn;
end;

procedure TForm1.DetailsButtonClick(Sender: TObject);
begin
  scSplitView2.Opened := not scSplitView2.Opened;
end;

procedure TForm1.scLabel1DblClick(Sender: TObject);
begin
  if not scCheckBox1.Checked then Exit;
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
      scGPSizeBox1.Visible := scCheckBox2.Checked;
    end;
  end;
end;

procedure TForm1.scLabel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  scStyledForm1.DWMClientEndDrag;
end;

procedure TForm1.scRadioGroup1ButtonClick(Sender: TObject);
begin
   case scRadioGroup1.ItemIndex of
    0:
      begin
        PopupMenuButton.DropDownMenu := PopupMenu1;
        PopupMenuButton.CustomDropDown := False;
        PopupMenuButton.Left := 0;
        PopupMenuButton.Visible := True;
        DetailsButton.Left := 0;
        DetailsButton.Visible := False;
        scSplitView2.Opened := False;
      end;
    1:
      begin
        PopupMenuButton.Left := 0;
        PopupMenuButton.Visible := False;
        DetailsButton.Left := 0;
        DetailsButton.Visible := True;
      end;
    2:
      begin
        scSplitView2.Opened := False;
        PopupMenuButton.DropDownMenu := nil;
        PopupMenuButton.CustomDropDown := True;
        PopupMenuButton.Left := 0;
        PopupMenuButton.Visible := True;
        DetailsButton.Left := 0;
        DetailsButton.Visible := False;
      end;
  end;
end;

procedure TForm1.scStyledForm1ChangeActive(Sender: TObject);
begin
  if Active then
  begin
    BorderPanel.FrameColor := $009A572B;
    scLabel1.Font.Color := clWhite;
    CloseButton.GlyphOptions.NormalColorAlpha := 255;
    MinButton.GlyphOptions.NormalColorAlpha := 190;
    MaxButton.GlyphOptions.NormalColorAlpha := 190;
  end
  else
  begin
    BorderPanel.FrameColor := clGray;
    scLabel1.Font.Color := clSilver;
    CloseButton.GlyphOptions.NormalColorAlpha := 150;
    MinButton.GlyphOptions.NormalColorAlpha := 120;
    MaxButton.GlyphOptions.NormalColorAlpha := 120;
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
  Form1.Constraints.MinWidth := scStyledForm1.ScaleInt(880);
  Form1.Constraints.MinHeight := scStyledForm1.ScaleInt(450);
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
  scGPSizeBox1.Visible := scCheckBox2.Checked;
  BorderPanel.Sizeable := scCheckBox2.Checked;
end;

end.
