unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniEdit,
  uniGUIBaseClasses, uniGUImJSForm, uniButton, unimButton,
  uniLabel, unimLabel, uniImage, unimImage, uniBitBtn, unimBitBtn, Math,
  WhatIsIt, unimEdit;

type
  TMainmForm = class(TUnimForm)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimNumberEdit3: TUnimNumberEdit;
    UnimNumberEdit1: TUnimNumberEdit;
    UnimNumberEdit2: TUnimNumberEdit;
    UnimNumberEdit4: TUnimNumberEdit;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimImage1: TUnimImage;
    UnimImage2: TUnimImage;
    UnimImage3: TUnimImage;
    UnimImage4: TUnimImage;
    UnimLabel1: TUnimLabel;
    GuessButton: TUnimButton;
    UnimLabel2: TUnimLabel;
    UnimContainerPanel3: TUnimContainerPanel;
    rstBtn: TUnimButton;
    UnimBitBtn1: TUnimBitBtn;
    procedure GuessButtonClick(Sender: TObject);
    procedure StartGame;
    procedure rstBtnClick(Sender: TObject);
    function GuessControl(GNumber,Number:string;pic:TUnimImage):Boolean;
    procedure UnimFormShow(Sender: TObject);
    procedure Dialog(msg:string);
    procedure UnimBitBtn1Click(Sender: TObject);

  private
    Live:Integer;
    Number: Integer;
    boolTho,boolHun,boolTen,boolOne:Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;


function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;


function TMainmForm.GuessControl(GNumber, Number: string;pic:TUnimImage): Boolean;
begin
  if GNumber=Number then
  begin
    pic.Picture.LoadFromFile('image/Apply.png');
    Result := True;
  end
  else if GNumber<Number then
  begin
    pic.Picture.LoadFromFile('image/Up.png');
    Result := False;
  end
  else if GNumber>Number then
  begin
    pic.Picture.LoadFromFile('image/Down.png');
    Result := False;
  end;
end;

procedure TMainmForm.rstBtnClick(Sender: TObject);
begin
  StartGame;
end;

procedure TMainmForm.StartGame;

begin
  Live := 3;
  Number := RandomRange(1000, 9999);
  boolTho := False;
  boolHun := False;
  boolTen := False;
  boolOne := False;

  if (UnimNumberEdit1.Enabled = False) and (UnimNumberEdit2.Enabled = False)  and
  (UnimNumberEdit3.Enabled = False) and (UnimNumberEdit4.Enabled = False) and (GuessButton.Enabled = False) then
  begin
    UnimNumberEdit1.Enabled := True;
    UnimNumberEdit2.Enabled := True;
    UnimNumberEdit3.Enabled := True;
    UnimNumberEdit4.Enabled := True;
    UnimImage1.Assign(nil);
    UnimImage2.Assign(nil);
    UnimImage3.Assign(nil);
    UnimImage4.Assign(nil);
    UnimLabel2.Caption :='';
    GuessButton.Enabled := True;
  end;
  UnimLabel1.Caption := 'Lives:'+IntToStr(Live);
end;

procedure TMainmForm.Dialog(msg:string);
begin
  UnimNumberEdit1.Clear;
    UnimNumberEdit2.Clear;
    UnimNumberEdit3.Clear;
    UnimNumberEdit4.Clear;
    UnimNumberEdit1.Enabled := False;
    UnimNumberEdit2.Enabled := False;
    UnimNumberEdit3.Enabled := False;
    UnimNumberEdit4.Enabled := False;
    GuessButton.Enabled := False;
    ShowMessage(msg);
end;

procedure TMainmForm.GuessButtonClick(Sender: TObject);

var
  strTho,strHun,strTen,strOne, S:string;
begin
  S := IntToStr(Number);

  strTho := Copy(S ,1 ,1);
  strHun := Copy(S ,2 ,1);
  strTen := Copy(S ,3 ,1);
  strOne := Copy(S ,4 ,1);
  if not boolTho then
    boolTho := GuessControl(UnimNumberEdit1.Text,strTho,UnimImage1);
  if not boolHun then
    boolHun := GuessControl(UnimNumberEdit2.Text,strHun,UnimImage2);
  if not boolTen then
    boolTen := GuessControl(UnimNumberEdit3.Text,strTen,UnimImage3);
  if not boolOne then
    boolOne:= GuessControl(UnimNumberEdit4.Text,strOne,UnimImage4);
  if (boolTho=True) and (boolHun=True) and (boolTen=True) and (boolOne=True) then
  begin
    UnimLabel2.Caption := 'Correct';
    Dialog('You WinThe number is '+IntToStr(Number));

  end
  else
  begin
    Live := Live-1;
    UnimLabel1.Caption := 'Lives'+IntToStr(Live);
    UnimLabel2.Caption := 'Incorrect';
  end;
  if Live = 0 then
  begin
    Dialog('You Lose. The number is '+IntToStr(Number));
  end;
end;

procedure TMainmForm.UnimBitBtn1Click(Sender: TObject);
begin
  UnimForm1.ShowModal();
end;

procedure TMainmForm.UnimFormShow(Sender: TObject);
begin
  StartGame;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
