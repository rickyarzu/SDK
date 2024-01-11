unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, scControls, System.UITypes,
  scAdvancedControls, Vcl.StdCtrls, Vcl.ImgList, scImageCollection, Vcl.Menus, Vcl.Themes,
  scStyledForm, scStyleManager, scDialogs;

type
  TForm1 = class(TForm)
    ImageList1: TImageList;
    scImageCollection1: TscImageCollection;
    PopupMenu1: TPopupMenu;
    scPageControl1: TscPageControl;
    scTabSheet1: TscTabSheet;
    scTabSheet2: TscTabSheet;
    scTabSheet3: TscTabSheet;
    scButton1: TscButton;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    scLabel1: TscLabel;
    scLabel2: TscLabel;
    scButton3: TscButton;
    scPanel1: TscPanel;
    scButton4: TscButton;
    scButton5: TscButton;
    scPanel2: TscPanel;
    scButton6: TscButton;
    ImageList2: TImageList;
    scLabel3: TscLabel;
    scComboBox1: TscComboBox;
    scPageControl4: TscPageControl;
    scTabSheet12: TscTabSheet;
    scTabSheet13: TscTabSheet;
    scTabSheet14: TscTabSheet;
    scTabSheet15: TscTabSheet;
    scPageControl2: TscPageControl;
    scTabSheet4: TscTabSheet;
    scTabSheet5: TscTabSheet;
    scTabSheet6: TscTabSheet;
    scPageControl3: TscPageControl;
    scTabSheet7: TscTabSheet;
    scTabSheet8: TscTabSheet;
    scTabSheet9: TscTabSheet;
    scTabSheet10: TscTabSheet;
    scTabSheet11: TscTabSheet;
    scLabel4: TscLabel;
    scLabel5: TscLabel;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scLabel6: TscLabel;
    scButton2: TscButton;
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
    procedure Exit1Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scPageControl4Close(Sender: TObject; var CanClose: Boolean);
    procedure scCheckBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
begin
  scComboBox1.Items.Clear;
  scComboBox1.Items.AddStrings(TStyleManager.StyleNames);
  scComboBox1.ItemIndex := scComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  scPageControl4.TabsInCenter := scCheckBox1.Checked;
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  scPageControl4.ShowInActiveTab := scCheckBox2.Checked;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
end;

procedure TForm1.scPageControl4Close(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := scMessageDlg('Do you want to close this page?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes;
end;

end.
