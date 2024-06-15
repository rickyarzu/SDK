unit Janua.TMS.frmPgJormGenerator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // DB
  Data.DB,
  AdvmSQLS, AdvUtil, advmjson, AdvmPS, AdvMemo, AdvmWS, tmsAdvGridExcel, AdvObj, BaseGrid, AdvGrid,
  // VCL
  JvBaseDlg, JvSelectDirectory, VCL.Menus, VCL.Mask, VCL.Dialogs, VCL.Graphics, VCL.Grids, DBAdvGrid,
  VCL.ComCtrls, VCL.DBGrids, CRGrid,
  VCL.DBCtrls, JvExControls, JvDBLookup, VCL.StdCtrls, VCL.ExtCtrls, VCL.Controls, VCL.Forms, JvCsvData,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  // DataModules
  Janua.Framework.JormGenerator.Postgres,
  // Interposers
  Janua.VCL.EnhCRDBGrid, Janua.VCL.EnhDBGrid, Janua.VCL.Interposers, Janua.TMS.Interposers,
  Janua.VCL.FormController,
  Janua.Components.Grids, Janua.Core.Legacy, Janua.VCL.Geocoding, Janua.Components.Dialogs,
  Janua.Core.Classes, Janua.Core.Commons, Vcl.Buttons;

type
  TfrmVCLPgJormGenerator = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
    JanuaDialogText1: TJanuaDialogText;
    JanuaInputText1: TJanuaInputText;
    JanuaCoreLogger1: TJanuaCoreLogger;
    pmJormGenerator: TPopupMenu;
    ExportAsCSV1: TMenuItem;
    ExportAsExcel1: TMenuItem;
    AdvGridExcelIO1: TAdvGridExcelIO;
    FileSaveDialog1: TFileSaveDialog;
    CsvExport: TJvCsvDataSet;
    CsvExportTITLE: TWideStringField;
    CsvExportMINIMUM: TWideStringField;
    CsvExportMAXIMUM: TWideStringField;
    CsvExportROWS: TIntegerField;
    CsvExportDIFF: TIntegerField;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    Panel2: TPanel;
    lbCount: TLabel;
    lbtTot: TLabel;
    btnGenerate: TButton;
    edTableName: TLabeledEdit;
    edAbbreviation: TLabeledEdit;
    edKeys: TLabeledEdit;
    btnExecuteSql: TButton;
    btnSaveGuidGeneratorVTD: TButton;
    Button8: TButton;
    btnSchema: TButton;
    edPrefix: TLabeledEdit;
    btnGenerateJorm: TButton;
    btnTriggers: TButton;
    btnTrigger: TButton;
    btnAnalytics: TButton;
    edTableSchema: TJvDBLookupCombo;
    btnSchemaAnalytics: TButton;
    btnClear: TButton;
    DBAdvNavigator1: TDBNavigator;
    grdTAbles: TCRDBGrid;
    splLeftSide: TSplitter;
    Panel4: TPanel;
    grdColumns: TDBGrid;
    grdIndexFields: TDBGrid;
    grdTriggers: TCRDBGrid;
    PageControl4: TPageControl;
    TabSheet12: TTabSheet;
    memSQL: TAdvMemo;
    tabIntf: TTabSheet;
    memSourceIntf: TAdvMemo;
    tabCustomImpl: TTabSheet;
    MemSourceCustomImpl: TAdvMemo;
    TabSheet14: TTabSheet;
    MemSourceImpl: TAdvMemo;
    TabSheet17: TTabSheet;
    memSrvIntf: TAdvMemo;
    TabSheet18: TTabSheet;
    memSrvImpl: TAdvMemo;
    TabSheet19: TTabSheet;
    AdvMemo2: TAdvMemo;
    TabSheet20: TTabSheet;
    grdAnalysis: TDBAdvGrid;
    EnhDBGrid1: TDBGrid;
    splRightPanel: TSplitter;
    dsCsvExport: TDataSource;
    procedure btnSchemaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FDM: TdmPgFrameworkJormGenerator;
  public
    { Public declarations }
    procedure ExportCSVAnalytics(Sender: TObject);
  end;

var
  frmVCLPgJormGenerator: TfrmVCLPgJormGenerator;

implementation

uses
  Janua.VCL.dlgPgTablesList, Janua.Application.Framework, Janua.Core.Functions;

{$R *.dfm}

