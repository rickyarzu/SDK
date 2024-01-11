//FieldSet 2 = Form Controls
unit FormControlsFieldSet2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, unimEdit, unimSpinner, uniDateTimePicker,
  unimDatePicker, uniMultiItem, unimSelect, uniEdit, unimFieldSet, uniButton,
  unimButton, uniGUIBaseClasses, uniGUImJSForm, uniMemo, unimMemo, TableFieldSet;

type
  TUniFormControlsFieldSet2 = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimMemo1: TUnimMemo;
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowCallBack(Sender: TComponent; AResult:Integer);
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TUniFieldSetTablemForm }

procedure TUniFormControlsFieldSet2.ShowCallBack(Sender: TComponent;
  AResult: Integer);
var
  frm : TFieldSetForm;
begin
  if AResult = mrOK then
  begin
    frm := Sender as TFieldSetForm;
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

procedure TUniFormControlsFieldSet2.UnimButton1Click(Sender: TObject);
begin
  FieldSetForm.ShowModal(ShowCallBack);
end;

initialization
  RegisterClass(TUniFormControlsFieldSet2);

end.
