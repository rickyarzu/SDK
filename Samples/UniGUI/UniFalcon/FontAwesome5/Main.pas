unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniBitBtn, UniFSButton, Vcl.Menus, uniMainMenu, uniTreeView, uniTreeMenu,
  uniImageList, uniLabel;

type
  TMainForm = class(TUniForm)
    btn1: TUniFSButton;
    MenTreeMenu: TUniTreeMenu;
    Men: TUniMenuItems;
    Control1: TUniMenuItem;
    imglFont: TUniNativeImageList;
    ActControl2: TUniMenuItem;
    ActMaster1: TUniMenuItem;
    Administratot1: TUniMenuItem;
    ActUser1: TUniMenuItem;
    lbl1: TUniLabel;
    btn2: TUniFSButton;
    btn3: TUniFSButton;
    lbl4: TUniLabel;
    lbl5: TUniLabel;
    lbl6: TUniLabel;
    lbl7: TUniLabel;
    lbl2: TUniLabel;
    Maps1: TUniMenuItem;
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
