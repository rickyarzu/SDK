//AllFeatures: Unicode,Basic Demo,icon-grid-transform
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, ComCtrls, UniToolBar,
  ToolWin, StdCtrls, UniMemo, UniTreeView, Grids, DBGrids, uniDBGrid, ExtCtrls,
  DBCtrls, UniDBNavigator, Mask, UniDBEdit, uniEdit, uniPanel, uniBasicGrid,
  uniGUIRegClasses,  uniguiclasses, uniGUIAbstractClasses, uniGUIBaseClasses;

type
  TMainForm = class(TUniForm)
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniToolButton5: TUniToolButton;
    UniToolButton6: TUniToolButton;
    UniToolButton7: TUniToolButton;
    UniMemo1: TUniMemo;
    UniToolButton8: TUniToolButton;
    UniToolButton9: TUniToolButton;
    UniTreeView1: TUniTreeView;
    UniToolButton10: TUniToolButton;
    UniToolButton11: TUniToolButton;
    UniDBGrid1: TUniDBGrid;
    UniDBNavigator1: TUniDBNavigator;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    procedure UniToolButton1Click(Sender: TObject);
    procedure UniTreeView1Change(Sender: TObject; Node: TUniTreeNode);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
  UniMemo1.Lines.Add('Cell Value: '+Column.Field.Text);
end;

procedure TMainForm.UniToolButton1Click(Sender: TObject);
begin
  UniMemo1.Lines.Add(TUniToolButton(Sender).Caption+' clicked!');
end;

procedure TMainForm.UniTreeView1Change(Sender: TObject; Node: TUniTreeNode);
begin
  UniMemo1.Lines.Add(Node.Text+' clicked!');
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
