unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, QBWindow,
  ImgList, ToolWin, Menus, QBFloatTable, QBParser, Db, QBMyWindow, 
  ZConnection, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfmMain = class(TForm)
    StatusBar: TStatusBar;
    paTables: TPanel;
    paPages: TPanel;
    Pages: TPageControl;
    tsBuilder: TTabSheet;
    tsSQL: TTabSheet;
    tsResult: TTabSheet;
    lvTables: TListView;
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
    miSeparator4: TMenuItem;
    miQuoteIdents: TMenuItem;
    miSeparator5: TMenuItem;
    miLoadDiagram: TMenuItem;
    miSaveDiagram: TMenuItem;
    QueryBuilder: TMySQLQueryBuilder;
    Query: TZQuery;
    Database: TZConnection;
    procedure lvTablesDblClick(Sender: TObject);
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
    procedure DatabaseAfterConnect(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DatabaseAfterDisconnect(Sender: TObject);
    procedure QueryBuilderParserError(Sender: TObject; const ErrorMsg,
      Token: String; LineNo, LinePos: Integer);
    procedure miAboutClick(Sender: TObject);
    procedure miQBOptionsClick(Sender: TObject);
    procedure tbTablesClick(Sender: TObject);
    procedure miQuoteIdentsClick(Sender: TObject);
    procedure miSaveAsClick(Sender: TObject);
    procedure miLoadClick(Sender: TObject);
    procedure miLoadDiagramClick(Sender: TObject);
    procedure miSaveDiagramClick(Sender: TObject);
  private
    procedure UpdateCaption;
    procedure UpdateListAppearance;
    procedure RefreshTableList;
    function FormatByQuotes(const Ident: string; Quote: boolean): string;
  end;

var
  fmMain: TfmMain;

implementation

uses ConnectForm, AboutForm, QBOptionsForm;

const
  sSelect = 'SELECT * FROM %s WHERE 0 = 1';

resourcestring
  sCaption = 'EMS MySQL Query Builder demo application [%s]';
  sHideTableList = 'Hide table list';
  sShowTableList = 'Show table list';

{$R *.DFM}

procedure TfmMain.lvTablesDblClick(Sender: TObject);
begin
  QueryBuilderDragDrop(Self, Sender, 0, 0);
  mmSQL.Lines.Text := QueryBuilder.SQL;
end;

procedure TfmMain.QueryBuilderDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = lvTables;
end;

procedure TfmMain.QueryBuilderDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  Tbl: TQBTable;
  OldCur: TCursor;
  SelLI: TListItem;
begin
  if Source <> lvTables then Exit;
  SelLI := TListView(Source).Selected;
  if SelLI = nil then Exit;
  OldCur := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    Query.Active := False;
    tsResult.TabVisible := False;
    Query.SQL.Text := Format(sSelect,
      [FormatByQuotes(SelLI.Caption, miQuoteIdents.Checked)]);
    Query.Open();
    try
      Tbl := QueryBuilder.Tables.AddTable(lvTables.Selected.Caption, '', Query);
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

procedure TfmMain.QueryBuilderGetTableFields(const NameOfTable: String;
  var ADataSet: TDataSet; var AParams: TParams);
var
  S: string;
begin
  Screen.Cursor := crHourGlass;
  try
    Query.Active := False;
    S := NameOfTable;
    Query.SQL.Text := Format(sSelect,
      [FormatByQuotes(S, miQuoteIdents.Checked)]);
    Query.Open();
    ADataSet := Query;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  tsResult.TabVisible := False;
  Application.Title := Caption;
  UpdateCaption();
  UpdateListAppearance();
  miQuoteIdents.Checked := QueryBuilder.QuoteIdentifiers;
end;

procedure TfmMain.PagesChanging(Sender: TObject; var AllowChange: Boolean);
begin
  if csLoading in Self.ComponentState then Exit;
  if Pages.ActivePage = tsBuilder then 
  begin
    mmSQL.Text := QueryBuilder.SQL;
    mmSQL.Modified := False;
  end 
  else if Pages.ActivePage = tsSQL then 
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
  else if Pages.ActivePage = tsSQL then
    SQL := mmSQL.Text
  else 
    Exit;

  PagesChanging(Self, Param);
  Query.Close();
  Query.SQL.Text := SQL;
  Query.Open();
  tsResult.TabVisible := True;
  Param := True;
  Pages.ActivePage := tsResult;
end;

procedure TfmMain.tbClearClick(Sender: TObject);
begin
  QueryBuilder.SQL := '';
  mmSQL.Lines.Text := '';
  Query.Active := False;
  tsResult.TabVisible := False;
end;

procedure TfmMain.miExitClick(Sender: TObject);
begin
  Close();
end;

procedure TfmMain.UpdateCaption;
begin
  if Database.Connected
    then Caption := Format(sCaption, [Database.Database])
    else Caption := Format(sCaption, ['']);
end;

procedure TfmMain.tbConnectClick(Sender: TObject);
begin
  if ShowConnectForm(Database)
    then UpdateCaption();
end;

procedure TfmMain.tbDisconnectClick(Sender: TObject);
begin
  Database.Connected := False;
end;

procedure TfmMain.DatabaseAfterConnect(Sender: TObject);
begin
  Query.Active := False;
  RefreshTableList();
  UpdateCaption();
  tbClear.Click();
end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Database.Connected := False;
end;

procedure TfmMain.DatabaseAfterDisconnect(Sender: TObject);
begin
  lvTables.Items.Clear();
  Database.Database := '';
  tbClear.Click();
  UpdateCaption();
end;

procedure TfmMain.RefreshTableList;
var
  NewItem: TListItem;
begin
  if not Database.Connected then Exit;
  try
    Query.Active := false;
    Query.SQL.Text := 'show tables';
    Query.Active := true;
    Query.FindFirst;
    lvTables.Items.BeginUpdate();
    try
      lvTables.Items.Clear();
      while not Query.Eof do
      begin
        NewItem := lvTables.Items.Add();
        NewItem.Caption := Query.Fields[0].AsString;
        NewItem.ImageIndex := 0;
        Query.Next;
      end;
    finally
      lvTables.Items.EndUpdate();
    end;
  finally
    Query.Active := false;
  end;
end;

function TfmMain.FormatByQuotes(const Ident: string;
  Quote: boolean): string;
begin
  Result := Ident;
  if Quote
    then Result := Format('`%s`', [Ident]);
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
  ShowAboutBox();
end;

procedure TfmMain.miQBOptionsClick(Sender: TObject);
begin
  ShowQBOptions(QueryBuilder);
end;

procedure TfmMain.tbTablesClick(Sender: TObject);
begin
  UpdateListAppearance();
end;

procedure TfmMain.UpdateListAppearance;
begin
  paTables.Visible := tbTables.Down;
  Splitter.Visible := paTables.Visible;
  if tbTables.Down
    then tbTables.Hint := sHideTableList
    else tbTables.Hint := sShowTableList;
end;

procedure TfmMain.miQuoteIdentsClick(Sender: TObject);
begin
  miQuoteIdents.Checked := not miQuoteIdents.Checked;
  QueryBuilder.QuoteIdentifiers := miQuoteIdents.Checked;
end;

procedure TfmMain.miSaveAsClick(Sender: TObject);
begin
  dlgSave.DefaultExt := 'SQL';
  dlgSave.Filter := 'SQL Files (*.sql)|*.sql|Text Files (*.txt)|*.txt|All Files (*.*)|*.*';
  dlgSave.Title := 'Save SQL File';
  if dlgSave.Execute() then begin
    if Pages.ActivePage = tsBuilder
      then mmSQL.Lines.Text := QueryBuilder.SQL;
    mmSQL.Lines.SaveToFile(dlgSave.FileName);
  end;
end;

procedure TfmMain.miLoadClick(Sender: TObject);
begin
  dlgOpen.DefaultExt := 'SQL';
  dlgOpen.Filter := 'SQL Files (*.sql)|*.sql|Text Files (*.txt)|*.txt|All Files (*.*)|*.*';
  dlgOpen.Title := 'Load SQL File';
  if dlgOpen.Execute() then begin
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
  if (Pages.ActivePage = tsBuilder) and dlgOpen.Execute() then begin
    QueryBuilder.LoadFromIni(dlgOpen.FileName, True);
    mmSQL.Lines.Text := QueryBuilder.SQL;
  end;
end;

procedure TfmMain.miSaveDiagramClick(Sender: TObject);
begin
  dlgSave.DefaultExt := 'INI';
  dlgSave.Filter := 'INI Files (*.ini)|*.ini|All Files (*.*)|*.*';
  dlgSave.Title := 'Save Diagram';
  if (Pages.ActivePage = tsBuilder) and dlgSave.Execute() then
    QueryBuilder.SaveToIni(dlgSave.FileName, True);
  
end;

end.
