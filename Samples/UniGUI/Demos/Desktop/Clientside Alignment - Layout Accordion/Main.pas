//AllFeatures: Clientside Alignment,Layout Accordion,icon-disclosure-list
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniButton, ServerModule, uniTreeView, uniRadioGroup, uniPageControl;

type
  TMainForm = class(TUniForm)
    UniPanelA: TUniPanel;
    UniPanel1: TUniPanel;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniPanel2: TUniPanel;
    UniRadioGroup1: TUniRadioGroup;
    UniPanel3: TUniPanel;
    UniTreeView1: TUniTreeView;
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
