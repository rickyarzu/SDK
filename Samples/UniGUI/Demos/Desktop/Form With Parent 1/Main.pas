//AllFeatures: Forms,Form With Parent 1,icon-layout-form
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Unit1;

type
  TMainForm = class(TUniForm)
    procedure UniFormBeforeShow(Sender: TObject);
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

procedure TMainForm.UniFormBeforeShow(Sender: TObject);
begin
  UniForm1.Parent := MainForm;
  UniForm1.Show();
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
