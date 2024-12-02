unit MainForm;

interface

uses
  System.UITypes, System.SysUtils, VCL.Forms, VCL.Graphics,
  QBFloatTable, QBParser, System.ImageList, VCL.Buttons, Data.DB, VCL.Menus, VCL.ImgList, VCL.ToolWin,
  VCL.Dialogs, VCL.Controls, VCL.ComCtrls, VCL.DBCtrls, VCL.Grids, VCL.DBGrids, VCL.StdCtrls, QBWindow,
  VCL.ExtCtrls, System.Classes, QBFloatPanel, SQLiteUniProvider, SQLServerUniProvider, PostgreSQLUniProvider,
  OracleUniProvider, InterBaseUniProvider, DBFUniProvider, DB2UniProvider, AdvantageUniProvider, UniProvider,
  ODBCUniProvider, AccessUniProvider,
  MemDS, DBAccess, Uni, UniDacVcl, CRGrid;

type
  TfmMain = class(TForm)
    StatusBar: TStatusBar;
    paTables: TPanel;
    paPages: TPanel;
    Pages: TPageControl;
    tsBuilder: TTabSheet;
    tsSQL: TTabSheet;
    tsResult: TTabSheet;
    paDatabases: TPanel;
    lvTables: TListView;
    laDatabase: TLabel;
    cbDatabase: TComboBox;
    QueryBuilder: TSQLQueryBuilder;
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
    miLoadSQL: TMenuItem;
    miSaveSQLAs: TMenuItem;
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
    miView: TMenuItem;
    miQBOptions: TMenuItem;
    miSeparator3: TMenuItem;
    miShowSystem: TMenuItem;
    miQuoteIdents: TMenuItem;
    tbTables: TToolButton;
    ToolButton1: TToolButton;
    miQuoteAliases: TMenuItem;
    miSeparator4: TMenuItem;
    miLoadDiagram: TMenuItem;
    miSaveDiagramAs: TMenuItem;
    tbSaveAsImage: TToolButton;
    miSaveAsImage: TMenuItem;
    dlgSaveImage: TSaveDialog;
    AccessUniProvider1: TAccessUniProvider;
    DB2UniProvider1: TDB2UniProvider;
    DBFUniProvider1: TDBFUniProvider;
    InterBaseUniProvider1: TInterBaseUniProvider;
    ODBCUniProvider1: TODBCUniProvider;
    OracleUniProvider1: TOracleUniProvider;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    SQLServerUniProvider1: TSQLServerUniProvider;
    SQLiteUniProvider1: TSQLiteUniProvider;
    UniConnection1: TUniConnection;
    listTables: TUniMetaData;
    UniConnectDialog1: TUniConnectDialog;
    tabMetadata: TTabSheet;
    dsTables: TUniDataSource;
    Query: TUniQuery;
    CRDBGrid1: TCRDBGrid;
    procedure lvTablesDblClick(Sender: TObject);
    procedure QueryBuilderDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure QueryBuilderDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure QueryBuilderGetTableFields(const NameOfTable: String; var ADataSet: TDataSet;
      var AParams: TParams);
    procedure FormCreate(Sender: TObject);
    procedure PagesChanging(Sender: TObject; var AllowChange: Boolean);
    procedure tbExecuteClick(Sender: TObject);
    procedure tbClearClick(Sender: TObject);
    procedure miExitClick(Sender: TObject);
    procedure cbDatabaseChange(Sender: TObject);
    procedure miAboutClick(Sender: TObject);
    procedure miQBOptionsClick(Sender: TObject);
    procedure miShowSystemClick(Sender: TObject);
    procedure miQuoteIdentsClick(Sender: TObject);
    procedure QueryBuilderParserError(Sender: TObject; const ErrorMsg, Token: String;
      LineNo, LinePos: Integer);
    procedure tbTablesClick(Sender: TObject);
    procedure miQuoteAliasesClick(Sender: TObject);
    procedure miLoadDiagramClick(Sender: TObject);
    procedure miSaveDiagramAsClick(Sender: TObject);
    procedure miLoadSQLClick(Sender: TObject);
    procedure miSaveSQLAsClick(Sender: TObject);
    procedure miSaveAsImageClick(Sender: TObject);
  private
    procedure RefreshTableList;
    procedure UpdateListAppearance;
    function FormatIdentifier(const Ident: string): string;
  end;

var
  fmMain: TfmMain;

implementation

uses AboutForm, QBOptionsForm;

const
  sSelect = 'SELECT * FROM %s WHERE 0 = 1';

resourcestring
  sHideTableList = 'Hide table list';
  sShowTableList = 'Show table list';

{$R *.DFM}

