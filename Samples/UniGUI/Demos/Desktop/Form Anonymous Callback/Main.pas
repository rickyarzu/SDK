//AllFeatures: Forms,Anonymous Callback,icon-form-fieldui
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniButton, uniGUIBaseClasses,
  uniMemo;

type
  TMainForm = class(TUniForm)
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit1;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniForm1.Show(
    procedure(Sender: TComponent; Result:Integer)
    begin
      UniMemo1.Lines.Add('Form: '+(Sender as TuniForm).Name+', Result: '+IntToStr(Result));
    end
  );
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