procedure TfrmVCLPgJormGenerator.btnSchemaClick(Sender: TObject);
var
  LdlgVCLPgTablesList: TdlgVCLPgTablesList;
begin
  FDM.SchemaClick(self);
  LdlgVCLPgTablesList := TdlgVCLPgTablesList.Create(self);
  try
    LdlgVCLPgTablesList.dsTablesList.DataSet := FDM.qrySchemaTables;
    LdlgVCLPgTablesList.ShowModal;
  finally
    LdlgVCLPgTablesList.Free;
    LdlgVCLPgTablesList := nil;
  end;
end;

procedure TfrmVCLPgJormGenerator.ExportCSVAnalytics(Sender: TObject);
begin
  if not CsvExport.Active then
    CsvExport.Open;

  if CsvExport.RecordCount > 0 then
  begin
    CsvExport.First;
    while not CsvExport.Eof do
      CsvExport.Delete;
  end;

  FDM.qryAnalisi.First;
  while not FDM.qryAnalisi.Eof do
  begin
    CsvExport.Append;
    CopyRecord(FDM.qryAnalisi, CsvExport);
    FDM.qryAnalisi.Next;
  end;

  CsvExport.ExportCsvFile('c:\januaproject\dati\' + FDM.GetSChemaTable + '.csv');
  AdvGridExcelIO1.XLSExport('c:\januaproject\dati\' + FDM.GetSChemaTable + '.xls');
end;

procedure TfrmVCLPgJormGenerator.FormCreate(Sender: TObject);
begin
  FDM := TdmPgFrameworkJormGenerator.Create(self);

  edTableName.Text := FDM.TableName;
  FDM.Bind('TableName', edTableName, 'Text', False);

  edAbbreviation.Text := FDM.Abbreviation;
  FDM.Bind('Abbreviation', edAbbreviation, 'Text', False);

  edKeys.Text := FDM.Keys;
  FDM.Bind('Keys', edKeys, 'Text', False);

  edPrefix.Text := FDM.Prefix;
  FDM.Bind('Prefix', edPrefix, 'Text', False);

  edTableSchema.Value := FDM.TableSchema;
  FDM.Bind('TableSchema', edTableSchema, 'Value', False);

  memSQL.Text := FDM.SQLText;
  FDM.Bind('SQLText', memSQL, 'Text', False);

  memSourceIntf.Text := FDM.SourceIntf;
  FDM.Bind('SourceIntf', memSourceIntf, 'Text', False);

  MemSourceImpl.Text := FDM.SourceImpl;
  FDM.Bind('SourceImpl', MemSourceImpl, 'Text', False);

  memSrvIntf.Text := FDM.SrvIntf;
  FDM.Bind('SrvIntf', memSrvIntf, 'Text', False);

  memSrvImpl.Text := FDM.SrvImpl;
  FDM.Bind('SrvImpl', memSrvImpl, 'Text', False);

  btnGenerate.OnClick := FDM.GenerateScriptsClick;
  btnClear.OnClick := FDM.ClearClick;
  btnExecuteSql.OnClick := FDM.ExecuteSqlClick;
  btnSaveGuidGeneratorVTD.OnClick := FDM.SaveGUIDGeneratorVTDClick;
  btnAnalytics.OnClick := FDM.AnalyticsClick;
  btnSchemaAnalytics.OnClick := FDM.SchemaAnalyticsClick;
  btnGenerateJorm.OnClick := FDM.GenerateJormClick;
  btnTrigger.OnClick := FDM.TriggerClick;
  btnTriggers.OnClick := FDM.TriggersClick;

  { procedure GenerateScriptsClick(Sender: TObject);
    procedure SchemaClick(Sender: TObject);
    procedure SaveGUIDGeneratorVTDClick(Sender: TObject);
    procedure TriggerClick(Sender: TObject);
    procedure TriggersClick(Sender: TObject);
    procedure GenerateJormClick(Sender: TObject); }

  grdTAbles.DataSource := FDM.dsGuidGenerator;
  grdIndexFields.DataSource := FDM.dsIndexFields;
  grdColumns.DataSource := FDM.dsColumns;
  grdTriggers.DataSource := FDM.dsTriggers;
  edTableSchema.LookupSource := FDM.dsSchemas;
  grdAnalysis.DataSource := FDM.dsAnalysis;

  FDM.AfterAnalytics := ExportCSVAnalytics;

  FDM.Activate;

  edTableSchema.Value := FDM.qrySchemasnspname.Value;

end;

end.
