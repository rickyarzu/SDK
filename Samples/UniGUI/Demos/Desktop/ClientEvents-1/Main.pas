//AllFeatures: Client Events,Client Events - 1,icon-touch-events
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniLabel, uniEdit, uniPanel,
  uniButton;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    UniEdit1: TUniEdit;
    UniPanel1: TUniPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
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
