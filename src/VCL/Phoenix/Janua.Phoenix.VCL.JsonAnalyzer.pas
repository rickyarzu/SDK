unit Janua.Phoenix.VCL.JsonAnalyzer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.JSON,
  // VCL
   Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.ActiveX, Vcl.Edge, Vcl.ExtCtrls, Vcl.StdCtrls,
  AdvMemo, advmjson, Winapi.WebView2, Vcl.ComCtrls, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid,
  DBAccess, Uni, JvExControls, JvDBLookup, UniProvider, InterBaseUniProvider, MemDS;

type
  TfrmPhoenixVCLJsonAnalyzer = class(TForm)
    pnlTop: TPanel;
    OpenDialog1: TOpenDialog;
    btnLoadJson: TButton;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    AdvMemo1: TAdvMemo;
    EdgeBrowser2: TEdgeBrowser;
    pnlReportTop: TPanel;
    dsClienti: TUniDataSource;
    dsFiliali: TUniDataSource;
    UniConnection1: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    tbClienti: TUniTable;
    tbFiliali: TUniTable;
    Panel1: TPanel;
    dbMemoJsonReport: TDBMemo;
    CRDBGrid3: TCRDBGrid;
    CRDBGrid2: TCRDBGrid;
    CRDBGrid1: TCRDBGrid;
    memJsonPretty: TAdvMemo;
    dsStatini: TUniDataSource;
    tbFilialiCHIAVE: TIntegerField;
    tbFilialiCLIENTE: TIntegerField;
    tbFilialiNOME: TStringField;
    tbFilialiPROVINCIA: TStringField;
    tbFilialiCAP: TStringField;
    tbFilialiINDIRIZZO: TStringField;
    tbFilialiTELEFONO: TStringField;
    tbFilialiNOTE: TBlobField;
    tbFilialiORARIO_APERTURA_DAL1: TTimeField;
    tbFilialiORARIO_APERTURA_DAL2: TTimeField;
    tbFilialiORARIO_APERTURA_AL1: TTimeField;
    tbFilialiORARIO_APERTURA_AL2: TTimeField;
    tbFilialiCHIUSURA: TStringField;
    tbFilialiCELLULARE: TStringField;
    tbFilialiEMAIL: TStringField;
    tbFilialiESCLUDI_DA_GENERAZIONE: TStringField;
    tbFilialiSEDE: TStringField;
    tbFilialiID: TStringField;
    tbFilialiREF_TELEFONO: TStringField;
    tbFilialiREF_CELLULARE: TStringField;
    tbFilialiCOMUNE: TStringField;
    tbFilialiJGUID: TBytesField;
    tbFilialiFIL_WANUMBER: TStringField;
    tbStatini: TUniTable;
    tbStatiniCHIAVE: TIntegerField;
    tbStatiniCLIENTE: TIntegerField;
    tbStatiniFILIALE: TIntegerField;
    tbStatiniTITOLO: TStringField;
    tbStatiniRAGIONE_SOCIALE: TStringField;
    tbStatiniINDIRIZZO: TStringField;
    tbStatiniCOMUNE: TStringField;
    tbStatiniPROVINCIA: TStringField;
    tbStatiniCAP: TStringField;
    tbStatiniTELEFONO: TStringField;
    tbStatiniCELLULARE: TStringField;
    tbStatiniNOTE: TBlobField;
    tbStatiniORARIO_APERTURA_DAL1: TTimeField;
    tbStatiniORARIO_APERTURA_DAL2: TTimeField;
    tbStatiniORARIO_APERTURA_AL1: TTimeField;
    tbStatiniORARIO_APERTURA_AL2: TTimeField;
    tbStatiniCHIUSURA: TStringField;
    tbStatiniFATTURA: TIntegerField;
    tbStatiniDATA_INTERVENTO: TDateField;
    tbStatiniGENERAZIONE_AUTOMATICA: TIntegerField;
    tbStatiniTECNICO_INTERVENTO: TIntegerField;
    tbStatiniSCANSIONE: TBlobField;
    tbStatiniREGISTRO: TBlobField;
    tbStatiniNOTE_PER_IL_TECNICO: TBlobField;
    tbStatiniSOSPESO: TStringField;
    tbStatiniDA_ESPORTARE_SUL_WEB: TStringField;
    tbStatiniRESPONSABILE: TIntegerField;
    tbStatiniESPORTATO_SU_MOBILE: TStringField;
    tbStatiniNOTE_DAL_TECNICO: TBlobField;
    tbStatiniJSON_DA_MOBILE: TBlobField;
    tbStatiniPDF_STATINO: TBlobField;
    tbStatiniREGISTRO_IS_PDF: TStringField;
    tbStatiniVERBALE_PROVA_DINAMICA: TBlobField;
    tbStatiniVERBALE_MANICHETTE: TBlobField;
    tbStatiniPREVENTIVO: TIntegerField;
    tbStatiniIGNORA_EVIDENZIAZIONE: TStringField;
    tbStatiniANNULLATO_DA_TABLET: TStringField;
    tbStatiniMOBILEWARN_NUOVA_ATTREZZATURA: TStringField;
    tbStatiniMOBILEWARN_ORDINARIA_RITIRATA: TStringField;
    tbStatiniMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField;
    tbStatiniMOBILEWARN_SMALTIMENTO: TStringField;
    tbStatiniSTATO_LAVORAZIONE: TStringField;
    tbStatiniDATA_CHIUSURA_DA_SERVER: TDateField;
    tbStatiniCHIUSURA_EXT: TStringField;
    tbStatiniCHIUSURA_STATINO: TBlobField;
    tbStatiniMOBILEWARN_NON_ESEGUITI: TStringField;
    tbStatiniPRESA_IN_CARICO: TStringField;
    tbStatiniFORNITURA: TStringField;
    tbStatiniAPPUNTAMENTO_DATA: TDateField;
    tbStatiniAPPUNTAMENTO_ORA: TTimeField;
    tbStatiniSTATO: TSmallintField;
    tbStatiniJGUID: TBytesField;
    tbStatiniGCAL: TStringField;
    tbStatiniWANUMBER: TStringField;
    tbStatiniWA: TStringField;
    btnJsonPretty: TButton;
    dsMemoStatini: TUniDataSource;
    btnJsonOnOff: TButton;
    btnClipboard: TButton;
    procedure btnLoadJsonClick(Sender: TObject);
    procedure btnJsonPrettyClick(Sender: TObject);
    procedure btnJsonOnOffClick(Sender: TObject);
    procedure btnClipboardClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPhoenixVCLJsonAnalyzer: TfrmPhoenixVCLJsonAnalyzer;

