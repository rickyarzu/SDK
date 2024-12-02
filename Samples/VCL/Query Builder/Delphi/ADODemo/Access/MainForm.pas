unit MainForm;

interface

uses
  {$IF CompilerVersion >= 23}System.UITypes,{$IFEND}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, QBWindow,
  ImgList, ToolWin, Menus, QBFloatTable, QBParser, Db, QBMSWindow, ADODB,
  Buttons;

type
  TfmMain = class(TForm)
    StatusBar: TStatusBar;
    paTables: TPanel;
    paPages: TPanel;
    Pages: TPageControl;
    tsBuilder: TTabSheet;
    tsSQL: TTabSheet;
    tsResult: TTabSheet;
    mmSQL: TMemo;
    DBGrid: TDBGrid;
    DBNavigator: TDBNavigator;
    ilList: TImageList;
    DataSource: TDataSource;
    CoolBar: TCoolBar;
    ToolBar: TToolBar;
    tbLoad: TToolButton;
    tbSave: TToolButton;
    ToolButton3: TToolButton;
    tbExecute: TToolButton;
    ToolButton5: TToolButton;
    tbClear: TToolButton;
    MainMenu: TMainMenu;
    miFile: TMenuItem;
    miHelp: TMenuItem;
    miAbout: TMenuItem;
    miLoad: TMenuItem;
    miSaveAs: TMenuItem;
    miSeparator1: TMenuItem;
    miExit: TMenuItem;
    miQuery: TMenuItem;
    miExecute: TMenuItem;
    miSeparator2: TMenuItem;
    miClear: TMenuItem;
    Splitter: TSplitter;
    ilMenu: TImageList;
    dlgSave: TSaveDialog;
    dlgOpen: TOpenDialog;
    tbConnect: TToolButton;
    tbDisconnect: TToolButton;
    ToolButton4: TToolButton;
    miSeparator3: TMenuItem;
    miConnect: TMenuItem;
    miDisconnect: TMenuItem;
    miView: TMenuItem;
    miQBOptions: TMenuItem;
    tbTables: TToolButton;
    ToolButton1: TToolButton;
    QueryBuilder: TMSSQLQueryBuilder;
    miSeparator5: TMenuItem;
    miLoadDiagram: TMenuItem;
    miSaveDiagram: TMenuItem;
    Query: TADOQuery;
    Connection: TADOConnection;
    tvTables: TTreeView;
    procedure QueryBuilderDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure QueryBuilderDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure QueryBuilderGetTableFields(const NameOfTable: String;
      var ADataSet: TDataSet; var AParams: TParams);
    procedure FormCreate(Sender: TObject);
    procedure PagesChanging(Sender: TObject; var AllowChange: Boolean);
    procedure tbExecuteClick(Sender: TObject);
    procedure tbClearClick(Sender: TObject);
    procedure miExitClick(Sender: TObject);
    procedure tbConnectClick(Sender: TObject);
    procedure tbDisconnectClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryBuilderParserError(Sender: TObject; const ErrorMsg,
      Token: String; LineNo, LinePos: Integer);
    procedure miAboutClick(Sender: TObject);
    procedure miQBOptionsClick(Sender: TObject);
    procedure tbTablesClick(Sender: TObject);
    procedure miSaveAsClick(Sender: TObject);
    procedure miLoadClick(Sender: TObject);
    procedure miLoadDiagramClick(Sender: TObject);
    procedure miSaveDiagramClick(Sender: TObject);
    procedure ConnectionAfterConnect(Sender: TObject);
    procedure ConnectionAfterDisconnect(Sender: TObject);
    procedure tvTablesDeletion(Sender: TObject; Node: TTreeNode);
    procedure QueryBuilderEnterProcParameter(Sender: TObject;
      SProcedure: TQBTable; ListItem: TQBListItem);
    procedure tvTablesDblClick(Sender: TObject);
  private

    procedure CheckAddLink();

    procedure UpdateCaption;
    procedure UpdateListAppearance;
    procedure RefreshTableList;
    function FormatByQuotes(const Ident: string; Quote: boolean): string;
    function GetDatabaseName(Connection: TADOConnection): string;
  end;

var
  fmMain: TfmMain;

implementation

uses ConnectForm, AboutForm, QBOptionsForm, ParamForm, Variants;

const
  cSelect = 'SELECT * FROM %s WHERE 0 = 1';

resourcestring
  sCaption = 'EMS MS Access Query Builder demo application [%s]';
  sHideTableList = 'Hide table list';
  sShowTableList = 'Show table list';

