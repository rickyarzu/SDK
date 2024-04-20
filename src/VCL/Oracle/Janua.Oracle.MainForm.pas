unit Janua.Oracle.MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DBAccess, UniDacVcl, Vcl.ComCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Data.DB, JvExControls, JvDBLookup, Vcl.Grids, Vcl.DBGrids, CRGrid,
  AdvMemo, AdvmSQLS, Vcl.Mask, AdvSpin, Janua.Oracle.ControlFileGenerator, DBAdvMemo, AdvEdit, AdvEdBtn,
  AdvDirectoryEdit, Vcl.Samples.Spin;

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
    DBGrid1: TDBGrid;
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
    tabQueryControlFile: TTabSheet;
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
    memTemplateSQL: TAdvMemo;
    memCtlTemplate: TAdvMemo;
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
  private
    { Private declarations }
    FTable: string;
    FControlFileConf: TControlFileConfig;
    procedure SetupControlFileConf;
  public
    { Public declarations }
  end;

var
  frmOracleSwissMilitaryMain: TfrmOracleSwissMilitaryMain;

implementation

{$R *.dfm}

uses Janua.Oracle.SchemaDatamodule, System.StrUtils;

procedure TfrmOracleSwissMilitaryMain.btnGenerateAllCtlClick(Sender: TObject);
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
  vTemplate := memTemplateSQL.Lines.Text;
  var
  vGTI := StringReplace(vTemplate, '$SCHEMA$', 'GTIA', []);
  vGTI := StringReplace(vGTI, '$TABLE$', FTable, []);
  ctlGTIA.Lines.Text := vGTI;
  ctlGTIA.Lines.Add(memTableCtrlFile.Lines.Text);
  var
  vFileName := dirGenerate.Text + '\VESVSCLOAD_' + edtExportNumber.Text + '_CTL_' + FTable + '_A.ctl';
  ctlGTIA.Lines.SaveToFile(vFileName);

  vGTI := StringReplace(vTemplate, '$SCHEMA$', 'GTIG', []);
  vGTI := StringReplace(vGTI, '$TABLE$', FTable, []);
  ctlGTIG.Lines.Text := vGTI;
  ctlGTIG.Lines.Add(memTableCtrlFile.Lines.Text);
  vFileName := dirGenerate.Text + '\VESVSCLOAD_' + edtExportNumber.Text + '_CTL_' + FTable + '_G.ctl';
  ctlGTIG.Lines.SaveToFile(vFileName);

  vGTI := StringReplace(vTemplate, '$SCHEMA$', 'GTIL', []);
  vGTI := StringReplace(vGTI, '$TABLE$', FTable, []);
  ctlGTIL.Lines.Text := vGTI;
  ctlGTIL.Lines.Add(memTableCtrlFile.Lines.Text);
  vFileName := dirGenerate.Text + '\VESVSCLOAD_' + edtExportNumber.Text + '_CTL_' + FTable + '_L.ctl';
  ctlGTIL.Lines.SaveToFile(vFileName);

  vGTI := StringReplace(vTemplate, '$SCHEMA$', 'GTIT', []);
  vGTI := StringReplace(vGTI, '$TABLE$', FTable, []);
  ctlGTIT.Lines.Text := vGTI;
  ctlGTIT.Lines.Add(memTableCtrlFile.Lines.Text);
  vFileName := dirGenerate.Text + '\VESVSCLOAD_' + edtExportNumber.Text + '_CTL_' + FTable + '_T.ctl';
  ctlGTIT.Lines.SaveToFile(vFileName);

end;

procedure TfrmOracleSwissMilitaryMain.btnGenerateAllSQLClick(Sender: TObject);
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
  vTemplate := memCtlTemplate.Lines.Text;
  var
  vGTI := StringReplace(vTemplate, '$CODE$', advMemTableCSV.Lines.Text, []);
  vGTI := StringReplace(vTemplate, '$SCHEMA$', 'GTIA', []);
  vGTI := StringReplace(vGTI, '$TABLE$', FTable, []);
  ctlGTIA.Lines.Text := vGTI;
  ctlGTIA.Lines.Add(memTableCtrlFile.Lines.Text);
  var
  vFileName := dirGenerate.Text + '\VESVSCLOAD_' + edtExportNumber.Text + '_CTL_' + FTable + '_A.ctl';
  ctlGTIA.Lines.SaveToFile(vFileName);

  vGTI := StringReplace(vTemplate, '$SCHEMA$', 'GTIG', []);
  vGTI := StringReplace(vGTI, '$TABLE$', FTable, []);
  ctlGTIG.Lines.Text := vGTI;
  ctlGTIG.Lines.Add(memTableCtrlFile.Lines.Text);
  vFileName := dirGenerate.Text + '\VESVSCLOAD_' + edtExportNumber.Text + '_CTL_' + FTable + '_G.ctl';
  ctlGTIG.Lines.SaveToFile(vFileName);

  vGTI := StringReplace(vTemplate, '$SCHEMA$', 'GTIL', []);
  vGTI := StringReplace(vGTI, '$TABLE$', FTable, []);
  ctlGTIL.Lines.Text := vGTI;
  ctlGTIL.Lines.Add(memTableCtrlFile.Lines.Text);
  vFileName := dirGenerate.Text + '\VESVSCLOAD_' + edtExportNumber.Text + '_CTL_' + FTable + '_L.ctl';
  ctlGTIL.Lines.SaveToFile(vFileName);

  vGTI := StringReplace(vTemplate, '$SCHEMA$', 'GTIT', []);
  vGTI := StringReplace(vGTI, '$TABLE$', FTable, []);
  ctlGTIT.Lines.Text := vGTI;
  ctlGTIT.Lines.Add(memTableCtrlFile.Lines.Text);
  vFileName := dirGenerate.Text + '\VESVSCLOAD_' + edtExportNumber.Text + '_CTL_' + FTable + '_T.ctl';
  ctlGTIT.Lines.SaveToFile(vFileName);

end;

procedure TfrmOracleSwissMilitaryMain.btnGenerateCSVClick(Sender: TObject);
begin
  // GenerateCSVSelectfromMetadata
  FTable := dsTables.DataSet.FieldByName('TABLE_NAME').AsString;
  SetupControlFileConf;
  dmOracleControlFile.ControlFileConf := FControlFileConf;
  advMemTableCSV.Lines.Text := dmOracleControlFile.GenerateCSVSelectfromMetadata(dsTableFields.DataSet);
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

procedure TfrmOracleSwissMilitaryMain.btnViewTAbleFieldsClick(Sender: TObject);
begin
  dmOracleSchema.qryTableFields.Open;
end;

procedure TfrmOracleSwissMilitaryMain.Button2Click(Sender: TObject);
begin
  dmOracleSchema.qrySchemaViews.Open;
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

end.
