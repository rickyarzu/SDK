unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  se_pngimagelist, se_effect, se_ani, se_controls, ImgList,
  ExtCtrls, se_image, se_imagelist, jpeg, StdCtrls, Buttons, se_form,
  ComCtrls, Unit4, Unit3, ShellAPI;

type
  TForm1 = class(TForm)
    seAnimationList1: TseAnimationList;
    PageAnimation: TseAnimation;
    seImageList1: TseImageList;
    FormShowAnimation: TseAnimation;
    seAnimationForm1: TseAnimationForm;
    sePanel1: TsePanel;
    seToolBarEx1: TseToolBarEx;
    sePngImageStorage1: TsePngImageStorage;
    sePngXButton1: TsePngXButton;
    seAnimation1: TseAnimation;
    sePngImageList1: TsePngImageList;
    seImageList2: TseImageList;
    TestAnimation: TseAnimation;
    seAnimation2: TseAnimation;
    TestAnimation2: TseAnimation;
    seAnimation3: TseAnimation;
    sePngImageList2: TsePngImageList;
    seAnimation4: TseAnimation;
    sePageViewer1: TsePageViewer;
    sePageViewerPage1: TsePageViewerPage;
    seXLabel1: TseXLabel;
    sePngXButton3: TsePngXButton;
    sePngXButton2: TsePngXButton;
    seImage1: TseImage;
    sePageViewerPage2: TsePageViewerPage;
    sePngXButton4: TsePngXButton;
    seButtonLabel3: TseButtonLabel;
    sePanel2: TsePanel;
    seXLabel7: TseXLabel;
    sePngImageView1: TsePngImageView;
    sePngXButton6: TsePngXButton;
    seButtonLabel4: TseButtonLabel;
    seXLabel8: TseXLabel;
    sePageViewerPage3: TsePageViewerPage;
    seXLabel3: TseXLabel;
    seXLabel9: TseXLabel;
    seXLabel10: TseXLabel;
    Edit1: TEdit;
    sePngXButton7: TsePngXButton;
    seReflectLabel2: TseReflectLabel;
    sePageViewerPage4: TsePageViewerPage;
    seXLabel4: TseXLabel;
    Panel1: TPanel;
    Button4: TButton;
    sePngXButton8: TsePngXButton;
    sePngXButton9: TsePngXButton;
    sePngXButton10: TsePngXButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Button1: TButton;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    TabSheet3: TTabSheet;
    Edit2: TEdit;
    Memo1: TMemo;
    sePageViewerPage5: TsePageViewerPage;
    seXLabel5: TseXLabel;
    seReflectLabel1: TseReflectLabel;
    sePngImagePanel1: TsePngImagePanel;
    seButtonLabel1: TseButtonLabel;
    seButtonLabel2: TseButtonLabel;
    seXLabel6: TseXLabel;
    seXLabel2: TseXLabel;
    Frame41: TFrame4;
    Frame31: TFrame3;
    sePngXButton5: TsePngXButton;
    seButtonLabel5: TseButtonLabel;
    procedure seToolBarEx1Change(Sender: TObject);
    procedure sePngXButton1Click(Sender: TObject);
    procedure sePngXButton2Click(Sender: TObject);
    procedure sePngXButton3Click(Sender: TObject);
    procedure sePngXButton5Click(Sender: TObject);
    procedure seButtonLabel4CheckChanged(Sender: TObject);
    procedure sePngXButton6Click(Sender: TObject);
    procedure sePngXButton7Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure sePngXButton8Click(Sender: TObject);
    procedure sePngXButton9Click(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure seButtonLabel1Click(Sender: TObject);
    procedure seButtonLabel2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sePngImagePanel1MouseEnter(Sender: TObject);
    procedure sePngImagePanel1MouseLeave(Sender: TObject);
    procedure sePngXButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.DFM}

procedure TForm1.seToolBarEx1Change(Sender: TObject);
begin
  sePageViewer1.PageIndex := seToolBarEx1.ItemIndex;
end;

procedure TForm1.sePngXButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.sePngXButton2Click(Sender: TObject);
begin
  if seImage1.ImageIndex = 0
  then
    seImage1.ImageIndex := 1
  else
  if seImage1.ImageIndex = 1
  then
    seImage1.ImageIndex := 2
  else
    seImage1.ImageIndex := 0;
end;

procedure TForm1.sePngXButton3Click(Sender: TObject);
begin
  TestAnimation.ShowDesigner;
end;

procedure TForm1.sePngXButton5Click(Sender: TObject);
begin
  if sePanel2.BGImageIndex = 0
  then
    sePanel2.BGImageIndex := 1
  else
    sePanel2.BGImageIndex := 0;
end;

procedure TForm1.seButtonLabel4CheckChanged(Sender: TObject);
begin
  sePngImageView1.ReflectionEffect := seButtonLabel4.Checked;
end;

procedure TForm1.sePngXButton6Click(Sender: TObject);
begin
  if sePngImageView1.ImageIndex = 9
  then
    sePngImageView1.ImageIndex := 8
  else
    sePngImageView1.ImageIndex := 9;
end;

procedure TForm1.sePngXButton7Click(Sender: TObject);
begin
  seXLabel10.ChangeText(Edit1.Text);
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13
  then
    seXLabel10.ChangeText(Edit1.Text);
end;

procedure TForm1.sePngXButton8Click(Sender: TObject);
begin
  if TestAnimation2.State <> asExecuting then  
  with TestAnimation2 do
  begin
    ForceControlUpdate := True;
    FreezeControlClient(Panel1, Panel1.ClientRect);
    try
      Button4.Left := Random(80);
      Button4.Top := Random(80);
      Panel1.Color := Random($FFFFFF);
      Execute;
    finally
      Restore;
    end;
  end;
end;

procedure TForm1.sePngXButton9Click(Sender: TObject);
begin
  TestAnimation2.ShowDesigner;
end;

procedure TForm1.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  with seAnimation3 do
  begin
    FreezeControlClient(PageControl1, PageControl1.ClientRect);
  end;
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
  with seAnimation3 do
  begin
    try
      ForceControlUpdate := True;
      Execute;
    finally
      Restore;
    end;
  end;
end;

procedure TForm1.seButtonLabel1Click(Sender: TObject);
var
  FURL: String;
begin
  FURL := 'http://www.almdev.com';
  ShellExecute(0, 'open', PChar(FURL), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.seButtonLabel2Click(Sender: TObject);
var
  FURL: String;
begin
  FURL := 'mailto:support@almdev.com';
  ShellExecute(0, 'open', PChar(FURL), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SplashForm := TSplashForm.Create(Application);
  SplashForm.ShowModal;
  SplashForm.Free;
end;

procedure TForm1.sePngImagePanel1MouseEnter(Sender: TObject);
begin
  sePngImagePanel1.ImageIndex := 12;
end;

procedure TForm1.sePngImagePanel1MouseLeave(Sender: TObject);
begin
  sePngImagePanel1.ImageIndex := 11;
end;

procedure TForm1.sePngXButton10Click(Sender: TObject);
begin
  if TestAnimation2.State <> asExecuting then 
  with TestAnimation2 do
  begin
    ForceControlUpdate := True;
    FreezeControlClient(sePageViewer1.ActivePage,
      Rect(Frame31.Left, Frame31.Top,
      Frame31.Left + Frame31.Width, Frame31.Top + Frame31.Height));
    Frame31.Visible := not Frame31.Visible;
    Frame41.Visible := not Frame41.Visible;
    try
      Execute;
    finally
      Restore;
    end;
  end;
end;

end.
