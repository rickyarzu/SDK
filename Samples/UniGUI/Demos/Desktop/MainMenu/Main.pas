unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Menus, uniMainMenu,
  uniGUIBaseClasses, uniImageList, uniGUIFrame, Unit1, uniPanel;

type
  TMainForm = class(TUniForm)
    UniFormMainMenu: TUniMainMenu;
    FormMainMenu1: TUniMenuItem;
    Item11: TUniMenuItem;
    Item21: TUniMenuItem;
    SubItem11: TUniMenuItem;
    SubItem21: TUniMenuItem;
    UniImageList1: TUniImageList;
    UniFrame11: TUniFrame1;
    UniPanel1: TUniPanel;
    UniPanelMenu: TUniMainMenu;
    MenuForPanel1: TUniMenuItem;
    Items1: TUniMenuItem;
    A1: TUniMenuItem;
    B1: TUniMenuItem;
    C1: TUniMenuItem;
    UniNativeImageList1: TUniNativeImageList;
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
