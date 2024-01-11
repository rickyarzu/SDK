unit Main;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, 
  ToolWin, ComCtrls, UniToolBar, ExtCtrls, UniSplitter, Grids, DBGrids,
  uniDBGrid, StdCtrls, UniMemo, UniStatusBar, ImgList, UniTreeView, UniPanel,
  DBCtrls, UniDBNavigator, UniBasicGrid, uniGUIRegClasses,  uniguiclasses, uniGUIBaseClasses,
  UniGUIAbstractClasses, uniImageList, uniSyntaxEditor;
                                                          
type
  TMainForm = class(TUniForm)
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniStatusBar1: TUniStatusBar;
    ImageList: TUniImageList;
    UniTreeView1: TUniTreeView;
    UniSplitter3: TUniSplitter;
    UniPanel1: TUniPanel;
    UniSplitter2: TUniSplitter;
    UniSplitter1: TUniSplitter;
    UniSyntaxEdit1: TUniSyntaxEdit;
    UniDBGrid1: TUniDBGrid;
    UniMemo1: TUniMemo;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniPanel2: TUniPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniToolButton2Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniToolButton1Click(Sender: TObject);
    procedure UniTreeView1Change(Sender: TObject; Node: TUniTreeNode);
  private
    { Private declarations }
    CNode : TUniTreeNode;
    procedure ExecuteSQL;
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

procedure TMainForm.ExecuteSQL;
begin
  UniMemo1.Clear;
  try
    UniMainModule.ADOQuery1.Close;
    UniMainModule.ADOQuery1.SQL.Text:=UniSyntaxEdit1.Lines.Text;
    UniMainModule.ADOQuery1.Open;
    UniMemo1.Lines.Add(IntToStr(UniMainModule.ADOQuery1.RecordCount)+' Row(s) returned.');
  except
    on E:Exception do
    begin
      UniMemo1.Lines.Add(E.Message);
    end;
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  TbList : TStrings;
  I : Integer;
  N : TUniTreeNode;
begin

  UniSyntaxEdit1.Lines.Text:='select * from [Customers]';

  UniTreeView1.Items.AddChild(nil, 'Tables');
  with UniMainModule do
  begin
    TbList:=TStringList.Create;
    AdoConnection1.Connected := True;
    ADOConnection1.GetTableNames(TbList, FALSE);
    try
      for I := 0 to TbList.Count - 1 do
      begin
        N := UniTreeView1.Items.AddChild(UniTreeView1.Items[0], TbList[I]);
        if SameText(TbList[I], 'customers')  then
          CNode := N;
      end;
      UniTreeView1.Selected := CNode;
      UniTreeView1.FullExpand;
    finally
      TbList.Free;
    end;
  end;
end;

procedure TMainForm.UniToolButton1Click(Sender: TObject);
begin
  UniSyntaxEdit1.Lines.Text:='select * from [Customers]';
  UniMainModule.ADOQuery1.Close;
  UniMemo1.Clear;
  UniTreeView1.Selected := CNode;
end;

procedure TMainForm.UniToolButton2Click(Sender: TObject);
begin
  ExecuteSQL;
end;

procedure TMainForm.UniTreeView1Change(Sender: TObject; Node: TUniTreeNode);
begin
  if Node.IsFirstNode then Exit;

  UniSyntaxEdit1.Lines.Text:='select * from ['+Node.Text+']';
  UniMainModule.ADOQuery1.Close;
  UniMemo1.Clear;
end;

initialization                                            
  RegisterMainFormClass(TMainForm);
                                                          
end.                                                      
