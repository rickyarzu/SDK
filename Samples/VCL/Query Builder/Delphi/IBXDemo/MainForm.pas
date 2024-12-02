unit MainForm;

interface

uses
  {$IF CompilerVersion >= 23}System.UITypes,{$IFEND}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, QBWindow, Db,
  ImgList, ToolWin, Menus, QBFloatTable, IBDatabase, IBStoredProc,
  IBCustomDataSet, IBQuery, QBIBWindow, QBParser;

type

  TfmMain = class(TForm)
    StatusBar: TStatusBar;
    paTables: TPanel;
    paPages: TPanel;
    Pages: TPageControl;
    tsBuilder: TTabSheet;
    tsSQL: TTabSheet;
    tsResult: TTabSheet;
    QueryBuilder: TInterBaseQueryBuilder;
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
    Query: TIBQuery;
    Transaction: TIBTransaction;
    miView: TMenuItem;
    miShowSystemTables: TMenuItem;
    miSeparator4: TMenuItem;
    miQBOptions: TMenuItem;
    Proc: TIBStoredProc;
    miLoadDiagram: TMenuItem;
    miSeparator5: TMenuItem;
    miSaveDiagramAs: TMenuItem;
    tvTables: TTreeView;
    SQuery: TIBQuery;
    Database: TIBDatabase;
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
    procedure miShowSystemTablesClick(Sender: TObject);
    procedure miAboutClick(Sender: TObject);
    procedure miQBOptionsClick(Sender: TObject);
    procedure QueryBuilderParserError(Sender: TObject; const ErrorMsg,
      Token: String; LineNo, LinePos: Integer);
    procedure QueryBuilderEnterProcParameter(Sender: TObject;
      SProcedure: TQBTable; ListItem: TQBListItem);
    procedure miLoadClick(Sender: TObject);
    procedure miLoadDiagramClick(Sender: TObject);
    procedure miSaveDiagramAsClick(Sender: TObject);
    procedure miSaveAsClick(Sender: TObject);
    procedure tvTablesDblClick(Sender: TObject);
    procedure QueryBuilderCheckProcedureName(Sender: TObject;
      const AName: String; var IsProcedure: Boolean);
  private
    FProcedureList: TStrings;
    procedure UpdateCaption;
    procedure RefreshObjectList(ShowSystem: boolean);
    function FormatByDialect(const Ident: string; Dialect: byte): string;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  fmMain: TfmMain;

implementation

uses ConnectForm, AboutForm, QBOptionsForm, ParamForm;

const
  sDialect = '(SQL Dialect %d)';
  sSelect = 'SELECT * FROM %s WHERE 0 = 1';
  cTableImage = 0;
  cViewImage = 1;
  cProcImage = 2;

resourcestring
  sCaption = 'EMS InterBase/FireBird Query Builder demo application [%s] %s';

{$R *.DFM}

procedure TfmMain.lvTablesDblClick(Sender: TObject);
begin
  QueryBuilderDragDrop(Self, Sender, 0, 0);
  mmSQL.Lines.Text := QueryBuilder.SQL;
end;

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
  SelLI: TTreeNode;
  S: string;
  I: integer;
  Params: TParams;
begin
  if not (Source is TTreeView) then
    Exit;

  SelLI := TTreeView(Source).Selected;
  if (SelLI = nil) or (SelLI.Level <> 1) then
    Exit;

  OldCur := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    if SelLI.ImageIndex = cProcImage  then
    begin
      Proc.StoredProcName := SelLI.Text;
      Transaction.Active := True;
      try
        Params := TParams.Create;
        try
          Proc.Prepare;
          try
            S := '';
            if Proc.Params.Count > 0 then
            begin
              for I := 0 to Proc.Params.Count - 1 do
              begin
                if Proc.Params[I].ParamType in [ptInput, ptInputOutput] then
                begin
                  Params.Add.Assign(Proc.Params[I]);
                  if I < Proc.Params.Count - 1 then
                    S := S + ':' + Proc.Params[I].Name + ', '
                  else
                    S := S + ':' + Proc.Params[I].Name;
                end;
              end;
              if S <> '' then
                S := Format('(%s)', [S]);
            end;
            Query.SQL.Text := Format(sSelect,
              [FormatByDialect(SelLI.Text, Database.SQLDialect) + S]);
            Query.Open;
            try
              Tbl := QueryBuilder.Tables.AddProc(SelLI.Text, '',
                Query, Params);
            finally
              Query.Close;
            end;
          finally
            if Proc.Prepared then
              Proc.UnPrepare;
          end;
        finally
          Params.Free;
        end;
      finally
        Transaction.Active := False;
      end;
    end
    else begin
      Query.Active := False;
      tsResult.TabVisible := False;
      Query.SQL.Text := Format(sSelect,
        [FormatByDialect(SelLI.Text, Database.SQLDialect)]);
      Query.Open;
      try
        Tbl := QueryBuilder.Tables.AddTable(SelLI.Text, '', Query);
      finally
        Query.Close;
      end;
    end;
    if (Tbl <> nil) and (X <> 0) and (Y <> 0) then
    begin
      Tbl.Left := X;
      Tbl.Top := Y;
    end;
  finally
    Screen.Cursor := OldCur;
  end;
