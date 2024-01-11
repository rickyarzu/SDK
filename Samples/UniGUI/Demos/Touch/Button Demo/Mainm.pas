unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniLabel, unimLabel,
  uniGUIBaseClasses, uniButton, unimButton, uniGUImJSForm, unimSegmentedButton,
  uniImageList;

type
  TMainmForm = class(TUnimForm)
    UnimButton1: TUnimButton;
    UnimLabel1: TUnimLabel;
    UnimButton2: TUnimButton;
    UnimButton5: TUnimButton;
    UnimButton4: TUnimButton;
    UnimButton3: TUnimButton;
    UnimButton7: TUnimButton;
    UnimButton8: TUnimButton;
    UnimButton9: TUnimButton;
    UnimButton10: TUnimButton;
    UnimSegmentedButton1: TUnimSegmentedButton;
    UniImageList1: TUniImageList;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton9Click(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton4Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
    procedure UnimButton10Click(Sender: TObject);
    procedure UnimButton8Click(Sender: TObject);
  private
     ClickTimes:Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;
  //const ClickTimes:Integer=0;
function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimButton10Click(Sender: TObject);
begin
  ShowMessage('Big reaction');
end;

procedure TMainmForm.UnimButton1Click(Sender: TObject);
begin
  inc(ClickTimes);
  UnimLabel1.Caption := 'Button clicked '+IntToStr(ClickTimes)+' times';
end;

procedure TMainmForm.UnimButton2Click(Sender: TObject);
begin
  ShowMessage('How dare you?');
end;

procedure TMainmForm.UnimButton3Click(Sender: TObject);
begin
  ShowMessage('Yeeeey!');
end;

procedure TMainmForm.UnimButton4Click(Sender: TObject);
begin
  ShowMessage('But my heart isn''t');
end;

procedure TMainmForm.UnimButton8Click(Sender: TObject);
begin
  ShowMessage('I''m a button too!');
end;

procedure TMainmForm.UnimButton9Click(Sender: TObject);
var
  count:Integer;
  badge:string;
begin
  count := StrToInt(UnimButton9.BadgeText)+1;
  badge := IntToStr(count);
  UnimButton9.BadgeText := badge;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
