//AllFeatures: Clientside Alignment,Layout Column,icon-disclosure-list
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniFieldSet, uniGUIBaseClasses,
  uniPanel, uniEdit;

type
  TMainForm = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniFieldSet1: TUniFieldSet;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniFieldSet2: TUniFieldSet;
    UniEdit9: TUniEdit;
    UniEdit10: TUniEdit;
    UniPanel2: TUniPanel;
    UniFieldSet3: TUniFieldSet;
    UniEdit4: TUniEdit;
    UniEdit5: TUniEdit;
    UniFieldSet4: TUniFieldSet;
    UniEdit6: TUniEdit;
    UniEdit7: TUniEdit;
    UniFieldSet5: TUniFieldSet;
    UniEdit8: TUniEdit;
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
