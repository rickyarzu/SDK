unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUIBaseClasses,
  uniButton, unimButton, Unit1, uniMemo, unimMemo;

type
  TMainmForm = class(TUnimForm)
    UnimButton1: TUnimButton;
    UnimMemo1: TUnimMemo;
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowCallBack(Sender: TComponent; AResult:Integer);
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

procedure TMainmForm.ShowCallBack(Sender: TComponent; AResult: Integer);
var
  frm : TUnimForm1;
begin
  if AResult = mrOK then
  begin
    frm := Sender as TUnimForm1;
    UnimMemo1.Clear;
    UnimMemo1.Lines.Add('Name: '+frm.UnimEdit1.Text);
    UnimMemo1.Lines.Add('Lastname: '+frm.UnimEdit2.Text);
    UnimMemo1.Lines.Add('Birthday: '+frm.UnimDatePicker1.Text);
    UnimMemo1.Lines.Add('Marital Status: '+frm.UnimSelect1.Text);
    UnimMemo1.Lines.Add('Height: '+frm.UnimSpinner2.Text);
    UnimMemo1.Lines.Add('Weight: '+frm.UnimSpinner1.Text);
    if frm.UnimSelect1.Text = 'Married' then
    begin
      UnimMemo1.Lines.Add('Spouse Name: '+frm.UnimEdit3.Text);
      UnimMemo1.Lines.Add('Spouse Birthday: '+frm.UnimDatePicker2.Text);
    end;
  end;
end;

procedure TMainmForm.UnimButton1Click(Sender: TObject);
begin
  UnimForm1.ShowModal(ShowCallBack);
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