implementation

uses Janua.Core.Json;

{$R *.dfm}

procedure TfrmPhoenixVCLJsonAnalyzer.btnClipboardClick(Sender: TObject);
begin
  dsMemoStatini.Enabled := True;
  btnJsonOnOff.Caption := 'Disattiva';
  dbMemoJsonReport.CopyToClipboard;
end;

procedure TfrmPhoenixVCLJsonAnalyzer.btnJsonOnOffClick(Sender: TObject);
begin
  if btnJsonOnOff.Caption = 'Attiva' then
  begin
  dsMemoStatini.Enabled := True;
  btnJsonOnOff.Caption := 'Disattiva'
  end
  else
  begin
  dsMemoStatini.Enabled := False;
  btnJsonOnOff.Caption := 'Attiva'
  end;

end;

procedure TfrmPhoenixVCLJsonAnalyzer.btnJsonPrettyClick(Sender: TObject);
begin
  dsMemoStatini.Enabled := True;
  btnJsonOnOff.Caption := 'Disattiva';
   memJsonPretty.Lines.Text := JsonPretty(dbMemoJsonReport.Lines.Text);

end;

procedure TfrmPhoenixVCLJsonAnalyzer.btnLoadJsonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    self.AdvMemo1.Lines.LoadFromFile(OpenDialog1.FileName)
end;

end.
