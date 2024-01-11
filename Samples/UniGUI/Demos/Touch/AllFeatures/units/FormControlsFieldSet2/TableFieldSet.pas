unit TableFieldSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  unimEdit, unimSpinner, uniDateTimePicker, unimDatePicker, uniMultiItem,
  unimSelect, uniEdit, unimFieldSet, uniGUIBaseClasses, uniButton, unimButton;

type
  TFieldSetForm = class(TUnimForm)
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimFieldSet1: TUnimFieldSet;
    UnimEdit2: TUnimEdit;
    UnimEdit1: TUnimEdit;
    UnimSelect1: TUnimSelect;
    UnimDatePicker1: TUnimDatePicker;
    UnimSpinner2: TUnimSpinner;
    UnimSpinner1: TUnimSpinner;
    UnimFieldSet2: TUnimFieldSet;
    UnimEdit3: TUnimEdit;
    UnimDatePicker2: TUnimDatePicker;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimSelect1Change(Sender: TObject);
    procedure UnimSpinner2Change(Sender: TObject);
  private

    procedure ControlMaritalStatus(Status:TUnimSelect);
    { Private declarations }
  public
    Name, LastName, Birthday, MartialStatus, HeightPerson, Weight, SpouseName, SpouseBirthday : string;
    { Public declarations }
  end;

function FieldSetForm: TFieldSetForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FieldSetForm: TFieldSetForm;
begin
  Result := TFieldSetForm(UniMainModule.GetFormInstance(TFieldSetForm));
end;

{ TUnimForm2 }

procedure TFieldSetForm.ControlMaritalStatus(Status: TUnimSelect);
begin
 if Status.ItemIndex = 1 then
    UnimFieldSet2.Visible := True
  else
    UnimFieldSet2.Visible := False;
end;

procedure TFieldSetForm.UnimButton1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFieldSetForm.UnimButton2Click(Sender: TObject);
begin

  ModalResult := mrOK;
end;

procedure TFieldSetForm.UnimFormCreate(Sender: TObject);
begin
  if UniApplication.ScreenHeight < Height + 100 then
    Height := UniApplication.ScreenHeight - 100;
  if UniApplication.ScreenWidth < Width + 64 then
    Width := UniApplication.ScreenWidth - 64;
  ControlMaritalStatus(UnimSelect1);
end;

procedure TFieldSetForm.UnimSelect1Change(Sender: TObject);
begin
  ControlMaritalStatus(UnimSelect1);
end;

procedure TFieldSetForm.UnimSpinner2Change(Sender: TObject);
begin
  ControlMaritalStatus(UnimSelect1);
end;

end.
