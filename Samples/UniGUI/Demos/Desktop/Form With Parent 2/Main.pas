//AllFeatures: Forms,Form With Parent 2,icon-layout-form
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIFrame, UnitFrame1,
  uniGUIBaseClasses, uniPanel, Unit1, Unit2;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniFrame11: TUniFrame1;
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
  UniForm1.Parent := UniPanel1;
  UniForm1.Show();

  UniForm2.Parent := UniFrame11;
  uniform2.Show();
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