type
  TObjInfo = record
    Name: string;
  //  Owner: string;
  end;
  PObjInfo = ^TObjInfo;

{$R *.DFM}

procedure TfmMain.QueryBuilderDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source = tvTables) and (tvTables.Selected <> nil) and
    (tvTables.Selected.Level = 1);
end;

procedure TfmMain.QueryBuilderDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  Tbl: TQBTable;
  OldCur: TCursor;
  SelNode: TTreeNode;
  N, F: string;
  Params: TParams;
begin
  if Source <> tvTables then
    Exit;
  SelNode := TTreeView(Source).Selected;
  if (SelNode = nil) or (SelNode.Data = nil) or (SelNode.Level <> 1) then
    Exit;

  OldCur := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  Params := TParams.Create;
  try
    Query.Active := false;
    tsResult.TabVisible := false;
    N := PObjInfo(SelNode.Data)^.Name;
//    O := PObjInfo(SelNode.Data)^.Owner;
//    if (O <> '') and (O <> 'dbo') then
//    begin
//      F := FormatByQuotes(O, true) + '.' + FormatByQuotes(N, true);
//      N := O + '.' + N;
//    end
//    else
      F := FormatByQuotes(N, true);

    Query.SQL.Text := Format(cSelect, [F]);
    Query.Open;
    try
      Tbl := QueryBuilder.Tables.AddTable(N, '', Query);
      if (Tbl <> nil) and (X <> 0) and (Y <> 0) then
      begin
        Tbl.Left := X;
        Tbl.Top := Y;
      end;
    finally
      Query.Close;
    end;

    CheckAddLink();

  finally
    Screen.Cursor := OldCur;
    Params.Free;
  end;
end;

procedure TfmMain.QueryBuilderGetTableFields(const NameOfTable: String;
  var ADataSet: TDataSet; var AParams: TParams);

  function EmptySubQuerySQL(ASQL: string): string;
  begin
    Result := '';
    if ASQL <> '' then
      if Pos('WHERE', AnsiUpperCase(ASQL)) > 0 then
        Result := Copy(ASQL, 1, Pos('WHERE', AnsiUpperCase(ASQL)) - 1) + 'WHERE 1=0'
      else
        Result := ASQL + ' WHERE 1=0' ;
  end;

var
  S: string;
begin
  Screen.Cursor := crHourGlass;
  try
    Query.Active := false;
    if pos('SELECT',AnsiUpperCase(NameOfTable)) = 1 then
      S := EmptySubQuerySQL(NameOfTable)
    else
      S := QueryBuilder.Parser.Scanner.ProcessName(NameOfTable);

    if pos('SELECT',AnsiUpperCase(NameOfTable)) = 1 then
      Query.SQL.Text := S
    else
      Query.SQL.Text := Format(cSelect, [S]);
    Query.Open;
    ADataSet := Query;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  tsResult.TabVisible := False;
  Application.Title := Caption;
  UpdateCaption;
  UpdateListAppearance;
end;

procedure TfmMain.PagesChanging(Sender: TObject; var AllowChange: Boolean);
begin
  if csLoading in Self.ComponentState then
    Exit;
  if Pages.ActivePage = tsBuilder then
  begin
    mmSQL.Text := QueryBuilder.SQL;
    mmSQL.Modified := False;
  end
  else
  if Pages.ActivePage = tsSQL then
  begin
    if mmSQL.Modified then
    begin
      try
        QueryBuilder.SQL := mmSQL.Text;
      except
      end;
      AllowChange := QueryBuilder.Parser.Success;
      mmSQL.Modified := not AllowChange;
    end;
  end;
end;

procedure TfmMain.tbExecuteClick(Sender: TObject);
var
  SQL: string;
  Param: boolean;
begin
  if Pages.ActivePage = tsBuilder then
    SQL := QueryBuilder.SQL
  else
  if Pages.ActivePage = tsSQL then
    SQL := mmSQL.Text
  else
    Exit;

  PagesChanging(Self, Param);
  Param := true;
  Query.Close;
  Query.SQL.Text := SQL;
  Query.Open;
  tsResult.TabVisible := True;
  Pages.ActivePage := tsResult;
end;

procedure TfmMain.tbClearClick(Sender: TObject);
begin
  QueryBuilder.SQL := '';
  mmSQL.Lines.Text := '';
  Query.Active := false;
  tsResult.TabVisible := false;
end;

