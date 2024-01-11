//AllFeatures: Clientside Alignment,Dock and Align,icon-disclosure-list
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniToolBar, uniGUIBaseClasses,
  uniTrackBar, uniTreeView, uniCalendar, uniImageList, uniPanel, uniStatusBar,
  uniMemo, UniHTMLMemo, jpeg, uniImage;

type
  TMainForm = class(TUniForm)
    UniToolBar2: TUniToolBar;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniNativeImageList1: TUniNativeImageList;
    UniToolButton5: TUniToolButton;
    UniStatusBar1: TUniStatusBar;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
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
