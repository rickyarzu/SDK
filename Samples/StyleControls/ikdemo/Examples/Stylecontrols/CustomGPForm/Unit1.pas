unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scGPVertPagers, scGPControls,
  scImageCollection, scGPImages, scModernControls, scStyledForm,
  scStyleManager, scGPExtControls, Vcl.StdCtrls, Vcl.Mask, scGPMeters, Vcl.Menus,
  scExtControls, Vcl.Themes, IKControls;

type
  TForm1 = class(TForm)
    scStyleManager1: TscStyleManager;
    scGPPanel1: TscGPPanel;
    scGPVertTabControl1: TscGPVertTabControl;
    scPanel2: TscPanel;
    scGPGlyphButton19: TscGPGlyphButton;
    scGPGlyphButton21: TscGPGlyphButton;
    scPanel1: TscPanel;
    scGPGlyphButton16: TscGPGlyphButton;
    scGPGlyphButton17: TscGPGlyphButton;
    scGPGlyphButton18: TscGPGlyphButton;
    scGPPanel2: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    scGPGlyphButton1: TscGPGlyphButton;
    scLabel1: TscLabel;
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
    MinButton: TscGPGlyphButton;
    scGPGlyphButton4: TscGPGlyphButton;
    scStyledForm1: TscStyledForm;
    IKPageView1: TIKPageView;
    IKPageViewPage2: TIKPageViewPage;
    scPanel4: TscPanel;
    scGPListBox4: TscGPListBox;
    scGPListBox3: TscGPListBox;
    scGPComboBox2: TscGPComboBox;
    scGPComboBox1: TscGPComboBox;
    scGPComboEdit1: TscGPComboEdit;
    scGPComboEdit2: TscGPComboEdit;
    scGPEdit1: TscGPEdit;
    scGPSpinEdit1: TscGPSpinEdit;
    scGPSpinEdit2: TscGPSpinEdit;
    scGPEdit3: TscGPEdit;
    IKPageViewPage3: TIKPageViewPage;
    scPanel5: TscPanel;
    scGPMeter1: TscGPMeter;
    scGPMeter1201: TscGPMeter120;
    scGPMeter2: TscGPMeter;
    scGPDial1: TscGPDial;
    scGPGearDial1: TscGPGearDial;
    IKPageViewPage1: TIKPageViewPage;
    scPanel3: TscPanel;
    scGPSwitch2: TscGPSwitch;
    scGPSwitch1: TscGPSwitch;
    scGPTrackBar1: TscGPTrackBar;
    scGPCircledProgressBar1: TscGPCircledProgressBar;
    scGPRadioButton1: TscGPRadioButton;
    scGPRadioButton2: TscGPRadioButton;
    scGPRadioButton3: TscGPRadioButton;
    scGPCheckBox1: TscGPCheckBox;
    scGPCheckBox2: TscGPCheckBox;
    scGPSwitch3: TscGPSwitch;
    scGPButton2: TscGPButton;
    scGPButton3: TscGPButton;
    scGPImageCollection1: TscGPImageCollection;
    procedure scGPGlyphButton21Click(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure scGPGlyphButton1Click(Sender: TObject);
    procedure scGPVertTabControl1ChangeTab(Sender: TObject);
    procedure scGPGlyphButton19Click(Sender: TObject);
    procedure scGPTrackBar1Change(Sender: TObject);
    procedure scGPDial1Change(Sender: TObject);
    procedure scGPGearDial1Change(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure scStyledForm1ChangeActive(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
  Uses ShellAPI;


{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPDial1Change(Sender: TObject);
begin
  scGPMeter1.Value := scGPDial1.Value;
  scGPMeter1201.Value := scGPDial1.Value;
end;

procedure TForm1.scGPGearDial1Change(Sender: TObject);
begin
  scGPMeter2.Value := scGPGearDial1.Value;
end;

procedure TForm1.scGPGlyphButton19Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scGPGlyphButton1Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TForm1.scGPGlyphButton21Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPTrackBar1Change(Sender: TObject);
begin
  scGPCircledProgressBar1.Value := scGPTrackBar1.Value;
end;

procedure TForm1.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scGPVertTabControl1ChangeTab(Sender: TObject);
begin
  if scGPVertTabControl1.TabIndex = 2 then
    IKPageView1.TransitionKind := ikpv3DXRotation270
  else
  if IKPageView1.TransitionKind = ikpv3DXYRotation then
    IKPageView1.TransitionKind := ikpv3DYXRotation
  else
    IKPageView1.TransitionKind := ikpv3DXYRotation;
  IKPageView1.PageIndex := scGPVertTabControl1.TabIndex;
end;

procedure TForm1.scStyledForm1ChangeActive(Sender: TObject);
begin
  if Active then
  begin
    scGPPanel1.FrameColorAlpha := 255;
    scLabel1.Font.Color := clBtnText;
    scGPButton1.Options.FrameNormalColorAlpha := 255;
    scGPButton1.Options.FrameHotColorAlpha := 255;
    CloseButton.GlyphOptions.NormalColorAlpha := 255;
    MinButton.GlyphOptions.NormalColorAlpha := 255;
  end
  else
  begin
    scGPPanel1.FrameColorAlpha := 100;
    scLabel1.Font.Color := clGray;
    scGPButton1.Options.FrameNormalColorAlpha := 100;
    scGPButton1.Options.FrameHotColorAlpha := 100;
    CloseButton.GlyphOptions.NormalColorAlpha := 100;
    MinButton.GlyphOptions.NormalColorAlpha := 100;
  end;
end;

end.
