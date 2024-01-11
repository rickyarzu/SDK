//Carrousel2 = Carousel
unit CarouselCarrousel2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, unimMemo, uniBitBtn, unimBitBtn,
  unimList, uniImage, unimImage, uniMultiItem, unimSelect, uniCheckBox,
  unimCheckBox, uniEdit, unimEdit, uniButton, unimButton, unimCarousel,
  uniGUIBaseClasses, uniGUImJSForm, Unit1;

type
  TUniCarouselCarrousel2 = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimCarousel1: TUnimCarousel;
    UnimCarouselPage1: TUnimCarouselPage;
    UnimButton1: TUnimButton;
    UnimEdit1: TUnimEdit;
    UnimEdit2: TUnimEdit;
    UnimEdit3: TUnimEdit;
    UnimCheckBox1: TUnimCheckBox;
    UnimSelect1: TUnimSelect;
    UnimImage1: TUnimImage;
    UnimButton5: TUnimButton;
    UnimCarouselPage2: TUnimCarouselPage;
    UnimEdit4: TUnimEdit;
    UnimList1: TUnimList;
    UnimButton2: TUnimButton;
    UnimCarouselPage3: TUnimCarouselPage;
    UnimButton4: TUnimButton;
    UnimBitBtn1: TUnimBitBtn;
    UnimMemo1: TUnimMemo;
    UnimCarouselPage4: TUnimCarouselPage;
    UnimButton3: TUnimButton;
    UnimCheckBox2: TUnimCheckBox;
    UnimCheckBox3: TUnimCheckBox;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton4Click(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
    procedure UnimButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniStrUtils;

{$R *.dfm}

procedure TUniCarouselCarrousel2.UnimBitBtn1Click(Sender: TObject);
begin
  UnimMemo1.Lines.Add('New Line...');
end;

procedure TUniCarouselCarrousel2.UnimButton1Click(Sender: TObject);
begin
  UnimButton1.Caption := 'Tapped!';
  UnimEdit2.Text := 'Hello ' + UnimEdit1.Text;
end;

procedure TUniCarouselCarrousel2.UnimButton3Click(Sender: TObject);
begin
  UnimButton3.Caption:=UniBoolToStr(UnimCheckBox2.Checked) + ', '+ UniBoolToStr(UnimCheckBox3.Checked);
end;

procedure TUniCarouselCarrousel2.UnimButton4Click(Sender: TObject);
begin
  UnimButton4.Caption := 'Tapped';
end;

procedure TUniCarouselCarrousel2.UnimButton5Click(Sender: TObject);
begin
  UnimCarouselSubForm1.Show();
end;

initialization
  RegisterClass(TUniCarouselCarrousel2);

end.
