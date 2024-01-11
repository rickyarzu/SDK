unit ShowDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniMemo, unimMemo, uniEdit, unimEdit, uniGUIBaseClasses, uniImage, unimImage;

type
  TUnimShowDataForm = class(TUnimForm)
    UnimImage1: TUnimImage;
    UnimEdit1: TUnimEdit;
    UnimEdit2: TUnimEdit;
    UnimEdit3: TUnimEdit;
    UnimEdit4: TUnimEdit;
    UnimEdit5: TUnimEdit;
    UnimEdit6: TUnimEdit;
    UnimMemo1: TUnimMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimShowDataForm: TUnimShowDataForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimShowDataForm: TUnimShowDataForm;
begin
  Result := TUnimShowDataForm(UniMainModule.GetFormInstance(TUnimShowDataForm));
end;

end.
