unit Janua.Oracle.MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DBAccess, UniDacVcl, Vcl.ComCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Data.DB, JvExControls, JvDBLookup, Vcl.Grids, Vcl.DBGrids, CRGrid,
  AdvMemo, AdvmSQLS, Vcl.Mask, AdvSpin, Janua.Oracle.ControlFileGenerator, DBAdvMemo, AdvEdit, AdvEdBtn,
  AdvDirectoryEdit, Vcl.Samples.Spin, Janua.Vcl.EnhCRDBGrid, Vcl.Buttons, Vcl.DBCtrls, AdvSplitter;

type
  TfrmOracleSwissMilitaryMain = class(TForm)
    pnlToolBar: TPanel;
    btnLogin: TButton;
    UniConnectDialog1: TUniConnectDialog;
    dsSchemas: TDataSource;
    dsTables: TDataSource;
    AdvSQLMemoStyler: TAdvSQLMemoStyler;
    dsTableFields: TDataSource;
    dsViews: TDataSource;
    Panel5: TPanel;
    lbSchemaSelection: TLabel;
    lkpSchema: TJvDBLookupCombo;
    dsViewFields: TDataSource;
    PageControl1: TPageControl;
    tabOracleControlFile: TTabSheet;
    grpSqlLoaderControlFile: TGroupBox;
    lbOperation: TLabel;
    Label1: TLabel;
    lbTerminatedBy: TLabel;
    lbEnclosedBy: TLabel;
    lbNlsNumericChar: TLabel;
    lbDateTimeFormat: TLabel;
    lbTimeStamp: TLabel;
    cboOperation: TComboBox;
    edDestinationViewTeble: TEdit;
    ckbINFILE: TCheckBox;
    edtInFile: TEdit;
    edtBadFile: TEdit;
    ckbBadFile: TCheckBox;
    edtDiscardFile: TEdit;
    ckbDiscardFile: TCheckBox;
    ckbTrailingNullCols: TCheckBox;
    edTerminatedBy: TEdit;
    ckbOptionally: TCheckBox;
    edEnclosedBy: TEdit;
    edNlsNumericChar: TEdit;
    edDateTimeConversion: TEdit;
    ckbNumerics: TCheckBox;
    edtTimeStamp: TEdit;
    grpSqlLoaderControlFileOptions: TGroupBox;
    ckbSkip: TCheckBox;
    AdvSpinEdit1: TAdvSpinEdit;
    ckbParallel: TCheckBox;
    ckbMultiThreading: TCheckBox;
    ckbOptions: TCheckBox;
    pgcSqlLoaderControlFile: TPageControl;
    tabControlFile: TTabSheet;
    CRDBGrid1: TCRDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    btnGenerateTableControl: TButton;
    btnViewTAbleFields: TButton;
    btnGenerateCSV: TButton;
    pgcTableControlExport: TPageControl;
    tabControl: TTabSheet;
    memTableCtrlFile: TAdvMemo;
    tabExportCode: TTabSheet;
    advMemTableCSV: TAdvMemo;
    tabTemplate: TTabSheet;
    tabViewConrolFile: TTabSheet;
    CRDBGrid2: TCRDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    Button1: TButton;
    btnOpenViewFields: TButton;
    AdvMemo2: TAdvMemo;
    DBGrid2: TDBGrid;
    tabDynamicCode: TTabSheet;
    pgcMaterializedViews: TTabSheet;
    pnlMViews: TPanel;
    dsMviews: TDataSource;
    Panel6: TPanel;
    btnOpenMViews: TButton;
    grdMviews: TCRDBGrid;
    btnGenerateTableDDL: TButton;
    Panel7: TPanel;
    grdMViewConsFields: TCRDBGrid;
    dsMviewFields: TDataSource;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    grdMViewColumns: TCRDBGrid;
    dsMViewIndexes: TDataSource;
    grdMViewConstraints: TCRDBGrid;
    dsMViewConstraints: TDataSource;
    btnTableListDDL: TButton;
    pnlList: TPanel;
    memVMList: TMemo;
    memVMDiscardedList: TMemo;
    Panel8: TPanel;
    memDDLMViews: TAdvMemo;
    CRDBGrid3: TCRDBGrid;
    DBAdvMemo1: TDBAdvMemo;
    dsMviewConsDDL: TDataSource;
    memIndexesDDL: TDBAdvMemo;
    dsIndexesDDL: TDataSource;
    btnGenerateMViewCode: TButton;
    tabViewIInsertDDL: TTabSheet;
    edlAddRow: TLabeledEdit;
    edSuffix: TLabeledEdit;
    edReplace: TLabeledEdit;
    Panel9: TPanel;
    Button4: TButton;
    Panel10: TPanel;
    Button2: TButton;
    CRDBGrid4: TCRDBGrid;
    Panel11: TPanel;
    Panel12: TPanel;
    btnGenerateViewCode: TButton;
    Button5: TButton;
    memViewCode: TAdvMemo;
    DBGrid3: TDBGrid;
    Panel13: TPanel;
    Memo1: TMemo;
    Memo2: TMemo;
    DBGrid4: TDBGrid;
    dsTargetFields: TDataSource;
    btnTestTarget: TButton;
    cboTargetSchema: TJvDBLookupCombo;
    lbTargetSchema: TLabel;
    lbTargetTable: TLabel;
    lbTargetSchemaDest: TLabel;
    Label4: TLabel;
    pgControlTemplates: TPageControl;
    tabExportTemplate: TTabSheet;
    tabControlTemplate: TTabSheet;
    memTemplateCSV: TAdvMemo;
    memTemplateCtl: TAdvMemo;
    tabOutput: TTabSheet;
    btnGenerateAllCtl: TButton;
    dirGenerate: TAdvDirectoryEdit;
    PageControl2: TPageControl;
    tabGTIA: TTabSheet;
    tabGTIG: TTabSheet;
    tabGTIL: TTabSheet;
    tabGTIT: TTabSheet;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    AdvMemo3: TAdvMemo;
    TabSheet2: TTabSheet;
    ctlGTIA: TAdvMemo;
    PageControl4: TPageControl;
    TabSheet3: TTabSheet;
    AdvMemo5: TAdvMemo;
    TabSheet4: TTabSheet;
    ctlGTIG: TAdvMemo;
    PageControl5: TPageControl;
    TabSheet5: TTabSheet;
    AdvMemo7: TAdvMemo;
    TabSheet6: TTabSheet;
    ctlGTIL: TAdvMemo;
    PageControl6: TPageControl;
    TabSheet7: TTabSheet;
    AdvMemo9: TAdvMemo;
    TabSheet8: TTabSheet;
    ctlGTIT: TAdvMemo;
    edtExportNumber: TSpinEdit;
    btnGenerateAllSQL: TButton;
    tabSQL: TTabSheet;
    tabOutputInsert: TPageControl;
    tabUnloadCSV: TTabSheet;
    memUnloadCSV: TAdvMemo;
    tabMerge: TTabSheet;
    memTemplateMerge: TAdvMemo;
    tabMergeCode: TTabSheet;
    memMergeCode: TAdvMemo;
    btnGenerateMerge: TButton;
    tabMergeOutput: TTabSheet;
    memMergeOutput: TAdvMemo;
    PageControl8: TPageControl;
    tabFields: TTabSheet;
    DBGrid1: TDBGrid;
    tabFileList: TTabSheet;
    btnGenerateTR: TButton;
    tabTemplateTruncate: TTabSheet;
    memTemplateTruncate: TAdvMemo;
    tabTruncate: TTabSheet;
    memTruncateOutput: TAdvMemo;
    btnGenerateExtract: TButton;
    tabExtractTemplate: TTabSheet;
    memTemplateExtract: TAdvMemo;
    tabInsert: TTabSheet;
    memTemplateInsert: TAdvMemo;
    tbnGenInsert: TButton;
    tabInsertOutput: TTabSheet;
    memInsertOutput: TAdvMemo;
    tabExtractOutput: TTabSheet;
    memExtractOutput: TAdvMemo;
    btnGenAll: TButton;
    Panel14: TPanel;
    DBNavigator1: TDBNavigator;
    dsFileList: TDataSource;
    grdFiles: TEnhCRDBGrid;
    tabLog: TTabSheet;
    memLog: TAdvMemo;
    tabProcCode: TTabSheet;
    memCodeOutput: TAdvMemo;
    btnGenCode: TButton;
    Panel15: TPanel;
    DBNavigator2: TDBNavigator;
    CRDBGrid5: TCRDBGrid;
    PageControl7: TPageControl;
    tabPackageCode: TTabSheet;
    memCode: TDBAdvMemo;
    tabTestCode: TTabSheet;
    pnlTestParams: TPanel;
    edSchema: TLabeledEdit;
    edCompagnia: TLabeledEdit;
    btnTestCode: TButton;
    memTestCode: TAdvMemo;
    AdvSplitter1: TAdvSplitter;
    btnCommit: TButton;
    btnOpen: TButton;
    procedure btnLoginClick(Sender: TObject);
    procedure btnViewTAbleFieldsClick(Sender: TObject);
    procedure btnOpenViewFieldsClick(Sender: TObject);
    procedure btnGenerateTableControlClick(Sender: TObject);
    procedure btnGenerateCSVClick(Sender: TObject);
    procedure btnOpenMViewsClick(Sender: TObject);
    procedure btnGenerateTableDDLClick(Sender: TObject);
    procedure btnTableListDDLClick(Sender: TObject);
    procedure btnGenerateMViewCodeClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnGenerateViewCodeClick(Sender: TObject);
    procedure btnGenerateAllCtlClick(Sender: TObject);
    procedure btnGenerateAllSQLClick(Sender: TObject);
    procedure btnGenerateMergeClick(Sender: TObject);
    procedure btnGenerateTRClick(Sender: TObject);
    procedure btnGenerateExtractClick(Sender: TObject);
    procedure tbnGenInsertClick(Sender: TObject);
    procedure btnGenAllClick(Sender: TObject);
    procedure btnTestCodeClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
  private
    { Private declarations }
    FTable: string;
    FControlFileConf: TControlFileConfig;
    procedure SetupControlFileConf;
  public
    { Public declarations }
    procedure GenerateAllCtl(const aFileName: string = '');
    procedure GenerateTruncate(const aFileName: string = '');
    procedure GenerateCsv(const aFileName: string = '');
    procedure GenerateExtract(const aFileName: string = '');
    procedure GenerateInsert(const aFileName: string = '');
    procedure GenerateMerge(const aFileName: string = '');
    procedure GenerateCtl(const aFileName: string = '');
  end;

