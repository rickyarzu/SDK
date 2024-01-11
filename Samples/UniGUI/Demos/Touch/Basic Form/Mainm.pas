unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUImForm, uniLabel, unimLabel,
  uniGUIBaseClasses, uniButton, unimButton, uniEdit, unimEdit;

type
  TMainmForm = class(TUnimForm)
    UnimButton1: TUnimButton;
    UnimLabel1: TUnimLabel;
    UnimButton2: TUnimButton;
    UnimButton3: TUnimButton;
    UnimButton4: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
    procedure UnimButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit1, Unit2, Unit3;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimButton1Click(Sender: TObject);
begin
  UnimLabel1.Caption := 'Hello World!';
end;

procedure TMainmForm.UnimButton2Click(Sender: TObject);
begin
  UnimForm1.ShowModal();
end;

procedure TMainmForm.UnimButton3Click(Sender: TObject);
begin
  UnimForm2.ShowModal();
end;

procedure TMainmForm.UnimButton4Click(Sender: TObject);
begin
  UnimForm3.ShowModal();
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
