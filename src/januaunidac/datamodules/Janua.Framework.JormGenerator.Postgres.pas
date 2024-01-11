unit Janua.Framework.JormGenerator.Postgres;

interface

uses
  System.SysUtils, System.Classes,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS, VirtualTable, DASQLMonitor,
  UniSQLMonitor,
  DAScript, UniScript,
  // Januaproject
  udmPgStorage, Janua.Logistic.AWB.Model.Impl, Janua.Logistic.AWB.ViewModel.Intf,
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Bindings.Intf, Janua.Core.DB.Intf, Janua.Uni.Intf,
  Janua.Unidac.Connection;

type
  TdmPgFrameworkJormGenerator = class(TdmPgStorage, IJanuaDataModule, IJanuaBindable)
    vtGuidGenerator: TVirtualTable;
    vtGuidGeneratorSchemaTable: TStringField;
    vtGuidGeneratorAbbreviation: TStringField;
    vtGuidGeneratorKey: TStringField;
    qryColumns: TUniQuery;
    qryColumnscolumn_name: TWideStringField;
    qryColumnstable_catalog: TWideStringField;
    qryColumnstable_schema: TWideStringField;
    qryColumnstable_name: TWideStringField;
    qryColumnsordinal_position: TIntegerField;
    qryColumnscolumn_default: TWideStringField;
    qryColumnsis_nullable: TWideStringField;
    qryColumnsdata_type: TWideStringField;
    qryColumnscharacter_maximum_length: TIntegerField;
    qryColumnscharacter_octet_length: TIntegerField;
    qryColumnsnumeric_precision: TIntegerField;
    qryColumnsnumeric_precision_radix: TIntegerField;
    qryColumnsnumeric_scale: TIntegerField;
    qryColumnsdatetime_precision: TIntegerField;
    qryColumnsinterval_type: TWideStringField;
    qryColumnsinterval_precision: TIntegerField;
    qryColumnscharacter_set_catalog: TWideStringField;
    qryColumnscharacter_set_schema: TWideStringField;
    qryColumnscharacter_set_name: TWideStringField;
    qryColumnscollation_catalog: TWideStringField;
    qryColumnscollation_schema: TWideStringField;
    qryColumnscollation_name: TWideStringField;
    qryColumnsdomain_catalog: TWideStringField;
    qryColumnsdomain_schema: TWideStringField;
    qryColumnsdomain_name: TWideStringField;
    qryColumnsudt_catalog: TWideStringField;
    qryColumnsudt_schema: TWideStringField;
    qryColumnsudt_name: TWideStringField;
    qryColumnsscope_catalog: TWideStringField;
    qryColumnsscope_schema: TWideStringField;
    qryColumnsscope_name: TWideStringField;
    qryColumnsmaximum_cardinality: TIntegerField;
    qryColumnsdtd_identifier: TWideStringField;
    qryColumnsis_self_referencing: TWideStringField;
    qryColumnsis_identity: TWideStringField;
    qryColumnsidentity_generation: TWideStringField;
    qryColumnsidentity_start: TWideStringField;
    qryColumnsidentity_increment: TWideStringField;
    qryColumnsidentity_maximum: TWideStringField;
    qryColumnsidentity_minimum: TWideStringField;
    qryColumnsidentity_cycle: TWideStringField;
    qryColumnsis_generated: TWideStringField;
    qryColumnsgeneration_expression: TWideStringField;
    qryColumnsis_updatable: TWideStringField;
    dsAnalysis: TDataSource;
    qrySchemas: TUniQuery;
    qrySchemasnspname: TWideStringField;
    vtAnalysis: TVirtualTable;
    vtAnalysistitle: TWideStringField;
    vtAnalysisminimum: TWideStringField;
    vtAnalysismaximum: TWideStringField;
    vtAnalysisrows: TLargeintField;
    vtAnalysisLargeintField: TLargeintField;
    qryAnalisi: TUniQuery;
    qryAnalisititle: TWideStringField;
    qryAnalisiminimum: TWideStringField;
    qryAnalisimaximum: TWideStringField;
    qryAnalisirows: TLargeintField;
    qryAnalisidiff: TLargeintField;
    dsColumns: TDataSource;
    dsSchemas: TDataSource;
    PgScript1: TUniScript;
    dsTriggers: TDataSource;
    qryIndexFields: TUniQuery;
    qryIndexFieldsattname: TWideStringField;
    qryIndexFieldsdata_type: TWideStringField;
    qrySchemaTables: TUniQuery;
    qrySchemaTablestable_name: TWideStringField;
    qryTriggers: TUniQuery;
    qryTriggerstrigger_name: TWideStringField;
    dsIndexFields: TDataSource;
    PgSQLMonitor1: TUniSQLMonitor;
    tbUsers: TUniTable;
    dsGuidGenerator: TDataSource;
    qrySchemaViews: TUniQuery;
    WideStringField1: TWideStringField;
    qrySchemaViewstable_catalog: TWideStringField;
    qrySchemaViewstable_schema: TWideStringField;
    qrySchemaViewsview_definition: TWideMemoField;
    qrySchemaViewscheck_option: TWideMemoField;
    qrySchemaViewsis_updatable: TWideStringField;
    qrySchemaViewsis_insertable_into: TWideStringField;
    qrySchemaViewsis_trigger_updatable: TWideStringField;
    qrySchemaViewsis_trigger_deletable: TWideStringField;
    qrySchemaViewsis_trigger_insertable_into: TWideStringField;
    qryCheckJguid: TUniQuery;
    qryCheckJguidtable_catalog: TWideStringField;
    qryCheckJguidtable_schema: TWideStringField;
    qryCheckJguidtable_name: TWideStringField;
    qryCheckJguidcolumn_name: TWideStringField;
    qryCheckJguidordinal_position: TIntegerField;
    qryCheckJguidcolumn_default: TWideStringField;
    qryCheckJguidis_nullable: TWideStringField;
    qryCheckJguiddata_type: TWideStringField;
    qryCheckJguidcharacter_maximum_length: TIntegerField;
    qryCheckJguidcharacter_octet_length: TIntegerField;
    qryCheckJguidnumeric_precision: TIntegerField;
    qryCheckJguidnumeric_precision_radix: TIntegerField;
    qryCheckJguidnumeric_scale: TIntegerField;
    qryCheckJguiddatetime_precision: TIntegerField;
    qryCheckJguidinterval_type: TWideStringField;
    qryCheckJguidinterval_precision: TIntegerField;
    qryCheckJguidcharacter_set_catalog: TWideStringField;
    qryCheckJguidcharacter_set_schema: TWideStringField;
    qryCheckJguidcharacter_set_name: TWideStringField;
    qryCheckJguidcollation_catalog: TWideStringField;
    qryCheckJguidcollation_schema: TWideStringField;
    qryCheckJguidcollation_name: TWideStringField;
    qryCheckJguiddomain_catalog: TWideStringField;
    qryCheckJguiddomain_schema: TWideStringField;
    qryCheckJguiddomain_name: TWideStringField;
    qryCheckJguidudt_catalog: TWideStringField;
    qryCheckJguidudt_schema: TWideStringField;
    qryCheckJguidudt_name: TWideStringField;
    qryCheckJguidscope_catalog: TWideStringField;
    qryCheckJguidscope_schema: TWideStringField;
    qryCheckJguidscope_name: TWideStringField;
    qryCheckJguidmaximum_cardinality: TIntegerField;
    qryCheckJguiddtd_identifier: TWideStringField;
    qryCheckJguidis_self_referencing: TWideStringField;
    qryCheckJguidis_identity: TWideStringField;
    qryCheckJguididentity_generation: TWideStringField;
    qryCheckJguididentity_start: TWideStringField;
    qryCheckJguididentity_increment: TWideStringField;
    qryCheckJguididentity_maximum: TWideStringField;
    qryCheckJguididentity_minimum: TWideStringField;
    qryCheckJguididentity_cycle: TWideStringField;
    qryCheckJguidis_generated: TWideStringField;
    qryCheckJguidgeneration_expression: TWideStringField;
    qryCheckJguidis_updatable: TWideStringField;
    tbDDLColumnsTable: TUniTable;
    procedure dsGuidGeneratorDataChange(Sender: TObject; Field: TField);
  private
    FTableName: string;
    FAbbreviation: string;
    FKeys: string;
    FSQLText: string;
    FTableSchema: string;
    FPrefix: string;
    FSourceImpl: string;
    FSourceIntf: string;
    FSrvImpl: string;
    FSrvIntf: string;
    FAfterAnalytics: TNotifyEvent;
    procedure SetAbbreviation(const Value: string);
    procedure SetKeys(const Value: string);
    procedure SetTableName(const Value: string);
    procedure SetSQLText(const Value: string);
    procedure SetTableSchema(const Value: string);
    procedure SetPrefix(const Value: string);
    procedure SetSourceImpl(const Value: string);
    procedure SetSourceIntf(const Value: string);
    procedure SetSrvImpl(const Value: string);
    procedure SetSrvIntf(const Value: string);
    procedure SetAfterAnalytics(const Value: TNotifyEvent);
  strict protected
    function InternalActivate: Boolean; override;
  public
    procedure RefreshDetails; override;
    procedure SaveVTDFile;
    procedure GenerateTriggers;
    procedure ExecuteSQL;
    procedure Trigger;
    procedure GenerateJorm;
    procedure Clear;
    procedure SchemaAnalytics;
    procedure Analytics;
  public
    procedure GenerateScriptsClick(Sender: TObject);
    procedure SchemaClick(Sender: TObject);
    procedure SaveGUIDGeneratorVTDClick(Sender: TObject);
    procedure TriggerClick(Sender: TObject);
    procedure TriggersClick(Sender: TObject);
    procedure GenerateJormClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure SchemaAnalyticsClick(Sender: TObject);
    procedure AnalyticsClick(Sender: TObject);
    procedure ExecuteSqlClick(Sender: TObject);
    function GetSChemaTable: string;
  public
    { Public declarations }
    property TableName: string read FTableName write SetTableName;
    property Abbreviation: string read FAbbreviation write SetAbbreviation;
    property Keys: string read FKeys write SetKeys;
    property SQLText: string read FSQLText write SetSQLText;
    property TableSchema: string read FTableSchema write SetTableSchema;
    property Prefix: string read FPrefix write SetPrefix;
    property SourceIntf: string read FSourceIntf write SetSourceIntf;
    property SourceImpl: string read FSourceImpl write SetSourceImpl;
    property SrvIntf: string read FSrvIntf write SetSrvIntf;
    property SrvImpl: string read FSrvImpl write SetSrvImpl;
    property AfterAnalytics: TNotifyEvent read FAfterAnalytics write SetAfterAnalytics;
  end;

