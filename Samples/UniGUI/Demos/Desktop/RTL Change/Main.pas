unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniRadioGroup;

type
  TMainForm = class(TUniForm)
    UniRadioGroup1: TUniRadioGroup;
    procedure UniFormCreate(Sender: TObject);
    procedure UniRadioGroup1Click(Sender: TObject);
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
  RTL := UniMainModule.RTL;

  if RTL then
    UniRadioGroup1.ItemIndex := 1
  else
    UniRadioGroup1.ItemIndex := 0;

end;

procedure TMainForm.UniRadioGroup1Click(Sender: TObject);
begin
  UniMainModule.SaveRTL(UniRadioGroup1.ItemIndex = 1);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
