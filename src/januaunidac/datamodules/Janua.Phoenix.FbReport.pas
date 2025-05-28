unit Janua.Phoenix.FbReport;

interface

uses
  System.SysUtils, System.Classes, Janua.Phoenix.dmIBModel, Janua.Interbase.dmModel, UniProvider,
  InterBaseUniProvider, Data.DB, DBAccess, Uni, Janua.Unidac.Connection, MemDS;

type
  TdmPhoenixFbReport = class(TdmJanuaInterbaseModel)
    qryStatini: TUniQuery;
    dsStatini: TUniDataSource;
    qryStatiniAMMINISTRATORE: TStringField;
    qryStatiniCONTRATTO: TStringField;
    qryStatiniLOCAZIONE: TStringField;
    qryStatiniNOME_TECNICO: TStringField;
    qryStatiniINDIRIZZO_FILIALE: TStringField;
    qryStatiniCHIAVE: TIntegerField;
    qryStatiniCLIENTE: TIntegerField;
    qryStatiniFILIALE: TIntegerField;
    qryStatiniTITOLO: TStringField;
    qryStatiniRAGIONE_SOCIALE: TStringField;
    qryStatiniINDIRIZZO: TStringField;
    qryStatiniCOMUNE: TStringField;
    qryStatiniPROVINCIA: TStringField;
    qryStatiniCAP: TStringField;
    qryStatiniTELEFONO: TStringField;
    qryStatiniCELLULARE: TStringField;
    qryStatiniNOTE: TBlobField;
    qryStatiniORARIO_APERTURA_DAL1: TTimeField;
    qryStatiniORARIO_APERTURA_DAL2: TTimeField;
    qryStatiniORARIO_APERTURA_AL1: TTimeField;
    qryStatiniORARIO_APERTURA_AL2: TTimeField;
    qryStatiniCHIUSURA: TStringField;
    qryStatiniFATTURA: TIntegerField;
    qryStatiniDATA_INTERVENTO: TDateField;
    qryStatiniGENERAZIONE_AUTOMATICA: TIntegerField;
    qryStatiniTECNICO_INTERVENTO: TIntegerField;
    qryStatiniSCANSIONE: TBlobField;
    qryStatiniREGISTRO: TBlobField;
    qryStatiniNOTE_PER_IL_TECNICO: TBlobField;
    qryStatiniSOSPESO: TStringField;
    qryStatiniDA_ESPORTARE_SUL_WEB: TStringField;
    qryStatiniRESPONSABILE: TIntegerField;
    qryStatiniESPORTATO_SU_MOBILE: TStringField;
    qryStatiniNOTE_DAL_TECNICO: TBlobField;
    qryStatiniJSON_DA_MOBILE: TBlobField;
    qryStatiniPDF_STATINO: TBlobField;
    qryStatiniREGISTRO_IS_PDF: TStringField;
    qryStatiniVERBALE_PROVA_DINAMICA: TBlobField;
    qryStatiniVERBALE_MANICHETTE: TBlobField;
    qryStatiniPREVENTIVO: TIntegerField;
    qryStatiniIGNORA_EVIDENZIAZIONE: TStringField;
    qryStatiniANNULLATO_DA_TABLET: TStringField;
    qryStatiniMOBILEWARN_NUOVA_ATTREZZATURA: TStringField;
    qryStatiniMOBILEWARN_ORDINARIA_RITIRATA: TStringField;
    qryStatiniMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField;
    qryStatiniMOBILEWARN_SMALTIMENTO: TStringField;
    qryStatiniSTATO_LAVORAZIONE: TStringField;
    qryStatiniDATA_CHIUSURA_DA_SERVER: TDateField;
    qryStatiniCHIUSURA_EXT: TStringField;
    qryStatiniCHIUSURA_STATINO: TBlobField;
    qryStatiniMOBILEWARN_NON_ESEGUITI: TStringField;
    qryStatiniPRESA_IN_CARICO: TStringField;
    qryStatiniFORNITURA: TStringField;
    qryStatiniAPPUNTAMENTO_DATA: TDateField;
    qryStatiniAPPUNTAMENTO_ORA: TTimeField;
    qryStatiniSTATO: TSmallintField;
    qryStatiniJGUID: TBytesField;
    qryStatiniGCAL: TStringField;
    qryStatiniWANUMBER: TStringField;
    qryStatiniWA: TStringField;
    qryStatiniSTATO_IMMAGINE: TBlobField;
    qryStatiniWA_ID: TStringField;
    qryStatiniWA_IMAGE: TBlobField;
    qryStatiniWA_STATE: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPhoenixFbReport: TdmPhoenixFbReport;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