var
  frmOracleSwissMilitaryMain: TfrmOracleSwissMilitaryMain;

implementation

{$R *.dfm}

uses Janua.Oracle.SchemaDatamodule, System.StrUtils, System.IOUtils;

procedure TfrmOracleSwissMilitaryMain.btnGenAllClick(Sender: TObject);
begin
  dmOracleSchema.qryListFiles.First;
  While not dmOracleSchema.qryListFiles.Eof do
  begin
    edtExportNumber.Value := dmOracleSchema.qryListFilesID.AsInteger;

    var
    vTableName := dmOracleSchema.qryListFilesDELTA_TABLE.AsWideString;

    if vTableName = '' then
      vTableName := dmOracleSchema.qryListFilesMAIN_TABLE.AsWideString;

    var
    vFileName := dmOracleSchema.qryListFilesFILENAME.AsWideString;

    if dmOracleSchema.qrySchemaTables.Locate('TABLE_NAME', vTableName, []) then
    begin
      try
        var
        vOperation := dmOracleSchema.qryListFilesOPERATION_TYPE.AsWideString;
        if vOperation = 'MER' then
          GenerateMerge(vFileName)
        else if vOperation = 'TR' then
          GenerateTruncate(vFileName)
        else if vOperation = 'INS' then
          GenerateInsert(vFileName)
        else if vOperation = 'CTL' then
          GenerateAllCtl()
        else if vOperation = 'UNL' then
          GenerateCsv(vFileName)
        else if vOperation = 'EXT' then
          GenerateExtract(vFileName);
        memLog.Lines.Add(edtExportNumber.Text + ') ' + vTableName + ' Generato:' + vFileName);
      except
        on e: exception do
          memLog.Lines.Add(edtExportNumber.Text + ') ' + vTableName + ' Error:');
      end;
    end
    else
      memLog.Lines.Add(edtExportNumber.Text + ') ' + vTableName + ' not Found');

    dmOracleSchema.qryListFiles.Next;

  end;