procedure TfmMain.lvTablesDblClick(Sender: TObject);
begin
  QueryBuilderDragDrop(Self, Sender, 0, 0);
  mmSQL.Lines.Text := QueryBuilder.SQL;
end;

procedure TfmMain.QueryBuilderDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
  Accept := Source = lvTables;
end;

procedure TfmMain.QueryBuilderDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  Tbl: TQBTable;
  OldCur: TCursor;
  SelLI: TListItem;
  TableName: string;
begin
  if Source <> lvTables then
    Exit;
  SelLI := TListView(Source).Selected;
  if SelLI = nil then
    Exit;
  OldCur := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    Query.Active := False;
    tsResult.TabVisible := False;
    Query.SQL.Text := Format(sSelect, [FormatIdentifier(SelLI.Caption)]);
    Query.Open();
    try
      TableName := lvTables.Selected.Caption;
      if QueryBuilder.QuoteIdentifiers and (Pos('.', TableName) <> 0) then
        TableName := '"' + TableName + '"';
      Tbl := QueryBuilder.Tables.AddTable(TableName, TableName, Query);
      if (Tbl <> nil) and (X <> 0) and (Y <> 0) then
      begin
        Tbl.Left := X;
        Tbl.Top := Y;
      end;
    finally
      Query.Close();
    end;
  finally
    Screen.Cursor := OldCur;
  end;
end;

procedure TfmMain.QueryBuilderGetTableFields(const NameOfTable: String; var ADataSet: TDataSet;
  var AParams: TParams);
var
  S: string;
begin
  Screen.Cursor := crHourGlass;
  try
    Query.Active := False;
    S := NameOfTable;
    Query.SQL.Text := Format(sSelect, [FormatIdentifier(S)]);
    Query.Open();
    ADataSet := Query;
    AParams := nil;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  Application.Title := Caption;
  tsResult.TabVisible := False;
  cbDatabase.Clear();
  { Session.GetDatabaseNames(cbDatabase.Items); }
  miQuoteIdents.Checked := QueryBuilder.QuoteIdentifiers;
  miQuoteAliases.Checked := QueryBuilder.QuoteAliases;
  UpdateListAppearance();
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
  else if Pages.ActivePage = tsSQL then
  begin
    if mmSQL.Modified then
    begin
      QueryBuilder.SQL := mmSQL.Text;
      AllowChange := QueryBuilder.Parser.Success;
      mmSQL.Modified := not AllowChange;
    end;
  end;
end;

procedure TfmMain.tbExecuteClick(Sender: TObject);
var
  SQL: string;
  Param: Boolean;
begin
  if Pages.ActivePage = tsBuilder then
    SQL := QueryBuilder.SQL
  else if Pages.ActivePage = tsSQL then
    SQL := mmSQL.Text
  else
    Exit;

  Query.Close;
  Query.SQL.Text := SQL;
  if QueryBuilder.TypeQuery = tqSelect then
    Query.Open
  else
    Query.ExecSQL;

  tsResult.TabVisible := True;
  Param := True;
  PagesChanging(Self, Param);
  Pages.ActivePage := tsResult;
end;

procedure TfmMain.tbClearClick(Sender: TObject);
begin
  QueryBuilder.Clear();
  mmSQL.Lines.Text := '';
  Query.Active := False;
  tsResult.TabVisible := False;
end;

procedure TfmMain.miExitClick(Sender: TObject);
begin
  Close();
end;

procedure TfmMain.cbDatabaseChange(Sender: TObject);
begin
  Query.Active := False;
  { Query.DatabaseName := cbDatabase.Text; }
  RefreshTableList();
  tbClear.Click();
end;

procedure TfmMain.miAboutClick(Sender: TObject);
begin
  ShowAboutBox();
end;

procedure TfmMain.miQBOptionsClick(Sender: TObject);
begin
  ShowQBOptions(QueryBuilder);
end;

procedure TfmMain.miShowSystemClick(Sender: TObject);
begin
  miShowSystem.Checked := not miShowSystem.Checked;
  RefreshTableList();
end;

procedure TfmMain.RefreshTableList;
var
  Tables: TStringList;
  I: Integer;
  NewItem: TListItem;
begin
  Tables := TStringList.Create();
  try
    {
      Session.GetTableNames(cbDatabase.Text, '', True, miShowSystem.Checked,
      Tables);
    }
    Tables.Sort();
    lvTables.Items.BeginUpdate();
    try
      lvTables.Items.Clear();
      for I := 0 to Tables.Count - 1 do
      begin
        NewItem := lvTables.Items.Add();
        NewItem.Caption := Tables[I];
        NewItem.ImageIndex := 0;
      end;
    finally
      lvTables.Items.EndUpdate();
    end;
  finally
    Tables.Free();
  end;
