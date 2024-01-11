unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SkinData, DynamicSkinForm, Menus, SkinMenus, Buttons, ImgList,
  sppngimagelist, StdCtrls, ComCtrls, SkinCtrls, SkinTabs, SkinBoxCtrls,
  spDialogs, SkinExCtrls, se_effect, se_ani;

type
  TForm1 = class(TForm)
    spDynamicSkinForm1: TspDynamicSkinForm;
    spSkinData1: TspSkinData;
    spCompressedStoredSkin1: TspCompressedStoredSkin;
    spSkinPopupMenu1: TspSkinPopupMenu;
    N121: TMenuItem;
    New: TMenuItem;
    N231: TMenuItem;
    N1231: TMenuItem;
    N111: TMenuItem;
    N11: TMenuItem;
    N312: TMenuItem;
    N31: TMenuItem;
    N1: TMenuItem;
    Close1: TMenuItem;
    spPngImageList1: TspPngImageList;
    spSkinPageControl1: TspSkinPageControl;
    spSkinTabSheet1: TspSkinTabSheet;
    spSkinTabSheet2: TspSkinTabSheet;
    spSkinTabSheet3: TspSkinTabSheet;
    spSelectSkinsFromFoldersDialog1: TspSelectSkinsFromFoldersDialog;
    spSkinScrollPanel1: TspSkinScrollPanel;
    spSkinScrollPanel2: TspSkinScrollPanel;
    spSkinScrollPanel3: TspSkinScrollPanel;
    spSkinButton1: TspSkinButton;
    spSkinButton2: TspSkinButton;
    spSkinDivider1: TspSkinDivider;
    spSkinButton3: TspSkinButton;
    spSkinButton4: TspSkinButton;
    spPngImageList2: TspPngImageList;
    spSkinDivider2: TspSkinDivider;
    spSkinButton5: TspSkinButton;
    spSkinButton7: TspSkinButton;
    spSkinButton8: TspSkinButton;
    spSkinButton9: TspSkinButton;
    spSkinButton10: TspSkinButton;
    spSkinButton6: TspSkinButton;
    spSkinCheckRadioBox1: TspSkinCheckRadioBox;
    spSkinCheckRadioBox2: TspSkinCheckRadioBox;
    spSkinCheckRadioBox3: TspSkinCheckRadioBox;
    spSkinCheckRadioBox4: TspSkinCheckRadioBox;
    spSkinDivider4: TspSkinDivider;
    seAnimationList1: TseAnimationList;
    seAnimation1: TseAnimation;
    spSkinButton11: TspSkinButton;
    procedure Close1Click(Sender: TObject);
    procedure spDynamicSkinForm1CaptionTabChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NewClick(Sender: TObject);
    procedure spSkinButton5Click(Sender: TObject);
    procedure spSkinButton2Click(Sender: TObject);
    procedure spSkinButton6Click(Sender: TObject);
    procedure spSkinButton11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;        

implementation

{$R *.dfm}

procedure TForm1.Close1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.spDynamicSkinForm1CaptionTabChange(Sender: TObject);
var
  StartAnimation: Boolean;
begin
  StartAnimation := False;
  if not seAnimation1.IsControlFrozen(spSkinPageControl1)
  then
    begin
      StartAnimation := True;
      seAnimation1.FreezeControl(spSkinPageControl1, spSkinPageControl1.ClientRect);
    end;
  if spSkinPageControl1.ActivePageIndex <> spDynamicSkinForm1.CaptionTabIndex
  then
    spSkinPageControl1.ActivePageIndex := spDynamicSkinForm1.CaptionTabIndex;
  if StartAnimation
  then
    begin
      try
        seAnimation1.Execute;
      finally
        seAnimation1.Restore;
      end;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  spSkinPageControl1.HideBorderAndTabs;
end;

procedure TForm1.NewClick(Sender: TObject);
begin
  if spSelectSkinsFromFoldersDialog1.Execute('', spSelectSkinsFromFoldersDialog1.SkinName, 'skn')
  then
    spSkinData1.LoadFromCompressedFile(spSelectSkinsFromFoldersDialog1.FileName);
end;

procedure TForm1.spSkinButton5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.spSkinButton2Click(Sender: TObject);
begin
  NewClick(Self);
end;

procedure TForm1.spSkinButton6Click(Sender: TObject);
begin
  NewClick(Self);
end;

procedure TForm1.spSkinButton11Click(Sender: TObject);
begin
  seAnimation1.ShowDesigner;
  //seAnimation1.ShowDSFSkinDesigner(spSkinData1);
end;

end.