end;

procedure TfrmOracleSwissMilitaryMain.btnGenerateAllCtlClick(Sender: TObject);
begin
  GenerateAllCtl();
end;

procedure TfrmOracleSwissMilitaryMain.btnGenerateAllSQLClick(Sender: TObject);
begin
  self.GenerateCsv();
end;

procedure TfrmOracleSwissMilitaryMain.btnGenerateCSVClick(Sender: TObject);
begin
  // GenerateCSVSelectfromMetadata
  FTable := dsTables.DataSet.FieldByName('TABLE_NAME').AsString;
  SetupControlFileConf;
  dmOracleControlFile.ControlFileConf := FControlFileConf;
  advMemTableCSV.Lines.Text := dmOracleControlFile.GenerateCSVSelectfromMetadata(dsTableFields.DataSet);
end;

procedure TfrmOracleSwissMilitaryMain.btnGenerateExtractClick(Sender: TObject);
begin
  // VESVSCUNLOAD_2_INSERT_TITOLI_DELTA
  GenerateExtract()

  // VESVSCUNLOAD_2_INSERT_TITOLI_DELTA

end;

procedure TfrmOracleSwissMilitaryMain.btnGenerateMergeClick(Sender: TObject);
begin
  self.GenerateMerge();
end;

procedure TfrmOracleSwissMilitaryMain.btnGenerateMViewCodeClick(Sender: TObject);
begin
  memDDLMViews.Lines.Text := dmOracleSchema.GenerateViewCode(edlAddRow.Text, edSuffix.Text, edReplace.Text);
