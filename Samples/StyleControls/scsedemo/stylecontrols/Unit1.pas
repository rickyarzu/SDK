unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Themes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, scControls, scModernControls,
  scGPControls, scGPMeters, Vcl.Imaging.pngimage, scStyleManager, scStyledForm, Vcl.Menus,
  scImageCollection, Vcl.ComCtrls, scExtControls, scAdvancedPager, scGPImages,
  Vcl.ImgList, scDrawUtils, se_effect, se_ani, scAdvancedControls, Vcl.Mask,
  Vcl.CheckLst, scCalendar, scHtmlControls, scHint, scGrids, scToolPager,
  scAppPager, System.ImageList;

type
  TForm1 = class(TForm)
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
    scStatusBar1: TscStatusBar;
    scAdvancedPager1: TscAdvancedPager;
    scAdvancedPagerPage1: TscAdvancedPagerPage;
    scAdvancedPagerPage2: TscAdvancedPagerPage;
    scAdvancedPagerPage3: TscAdvancedPagerPage;
    seAnimationList1: TseAnimationList;
    seAnimation1: TseAnimation;
    scButton3: TscButton;
    scAdvancedComboBox1: TscAdvancedComboBox;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    scEdit1: TscEdit;
    scComboBox1: TscComboBox;
    scComboBox2: TscComboBox;
    scEdit2: TscEdit;
    scListBox1: TscListBox;
    scCheckListBox1: TscCheckListBox;
    scTreeView1: TscTreeView;
    scListView1: TscListView;
    scMemo1: TscMemo;
    scScrollBox1: TscScrollBox;
    scButton1: TscButton;
    scMemo2: TscMemo;
    scHTMLLabel1: TscHTMLLabel;
    ImageList1: TImageList;
    scAdvancedListBox1: TscAdvancedListBox;
    scAdvancedComboBox2: TscAdvancedComboBox;
    ImageList2: TImageList;
    scHorzListBox1: TscHorzListBox;
    scBalloonHint1: TscBalloonHint;
    seAnimation2: TseAnimation;
    scButton4: TscButton;
    scButton5: TscButton;
    scPanel1: TscPanel;
    scButton2: TscButton;
    scImageCollection1: TscImageCollection;
    scStringGrid1: TscStringGrid;
    scAdvancedListBox2: TscAdvancedListBox;
    scButtonsBar1: TscButtonsBar;
    scToolPager1: TscToolPager;
    scButton6: TscButton;
    scButton7: TscButton;
    scButton8: TscButton;
    scToolPagerPage3: TscToolPagerPage;
    scLabel28: TscLabel;
    scLabel4: TscLabel;
    scButton10: TscButton;
    scToolPagerPage2: TscToolPagerPage;
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    scLabel5: TscLabel;
    scLabel6: TscLabel;
    scToolPagerPage1: TscToolPagerPage;
    scButton9: TscButton;
    scButton11: TscButton;
    scPanel2: TscPanel;
    scButton12: TscButton;
    scButton13: TscButton;
    scPanel3: TscPanel;
    scButton14: TscButton;
    scPanel4: TscPanel;
    scButton15: TscButton;
    scAppPager1: TscAppPager;
    scAppPagerPage3: TscAppPagerPage;
    scLabel1: TscLabel;
    scAppPagerPage4: TscAppPagerPage;
    scLabel7: TscLabel;
    scLabel8: TscLabel;
    scAppPagerPage2: TscAppPagerPage;
    scLabel9: TscLabel;
    scAppPagerPage1: TscAppPagerPage;
    scLabel10: TscLabel;
    scScrollBox2: TscScrollBox;
    scExPanel1: TscExPanel;
    scButton16: TscButton;
    scExPanel2: TscExPanel;
    scCheckBox3: TscCheckBox;
    scExPanel3: TscExPanel;
    scAdvancedListBox3: TscAdvancedListBox;
    seAnimation3: TseAnimation;
    procedure FormCreate(Sender: TObject);
    procedure scAdvancedPager1ChangePage(Sender: TObject);
    procedure scAdvancedPager1ChangingPage(Sender: TObject);
    procedure scButton3Click(Sender: TObject);
    procedure scAdvancedComboBox1Change(Sender: TObject);
    procedure scAdvancedPager1CanChangePage(ATabIndex: Integer;
      var ACanChange: Boolean);
    procedure scButton4Click(Sender: TObject);
    procedure scButton5Click(Sender: TObject);
    procedure scButton2Click(Sender: TObject);
    procedure scButton1Click(Sender: TObject);
    procedure scButtonsBar1Changing(Sender: TObject);
    procedure scButtonsBar1Change(Sender: TObject);
    procedure scToolPager1CanChangePage(ATabIndex: Integer;
      var ACanChange: Boolean);
    procedure scToolPager1ChangePage(Sender: TObject);
    procedure scToolPager1ChangingPage(Sender: TObject);
    procedure scAppPager1Items6Click(Sender: TObject);
    procedure scAppPager1ChangePage(Sender: TObject);
    procedure scAppPager1ChangingPage(Sender: TObject);
    procedure scAppPager1CanChangePage(APage: TscAppPagerPage;
      var ACanChange: Boolean);
    procedure scExPanel1ChangingRollUpState(Sender: TObject);
    procedure scExPanel1ChangeRollUpState(Sender: TObject);
    procedure scExPanel1CaptionClick(Sender: TObject);
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
var
  I: Integer;
  Item: TscAdvancedListItem;
