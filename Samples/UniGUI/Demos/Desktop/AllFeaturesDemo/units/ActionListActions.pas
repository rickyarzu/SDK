// Action List = Actions
unit ActionListActions;
{$I uniCompilers.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, ImgList, uniImageList,
  uniGUIBaseClasses, Menus, uniMainMenu, ActnList,
  uniToolBar, uniMemo, uniButton, uniPanel;

type
  TUniActionListActions = class(TUniFrame)
    UniMemo1: TUniMemo;
    UniToolBar1: TUniToolBar;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniButton7: TUniButton;
    UniButton8: TUniButton;
    UniButton9: TUniButton;
    UniButton10: TUniButton;
    UniButton11: TUniButton;
    UniButton12: TUniButton;
    UniButton13: TUniButton;
    UniButton14: TUniButton;
    UniButton15: TUniButton;
    ActionList1: TActionList;
    ActionA: TAction;
    ActionB: TAction;
    ActionC: TAction;
    UniMainMenu1: TUniMainMenu;
    Actions1: TUniMenuItem;
    UniNativeImageList1: TUniNativeImageList;
    UniImageListAdapter1: TUniImageListAdapter;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    ActionA1: TUniMenuItem;
    ActionB1: TUniMenuItem;
    ActionC1: TUniMenuItem;
    UniButton16: TUniButton;
    UniButton17: TUniButton;
    UniButton18: TUniButton;
    UniPanel1: TUniPanel;
    procedure ActionAExecute(Sender: TObject);
    procedure ActionBExecute(Sender: TObject);
    procedure ActionCExecute(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure UniButton7Click(Sender: TObject);
    procedure UniButton8Click(Sender: TObject);
    procedure UniButton9Click(Sender: TObject);
    procedure UniButton10Click(Sender: TObject);
    procedure UniButton11Click(Sender: TObject);
    procedure UniButton12Click(Sender: TObject);
    procedure UniButton13Click(Sender: TObject);
    procedure UniButton14Click(Sender: TObject);
    procedure UniButton15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniActionListActions.ActionAExecute(Sender: TObject);
begin
  UniMemo1.Lines.Add('ActionA');
end;

procedure TUniActionListActions.ActionBExecute(Sender: TObject);
begin
  UniMemo1.Lines.Add('ActionB');
end;

procedure TUniActionListActions.ActionCExecute(Sender: TObject);
begin
  UniMemo1.Lines.Add('ActionC');
end;

procedure TUniActionListActions.UniButton10Click(Sender: TObject);
begin
  ActionA.Caption := 'New CaptionA';
end;

procedure TUniActionListActions.UniButton11Click(Sender: TObject);
begin
  ActionB.Caption := 'New CaptionB';
end;

procedure TUniActionListActions.UniButton12Click(Sender: TObject);
begin
  ActionC.Caption := 'New CaptionC';
end;

procedure TUniActionListActions.UniButton13Click(Sender: TObject);
begin
  ActionA.ImageIndex := (ActionA.ImageIndex + 1) mod 24;
end;

procedure TUniActionListActions.UniButton14Click(Sender: TObject);
begin
  ActionB.ImageIndex := (ActionB.ImageIndex + 1) mod 24;
end;

procedure TUniActionListActions.UniButton15Click(Sender: TObject);
begin
  ActionC.ImageIndex := (ActionC.ImageIndex + 1) mod 24;
end;

procedure TUniActionListActions.UniButton4Click(Sender: TObject);
begin
  ActionA.Enabled := not ActionA.Enabled;
end;

procedure TUniActionListActions.UniButton5Click(Sender: TObject);
begin
  ActionB.Enabled := not ActionB.Enabled;
end;

procedure TUniActionListActions.UniButton6Click(Sender: TObject);
begin
  ActionC.Enabled := not ActionC.Enabled;
end;

procedure TUniActionListActions.UniButton7Click(Sender: TObject);
begin
  ActionA.Visible := not ActionA.Visible;
end;

procedure TUniActionListActions.UniButton8Click(Sender: TObject);
begin
  ActionB.Visible := not ActionB.Visible;
end;

procedure TUniActionListActions.UniButton9Click(Sender: TObject);
begin
  ActionC.Visible := not ActionC.Visible;
end;

procedure TUniActionListActions.UniFormCreate(Sender: TObject);
begin
  UniMemo1.Clear;
end;


initialization
  RegisterClass(TUniActionListActions);

end.
