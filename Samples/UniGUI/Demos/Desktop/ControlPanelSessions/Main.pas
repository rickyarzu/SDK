unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniMemo,
  uniHTMLMemo;

type
  TMainForm = class(TUniForm)
    UniHTMLMemo1: TUniHTMLMemo;
    procedure UniFormCreate(Sender: TObject);
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

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  case Random(4) of
    0 : UniSession.UserString := 'bird@man.com';
    1 : UniSession.UserString := 'super@man.com';
    2 : UniSession.UserString := 'iron@man.com';
    3 : UniSession.UserString := 'bat@man.com';
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
