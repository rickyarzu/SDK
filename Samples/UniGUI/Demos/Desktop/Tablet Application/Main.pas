unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniToolBar, uniGUIBaseClasses,
  uniTreeView, uniTreeMenu, uniImageList, Vcl.Menus, uniMainMenu, uniButton,
  uniStatusBar, uniTimer, uniPageControl, uniPanel, uniMemo;

type
  TMainForm = class(TUniForm)
    UniTreeMenu1: TUniTreeMenu;
    UniToolBar1: TUniToolBar;
    UniNativeImageList1: TUniNativeImageList;
    UniToolButton1: TUniToolButton;
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
    UniStatusBar1: TUniStatusBar;
    UniTimer1: TUniTimer;
    UniPageControl1: TUniPageControl;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniToolButton5: TUniToolButton;
    UniToolButton6: TUniToolButton;
    UniToolButton7: TUniToolButton;
    UniToolButton8: TUniToolButton;
    UniToolButton9: TUniToolButton;
    UniToolButton10: TUniToolButton;
    UniTabSheet1: TUniTabSheet;
    UniMemo1: TUniMemo;
    procedure UniToolButton1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniTreeMenu1SelectionChange(Sender: TObject);
    procedure UniPageControl1Change(Sender: TObject);
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
  uniGUIVars, uniGUIApplication, MainModule;

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
  UniTimer1Timer(nil);
end;

procedure TMainForm.UniPageControl1Change(Sender: TObject);
var
  T : TUniTabSheet;
  N : TUniTreeNode;
begin
  T := UniPageControl1.ActivePage;
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
  N := (Sender as TUniTabSheet).Data;
  if N is TUniTreeNode then
    (N as TUniTreeNode).Data := nil;

  if UniPageControl1.PageCount = 1 then
    UniTreeMenu1.Selected := nil;
end;

procedure TMainForm.UniTimer1Timer(Sender: TObject);
begin
  UniStatusBar1.Panels[0].Text := FormatDateTime('hh:nn', Time);
end;

procedure TMainForm.UniToolButton1Click(Sender: TObject);
begin
  UniTreeMenu1.Micro := not UniTreeMenu1.Micro;
end;

procedure TMainForm.UniTreeMenu1SelectionChange(Sender: TObject);
var
  N : TUniTreeNode;
  T : TUniTabSheet;
begin
  N := UniTreeMenu1.Selected;
  if Assigned(N) and N.IsLeaf then
  begin
    if N.Data = nil then
    begin
      T := TUniTabSheet.Create(Self);
      T.PageControl := UniPageControl1;
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
    UniPageControl1.ActivePage := T;
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
