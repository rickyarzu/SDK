unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUImForm, uniGUIBaseClasses, unimCarousel,
  uniPanel, uniButton, unimButton, uniBitBtn, unimBitBtn, unimPanel, uniEdit,
  unimEdit, uniMultiItem, unimSelect, uniCheckBox, unimCheckBox, unimList,
  jpeg, uniImage, unimImage, uniMemo, unimMemo;

type
  TMainmForm = class(TUnimForm)
    UnimCarousel1: TUnimCarousel;
    UnimCarouselPage1: TUnimCarouselPage;
    UnimButton1: TUnimButton;
    UnimEdit1: TUnimEdit;
    UnimEdit2: TUnimEdit;
    UnimEdit3: TUnimEdit;
    UnimCheckBox1: TUnimCheckBox;
    UnimSelect1: TUnimSelect;
    UnimCarouselPage2: TUnimCarouselPage;
    UnimEdit4: TUnimEdit;
    UnimList1: TUnimList;
    UnimButton2: TUnimButton;
    UnimCarouselPage3: TUnimCarouselPage;
    UnimCarouselPage4: TUnimCarouselPage;
    UnimButton3: TUnimButton;
    UnimButton4: TUnimButton;
    UnimCheckBox2: TUnimCheckBox;
    UnimCheckBox3: TUnimCheckBox;
    UnimImage1: TUnimImage;
    UnimBitBtn1: TUnimBitBtn;
    UnimMemo1: TUnimMemo;
    UnimButton5: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
    procedure UnimButton4Click(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUImApplication, uniStrUtils, Unit1;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimBitBtn1Click(Sender: TObject);
begin
  UnimMemo1.Lines.Add('New Line...');
end;

procedure TMainmForm.UnimButton1Click(Sender: TObject);
begin
  UnimButton1.Caption := 'Tapped!';
  UnimEdit2.Text := 'Hello ' + UnimEdit1.Text;
end;

procedure TMainmForm.UnimButton3Click(Sender: TObject);
begin
  UnimButton3.Caption:=UniBoolToStr(UnimCheckBox2.Checked) + ', '+ UniBoolToStr(UnimCheckBox3.Checked);
end;

procedure TMainmForm.UnimButton4Click(Sender: TObject);
begin
  UnimButton4.Caption := 'Tapped';
end;

procedure TMainmForm.UnimButton5Click(Sender: TObject);
begin
  UnimForm1.Show();
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
