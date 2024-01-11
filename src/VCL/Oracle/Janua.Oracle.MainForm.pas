unit Janua.Oracle.MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DBAccess, UniDacVcl, Vcl.ComCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Data.DB, JvExControls, JvDBLookup, Vcl.Grids, Vcl.DBGrids, CRGrid,
  AdvMemo, AdvmSQLS, Vcl.Mask, AdvSpin, Janua.Oracle.ControlFileGenerator;

type
  TfrmOracleSwissMilitaryMain = class(TForm)
    pnlToolBar: TPanel;
    btnLogin: TButton;
    UniConnectDialog1: TUniConnectDialog;
    pgcOracle: TPageControl;
    tabControlFile: TTabSheet;
    tabViewConrolFile: TTabSheet;
    tabQueryControlFile: TTabSheet;
    dsSchemas: TDataSource;
    CRDBGrid1: TCRDBGrid;
    dsTables: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    CRDBGrid2: TCRDBGrid;
    AdvSQLMemoStyler: TAdvSQLMemoStyler;
    btnGenerateTableControl: TButton;
    btnViewTAbleFields: TButton;
    DBGrid1: TDBGrid;
    dsTableFields: TDataSource;
    dsViews: TDataSource;
    Panel3: TPanel;
    Panel4: TPanel;
    Button1: TButton;
    btnOpenViewFields: TButton;
    AdvMemo2: TAdvMemo;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    lbSchemaSelection: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    dsViewFields: TDataSource;
    cboOperation: TComboBox;
    lbOperation: TLabel;
    edDestinationViewTeble: TEdit;
    Label1: TLabel;
    ckbINFILE: TCheckBox;
    edtInFile: TEdit;
    edtBadFile: TEdit;
    ckbBadFile: TCheckBox;
    edtDiscardFile: TEdit;
    ckbDiscardFile: TCheckBox;
    ckbTrailingNullCols: TCheckBox;
    lbTerminatedBy: TLabel;
    edTerminatedBy: TEdit;
    ckbOptionally: TCheckBox;
    lbEnclosedBy: TLabel;
    edEnclosedBy: TEdit;
    lbNlsNumericChar: TLabel;
    edNlsNumericChar: TEdit;
    lbDateTimeFormat: TLabel;
    edDateTimeConversion: TEdit;
    grpOptions: TGroupBox;
    ckbSkip: TCheckBox;
    AdvSpinEdit1: TAdvSpinEdit;
    ckbNumerics: TCheckBox;
    ckbParallel: TCheckBox;
    ckbMultiThreading: TCheckBox;
    ckbOptions: TCheckBox;
    lbTimeStamp: TLabel;
    edtTimeStamp: TEdit;
    btnGenerateCSV: TButton;
    pgcTableControlExport: TPageControl;
    tabControl: TTabSheet;
    tabExportCode: TTabSheet;
    TabSheet3: TTabSheet;
    memTableCtrlFile: TAdvMemo;
    advMemTableCSV: TAdvMemo;
    procedure btnLoginClick(Sender: TObject);
    procedure btnViewTAbleFieldsClick(Sender: TObject);
    procedure btnOpenViewFieldsClick(Sender: TObject);
    procedure btnGenerateTableControlClick(Sender: TObject);
    procedure btnGenerateCSVClick(Sender: TObject);
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

procedure TfrmOracleSwissMilitaryMain.btnGenerateCSVClick(Sender: TObject);
begin
  // GenerateCSVSelectfromMetadata
  FTable := dsTables.DataSet.FieldByName('TABLE_NAME').AsString;
  SetupControlFileConf;
  dmOracleControlFile.ControlFileConf := FControlFileConf;
  advMemTableCSV.Lines.Text := dmOracleControlFile.GenerateCSVSelectfromMetadata(dsTableFields.DataSet);
end;

procedure TfrmOracleSwissMilitaryMain.btnGenerateTableControlClick(Sender: TObject);
begin
  FTable := dsTables.DataSet.FieldByName('TABLE_NAME').AsString;
  SetupControlFileConf;
  dmOracleControlFile.ControlFileConf := FControlFileConf;
  memTableCtrlFile.Lines.Text := dmOracleControlFile.GenerateControlFileFromMetadata(dsTableFields.DataSet);
end;

procedure TfrmOracleSwissMilitaryMain.btnLoginClick(Sender: TObject);
begin
  dmOracleSchema.UniConnection1.ConnectDialog := self.UniConnectDialog1;
  dmOracleSchema.UniConnection1.Connect;
  if dmOracleSchema.UniConnection1.Connected then
  begin

  end;
end;

procedure TfrmOracleSwissMilitaryMain.btnOpenViewFieldsClick(Sender: TObject);
begin
  dmOracleSchema.qryViewFields.Open;
end;

procedure TfrmOracleSwissMilitaryMain.btnViewTAbleFieldsClick(Sender: TObject);
begin
  dmOracleSchema.qryTableFields.Open;
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
  //edtTimeStamp
  FControlFileConf.TimeStampFormat := edtTimeStamp.Text;
  FControlFileConf.UseGenerateNumericFormatting := ckbNumerics.Checked;
end;

end.