begin
  for I := Low(TStyleManager.StyleNames) to High(TStyleManager.StyleNames) do
  begin
    Item := scAdvancedComboBox1.Items.Add;
    Item.Caption := TStyleManager.StyleNames[I];
  end;
  scAdvancedComboBox1.Sort;
  scAdvancedComboBox1.InitItemIndex(scAdvancedComboBox1.IndexOfCaption(TStyleManager.ActiveStyle.Name));
  scComboBox2.ItemIndex := 0;
end;

procedure TForm1.scAdvancedComboBox1Change(Sender: TObject);
begin
  TStyleManager.SetStyle(scAdvancedComboBox1.Items[scAdvancedComboBox1.ItemIndex].Caption);
end;

procedure TForm1.scAdvancedPager1CanChangePage(ATabIndex: Integer;
  var ACanChange: Boolean);
begin
  // do not change page if animation not completed for control
  ACanChange := not seAnimation1.IsControlFrozen(scAdvancedPager1);
end;

procedure TForm1.scAdvancedPager1ChangePage(Sender: TObject);
begin
  // start animation
  try
    seAnimation1.Execute;
  finally
    seAnimation1.Restore;
  end;
end;

procedure TForm1.scAdvancedPager1ChangingPage(Sender: TObject);
begin
  // prepare animation
  seAnimation1.FreezeControlClient(scAdvancedPager1,
    scAdvancedPager1.ActivePage.BoundsRect);
end;

procedure TForm1.scAppPager1CanChangePage(APage: TscAppPagerPage;
  var ACanChange: Boolean);
begin
  ACanChange := not seAnimation1.IsControlFrozen(scAppPager1);
end;

procedure TForm1.scAppPager1ChangePage(Sender: TObject);
begin
  // start animation
  try
    seAnimation1.Execute;
  finally
    seAnimation1.Restore;
  end;
end;

procedure TForm1.scAppPager1ChangingPage(Sender: TObject);
begin
  seAnimation1.FreezeControlClient(scAppPager1,
    scAppPager1.ActivePage.BoundsRect);
end;

procedure TForm1.scAppPager1Items6Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scButton1Click(Sender: TObject);
begin
  if seAnimation2.IsControlFrozen(scScrollBox1) then
    Exit;
  seAnimation2.FreezeControl(scScrollBox1,
    Rect(2, 2, 2 + scScrollBox1.ClientWidth, 2 + scScrollBox1.ClientHeight));
  if scScrollBox1.WallpaperIndex >= 0 then
    scScrollBox1.WallpaperIndex := -1
  else
    scScrollBox1.WallpaperIndex := 0;
  try
    seAnimation2.Execute;
  finally
    seAnimation2.Restore;
  end;
end;

procedure TForm1.scButton2Click(Sender: TObject);
begin
  if seAnimation2.IsControlFrozen(scPanel1) then
    Exit;
  seAnimation2.FreezeControl(scPanel1, Rect(0, 0, scPanel1.Width, scPanel1.Height));
  scButton2.Left := Random(100);
  scButton2.Top := Random(100);
  if scButton2.Left + scButton2.Width > scPanel1.Width - 2 then
    scButton2.Left := scPanel1.Width - scButton2.Width - 2;
  if scButton2.Top + scButton2.Height > scPanel1.Height - 2 then
    scButton2.Top := scPanel1.Height - scButton2.Height - 2;
  try
    seAnimation2.Execute;
  finally
    seAnimation2.Restore;
  end;