end;

procedure TfrmOracleSwissMilitaryMain.btnGenerateTableControlClick(Sender: TObject);
begin
  FTable := dsTables.DataSet.FieldByName('TABLE_NAME').AsString;
  SetupControlFileConf;
  dmOracleControlFile.ControlFileConf := FControlFileConf;
  memTableCtrlFile.Lines.Text := dmOracleControlFile.GenerateControlFileFromMetadata(dsTableFields.DataSet);
end;

procedure TfrmOracleSwissMilitaryMain.btnGenerateTableDDLClick(Sender: TObject);
begin
  memDDLMViews.Lines.Text := dmOracleSchema.GenerateMVDDL;
end;

procedure TfrmOracleSwissMilitaryMain.btnGenerateTRClick(Sender: TObject);
begin
  GenerateTruncate();
end;

procedure TfrmOracleSwissMilitaryMain.btnLoginClick(Sender: TObject);
begin
  dmOracleSchema.UniConnection1.ConnectDialog := self.UniConnectDialog1;
  dmOracleSchema.UniConnection1.Connect;
  if dmOracleSchema.UniConnection1.Connected then
  begin
    lkpSchema.Value := dmOracleSchema.UniConnection1.Username;
    { lkpSchema.Text := dmOracleSchema.UniConnection1.Username; }
  end;
end;

procedure TfrmOracleSwissMilitaryMain.btnOpenClick(Sender: TObject);
begin
  dsFileList.DataSet.Open
end;

procedure TfrmOracleSwissMilitaryMain.btnOpenMViewsClick(Sender: TObject);
begin
  dmOracleSchema.qryMaterializedView.Open;
end;

procedure TfrmOracleSwissMilitaryMain.btnOpenViewFieldsClick(Sender: TObject);
begin
  { property TargetSchema: string read FTargetSchema write SetTargetSchema;
    property Suffix: string read FSuffix write SetSuffix;
    property Prefix: string read FPrefix write SetPrefix;
    property Replace: string read FReplace write SetReplace;
  }
  dmOracleSchema.TargetSchema := cboTargetSchema.Value;
  dmOracleSchema.Suffix := edSuffix.Text;
  dmOracleSchema.Replace := edReplace.Text;
  self.lbTargetTable.Caption := dmOracleSchema.GetTargetTable;
  self.lbTargetSchemaDest.Caption := dmOracleSchema.GetTargetSchema;
  dmOracleSchema.OpenTargetTable;
  memViewCode.Lines.Text := dmOracleSchema.GenerateTargetFields;
end;

procedure TfrmOracleSwissMilitaryMain.btnTableListDDLClick(Sender: TObject);
begin
  // lstMViews
  memDDLMViews.Lines.Text := dmOracleSchema.GenerateMVDDLFromList(memVMList.Lines, edlAddRow.Text,
    edSuffix.Text);
end;

procedure TfrmOracleSwissMilitaryMain.btnTestCodeClick(Sender: TObject);
begin
  var
  vTest := memCode.Lines.Text;

  vTest := stringReplace(vTest, '$SCHEMA$', edSchema.Text, [rfReplaceAll]);
  vTest := stringReplace(vTest, '$P_COD$', edCompagnia.Text, [rfReplaceAll]);

  memTestCode.Lines.Text := vTest;
end;

