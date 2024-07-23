unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniEdit,
  UniFSEdit, uniButton, uniBitBtn, uniGroupBox;

type
  TMainForm = class(TUniForm)
    grp1: TUniGroupBox;
    edtPassword: TUniFSEdit;
    edt1: TUniFSEdit;
    unfsdt1: TUniFSEdit;
    unfsdt11: TUniFSEdit;
    UniFSEdit1: TUniFSEdit;
    UniFSEdit2: TUniFSEdit;
    UniFSEdit3: TUniFSEdit;
    UniFSEdit4: TUniFSEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
