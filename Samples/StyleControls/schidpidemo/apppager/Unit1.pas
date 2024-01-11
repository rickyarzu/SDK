unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scExtControls, scAppPager, scControls,
  Vcl.StdCtrls, scImageCollection, Vcl.ImgList, Vcl.Themes, System.UITypes,
  scStyleManager, scStyledForm, scDialogs, scDrawUtils,
  scGPImages, System.ImageList;

type
  TForm1 = class(TForm)
    scAppPager1: TscAppPager;
    scAppPagerPage1: TscAppPagerPage;
    scAppPagerPage2: TscAppPagerPage;
    scAppPagerPage3: TscAppPagerPage;
    scAppPagerPage4: TscAppPagerPage;
    scLabel1: TscLabel;
    scComboBox1: TscComboBox;
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    scLabel4: TscLabel;
    scLabel5: TscLabel;
    scComboBox2: TscComboBox;
    scLabel6: TscLabel;
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
    scGPVirtualImageList1: TscGPVirtualImageList;
    scGPVirtualImageList2: TscGPVirtualImageList;
    scMemo1: TscMemo;
    scGPImageCollection2: TscGPImageCollection;
    scGPImageCollection1: TscGPImageCollection;
    scGPImageCollection3: TscGPImageCollection;
    procedure scComboBox1Click(Sender: TObject);
    procedure scComboBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scAppPager1Items7Click(Sender: TObject);
    procedure scAppPager1Items3Click(Sender: TObject);
    procedure scAppPager1CaptionClick(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
begin
  scComboBox2.Items.Clear;
  scComboBox2.Items.AddStrings(TStyleManager.StyleNames);
  scComboBox2.ItemIndex := scComboBox2.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

procedure TForm1.scAppPager1CaptionClick(Sender: TObject);
begin
  scMessageDlg('Caption Click', mtInformation, [mbOk], 0);
end;

procedure TForm1.scAppPager1Items3Click(Sender: TObject);
begin
  scMessageDlg('Item can be without linked page!', mtInformation, [mbOk], 0);
end;

procedure TForm1.scAppPager1Items7Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  scAppPager1.SelectionStyle := TscAppPagerSelectionStyle(scComboBox1.ItemIndex);
end;

procedure TForm1.scComboBox2Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox2.Items[scComboBox2.ItemIndex]);
end;

procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: Double);
begin
  scGPVirtualImageList1.SetScaleFactor(AScaleFactor);
  scGPVirtualImageList2.SetScaleFactor(AScaleFactor);
end;

end.
