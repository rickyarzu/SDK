unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUImForm, uniButton, unimButton, uniCheckBox,
  unimCheckBox, unimSpinner, unimEdit, unimList, uniMultiItem, unimSelect,
  uniDateTimePicker, unimDatePicker, uniEdit, uniLabel, unimLabel,
  uniGUIBaseClasses, uniGUImJSForm, unimFieldSet;

type
  TUnimForm1 = class(TUnimForm)
    UnimFieldSet1: TUnimFieldSet;
    UnimEdit1: TUnimEdit;
    UnimEdit2: TUnimEdit;
    UnimDatePicker1: TUnimDatePicker;
    UnimSelect1: TUnimSelect;
    UnimSpinner1: TUnimSpinner;
    UnimFieldSet2: TUnimFieldSet;
    UnimEdit3: TUnimEdit;
    UnimDatePicker2: TUnimDatePicker;
    UnimSpinner2: TUnimSpinner;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    procedure UnimSelect1Change(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimSpinner2Change(Sender: TObject);
  private
    procedure ControlMaritalStatus(Status:TUnimSelect);
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimForm1: TUnimForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimForm1: TUnimForm1;
begin
  Result := TUnimForm1(UniMainModule.GetFormInstance(TUnimForm1));
end;

procedure TUnimForm1.ControlMaritalStatus(Status: TUnimSelect);
begin
  if Status.ItemIndex = 1 then
    UnimFieldSet2.Visible := True
  else
    UnimFieldSet2.Visible := False;
end;

procedure TUnimForm1.UnimButton1Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TUnimForm1.UnimButton2Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TUnimForm1.UnimFormCreate(Sender: TObject);
begin
  if UniApplication.ScreenHeight < Height + 100 then
    Height := UniApplication.ScreenHeight - 100;
  if UniApplication.ScreenWidth < Width + 64 then
    Width := UniApplication.ScreenWidth - 64;
  ControlMaritalStatus(UnimSelect1);
end;

procedure TUnimForm1.UnimSelect1Change(Sender: TObject);
begin
  ControlMaritalStatus(UnimSelect1);
end;

procedure TUnimForm1.UnimSpinner2Change(Sender: TObject);
begin
  ControlMaritalStatus(UnimSelect1);
end;

end.
