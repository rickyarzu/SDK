//AllFeatures: Field Container,Basic Demo,icon-form-fieldcontainer
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniEdit, uniPanel,
  uniGUIBaseClasses, uniFieldSet, uniBasicGrid, uniDBGrid, uniButton;

type
  TMainForm = class(TUniForm)
    UniFieldSet1: TUniFieldSet;
    UniFieldContainer1: TUniFieldContainer;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniEdit4: TUniEdit;
    UniFieldContainer2: TUniFieldContainer;
    UniEdit5: TUniEdit;
    UniEdit6: TUniEdit;
    UniFieldContainer3: TUniFieldContainer;
    UniEdit7: TUniEdit;
    UniEdit8: TUniEdit;
    UniEdit9: TUniEdit;
    UniEdit10: TUniEdit;
    UniEdit11: TUniEdit;
    UniEdit12: TUniEdit;
    UniEdit13: TUniEdit;
    UniEdit14: TUniEdit;
    UniEdit15: TUniEdit;
    UniEdit16: TUniEdit;
    UniEdit17: TUniEdit;
    UniEdit18: TUniEdit;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
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
