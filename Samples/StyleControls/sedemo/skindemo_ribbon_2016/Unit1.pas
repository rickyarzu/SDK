unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  BusinessSkinForm, bsSkinCtrls, bsribbon, bsMessages, bsSkinShellCtrls,
  bsSkinMenus, ImgList, bsPngImageList, Menus, bsSkinData, bsSkinHint,
  bsColorCtrls, bsSkinExCtrls, StdCtrls, ExtCtrls, bsSkinBoxCtrls,
  bsDialogs, Mask, se_effect, se_ani;

type
  TForm1 = class(TForm)
    bsAppMenu1: TbsAppMenu;
    bsAppMenuPage2: TbsAppMenuPage;
    bsAppMenuPage1: TbsAppMenuPage;
    bsAppMenuPageListBox1: TbsAppMenuPageListBox;
    bsSkinLabel1: TbsSkinLabel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinData1: TbsSkinData;
    bsSkinHint1: TbsSkinHint;
    bsCompressedSkinList1: TbsCompressedSkinList;
    bsResourceStrData1: TbsResourceStrData;
    bsSkinPopupMenu1: TbsSkinPopupMenu;
    Newdocument1: TMenuItem;
    Opendocument1: TMenuItem;
    Save1: TMenuItem;
    bsPngImageList1: TbsPngImageList;
    bsPngImageList2: TbsPngImageList;
    bsPngImageList3: TbsPngImageList;
    bsPngImageList4: TbsPngImageList;
    bsSkinImagesMenu1: TbsSkinImagesMenu;
    bsPngImageList5: TbsPngImageList;
    bsSkinMessage1: TbsSkinMessage;
    bsAppMenuPage4: TbsAppMenuPage;
    bsSkinLabel3: TbsSkinLabel;
    bsSkinLabel2: TbsSkinLabel;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinVistaGlowLabel1: TbsSkinVistaGlowLabel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinLinkLabel1: TbsSkinLinkLabel;
    bsSkinLinkLabel2: TbsSkinLinkLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsAppMenuPage3: TbsAppMenuPage;
    bsSkinLabel4: TbsSkinLabel;
    bsAppMenuPageListBox2: TbsAppMenuPageListBox;
    seAnimationList1: TseAnimationList;
    seAnimation1: TseAnimation;
    seAnimation2: TseAnimation;
    seAnimation3: TseAnimation;
    bsSkinOfficeGridView1: TbsSkinOfficeGridView;
    bsSkinStatusBar1: TbsSkinStatusBar;
    bsSkinStatusPanel2: TbsSkinStatusPanel;
    bsRibbon1: TbsRibbon;
    bsRibbonPage3: TbsRibbonPage;
    bsSkinToolBar1: TbsSkinToolBar;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    bsSkinSpeedButton2: TbsSkinSpeedButton;
    bsSkinSpeedButton6: TbsSkinSpeedButton;
    bsSkinMenuSpeedButton2: TbsSkinMenuSpeedButton;
    bsRibbonDivider2: TbsRibbonDivider;
    bsRibbonPage2: TbsRibbonPage;
    bsRibbonGroup3: TbsRibbonGroup;
    bsSkinOfficeGallery1: TbsSkinOfficeGallery;
    bsRibbonGroup4: TbsRibbonGroup;
    bsRibbonDivider3: TbsRibbonDivider;
    bsSkinOfficeComboBox1: TbsSkinOfficeComboBox;
    bsSkinComboBox1: TbsSkinComboBox;
    bsSkinLabel5: TbsSkinLabel;
    bsRibbonPage1: TbsRibbonPage;
    bsRibbonGroup1: TbsRibbonGroup;
    bsRibbonGroup2: TbsRibbonGroup;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    bsSkinButton3: TbsSkinButton;
    bsSkinButton4: TbsSkinButton;
    bsSkinButton5: TbsSkinButton;
    procedure bsAppMenu1Items5Click(Sender: TObject);
    procedure bsAppMenu1HideMenu(Sender: TObject);
    procedure bsSkinOfficeGridView1ItemClick(Sender: TObject);
    procedure bsSkinOfficeGridView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bsRibbon1KeyPress(Sender: TObject; var Key: Char);
    procedure bsAppMenu1ShowingMenu(Sender: TObject);
    procedure bsAppMenu1ShowMenu(Sender: TObject);
    procedure bsAppMenu1HidingMenu(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
    procedure bsSkinButton4Click(Sender: TObject);
    procedure bsSkinButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  FStopExecute: Boolean = False;

implementation

{$R *.DFM}

procedure TForm1.bsAppMenu1Items5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.bsAppMenu1HideMenu(Sender: TObject);
begin
  try
    seAnimation2.Execute;
  finally
    seAnimation2.Restore;
  end;
  bsRibbon1.SetFocus;
end;

procedure TForm1.bsSkinOfficeGridView1ItemClick(Sender: TObject);
begin
  bsRibbon1.HideAppMenu(nil);
end;

procedure TForm1.bsSkinOfficeGridView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_TAB) and bsAppMenu1.Visible then bsAppMenu1.SetFocus;
end;