procedure TfmMain.miExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.UpdateCaption;
begin
  if Connection.Connected then
    Caption := Format(sCaption, [GetDatabaseName(Connection)])
  else
    Caption := Format(sCaption, ['']);
end;

procedure TfmMain.tbConnectClick(Sender: TObject);
const
  ConnectionString =
  'Provider=Microsoft.Jet.OLEDB.4.0;'+
  'Persist Security Info=False;'+
  'User ID=%s;'+
  'Data Source=%s';
begin
  if ShowConnectForm(Connection, ConnectionString) then
    UpdateCaption;
end;

procedure TfmMain.tbDisconnectClick(Sender: TObject);
begin
  Connection.Connected := False;
end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Connection.Connected := False;
end;

procedure TfmMain.RefreshTableList;
var
  TablesNode, ViewsNode : TTreeNode;
  TypeField, NameField: TField;
  TableType, TableName: {$IFDEF VCL10}WideString {$ELSE} string {$ENDIF};
  DataSet: TADODataSet;

  function AddNode(Parent: TTreeNode; const ObjName: string;
    const ItemImage: integer): TTreeNode;
  var
    P: PObjInfo;
  begin
    New(P);
    P^.Name := ObjName;
    Result := tvTables.Items.AddChild(Parent, ObjName);
    Result.ImageIndex := ItemImage;
    Result.SelectedIndex := ItemImage;
    Result.Data := P;
  end;

begin
  if not Connection.Connected then
    Exit;

  DataSet := TADODataSet.Create(nil);
  try
    Connection.OpenSchema(siTables, EmptyParam, EmptyParam, DataSet);
    TypeField := DataSet.FieldByName('TABLE_TYPE');
    NameField := DataSet.FieldByName('TABLE_NAME'); 
    tvTables.Items.BeginUpdate;
    try
      tvTables.Items.Clear;
      TablesNode := AddNode(nil, 'Tables', 0);
      ViewsNode := AddNode(nil, 'Views', 1);
        while not DataSet.EOF do
        begin
          TableType := TypeField.{$IFDEF VCL10}AsWideString{$ELSE}AsString{$ENDIF};
          TableName := NameField.{$IFDEF VCL10}AsWideString{$ELSE}AsString{$ENDIF};
          if (TableType = 'TABLE') then AddNode(TablesNode, TableName, 0);
          if  (TableType = 'VIEW') then AddNode(ViewsNode, TableName, 1);

          DataSet.Next;
        end;
    finally
      tvTables.Items.EndUpdate;
    end;
  finally
    DataSet.Free;
  end;
  TablesNode.Expand(true);
end;

function TfmMain.FormatByQuotes(const Ident: string; Quote: boolean): string;
begin
  Result := Ident;
  if Quote then
  begin
//    if QueryBuilder.AlterQuotes then
//      Result := Format('"%s"', [Ident])
//    else
      Result := Format('[%s]', [Ident]);
  end;
end;

procedure TfmMain.QueryBuilderParserError(Sender: TObject; const ErrorMsg,
  Token: String; LineNo, LinePos: Integer);
begin
  mmSQL.SelStart := TQBSelectParser(Sender).Scanner.Position - Length(Token) - 1;
  mmSQL.SelLength := Length(Token);
  MessageDlg(ErrorMsg, mtError, [mbOk], 0);
end;

procedure TfmMain.miAboutClick(Sender: TObject);
begin
  ShowAboutBox;
end;

procedure TfmMain.miQBOptionsClick(Sender: TObject);
begin
  ShowQBOptions(QueryBuilder);
end;

procedure TfmMain.tbTablesClick(Sender: TObject);
begin
  UpdateListAppearance;
end;

procedure TfmMain.UpdateListAppearance;
begin
  paTables.Visible := tbTables.Down;
  Splitter.Visible := paTables.Visible;
  if tbTables.Down
    then tbTables.Hint := sHideTableList
    else tbTables.Hint := sShowTableList;
end;

procedure TfmMain.miSaveAsClick(Sender: TObject);
begin
  dlgSave.DefaultExt := 'SQL';
  dlgSave.Filter := 'SQL Files (*.sql)|*.sql|Text Files (*.txt)|*.txt|All Files (*.*)|*.*';
  dlgSave.Title := 'Save SQL File';
  if dlgSave.Execute then begin
    if Pages.ActivePage = tsBuilder
      then mmSQL.Lines.Text := QueryBuilder.SQL;
    {$IFDEF VER200} // Delphi 2009 TEncoding
    mmSQL.Lines.SaveToFile(dlgSave.FileName, TEncoding.Unicode);
    {$ELSE}
    mmSQL.Lines.SaveToFile(dlgSave.FileName);
    {$ENDIF}
  end;
