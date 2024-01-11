//AllFeatures: Toolbar,Basic Demo,icon-toolbar
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniToolBar,
  uniImageList, uniMultiItem, uniComboBox, uniEdit, uniDateTimePicker,
  uniDBDateTimePicker, uniTrackBar, uniStatusBar, uniSpinEdit;

type
  TMainForm = class(TUniForm)
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniEdit1: TUniEdit;
    UniToolButton6: TUniToolButton;
    UniToolButton7: TUniToolButton;
    UniToolButton8: TUniToolButton;
    UniComboBox1: TUniComboBox;
    UniToolButton10: TUniToolButton;
    UniTrackBar1: TUniTrackBar;
    UniStatusBar1: TUniStatusBar;
    UniToolButton9: TUniToolButton;
    UniToolButton11: TUniToolButton;
    UniToolButton12: TUniToolButton;
    UniDateTimePicker1: TUniDateTimePicker;
    UniToolButton13: TUniToolButton;
    UniSpinEdit1: TUniSpinEdit;
    UniImageList1: TUniImageList;
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