end;

procedure TfmMain.QueryBuilderGetTableFields(const NameOfTable: String;
  var ADataSet: TDataSet; var AParams: TParams);
var
  paramText, sql: string;
  I: integer;
  TrActive: boolean;
  param: TParam;
begin
  Screen.Cursor := crHourGlass;
  try
    AParams := nil;
    Query.Active := False;
    TrActive := Transaction.Active;
    if not TrActive then
      Transaction.Active := True;
    try
      if Proc.StoredProcedureNames.IndexOf(NameOfTable) > -1 then
      begin
        Proc.StoredProcName := NameOfTable;
        Proc.Prepare;
        AParams := Proc.Params;
        Proc.UnPrepare;
      end;
    finally
      if not TrActive then
        Transaction.Active := False;
    end;
    paramText := '';
    if Assigned(AParams) and (AParams.Count > 0) then
    begin
      paramText := paramText + '(';
      for I := 0 to AParams.Count - 1 do
      begin
        param := AParams[I];
        if param.ParamType in [ptInput, ptInputOutput] then
        begin
          paramText := paramText + ':' + param.Name;
          if I < AParams.Count - 1 then
            paramText := paramText + ', ';
        end;
      end;
      paramText := paramText + ')';
      if paramText = '()' then
        paramText := '';
    end;
    sql := Format(sSelect, [FormatByDialect(NameOfTable, Database.SQLDialect) + paramText]);
    Query.SQL.Text := sql;
    Query.Open();
    ADataSet := Query;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
//  Database.Open;
  tsResult.TabVisible := False;
  Application.Title := Caption;
  UpdateCaption();
end;

procedure TfmMain.PagesChanging(Sender: TObject; var AllowChange: Boolean);
begin
  if csLoading in Self.ComponentState then Exit;
  if Pages.ActivePage = tsBuilder then begin
    mmSQL.Text := QueryBuilder.SQL;
    mmSQL.Modified := False;
  end else if Pages.ActivePage = tsSQL then begin
    if mmSQL.Modified then begin
      QueryBuilder.SQL := mmSQL.Text;
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
  else Exit;

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
  QueryBuilder.Clear();
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
    then Caption := Format(sCaption, [Database.DatabaseName,
      Format(sDialect, [Database.SQLDialect])])
    else Caption := Format(sCaption, [Database.DatabaseName, '']);
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
  RefreshObjectList(miShowSystemTables.Checked);
  if Database.SQLDialect = 1 then
    QueryBuilder.SQLDialect := qibDialect1
  else
    QueryBuilder.SQLDialect := qibDialect3;
  UpdateCaption;
  tbClear.Click;
end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Database.Connected := False;
end;

procedure TfmMain.DatabaseAfterDisconnect(Sender: TObject);
begin
  tvTables.Items.Clear;
  Database.DatabaseName := '';
  tbClear.Click;
  UpdateCaption;
end;

procedure TfmMain.miShowSystemTablesClick(Sender: TObject);
begin
  miShowSystemTables.Checked := not miShowSystemTables.Checked;
  RefreshObjectList(miShowSystemTables.Checked);
end;

procedure TfmMain.RefreshObjectList(ShowSystem: boolean);
var
  TablesNode, ViewsNode, ProcsNode : TTreeNode;

  function AddNode(Parent: TTreeNode; const ObjName: string;
    const ItemImage: integer): TTreeNode;
  begin
    Result := tvTables.Items.AddChild(Parent, ObjName);
    Result.ImageIndex := ItemImage;
    Result.SelectedIndex := ItemImage;
  end;

