unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, Vcl.StdCtrls, Vcl.ComCtrls,
  scGrids, Vcl.Mask, Vcl.CheckLst, scExtControls, scAdvancedControls,
  scHtmlControls, IKControls, scAdvancedPager, Vcl.ImgList, scHint, Vcl.Menus,
  scStyledForm, scStyleManager, scImageCollection, Vcl.Themes, ShellAPI;

type
  TForm1 = class(TForm)
    scAdvancedTabControl1: TscAdvancedTabControl;
    scAdvancedComboBox1: TscAdvancedComboBox;
    IKPageView1: TIKPageView;
    IKPageViewPage3: TIKPageViewPage;
    scLabel28: TscLabel;
    scLabel4: TscLabel;
    scButton10: TscButton;
    scHTMLLabel1: TscHTMLLabel;
    IKPageViewPage2: TIKPageViewPage;
    scAdvancedListBox1: TscAdvancedListBox;
    scAdvancedComboBox2: TscAdvancedComboBox;
    scHorzListBox1: TscHorzListBox;
    scScrollBox2: TscScrollBox;
    scExPanel1: TscExPanel;
    scButton16: TscButton;
    scExPanel2: TscExPanel;
    scCheckBox3: TscCheckBox;
    scExPanel3: TscExPanel;
    scAdvancedListBox3: TscAdvancedListBox;
    scAdvancedListBox2: TscAdvancedListBox;
    IKPageViewPage1: TIKPageViewPage;
    scListBox1: TscListBox;
    scCheckListBox1: TscCheckListBox;
    scTreeView1: TscTreeView;
    scEdit1: TscEdit;
    scEdit2: TscEdit;
    scComboBox1: TscComboBox;
    scStringGrid1: TscStringGrid;
    scListView1: TscListView;
    scMemo2: TscMemo;
    scPanel1: TscPanel;
    scButton1: TscButton;
    scComboBox2: TscComboBox;
    scImageCollection1: TscImageCollection;
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    scBalloonHint1: TscBalloonHint;
    ImageList1: TImageList;
    ImageList2: TImageList;
    procedure scAdvancedTabControl1ChangingTab(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
    procedure scAdvancedComboBox1Change(Sender: TObject);
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
  scAdvancedComboBox1.InitItemIndex(scAdvancedComboBox1.IndexOfCaption(TStyleManager.ActiveStyle.Name));
end;

procedure TForm1.scAdvancedComboBox1Change(Sender: TObject);
begin
  TStyleManager.SetStyle(scAdvancedComboBox1.Items[scAdvancedComboBox1.ItemIndex].Caption);
end;

procedure TForm1.scAdvancedTabControl1ChangingTab(Sender: TObject);
begin
   if IKPageView1.TransitionKind = ikpv3DYXRotation270 then
    IKPageView1.TransitionKind := ikpv3DXYRotation270
  else
    IKPageView1.TransitionKind := ikpv3DYXRotation270;
  IKPageView1.PageIndex := scAdvancedTabControl1.TabIndex;
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

end.