end;

procedure TForm1.scButton3Click(Sender: TObject);
begin
  seAnimation3.FreezeControlClient(Self,
    Rect(0, 0, ClientWidth, ClientHeight));
  scStyledForm1.ShowClientInActiveEffect;
  try
    seAnimation3.Execute;
  finally
    seAnimation3.Restore;
  end;
  //
  seAnimation1.ShowDesigner;
  //
   seAnimation3.FreezeControlClient(Self,
    Rect(0, 0, ClientWidth, ClientHeight));
  scStyledForm1.HideClientInActiveEffect;
  try
    seAnimation3.Execute;
  finally
    seAnimation3.Restore;
  end;
end;

procedure TForm1.scButton4Click(Sender: TObject);
begin
  if seAnimation2.IsControlFrozen(scAdvancedPagerPage1) then
    Exit;
  seAnimation2.FreezeControl(scAdvancedPagerPage1, Rect(scListBox1.Left,
    scListBox1.Top,
    scListView1.Left + scListView1.Width,
    scListView1.Top + scListView1.Height));
  if scListBox1.Visible then
  begin
    seAnimation2.Rotation := krRotate180;
    scListBox1.Visible := False;
    scCheckListBox1.Visible := False;
    scTreeView1.Visible := False;
    scListView1.Visible := False;
  end
  else
  begin
    seAnimation2.Rotation := krNone;
    scListBox1.Visible := True;
    scCheckListBox1.Visible := True;
    scTreeView1.Visible := True;
    scListView1.Visible := True;
  end;
  try
    seAnimation2.Execute;
  finally
    seAnimation2.Restore;
  end;
end;

procedure TForm1.scButton5Click(Sender: TObject);
begin
  if seAnimation2.IsControlFrozen(scMemo1) then
    Exit;
  seAnimation2.FreezeControl(scMemo1,
    Rect(2, 2, 2 + scMemo1.ClientWidth, 2 + scMemo1.ClientHeight));
  scMemo1.Transparent := not scMemo1.Transparent;
  try
    seAnimation2.Execute;
  finally
    seAnimation2.Restore;
  end;
end;

procedure TForm1.scButtonsBar1Change(Sender: TObject);
begin
  try
    seAnimation2.Execute;
  finally
    seAnimation2.Restore;
  end;
end;

procedure TForm1.scButtonsBar1Changing(Sender: TObject);
begin
  if seAnimation2.IsControlFrozen(scButtonsBar1) then
   Exit;
  seAnimation2.FreezeControl(scButtonsBar1,
    Rect(0, 0, scButtonsBar1.Width, scButtonsBar1.Height));
end;

procedure TForm1.scExPanel1CaptionClick(Sender: TObject);
begin
  TscExPanel(Sender).RollUpState := not TscExPanel(Sender).RollUpState;
end;

procedure TForm1.scExPanel1ChangeRollUpState(Sender: TObject);
begin
  try
    seAnimation2.Execute;
  finally
    seAnimation2.Restore;
  end;
end;

procedure TForm1.scExPanel1ChangingRollUpState(Sender: TObject);
begin
  if seAnimation2.IsControlFrozen(scScrollBox2) then
   Exit;
  seAnimation2.FreezeControl(scScrollBox2,
    Rect(0, 0, scScrollBox2.Width, scScrollBox2.Height));
end;

procedure TForm1.scToolPager1CanChangePage(ATabIndex: Integer;
  var ACanChange: Boolean);
begin
  ACanChange := not seAnimation2.IsControlFrozen(scToolPager1);
end;

procedure TForm1.scToolPager1ChangePage(Sender: TObject);
begin
  // start animation
  try
    seAnimation2.Execute;
  finally
    seAnimation2.Restore;
  end;
end;

procedure TForm1.scToolPager1ChangingPage(Sender: TObject);
begin
 // prepare animation
  seAnimation2.FreezeControlClient(scToolPager1,
    Rect(0, 0, scToolPager1.Width, scToolPager1.Height));
end;

end.