begin
  if not Database.Connected then
    Exit;

  tvTables.Items.BeginUpdate;
  try
    tvTables.Items.Clear;
    TablesNode := AddNode(nil, 'Tables', cTableImage);
    ViewsNode := AddNode(nil, 'Views', cViewImage);
    ProcsNode := AddNode(nil, 'Procedures', cProcImage);

    SQuery.SQL.Text :=
      'SELECT R.RDB$RELATION_NAME, R.RDB$VIEW_SOURCE FROM RDB$RELATIONS R';
    if not ShowSystem then
      SQuery.SQL.Add(#13#10'WHERE R.RDB$SYSTEM_FLAG = 0 OR R.RDB$SYSTEM_FLAG IS NULL');
    SQuery.SQL.Add(#13#10'ORDER BY R.RDB$RELATION_NAME');

    SQuery.Open;
    while not SQuery.Eof do
    begin
      if SQuery.Fields[1].IsNull then
        AddNode(TablesNode, Trim(SQuery.Fields[0].AsString), cTableImage)
      else
        AddNode(ViewsNode, Trim(SQuery.Fields[0].AsString), cViewImage);
      SQuery.Next;
    end;
    SQuery.Close;

    FProcedureList.Clear;
    SQuery.SQL.Text :=
      'SELECT PR.RDB$PROCEDURE_NAME FROM RDB$PROCEDURES PR';
    if not ShowSystem then
      SQuery.SQL.Add(#13#10'WHERE PR.RDB$SYSTEM_FLAG = 0 OR PR.RDB$SYSTEM_FLAG IS NULL');
    SQuery.SQL.Add(#13#10'ORDER BY PR.RDB$PROCEDURE_NAME');
    SQuery.Open;
    while not SQuery.Eof do
    begin
      AddNode(ProcsNode, Trim(SQuery.Fields[0].AsString), cProcImage);
      FProcedureList.Add(Trim(SQuery.Fields[0].AsString));
      SQuery.Next;
    end;

    TablesNode.Text := Format('Tables(%d)', [TablesNode.Count]);
    ViewsNode.Text := Format('Views(%d)', [ViewsNode.Count]);
    ProcsNode.Text := Format('Procedures(%d)', [ProcsNode.Count]);
  finally
    tvTables.Items.EndUpdate;
    SQuery.Close;
  end;
end;

function TfmMain.FormatByDialect(const Ident: string;
  Dialect: byte): string;
begin
  Result := Ident;
  if Dialect > 1
    then Result := AnsiQuotedStr(Result, '"');
end;

procedure TfmMain.miAboutClick(Sender: TObject);
begin
  ShowAboutBox();
end;

procedure TfmMain.miQBOptionsClick(Sender: TObject);
begin
  ShowQBOptions(QueryBuilder);
end;

procedure TfmMain.QueryBuilderParserError(Sender: TObject; const ErrorMsg,
  Token: String; LineNo, LinePos: Integer);
begin
  mmSQL.SelStart := TQBSelectParser(Sender).Scanner.Position - Length(Token) - 1;
  mmSQL.SelLength := Length(Token);
  MessageDlg(ErrorMsg, mtError, [mbOk], 0);
end;

procedure TfmMain.QueryBuilderEnterProcParameter(Sender: TObject;
  SProcedure: TQBTable; ListItem: TQBListItem);
begin
  InputParam(ListItem);
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

procedure TfmMain.miSaveDiagramAsClick(Sender: TObject);
begin
  dlgSave.DefaultExt := 'INI';
  dlgSave.Filter := 'INI Files (*.ini)|*.ini|All Files (*.*)|*.*';
  dlgSave.Title := 'Load Diagram';
  if (Pages.ActivePage = tsBuilder) and dlgSave.Execute()
    then QueryBuilder.SaveToIni(dlgSave.FileName, True);
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

procedure TfmMain.tvTablesDblClick(Sender: TObject);
begin
  QueryBuilderDragDrop(Self, Sender, 0, 0);
  mmSQL.Lines.Text := QueryBuilder.SQL;
end;

procedure TfmMain.QueryBuilderCheckProcedureName(Sender: TObject;
  const AName: String; var IsProcedure: Boolean);
var
  I: integer;
begin
  IsProcedure := false;
  for I := 0 to FProcedureList.Count - 1 do
    if (QueryBuilder.SQLDialect = qibDialect1) and
      (AnsiCompareText(AName, FProcedureList[I]) = 0) or
      (QueryBuilder.SQLDialect = qibDialect3) and
      (AnsiCompareStr(AName, FProcedureList[I]) = 0) then
    begin
      IsProcedure := true;
      Break;
    end;
end;

constructor TfmMain.Create(AOwner: TComponent);
begin
  inherited;
  FProcedureList := TStringList.Create;
end;

destructor TfmMain.Destroy;
begin
  FProcedureList.Free;
  inherited;


end;

end.