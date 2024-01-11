//AllFeatures: Menu,Popup Menu,icon-menu-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses,
  uniLabel, Menus, uniMainMenu;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    UniPopupMenu1: TUniPopupMenu;
    CreateButton1: TUniMenuItem;
    CreateEdit1: TUniMenuItem;
    CreatePanel1: TUniMenuItem;
    procedure UniFormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CreateButton1Click(Sender: TObject);
    procedure CreateEdit1Click(Sender: TObject);
    procedure CreatePanel1Click(Sender: TObject);
  private
    { Private declarations }
    LastX, LastY : Integer;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, UniButton, uniEdit, uniPanel;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.CreateButton1Click(Sender: TObject);
begin
  with InsertControl(TUniButton.Create(Self)) as TUniControl do
  begin
    Left:=LastX;
    Top:=LastY;
    Caption:='Button';
  end;
end;

procedure TMainForm.CreateEdit1Click(Sender: TObject);
begin
  with InsertControl(TUniEdit.Create(Self)) as TUniControl do
  begin
    Left:=LastX;
    Top:=LastY;
    Text:='Edit';
  end;
end;

procedure TMainForm.CreatePanel1Click(Sender: TObject);
begin
  with InsertControl(TUniPanel.Create(Self)) as TUniControl do
  begin
    Left:=LastX;
    Top:=LastY;
    Caption:='Panel';
  end;
end;

procedure TMainForm.UniFormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbRight then
  begin
    LastX:=X;
    LastY:=Y;
    UniPopupMenu1.Popup(X, Y);
  end;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
