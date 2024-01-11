unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scExtControls, scAppPager, scControls,
  Vcl.StdCtrls, scImageCollection, Vcl.ImgList, Vcl.Themes, System.UITypes,
  scStyleManager, scStyledForm, scDialogs, scDrawUtils,
  scGPImages, System.ImageList, Vcl.VirtualImageList, Vcl.BaseImageCollection,
  Vcl.ImageCollection;

type
  TForm1 = class(TForm)
    scAppPager1: TscAppPager;
    scAppPagerPage1: TscAppPagerPage;
    scAppPagerPage2: TscAppPagerPage;
    scAppPagerPage3: TscAppPagerPage;
    scAppPagerPage4: TscAppPagerPage;
    scCheckBox1: TscCheckBox;
    scLabel1: TscLabel;
    scComboBox1: TscComboBox;
    scCheckBox4: TscCheckBox;
    scCheckBox5: TscCheckBox;
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    scLabel4: TscLabel;
    scLabel5: TscLabel;
    scComboBox2: TscComboBox;
    scLabel6: TscLabel;
    scCheckBox7: TscCheckBox;
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
    scMemo1: TscMemo;
    scGPImageCollection1: TscGPImageCollection;
    ImageCollection1: TImageCollection;
    VirtualImageList1: TVirtualImageList;
    VirtualImageList2: TVirtualImageList;
    procedure scCheckBox1Click(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scCheckBox5Click(Sender: TObject);
    procedure scComboBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure scAppPager1Items7Click(Sender: TObject);
    procedure scAppPager1Items3Click(Sender: TObject);
    procedure scCheckBox7Click(Sender: TObject);
    procedure scAppPager1CaptionClick(Sender: TObject);
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

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  scAppPager1.ShowCaption := scCheckBox1.Checked;
end;

procedure TForm1.scCheckBox4Click(Sender: TObject);
begin
  scAppPager1.ItemGlowEffect.Enabled := scCheckBox4.Checked;
end;

procedure TForm1.scCheckBox5Click(Sender: TObject);
begin
 scAppPager1.CaptionGlowEffect.Enabled := scCheckBox5.Checked;
end;

procedure TForm1.scCheckBox7Click(Sender: TObject);
begin
  if scCheckBox7.Checked then
  begin
    scAppPager1.ItemBackgroundColor := $009B5629;
    scAppPager1.ItemSelectedColor := $008C4516;
    scAppPager1.ItemSelectedFocusedColor := $00814014;
    scAppPager1.ItemHotColor := $00B56D3E;
    scAppPager1.Font.Color := clWhite;
    scAppPager1.CaptionFont.Color := $00D9BFAF;
    scAppPager1.CaptionGlowEffect.Color := $008C4516;
    scAppPager1.ItemFontHotColor := clWhite;
    scAppPager1.ItemFontSelectedColor := clWhite;
    scAppPager1.ItemFontSelectedFocusedColor := clWhite;
    scComboBox1.ItemIndex := 0;
    scAppPager1.SelectionStyle := scapsColor;
    scAppPager1.StyleElements := [seBorder];
  end
  else
  begin
    scAppPager1.StyleElements := [seBorder, seClient, seFont];
    scAppPager1.Font.Color := clWindowText;
    scAppPager1.ItemBackgroundColor := clWindow;
    scAppPager1.ItemSelectedColor := clHighLight;
    scAppPager1.ItemSelectedFocusedColor := clHighLight;
    scAppPager1.ItemHotColor := clHighLight;
    scAppPager1.ItemFontSelectedColor := clHighLightText;
    scAppPager1.ItemFontSelectedFocusedColor := clHighLightText;
    scAppPager1.ItemFontHotColor := clBtnText;
    scAppPager1.CaptionFont.Color := clWindowText;
    scAppPager1.CaptionGlowEffect.Color := clBlack;
  end;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  scAppPager1.SelectionStyle := TscAppPagerSelectionStyle(scComboBox1.ItemIndex);
end;

procedure TForm1.scComboBox2Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox2.Items[scComboBox2.ItemIndex]);
end;

end.
