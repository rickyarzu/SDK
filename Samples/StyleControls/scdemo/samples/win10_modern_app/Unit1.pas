unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scModernControls,
  Vcl.StdCtrls, scExtControls, scStyledForm, scStyleManager, Vcl.ImgList,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, scImageCollection, ShellApi, Vcl.Mask,
  scAdvancedControls, scHint, System.ImageList;

type
  TForm1 = class(TForm)
    scSplitView1: TscSplitView;
    scModernSplitView1: TscModernSplitView;
    scPageViewer1: TscPageViewer;
    scPageViewerPage1: TscPageViewerPage;
    scPageViewerPage2: TscPageViewerPage;
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    scPageViewerPage3: TscPageViewerPage;
    scButton2: TscButton;
    scButton3: TscButton;
    scButton4: TscButton;
    scButton6: TscButton;
    scButton7: TscButton;
    ImageList1: TImageList;
    scButton1: TscButton;
    scLabel1: TscLabel;
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    scPageViewer2: TscPageViewer;
    scPageViewerPage4: TscPageViewerPage;
    scImageCollection1: TscImageCollection;
    scPanel1: TscPanel;
    scSplitView2: TscSplitView;
    scLabel4: TscLabel;
    scLabel28: TscLabel;
    scLabel5: TscLabel;
    scButton10: TscButton;
    scLabel6: TscLabel;
    scEdit1: TscEdit;
    scAdvancedListBox1: TscAdvancedListBox;
    scMemo1: TscMemo;
    scSwitch1: TscSwitch;
    scLabel7: TscLabel;
    scSwitch2: TscSwitch;
    scSwitch3: TscSwitch;
    scActivityIndicator1: TscActivityIndicator;
    scGalleryMenu1: TscGalleryMenu;
    ImageList2: TImageList;
    scHint1: TscHint;
    scPanel2: TscPanel;
    scButton8: TscButton;
    scButton9: TscButton;
    scButton11: TscButton;
    scButton5: TscButton;
    procedure scSplitView1Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scButton3Click(Sender: TObject);
    procedure scButton4Click(Sender: TObject);
    procedure scStyledForm1Buttons0Click(Sender: TObject);
    procedure scModernSplitView1ShowBackButton(Sender: TObject);
    procedure scModernSplitView1HideBackButton(Sender: TObject);
    procedure scButton6Click(Sender: TObject);
    procedure scButton7Click(Sender: TObject);
    procedure scButton1Click(Sender: TObject);
    procedure scSplitView2Click(Sender: TObject);
    procedure scLabel4Click(Sender: TObject);
    procedure scButton5Click(Sender: TObject);
    procedure scButton9Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scSwitch1ChangeState(Sender: TObject);
    procedure scSwitch2ChangeState(Sender: TObject);
    procedure scSwitch3ChangeState(Sender: TObject);
    procedure scModernSplitView1HidePageViewer(Sender: TObject);
    procedure scPageViewer1ChangePage(Sender: TObject);
    procedure scModernSplitView1ShowPageViewer(Sender: TObject);
    procedure scEdit1Change(Sender: TObject);
    procedure scGalleryMenu1MenuPopup(Sender: TObject);
    procedure scEdit1RightButtonClick(Sender: TObject);
    procedure scSplitView1Opening(Sender: TObject);
    procedure scSplitView1Closed(Sender: TObject);
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

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scButton1Click(Sender: TObject);
begin
  scSplitView1.Opened := False;
  scSplitView2.Opened := not scSplitView2.Opened;
end;

procedure TForm1.scButton2Click(Sender: TObject);
begin
  scModernSplitView1.OpenPage(0, scButton2);
end;

procedure TForm1.scButton3Click(Sender: TObject);
begin
  scModernSplitView1.OpenPage(1, scButton3);
end;

procedure TForm1.scButton4Click(Sender: TObject);
begin
  scModernSplitView1.OpenPage(2, scButton4);
end;

procedure TForm1.scButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scButton6Click(Sender: TObject);
begin
  scModernSplitView1.Opened := not scModernSplitView1.Opened;
