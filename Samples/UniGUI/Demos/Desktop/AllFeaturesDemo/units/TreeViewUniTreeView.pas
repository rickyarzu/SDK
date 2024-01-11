// UniTreeView = TreeView
unit TreeViewUniTreeView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTreeView, uniEdit, uniLabel, uniGroupBox,
  uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel, uniImageList;

type
  TUniTreeViewUniTreeView = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniBitBtn;
    UniButton2: TUniBitBtn;
    UniGroupBox1: TUniGroupBox;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniEdit1: TUniEdit;
    UniBitBtn1: TUniBitBtn;
    UniTreeView1: TUniTreeView;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniTreeView1Change(Sender: TObject; Node: TUniTreeNode);
    procedure UniBitBtn1Click(Sender: TObject);
  private
    SelectedNode : TUniTreeNode;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniTreeViewUniTreeView.UniBitBtn1Click(Sender: TObject);
begin
  if SelectedNode<>nil then
  begin
    SelectedNode.Text:=UniEdit1.Text;
    SelectedNode.Font.Style:=[fsBold];
    SelectedNode.Font.Color:=clBlue;
  end;
end;

procedure TUniTreeViewUniTreeView.UniButton1Click(Sender: TObject);
begin
  UniTreeView1.Items.AddChild(SelectedNode, UniEdit1.Text);
  if SelectedNode<>nil then
  begin
    SelectedNode.Expand(True);
    SelectedNode.ImageIndex := 1;
  end;


  UniEdit1.Text:='New Node'+IntToStr(UniTreeView1.Items.Count);
end;

procedure TUniTreeViewUniTreeView.UniButton2Click(Sender: TObject);
begin
  FreeAndNil(SelectedNode);
  UniLabel2.Caption:='Selected Node: ';
end;

procedure TUniTreeViewUniTreeView.UniFrameCreate(Sender: TObject);
begin
  UniLabel2.Caption:='Selected Node: ';
end;

procedure TUniTreeViewUniTreeView.UniTreeView1Change(Sender: TObject;
  Node: TUniTreeNode);
begin
  SelectedNode:=Node;
  UniLabel2.Caption:='Selected Node: '+Node.Text;
end;

initialization
  RegisterClass(TUniTreeViewUniTreeView);

end.
