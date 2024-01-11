unit Janua.Phoenix.FbMaintenanceReport;

interface

uses
  System.SysUtils, System.Classes, UniProvider, InterBaseUniProvider, Data.DB, DBAccess, Uni,
  Janua.Unidac.Connection, MemDS;

type
  TdmFBPhonixMantReport = class(TDataModule)
    uprInterbase: TInterBaseUniProvider;
    uconPhoenix: TJanuaUniConnection;
    qryAnomalie: TUniQuery;
    qryEstintori: TUniQuery;
    qryEstintoriCHIAVE: TIntegerField;
    qryEstintoriSTATINO: TIntegerField;
    qryEstintoriESTINTORE: TIntegerField;
    qryEstintoriTIPO: TStringField;
    qryEstintoriDESCRIZIONE_ALTERNATIVA: TStringField;
    qryEstintoriRESET_DATA_COLLAUDO: TStringField;
    qryEstintoriRESET_DATA_REVISIONE: TStringField;
    qryEstintoriANOMALIA: TStringField;
    qryEstintoriDATA_CONTROLLO: TDateField;
    qryEstintoriDATA_RITIRO: TDateField;
    qryEstintoriDATA_SMALTIMENTO: TDateField;
    qryEstintoriDATA_RESTITUZIONE: TDateField;
    qryEstintoriDATA_CONSEGNA: TDateField;
    qryEstintoriDATA_CONTROLLO_NEGATO: TDateField;
    qryAnomalieCHIAVE: TIntegerField;
    qryAnomalieSTATINO: TIntegerField;
    qryAnomalieATTREZZATURA: TIntegerField;
    qryAnomalieTIPO_ATTREZZATURA: TStringField;
    qryAnomalieANOMALIA: TStringField;
    qryAnomalieTIPO: TStringField;
    qryAnomalieDATA_CONTROLLO: TDateField;
    qryAnomalieDATA_CONSEGNA: TDateField;
    qryAnomaliePERIODI_NON_ORDINARI: TStringField;
    qryAnomalieDATA_CONTROLLO_NEGATO: TDateField;
    qryAnomalieB_ANOMALIA: TLargeintField;
    qryIdranti: TUniQuery;
    qryImpiantiElettrici: TUniQuery;
    qryImpiantiElettriciCHIAVE: TIntegerField;
    qryImpiantiElettriciSTATINO: TIntegerField;
    qryImpiantiElettriciELEMENTO_IMPIANTO_ELETTRICO: TIntegerField;
    qryImpiantiElettriciANOMALIA: TStringField;
    qryImpiantiElettriciDATA_CONTROLLO: TDateField;
    qryImpiantiElettriciTIPO: TStringField;
    qryImpiantiElettriciDATA_CONSEGNA: TDateField;
    qryImpiantiElettriciDESCRIZIONE_ALTERNATIVA: TStringField;
    qryImpiantiElettriciDATA_CONTROLLO_NEGATO: TDateField;
    qryStatini: TUniQuery;
    dsStatini: TUniDataSource;
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
    fldStatiniORARIO_APERTURA_DAL1: TTimeField;
    fldStatiniORARIO_APERTURA_DAL2: TTimeField;
    fldStatiniORARIO_APERTURA_AL1: TTimeField;
    fldStatiniORARIO_APERTURA_AL2: TTimeField;
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
    qryProgrammazioneStatini: TUniQuery;
    qryProgrammazioneStatiniSTATINO: TIntegerField;
    qryProgrammazioneStatiniDATA_PROGRAMMAZIONE: TDateField;
    fldProgrammazioneStatiniORA: TTimeField;
    qryProgrammazioneStatiniINVIATO: TStringField;
    qryProgrammazioneStatiniNOTE: TBlobField;
    qryProgrammazioneStatiniELIMINATO: TStringField;
    qryProgrammazioneStatiniFISSATO_DAL_TECNICO: TStringField;
    qryClienti: TUniQuery;
    UniQuery1: TUniQuery;
    qryClientiCHIAVE: TIntegerField;
    qryClientiVISITA_FATTURAZIONE_ORDINARIA: TSmallintField;
    qryClientiPARTITA_IVA: TStringField;
    qryClientiCODICE_FISCALE: TStringField;
    qryClientiEMAIL: TStringField;
    qryClientiINDIRIZZO_FATTURAZIONE: TStringField;
    qryClientiPROVINCIA_FATTURAZIONE: TStringField;
    qryClientiCAP_FATTURAZIONE: TStringField;
    qryClientiINDIRIZZO_SPEDIZIONE: TStringField;
    qryClientiCAP_SPEDIZIONE: TStringField;
    qryClientiPROVINCIA_SPEDIZIONE: TStringField;
    qryClientiNOTE: TBlobField;
    qryClientiPRESSO: TStringField;
    qryClientiTITOLO: TStringField;
    qryClientiPREZZO_ORDINARIE_SPRINKLER: TIntegerField;
    qryClientiPREZZO_ORDINARIE_FUMI: TIntegerField;
    qryClientiPREZZO_ORDINARIE_LUCI: TIntegerField;
    qryClientiPREZZO_ORDINARIE_PORTE: TIntegerField;
    qryClientiPREZZO_ORDINARIE_IDRANTI: TIntegerField;
    qryClientiPREZZO_COLLAUDI_IDRANTI: TIntegerField;
    qryClientiNOTE_NASCOSTE: TBlobField;
    qryClientiAMMINISTRATORE: TIntegerField;
    qryClientiDESCRIZIONE_SCHEDA: TStringField;
    qryClientiCOND_PAGAMENTO: TIntegerField;
    qryClientiISTAT: TStringField;
    qryClientiESENTE_IVA: TStringField;
    qryClientiNOTE_IN_FATTURA: TStringField;
    qryClientiRITENUTA: TSmallintField;
    qryClientiDISDETTATO: TStringField;
    qryClientiMANUALE: TStringField;
    qryClientiDATA_CONTRATTO: TDateField;
    qryClientiORDINA_X_UBICAZIONE: TStringField;
    qryClientiNON_CONFERMATO: TStringField;
    qryClientiSOSPESO: TStringField;
    qryClientiDATA_DIFFERITA: TDateField;
    qryClientiDA_ESPORTARE_SUL_WEB: TStringField;
    qryClientiCOSTO_SOSTITUZIONE_VALVOLA: TIntegerField;
    qryClientiRESPONSABILE: TIntegerField;
    qryClientiESTINTORI_VISIBILI: TStringField;
    qryClientiSPRINKLER_VISIBILI: TStringField;
    qryClientiLUCI_VISIBILI: TStringField;
    qryClientiRIL_FUMO_VISIBILI: TStringField;
    qryClientiPORTE_VISIBILI: TStringField;
    qryClientiGRUPPO_PRESS_VISIBILE: TStringField;
    qryClientiIMPIANTO_IDRANTI_VISIBILE: TStringField;
    qryClientiGRUPPO_PREZZO_VISITA_SEMESTRALE: TIntegerField;
    qryClientiGRUPPO_PREZZO_VISITA_TRIMEST: TIntegerField;
    qryClientiGRUPPO_PREZZO_VISITA_MENSILE: TIntegerField;
    qryClientiGRUPPO_TIPO_VISITE: TStringField;
    qryClientiPREZZO_SEMESTRALE_SPRINKLER: TIntegerField;
    qryClientiSPRINKLER_TIPO_VISITE: TStringField;
    qryClientiIVA: TSmallintField;
    qryClientiFATTURA_ANTICIPATA: TStringField;
    qryClientiNATURA_IVA: TSmallintField;
    qryClientiRAGIONE_SOCIALE: TStringField;
    qryClientiCOMUNE_FATTURAZIONE: TStringField;
    qryClientiCOMUNE_SPEDIZIONE: TStringField;
    qryClientiTELEFONO1: TStringField;
    qryClientiCELLULARE: TStringField;
    qryClientiTELEFONO2: TStringField;
    qryClientiFAX: TStringField;
    qryClientiBANCA_APPOGGIO: TStringField;
    qryClientiABI: TStringField;
    qryClientiCAB: TStringField;
    qryClientiNR_CIVICO: TStringField;
    qryClientiIMPIANTI_ELETTRICI_VISIBILI: TStringField;
    qryClientiSOSPENSIONE_TEMPORANEA: TStringField;
    qryClientiINIZIO_SOSP_TEMPORANEA: TDateField;
    qryClientiMOTIV_SOSP_TEMPORANEA: TStringField;
    UniQuery2: TUniQuery;
    tblPreventivi: TUniTable;
    qryEstintoriDATA_STARTUP_REV: TDateField;
    qryEstintoriTIPO_ESTINTORE: TIntegerField;
    qryEstintoriPROGRESSIVO: TIntegerField;
    qryEstintoriMATRICOLA: TStringField;
    qryEstintoriANNO_COSTRUZIONE: TSmallintField;
    qryEstintoriDATA_STARTUP_COL: TDateField;
    qryEstintoriSTATO: TStringField;
    qryEstintoriRINNOVATO_DA: TIntegerField;
    qryEstintoriANOMALIA_APPROVATA: TStringField;
    qryEstintoriUBICAZIONE: TBlobField;
    qryEstintoriPREC_ANOMALIA: TBlobField;
    qryEstintoriNOTE_TECNICO: TBlobField;
    qryEstintoriID_NFC: TStringField;
    qryEstintoriMARCA: TIntegerField;
    qryEstintoriDESCRIZIONE_MARCA: TStringField;
    qryEstintoriANOMALIA_ESTINTORE: TBlobField;
    qryStatiniJSON_DA_MOBILE: TBlobField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFBPhonixMantReport: TdmFBPhonixMantReport;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
