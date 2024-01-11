//AllFeatures: Action List,Action List,icon-actions
unit Main;
{$I uniCompilers.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, ActnList,
  uniGUIBaseClasses, uniButton, uniMemo, Menus, uniMainMenu, uniToolBar,
  uniImageList, ImgList, System.ImageList, System.Actions;

type
  TMainForm = class(TUniForm)
    ActionList1: TActionList;
    ActionA: TAction;
    ActionB: TAction;
    ActionC: TAction;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniMemo1: TUniMemo;
    UniMainMenu1: TUniMainMenu;
    Actions1: TUniMenuItem;
    Item11: TUniMenuItem;
    Item21: TUniMenuItem;
    Items31: TUniMenuItem;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniButton7: TUniButton;
    UniButton8: TUniButton;
    UniButton9: TUniButton;
    UniButton10: TUniButton;
    UniButton11: TUniButton;
    UniButton12: TUniButton;
    UniNativeImageList1: TUniNativeImageList;
    UniImageListAdapter1: TUniImageListAdapter;
    UniButton13: TUniButton;
    UniButton14: TUniButton;
    UniButton15: TUniButton;
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

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.ActionAExecute(Sender: TObject);
begin
  UniMemo1.Lines.Add('ActionA');
end;

procedure TMainForm.ActionBExecute(Sender: TObject);
begin
  UniMemo1.Lines.Add('ActionB');
end;

procedure TMainForm.ActionCExecute(Sender: TObject);
begin
  UniMemo1.Lines.Add('ActionC');
end;

procedure TMainForm.UniButton10Click(Sender: TObject);
begin
  ActionA.Caption := 'New CaptionA';
end;

procedure TMainForm.UniButton11Click(Sender: TObject);
begin
  ActionB.Caption := 'New CaptionB';
end;

procedure TMainForm.UniButton12Click(Sender: TObject);
begin
  ActionC.Caption := 'New CaptionC';
end;

procedure TMainForm.UniButton13Click(Sender: TObject);
begin
  ActionA.ImageIndex := (ActionA.ImageIndex + 1) mod 24;
end;

procedure TMainForm.UniButton14Click(Sender: TObject);
begin
  ActionB.ImageIndex := (ActionB.ImageIndex + 1) mod 24;
end;

procedure TMainForm.UniButton15Click(Sender: TObject);
begin
  ActionC.ImageIndex := (ActionC.ImageIndex + 1) mod 24;
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
begin
  ActionA.Enabled := not ActionA.Enabled;
end;

procedure TMainForm.UniButton5Click(Sender: TObject);
begin
  ActionB.Enabled := not ActionB.Enabled;
end;

procedure TMainForm.UniButton6Click(Sender: TObject);
begin
  ActionC.Enabled := not ActionC.Enabled;
end;

procedure TMainForm.UniButton7Click(Sender: TObject);
begin
  ActionA.Visible := not ActionA.Visible;
end;

procedure TMainForm.UniButton8Click(Sender: TObject);
begin
  ActionB.Visible := not ActionB.Visible;
end;

procedure TMainForm.UniButton9Click(Sender: TObject);
begin
  ActionC.Visible := not ActionC.Visible;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniMemo1.Clear;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
