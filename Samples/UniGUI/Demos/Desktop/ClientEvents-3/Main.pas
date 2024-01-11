//AllFeatures: Client Events,Client Events - 3,icon-touch-events
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniTimer, uniLabel, uniBitBtn, uniSpeedButton,
  uniButton, uniGUIBaseClasses, uniPanel;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniButton1: TUniButton;
    UniSpeedButton1: TUniSpeedButton;
    UniLabel1: TUniLabel;
    UniTimer1: TUniTimer;
    UniLabel2: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
