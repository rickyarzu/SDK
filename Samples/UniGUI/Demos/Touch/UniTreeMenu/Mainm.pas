//AllFeatures: TreeMenu,Basic Demo,icon-tree-grid
unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniToolBar, uniGUIBaseClasses,
  uniTreeView, uniTreeMenu, uniImageList, Menus, uniMainMenu, uniButton,
  uniStatusBar, uniTimer, uniPageControl, uniPanel, uniGUImJSForm, unimPanel,
  unimTreeMenu, unimToolbar, unimButton, unimTabPanel;

type
  TMainForm = class(TUnimForm)
    UniTreeMenu1: TUnimTreeMenu;
    UniToolBar1: TUnimToolBar;
    UniNativeImageList1: TUniNativeImageList;
    UniToolButton1: TUnimToolButton;
    UniMenuItems1: TUniMenuItems;
    Dashborad1: TUniMenuItem;
    Email1: TUniMenuItem;
    Profile1: TUniMenuItem;
    Edit1: TUniMenuItem;
    Delete1: TUniMenuItem;
    Exit1: TUniMenuItem;
    Charts1: TUniMenuItem;
    Bar1: TUniMenuItem;
    Pie1: TUniMenuItem;
    Save1: TUniMenuItem;
    UniToolButton2: TUnimToolButton;
    UniToolButton3: TUnimToolButton;
    UniToolButton4: TUnimToolButton;
    UniToolButton5: TUnimToolButton;
    UniToolButton6: TUnimToolButton;
    UniToolButton7: TUnimToolButton;
    UniToolButton8: TUnimToolButton;
    UniToolButton9: TUnimToolButton;
    UniToolButton10: TUnimToolButton;
    UniPanel1: TUnimPanel;
    UniButton1: TUnimButton;
    UniButton2: TUnimButton;
    UnimTabPanel1: TUnimTabPanel;
    UnimButton1: TUnimButton;
    procedure UniToolButton1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure UniTreeMenu1SelectionChange(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UnimTabPanel1Change(Sender: TObject);
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure TabSheetClose(Sender: TObject; var AllowClose: Boolean);
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

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniTreeMenu1.Items.Add(UniTreeMenu1.Selected, 'New Node');
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
var
  N : TUniTreeNode;
  T : TUnimTabSheet;
begin
  N := UniTreeMenu1.Selected;
  if Assigned(N) then
  begin
    T := N.Data;
    if Assigned(T) then T.Free;
    N.Free;
  end;
end;

procedure TMainForm.UnimButton1Click(Sender: TObject);
begin
  UniTreeMenu1.Items.Clear;
end;

procedure TMainForm.UnimTabPanel1Change(Sender: TObject);
var
  T : TUnimTabSheet;
  N : TUniTreeNode;
begin
  T := UnimTabPanel1.ActivePage;
  if Assigned(T) then
  begin
    N := T.Data;
    UniTreeMenu1.Selected := N;
  end;
end;

procedure TMainForm.TabSheetClose(Sender: TObject; var AllowClose: Boolean);
var
  N : TUniTreeNode;
begin
  N := (Sender as TUnimTabSheet).Data;
  if N is TUniTreeNode then
    (N as TUniTreeNode).Data := nil;

end;

procedure TMainForm.UniToolButton1Click(Sender: TObject);
begin
  UniTreeMenu1.Micro := not UniTreeMenu1.Micro;
end;

procedure TMainForm.UniTreeMenu1SelectionChange(Sender: TObject);
var
  N : TUniTreeNode;
  T : TUnimTabSheet;
begin
  N := UniTreeMenu1.Selected;
  if Assigned(N) and N.IsLeaf then
  begin
    if N.Data = nil then
    begin
      T := TUnimTabSheet.Create(Self);
      T.PageControl := UnimTabPanel1;
      T.Caption := N.Text;
      T.ImageIndex := N.ImageIndex;
      T.Closable := True;
      T.OnClose := TabSheetClose;
      N.Data := T;
      T.Data := N;
    end
    else
    begin
      T := N.Data;
    end;
    UnimTabPanel1.ActivePage := T;
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