procedure TForm1.bsRibbon1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = 'F') or (Key = 'f') and not bsRibbon1.AppMenu.Visible
  then
    begin
      if not bsRibbon1.AppMenu.Visible then bsRibbon1.ShowAppMenu;
     end
  else
  if (Key = 'A') or (Key = 'a')
  then
    begin
      bsRibbon1.ActivePage := bsRibbonPage1;
     end
  else
  if (Key = 'B') or (Key = 'b')
  then
    begin
      bsRibbon1.ActivePage := bsRibbonPage2;
     end
  else
  if (Key = 'C') or (Key = 'c')
  then
    begin
      bsRibbon1.ActivePage := bsRibbonPage3;
     end;
end;

procedure TForm1.bsAppMenu1ShowingMenu(Sender: TObject);
begin
  seAnimation1.FreezeControl(Form1, Rect(1, 1, Form1.Width - 1, Form1.Height - 1));
end;

procedure TForm1.bsAppMenu1ShowMenu(Sender: TObject);
begin
  try
   seAnimation1.Execute;
 finally
   seAnimation1.Restore;
 end;
end;

procedure TForm1.bsAppMenu1HidingMenu(Sender: TObject);
begin
  seAnimation2.FreezeControl(Form1, Rect(1, 1, Form1.Width - 1, Form1.Height - 1));
end;

procedure TForm1.bsSkinButton1Click(Sender: TObject);
begin
  //seAnimation1.ShowBSFSkinDesigner(bsSkinData1);
  seAnimation1.ShowDesigner;
end;

procedure TForm1.bsSkinButton2Click(Sender: TObject);
begin
  //seAnimation2.ShowBSFSkinDesigner(bsSkinData1);
  seAnimation2.ShowDesigner;
end;

procedure TForm1.bsSkinButton3Click(Sender: TObject);
begin
  seAnimation1.FreezeControl(Form1, Rect(0, 0, Form1.Width, Form1.Height));
  bsSkinData1.SkinIndex := 0;
  try
    seAnimation1.Execute;
  finally
    seAnimation1.Restore;
  end;
end;

procedure TForm1.bsSkinButton4Click(Sender: TObject);
begin
  seAnimation1.FreezeControl(Form1, Rect(0, 0, Form1.Width, Form1.Height));
  bsSkinData1.SkinIndex := 1;
  try
    seAnimation1.Execute;
  finally
    seAnimation1.Restore;
  end;
end;

procedure TForm1.bsSkinButton5Click(Sender: TObject);
begin
  seAnimation1.FreezeControl(Form1, Rect(0, 0, Form1.Width, Form1.Height));
  bsSkinData1.SkinIndex := 2;
  try
    seAnimation1.Execute;
  finally
    seAnimation1.Restore;
  end;
end;

end.