procedure TfrmOracleSwissMilitaryMain.btnViewTAbleFieldsClick(Sender: TObject);
begin
  dmOracleSchema.qryTableFields.Open;
end;

procedure TfrmOracleSwissMilitaryMain.Button2Click(Sender: TObject);
begin
  dmOracleSchema.qrySchemaViews.Open;
end;

procedure TfrmOracleSwissMilitaryMain.GenerateAllCtl(const aFileName: string);
begin
  dmOracleSchema.qryTableFields.Open;
  FTable := dsTables.DataSet.FieldByName('TABLE_NAME').AsString;
  SetupControlFileConf;
  // CSV -----------------------------------------------------------------------------------------------------
  dmOracleControlFile.ControlFileConf := FControlFileConf;
  advMemTableCSV.Lines.Text := dmOracleControlFile.GenerateCSVSelectfromMetadata(dsTableFields.DataSet);
  // Ctl -----------------------------------------------------------------------------------------------------
  dmOracleControlFile.ControlFileConf := FControlFileConf;
  memTableCtrlFile.Lines.Text := dmOracleControlFile.GenerateControlFileFromMetadata(dsTableFields.DataSet);

  // Templates -----------------------------------------------------------------------------------------------
  var
  vTemplate := memTemplateCtl.Lines.Text;
  var
  vGTI := stringReplace(vTemplate, '$SCHEMA$', 'GTIA', []);
  vGTI := stringReplace(vGTI, '$TABLE$', FTable, []);
  ctlGTIA.Lines.Text := vGTI;
  ctlGTIA.Lines.Add(memTableCtrlFile.Lines.Text);
  var
  vFileName := dirGenerate.Text + '\VESVSCLOAD_' + edtExportNumber.Text + '_CTL_' + FTable + '_A.ctl';
  ctlGTIA.Lines.SaveToFile(vFileName);

  vGTI := stringReplace(vTemplate, '$SCHEMA$', 'GTIG', []);
  vGTI := stringReplace(vGTI, '$TABLE$', FTable, []);
  ctlGTIG.Lines.Text := vGTI;
  ctlGTIG.Lines.Add(memTableCtrlFile.Lines.Text);
  vFileName := dirGenerate.Text + '\VESVSCLOAD_' + edtExportNumber.Text + '_CTL_' + FTable + '_G.ctl';
  ctlGTIG.Lines.SaveToFile(vFileName);

  vGTI := stringReplace(vTemplate, '$SCHEMA$', 'GTIL', []);
  vGTI := stringReplace(vGTI, '$TABLE$', FTable, []);
  ctlGTIL.Lines.Text := vGTI;
  ctlGTIL.Lines.Add(memTableCtrlFile.Lines.Text);
  vFileName := dirGenerate.Text + '\VESVSCLOAD_' + edtExportNumber.Text + '_CTL_' + FTable + '_L.ctl';
  ctlGTIL.Lines.SaveToFile(vFileName);

  vGTI := stringReplace(vTemplate, '$SCHEMA$', 'GTIT', []);
  vGTI := stringReplace(vGTI, '$TABLE$', FTable, []);
  ctlGTIT.Lines.Text := vGTI;
  ctlGTIT.Lines.Add(memTableCtrlFile.Lines.Text);
  vFileName := dirGenerate.Text + '\VESVSCLOAD_' + edtExportNumber.Text + '_CTL_' + FTable + '_T.ctl';
  ctlGTIT.Lines.SaveToFile(vFileName);

end;

procedure TfrmOracleSwissMilitaryMain.GenerateCsv(const aFileName: string);
begin
  dmOracleSchema.qryTableFields.Open;
  FTable := dsTables.DataSet.FieldByName('TABLE_NAME').AsString;
  SetupControlFileConf;
  // CSV -----------------------------------------------------------------------------------------------------
  dmOracleControlFile.ControlFileConf := FControlFileConf;
  advMemTableCSV.Lines.Text := dmOracleControlFile.GenerateCSVSelectfromMetadata(dsTableFields.DataSet);
  // Ctl -----------------------------------------------------------------------------------------------------
  dmOracleControlFile.ControlFileConf := FControlFileConf;
  memTableCtrlFile.Lines.Text := dmOracleControlFile.GenerateControlFileFromMetadata(dsTableFields.DataSet);

  // Templates -----------------------------------------------------------------------------------------------
  var
  vTemplate := memTemplateCSV.Lines.Text;
  var
  vGTI := stringReplace(vTemplate, '$SELECT$', advMemTableCSV.Lines.Text, []);
  memUnloadCSV.Lines.Text := vGTI;

  var
  vFileName := '';

  if aFileName = '' then
    vFileName := dirGenerate.Text + '\VESVSCUNLOAD_' + edtExportNumber.Text + '_' + FTable + '.sql'
  else
    vFileName := dirGenerate.Text + '\' + aFileName;

  memUnloadCSV.Lines.SaveToFile(vFileName);

