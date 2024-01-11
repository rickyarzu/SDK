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
    scGPImageCollection2: TscGPImageCollection;
    scGPVirtualImageList1: TscGPVirtualImageList;
    scStyleManager1: TscStyleManager;
    BorderPanel: TscGPPanel;
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
    scGPLabel3: TscGPLabel;
    scGPLabel2: TscGPLabel;
    scGPPanel1: TscGPPanel;
    scGPImageCollection1: TscGPImageCollection;
    scGPTrackBar2: TscGPTrackBar;
    scGPToggleSwitch1: TscGPToggleSwitch;
    scGPEdit1: TscGPEdit;
    scGPEdit4: TscGPEdit;
    scGPComboEdit1: TscGPComboEdit;
    scGPSpinEdit1: TscGPSpinEdit;
    scGPPasswordEdit1: TscGPPasswordEdit;
    scGPMemo2: TscGPMemo;
    scGPEdit2: TscGPEdit;
    scGPComboEdit3: TscGPComboEdit;
    scStyledForm1: TscStyledForm;
    procedure scGPSwitch3ChangeState(Sender: TObject);
    procedure scGPTrackBar1Change(Sender: TObject);
    procedure scGPDial1Change(Sender: TObject);
    procedure scGPSlider4Change(Sender: TObject);
    procedure scGPToggleSwitch1ChangeState(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
 if IsWindows11 then
    scGPToggleSwitch1.State := scswOn;
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

procedure TForm1.scGPToggleSwitch1ChangeState(Sender: TObject);
begin
  if scGPToggleSwitch1.IsOn then
  begin
    scGPToolPager1.TabOptions.LineWidth := 50;
    scGPToolPager1.TabOptions.TabStyle := gptsRoundedLine;
  end
  else
  begin
    scGPToolPager1.TabOptions.LineWidth := 0;
    scGPToolPager1.TabOptions.TabStyle := gptsLine;
  end;
end;

procedure TForm1.scGPTrackBar1Change(Sender: TObject);
begin
  scGPCircledProgressBar1.Value := scGPTrackBar1.Value;
  scGPProgressBar1.Value := scGPTrackBar1.Value;
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);
end;

end.
