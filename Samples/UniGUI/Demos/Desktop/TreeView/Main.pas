//AllFeatures: Treeview,Basic Demo,icon-tree-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, ComCtrls, UniTreeView,
  StdCtrls, UniButton, UniLabel, UniEdit, uniGroupBox, Buttons,
  UniBitBtn, UniScreenMask, uniGUIRegClasses,  uniguiclasses, UniPanel, uniGUIBaseClasses,
  UniGUIAbstractClasses, uniImageList;

type
  TMainForm = class(TUniForm)
    UniTreeView1: TUniTreeView;
    UniButton1: TUniBitBtn;
    UniGroupBox1: TUniGroupBox;
    UniLabel1: TUniLabel;
    UniEdit1: TUniEdit;
    UniButton2: TUniBitBtn;
    UniLabel2: TUniLabel;
    UniBitBtn1: TUniBitBtn;
    UniImageList1: TUniImageList;
    procedure UniButton1Click(Sender: TObject);
    procedure UniTreeView1Change(Sender: TObject; Node: TUniTreeNode);
    procedure UniButton2Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniTreeView1Deletion(Sender: TObject; Node: TUniTreeNode);
  private
    { Private declarations }
    SelectedNode : TUniTreeNode;
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

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniTreeView1.Items.AddChild(SelectedNode, UniEdit1.Text);
  if SelectedNode<>nil then
  begin
    SelectedNode.Expanded:=True;
     SelectedNode.ImageIndex := 1;
  end;

  UniEdit1.Text:='New Node'+IntToStr(UniTreeView1.Items.Count);
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  FreeAndNil(SelectedNode);
  UniLabel2.Caption:='Selected Node: ';
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  if SelectedNode<>nil then
  begin
    SelectedNode.Text:=UniEdit1.Text;
    SelectedNode.Font.Style:=[fsBold];
    SelectedNode.Font.Color:=clBlue;
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniLabel2.Caption:='Selected Node: ';
end;

procedure TMainForm.UniTreeView1Change(Sender: TObject; Node: TUniTreeNode);
begin
  SelectedNode:=Node;
  UniLabel2.Caption:='Selected Node: '+Node.Text;
end;

procedure TMainForm.UniTreeView1Deletion(Sender: TObject; Node: TUniTreeNode);
begin
//
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
