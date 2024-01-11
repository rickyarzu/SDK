//AllFeatures: ReCaptcha,ReCaptcha,icon-form-login
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniHTMLFrame, uniReCAPTCHA;

type
  TMainForm = class(TUniForm)
    UniReCAPTCHA1: TUniReCAPTCHA;
    procedure UniReCAPTCHA1Verified(Sender: TObject);
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

procedure TMainForm.UniReCAPTCHA1Verified(Sender: TObject);
begin
  showToast('Verified!');
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