var
  dmPgFrameworkJormGenerator: TdmPgFrameworkJormGenerator;

implementation

uses System.StrUtils, System.Types, System.IOUtils,
  // Januaproject
  Janua.Core.Functions, Janua.Orm.UniDac, Janua.Core.Types, Janua.Orm.Types, Janua.Orm.Generator,
  Janua.Core.AsyncTask, Janua.Application.Framework;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

procedure TdmPgFrameworkJormGenerator.Analytics;
var
  lTitle, lTable: string;
begin
  lTitle := '';
  lTable := '';

  lTable := GetSChemaTable;

  if not vtAnalysis.Active then
    vtAnalysis.Open;

  if vtAnalysis.RecordCount > 0 then
  begin
    vtAnalysis.First;
    while not vtAnalysis.Eof do
      vtAnalysis.Delete;
  end;

  qryColumns.First;
  while not qryColumns.Eof do
  begin
    if (qryColumnsdata_type.AsString <> 'boolean') and (qryColumnsdata_type.AsString <> 'bytea') and
      (qryColumnsdata_type.AsString <> 'uuid') and (qryColumnsdata_type.AsString <> 'jsonb') then
    begin
      lTitle := qryColumnscolumn_name.AsString;
      qryAnalisi.SQL.Clear;
      qryAnalisi.SQL.Add('select');
      qryAnalisi.SQL.Add(QuotedStr(lTitle) + '::character varying as title,');
      qryAnalisi.SQL.Add('min(' + lTitle + ')::character varying as minimum, ');
      qryAnalisi.SQL.Add('max(' + lTitle + ')::character varying as maximum, ');
      qryAnalisi.SQL.Add('count(1) as rows, b.diff');
      // From Table,
      qryAnalisi.SQL.Add('from ' + lTable + ',');
      // Nested Query Analysis
      qryAnalisi.SQL.Add('(');
      qryAnalisi.SQL.Add('select count(1) diff from');
      qryAnalisi.SQL.Add('(select distinct ' + lTitle + ' from ' + lTable + ') as foo');
      qryAnalisi.SQL.Add(') as b');
      // Condition Where
      qryAnalisi.SQL.Add('where ' + lTitle + ' is not null');
      if (qryColumnsdata_type.AsString = 'integer') or (qryColumnsdata_type.AsString = 'bigint') or
        (qryColumnsdata_type.AsString = 'smallint') or (qryColumnsdata_type.AsString = 'numeric') then
        qryAnalisi.SQL.Add('and ' + lTitle + ' > 0');

      if (qryColumnsdata_type.AsString = 'string') or (qryColumnsdata_type.AsString = 'character varying') or
        (qryColumnsdata_type.AsString = 'varchar') or (qryColumnsdata_type.AsString = 'varchar2') then
        qryAnalisi.SQL.Add('and trim(' + lTitle + ') > ' + QuotedStr(''));

      // Group by
      qryAnalisi.SQL.Add('group by b.diff ');

      qryAnalisi.SQL.Add('having count(1) > 0');

      qryAnalisi.Open;
      vtAnalysis.Append;
      CopyRecord(qryAnalisi, vtAnalysis);

    end;
    // vtAnalysis.Post;
    qryColumns.Next;
  end;
  lTitle := vtGuidGenerator.fieldByName('SchemaTable').AsWideString;

  if Assigned(AfterAnalytics) then
    AfterAnalytics(Self);

