//AllFeatures: Forms,MDI Forms,icon-forms
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, Menus, uniMainMenu,
  uniGUIBaseClasses, uniButton;

type
  TMainForm = class(TUniForm)
    UniMainMenu1: TUniMainMenu;
    File1: TUniMenuItem;
    Exit1: TUniMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit1, Unit2;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  UniForm1.Top:=0;
  UniForm1.Left:=0;
  UniForm1.Width:=Self.ClientWidth;

  UniForm2.Top:=UniForm1.Height+1;
  UniForm2.Height:=Self.ClientHeight-UniForm1.Height;
  UniForm2.Left:=0;
  UniForm2.Width:=Self.ClientWidth;

  UniForm1.Show;
  UniForm2.Show;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
