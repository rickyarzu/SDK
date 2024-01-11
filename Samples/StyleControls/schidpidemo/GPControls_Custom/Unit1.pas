unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyledForm, scGPControls, scControls,
  scGPExtControls, scGPPagers, scModernControls, scStyleManager,
  System.ImageList, Vcl.ImgList, scDrawUtils, scGPImages, scImageCollection,
  Vcl.StdCtrls, Vcl.Mask, scGPMeters;

type
  TForm1 = class(TForm)
    scStyledForm1: TscStyledForm;
    scGPImageCollection2: TscGPImageCollection;
    scGPVirtualImageList1: TscGPVirtualImageList;
    scStyleManager1: TscStyleManager;
    BorderPanel: TscGPPanel;
    scGPPanel4: TscGPPanel;
    CloseButton: TscGPGlyphButton;
    CaptionLabel: TscGPLabel;
    MinButton: TscGPGlyphButton;
    scGPToolPager1: TscGPToolPager;
    scGPToolPagerPage2: TscGPToolPagerPage;
    scGPListBox1: TscGPListBox;
    scGPListBox4: TscGPListBox;
    scGPListBox3: TscGPListBox;
    scGPComboBox2: TscGPComboBox;
    scGPComboBox1: TscGPComboBox;
    scGPToolPagerPage3: TscGPToolPagerPage;
    scGPMeter1: TscGPMeter;
    scGPDial1: TscGPDial;
    scGPSlider1: TscGPSlider;
    scGPSlider4: TscGPSlider;
    scGPHVMeter4: TscGPHVMeter;
    scGPToolPagerPage1: TscGPToolPagerPage;
    scGPSwitch1: TscGPSwitch;
    scGPSwitch3: TscGPSwitch;
    scGPTrackBar1: TscGPTrackBar;
    scGPProgressBar1: TscGPProgressBar;
    scGPCircledProgressBar1: TscGPCircledProgressBar;
    scGPGearActivityIndicator1: TscGPGearActivityIndicator;
    scGPButton5: TscGPButton;
    scGPRadioButton1: TscGPRadioButton;
    scGPRadioButton2: TscGPRadioButton;
    scGPCheckBox2: TscGPCheckBox;
    scGPCheckBox3: TscGPCheckBox;
    scGPPanel2: TscGPPanel;
    scGPTrackBar4: TscGPTrackBar;
    scGPLabel2: TscGPLabel;
    scGPPanel1: TscGPPanel;
    scGPImageCollection1: TscGPImageCollection;
    scGPLabel1: TscGPLabel;
    procedure CloseButtonClick(Sender: TObject);
    procedure MinButtonClick(Sender: TObject);
    procedure scGPSwitch3ChangeState(Sender: TObject);
    procedure scGPTrackBar1Change(Sender: TObject);
    procedure scGPDial1Change(Sender: TObject);
    procedure scGPSlider4Change(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scStyledForm1ChangeActive(Sender: TObject);
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

procedure TForm1.MinButtonClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TForm1.scGPDial1Change(Sender: TObject);
begin
  scGPMeter1.Value := scGPDial1.Value;
end;

procedure TForm1.scGPSlider4Change(Sender: TObject);
begin
  scGPHVMeter4.Value := scGPSlider4.Value / 50;
end;

procedure TForm1.scGPSwitch3ChangeState(Sender: TObject);
begin
  scGPGearActivityIndicator1.Active := scGPSwitch3.IsOn;
end;

procedure TForm1.scGPTrackBar1Change(Sender: TObject);
begin
  scGPCircledProgressBar1.Value := scGPTrackBar1.Value;
  scGPProgressBar1.Value := scGPTrackBar1.Value;
end;

procedure TForm1.scStyledForm1ChangeActive(Sender: TObject);
begin
  if Active then
  begin
    CaptionLabel.Font.Color := $004A3D35;
    CloseButton.GlyphOptions.NormalColorAlpha := 255;
    MinButton.GlyphOptions.NormalColorAlpha := 255;
  end
  else
  begin
    CaptionLabel.Font.Color := $00A48D80;
    CloseButton.GlyphOptions.NormalColorAlpha := 150;
    MinButton.GlyphOptions.NormalColorAlpha := 150;
  end;

end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);
end;

end.
