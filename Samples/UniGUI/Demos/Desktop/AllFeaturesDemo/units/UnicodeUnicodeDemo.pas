//Unicode Demo = Unicode
unit UnicodeUnicodeDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTreeView, uniToolBar, uniMemo, uniDBNavigator,
  uniBasicGrid, uniDBGrid, uniEdit, uniDBEdit, uniGUIBaseClasses, uniPanel,
  DB, DBClient;

type
  TUniUnicodeUnicodeDemo = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBGrid1: TUniDBGrid;
    UniDBNavigator1: TUniDBNavigator;
    UniMemo1: TUniMemo;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniToolButton5: TUniToolButton;
    UniToolButton6: TUniToolButton;
    UniToolButton7: TUniToolButton;
    UniToolButton8: TUniToolButton;
    UniToolButton9: TUniToolButton;
    UniToolButton10: TUniToolButton;
    UniToolButton11: TUniToolButton;
    UniTreeView1: TUniTreeView;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    procedure UniTreeView1Change(Sender: TObject; Node: TUniTreeNode);
    procedure UniToolButton1Click(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniUnicodeUnicodeDemo.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
  UniMemo1.Lines.Add('Cell Value: '+Column.Field.Text);
end;

procedure TUniUnicodeUnicodeDemo.UniFrameCreate(Sender: TObject);
begin
 with ClientDataSet1 do
  begin
    FieldDefs.Add('Fld1', ftWideString, 25);
    FieldDefs.Add('Fld2', ftWideString, 25);
    FieldDefs.Add('Fld3', ftWideString, 25);
    CreateDataSet;

    Append;
    FieldByName('Fld1').AsString:='Hello';
    FieldByName('Fld2').AsString:='你好';
    FieldByName('Fld3').AsString:='سلام';
    Post;

    Append;
    FieldByName('Fld1').AsString:='привет';
    FieldByName('Fld2').AsString:='مرحبا';
    FieldByName('Fld3').AsString:='こんにちは';
    Post;

    Append;
    FieldByName('Fld1').AsString:='안녕하세요';
    FieldByName('Fld2').AsString:='שלום';
    FieldByName('Fld3').AsString:='สวัสดี';
    Post;
  end;
end;

procedure TUniUnicodeUnicodeDemo.UniToolButton1Click(Sender: TObject);
begin
  UniMemo1.Lines.Add(TUniToolButton(Sender).Caption+' clicked!');
end;

procedure TUniUnicodeUnicodeDemo.UniTreeView1Change(Sender: TObject; Node: TUniTreeNode);
begin
  UniMemo1.Lines.Add(Node.Text+' clicked!');
end;

initialization
  RegisterClass(TUniUnicodeUnicodeDemo);
end.
