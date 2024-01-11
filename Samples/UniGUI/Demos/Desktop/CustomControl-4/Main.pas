unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, 
  uniLabel, uniCustomControl4, uniButton, uniPanel, uniBitBtn, uniMenuButton,
  Menus, uniMainMenu, uniImageList, uniMultiItem, uniComboBox, uniMemo;

type
  TMainForm = class(TUniForm)
    UniMyButtonGroup1: TUniMyButtonGroup;
    UniHiddenPanel1: TUniHiddenPanel;
    UniButton1: TUniButton;
    UniBitBtn1: TUniBitBtn;
    UniButton3: TUniButton;
    UniMenuButton1: TUniMenuButton;
    UniPopupMenu1: TUniPopupMenu;
    Items1: TUniMenuItem;
    Item21: TUniMenuItem;
    Item31: TUniMenuItem;
    UniImageList1: TUniImageList;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniBitBtn4: TUniBitBtn;
    UniMenuButton2: TUniMenuButton;
    UniPopupMenu2: TUniPopupMenu;
    UniMenuItem1: TUniMenuItem;
    UniMenuItem2: TUniMenuItem;
    UniMenuItem3: TUniMenuItem;
    UniMenuButton3: TUniMenuButton;
    UniPopupMenu3: TUniPopupMenu;
    UniMenuItem4: TUniMenuItem;
    UniMenuItem5: TUniMenuItem;
    UniMenuItem6: TUniMenuItem;
    UniMemo1: TUniMemo;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniMenuButton2Click(Sender: TObject);
    procedure UniMenuItem6Click(Sender: TObject);
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

procedure TMainForm.UniMenuButton2Click(Sender: TObject);
begin
  UniMemo1.Lines.Add((Sender as TUniControl).Name);
end;

procedure TMainForm.UniMenuItem6Click(Sender: TObject);
begin
  UniMemo1.Lines.Add((Sender as TUniMenuItem).Caption);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