end;

procedure TfmMain.miLoadClick(Sender: TObject);
begin
  dlgOpen.DefaultExt := 'SQL';
  dlgOpen.Filter := 'SQL Files (*.sql)|*.sql|Text Files (*.txt)|*.txt|All Files (*.*)|*.*';
  dlgOpen.Title := 'Load SQL File';
  if dlgOpen.Execute then begin
    mmSQL.Lines.LoadFromFile(dlgOpen.FileName);
    mmSQL.Modified := Pages.ActivePage = tsSQL;
    QueryBuilder.SQL := mmSQL.Lines.Text;
  end;
end;

procedure TfmMain.miLoadDiagramClick(Sender: TObject);
begin
  dlgOpen.DefaultExt := 'INI';
  dlgOpen.Filter := 'INI Files (*.ini)|*.ini|All Files (*.*)|*.*';
  dlgOpen.Title := 'Load Diagram';
  if (Pages.ActivePage = tsBuilder) and dlgOpen.Execute then begin
    QueryBuilder.LoadFromIni(dlgOpen.FileName, True);
    mmSQL.Lines.Text := QueryBuilder.SQL;
  end;
end;

procedure TfmMain.miSaveDiagramClick(Sender: TObject);
begin
  dlgSave.DefaultExt := 'INI';
  dlgSave.Filter := 'INI Files (*.ini)|*.ini|All Files (*.*)|*.*';
  dlgSave.Title := 'Save Diagram';
  if (Pages.ActivePage = tsBuilder) and dlgSave.Execute then
    QueryBuilder.SaveToIni(dlgSave.FileName, True);
end;

procedure TfmMain.ConnectionAfterConnect(Sender: TObject);
begin
  Query.Active := False;
  RefreshTableList;
  UpdateCaption;
  tbClear.Click;
end;

procedure TfmMain.ConnectionAfterDisconnect(Sender: TObject);
begin
  tvTables.Items.BeginUpdate;
  try
    tvTables.Items.Clear;
  finally
    tvTables.Items.EndUpdate;
  end;
  Connection.ConnectionString := '';
  tbClear.Click;
  UpdateCaption;
end;

function TfmMain.GetDatabaseName(Connection: TADOConnection): string;
begin
  Result := ExtractFileName(GetConnectionParam(Connection, cpDatabase)) + ' : ' +
            GetConnectionParam(Connection, cpUser);
end;

procedure TfmMain.tvTablesDeletion(Sender: TObject; Node: TTreeNode);
begin
  if (Node <> nil) and (Node.Data <> nil) then
    Dispose(PObjInfo(Node.Data));
end;

procedure TfmMain.QueryBuilderEnterProcParameter(Sender: TObject;
  SProcedure: TQBTable; ListItem: TQBListItem);
begin
  InputParam(ListItem);
end;

procedure TfmMain.tvTablesDblClick(Sender: TObject);
begin
  QueryBuilderDragDrop(Self, Sender, 0, 0);
  mmSQL.Lines.Text := QueryBuilder.SQL;
end;

procedure TfmMain.CheckAddLink();
var
  I: Integer;
  Field1, Field2: TQBListItem;
  Table1, Table2: TQBTable;
begin
  if QueryBuilder.Tables.Count < 1 then Exit;

  Table1 := nil;
  Field1 := nil;
  for I := 0 to QueryBuilder.Tables.Count - 1 do
    if QueryBuilder.Tables.Table[i].TableName = 'customer' then
    begin
      Table1 := QueryBuilder.Tables.Table[i];
      Field1 := QueryBuilder.Tables.Table[i].Field['CustNo'];
      Break;
    end;

  Table2 := nil;
  Field2 := nil;
  for I := 0 to QueryBuilder.Tables.Count - 1 do
    if QueryBuilder.Tables.Table[i].TableName = 'orders' then
    begin
      Table2 := QueryBuilder.Tables.Table[i];
      Field2 := QueryBuilder.Tables.Table[i].Field['CustNo'];
      Break;
    end;

  if Assigned(Field1) and Assigned(Field2) and
  not Assigned(QueryBuilder.ActiveQueryBuilder.WorkArea.FindLink(Table1, Table2,
                  Field1, Field2)) then
      QueryBuilder.ActiveQueryBuilder.WorkArea.AddLink(Table1, Table2, Field1, Field2);

end;

end.
