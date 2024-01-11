unit InsertEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniGUIBaseClasses, uniEdit, unimEdit;

type
  TUnimForm1 = class(TUnimForm)
    UnimEdit1: TUnimEdit;
    UnimButton1: TUnimButton;
    UnimEdit2: TUnimEdit;
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    WhatToDo: string;
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

procedure TUnimForm1.UnimButton1Click(Sender: TObject);
begin
   if WhatToDo='Add' then
  begin
    with UniMainModule.ClientDataSet1 do
    begin
      Append;
      FieldByName('Name').AsString := UnimEdit1.Text;
      FieldByName('Phone_Number').AsString := UnimEdit2.Text;
      Post;
    end;
  end
  else if WhatToDo='Edit' then
   begin
    with UniMainModule.ClientDataSet1 do
    begin
      Edit;
      FieldByName('Name').AsString := UnimEdit1.Text;
      FieldByName('Phone_Number').AsString := UnimEdit2.Text;
      Post;
    end;
  end;
  Close;
end;

end.
