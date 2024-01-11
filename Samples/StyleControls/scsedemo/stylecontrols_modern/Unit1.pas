unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scModernControls,
  Vcl.StdCtrls, scExtControls, scStyledForm, scStyleManager, Vcl.ImgList,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, scImageCollection, ShellApi, Vcl.Mask,
  scAdvancedControls, scHint, se_effect, se_ani, scGPControls;

type
  TForm1 = class(TForm)
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    ImageList1: TImageList;
    scSplitView2: TscSplitView;
    scSplitView1: TscSplitView;
    scButton6: TscButton;
    scButton2: TscButton;
    scButton3: TscButton;
    scButton1: TscButton;
    scButton4: TscButton;
    scSwitch1: TscSwitch;
    scLabel3: TscLabel;
    scPanel1: TscPanel;
    scSplitView3: TscSplitView;
    scButton5: TscButton;
    scPageViewer1: TscPageViewer;
    scPageViewerPage1: TscPageViewerPage;
    scPageViewerPage2: TscPageViewerPage;
    scLabel1: TscLabel;
    scLabel2: TscLabel;
    scLabel7: TscLabel;
    seAnimationList1: TseAnimationList;
    seAnimation1: TseAnimation;
    scButton7: TscButton;
    scImageCollection1: TscImageCollection;
    seAnimation2: TseAnimation;
    scLabel28: TscLabel;
    scLabel13: TscLabel;
    scLabel14: TscLabel;
    scButton10: TscButton;
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
    procedure scButton5Click(Sender: TObject);
    procedure scButton9Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scButton6Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scButton3Click(Sender: TObject);
    procedure scButton1Click(Sender: TObject);
    procedure scButton4Click(Sender: TObject);
    procedure scSwitch1ChangeState(Sender: TObject);
    procedure scButton7Click(Sender: TObject);
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
  if scPageViewer1.PageIndex <> 0 then
  begin
    seAnimation2.FreezeControlClient(Form1, Form1.ClientRect);
    scPageViewer1.PageIndex := 0;
    try
      seAnimation2.Execute;
    finally
      seAnimation2.Restore;
    end;
  end;
end;

procedure TForm1.scButton3Click(Sender: TObject);
begin
  if scPageViewer1.PageIndex <> 1 then
  begin
    seAnimation2.FreezeControlClient(Form1, Form1.ClientRect);
    scPageViewer1.PageIndex := 1;
    try
      seAnimation2.Execute;
    finally
      seAnimation2.Restore;
    end;
  end;
end;

procedure TForm1.scButton4Click(Sender: TObject);
begin
  seAnimation1.FreezeControlClient(Form1,
    Rect(ClientWidth - scSplitView2.OpenedWidth, 0,
    ClientWidth, ClientHeight));
  scSplitView2.Opened := not scSplitView2.Opened;

  if scSplitView2.Opened then
    seAnimation1.Rotation := krRotate270
  else
    seAnimation1.Rotation := krRotate90;

  try
    seAnimation1.Execute;
  finally
    seAnimation1.Restore;
  end;
end;

procedure TForm1.scButton5Click(Sender: TObject);
begin

  seAnimation1.FreezeControlClient(Form1,
    Rect(scSplitView1.Width, 0,
     scSplitView1.Width + scSplitView3.OpenedWidth, ClientHeight));

  scSplitView3.Opened := not scSplitView3.Opened;

  if scSplitView3.Opened then
    seAnimation1.Rotation := krRotate90
  else
    seAnimation1.Rotation := krRotate270;

  try
    seAnimation1.Execute;
  finally
    seAnimation1.Restore;
  end;
end;

procedure TForm1.scButton6Click(Sender: TObject);
begin
  if scSplitView1.DisplayMode = scsvmOverlay then
    seAnimation1.FreezeControlClient(Form1,
      Rect(0, 0, scSplitView1.OpenedWidth, scSplitView1.Height))
  else
   seAnimation1.FreezeControlClient(Form1, Form1.ClientRect);

  scSplitView1.Opened := not scSplitView1.Opened;

  if scSplitView1.Opened then
    seAnimation1.Rotation := krRotate90
  else
    seAnimation1.Rotation := krRotate270;
  try
    seAnimation1.Execute;
  finally
    seAnimation1.Restore;
  end;
end;

procedure TForm1.scButton7Click(Sender: TObject);
begin
  seAnimation2.ShowDesigner;
end;

procedure TForm1.scButton9Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scSwitch1ChangeState(Sender: TObject);
begin
  seAnimation1.FreezeControlClient(Form1, Form1.ClientRect);
  if scSplitView1.DisplayMode = scsvmDocked then
    scSplitView1.DisplayMode := scsvmOverlay
  else
    scSplitView1.DisplayMode := scsvmDocked;
  try
    seAnimation1.Execute;
  finally
    seAnimation1.Restore;
  end;
end;

end.
