// SQL Query = Database
unit DatabaseSQLQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTreeView, uniToolBar, uniStatusBar,
  uniDBNavigator, uniMemo, uniBasicGrid, uniDBGrid, uniSyntaxEditor,
  uniSplitter, uniPanel, uniGUIBaseClasses, uniImageList, MainModule,
  uniSyntaxEditorBase;

type
  TUniDatabaseSQLQuery = class(TUniFrame)
    UniCPanel: TUniPanel;
    UniPanel1: TUniPanel;
    UniSplitter2: TUniSplitter;
    UniSplitter1: TUniSplitter;
    UniSyntaxEdit1: TUniSyntaxEdit;
    UniDBGrid1: TUniDBGrid;
    UniMemo1: TUniMemo;
    UniPanel2: TUniPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniSplitter3: TUniSplitter;
    UniToolBar1: TUniToolBar;
    UniToolButton4: TUniToolButton;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniTreeView1: TUniTreeView;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniToolButton1Click(Sender: TObject);
    procedure UniToolButton2Click(Sender: TObject);
    procedure UniTreeView1Change(Sender: TObject; Node: TUniTreeNode);
    procedure UniFrameCreate(Sender: TObject);
  private
    CNode : TUniTreeNode;
    procedure ExecuteSQL;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniDatabaseSQLQuery.ExecuteSQL;
begin
  UniMemo1.Clear;
  try
    UniMainModule.ADOQuery6.Close;
    UniMainModule.ADOQuery6.SQL.Text:=UniSyntaxEdit1.Lines.Text;
    UniMainModule.ADOQuery6.Open;
    UniMemo1.Lines.Add(IntToStr(UniMainModule.ADOQuery6.RecordCount)+' Row(s) returned.');
  except
    on E:Exception do
    begin
      UniMemo1.Lines.Add(E.Message);
    end;
  end;
end;

procedure TUniDatabaseSQLQuery.UniFrameCreate(Sender: TObject);
var
  TbList : TStrings;
  I : Integer;
  N : TUniTreeNode;
begin
  UniMainModule.InitCacheFiles;

  UniSyntaxEdit1.Lines.Text:='select * from [Customers]';

  UniTreeView1.Items.AddChild(nil, 'Tables');
  with UniMainModule do
  begin
    TbList:=TStringList.Create;
    AdoConnection4.Connected := True;
    ADOConnection4.GetTableNames(TbList, FALSE);
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

procedure TUniDatabaseSQLQuery.UniToolButton1Click(Sender: TObject);
begin
  UniSyntaxEdit1.Lines.Text:='select * from [Customers]';
  UniMainModule.ADOQuery6.Close;
  UniMemo1.Clear;
  UniTreeView1.Selected := CNode;
end;

procedure TUniDatabaseSQLQuery.UniToolButton2Click(Sender: TObject);
begin
  ExecuteSQL;
end;

procedure TUniDatabaseSQLQuery.UniTreeView1Change(Sender: TObject; Node: TUniTreeNode);
begin
  if Node.IsFirstNode then Exit;

  UniSyntaxEdit1.Lines.Text:='select * from ['+Node.Text+']';
  UniMainModule.ADOQuery6.Close;
  UniMemo1.Clear;
end;

initialization
  RegisterClass(TUniDatabaseSQLQuery);
end.
