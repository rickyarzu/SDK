unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Themes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, scControls, scModernControls,
  scGPControls, scGPMeters, Vcl.Imaging.pngimage, scStyleManager, scStyledForm, Vcl.Menus,
  scImageCollection, Vcl.ComCtrls, scExtControls, scAdvancedPager, scGPImages,
  Vcl.ImgList, scDrawUtils, scAdvancedControls, scGPExtControls, Vcl.Mask,
  scGPPagers, scGPVertPagers;

type
  TForm1 = class(TForm)
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    scGPVirtualImageList1: TscGPVirtualImageList;
    scGPVirtualImageList2: TscGPVirtualImageList;
    scGPImageCollection1: TscGPImageCollection;
    scGPVirtualImageList3: TscGPVirtualImageList;
    PopupMenu2: TPopupMenu;
    Item11: TMenuItem;
    Item21: TMenuItem;
    Item31: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    scGPPanel1: TscGPPanel;
    scGPPageControl1: TscGPPageControl;
    scGPPageControlPage13: TscGPPageControlPage;
    scGPVertPageControl1: TscGPVertPageControl;
    scGPVertPageControlPage2: TscGPVertPageControlPage;
    scGPVertPageControlPage3: TscGPVertPageControlPage;
    scPanel1: TscPanel;
    scGPGlyphButton16: TscGPGlyphButton;
    scGPGlyphButton17: TscGPGlyphButton;
    scGPGlyphButton18: TscGPGlyphButton;
    scPanel2: TscPanel;
    scGPGlyphButton19: TscGPGlyphButton;
    scGPGlyphButton21: TscGPGlyphButton;
    scGPVertPageControlPage4: TscGPVertPageControlPage;
    scGPVertPageControlPage5: TscGPVertPageControlPage;
    scGPVertPageControlPage1: TscGPVertPageControlPage;
    scLabel16: TscLabel;
    scLabel17: TscLabel;
    scGPVertTabControl1: TscGPVertTabControl;
    scLabel18: TscLabel;
    scGPPageControlPage6: TscGPPageControlPage;
    scGPPageControl2: TscGPPageControl;
    scGPPageControlPage12: TscGPPageControlPage;
    scGPGlyphButton4: TscGPGlyphButton;
    scGPGlyphButton5: TscGPGlyphButton;
    scGPGlyphButton2: TscGPGlyphButton;
    scGPGlyphButton3: TscGPGlyphButton;
    scGPPageControlPage8: TscGPPageControlPage;
    scLabel13: TscLabel;
    scGPPageControlPage9: TscGPPageControlPage;
    scGPPageControlPage10: TscGPPageControlPage;
    scGPPageControlPage11: TscGPPageControlPage;
    scGPPageControlPage7: TscGPPageControlPage;
    scLabel11: TscLabel;
    scLabel12: TscLabel;
    scGPTabControl1: TscGPTabControl;
    scLabel14: TscLabel;
    scLabel15: TscLabel;
    scGPToolPager1: TscGPToolPager;
    scGPButton7: TscGPButton;
    scGPToolPagerPage2: TscGPToolPagerPage;
    scGPGlyphButton15: TscGPGlyphButton;
    scGPToolPagerPage3: TscGPToolPagerPage;
    scGPToolPagerPage1: TscGPToolPagerPage;
    scGPToolGroupPanel2: TscGPToolGroupPanel;
    scGPGlyphButton9: TscGPGlyphButton;
    scGPGlyphButton10: TscGPGlyphButton;
    scGPGlyphButton11: TscGPGlyphButton;
    scGPToolGroupPanel1: TscGPToolGroupPanel;
    scGPGlyphButton6: TscGPGlyphButton;
    scGPGlyphButton7: TscGPGlyphButton;
    scGPGlyphButton8: TscGPGlyphButton;
    scGPToolGroupPanel3: TscGPToolGroupPanel;
    scGPGlyphButton12: TscGPGlyphButton;
    scGPGlyphButton13: TscGPGlyphButton;
    scGPGlyphButton14: TscGPGlyphButton;
    scGPPageControlPage3: TscGPPageControlPage;
    scGPMeter2: TscGPMeter;
    scGPMeter1201: TscGPMeter120;
    scGPMeter3: TscGPMeter;
    scGPMeter1: TscGPMeter;
    scLabel10: TscLabel;
    scGPComboBox6: TscGPComboBox;
    scGPCheckBox6: TscGPCheckBox;
    scGPCheckBox7: TscGPCheckBox;
    scGPClock1: TscGPClock;
    scGPGearDial1: TscGPGearDial;
    scGPDial1: TscGPDial;
    scGPCheckBox8: TscGPCheckBox;
    scGPDial2: TscGPDial;
    scGPCheckBox9: TscGPCheckBox;
    scGPCheckBox10: TscGPCheckBox;
    scGPPageControlPage4: TscGPPageControlPage;
    scGPHVMeter1: TscGPHVMeter;
    scGPHVMeter2: TscGPHVMeter;
    scGPHVMeter3: TscGPHVMeter;
    scGPSlider2: TscGPSlider;
    scGPSlider1: TscGPSlider;
    scGPHVMeter4: TscGPHVMeter;
    scGPHVMeter5: TscGPHVMeter;
    scGPSlider3: TscGPSlider;
    scGPSlider4: TscGPSlider;
    scGPCheckBox5: TscGPCheckBox;
    scGPCheckBox4: TscGPCheckBox;
    scGPPageControlPage5: TscGPPageControlPage;
    scGPPanel3: TscGPPanel;
    scLabel6: TscLabel;
    scLabel1: TscLabel;
    scGPImage2: TscGPImage;
    scGPSwitch4: TscGPSwitch;
    scGPImage1: TscGPImage;
    scGPImage3: TscGPImage;
    scGPImage4: TscGPImage;
    scLabel3: TscLabel;
    scLabel4: TscLabel;
    scGPButton9: TscGPButton;
    scGPButton10: TscGPButton;
    scLabel5: TscLabel;
    scButton1: TscButton;
    scButton2: TscButton;
    scSwitch1: TscSwitch;
    scSwitch2: TscSwitch;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scGPPageControlPage2: TscGPPageControlPage;
    scGPListBox1: TscGPListBox;
    scGPListBox4: TscGPListBox;
    scGPListBox3: TscGPListBox;
    scGPComboBox1: TscGPComboBox;
    scGPComboBox2: TscGPComboBox;
    scGPComboEdit1: TscGPComboEdit;
    scGPComboEdit2: TscGPComboEdit;
    scGPEdit1: TscGPEdit;
    scGPSpinEdit1: TscGPSpinEdit;
    scGPSpinEdit2: TscGPSpinEdit;
    scGPEdit2: TscGPEdit;
    scGPComboEdit3: TscGPComboEdit;
    scGPComboBox3: TscGPComboBox;
    scGPNumericEdit1: TscGPNumericEdit;
    scGPDateEdit1: TscGPDateEdit;
    scGPPasswordEdit1: TscGPPasswordEdit;
    scGPTimeEdit2: TscGPTimeEdit;
    scGPTimeEdit1: TscGPTimeEdit;
    scGPMemo1: TscGPMemo;
    scGPMemo2: TscGPMemo;
    scGPEdit3: TscGPEdit;
    scGPPageControlPage1: TscGPPageControlPage;
    scGPSwitch1: TscGPSwitch;
    scGPSwitch3: TscGPSwitch;
    scGPTrackBar2: TscGPTrackBar;
    scGPProgressBar2: TscGPProgressBar;
    scGPCircledProgressBar1: TscGPCircledProgressBar;
    scGPCircledProgressBar2: TscGPCircledProgressBar;
    scGPGearActivityIndicator1: TscGPGearActivityIndicator;
    scGPPanel2: TscGPPanel;
    scGPPanel4: TscGPPanel;
    scGPCheckBox1: TscGPCheckBox;
    scGPCheckBox2: TscGPCheckBox;
    scGPCheckBox3: TscGPCheckBox;
    scGPRadioButton1: TscGPRadioButton;
    scGPRadioButton2: TscGPRadioButton;
    scGPRadioButton3: TscGPRadioButton;
    scGPTrackBar1: TscGPTrackBar;
    scGPProgressBar1: TscGPProgressBar;
    scGPLabel1: TscGPLabel;
    scGPLabel2: TscGPLabel;
    scLabel2: TscLabel;
    scGPButton2: TscGPButton;
    scGPButton3: TscGPButton;
    scGPButton4: TscGPButton;
    scGPButton6: TscGPButton;
    scGPButton5: TscGPButton;
    scGPButton1: TscGPButton;
    scGPGroupBox1: TscGPGroupBox;
    scGPGlyphButton1: TscGPGlyphButton;
    scLabel7: TscLabel;
    scGPComboBox5: TscGPComboBox;
    scLabel8: TscLabel;
    scLabel9: TscLabel;
    scGPActivityBar1: TscGPActivityBar;
    scGPToggleSwitch1: TscGPToggleSwitch;
    scGPPanel5: TscGPPanel;
    scGPComboBox4: TscGPComboBox;
    scLabel19: TscLabel;
    MinButton: TscGPGlyphButton;
    CloseButton: TscGPGlyphButton;
    scGPImageCollection2: TscGPImageCollection;
    procedure scGPTrackBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scGPTrackBar2Change(Sender: TObject);
    procedure scGPSwitch4ChangeState(Sender: TObject);
    procedure scGPSwitch3ChangeState(Sender: TObject);
    procedure scGPSwitch1ChangeState(Sender: TObject);
    procedure scGPDial1Change(Sender: TObject);
    procedure scGPDial2Change(Sender: TObject);
    procedure scGPGearDial1Change(Sender: TObject);
    procedure scGPHVMeter3GetProgressColor(Sender: TObject; var AColor: TColor;
      var AColorAlpha);
    procedure scGPHVMeter3GetArrowColor(Sender: TObject; var AColor: TColor;
      var AColorAlpha);
    procedure scGPMeter1201GetArrowColor(Sender: TObject; var AColor: TColor;
      var AColorAlpha);
    procedure scGPMeter2GetCenterColor(Sender: TObject; var AColor: TColor;
      var AColorAlpha);
    procedure scGPGearDial1GetKnobColor(Sender: TObject; var AColor: TColor;
      var AColorAlpha);
    procedure scGPSlider1GetProgressColor(Sender: TObject; var AColor: TColor;
      var AColorAlpha);
    procedure scGPSlider1GetThumbColor(Sender: TObject; var AColor: TColor;
      var AColorAlpha);
    procedure scGPSlider2Change(Sender: TObject);
    procedure scGPSlider3Change(Sender: TObject);
    procedure scGPSlider4Change(Sender: TObject);
    procedure scGPSlider1LastChange(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scGPCheckBox4Click(Sender: TObject);
    procedure scGPCheckBox5Click(Sender: TObject);
    procedure scGPCheckBox6Click(Sender: TObject);
    procedure scGPCheckBox7Click(Sender: TObject);
    procedure scGPCheckBox8Click(Sender: TObject);
    procedure scGPComboBox4Change(Sender: TObject);
    procedure scGPComboBox5Change(Sender: TObject);
    procedure scGPComboBox6Change(Sender: TObject);
    procedure scGPButton5Click(Sender: TObject);
    procedure scGPPageControl1ChangePage(Sender: TObject);
    procedure scGPCheckBox1Click(Sender: TObject);
    procedure scGPCheckBox3Click(Sender: TObject);
    procedure scGPCheckBox9Click(Sender: TObject);
    procedure scGPCheckBox10Click(Sender: TObject);
    procedure scGPGlyphButton21Click(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  I: Integer;
  Item: TscGPListBoxItem;
begin
  for I := Low(TStyleManager.StyleNames) to High(TStyleManager.StyleNames) do
  begin
    Item := scGPComboBox4.Items.Add;
    Item.Caption := TStyleManager.StyleNames[I];
  end;
  scGPComboBox4.Sort;
  scGPComboBox4.InitItemIndex(scGPComboBox4.IndexOfCaption(TStyleManager.ActiveStyle.Name));

  scGPActivityBar1.Activate;
  scGPCircledProgressBar2.Activate;
  scGPGearActivityIndicator1.Activate;
end;

procedure TForm1.MinButtonClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TForm1.scGPButton5Click(Sender: TObject);
begin
  if scGPLabel2.Caption = 'scGPLabel2' then
  begin
    scGPLabel2.Caption := 'TscGPLabel with frame, glow effect and margins';
  end
  else
    scGPLabel2.Caption := 'scGPLabel2';
end;

procedure TForm1.scGPCheckBox10Click(Sender: TObject);
begin
  scGPDial2.ShowValue := scGPCheckBox10.Checked;
  scGPGearDial1.ShowValue := scGPCheckBox10.Checked;
end;

procedure TForm1.scGPCheckBox1Click(Sender: TObject);
begin
  scGPCircledProgressBar2.AnimationAcceleration := scGPCheckBox1.Checked;
  scGPGearActivityIndicator1.AnimationAcceleration := scGPCheckBox1.Checked;
end;

procedure TForm1.scGPCheckBox3Click(Sender: TObject);
begin
  if scGPCheckBox3.Checked then
    scGPGearActivityIndicator1.Kind := scgpgkOneGear
  else
    scGPGearActivityIndicator1.Kind := scgpgkTwoGears;
end;

procedure TForm1.scGPCheckBox4Click(Sender: TObject);
begin
  scGPHVMeter1.SmoothTicks := scGPCheckBox4.Checked;
  scGPHVMeter2.SmoothTicks := scGPCheckBox4.Checked;
  scGPHVMeter3.SmoothTicks := scGPCheckBox4.Checked;
  scGPHVMeter4.SmoothTicks := scGPCheckBox4.Checked;
  scGPHVMeter5.SmoothTicks := scGPCheckBox4.Checked;

  scGPSlider1.SmoothTicks := scGPCheckBox4.Checked;
  scGPSlider3.SmoothTicks := scGPCheckBox4.Checked;
  scGPSlider4.SmoothTicks := scGPCheckBox4.Checked;
end;

procedure TForm1.scGPCheckBox5Click(Sender: TObject);
begin
  scGPSlider1.ThumbShadow := scGPCheckBox5.Checked;
  scGPSlider2.ThumbShadow := scGPCheckBox5.Checked;
  scGPSlider3.ThumbShadow := scGPCheckBox5.Checked;
  scGPSlider4.ThumbShadow := scGPCheckBox5.Checked;

  scGPHVMeter1.ArrowShadow := scGPCheckBox5.Checked;
  scGPHVMeter2.ArrowShadow := scGPCheckBox5.Checked;
  scGPHVMeter3.ArrowShadow := scGPCheckBox5.Checked;
  scGPHVMeter4.ArrowShadow := scGPCheckBox5.Checked;
end;

procedure TForm1.scGPCheckBox6Click(Sender: TObject);
begin
  scGPMeter1.ArrowShadow := scGPCheckBox6.Checked;
  scGPMeter2.ArrowShadow := scGPCheckBox6.Checked;
  scGPMeter3.ArrowShadow := scGPCheckBox6.Checked;
  scGPMeter1201.ArrowShadow := scGPCheckBox6.Checked;
  scGPClock1.ArrowShadow := scGPCheckBox6.Checked;
end;

procedure TForm1.scGPCheckBox7Click(Sender: TObject);
begin
  scGPMeter1.FrameShadow := scGPCheckBox7.Checked;
  scGPMeter2.FrameShadow := scGPCheckBox7.Checked;
  scGPMeter3.FrameShadow := scGPCheckBox7.Checked;
  scGPClock1.FrameShadow := scGPCheckBox7.Checked;
end;

procedure TForm1.scGPCheckBox8Click(Sender: TObject);
begin
  scGPDial1.KnobShadow := scGPCheckBox8.Checked;
  scGPDial2.KnobShadow := scGPCheckBox8.Checked;
  scGPGearDial1.KnobShadow := scGPCheckBox8.Checked;
end;

procedure TForm1.scGPCheckBox9Click(Sender: TObject);
begin
  scGPDial2.ShowImage := scGPCheckBox9.Checked;
  scGPGearDial1.ShowImage := scGPCheckBox9.Checked;
end;

procedure TForm1.scGPComboBox4Change(Sender: TObject);
begin
  TStyleManager.SetStyle(scGPComboBox4.Items[scGPComboBox4.ItemIndex].Caption);
end;

procedure TForm1.scGPComboBox5Change(Sender: TObject);
begin
  scGPGlyphButton1.GlyphOptions.Kind := TscGPButtonGlyphKind(scGPComboBox5.ItemIndex);
end;

procedure TForm1.scGPComboBox6Change(Sender: TObject);
begin
  scGPMeter1.ArrowType := TscGPMeterArrowType(scGPComboBox6.ItemIndex);
  scGPMeter2.ArrowType := TscGPMeterArrowType(scGPComboBox6.ItemIndex);
  scGPMeter3.ArrowType := TscGPMeterArrowType(scGPComboBox6.ItemIndex);
  scGPMeter1201.ArrowType := TscGPMeterArrowType(scGPComboBox6.ItemIndex);
end;

procedure TForm1.scGPDial1Change(Sender: TObject);
begin
  scGPMeter1.Value := scGPDial1.Value;
  scGPMeter1201.Value := scGPDial1.Value;
end;

procedure TForm1.scGPDial2Change(Sender: TObject);
begin
  scGPMeter3.Value := scGPDial2.Value;
end;

procedure TForm1.scGPGearDial1Change(Sender: TObject);
begin
 scGPMeter2.Value := scGPGearDial1.Value;
end;

procedure TForm1.scGPGearDial1GetKnobColor(Sender: TObject; var AColor: TColor;
  var AColorAlpha);
begin
 if scGPGearDial1.Value > 6500 then
    AColor := clRed;
end;

procedure TForm1.scGPGlyphButton21Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPHVMeter3GetArrowColor(Sender: TObject; var AColor: TColor;
  var AColorAlpha);
begin
  if scGPHVMeter3.Value < 0 then
    AColor := clRed;
end;

procedure TForm1.scGPHVMeter3GetProgressColor(Sender: TObject;
  var AColor: TColor; var AColorAlpha);
begin
  if scGPHVMeter3.Value < 0 then
    AColor := clRed;
end;

procedure TForm1.scGPMeter1201GetArrowColor(Sender: TObject; var AColor: TColor;
  var AColorAlpha);
begin
  if scGPMeter1201.Value < 20 then
    AColor := clRed;
end;

procedure TForm1.scGPMeter2GetCenterColor(Sender: TObject; var AColor: TColor;
  var AColorAlpha);
begin
 if scGPMeter2.Value > 6500 then
    AColor := clRed;
end;

procedure TForm1.scGPPageControl1ChangePage(Sender: TObject);
begin
  scGPImage3.RotateAnimation := scGPPageControl1.TabIndex = 4;
  scGPImage1.RotateAnimation := scGPSwitch4.IsOn and scGPImage3.RotateAnimation;
  scGPActivityBar1.Active := scGPPageControl1.TabIndex = 0;
  scGPGearActivityIndicator1.Active := scGPPageControl1.TabIndex = 0;
  scGPCircledProgressBar2.Active := scGPActivityBar1.Active and scGPSwitch1.IsOn;
  scGPProgressBar1.Active := scGPActivityBar1.Active and scGPSwitch3.IsOn;
end;

procedure TForm1.scGPSlider1GetProgressColor(Sender: TObject;
  var AColor: TColor; var AColorAlpha);
begin
  if scGPSlider1.Value < 0 then
    AColor := clRed
  else
  if scGPSlider1.Value > 0 then
    AColor := clGreen;
end;

procedure TForm1.scGPSlider1GetThumbColor(Sender: TObject; var AColor: TColor;
  var AColorAlpha);
begin
 if scGPSlider1.Value < 0 then
    AColor := clRed
  else
  if scGPSlider1.Value > 0 then
    AColor := clGreen;
end;

procedure TForm1.scGPSlider1LastChange(Sender: TObject);
begin
  scGPHVMeter1.Value := scGPSlider1.Value;
  scGPHVMeter2.Value := -scGPSlider1.Value;
  scGPHVMeter3.Value := scGPSlider1.Value;
  scGPHVMeter4.Value := scGPSlider1.Value / 50;
  scGPHVMeter5.Value := scGPSlider1.Value;
end;

procedure TForm1.scGPSlider2Change(Sender: TObject);
begin
  scGPHVMeter1.Value := scGPSlider2.Value;
  scGPHVMeter2.Value := -scGPSlider2.Value;
  scGPHVMeter3.Value := scGPSlider2.Value;
  scGPHVMeter4.Value := scGPSlider2.Value / 50;
  scGPHVMeter5.Value := scGPSlider2.Value;
end;

procedure TForm1.scGPSlider3Change(Sender: TObject);
begin
  scGPHVMeter1.Value := scGPSlider3.Value;
  scGPHVMeter2.Value := -scGPSlider3.Value;
  scGPHVMeter3.Value := scGPSlider3.Value;
  scGPHVMeter4.Value := scGPSlider3.Value / 50;
  scGPHVMeter5.Value := scGPSlider3.Value;
end;

procedure TForm1.scGPSlider4Change(Sender: TObject);
begin
  scGPHVMeter1.Value := scGPSlider4.Value;
  scGPHVMeter2.Value := -scGPSlider4.Value;
  scGPHVMeter3.Value := scGPSlider4.Value;
  scGPHVMeter4.Value := scGPSlider4.Value / 50;
  scGPHVMeter5.Value := scGPSlider4.Value;
end;

procedure TForm1.scGPSwitch1ChangeState(Sender: TObject);
begin
  scGPCircledProgressBar2.AnimationMode := scGPSwitch1.IsOn;
  scGPCircledProgressBar2.Active := scGPSwitch1.IsOn;
end;

procedure TForm1.scGPSwitch3ChangeState(Sender: TObject);
begin
  scGPProgressBar1.AnimationMode := scGPSwitch3.IsOn;
  scGPProgressBar1.Active := scGPSwitch3.IsOn;
end;

procedure TForm1.scGPSwitch4ChangeState(Sender: TObject);
begin
  if scGPSwitch4.IsOn then
  begin
    scGPImage1.ClipFrame := scgpcfEllipse;
    scGPImage2.ClipFrame := scgpcfRoundedRect;
    scGPImage1.RotateAnimation := True;
  end
  else
  begin
    scGPImage1.ClipFrame := scgpcfNone;
    scGPImage2.ClipFrame := scgpcfNone;
    scGPImage1.RotateAnimation := False;
    scGPImage1.RotationAngle := 0;
  end;
end;

procedure TForm1.scGPTrackBar1Change(Sender: TObject);
begin
  scGPCircledProgressBar1.Value := scGPTrackBar1.Value;
  scGPCircledProgressBar2.Value := scGPTrackBar1.Value;
  scGPProgressBar1.Value := scGPTrackBar1.Value;
end;

procedure TForm1.scGPTrackBar2Change(Sender: TObject);
begin
  scGPProgressBar2.Value := scGPTrackBar2.Value;
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);
  scGPVirtualImageList2.SetScaleFactor(AScaleFactor);
  scGPVirtualImageList3.SetScaleFactor(AScaleFactor);
end;

end.
