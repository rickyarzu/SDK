unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniTreeView, unimNestedList, uniImageList, Menus,
  uniMainMenu, unimPanel;

type
  TMainmForm = class(TUnimForm)
    UnimNestedList1: TUnimNestedList;
    UniMenuItems1: TUniMenuItems;
    Dashborad1: TUniMenuItem;
    Save1: TUniMenuItem;
    Email1: TUniMenuItem;
    Profile1: TUniMenuItem;
    Edit1: TUniMenuItem;
    Delete1: TUniMenuItem;
    Charts1: TUniMenuItem;
    Bar1: TUniMenuItem;
    Pie1: TUniMenuItem;
    Exit1: TUniMenuItem;
    UniNativeImageList1: TUniNativeImageList;
    UnimPanel1: TUnimPanel;
    procedure UnimNestedList1LeafClick(Sender: TObject);
    procedure UnimNestedList1BackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimNestedList1BackClick(Sender: TObject);
var
  Nd : TUniTreeNode;
begin
  Nd := UnimNestedList1.Selected;
  if Assigned(Nd) then
    UnimPanel1.Title := Nd.Text;
end;

procedure TMainmForm.UnimNestedList1LeafClick(Sender: TObject);
var
  Nd : TUniTreeNode;
begin
  Nd := UnimNestedList1.Selected;
  if Nd.Tag = 99 then
    Close
  else
  begin
    UnimPanel1.Title := Nd.Text;
  end;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
