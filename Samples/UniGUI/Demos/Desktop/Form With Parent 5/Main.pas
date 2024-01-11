//AllFeatures: Forms,Form With Parent 5,icon-layout-form
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Menus, uniMainMenu,
  uniGUIBaseClasses, uniStatusBar;

type
  TMainForm = class(TUniForm)
    UniMainMenu1: TUniMainMenu;
    Menu1: TUniMenuItem;
    MenuItem11: TUniMenuItem;
    UniStatusBar1: TUniStatusBar;
    Exit1: TUniMenuItem;
    procedure UniFormCreate(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit1;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniForm1.Parent := Self;
  UniForm1.Show();
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
