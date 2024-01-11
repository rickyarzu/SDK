unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniSegmentedButton, unimSegmentedButton, uniMemo, unimMemo,
  uniLabel, unimLabel;

type
  TMainmForm = class(TUnimForm)
    UnimSegmentedButton1: TUnimSegmentedButton;
    UnimSegmentedButton2: TUnimSegmentedButton;
    UnimSegmentedButton3: TUnimSegmentedButton;
    UnimSegmentedButton4: TUnimSegmentedButton;
    UnimMemo1: TUnimMemo;
    UnimLabel1: TUnimLabel;
    UnimLabel2: TUnimLabel;
    UnimLabel3: TUnimLabel;
    UnimLabel4: TUnimLabel;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimSegmentedButton1Click(Sender: TUnimButtonItem);
    procedure UnimSegmentedButton2Pressed(Sender: TUniCustomButtonItem;
      Pressed: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, StrUtils;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  UnimMemo1.Lines.Clear;
end;

procedure TMainmForm.UnimSegmentedButton1Click(Sender: TUnimButtonItem);
begin
  UnimMemo1.Lines.Add(Sender.Caption);
end;

procedure TMainmForm.UnimSegmentedButton2Pressed(Sender: TUniCustomButtonItem;
  Pressed: Boolean);
begin
  UnimMemo1.Lines.Add(Sender.Caption + ' -> ' + IfThen(Pressed, 'Down', 'Up'));
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