end;

procedure TfrmOracleSwissMilitaryMain.GenerateCtl(const aFileName: string);
begin

end;

procedure TfrmOracleSwissMilitaryMain.GenerateExtract(const aFileName: string);
begin
  dmOracleSchema.qryTableFields.Open;
  FTable := dsTables.DataSet.FieldByName('TABLE_NAME').AsString;
  SetupControlFileConf;
  dmOracleControlFile.ControlFileConf := FControlFileConf;
  // CSV -----------------------------------------------------------------------------------------------------
  advMemTableCSV.Lines.Text := dmOracleControlFile.GenerateCSVSelectfromMetadata(dsTableFields.DataSet);
  // Ctl -----------------------------------------------------------------------------------------------------
  memTableCtrlFile.Lines.Text := dmOracleControlFile.GenerateControlFileFromMetadata(dsTableFields.DataSet);
  // Templates -----------------------------------------------------------------------------------------------
  var
  vTemplate := memTemplateExtract.Lines.Text;
  var
  vGTI := stringReplace(vTemplate, '$TABLE$', FTable, []);

  memExtractOutput.Lines.Text := vGTI;

  var
    // VESVSCUNLOAD_2_INSERT_TITOLI_DELTA
  vFileName := '';

  if aFileName = '' then
    vFileName := dirGenerate.Text + '\VESVSCUNLOAD_' + edtExportNumber.Text + '_ESTRAI_' + FTable + '.sql'
  else
    vFileName := dirGenerate.Text + '\' + aFileName;

  memExtractOutput.Lines.SaveToFile(vFileName);
end;

procedure TfrmOracleSwissMilitaryMain.GenerateInsert(const aFileName: string);
begin
  dmOracleSchema.qryTableFields.Open;
  FTable := dsTables.DataSet.FieldByName('TABLE_NAME').AsString;
  SetupControlFileConf;
  dmOracleControlFile.ControlFileConf := FControlFileConf;
  // CSV -----------------------------------------------------------------------------------------------------
  advMemTableCSV.Lines.Text := dmOracleControlFile.GenerateCSVSelectfromMetadata(dsTableFields.DataSet);
  // Ctl -----------------------------------------------------------------------------------------------------
  memTableCtrlFile.Lines.Text := dmOracleControlFile.GenerateControlFileFromMetadata(dsTableFields.DataSet);
  // Templates -----------------------------------------------------------------------------------------------
  var
  vTemplate := memTemplateInsert.Lines.Text;
  var
  vGTI := stringReplace(vTemplate, '$TABLE$', FTable, []);

  memInsertOutput.Lines.Text := vGTI;

  var
    // VESVSCUNLOAD_2_INSERT_TITOLI_DELTA
  vFileName := '';

  if aFileName = '' then
    vFileName := dirGenerate.Text + '\VESVSCUNLOAD_' + edtExportNumber.Text + '_INSERT_' + FTable + '.sql'
  else
    vFileName := dirGenerate.Text + '\' + aFileName;

  memInsertOutput.Lines.SaveToFile(vFileName);
end;

procedure TfrmOracleSwissMilitaryMain.GenerateMerge(const aFileName: string);
begin
  dmOracleSchema.qryTableFields.Open;
  FTable := dsTables.DataSet.FieldByName('TABLE_NAME').AsString;
  SetupControlFileConf;
  dmOracleControlFile.ControlFileConf := FControlFileConf;
  // CSV -----------------------------------------------------------------------------------------------------
  advMemTableCSV.Lines.Text := dmOracleControlFile.GenerateCSVSelectfromMetadata(dsTableFields.DataSet);
  // Ctl -----------------------------------------------------------------------------------------------------
  memTableCtrlFile.Lines.Text := dmOracleControlFile.GenerateControlFileFromMetadata(dsTableFields.DataSet);
  // memMergeCode --------------------------------------------------------------------------------------------
  memMergeCode.Lines.Text := dmOracleControlFile.GenerateMergefromMetadata(dsTableFields.DataSet);

  // Templates -----------------------------------------------------------------------------------------------
  var
  vTemplate := memTemplateMerge.Lines.Text;
  var
  vGTI := stringReplace(vTemplate, '$CODE$', memMergeCode.Lines.Text, []);

  memMergeOutput.Lines.Text := vGTI;

  var
  vFileName := '';
  // VESVSCLOAD_12_MERGE_POL_TRANCHE_DELTA

  if aFileName = '' then
    vFileName := dirGenerate.Text + '\VESVSCUNLOAD_' + edtExportNumber.Text + '_MERGE_' + FTable + '.sql'
  else
    vFileName := dirGenerate.Text + '\' + aFileName;

  memMergeOutput.Lines.SaveToFile(vFileName);
