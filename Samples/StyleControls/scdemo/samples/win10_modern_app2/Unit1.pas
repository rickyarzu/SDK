unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scModernControls,
  Vcl.StdCtrls, scExtControls, scStyledForm, scStyleManager, Vcl.ImgList,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, scImageCollection, ShellApi, Vcl.Mask,
  scAdvancedControls, scHint, scDrawUtils, scGPImages,
  scGPControls, System.ImageList;

type
  TForm1 = class(TForm)
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    scSplitView2: TscSplitView;
    scSplitView1: TscSplitView;
    scButton6: TscButton;
    scButton2: TscButton;
    scButton3: TscButton;
    scButton1: TscButton;
    scButton4: TscButton;
    scPanel1: TscPanel;
    scButton5: TscButton;
    scPageViewer1: TscPageViewer;
    scPageViewerPage1: TscPageViewerPage;
    scPageViewerPage2: TscPageViewerPage;
    scLabel1: TscLabel;
    scLabel2: TscLabel;
    scLabel8: TscLabel;
    ImageList48: TImageList;
    scGPVirtualImageList1: TscGPVirtualImageList;
    scMemo1: TscMemo;
    scGPSwitch1: TscGPSwitch;
    scLabel9: TscLabel;
    scLabel16: TscLabel;
    scGPSwitch2: TscGPSwitch;
    scScrollBox1: TscScrollBox;
    scLabel4: TscLabel;
    scSplitView3: TscSplitView;
    scListGroupPanel1: TscListGroupPanel;
    scLabel5: TscLabel;
    scLabel6: TscLabel;
    scLabel3: TscLabel;
    scGPSwitch3: TscGPSwitch;
    scGPSwitch4: TscGPSwitch;
    scGPSwitch5: TscGPSwitch;
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
    scGPSwitch6: TscGPSwitch;
    scLabel10: TscLabel;
    scPanel2: TscPanel;
    scLabel7: TscLabel;
    scLabel28: TscLabel;
    scLabel13: TscLabel;
    scLabel14: TscLabel;
    scButton10: TscButton;
    procedure scButton5Click(Sender: TObject);
    procedure scButton9Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scButton6Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scButton3Click(Sender: TObject);
    procedure scButton1Click(Sender: TObject);
    procedure scButton4Click(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scGPSwitch1ChangeState(Sender: TObject);
    procedure scGPSwitch2ChangeState(Sender: TObject);
    procedure scGPSwitch6ChangeState(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scButton2Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 0;
end;

procedure TForm1.scButton3Click(Sender: TObject);
begin
  scPageViewer1.PageIndex := 1;
end;

procedure TForm1.scButton4Click(Sender: TObject);
begin
  scSplitView2.Opened := not scSplitView2.Opened;
end;

procedure TForm1.scButton5Click(Sender: TObject);
begin
  scSplitView3.Opened := not scSplitView3.Opened;
end;

procedure TForm1.scButton6Click(Sender: TObject);
begin
  scSplitView1.Opened := not scSplitView1.Opened;
end;

procedure TForm1.scButton9Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scGPSwitch1ChangeState(Sender: TObject);
begin
  if scSplitView1.DisplayMode = scsvmDocked then
    scSplitView1.DisplayMode := scsvmOverlay
  else
    scSplitView1.DisplayMode := scsvmDocked;
end;

procedure TForm1.scGPSwitch2ChangeState(Sender: TObject);
begin
  scSplitView1.Animation := scGPSwitch2.IsOn;
  scSplitView2.Animation := scGPSwitch2.IsOn;
  scSplitView3.Animation := scGPSwitch2.IsOn;
end;

procedure TForm1.scGPSwitch6ChangeState(Sender: TObject);
begin
  if scSplitView1.AnimationType = scsvaInertial then
    scSplitView1.AnimationType := scsvaLinear
  else
    scSplitView1.AnimationType := scsvaInertial;
  scSplitView2.AnimationType := scSplitView1.AnimationType;
  scSplitView3.AnimationType := scSplitView1.AnimationType;
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);
end;

end.