end;

procedure TForm1.scButton7Click(Sender: TObject);
begin
  scModernSplitView1.CloseAll;
  scSplitView2.Opened := False;
end;

procedure TForm1.scButton9Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scEdit1Change(Sender: TObject);
begin
  if (scEdit1.Text <> '') and (scEdit1.RightButton.ImageIndex <> 17) then
    scEdit1.RightButton.ImageIndex := 17
  else
  if (scEdit1.Text = '') and (scEdit1.RightButton.ImageIndex <> 4) then
    scEdit1.RightButton.ImageIndex := 4;
  scAdvancedListBox1.Filter := scEdit1.Text;
end;

procedure TForm1.scEdit1RightButtonClick(Sender: TObject);
begin
  if scEdit1.RightButton.ImageIndex = 17 then
    scEdit1.Text := '';
end;

procedure TForm1.scGalleryMenu1MenuPopup(Sender: TObject);
begin
  scGalleryMenu1.ItemIndex := -1;
end;

procedure TForm1.scLabel4Click(Sender: TObject);
begin
  scSplitView2Click(Self);
end;

procedure TForm1.scModernSplitView1HideBackButton(Sender: TObject);
begin
 if scStyledForm1.Buttons[0].Visible then
    scStyledForm1.Buttons[0].Visible := False;
end;

procedure TForm1.scModernSplitView1HidePageViewer(Sender: TObject);
begin
  if  scActivityIndicator1.Active then
     scActivityIndicator1.Active := False;
end;

procedure TForm1.scModernSplitView1ShowBackButton(Sender: TObject);
begin
  if not scStyledForm1.Buttons[0].Visible then
    scStyledForm1.Buttons[0].Visible := True;
end;

procedure TForm1.scModernSplitView1ShowPageViewer(Sender: TObject);
begin
  if scPageViewer1.PageIndex = 2 then
   scActivityIndicator1.Active := scSwitch1.IsOn or scSwitch2.IsOn or scSwitch3.IsOn;
end;

procedure TForm1.scPageViewer1ChangePage(Sender: TObject);
begin
  if scActivityIndicator1.Active and (scpageViewer1.PageIndex <> 2) then
     scActivityIndicator1.Active := False
  else
  if scPageViewer1.PageIndex = 2 then
    scActivityIndicator1.Active := scSwitch1.IsOn or scSwitch2.IsOn or scSwitch3.IsOn;
end;

procedure TForm1.scSplitView1Click(Sender: TObject);
begin
  scSplitView1.Opened := not scSplitView1.Opened;
end;

procedure TForm1.scSplitView1Closed(Sender: TObject);
begin
  scPanel2.Visible := False;
end;

procedure TForm1.scSplitView1Opening(Sender: TObject);
begin
  scPanel2.Visible := True;
end;

procedure TForm1.scSplitView2Click(Sender: TObject);
begin
  scSplitView1.Opened := False;
  scSplitView2.Opened := not scSplitView2.Opened;
end;

procedure TForm1.scStyledForm1Buttons0Click(Sender: TObject);
begin
  scModernSplitView1.Back;
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scPanel1.Width := scImageCollection1.Images[0].Picture.Width;
  scPanel1.Height := scImageCollection1.Images[0].Picture.Height;
end;

procedure TForm1.scSwitch1ChangeState(Sender: TObject);
begin
  scActivityIndicator1.IndicatorColor := scSwitch1.FrameOnColor;
  scActivityIndicator1.Active := scSwitch1.IsOn;
end;

procedure TForm1.scSwitch2ChangeState(Sender: TObject);
begin
  scActivityIndicator1.IndicatorColor := scSwitch2.FrameOnColor;
  scActivityIndicator1.Active := scSwitch2.IsOn;
end;

procedure TForm1.scSwitch3ChangeState(Sender: TObject);
begin
  scActivityIndicator1.IndicatorColor := scSwitch3.FrameOnColor;
  scActivityIndicator1.Active := scSwitch3.IsOn;
end;

end.