end;

procedure TdmPgFrameworkJormGenerator.AnalyticsClick(Sender: TObject);
begin
  Analytics
end;

procedure TdmPgFrameworkJormGenerator.Clear;
begin

end;

procedure TdmPgFrameworkJormGenerator.ClearClick(Sender: TObject);
begin
  Clear;
end;

procedure TdmPgFrameworkJormGenerator.dsGuidGeneratorDataChange(Sender: TObject; Field: TField);
begin
  { t := LowerCase(edTableName.Text);
    a := LowerCase(edAbbreviation.Text);
    k := LowerCase(edKeys.Text); }
  if FTableName <> vtGuidGenerator.fieldByName('SchemaTable').AsString then
  begin
    if not(vtGuidGenerator.State in [dsEdit, dsInsert]) then
    begin
      qryIndexFields.Close;
      qryIndexFields.SQL.Clear;
      qryIndexFields.SQL.Add('SELECT a.attname, format_type(a.atttypid, a.atttypmod) AS data_type');
      qryIndexFields.SQL.Add('FROM   pg_index i JOIN   pg_attribute a ON a.attrelid = i.indrelid');
      qryIndexFields.SQL.Add('  AND a.attnum = ANY(i.indkey)');
      qryIndexFields.SQL.Add('WHERE  i.indrelid = ''' + vtGuidGenerator.fieldByName('SchemaTable').AsString +
        '''::regclass AND    i.indisprimary');
      qryIndexFields.Open;
    end;
  end;
  FTableName := vtGuidGenerator.fieldByName('SchemaTable').AsString;
  FAbbreviation := vtGuidGenerator.fieldByName('Abbreviation').AsString;
  FKeys := vtGuidGenerator.fieldByName('Key').AsString;
end;

procedure TdmPgFrameworkJormGenerator.ExecuteSQL;
begin
  PgScript1.SQL.Text := SQLText;
  PgScript1.Execute;
end;

procedure TdmPgFrameworkJormGenerator.ExecuteSqlClick(Sender: TObject);
begin
  ExecuteSQL
end;

procedure TdmPgFrameworkJormGenerator.GenerateJorm;
var
  aIntf, aImpl, aCustom, aDataset, aSchema, aAbbr, aPrefix, aFolder, sFile: string;
  aFileIntf, aFileImpl, s, p, st: string;
  bCustom: Boolean;
  i: Integer;
  lStrings: TStrings;
begin
  tbDDLColumnsTable.TableName := TableName;
  i := Pos('.', TableName);
  aSchema := Copy(TableName, 1, i - 1);
  aPrefix := Prefix;
  aDataset := Copy(TableName, i + 1, Length(TableName) - i + 1);
  if (aPrefix <> '') and (Copy(aDataset, 1, Length(aPrefix)) = aPrefix) then
    aDataset := Copy(aDataset, Length(aPrefix) + 1, Length(aDataset) - Length(aPrefix));
  s := aPrefix + aDataset;

  s := TJanuaApplication.DialogText.InputText('singolare', 'Record', s);

  p := s + 's';

  p := TJanuaApplication.DialogText.InputText('plurale', 'RecordSet', p);

  st := TJanuaApplication.DialogText.InputText('storage: ', 'Storage Name: ', 'T' + Capitalize(aSchema) + 'Storage');

  bCustom := TJanuaApplication.Dialogs.JMessageDlg('Creo la classe Custom?');
  aAbbr := LowerCase(Abbreviation);

  tbDDLColumnsTable.Open;
  Janua.Orm.Generator.GenerateRecordSet(aIntf, aImpl, aCustom, tbDDLColumnsTable, aDataset, aSchema, aAbbr, aFileIntf,
    aFileImpl, s, p, bCustom);

  SourceIntf := aIntf;
  SourceImpl := aImpl;

  Janua.Orm.Generator.GenerateServer(aIntf, aImpl, aCustom, aDataset, aSchema, aAbbr, s, p, st);

  SrvIntf := aIntf;
  SrvImpl := aImpl;
  // sGitHubHome + '\SDK\res\GuidGenerator.vtd'
  if TJanuaApplication.Dialogs.SelectDirectory('Source Jorm Folder', sGitHubHome + '\SDK\src\januacore\orm') then
  // if TJanuaCoreOS.SelectFolder(aFolder, 'Source Jorm Folder', 'Ok') then
  begin
    aFolder := TJanuaApplication.Dialogs.SelectedFile;
    lStrings := TStringList.Create;
    try
      lStrings.Text := SourceIntf;
      lStrings.SaveToFile(TPath.Combine(aFolder, aFileIntf + '.pas'));
      lStrings.Text := SourceImpl;
      lStrings.SaveToFile(TPath.Combine(aFolder, aFileImpl + '.pas'));
    finally
      lStrings.Free;
    end;
  end;

end;

procedure TdmPgFrameworkJormGenerator.GenerateJormClick(Sender: TObject);
begin
  Self.GenerateJorm
end;

procedure TdmPgFrameworkJormGenerator.GenerateScriptsClick(Sender: TObject);
var
  b: TStringBuilder;
  t, a, j, d: string;
  function k: string;
  begin
    if qryColumns.RecordCount < 2 then
    begin
      Result := FKeys;
    end
    else
    begin
      qryIndexFields.First;
      while not qryIndexFields.Eof do
      begin
        Result := Result + IfThen(Result = '', '', ',') + qryIndexFieldsattname.AsWideString + ' ';
        qryIndexFields.Next;
      end;
    end;
  end;
  function ks: string;
  var
    tmp: string;
  begin
    if qryColumns.RecordCount < 2 then
      Result := k + ' = r.' + k
    else
    begin
      qryIndexFields.First;
      while not qryIndexFields.Eof do
      begin
        tmp := qryIndexFieldsattname.AsWideString;
        Result := Result + IfThen(Result = '', ' ', ' AND ') + tmp + ' = r.' + tmp;
        qryIndexFields.Next;
      end;
    end;

  end;

begin
  t := FTableName;
  a := FAbbreviation;
  vtGuidGenerator.Edit;
  vtGuidGenerator.fieldByName('SchemaTable').AsString := t;
  vtGuidGenerator.fieldByName('Abbreviation').AsString := a;
  vtGuidGenerator.fieldByName('Key').AsString := k;
  vtGuidGenerator.Post;
  t := LowerCase(FTableName);
  a := LowerCase(FAbbreviation);

  j := a + '_jguid';
  d := a + '_deleted';
  b := TStringBuilder.Create;
  try
    b.AppendLine('DO');
    b.AppendLine('$$');
    b.AppendLine('declare');
    b.AppendLine('  r record;');
    b.AppendLine('  guid character varying;');
    b.AppendLine('BEGIN');
    b.AppendLine('');
    if not qryColumns.Locate('column_name', 'db_schema_id', []) then
    begin
      (* ALTER TABLE cms.main_arguments
        ADD COLUMN db_schema_id bigint; *)
      b.AppendLine('ALTER TABLE ' + t);
      b.AppendLine('    ADD COLUMN db_schema_id bigint; ');
      b.AppendLine('');
    end
    else
    begin
      b.AppendLine('ALTER TABLE ' + t);
      b.AppendLine('     ALTER COLUMN db_schema_id TYPE integer; ');
      b.AppendLine('');
    end;
    if not qryColumns.Locate('column_name', d, []) then
    begin
      b.AppendLine('ALTER TABLE ' + t);
      b.AppendLine('    ADD COLUMN ' + d + ' boolean DEFAULT False;');
    end;
    if not qryColumns.Locate('column_name', j, []) then
    begin
      b.AppendLine('ALTER TABLE ' + t);
      b.AppendLine('    ADD COLUMN ' + j + ' character varying(40); ');
      b.AppendLine('');
      b.AppendLine('COMMENT ON COLUMN ' + t + '.' + j); // system.db_users.' + j + '
      b.AppendLine('    IS  ''guid unique identifier across DBs'';');
      b.AppendLine('');
      b.AppendLine('');
      b.AppendLine(' FOR r IN (select ' + k + ' from ' + t + ') LOOP');
      b.AppendLine('       perform pg_sleep(.001);');
      b.AppendLine('	   select ''{'' || uuid_generate_v1() || ''}''  into guid;');
      b.AppendLine('	   update ' + t + ' set ' + j + ' = guid where ' + ks + ';');
      b.AppendLine('       RAISE NOTICE ''%'', guid;');
      b.AppendLine(' END LOOP;');
      b.AppendLine('');
      b.AppendLine('ALTER TABLE ' + t);
      b.AppendLine('    ADD CONSTRAINT ' + j + '_uk UNIQUE (' + j + ');');
      b.AppendLine('');
      b.AppendLine('ALTER TABLE ' + t);
      b.AppendLine('    ALTER COLUMN ' + j + ' SET NOT NULL; ');
      b.AppendLine('');
    end;
    if not qryColumns.Locate('column_name', d, []) then
    begin
      b.AppendLine('');
      b.AppendLine('update ' + t + ' set ' + d + ' = false ; ');
      b.AppendLine('');
    end;
    b.AppendLine('END');
    b.AppendLine('$$');
    SQLText := b.ToString;
  finally
    b.Free
  end;

end;

procedure TdmPgFrameworkJormGenerator.GenerateTriggers;
begin
  vtGuidGenerator.First;
  while not vtGuidGenerator.Eof do
  begin
    Trigger;
    ExecuteSQL;
    vtGuidGenerator.Next;
  end;
end;

function TdmPgFrameworkJormGenerator.GetSChemaTable: string;
begin
  Result := vtGuidGenerator.fieldByName('SchemaTable').AsWideString;
end;

function TdmPgFrameworkJormGenerator.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        vtGuidGenerator.LoadFromFile(sGitHubHome + '\SDK\res\GuidGenerator.vtd');
        vtGuidGenerator.Open;
        qryColumns.Open;
        qryIndexFields.Open;
        qryTriggers.Open;
        qrySchemas.Open;
        Result := True;
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, Self);
    end;
end;

procedure TdmPgFrameworkJormGenerator.RefreshDetails;
begin
  inherited;

end;

procedure TdmPgFrameworkJormGenerator.SaveGUIDGeneratorVTDClick(Sender: TObject);
begin
  SaveVTDFile;
end;

procedure TdmPgFrameworkJormGenerator.SaveVTDFile;
begin
  vtGuidGenerator.SaveToFile(sGitHubHome + '\SDK\res\GuidGenerator.vtd');
end;

procedure TdmPgFrameworkJormGenerator.SchemaAnalytics;
begin
end;

procedure TdmPgFrameworkJormGenerator.SchemaAnalyticsClick(Sender: TObject);
begin
  SchemaAnalytics
end;

procedure TdmPgFrameworkJormGenerator.SchemaClick(Sender: TObject);
var
  tmp, sct: string;
  function CheckTable(tName: string): Boolean;
  begin
    qryIndexFields.Close;
    qryIndexFields.SQL.Clear;
    qryIndexFields.SQL.Add('SELECT a.attname, format_type(a.atttypid, a.atttypmod) AS data_type');
    qryIndexFields.SQL.Add('FROM   pg_index i JOIN   pg_attribute a ON a.attrelid = i.indrelid');
    qryIndexFields.SQL.Add('  AND a.attnum = ANY(i.indkey)');
    qryIndexFields.SQL.Add('WHERE  i.indrelid = ''' + tName + '''::regclass AND    i.indisprimary');
    qryIndexFields.Open;
    Result := qryIndexFields.RecordCount > 0;
    if not Result then
    begin
      qryCheckJguid.Close;
      qryCheckJguid.ParamByName('SchemaTable').AsString := tName;
      qryCheckJguid.Open;
      Result := qryCheckJguid.RecordCount > 0;
      qryCheckJguid.Close;
    end;

  end;

  function GetPrefix(aTableName: string): string;
  var
    j: Integer;
    c, d: char;
  begin
    j := 1;
    d := #0;
    Result := '';

    for c in aTableName do
      if not CharInset(c, ['a', 'e', 'i', 'o', 'u', 'j', 'y', '-', '_']) then
      begin
        if j < 4 then
          Result := Result + c;
        Inc(j);
      end;

    if j < 4 then
      for c in aTableName do
        if CharInset(d, ['a', 'e', 'i', 'o', 'u', 'j', 'y']) then
        begin
          if j < 4 then
            Result := Result + c;
          Inc(j);
        end;

  end;

begin
  // j := 0;
  qrySchemaTables.Close;
  qrySchemaTables.Params[0].AsWideString := LowerCase(TableSchema);
  qrySchemaTables.Open;
  qrySchemaTables.First;
  while not qrySchemaTables.Eof do
  begin
    sct := LowerCase(TableSchema + '.' + qrySchemaTablestable_name.AsWideString);
    if CheckTable(sct) and not vtGuidGenerator.Locate('SchemaTable', sct, []) then
    begin
      vtGuidGenerator.Append;
      vtGuidGenerator.fieldByName('SchemaTable').AsWideString := sct;
      { tmp := Copy(LowerCase(TableSchema), 1, 1); }
      tmp := GetPrefix(StringReplace(qrySchemaTablestable_name.AsWideString, Prefix, '', []).ToLower);
      vtGuidGenerator.fieldByName('Abbreviation').AsWideString := tmp;
      vtGuidGenerator.Post;
      GenerateScriptsClick(Sender);
      SaveVTDFile;
    end;
    qrySchemaTables.Next
  end;

end;

procedure TdmPgFrameworkJormGenerator.SetAbbreviation(const Value: string);
begin
  if FAbbreviation <> Value then
  begin
    FAbbreviation := Value;
    Notify('Abbreviation');
  end;
end;

procedure TdmPgFrameworkJormGenerator.SetAfterAnalytics(const Value: TNotifyEvent);
begin
  FAfterAnalytics := Value;
end;

procedure TdmPgFrameworkJormGenerator.SetKeys(const Value: string);
begin
  if FKeys <> Value then
  begin
    FKeys := Value;
    Notify('Keys');
  end;
end;

procedure TdmPgFrameworkJormGenerator.SetPrefix(const Value: string);
begin
  if FPrefix <> Value then
  begin
    FPrefix := Value;
    Notify('Prefix');
  end;
end;

procedure TdmPgFrameworkJormGenerator.SetSourceImpl(const Value: string);
begin
  if FSourceImpl <> Value then
  begin
    FSourceImpl := Value;
    Notify('SourceImpl');
  end;
end;

procedure TdmPgFrameworkJormGenerator.SetSourceIntf(const Value: string);
begin
  if FSourceIntf <> Value then
  begin
    FSourceIntf := Value;
    Notify('SourceIntf');
  end;
end;

procedure TdmPgFrameworkJormGenerator.SetSQLText(const Value: string);
begin
  if FSQLText <> Value then
  begin
    FSQLText := Value;
    Notify('SQLText');
  end;
end;

procedure TdmPgFrameworkJormGenerator.SetSrvImpl(const Value: string);
begin
  if FSrvImpl <> Value then
  begin
    FSrvImpl := Value;
    Notify('SrvImpl');
  end;
end;

procedure TdmPgFrameworkJormGenerator.SetSrvIntf(const Value: string);
begin
  if FSrvIntf <> Value then
  begin
    FSrvIntf := Value;
    Notify('SrvIntf');
  end;
end;

procedure TdmPgFrameworkJormGenerator.SetTableName(const Value: string);
begin
  if FTableName <> Value then
  begin
    FTableName := Value;
    Notify('TableName');
  end;
end;

procedure TdmPgFrameworkJormGenerator.SetTableSchema(const Value: string);
begin
  if FTableSchema <> Value then
  begin
    FTableSchema := Value;
    Notify('TableSchema');
  end;
end;

procedure TdmPgFrameworkJormGenerator.Trigger;
var
  b: TStringBuilder;
  t, a, j, d, aSchema: string;
  i: Integer;

  function k: string;
  begin
    if qryColumns.RecordCount < 2 then
      Result := Keys
    else
    begin
      qryIndexFields.First;
      while not qryIndexFields.Eof do
      begin
        Result := Result + IfThen(Result = '', '', ',') + qryIndexFieldsattname.AsWideString + ' ';
        qryIndexFields.Next;
      end;
    end;
  end;
  function ks: string;
  var
    tmp: string;
  begin
    if qryColumns.RecordCount < 2 then
      Result := k + ' = r.' + k
    else
    begin
      qryIndexFields.First;
      while not qryIndexFields.Eof do
      begin
        tmp := qryIndexFieldsattname.AsWideString;
        Result := Result + IfThen(Result = '', ' ', ' AND ') + tmp + ' = r.' + tmp;
        qryIndexFields.Next;
      end;
    end;

  end;

begin
  t := LowerCase(TableName);
  a := LowerCase(Abbreviation);
  j := a + '_jguid';
  d := a + '_deleted';
  i := Pos('.', TableName);
  aSchema := Copy(TableName, 1, i - 1);

  b := TStringBuilder.Create;
  try
    b.AppendLine('CREATE or replace FUNCTION ' + aSchema + '.' + a + '_trg()');
    b.AppendLine('RETURNS trigger');
    b.AppendLine('LANGUAGE ''plpgsql''');
    b.AppendLine('AS $BODY$');
    b.AppendLine('');
    b.AppendLine('begin');
    b.AppendLine('');
    b.AppendLine('  if New.' + j + ' is null then');
    b.AppendLine('     New.' + j + ':= ''{'' || public.uuid_generate_v1mc() || ''}'';');
    b.AppendLine('  end if;');
    b.AppendLine('');
    b.AppendLine('  if New.' + d + ' is null then');
    b.AppendLine('     New.' + d + ' := false;');
    b.AppendLine('  end if;');
    b.AppendLine('');
    b.AppendLine('  if New.db_schema_id is null then');
    b.AppendLine('     New.db_schema_id:=0;');
    b.AppendLine('  end if;');
    b.AppendLine('  Return NEW;');
    b.AppendLine('end;');
    b.AppendLine('$BODY$;');
    b.AppendLine('');
    if not qryTriggers.Locate('trigger_name', a + '_bi_trg', []) then
    begin
      b.AppendLine('CREATE TRIGGER ' + a + '_bi_trg');
      b.AppendLine('BEFORE INSERT OR UPDATE');
      b.AppendLine('ON ' + t);
      b.AppendLine('FOR EACH ROW');
      b.AppendLine('EXECUTE PROCEDURE ' + aSchema + '.' + a + '_trg();');
    end;
    b.AppendLine('');
    { memSQL.Lines.Text } SQLText := b.ToString;
  finally
    b.Free;
  end;
end;

procedure TdmPgFrameworkJormGenerator.TriggerClick(Sender: TObject);
begin
  Trigger;
end;

procedure TdmPgFrameworkJormGenerator.TriggersClick(Sender: TObject);
begin

end;

end.