end;

function TfmMain.FormatIdentifier(const Ident: string): string;
begin
  if QueryBuilder.QuoteIdentifiers and (Ident <> '') and not QueryBuilder.Parser.Scanner.IsIdentQuote(Ident[1])
  then
    Result := AnsiQuotedStr(Ident, QueryBuilder.Parser.Scanner.IdentQuote)
  else
    Result := Ident;
end;

procedure TfmMain.miQuoteIdentsClick(Sender: TObject);
begin
  miQuoteIdents.Checked := not miQuoteIdents.Checked;
  QueryBuilder.QuoteIdentifiers := miQuoteIdents.Checked;
end;

procedure TfmMain.QueryBuilderParserError(Sender: TObject; const ErrorMsg, Token: String;
  LineNo, LinePos: Integer);
begin
  mmSQL.SelStart := TQBSelectParser(Sender).Scanner.Position - Length(Token) - 1;
  mmSQL.SelLength := Length(Token);
  MessageDlg(ErrorMsg, mtError, [mbOk], 0);
end;

procedure TfmMain.tbTablesClick(Sender: TObject);
begin
  UpdateListAppearance();
end;

procedure TfmMain.UpdateListAppearance;
begin
  paTables.Visible := tbTables.Down;
  Splitter.Visible := paTables.Visible;
  if tbTables.Down then
    tbTables.Hint := sHideTableList
  else
    tbTables.Hint := sShowTableList;
end;

procedure TfmMain.miQuoteAliasesClick(Sender: TObject);
begin
  miQuoteAliases.Checked := not miQuoteAliases.Checked;
  QueryBuilder.QuoteAliases := miQuoteAliases.Checked;
end;

procedure TfmMain.miLoadDiagramClick(Sender: TObject);
begin
  dlgOpen.DefaultExt := 'INI';
  dlgOpen.Filter := 'INI Files (*.ini)|*.ini|All Files (*.*)|*.*';
  dlgOpen.Title := 'Load Diagram';
  if (Pages.ActivePage = tsBuilder) and dlgOpen.Execute then
  begin
    QueryBuilder.LoadFromIni(dlgOpen.FileName, True);
    mmSQL.Lines.Text := QueryBuilder.SQL;
  end;
end;

procedure TfmMain.miSaveDiagramAsClick(Sender: TObject);
begin
  dlgSave.DefaultExt := 'INI';
  dlgSave.Filter := 'INI Files (*.ini)|*.ini|All Files (*.*)|*.*';
  dlgSave.Title := 'Save Diagram';
  if (Pages.ActivePage = tsBuilder) and dlgSave.Execute() then
    QueryBuilder.SaveToIni(dlgSave.FileName, True);
end;

procedure TfmMain.miLoadSQLClick(Sender: TObject);
begin
  dlgOpen.DefaultExt := 'SQL';
  dlgOpen.Filter := 'SQL Files (*.sql)|*.sql|Text Files (*.txt)|*.txt|All Files (*.*)|*.*';
  dlgOpen.Title := 'Load SQL File';
  if dlgOpen.Execute() then
  begin
    mmSQL.Lines.LoadFromFile(dlgOpen.FileName);
    mmSQL.Modified := Pages.ActivePage = tsSQL;
    QueryBuilder.SQL := mmSQL.Lines.Text;
    mmSQL.Lines.Text := QueryBuilder.SQL;
  end;
end;

procedure TfmMain.miSaveSQLAsClick(Sender: TObject);
begin
  dlgSave.DefaultExt := 'SQL';
  dlgSave.Filter := 'SQL Files (*.sql)|*.sql|Text Files (*.txt)|*.txt|All Files (*.*)|*.*';
  dlgSave.Title := 'Save SQL File';
  if dlgSave.Execute() then
  begin
    if Pages.ActivePage = tsBuilder then
      mmSQL.Lines.Text := QueryBuilder.SQL;
    mmSQL.Lines.SaveToFile(dlgSave.FileName);
  end;
end;

procedure TfmMain.miSaveAsImageClick(Sender: TObject);
var
  Graphic: TGraphic;
begin
  if dlgSaveImage.Execute then
  begin
    if AnsiCompareText(ExtractFileExt(dlgSaveImage.FileName), '.bmp') = 0 then
      Graphic := TBitmap.Create
    else
      Graphic := TMetafile.Create;
    try
      QueryBuilder.SaveToGraphic(Graphic, False);
      Graphic.SaveToFile(dlgSaveImage.FileName);
    finally
      Graphic.Free;
    end;
  end;
end;

end.