end;

procedure TfrmOracleSwissMilitaryMain.GenerateTruncate(const aFileName: string);
begin
  dmOracleSchema.qryTableFields.Open;
  FTable := dsTables.DataSet.FieldByName('TABLE_NAME').AsString;
  SetupControlFileConf;
  dmOracleControlFile.ControlFileConf := FControlFileConf;
  // CSV -----------------------------------------------------------------------------------------------------
  advMemTableCSV.Lines.Text := dmOracleControlFile.GenerateCSVSelectfromMetadata(dsTableFields.DataSet);
  // Ctl -----------------------------------------------------------------------------------------------------
  memTableCtrlFile.Lines.Text := dmOracleControlFile.GenerateControlFileFromMetadata(dsTableFields.DataSet);
  // Templates -----------------------------------------------------------------------------------------------
  var
  vTemplate := memTemplateTruncate.Lines.Text;
  var
  vGTI := stringReplace(vTemplate, '$TABLE$', FTable, []);

  memTruncateOutput.Lines.Text := vGTI;

  var
    // VESVSCLOAD_12_MERGE_POL_TRANCHE_DELTA
  vFileName := '';

  if aFileName = '' then
    vFileName := dirGenerate.Text + '\VESVSCUNLOAD_' + edtExportNumber.Text + '_TR_' + FTable + '.sql'
  else
    vFileName := dirGenerate.Text + '\' + aFileName;

  memTruncateOutput.Lines.SaveToFile(vFileName);

end;

procedure TfrmOracleSwissMilitaryMain.btnGenerateViewCodeClick(Sender: TObject);
begin
  memViewCode.Lines.Text := dmOracleSchema.GenerateViewCode(edlAddRow.Text, edSuffix.Text, edReplace.Text);
end;

procedure TfrmOracleSwissMilitaryMain.SetupControlFileConf;
begin
  FControlFileConf.DestinationOperation := cboOperation.Text;
  FControlFileConf.DestinationViewOrTable := IfThen(edDestinationViewTeble.Text = '', FTable,
    edDestinationViewTeble.Text);
  FControlFileConf.UseInfile := ckbINFILE.Checked;
  FControlFileConf.UseBadFile := ckbBadFile.Checked;
  FControlFileConf.UseDiscardFile := ckbDiscardFile.Checked;
  FControlFileConf.Infile := IfThen(edtInFile.Text = '', FTable + '.csv', edtInFile.Text);
  FControlFileConf.BadFile := IfThen(edtBadFile.Text = '', FTable + '.bad', edtBadFile.Text);
  FControlFileConf.DiscardFile := IfThen(edtDiscardFile.Text = '', FTable + '.dsc', edtDiscardFile.Text);
  FControlFileConf.UseTrailingNullCols := ckbTrailingNullCols.Checked;
  FControlFileConf.TerminatedBy := edTerminatedBy.Text;
  FControlFileConf.UseEnclosedBy := ckbOptionally.Checked;
  FControlFileConf.EnclosedBy := edEnclosedBy.Text;
  FControlFileConf.NlsNumericChar := edNlsNumericChar.Text;
  FControlFileConf.DateTimeFormat := edDateTimeConversion.Text;
  // edtTimeStamp
  FControlFileConf.TimeStampFormat := edtTimeStamp.Text;
  FControlFileConf.UseGenerateNumericFormatting := ckbNumerics.Checked;
end;

procedure TfrmOracleSwissMilitaryMain.tbnGenInsertClick(Sender: TObject);
begin
  // VESVSCUNLOAD_2_INSERT_TITOLI_DELTA
  GenerateInsert()
end;

end.
