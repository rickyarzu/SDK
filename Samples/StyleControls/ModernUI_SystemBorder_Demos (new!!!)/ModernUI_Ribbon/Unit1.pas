unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scStyledForm, scControls, scGPControls,
  scGPExtControls, scGPPagers, Vcl.Menus, Vcl.ComCtrls, scStyleManager, Vcl.Themes,
  scExtControls, scModernControls, scAdvancedControls, Vcl.StdCtrls, Vcl.Mask,
  System.Types, scDrawUtils, scGPImages, Vcl.ImgList, System.ImageList,
  scImageCollection, ShellApi;

type
  TForm1 = class(TForm)
    scStyledForm1: TscStyledForm;
    PopupMenu1: TPopupMenu;
    Open1: TMenuItem;
    New1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    N2: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    scStyleManager1: TscStyleManager;
    scGPImageCollection1: TscGPImageCollection;
    scGPVirtualImageList1: TscGPVirtualImageList;
    PopupMenu2: TPopupMenu;
    Item11: TMenuItem;
    Item21: TMenuItem;
    Item31: TMenuItem;
    scGPImageCollection2: TscGPImageCollection;
    ClientPanel: TscPanel;
    scGPPanel2: TscGPPanel;
    scGPToolPager1: TscGPToolPager;
    scGPGlyphButton7: TscGPGlyphButton;
    scGPGlyphButton8: TscGPGlyphButton;
    MenuButton: TscGPButton;
    scGPToolPagerPage3: TscGPToolPagerPage;
    scGPToolPagerPage2: TscGPToolPagerPage;
    scGPToolPagerPage1: TscGPToolPagerPage;
    scGPToolGroupPanel2: TscGPToolGroupPanel;
    scGPButton3: TscGPButton;
    scGPButton4: TscGPButton;
    scGPToolGroupPanel3: TscGPToolGroupPanel;
    scGPButton1: TscGPButton;
    scGPButton2: TscGPButton;
    scGPToolGroupPanel4: TscGPToolGroupPanel;
    scGPButton8: TscGPButton;
    scGPButton9: TscGPButton;
    scGPButton10: TscGPButton;
    scGPPanel3: TscGPPanel;
    scGPLabel1: TscGPLabel;
    scGPLabel3: TscGPLabel;
    procedure Exit1Click(Sender: TObject);
    procedure scStyledForm1ChangeScale(AScaleFactor: Double);
    procedure scButton10Click(Sender: TObject);
    procedure scGPButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scGPButton7Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);
end;

end.
