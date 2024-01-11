unit Janua.FDAC.Phoenix.Reports;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Login, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Stan.StorageBin;

type
  TdmFDACPhoenixReports = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    fdMemEstintori: TFDMemTable;
    qryRapportinoIdranti: TFDQuery;
    tabEstintori: TFDTable;
    qryRapportinoEstintori: TFDQuery;
    qryRapportini: TFDQuery;
    tabEstintoriCHIAVE: TIntegerField;
    tabEstintoriCLIENTE: TIntegerField;
    tabEstintoriFILIALE: TIntegerField;
    tabEstintoriDATA_STARTUP_REV: TDateField;
    tabEstintoriTIPO_ESTINTORE: TIntegerField;
    tabEstintoriPROGRESSIVO: TIntegerField;
    tabEstintoriMATRICOLA: TStringField;
    tabEstintoriANNO_COSTRUZIONE: TSmallintField;
    tabEstintoriDATA_STARTUP_COL: TDateField;
    tabEstintoriSTATO: TStringField;
    tabEstintoriRINNOVATO_DA: TIntegerField;
    tabEstintoriANOMALIA_APPROVATA: TStringField;
    tabEstintoriANOMALIA: TMemoField;
    tabEstintoriUBICAZIONE: TMemoField;
    tabEstintoriPREC_ANOMALIA: TMemoField;
    tabEstintoriNOTE_TECNICO: TMemoField;
    tabEstintoriID_NFC: TStringField;
    tabEstintoriMARCA: TIntegerField;
    qryRapportiniCHIAVE: TIntegerField;
    qryRapportiniCLIENTE: TIntegerField;
    qryRapportiniFILIALE: TIntegerField;
    qryRapportiniTITOLO: TStringField;
    qryRapportiniRAGIONE_SOCIALE: TStringField;
    qryRapportiniINDIRIZZO: TStringField;
    qryRapportiniCOMUNE: TStringField;
    qryRapportiniPROVINCIA: TStringField;
    qryRapportiniCAP: TStringField;
    qryRapportiniTELEFONO: TStringField;
    qryRapportiniCELLULARE: TStringField;
    qryRapportiniNOTE: TMemoField;
    qryRapportiniORARIO_APERTURA_DAL1: TTimeField;
    qryRapportiniORARIO_APERTURA_DAL2: TTimeField;
    qryRapportiniORARIO_APERTURA_AL1: TTimeField;
    qryRapportiniORARIO_APERTURA_AL2: TTimeField;
    qryRapportiniCHIUSURA: TStringField;
    qryRapportiniFATTURA: TIntegerField;
    qryRapportiniDATA_INTERVENTO: TDateField;
    qryRapportiniGENERAZIONE_AUTOMATICA: TIntegerField;
    qryRapportiniTECNICO_INTERVENTO: TIntegerField;
    qryRapportiniSCANSIONE: TBlobField;
    qryRapportiniREGISTRO: TBlobField;
    qryRapportiniNOTE_PER_IL_TECNICO: TMemoField;
    qryRapportiniSOSPESO: TStringField;
    qryRapportiniDA_ESPORTARE_SUL_WEB: TStringField;
    qryRapportiniRESPONSABILE: TIntegerField;
    qryRapportiniESPORTATO_SU_MOBILE: TStringField;
    qryRapportiniNOTE_DAL_TECNICO: TMemoField;
    qryRapportiniJSON_DA_MOBILE: TMemoField;
    qryRapportiniPDF_STATINO: TMemoField;
    qryRapportiniREGISTRO_IS_PDF: TStringField;
    qryRapportiniVERBALE_PROVA_DINAMICA: TMemoField;
    qryRapportiniVERBALE_MANICHETTE: TMemoField;
    qryRapportiniPREVENTIVO: TIntegerField;
    qryRapportiniIGNORA_EVIDENZIAZIONE: TStringField;
    qryRapportiniANNULLATO_DA_TABLET: TStringField;
    qryRapportiniMOBILEWARN_NUOVA_ATTREZZATURA: TStringField;
    qryRapportiniMOBILEWARN_ORDINARIA_RITIRATA: TStringField;
    qryRapportiniMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField;
    qryRapportiniMOBILEWARN_SMALTIMENTO: TStringField;
    qryRapportiniSTATO_LAVORAZIONE: TStringField;
    qryRapportiniDATA_CHIUSURA_DA_SERVER: TDateField;
    qryRapportiniCHIUSURA_EXT: TStringField;
    qryRapportiniCHIUSURA_STATINO: TBlobField;
    qryRapportiniMOBILEWARN_NON_ESEGUITI: TStringField;
    qryRapportiniPRESA_IN_CARICO: TStringField;
    qryRapportiniFORNITURA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFDACPhoenixReports: TdmFDACPhoenixReports;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
