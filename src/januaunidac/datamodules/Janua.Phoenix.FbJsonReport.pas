unit Janua.Phoenix.FbJsonReport;

interface

uses
  System.SysUtils, System.Classes,
  // DAC
  UniProvider, InterBaseUniProvider, Data.DB, DBAccess, Uni, MemDS,
  // Phoenix
  Phoenix.JSON.Config.DTO, Phoenix.Json.Statini.DTO,
  Janua.Phoenix.dmIBModel, Janua.Interbase.dmModel, Janua.Unidac.Connection;

type
  TdmFbPhoenixJsonReport = class(TdmJanuaInterbaseModel)
    qryStatini: TUniQuery;
    tbLuci: TUniTable;
    tbEstintori: TUniTable;
    tbIdranti: TUniTable;
    tbBocchelli: TUniTable;
    dsStatini: TUniDataSource;
    dsIdranti: TUniDataSource;
    tbRilFumo: TUniTable;
    tbPorte: TUniTable;
    tbGruppi: TUniTable;
    tbElementi: TUniTable;
    tbImpianti: TUniTable;
    dsImpianti: TUniDataSource;
    tbElementiSTATINO: TIntegerField;
    tbElementiIMPIANTO: TIntegerField;
    tbElementiANOMALIA: TStringField;
    tbElementiANOMALIA_APPROVATA: TStringField;
    tbElementiANOMALIAONDOWNLOAD: TStringField;
    tbElementiANOMALIARISOLTA: TStringField;
    tbElementiCHIAVE: TIntegerField;
    tbElementiCONTROLLATO: TStringField;
    tbElementiDATACONTROLLO: TDateField;
    tbElementiMARCA: TIntegerField;
    tbElementiMODELLO: TStringField;
    tbElementiORARIOCONTROLLO: TStringField;
    tbElementiPROGRESSIVO: TIntegerField;
    tbElementiSTATO: TStringField;
    tbElementiTIPO: TIntegerField;
    tbElementiTIPO_INTERVENTO: TStringField;
    tbElementiTECNICOCONTROLLO: TIntegerField;
    tbElementiUBICAZIONE: TStringField;
    tbImpiantiSTATINO: TIntegerField;
    tbImpiantiCHIAVE: TIntegerField;
    tbImpiantiDESCRIZIONE: TStringField;
    tbImpiantiPREZZO: TIntegerField;
    tbImpiantiSTATO: TStringField;
    tbImpiantiTIPO_VISITA: TStringField;
    tbImpiantiUBICAZIONE: TStringField;
    tbPorteSTATINO: TIntegerField;
    tbPorteANNO_COSTRUZIONE: TIntegerField;
    tbPorteANOMALIA: TStringField;
    tbPorteANOMALIA_APPROVATA: TStringField;
    tbPorteANTE: TStringField;
    tbPorteANOMALIAONDOWNLOAD: TStringField;
    tbPorteANOMALIARISOLTA: TStringField;
    tbPorteCHIAVE: TIntegerField;
    tbPorteCONSEGNATO: TStringField;
    tbPorteCONTROLLATO: TStringField;
    tbPorteDIMENSIONE: TStringField;
    tbPorteDATACONTROLLO: TDateField;
    tbPorteID_NFC: TStringField;
    tbPorteMARCA: TIntegerField;
    tbPorteMARCA_MANIGLIONE: TIntegerField;
    tbPorteMATRICOLA: TStringField;
    tbPorteNOTE_TECNICO: TStringField;
    tbPorteORARIOCONTROLLO: TStringField;
    tbPortePROGRESSIVO: TIntegerField;
    tbPorteSTATO: TStringField;
    tbPorteTIPO: TIntegerField;
    tbPorteTIPO_GUARNIZIONE: TIntegerField;
    tbPorteTIPO_INSTALLAZIONE: TIntegerField;
    tbPorteTIPO_INTERVENTO: TStringField;
    tbPorteTIPO_MANIGLIA_ESTERNA: TIntegerField;
    tbPorteTIPO_MANIGLIONE: TIntegerField;
    tbPorteTIPO_SERRATURA_ANTA_PRINCIPALE: TIntegerField;
    tbPorteTIPO_SERRATURA_ANTA_SECONDARIA: TIntegerField;
    tbPorteTECNICOCONTROLLO: TIntegerField;
    tbPorteUBICAZIONE: TStringField;
    tbGruppiSTATINO: TIntegerField;
    tbGruppiANOMALIA: TStringField;
    tbGruppiANOMALIA_APPROVATA: TStringField;
    tbGruppiANOMALIAONDOWNLOAD: TStringField;
    tbGruppiANOMALIARISOLTA: TStringField;
    tbGruppiCHIAVE: TIntegerField;
    tbGruppiCONTROLLATO: TStringField;
    tbGruppiDESCRIZIONE: TStringField;
    tbGruppiDATACONTROLLO: TDateField;
    tbGruppiID_NFC: TStringField;
    tbGruppiMARCA_MISURATORE_PORTATA: TStringField;
    tbGruppiMARCA_MOTOPOMPA: TStringField;
    tbGruppiMARCA_POMPA_JOCKEY: TStringField;
    tbGruppiMARCA_POMPA_PORTATA: TStringField;
    tbGruppiMODELLO_MISURATORE_PORTATA: TStringField;
    tbGruppiMODELLO_MOTOPOMPA: TStringField;
    tbGruppiMODELLO_POMPA_JOCKEY: TStringField;
    tbGruppiMODELLO_POMPA_PORTATA: TStringField;
    tbGruppiNOTE: TStringField;
    tbGruppiNONCONTROLLATO: TStringField;
    tbGruppiORARIOCONTROLLO: TStringField;
    tbGruppiSTATO: TStringField;
    tbGruppiTIPO_BATTERIE: TStringField;
    tbGruppiTIPO_INTERVENTO: TStringField;
    tbGruppiTIPO_MOTOPOMPA: TStringField;
    tbGruppiTIPO_POMPA_JOCKEY: TStringField;
    tbGruppiTIPO_POMPA_PORTATA: TStringField;
    tbGruppiTIPO_STAZIONE: TStringField;
    tbGruppiTIPO_VISITA: TStringField;
    tbGruppiTECNICOCONTROLLO: TIntegerField;
    tbGruppiVASI_ESPANSIONE: TStringField;
    tbIdrantiSTATINO: TIntegerField;
    tbIdrantiCHIAVE: TIntegerField;
    tbIdrantiDESCRIZIONE: TStringField;
    tbIdrantiPROVA_DINAMICA: TIntegerField;
    tbIdrantiQUANDO_PROVA_DINAMICA: TStringField;
    tbIdrantiSTATO: TStringField;
    tbIdrantiSUGGERIMENTOLUNGHMANICHETTA: TStringField;
    tbIdrantiSUGGERIMENTOTIPIBOCCHELLI: TStringField;
    tbIdrantiTIPO: TStringField;
    tbIdrantiTIPO_ATTACCO_MOTOPOMPA: TStringField;
    tbIdrantiUBICAZIONE: TStringField;
    tbIdrantiUBICAZIONE_ATTACCO_MOTOPOMPA: TStringField;
    tbIdrantiVALVOLA_INTERCETTAZIONE: TStringField;
    tbBocchelliSTATINO: TIntegerField;
    tbBocchelliIDRANTE: TIntegerField;
    tbBocchelliANNO_MANICHETTA: TStringField;
    tbBocchelliANNO_PRESSATURA: TStringField;
    tbBocchelliANNO_STARTUP: TIntegerField;
    tbBocchelliANOMALIA: TStringField;
    tbBocchelliANOMALIA_APPROVATA: TStringField;
    tbBocchelliANOMALIAONDOWNLOAD: TStringField;
    tbBocchelliANOMALIARISOLTA: TStringField;
    tbBocchelliCHIAVE: TIntegerField;
    tbBocchelliCONSEGNATO: TStringField;
    tbBocchelliCONTROLLATO: TStringField;
    tbBocchelliDATACONTROLLO: TDateField;
    tbBocchelliDATAPRESSATURA: TDateField;
    tbBocchelliDATARITIRO: TDateField;
    tbBocchelliID_BOCCHELLO: TIntegerField;
    tbBocchelliID_NFC: TStringField;
    tbBocchelliLUNGHEZZA_MANICHETTA: TIntegerField;
    tbBocchelliMESE_PRESSATURA: TStringField;
    tbBocchelliMESE_STARTUP: TIntegerField;
    tbBocchelliNOTE_TECNICO: TStringField;
    tbBocchelliORARIOCONTROLLO: TStringField;
    tbBocchelliORARIORITIRO: TStringField;
    tbBocchelliPRESSATURAEFFETTUATA: TStringField;
    tbBocchelliRITIRATO: TStringField;
    tbBocchelliSTATO: TStringField;
    tbBocchelliTIPO_BOCCHELLO: TIntegerField;
    tbBocchelliTIPO_INTERVENTO: TStringField;
    tbBocchelliTIPO_LANCIA: TIntegerField;
    tbBocchelliTECNICOCONTROLLO: TIntegerField;
    tbBocchelliTECNICOPRESSATURA: TIntegerField;
    tbBocchelliTECNICORITIRO: TIntegerField;
    tbBocchelliUBICAZIONE: TStringField;
    tbLuciSTATINO: TIntegerField;
    tbLuciANOMALIA: TStringField;
    tbLuciANOMALIA_APPROVATA: TStringField;
    tbLuciAUTONOMIA: TIntegerField;
    tbLuciANOMALIAONDOWNLOAD: TStringField;
    tbLuciANOMALIARISOLTA: TStringField;
    tbLuciCHIAVE: TIntegerField;
    tbLuciCONSEGNATO: TStringField;
    tbLuciCONTROLLATO: TStringField;
    tbLuciDATACONTROLLO: TDateField;
    tbLuciID_NFC: TStringField;
    tbLuciMARCA: TIntegerField;
    tbLuciMODELLO: TStringField;
    tbLuciNOTE_TECNICO: TStringField;
    tbLuciORARIOCONTROLLO: TStringField;
    tbLuciPROGRESSIVO: TIntegerField;
    tbLuciSTATO: TStringField;
    tbLuciTIPO_INTERVENTO: TStringField;
    tbLuciTIPO_LUCE: TIntegerField;
    tbLuciTECNICOCONTROLLO: TIntegerField;
    tbLuciUBICAZIONE: TStringField;
    tbEstintoriSTATINO: TIntegerField;
    tbEstintoriANNO_COSTRUZIONE: TStringField;
    tbEstintoriANOMALIA: TStringField;
    tbEstintoriANOMALIA_APPROVATA: TStringField;
    tbEstintoriAGGIUNTODAMOBILE: TStringField;
    tbEstintoriANOMALIAONDOWNLOAD: TStringField;
    tbEstintoriANOMALIARISOLTA: TStringField;
    tbEstintoriCHIAVE: TIntegerField;
    tbEstintoriCONSEGNATO: TStringField;
    tbEstintoriCONTROLLATO: TStringField;
    tbEstintoriDATA_LAVORAZIONE: TDateField;
    tbEstintoriDATA_STARTUP_COL: TStringField;
    tbEstintoriDATA_STARTUP_REV: TStringField;
    tbEstintoriDATACONSEGNA: TDateField;
    tbEstintoriDATACONTROLLO: TDateField;
    tbEstintoriDATACONTROLLONEGATO: TDateField;
    tbEstintoriDATARESTITUZIONE: TDateField;
    tbEstintoriDATARITIRO: TDateField;
    tbEstintoriDATASMALTIMENTO: TDateField;
    tbEstintoriID_NFC: TStringField;
    tbEstintoriMARCA: TIntegerField;
    tbEstintoriMATRICOLA: TStringField;
    tbEstintoriMOTIVOCONTROLLONEGATO: TStringField;
    tbEstintoriMOTIVORITIRO: TStringField;
    tbEstintoriNOTE_TECNICO: TStringField;
    tbEstintoriNONCONTROLLATO: TStringField;
    tbEstintoriORARIOCONSEGNA: TStringField;
    tbEstintoriORARIOCONTROLLO: TStringField;
    tbEstintoriORARIOCONTROLLONEGATO: TStringField;
    tbEstintoriORARIORITIRO: TStringField;
    tbEstintoriORARIOSMALTIMENTO: TStringField;
    tbEstintoriPERIODICITA_COLLAUDO: TIntegerField;
    tbEstintoriPERIODICITA_REVISIONE: TIntegerField;
    tbEstintoriPROGRESSIVO: TIntegerField;
    tbEstintoriRESTITUITO: TStringField;
    tbEstintoriRITIRATO: TStringField;
    tbEstintoriSTATO: TStringField;
    tbEstintoriSMALTITO: TStringField;
    tbEstintoriTIPO_ESTINTORE: TIntegerField;
    tbEstintoriTIPO_INTERVENTO: TStringField;
    tbEstintoriTECNICOCONSEGNA: TIntegerField;
    tbEstintoriTECNICOCONTROLLO: TIntegerField;
    tbEstintoriTECNICOCONTROLLONEGATO: TIntegerField;
    tbEstintoriTECNICORESTITUZIONE: TIntegerField;
    tbEstintoriTECNICORITIRO: TIntegerField;
    tbEstintoriTECNICOSMALTIMENTO: TIntegerField;
    tbEstintoriUBICAZIONE: TStringField;
    tbRilFumoSTATINO: TIntegerField;
    tbRilFumoANOMALIA: TStringField;
    tbRilFumoANOMALIA_APPROVATA: TStringField;
    tbRilFumoANOMALIAONDOWNLOAD: TStringField;
    tbRilFumoANOMALIARISOLTA: TStringField;
    tbRilFumoCHIAVE: TIntegerField;
    tbRilFumoCONTROLLATO: TStringField;
    tbRilFumoDESCRIZIONE: TStringField;
    tbRilFumoDATACONTROLLO: TDateField;
    tbRilFumoID_NFC: TStringField;
    tbRilFumoMARCA_CENTRALE: TStringField;
    tbRilFumoMARCA_RIL_LINEARI: TStringField;
    tbRilFumoNOTE_TECNICO: TStringField;
    tbRilFumoNONCONTROLLATO: TStringField;
    tbRilFumoORARIOCONTROLLO: TStringField;
    tbRilFumoQUANTITA_BATTERIE: TStringField;
    tbRilFumoQUANTITA_PANNELLI_OTT_ACUST: TStringField;
    tbRilFumoQUANTITA_PULSANTI: TStringField;
    tbRilFumoQUANTITA_RILEVATORI: TStringField;
    tbRilFumoQUANTITA_RIL_LINEARI: TStringField;
    tbRilFumoSTATO: TStringField;
    tbRilFumoTIPI_RILEVATORI_LINEARI_FUMI: TStringField;
    tbRilFumoTIPO_BATTERIE: TDateField;
    tbRilFumoTIPO_CENTRALE: TStringField;
    tbRilFumoTIPO_INTERVENTO: TStringField;
    tbRilFumoTIPO_RILEVATORI: TStringField;
    tbRilFumoTIPO_RIL_LINEARI: TStringField;
    tbRilFumoTECNICOCONTROLLO: TIntegerField;
    tbRilFumoUBICAZIONE: TStringField;
    qryStatiniLuci: TUniQuery;
    qryCheckListLuci: TUniQuery;
    qryInterventiLuci: TUniQuery;
    dsStatiniLuci: TUniDataSource;
    dsInterventiLuci: TUniDataSource;
    dsCheckListLuci: TUniDataSource;
    qryStatiniCHIAVE: TIntegerField;
    qryStatiniCLIENTE: TIntegerField;
    qryStatiniFILIALE: TIntegerField;
    qryStatiniTITOLO: TWideStringField;
    qryStatiniRAGIONE_SOCIALE: TWideStringField;
    qryStatiniINDIRIZZO: TWideStringField;
    qryStatiniCOMUNE: TWideStringField;
    qryStatiniPROVINCIA: TWideStringField;
    qryStatiniCAP: TWideStringField;
    qryStatiniTELEFONO: TWideStringField;
    qryStatiniCELLULARE: TWideStringField;
    qryStatiniNOTE: TBlobField;
    qryStatiniORARIO_APERTURA_DAL1: TTimeField;
    qryStatiniORARIO_APERTURA_DAL2: TTimeField;
    qryStatiniORARIO_APERTURA_AL1: TTimeField;
    qryStatiniORARIO_APERTURA_AL2: TTimeField;
    qryStatiniCHIUSURA: TWideStringField;
    qryStatiniFATTURA: TIntegerField;
    qryStatiniDATA_INTERVENTO: TDateField;
    qryStatiniGENERAZIONE_AUTOMATICA: TIntegerField;
    qryStatiniTECNICO_INTERVENTO: TIntegerField;
    qryStatiniSCANSIONE: TBlobField;
    qryStatiniREGISTRO: TBlobField;
    qryStatiniNOTE_PER_IL_TECNICO: TBlobField;
    qryStatiniSOSPESO: TWideStringField;
    qryStatiniDA_ESPORTARE_SUL_WEB: TWideStringField;
    qryStatiniRESPONSABILE: TIntegerField;
    qryStatiniESPORTATO_SU_MOBILE: TWideStringField;
    qryStatiniNOTE_DAL_TECNICO: TBlobField;
    qryStatiniJSON_DA_MOBILE: TBlobField;
    qryStatiniPDF_STATINO: TBlobField;
    qryStatiniREGISTRO_IS_PDF: TWideStringField;
    qryStatiniVERBALE_PROVA_DINAMICA: TBlobField;
    qryStatiniVERBALE_MANICHETTE: TBlobField;
    qryStatiniPREVENTIVO: TIntegerField;
    qryStatiniIGNORA_EVIDENZIAZIONE: TWideStringField;
    qryStatiniANNULLATO_DA_TABLET: TWideStringField;
    qryStatiniMOBILEWARN_NUOVA_ATTREZZATURA: TWideStringField;
    qryStatiniMOBILEWARN_ORDINARIA_RITIRATA: TWideStringField;
    qryStatiniMOBILEWARN_N_ORDIN_CONTROLLATA: TWideStringField;
    qryStatiniMOBILEWARN_SMALTIMENTO: TWideStringField;
    qryStatiniSTATO_LAVORAZIONE: TWideStringField;
    qryStatiniDATA_CHIUSURA_DA_SERVER: TDateField;
    qryStatiniCHIUSURA_EXT: TWideStringField;
    qryStatiniCHIUSURA_STATINO: TBlobField;
    qryStatiniMOBILEWARN_NON_ESEGUITI: TWideStringField;
    qryStatiniPRESA_IN_CARICO: TWideStringField;
    qryStatiniFORNITURA: TWideStringField;
    qryStatiniAPPUNTAMENTO_DATA: TDateField;
    qryStatiniAPPUNTAMENTO_ORA: TTimeField;
    qryStatiniSTATO: TSmallintField;
    qryStatiniJGUID: TBytesField;
    qryStatiniGCAL: TWideStringField;
    qryStatiniWANUMBER: TWideStringField;
    qryStatiniWA: TWideStringField;
    qryStatiniSTATO_IMMAGINE: TBlobField;
    qryStatiniWA_ID: TWideStringField;
    qryStatiniWA_IMAGE: TBlobField;
    qryStatiniWA_STATE: TSmallintField;
    qryStatiniLuciSTATINO: TIntegerField;
    qryStatiniLuciRAGIONE_SOCIALE: TWideStringField;
    qryStatiniLuciINDIRIZZO: TWideStringField;
    qryStatiniLuciDATA_INTERVENTO: TDateField;
    qryStatiniLuciJSON_DA_MOBILE: TWideMemoField;
    qryInterventiLuciCHIAVE: TIntegerField;
    qryInterventiLuciSTATINO: TIntegerField;
    qryInterventiLuciATTREZZATURA: TIntegerField;
    qryInterventiLuciTIPO_ATTREZZATURA: TWideStringField;
    qryInterventiLuciUBICAZIONE: TWideStringField;
    qryInterventiLuciPROGRESSIVO: TIntegerField;
    qryInterventiLuciANOMALIA: TWideStringField;
    qryInterventiLuciTIPO: TWideStringField;
    qryInterventiLuciDATA_CONTROLLO: TDateField;
    qryInterventiLuciDATA_CONSEGNA: TDateField;
    qryInterventiLuciPERIODI_NON_ORDINARI: TWideStringField;
    qryInterventiLuciDATA_CONTROLLO_NEGATO: TDateField;
    qryInterventiLuciCLIENTE: TIntegerField;
    qryInterventiLuciFILIALE: TIntegerField;
    qryInterventiLuciTIPO_LUCE: TIntegerField;
    qryInterventiLuciMARCA: TIntegerField;
    qryInterventiLuciANOMALIA_APPROVATA: TWideStringField;
    qryInterventiLuciMODELLO: TWideStringField;
    qryInterventiLuciAUTONOMIA: TSmallintField;
    qryInterventiLuciPREC_ANOMALIA: TBlobField;
    qryInterventiLuciDES_TIPO_LUCE: TWideStringField;
    qryInterventiLuciDES_MARCA_LUCE: TWideStringField;
    qryCheckListLuciATTREZZATURA: TIntegerField;
    qryCheckListLuciCHECKLIST: TIntegerField;
    qryCheckListLuciDESCRIZIONE: TWideStringField;
    qryCheckListLuciTIPOLOGIA: TWideStringField;
    qryCheckListLuciORDINAMENTO: TSmallintField;
    qryCheckListLuciANOMALIE_CORRELATE: TBlobField;
    qryCheckListLuciSOTTOCATEGORIA: TIntegerField;
    qryStatiniEstintori: TUniQuery;
    qryStatiniFumo: TUniQuery;
    qryStatiniFumoSTATINO: TIntegerField;
    qryStatiniFumoRAGIONE_SOCIALE: TWideStringField;
    qryStatiniFumoINDIRIZZO: TWideStringField;
    qryStatiniFumoDATA_INTERVENTO: TDateField;
    qryStatiniFumoJSON_DA_MOBILE: TWideMemoField;
    qryStatiniEstintoriSTATINO: TIntegerField;
    qryStatiniEstintoriRAGIONE_SOCIALE: TWideStringField;
    qryStatiniEstintoriINDIRIZZO: TWideStringField;
    qryStatiniEstintoriDATA_INTERVENTO: TDateField;
    qryStatiniEstintoriJSON_DA_MOBILE: TWideMemoField;
    qryStatiniIdranti: TUniQuery;
    qryStatiniPorte: TUniQuery;
    qryStatiniImpianti: TUniQuery;
    qryStatiniImpiantiSTATINO: TIntegerField;
    qryStatiniImpiantiRAGIONE_SOCIALE: TWideStringField;
    qryStatiniImpiantiINDIRIZZO: TWideStringField;
    qryStatiniImpiantiDATA_INTERVENTO: TDateField;
    qryStatiniImpiantiJSON_DA_MOBILE: TWideMemoField;
    qryStatiniGruppi: TUniQuery;
    qryStatiniGruppiSTATINO: TIntegerField;
    qryStatiniGruppiRAGIONE_SOCIALE: TWideStringField;
    qryStatiniGruppiINDIRIZZO: TWideStringField;
    qryStatiniGruppiDATA_INTERVENTO: TDateField;
    qryStatiniGruppiJSON_DA_MOBILE: TWideMemoField;
    dsStatiniGruppi: TUniDataSource;
    dsStatiniImpianti: TUniDataSource;
    dsStatiniPorte: TUniDataSource;
    dsStatiniIdranti: TUniDataSource;
    dsStatiniEstintori: TUniDataSource;
    dsStatiniFumo: TUniDataSource;
    qryStatiniSprinkler: TUniQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DateField1: TDateField;
    WideMemoField1: TWideMemoField;
    DSStatiniSprinkler: TUniDataSource;
    qryInterventiGruppi: TUniQuery;
    qryInterventiGruppiCHIAVE: TIntegerField;
    qryInterventiGruppiSTATINO: TIntegerField;
    qryInterventiGruppiATTREZZATURA: TIntegerField;
    qryInterventiGruppiTIPO_ATTREZZATURA: TWideStringField;
    qryInterventiGruppiANOMALIA: TWideStringField;
    qryInterventiGruppiTIPO: TWideStringField;
    qryInterventiGruppiDATA_CONTROLLO: TDateField;
    qryInterventiGruppiDATA_CONSEGNA: TDateField;
    qryInterventiGruppiPERIODI_NON_ORDINARI: TWideStringField;
    qryInterventiGruppiDATA_CONTROLLO_NEGATO: TDateField;
    qryInterventiGruppiDESCRIZIONE: TWideStringField;
    qryInterventiGruppiTIPO_STAZIONE: TWideStringField;
    qryInterventiGruppiTIPO_BATTERIE: TIntegerField;
    qryInterventiGruppiMARCA_POMPA_JOCKEY: TWideStringField;
    qryInterventiGruppiTIPO_POMPA_JOCKEY: TWideStringField;
    qryInterventiGruppiMODELLO_POMPA_JOCKEY: TWideStringField;
    qryInterventiGruppiMARCA_POMPA_PORTATA: TWideStringField;
    qryInterventiGruppiTIPO_POMPA_PORTATA: TWideStringField;
    qryInterventiGruppiMODELLO_POMPA_PORTATA: TWideStringField;
    qryInterventiGruppiMARCA_MOTOPOMPA: TWideStringField;
    qryInterventiGruppiTIPO_MOTOPOMPA: TWideStringField;
    qryInterventiGruppiMODELLO_MOTOPOMPA: TWideStringField;
    qryInterventiGruppiVASI_ESPANSIONE: TWideStringField;
    qryInterventiGruppiMARCA_MISURATORE_PORTATA: TWideStringField;
    qryInterventiGruppiMODELLO_MISURATORE_PORTATA: TWideStringField;
    qryInterventiGruppiANOMALIA_APPROVATA: TWideStringField;
    qryInterventiGruppiNOTE: TBlobField;
    qryInterventiGruppiSOSPESO: TWideStringField;
    qryInterventiGruppiFILIALE: TIntegerField;
    qryInterventiGruppiSTATO: TWideStringField;
    qryInterventiGruppiRINNOVATO_DA: TIntegerField;
    qryInterventiGruppiPREC_ANOMALIA: TBlobField;
    qryInterventiGruppiID_NFC: TWideStringField;
    dsInterventiGruppi: TUniDataSource;
    qryInterventiPorte: TUniQuery;
    dsInterventiPorte: TUniDataSource;
    qryInterventiPorteCHIAVE: TIntegerField;
    qryInterventiPorteSTATINO: TIntegerField;
    qryInterventiPorteATTREZZATURA: TIntegerField;
    qryInterventiPorteANOMALIA: TWideStringField;
    qryInterventiPorteTIPO: TWideStringField;
    qryInterventiPorteDATA_CONTROLLO: TDateField;
    qryInterventiPorteDATA_CONSEGNA: TDateField;
    qryInterventiPortePERIODI_NON_ORDINARI: TWideStringField;
    qryInterventiPorteDATA_CONTROLLO_NEGATO: TDateField;
    qryInterventiPorteCLIENTE: TIntegerField;
    qryInterventiPorteFILIALE: TIntegerField;
    qryInterventiPorteTIPO_1: TIntegerField;
    qryInterventiPorteMATRICOLA: TWideStringField;
    qryInterventiPorteANNO_COSTRUZIONE: TSmallintField;
    qryInterventiPorteANTE: TWideStringField;
    qryInterventiPorteMARCA: TIntegerField;
    qryInterventiPorteMARCA_MANIGLIONE: TIntegerField;
    qryInterventiPorteTIPO_MANIGLIONE: TIntegerField;
    qryInterventiPorteTIPO_SERRATURA_ANTA_PRINCIPALE: TIntegerField;
    qryInterventiPorteTIPO_SERRATURA_ANTA_SECONDARIA: TIntegerField;
    qryInterventiPorteTIPO_MANIGLIA_ESTERNA: TIntegerField;
    qryInterventiPorteTIPO_GUARNIZIONE: TIntegerField;
    qryInterventiPortePROGRESSIVO: TIntegerField;
    qryInterventiPorteSTATO: TWideStringField;
    qryInterventiPorteRINNOVATO_DA: TIntegerField;
    qryInterventiPorteANOMALIA_APPROVATA: TWideStringField;
    qryInterventiPorteANOMALIA_1: TWideMemoField;
    qryInterventiPorteTIPO_INSTALLAZIONE: TIntegerField;
    qryInterventiPorteDIMENSIONE: TWideStringField;
    qryInterventiPortePREC_ANOMALIA: TBlobField;
    qryInterventiPorteNOTE_TECNICO: TWideStringField;
    qryInterventiPorteID_NFC: TWideStringField;
    qryInterventiPorteJGUID: TBytesField;
    qryInterventiPorteUBICAZIONE: TWideStringField;
    qryStatiniPorteSTATINO: TIntegerField;
    qryStatiniPorteRAGIONE_SOCIALE: TWideStringField;
    qryStatiniPorteINDIRIZZO: TWideStringField;
    qryStatiniPorteDATA_INTERVENTO: TDateField;
    qryStatiniPorteJSON_DA_MOBILE: TWideMemoField;
    qryInterventiSprinkler: TUniQuery;
    qryInterventiSprinklerCHIAVE: TIntegerField;
    qryInterventiSprinklerSTATINO: TIntegerField;
    qryInterventiSprinklerATTREZZATURA: TIntegerField;
    qryInterventiSprinklerANOMALIA: TWideStringField;
    qryInterventiSprinklerTIPO: TWideStringField;
    qryInterventiSprinklerDATA_CONTROLLO: TDateField;
    qryInterventiSprinklerDATA_CONSEGNA: TDateField;
    qryInterventiSprinklerPERIODI_NON_ORDINARI: TWideStringField;
    qryInterventiSprinklerDATA_CONTROLLO_NEGATO: TDateField;
    qryInterventiSprinklerMARCA: TIntegerField;
    qryInterventiSprinklerTARATURA_VALVOLE: TSmallintField;
    qryInterventiSprinklerVALVOLE_RICAMBIO: TWideStringField;
    qryInterventiSprinklerUBICAZIONE_1: TBlobField;
    qryInterventiSprinklerTIPO_1: TIntegerField;
    qryInterventiSprinklerSTATO: TWideStringField;
    qryInterventiSprinklerRINNOVATO_DA: TIntegerField;
    qryInterventiSprinklerANOMALIA_APPROVATA: TWideStringField;
    qryInterventiSprinklerMODELLO: TWideStringField;
    qryInterventiSprinklerCOMPRESSORE: TWideStringField;
    qryInterventiSprinklerNOTE: TBlobField;
    qryInterventiSprinklerQUANTITA_VALVOLE: TWideStringField;
    qryInterventiSprinklerDESCRIZIONE: TWideStringField;
    qryInterventiSprinklerPREC_ANOMALIA: TBlobField;
    qryInterventiSprinklerUBICAZIONE: TWideStringField;
    dsInterventiSprinkler: TUniDataSource;
    qryInterventiEstintori: TUniQuery;
    qryInterventiEstintoriPROGRESSIVO: TIntegerField;
    qryInterventiEstintoriMATRICOLA: TWideStringField;
    qryInterventiEstintoriDESCRIZIONE: TWideStringField;
    qryInterventiEstintoriCLASSE_FUOCO: TWideStringField;
    qryInterventiEstintoriANNO_COSTRUZIONE: TSmallintField;
    qryInterventiEstintoriMARCA: TWideStringField;
    qryInterventiEstintoriCHIAVE: TIntegerField;
    qryInterventiEstintoriSTATINO: TIntegerField;
    qryInterventiEstintoriESTINTORE: TIntegerField;
    qryInterventiEstintoriRESET_DATA_COLLAUDO: TWideStringField;
    qryInterventiEstintoriRESET_DATA_REVISIONE: TWideStringField;
    qryInterventiEstintoriDATA_CONTROLLO: TDateField;
    qryInterventiEstintoriDATA_RITIRO: TDateField;
    qryInterventiEstintoriDATA_SMALTIMENTO: TDateField;
    qryInterventiEstintoriDATA_RESTITUZIONE: TDateField;
    qryInterventiEstintoriDATA_CONSEGNA: TDateField;
    qryInterventiEstintoriDATA_CONTROLLO_NEGATO: TDateField;
    qryInterventiEstintoriDESCRIZIONE_ALTERNATIVA: TWideStringField;
    dsInterventiEstintori: TUniDataSource;
    qryInterventiEstintoriANOMALIA: TWideStringField;
    qryInterventiEstintoriUBICAZIONE: TWideStringField;
    qryEstintoriSintesi: TUniQuery;
    dsEstintoriSintesi: TUniDataSource;
    qryEstintoriSintesiDESCRIZIONE: TWideStringField;
    qryEstintoriSintesiORDINARIO: TLargeintField;
    qryEstintoriSintesiREVISIONE: TLargeintField;
    qryEstintoriSintesiCOLLAUDO: TLargeintField;
    qryEstintoriSintesiSOSTITUZIONE: TLargeintField;
    qryEstintoriSintesiRICARICA: TLargeintField;
    qryEstintoriSintesiRIPARAZIONE: TLargeintField;
    dsSintesiReport: TUniDataSource;
    qrySintesiReport: TUniQuery;
    qrySintesiReportPOS: TIntegerField;
    qrySintesiReportDESCRIZIONE: TWideStringField;
    qrySintesiReportORDINARIO: TLargeintField;
    qrySintesiReportREVISIONE: TLargeintField;
    qrySintesiReportCOLLAUDO: TLargeintField;
    qrySintesiReportSOSTITUZIONE: TLargeintField;
    qrySintesiReportRICARICA: TLargeintField;
    qrySintesiReportRIPARAZIONE: TLargeintField;
    qrySintesiReportNON_ESEGUITE: TLargeintField;
    qryInterventiImpianti: TUniQuery;
    qryInterventiImpiantiDESCRIZIONE: TWideStringField;
    qryInterventiImpiantiMODELLO: TWideStringField;
    qryInterventiImpiantiUBICAZIONE: TBlobField;
    qryInterventiImpiantiCHIAVE: TIntegerField;
    qryInterventiImpiantiSTATINO: TIntegerField;
    qryInterventiImpiantiELEMENTO_IMPIANTO_ELETTRICO: TIntegerField;
    qryInterventiImpiantiANOMALIA: TBlobField;
    qryInterventiImpiantiDATA_CONTROLLO: TDateField;
    qryInterventiImpiantiTIPO: TWideStringField;
    qryInterventiImpiantiDATA_CONSEGNA: TDateField;
    qryInterventiImpiantiDESCRIZIONE_ALTERNATIVA: TWideStringField;
    qryInterventiImpiantiDATA_CONTROLLO_NEGATO: TDateField;
    qryInterventiImpiantiIMPIANTO: TIntegerField;
    qryInterventiImpiantiPROGRESSIVO: TIntegerField;
    qryInterventiImpiantiTIPO_EL: TIntegerField;
    qryInterventiImpiantiMARCA: TIntegerField;
    qryInterventiImpiantiRINNOVATO_DA: TIntegerField;
    qryInterventiImpiantiANOMALIA_APPROVATA: TWideStringField;
    qryInterventiImpiantiSTATO: TWideStringField;
    qryInterventiImpiantiPREC_ANOMALIA: TBlobField;
    qryInterventiImpiantiNOTE_TECNICO: TBlobField;
    qryInterventiImpiantiID_NFC: TWideStringField;
    dsInterventiImpianti: TUniDataSource;
    qryStatiniIdrantiSTATINO: TIntegerField;
    qryStatiniIdrantiRAGIONE_SOCIALE: TWideStringField;
    qryStatiniIdrantiINDIRIZZO: TWideStringField;
    qryStatiniIdrantiDATA_INTERVENTO: TDateField;
    qryStatiniIdrantiJSON_DA_MOBILE: TWideMemoField;
    qryInterventiIdranti: TUniQuery;
    qryInterventiIdrantiID_BOCCHELLO: TIntegerField;
    qryInterventiIdrantiUBICAZIONE: TWideStringField;
    qryInterventiIdrantiDES_BOCCHELLO: TWideStringField;
    qryInterventiIdrantiTIPO_LANCIA: TWideStringField;
    qryInterventiIdrantiUBICAZIONE_IDRANTE: TBlobField;
    qryInterventiIdrantiDESCRIZIONE_IDRANTE: TWideStringField;
    qryInterventiIdrantiPROVA_DINAMICA: TIntegerField;
    qryInterventiIdrantiTIPO_ATTACCO_MOTOPOMPA: TWideStringField;
    qryInterventiIdrantiTIPO: TWideStringField;
    qryInterventiIdrantiDESCRIZIONE_ALTERNATIVA: TWideStringField;
    qryInterventiIdrantiRESET_DATA_COLLAUDO: TWideStringField;
    qryInterventiIdrantiANOMALIA: TWideStringField;
    qryInterventiIdrantiDATA_CONTROLLO: TDateField;
    qryInterventiIdrantiDATA_RITIRO: TDateField;
    qryInterventiIdrantiDATA_SMALTIMENTO: TDateField;
    qryInterventiIdrantiDATA_RESTITUZIONE: TDateField;
    qryInterventiIdrantiDATA_CONSEGNA: TDateField;
    qryInterventiIdrantiDATA_PRESSATURA: TDateField;
    qryInterventiIdrantiDATA_CONTROLLO_NEGATO: TDateField;
    qryInterventiIdrantiIDRANTE: TIntegerField;
    qryInterventiIdrantiTIPO_BOCCHELLO: TIntegerField;
    qryInterventiIdrantiTIPO_LANCIA_1: TIntegerField;
    qryInterventiIdrantiLUNGHEZZA_MANICHETTA: TIntegerField;
    qryInterventiIdrantiMESE_STARTUP: TSmallintField;
    qryInterventiIdrantiANNO_STARTUP: TSmallintField;
    qryInterventiIdrantiANNO_MANICHETTA: TSmallintField;
    qryInterventiIdrantiRINNOVATO_DA: TIntegerField;
    qryInterventiIdrantiANOMALIA_APPROVATA: TWideStringField;
    qryInterventiIdrantiANOMALIA_1: TWideMemoField;
    qryInterventiIdrantiSTATO: TWideStringField;
    qryInterventiIdrantiPREC_ANOMALIA: TBlobField;
    qryInterventiIdrantiNOTE_TECNICO: TWideStringField;
    qryInterventiIdrantiMESE_PRESSATURA: TSmallintField;
    qryInterventiIdrantiANNO_PRESSATURA: TSmallintField;
    qryInterventiIdrantiBOCCHELLO: TIntegerField;
    qryInterventiIdrantiCHIAVE: TIntegerField;
    qryInterventiIdrantiSTATINO: TIntegerField;
    dsInterventiIdranti: TUniDataSource;
    qryInterventiFumi: TUniQuery;
    dsInterventiFumi: TUniDataSource;
    qryInterventiFumiCHIAVE: TIntegerField;
    qryInterventiFumiSTATINO: TIntegerField;
    qryInterventiFumiUBICAZIONE: TBlobField;
    qryInterventiFumiATTREZZATURA: TIntegerField;
    qryInterventiFumiANOMALIA: TBlobField;
    qryInterventiFumiTIPO: TWideStringField;
    qryInterventiFumiDATA_CONTROLLO: TDateField;
    qryInterventiFumiDATA_CONSEGNA: TDateField;
    qryInterventiFumiPERIODI_NON_ORDINARI: TWideStringField;
    qryInterventiFumiDATA_CONTROLLO_NEGATO: TDateField;
    qryInterventiFumiFILIALE: TIntegerField;
    qryInterventiFumiMARCA_CENTRALE: TIntegerField;
    qryInterventiFumiTIPO_CENTRALE: TIntegerField;
    qryInterventiFumiQUANTITA_BATTERIE: TIntegerField;
    qryInterventiFumiTIPO_BATTERIE: TIntegerField;
    qryInterventiFumiQUANTITA_RILEVATORI: TIntegerField;
    qryInterventiFumiTIPO_RILEVATORI: TIntegerField;
    qryInterventiFumiQUANTITA_RIL_LINEARI: TIntegerField;
    qryInterventiFumiTIPO_RIL_LINEARI: TIntegerField;
    qryInterventiFumiMARCA_RIL_LINEARI: TIntegerField;
    qryInterventiFumiQUANTITA_PULSANTI: TIntegerField;
    qryInterventiFumiQUANTITA_PANNELLI_OTT_ACUST: TIntegerField;
    qryInterventiFumiSTATO: TWideStringField;
    qryInterventiFumiRINNOVATO_DA: TIntegerField;
    qryInterventiFumiANOMALIA_APPROVATA: TWideStringField;
    qryInterventiFumiANOMALIA_1: TBlobField;
    qryInterventiFumiDESCRIZIONE: TWideStringField;
    qryInterventiFumiPREC_ANOMALIA: TBlobField;
    qryInterventiFumiNOTE_TECNICO: TBlobField;
    qryInterventiFumiID_NFC: TWideStringField;
    qryInterventiLuciORARIO_CONTROLLO: TTimeField;
    qryInterventiLuciCONTROLLATO: TWideStringField;
    qryInterventiLuciANOMALIA_ON_DOWNLOAD: TWideStringField;
    qryInterventiLuciANOMALIA_RISOLTA: TWideStringField;
    qryInterventiLuciTECNICO_CONTROLLO: TIntegerField;
    qryInterventiGruppiORARIO_CONTROLLO: TTimeField;
    qryInterventiGruppiCONTROLLATO: TWideStringField;
    qryInterventiGruppiANOMALIA_ON_DOWNLOAD: TWideStringField;
    qryInterventiGruppiANOMALIA_RISOLTA: TWideStringField;
    qryInterventiGruppiTECNICO_CONTROLLO: TIntegerField;
    qryInterventiPorteTIPO_ATTREZZATURA: TWideStringField;
    qryInterventiPorteORARIO_CONTROLLO: TTimeField;
    qryInterventiPorteCONTROLLATO: TWideStringField;
    qryInterventiPorteANOMALIA_ON_DOWNLOAD: TWideStringField;
    qryInterventiPorteANOMALIA_RISOLTA: TWideStringField;
    qryInterventiPorteTECNICO_CONTROLLO: TIntegerField;
    qryInterventiFumiTIPO_ATTREZZATURA: TWideStringField;
    qryInterventiFumiORARIO_CONTROLLO: TTimeField;
    qryInterventiFumiCONTROLLATO: TWideStringField;
    qryInterventiFumiANOMALIA_ON_DOWNLOAD: TWideStringField;
    qryInterventiFumiANOMALIA_RISOLTA: TWideStringField;
    qryInterventiFumiTECNICO_CONTROLLO: TIntegerField;
    qElenco: TUniQuery;
    qElencoCHIAVE: TIntegerField;
    qryInterventiIdrantiANOMALIAONDOWNLOAD: TWideStringField;
    qryInterventiIdrantiANOMALIARISOLTA: TWideStringField;
    qryInterventiIdrantiCONSEGNATO: TWideStringField;
    qryInterventiIdrantiCONTROLLATO: TWideStringField;
    qryInterventiIdrantiDATACONTROLLO: TDateField;
    qryInterventiIdrantiDATAPRESSATURA: TDateField;
    qryInterventiIdrantiDATARITIRO: TDateField;
    qryInterventiIdrantiORARIOCONTROLLO: TWideStringField;
    qryInterventiIdrantiORARIORITIRO: TWideStringField;
    qryInterventiIdrantiPRESSATURAEFFETTUATA: TWideStringField;
    qryInterventiIdrantiRITIRATO: TWideStringField;
    qryInterventiIdrantiTECNICOCONTROLLO: TIntegerField;
    qryInterventiIdrantiTECNICOPRESSATURA: TIntegerField;
    qryInterventiIdrantiTECNICORITIRO: TIntegerField;
    qrySintesiReportSTATINO: TIntegerField;
    qrySintesiReportCONTROLLI: TLargeintField;
    qrySintesiReportPRESSATURA: TLargeintField;
    qrySintesiReportNUOVI: TLargeintField;
    qryInterventiEstintoriTIPO: TWideStringField;
    qryInterventiEstintoriANOMALIA_APPROVATA: TWideStringField;
    qryInterventiEstintoriAGGIUNTODAMOBILE: TWideStringField;
    qryInterventiEstintoriANOMALIAONDOWNLOAD: TWideStringField;
    qryInterventiEstintoriANOMALIARISOLTA: TWideStringField;
    qryInterventiEstintoriCONSEGNATO: TWideStringField;
    qryInterventiEstintoriCONTROLLATO: TWideStringField;
    qryInterventiEstintoriDATA_LAVORAZIONE: TDateField;
    qryInterventiEstintoriMOTIVOCONTROLLONEGATO: TWideStringField;
    qryInterventiEstintoriMOTIVORITIRO: TWideStringField;
    qryInterventiEstintoriNONCONTROLLATO: TWideStringField;
    qryInterventiEstintoriORARIOCONSEGNA: TWideStringField;
    qryInterventiEstintoriORARIOCONTROLLO: TWideStringField;
    qryInterventiEstintoriORARIOCONTROLLONEGATO: TWideStringField;
    qryInterventiEstintoriORARIORITIRO: TWideStringField;
    qryInterventiEstintoriORARIOSMALTIMENTO: TWideStringField;
    qryInterventiEstintoriPERIODICITA_COLLAUDO: TIntegerField;
    qryInterventiEstintoriPERIODICITA_REVISIONE: TIntegerField;
    qryInterventiEstintoriRESTITUITO: TWideStringField;
    qryInterventiEstintoriRITIRATO: TWideStringField;
    qryInterventiEstintoriSMALTITO: TWideStringField;
    qryInterventiEstintoriTIPO_ESTINTORE: TIntegerField;
    qryInterventiEstintoriTIPO_INTERVENTO: TWideStringField;
    qryInterventiEstintoriTECNICOCONSEGNA: TIntegerField;
    qryInterventiEstintoriTECNICOCONTROLLO: TIntegerField;
    qryInterventiEstintoriTECNICOCONTROLLONEGATO: TIntegerField;
    qryInterventiEstintoriTECNICORESTITUZIONE: TIntegerField;
    qryInterventiEstintoriTECNICORITIRO: TIntegerField;
    qryInterventiEstintoriTECNICOSMALTIMENTO: TIntegerField;
    qryInterventiEstintoriANNO_COSTRUZIONE_1: TWideStringField;
    qryInterventiEstintoriMARCA_1: TIntegerField;
    qryInterventiEstintoriMATRICOLA_1: TWideStringField;
    qryInterventiEstintoriPROGRESSIVO_1: TIntegerField;
    qElencoAMMINISTRATORE: TWideStringField;
    qElencoCONTRATTO: TWideStringField;
    qElencoLOCAZIONE: TWideStringField;
    qElencoNOME_TECNICO: TWideStringField;
    qElencoINDIRIZZO_FILIALE: TWideStringField;
    qElencoCLIENTE: TIntegerField;
    qElencoFILIALE: TIntegerField;
    qElencoTITOLO: TWideStringField;
    qElencoRAGIONE_SOCIALE: TWideStringField;
    qElencoINDIRIZZO: TWideStringField;
    qElencoCOMUNE: TWideStringField;
    qElencoPROVINCIA: TWideStringField;
    qElencoCAP: TWideStringField;
    qElencoTELEFONO: TWideStringField;
    qElencoCELLULARE: TWideStringField;
    qElencoNOTE: TBlobField;
    qElencoORARIO_APERTURA_DAL1: TTimeField;
    qElencoORARIO_APERTURA_DAL2: TTimeField;
    qElencoORARIO_APERTURA_AL1: TTimeField;
    qElencoORARIO_APERTURA_AL2: TTimeField;
    qElencoCHIUSURA: TWideStringField;
    qElencoFATTURA: TIntegerField;
    qElencoDATA_INTERVENTO: TDateField;
    qElencoGENERAZIONE_AUTOMATICA: TIntegerField;
    qElencoTECNICO_INTERVENTO: TIntegerField;
    qElencoSCANSIONE: TBlobField;
    qElencoREGISTRO: TBlobField;
    qElencoNOTE_PER_IL_TECNICO: TBlobField;
    qElencoSOSPESO: TWideStringField;
    qElencoDA_ESPORTARE_SUL_WEB: TWideStringField;
    qElencoRESPONSABILE: TIntegerField;
    qElencoESPORTATO_SU_MOBILE: TWideStringField;
    qElencoNOTE_DAL_TECNICO: TBlobField;
    qElencoJSON_DA_MOBILE: TBlobField;
    qElencoPDF_STATINO: TBlobField;
    qElencoREGISTRO_IS_PDF: TWideStringField;
    qElencoVERBALE_PROVA_DINAMICA: TBlobField;
    qElencoVERBALE_MANICHETTE: TBlobField;
    qElencoPREVENTIVO: TIntegerField;
    qElencoIGNORA_EVIDENZIAZIONE: TWideStringField;
    qElencoANNULLATO_DA_TABLET: TWideStringField;
    qElencoMOBILEWARN_NUOVA_ATTREZZATURA: TWideStringField;
    qElencoMOBILEWARN_ORDINARIA_RITIRATA: TWideStringField;
    qElencoMOBILEWARN_N_ORDIN_CONTROLLATA: TWideStringField;
    qElencoMOBILEWARN_SMALTIMENTO: TWideStringField;
    qElencoSTATO_LAVORAZIONE: TWideStringField;
    qElencoDATA_CHIUSURA_DA_SERVER: TDateField;
    qElencoCHIUSURA_EXT: TWideStringField;
    qElencoCHIUSURA_STATINO: TBlobField;
    qElencoMOBILEWARN_NON_ESEGUITI: TWideStringField;
    qElencoPRESA_IN_CARICO: TWideStringField;
    qElencoFORNITURA: TWideStringField;
    qElencoAPPUNTAMENTO_DATA: TDateField;
    qElencoAPPUNTAMENTO_ORA: TTimeField;
    qElencoSTATO: TSmallintField;
    qElencoJGUID: TBytesField;
    qElencoGCAL: TWideStringField;
    qElencoWANUMBER: TWideStringField;
    qElencoWA: TWideStringField;
    qElencoSTATO_IMMAGINE: TBlobField;
    qElencoWA_ID: TWideStringField;
    qElencoWA_IMAGE: TBlobField;
    qElencoWA_STATE: TSmallintField;
    qElencoMESE_INTERVENTO: TSmallintField;
    qElencoNOME_MESE: TWideStringField;
    qElencoSTATINO: TIntegerField;
    qryStatiniNonCompilati: TUniQuery;
    qryStatiniNonCompilatiCHIAVE: TIntegerField;
    qryStatiniNonCompilatiCLIENTE: TIntegerField;
    qryStatiniNonCompilatiFILIALE: TIntegerField;
    qryStatiniNonCompilatiTITOLO: TWideStringField;
    qryStatiniNonCompilatiRAGIONE_SOCIALE: TWideStringField;
    qryStatiniNonCompilatiINDIRIZZO: TWideStringField;
    qryStatiniNonCompilatiCOMUNE: TWideStringField;
    qryStatiniNonCompilatiPROVINCIA: TWideStringField;
    qryStatiniNonCompilatiCAP: TWideStringField;
    qryStatiniNonCompilatiTELEFONO: TWideStringField;
    qryStatiniNonCompilatiCELLULARE: TWideStringField;
    qryStatiniNonCompilatiNOTE: TBlobField;
    qryStatiniNonCompilatiORARIO_APERTURA_DAL1: TTimeField;
    qryStatiniNonCompilatiORARIO_APERTURA_DAL2: TTimeField;
    qryStatiniNonCompilatiORARIO_APERTURA_AL1: TTimeField;
    qryStatiniNonCompilatiORARIO_APERTURA_AL2: TTimeField;
    qryStatiniNonCompilatiCHIUSURA: TWideStringField;
    qryStatiniNonCompilatiFATTURA: TIntegerField;
    qryStatiniNonCompilatiDATA_INTERVENTO: TDateField;
    qryStatiniNonCompilatiGENERAZIONE_AUTOMATICA: TIntegerField;
    qryStatiniNonCompilatiTECNICO_INTERVENTO: TIntegerField;
    qryStatiniNonCompilatiSCANSIONE: TBlobField;
    qryStatiniNonCompilatiREGISTRO: TBlobField;
    qryStatiniNonCompilatiNOTE_PER_IL_TECNICO: TBlobField;
    qryStatiniNonCompilatiSOSPESO: TWideStringField;
    qryStatiniNonCompilatiDA_ESPORTARE_SUL_WEB: TWideStringField;
    qryStatiniNonCompilatiRESPONSABILE: TIntegerField;
    qryStatiniNonCompilatiESPORTATO_SU_MOBILE: TWideStringField;
    qryStatiniNonCompilatiNOTE_DAL_TECNICO: TBlobField;
    qryStatiniNonCompilatiJSON_DA_MOBILE: TBlobField;
    qryStatiniNonCompilatiPDF_STATINO: TBlobField;
    qryStatiniNonCompilatiREGISTRO_IS_PDF: TWideStringField;
    qryStatiniNonCompilatiVERBALE_PROVA_DINAMICA: TBlobField;
    qryStatiniNonCompilatiVERBALE_MANICHETTE: TBlobField;
    qryStatiniNonCompilatiPREVENTIVO: TIntegerField;
    qryStatiniNonCompilatiIGNORA_EVIDENZIAZIONE: TWideStringField;
    qryStatiniNonCompilatiANNULLATO_DA_TABLET: TWideStringField;
    qryStatiniNonCompilatiMOBILEWARN_NUOVA_ATTREZZATURA: TWideStringField;
    qryStatiniNonCompilatiMOBILEWARN_ORDINARIA_RITIRATA: TWideStringField;
    qryStatiniNonCompilatiMOBILEWARN_N_ORDIN_CONTROLLATA: TWideStringField;
    qryStatiniNonCompilatiMOBILEWARN_SMALTIMENTO: TWideStringField;
    qryStatiniNonCompilatiSTATO_LAVORAZIONE: TWideStringField;
    qryStatiniNonCompilatiDATA_CHIUSURA_DA_SERVER: TDateField;
    qryStatiniNonCompilatiCHIUSURA_EXT: TWideStringField;
    qryStatiniNonCompilatiCHIUSURA_STATINO: TBlobField;
    qryStatiniNonCompilatiMOBILEWARN_NON_ESEGUITI: TWideStringField;
    qryStatiniNonCompilatiPRESA_IN_CARICO: TWideStringField;
    qryStatiniNonCompilatiFORNITURA: TWideStringField;
    qryStatiniNonCompilatiAPPUNTAMENTO_DATA: TDateField;
    qryStatiniNonCompilatiAPPUNTAMENTO_ORA: TTimeField;
    qryStatiniNonCompilatiSTATO: TSmallintField;
    qryStatiniNonCompilatiJGUID: TBytesField;
    qryStatiniNonCompilatiGCAL: TWideStringField;
    qryStatiniNonCompilatiWANUMBER: TWideStringField;
    qryStatiniNonCompilatiWA: TWideStringField;
    qryStatiniNonCompilatiSTATO_IMMAGINE: TBlobField;
    qryStatiniNonCompilatiWA_ID: TWideStringField;
    qryStatiniNonCompilatiWA_IMAGE: TBlobField;
    qryStatiniNonCompilatiWA_STATE: TSmallintField;
  private
    FJsonPretty: string;
    FOriginal: string;
    FTestBack: string;
    FFoundReplace: string;
    FJsonFinal: string;
    FJsonCompatible: string;
    procedure SetJsonPretty(const Value: string);
    procedure SetOriginal(const Value: string);
    procedure SetTestBack(const Value: string);
    procedure SetFoundReplace(const Value: string);
    procedure SetJsonFinal(const Value: string);
    procedure SetJsonCompatible(const Value: string);
    function BoolToStr(const aBoolean: boolean): string;
    { Private declarations }
  public
    { Public declarations }
    procedure OpenSintesiReport(const aDataset: TDataset);
    procedure ApriTuttiIUniQuery;
    procedure ElaborateJson(const aStatino: integer);
    procedure UpdateFromClass(const aClass: TStatino);
    procedure UpdateLuci(const aClass: TStatino);
    procedure UpdateGruppi(const aClass: TStatino);
    procedure UpdatePorte(const aClass: TStatino);
    procedure UpdateFumi(const aClass: TStatino);
    procedure UpdateIdranti(const aClass: TStatino);
    procedure UpdateEstintori(const aClass: TStatino);
    procedure UpdateAllLuci;
    procedure UpdateAllGruppi;
    procedure UpdateAllPorte;
    procedure UpdateAllFumi;
    procedure UpdateAllIdranti;
    procedure UpdateAllEstintori;
    property JsonPretty: string read FJsonPretty write SetJsonPretty;
    property Original: string read FOriginal write SetOriginal;
    property TestBack: string read FTestBack write SetTestBack;
    property FoundReplace: string read FFoundReplace write SetFoundReplace;
    property JsonFinal: string read FJsonFinal write SetJsonFinal;
    property JsonCompatible: string read FJsonCompatible write SetJsonCompatible;
  end;

var
  dmFbPhoenixJsonReport: TdmFbPhoenixJsonReport;

implementation

uses System.StrUtils, Janua.Core.Functions, Janua.Core.JSON;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmFbPhoenixJsonReport }

procedure TdmFbPhoenixJsonReport.ApriTuttiIUniQuery;
var
  i: integer;
  Componente: TComponent;
begin
  // Loop attraverso tutti i componenti del DataModule
  for i := 0 to ComponentCount - 1 do
  begin
    Componente := Components[i];

    // Controlla se il componente è di tipo TUniQuery
    if Componente is TUniQuery then
    begin
      // Cast del componente a TUniQuery e aprilo
      TUniQuery(Componente).Open;
    end;
  end;

end;

function TdmFbPhoenixJsonReport.BoolToStr(const aBoolean: boolean): string;
begin
  Result := IfThen(aBoolean, 'T', 'F');
end;

procedure TdmFbPhoenixJsonReport.ElaborateJson(const aStatino: integer);
var
  lPorte: TPorte;
  lLuci: TLuci;
  lEstintori: TEstintori;
  lIdranti: TIdranti;
  lBocchelli: TBocchelli;
  lRilFumo: TRilevatoriFumo;
  lGruppi: TGruppiPressurizzazione;
  lElementi: TElementiElettrici;
  lImpianti: TImpiantiElettrici;
begin
  qryStatini.Close;
  qryStatini.Params[0].AsInteger := aStatino;
  qryStatini.Open;

  var
  lJson := qryStatiniJSON_DA_MOBILE.AsString;
  FOriginal := Janua.Core.JSON.JsonPretty(lJson);
  lJson := ReplacePhoenixJson(lJson);
  FJsonPretty := Janua.Core.JSON.JsonPretty(lJson);

  FFoundReplace := GlobalParams;

  var
  lStatino := TStatino.Create;
  lStatino.AsJson := lJson;

  tbPorte.Open;
  if tbPorte.RecordCount = 0 then
    for lPorte in lStatino.Porte do
    begin
      tbPorte.Append;
      tbPorte.FieldByName('statino').Value := aStatino;
      tbPorte.FieldByName('anno_costruzione').Value := lPorte.ANNOCOSTRUZIONE;
      tbPorte.FieldByName('anomalia').Value := lPorte.ANOMALIA;
      tbPorte.FieldByName('anomalia_approvata').Value := lPorte.ANOMALIAAPPROVATA;
      tbPorte.FieldByName('ante').Value := lPorte.ANTE;
      tbPorte.FieldByName('anomaliaondownload').Value := lPorte.AnomaliaOnDownload;
      tbPorte.FieldByName('anomaliarisolta').Value := lPorte.AnomaliaRisolta;
      tbPorte.FieldByName('chiave').Value := lPorte.Chiave;
      tbPorte.FieldByName('consegnato').Value := lPorte.Consegnato;
      tbPorte.FieldByName('controllato').Value := lPorte.Controllato;
      tbPorte.FieldByName('dimensione').Value := lPorte.DIMENSIONE;
      if lPorte.DataControllo > 0 then
        tbPorte.FieldByName('datacontrollo').Value := lPorte.DataControllo;
      tbPorte.FieldByName('id_nfc').Value := lPorte.IDNFC;
      if lPorte.MARCA <> 0 then
        tbPorte.FieldByName('marca').Value := lPorte.MARCA;
      tbPorte.FieldByName('marca_maniglione').Value := lPorte.MARCAMANIGLIONE;
      tbPorte.FieldByName('matricola').Value := lPorte.MATRICOLA;
      tbPorte.FieldByName('note_tecnico').Value := lPorte.NOTETECNICO;
      tbPorte.FieldByName('orariocontrollo').Value := lPorte.OrarioControllo;
      tbPorte.FieldByName('progressivo').Value := lPorte.PROGRESSIVO;
      tbPorte.FieldByName('stato').Value := lPorte.STATO;
      tbPorte.FieldByName('tipo').Value := lPorte.TIPO;
      tbPorte.FieldByName('tipo_guarnizione').Value := lPorte.TIPOGUARNIZIONE;
      tbPorte.FieldByName('tipo_installazione').Value := lPorte.TIPOINSTALLAZIONE;
      tbPorte.FieldByName('tipo_intervento').Value := lPorte.TIPOINTERVENTO;
      tbPorte.FieldByName('tipo_maniglia_esterna').Value := lPorte.TIPOMANIGLIAESTERNA;
      tbPorte.FieldByName('tipo_maniglione').Value := lPorte.TIPOMANIGLIONE;
      tbPorte.FieldByName('tipo_serratura_anta_principale').Value := lPorte.TIPOSERRATURAANTAPRINCIPALE;
      tbPorte.FieldByName('tipo_serratura_anta_secondaria').Value := lPorte.TIPOSERRATURAANTASECONDARIA;
      tbPorte.FieldByName('tecnicocontrollo').Value := lPorte.TecnicoControllo;
      tbPorte.FieldByName('ubicazione').Value := lPorte.UBICAZIONE;
      tbPorte.Post;
    end;

  tbLuci.Open;
  if tbLuci.RecordCount = 0 then
    for lLuci in lStatino.Luci do
    begin
      tbLuci.Append;
      tbLuci.FieldByName('statino').Value := aStatino;
      tbLuci.FieldByName('anomalia').Value := lLuci.ANOMALIA;
      tbLuci.FieldByName('anomalia_approvata').Value := lLuci.ANOMALIAAPPROVATA;
      tbLuci.FieldByName('autonomia').Value := lLuci.AUTONOMIA;
      tbLuci.FieldByName('anomaliaondownload').Value := lLuci.AnomaliaOnDownload;
      tbLuci.FieldByName('anomaliarisolta').Value := lLuci.AnomaliaRisolta;
      tbLuci.FieldByName('chiave').Value := lLuci.Chiave;
      tbLuci.FieldByName('consegnato').Value := lLuci.Consegnato;
      tbLuci.FieldByName('controllato').Value := IfThen(lLuci.Controllato, 'T', 'F');
      if lLuci.DataControllo > 0 then
        tbLuci.FieldByName('datacontrollo').Value := lLuci.DataControllo;
      tbLuci.FieldByName('id_nfc').Value := lLuci.IDNFC;
      if lLuci.MARCA <> 0 then
        tbLuci.FieldByName('marca').Value := lLuci.MARCA;
      tbLuci.FieldByName('modello').Value := lLuci.MODELLO;
      tbLuci.FieldByName('note_tecnico').Value := lLuci.NOTETECNICO;
      tbLuci.FieldByName('orariocontrollo').Value := lLuci.OrarioControllo;
      tbLuci.FieldByName('progressivo').Value := lLuci.PROGRESSIVO;
      tbLuci.FieldByName('stato').Value := lLuci.STATO;
      tbLuci.FieldByName('tipo_intervento').Value := lLuci.TIPOINTERVENTO;
      if lLuci.TIPOLUCE <> 0 then
        tbLuci.FieldByName('tipo_luce').Value := lLuci.TIPOLUCE;
      tbLuci.FieldByName('tecnicocontrollo').Value := lLuci.TecnicoControllo;
      tbLuci.FieldByName('ubicazione').Value := lLuci.UBICAZIONE;
      tbLuci.Post;
    end;

  tbEstintori.Open;
  if tbEstintori.RecordCount = 0 then
    for lEstintori in lStatino.Estintori do
    begin
      tbEstintori.Append;
      tbEstintori.FieldByName('statino').Value := aStatino;
      tbEstintori.FieldByName('anomalia').Value := lEstintori.ANOMALIA;
      tbEstintori.FieldByName('anomalia_approvata').Value := lEstintori.ANOMALIAAPPROVATA;
      tbEstintori.FieldByName('anno_costruzione').Value := lEstintori.ANNOCOSTRUZIONE;
      tbEstintori.FieldByName('aggiuntodamobile').Value := lEstintori.AggiuntoDaMobile;
      tbEstintori.FieldByName('anomaliaondownload').Value := lEstintori.AnomaliaOnDownload;
      tbEstintori.FieldByName('anomaliarisolta').Value := lEstintori.AnomaliaRisolta;
      tbEstintori.FieldByName('chiave').Value := lEstintori.Chiave;
      tbEstintori.FieldByName('consegnato').Value := IfThen(lEstintori.Consegnato, 'T', 'F');
      tbEstintori.FieldByName('controllato').Value := IfThen(lEstintori.Controllato, 'T', 'F');
      if lEstintori.DATALAVORAZIONE > 0 then
        tbEstintori.FieldByName('data_lavorazione').Value := lEstintori.DATALAVORAZIONE;
      // if lEstintori.DATASTARTUPCOL > 0 then
      tbEstintori.FieldByName('data_startup_col').Value := lEstintori.DATASTARTUPCOL;
      // if lEstintori.DATASTARTUPREV > 0 then
      tbEstintori.FieldByName('data_startup_rev').Value := lEstintori.DATASTARTUPREV;
      if lEstintori.DataConsegna > 0 then
        tbEstintori.FieldByName('dataconsegna').Value := lEstintori.DataConsegna;
      if lEstintori.DataControllo > 0 then
        tbEstintori.FieldByName('datacontrollo').Value := lEstintori.DataControllo;
      if lEstintori.DataControlloNegato > 0 then
        tbEstintori.FieldByName('datacontrollonegato').Value := lEstintori.DataControlloNegato;
      if lEstintori.DataRestituzione > 0 then
        tbEstintori.FieldByName('datarestituzione').Value := lEstintori.DataRestituzione;
      if lEstintori.DataRitiro > 0 then
        tbEstintori.FieldByName('dataritiro').Value := lEstintori.DataRitiro;
      if lEstintori.DataSmaltimento > 0 then
        tbEstintori.FieldByName('datasmaltimento').Value := lEstintori.DataSmaltimento;
      tbEstintori.FieldByName('id_nfc').Value := lEstintori.IDNFC;
      if lEstintori.MARCA <> 0 then
        tbEstintori.FieldByName('marca').Value := lEstintori.MARCA;
      tbEstintori.FieldByName('matricola').Value := lEstintori.MATRICOLA;
      tbEstintori.FieldByName('motivocontrollonegato').Value := lEstintori.MotivoControlloNegato;
      tbEstintori.FieldByName('motivoritiro').Value := lEstintori.MotivoRitiro;
      tbEstintori.FieldByName('note_tecnico').Value := lEstintori.NOTETECNICO;
      tbEstintori.FieldByName('noncontrollato').Value := lEstintori.NonControllato;
      tbEstintori.FieldByName('orarioconsegna').Value := lEstintori.OrarioConsegna;
      tbEstintori.FieldByName('orariocontrollo').Value := lEstintori.OrarioControllo;
      tbEstintori.FieldByName('orariocontrollonegato').Value := lEstintori.OrarioControlloNegato;
      tbEstintori.FieldByName('orarioritiro').Value := lEstintori.OrarioRitiro;
      tbEstintori.FieldByName('orariosmaltimento').Value := lEstintori.OrarioSmaltimento;
      tbEstintori.FieldByName('periodicita_collaudo').Value := lEstintori.PERIODICITACOLLAUDO;
      tbEstintori.FieldByName('periodicita_revisione').Value := lEstintori.PERIODICITAREVISIONE;
      tbEstintori.FieldByName('progressivo').Value := lEstintori.PROGRESSIVO;
      tbEstintori.FieldByName('restituito').Value := lEstintori.Restituito;
      tbEstintori.FieldByName('ritirato').Value := lEstintori.Ritirato;
      tbEstintori.FieldByName('stato').Value := lEstintori.STATO;
      tbEstintori.FieldByName('smaltito').Value := lEstintori.Smaltito;
      if lEstintori.TIPOESTINTORE <> 0 then
        tbEstintori.FieldByName('tipo_estintore').Value := lEstintori.TIPOESTINTORE;
      tbEstintori.FieldByName('tipo_intervento').Value := lEstintori.TIPOINTERVENTO;
      if lEstintori.TecnicoConsegna <> 0 then
        tbEstintori.FieldByName('tecnicoconsegna').Value := lEstintori.TecnicoConsegna;
      if lEstintori.TecnicoControllo <> 0 then
        tbEstintori.FieldByName('tecnicocontrollo').Value := lEstintori.TecnicoControllo;
      if lEstintori.TecnicoControlloNegato <> 0 then
        tbEstintori.FieldByName('tecnicocontrollonegato').Value := lEstintori.TecnicoControlloNegato;
      if lEstintori.TecnicoRestituzione <> 0 then
        tbEstintori.FieldByName('tecnicorestituzione').Value := lEstintori.TecnicoRestituzione;
      if lEstintori.TecnicoRitiro <> 0 then
        tbEstintori.FieldByName('tecnicoritiro').Value := lEstintori.TecnicoRitiro;
      if lEstintori.TecnicoSmaltimento <> 0 then
        tbEstintori.FieldByName('tecnicosmaltimento').Value := lEstintori.TecnicoSmaltimento;
      tbEstintori.FieldByName('ubicazione').Value := lEstintori.UBICAZIONE;
      tbEstintori.Post;
    end;

  tbIdranti.Open;
  if tbIdranti.RecordCount = 0 then
    for lIdranti in lStatino.Idranti do
    begin
      tbIdranti.Append;
      tbIdranti.FieldByName('statino').Value := aStatino;
      tbIdranti.FieldByName('chiave').Value := lIdranti.Chiave;
      tbIdranti.FieldByName('descrizione').Value := lIdranti.Descrizione;
      tbIdranti.FieldByName('prova_dinamica').Value := lIdranti.PROVADINAMICA;
      tbIdranti.FieldByName('quando_prova_dinamica').Value := lIdranti.QUANDOPROVADINAMICA;
      tbIdranti.FieldByName('stato').Value := lIdranti.STATO;
      tbIdranti.FieldByName('suggerimentolunghmanichetta').Value := lIdranti.SuggerimentoLunghManichetta;
      tbIdranti.FieldByName('suggerimentotipibocchelli').Value := lIdranti.SuggerimentoTipiBocchelli;
      tbIdranti.FieldByName('tipo').Value := lIdranti.TIPO;
      tbIdranti.FieldByName('tipo_attacco_motopompa').Value := lIdranti.TIPOATTACCOMOTOPOMPA;
      tbIdranti.FieldByName('ubicazione').Value := lIdranti.UBICAZIONE;
      tbIdranti.FieldByName('ubicazione_attacco_motopompa').Value := lIdranti.UBICAZIONEATTACCOMOTOPOMPA;
      tbIdranti.FieldByName('valvola_intercettazione').Value := lIdranti.VALVOLAINTERCETTAZIONE;
      tbIdranti.Post;
      tbBocchelli.Open;
      if tbBocchelli.RecordCount = 0 then
        for lBocchelli in lIdranti.Bocchelli do
        begin
          tbBocchelli.Append;
          tbBocchelli.FieldByName('statino').Value := aStatino;
          tbBocchelli.FieldByName('idrante').Value := lIdranti.Chiave;
          tbBocchelli.FieldByName('anno_manichetta').Value := lBocchelli.ANNOMANICHETTA;
          tbBocchelli.FieldByName('anno_pressatura').Value := lBocchelli.ANNOPRESSATURA;
          tbBocchelli.FieldByName('anno_startup').Value := lBocchelli.ANNOSTARTUP;
          tbBocchelli.FieldByName('anomalia').Value := lBocchelli.ANOMALIA;
          tbBocchelli.FieldByName('anomalia_approvata').Value := lBocchelli.ANOMALIAAPPROVATA;
          tbBocchelli.FieldByName('anomaliaondownload').Value := lBocchelli.AnomaliaOnDownload;
          tbBocchelli.FieldByName('anomaliarisolta').Value := lBocchelli.AnomaliaRisolta;
          tbBocchelli.FieldByName('chiave').Value := lBocchelli.Chiave;
          tbBocchelli.FieldByName('consegnato').Value := lBocchelli.Consegnato;
          tbBocchelli.FieldByName('controllato').Value := lBocchelli.Controllato;
          if lBocchelli.DataControllo > 0 then
            tbBocchelli.FieldByName('datacontrollo').Value := lBocchelli.DataControllo;
          if lBocchelli.DataPressatura > 0 then
            tbBocchelli.FieldByName('datapressatura').Value := lBocchelli.DataPressatura;
          if lBocchelli.DataRitiro > 0 then
            tbBocchelli.FieldByName('dataritiro').Value := lBocchelli.DataRitiro;
          tbBocchelli.FieldByName('id_bocchello').Value := lBocchelli.IDBOCCHELLO;
          tbBocchelli.FieldByName('id_nfc').Value := lBocchelli.IDNFC;
          tbBocchelli.FieldByName('lunghezza_manichetta').Value := lBocchelli.LUNGHEZZAMANICHETTA;
          tbBocchelli.FieldByName('mese_pressatura').Value := lBocchelli.MESEPRESSATURA;
          tbBocchelli.FieldByName('mese_startup').Value := lBocchelli.MESESTARTUP;
          tbBocchelli.FieldByName('note_tecnico').Value := lBocchelli.NOTETECNICO;
          tbBocchelli.FieldByName('orariocontrollo').Value := lBocchelli.OrarioControllo;
          tbBocchelli.FieldByName('orarioritiro').Value := lBocchelli.OrarioRitiro;
          tbBocchelli.FieldByName('pressaturaeffettuata').Value := lBocchelli.PressaturaEffettuata;
          tbBocchelli.FieldByName('ritirato').Value := lBocchelli.Ritirato;
          tbBocchelli.FieldByName('stato').Value := lBocchelli.STATO;
          tbBocchelli.FieldByName('tipo_bocchello').Value := lBocchelli.TIPOBOCCHELLO;
          tbBocchelli.FieldByName('tipo_intervento').Value := lBocchelli.TIPOINTERVENTO;
          tbBocchelli.FieldByName('tipo_lancia').Value := lBocchelli.TIPOLANCIA;
          tbBocchelli.FieldByName('tecnicocontrollo').Value := lBocchelli.TecnicoControllo;
          tbBocchelli.FieldByName('tecnicopressatura').Value := lBocchelli.TecnicoPressatura;
          tbBocchelli.FieldByName('tecnicoritiro').Value := lBocchelli.TecnicoRitiro;
          tbBocchelli.FieldByName('ubicazione').Value := lBocchelli.UBICAZIONE;
          tbBocchelli.Post;
        end;

    end;

  tbRilFumo.Open;
  if tbRilFumo.RecordCount = 0 then
    for lRilFumo in lStatino.RilevatoriFumo do
    begin
      tbRilFumo.Append;
      tbRilFumo.FieldByName('statino').Value := aStatino;
      tbRilFumo.FieldByName('anomalia').Value := lRilFumo.ANOMALIA;
      tbRilFumo.FieldByName('anomalia_approvata').Value := lRilFumo.ANOMALIAAPPROVATA;
      tbRilFumo.FieldByName('anomaliaondownload').Value := lRilFumo.AnomaliaOnDownload;
      tbRilFumo.FieldByName('anomaliarisolta').Value := lRilFumo.AnomaliaRisolta;
      tbRilFumo.FieldByName('chiave').Value := lRilFumo.Chiave;
      tbRilFumo.FieldByName('controllato').Value := lRilFumo.Controllato;
      tbRilFumo.FieldByName('descrizione').Value := lRilFumo.Descrizione;
      if lRilFumo.DataControllo > 0 then
        tbRilFumo.FieldByName('datacontrollo').Value := lRilFumo.DataControllo;
      tbRilFumo.FieldByName('id_nfc').Value := lRilFumo.IDNFC;
      tbRilFumo.FieldByName('marca_centrale').Value := lRilFumo.MARCACENTRALE;
      tbRilFumo.FieldByName('marca_ril_lineari').Value := lRilFumo.MARCARILLINEARI;
      tbRilFumo.FieldByName('note_tecnico').Value := lRilFumo.NOTETECNICO;
      tbRilFumo.FieldByName('noncontrollato').Value := lRilFumo.NonControllato;
      tbRilFumo.FieldByName('orariocontrollo').Value := lRilFumo.OrarioControllo;
      tbRilFumo.FieldByName('quantita_batterie').Value := lRilFumo.QUANTITABATTERIE;
      tbRilFumo.FieldByName('quantita_pannelli_ott_acust').Value := lRilFumo.QUANTITAPANNELLIOTTACUST;
      tbRilFumo.FieldByName('quantita_pulsanti').Value := lRilFumo.QUANTITAPULSANTI;
      tbRilFumo.FieldByName('quantita_rilevatori').Value := lRilFumo.QUANTITARILEVATORI;
      tbRilFumo.FieldByName('quantita_ril_lineari').Value := lRilFumo.QUANTITARILLINEARI;
      tbRilFumo.FieldByName('stato').Value := lRilFumo.STATO;
      tbRilFumo.FieldByName('tipi_rilevatori_lineari_fumi').Value := lRilFumo.TIPIRILEVATORILINEARIFUMI;
      tbRilFumo.FieldByName('tipo_batterie').Value := lRilFumo.TIPOBATTERIE;
      tbRilFumo.FieldByName('tipo_centrale').Value := lRilFumo.TIPOBATTERIE;
      tbRilFumo.FieldByName('tipo_intervento').Value := lRilFumo.TIPOINTERVENTO;
      tbRilFumo.FieldByName('tipo_rilevatori').Value := lRilFumo.TIPORILEVATORI;
      tbRilFumo.FieldByName('tipo_ril_lineari').Value := lRilFumo.TIPORILLINEARI;
      tbRilFumo.FieldByName('tecnicocontrollo').Value := lRilFumo.TecnicoControllo;
      tbRilFumo.FieldByName('ubicazione').Value := lRilFumo.UBICAZIONE;
      tbRilFumo.Post;
    end;

  // lGruppi
  tbGruppi.Open;
  if tbGruppi.RecordCount = 0 then
    for lGruppi in lStatino.GruppiPressurizzazione do
    begin
      tbGruppi.Append;
      tbGruppi.FieldByName('statino').Value := aStatino;
      tbGruppi.FieldByName('anomalia').Value := lGruppi.ANOMALIA;
      tbGruppi.FieldByName('anomalia_approvata').Value := lGruppi.ANOMALIAAPPROVATA;
      tbGruppi.FieldByName('anomaliaondownload').Value := lGruppi.AnomaliaOnDownload;
      tbGruppi.FieldByName('anomaliarisolta').Value := lGruppi.AnomaliaRisolta;
      tbGruppi.FieldByName('chiave').Value := lGruppi.Chiave;
      tbGruppi.FieldByName('controllato').Value := lGruppi.Controllato;
      tbGruppi.FieldByName('descrizione').Value := lGruppi.Descrizione;
      if lGruppi.DataControllo > 0 then
        tbGruppi.FieldByName('datacontrollo').Value := lGruppi.DataControllo;
      tbGruppi.FieldByName('id_nfc').Value := lGruppi.IDNFC;
      tbGruppi.FieldByName('marca_misuratore_portata').Value := lGruppi.MARCAMISURATOREPORTATA;
      tbGruppi.FieldByName('marca_motopompa').Value := lGruppi.MARCAMOTOPOMPA;
      tbGruppi.FieldByName('marca_pompa_jockey').Value := lGruppi.MARCAPOMPAJOCKEY;
      tbGruppi.FieldByName('marca_pompa_portata').Value := lGruppi.MARCAPOMPAPORTATA;
      tbGruppi.FieldByName('modello_misuratore_portata').Value := lGruppi.MODELLOMISURATOREPORTATA;
      tbGruppi.FieldByName('modello_motopompa').Value := lGruppi.MODELLOMOTOPOMPA;
      tbGruppi.FieldByName('modello_pompa_jockey').Value := lGruppi.MODELLOPOMPAJOCKEY;
      tbGruppi.FieldByName('modello_pompa_portata').Value := lGruppi.MODELLOPOMPAPORTATA;
      tbGruppi.FieldByName('note').Value := lGruppi.Note;
      tbGruppi.FieldByName('noncontrollato').Value := lGruppi.NonControllato;
      tbGruppi.FieldByName('orariocontrollo').Value := lGruppi.OrarioControllo;
      tbGruppi.FieldByName('stato').Value := lGruppi.STATO;
      tbGruppi.FieldByName('tipo_batterie').Value := lGruppi.TIPOBATTERIE;
      tbGruppi.FieldByName('tipo_intervento').Value := lGruppi.TIPOINTERVENTO;
      tbGruppi.FieldByName('tipo_motopompa').Value := lGruppi.TIPOMOTOPOMPA;
      tbGruppi.FieldByName('tipo_pompa_jockey').Value := lGruppi.TIPOPOMPAJOCKEY;
      tbGruppi.FieldByName('tipo_pompa_portata').Value := lGruppi.TIPOPOMPAPORTATA;
      tbGruppi.FieldByName('tipo_stazione').Value := lGruppi.TIPOSTAZIONE;
      tbGruppi.FieldByName('tipo_visita').Value := lGruppi.TIPOVISITA;
      tbGruppi.FieldByName('tecnicocontrollo').Value := lGruppi.TecnicoControllo;
      tbGruppi.FieldByName('vasi_espansione').Value := lGruppi.VASIESPANSIONE;
      tbGruppi.Post;
    end;

  tbImpianti.Open;
  if tbImpianti.RecordCount = 0 then
    for lImpianti in lStatino.ImpiantiElettrici do
    begin
      tbImpianti.Append;
      tbImpianti.FieldByName('statino').Value := aStatino;
      tbImpianti.FieldByName('chiave').Value := lImpianti.Chiave;
      tbImpianti.FieldByName('descrizione').Value := lImpianti.Descrizione;
      tbImpianti.FieldByName('prezzo').Value := lImpianti.PREZZO;
      tbImpianti.FieldByName('stato').Value := lImpianti.STATO;
      tbImpianti.FieldByName('tipo_visita').Value := lImpianti.TIPOVISITA;
      tbImpianti.FieldByName('ubicazione').Value := lImpianti.UBICAZIONE;
      tbImpianti.Post;

      tbElementi.Open;
      if tbElementi.RecordCount = 0 then
        for lElementi in lImpianti.ElementiElettrici do
        begin
          tbElementi.Append;
          tbElementi.FieldByName('anomalia').Value := lElementi.ANOMALIA;
          tbElementi.FieldByName('anomalia_approvata').Value := lElementi.ANOMALIAAPPROVATA;
          tbElementi.FieldByName('anomaliaondownload').Value := lElementi.AnomaliaOnDownload;
          tbElementi.FieldByName('anomaliarisolta').Value := lElementi.AnomaliaRisolta;
          tbElementi.FieldByName('chiave').Value := lElementi.Chiave;
          tbElementi.FieldByName('controllato').Value := lElementi.Controllato;
          if lElementi.DataControllo > 0 then
            tbElementi.FieldByName('datacontrollo').Value := lElementi.DataControllo;
          tbElementi.FieldByName('marca').Value := lElementi.MARCA;
          tbElementi.FieldByName('modello').Value := lElementi.MODELLO;
          tbElementi.FieldByName('orariocontrollo').Value := lElementi.OrarioControllo;
          tbElementi.FieldByName('progressivo').Value := lElementi.PROGRESSIVO;
          tbElementi.FieldByName('stato').Value := lElementi.STATO;
          tbElementi.FieldByName('tipo').Value := lElementi.TIPO;
          tbElementi.FieldByName('tipo_intervento').Value := lElementi.TIPOINTERVENTO;
          tbElementi.FieldByName('tecnicocontrollo').Value := lElementi.TecnicoControllo;
          tbElementi.FieldByName('ubicazione').Value := lElementi.UBICAZIONE;
          tbElementi.Post;
        end;
    end;

  FJsonFinal := lStatino.AsJson;
  FJsonFinal := Janua.Core.JSON.JsonPretty(FJsonFinal);

  FJsonCompatible := ReplaceJsonToPhoenix(FJsonFinal);

end;

procedure TdmFbPhoenixJsonReport.OpenSintesiReport(const aDataset: TDataset);
begin
  var
  aField := aDataset.FindField('STATINO');
  if Assigned(aField) and (qrySintesiReport.ParamByName('STATINO').AsInteger <> aField.AsInteger) then
  begin
    qrySintesiReport.Close;
    qrySintesiReport.ParamByName('STATINO').AsInteger := aField.AsInteger;
    qrySintesiReport.Open;
  end;
end;

procedure TdmFbPhoenixJsonReport.SetFoundReplace(const Value: string);
begin
  FFoundReplace := Value;
end;

procedure TdmFbPhoenixJsonReport.SetJsonCompatible(const Value: string);
begin
  FJsonCompatible := Value;
end;

procedure TdmFbPhoenixJsonReport.SetJsonFinal(const Value: string);
begin
  FJsonFinal := Value;
end;

procedure TdmFbPhoenixJsonReport.SetJsonPretty(const Value: string);
begin
  FJsonPretty := Value;
end;

procedure TdmFbPhoenixJsonReport.SetOriginal(const Value: string);
begin
  FOriginal := Value;
end;

procedure TdmFbPhoenixJsonReport.SetTestBack(const Value: string);
begin
  FTestBack := Value;
end;

procedure TdmFbPhoenixJsonReport.UpdateAllEstintori;
begin
  if not qryStatiniEstintori.Active then
    qryStatiniEstintori.Open;

  qryStatiniEstintori.First;
  dsStatiniEstintori.Enabled := False;
  dsInterventiEstintori.Enabled := False;
  While not qryStatiniEstintori.Eof do
  begin
    var
    lStatino := TStatino.Create;
    var
    lJson := ReplacePhoenixJson(qryStatiniEstintoriJSON_DA_MOBILE.AsString);
    try
      lStatino.AsJson := lJson;
      qryInterventiEstintori.Close;
      self.qryInterventiEstintori.Params[0].AsInteger := qryStatiniEstintoriSTATINO.AsInteger;
      qryInterventiEstintori.Open;
      UpdateEstintori(lStatino);
      lStatino.Free;
    except
      on e: exception do
      begin
        lStatino.Free;
      end;
      // per ora non fa nulla
    end;
    qryStatiniEstintori.Next;
  end;
end;

procedure TdmFbPhoenixJsonReport.UpdateAllFumi;
begin
  qryStatiniFumo.First;
  While not qryStatiniFumo.Eof do
  begin
    var
    lStatino := TStatino.Create;
    var
    lJson := ReplacePhoenixJson(qryStatiniFumoJSON_DA_MOBILE.AsString);
    try
      lStatino.AsJson := lJson;
      UpdateFumi(lStatino);
    except
      on e: exception do
      begin

      end;
      // per ora non fa nulla
    end;
    qryStatiniFumo.Next;
  end;
end;

procedure TdmFbPhoenixJsonReport.UpdateAllGruppi;
begin
  qryStatiniGruppi.First;
  While not qryStatiniGruppi.Eof do
  begin
    var
    lStatino := TStatino.Create;
    var
    lJson := ReplacePhoenixJson(qryStatiniGruppiJSON_DA_MOBILE.AsString);
    try
      lStatino.AsJson := lJson;
      UpdateGruppi(lStatino);
    except
      on e: exception do
      begin

      end;
      // per ora non fa nulla
    end;
    qryStatiniGruppi.Next;
  end;
end;

procedure TdmFbPhoenixJsonReport.UpdateAllIdranti;
begin

end;

procedure TdmFbPhoenixJsonReport.UpdateAllLuci;
begin
  qryStatiniLuci.First;
  While not qryStatiniLuci.Eof do
  begin
    var
    lStatino := TStatino.Create;
    var
    lJson := ReplacePhoenixJson(qryStatiniLuciJSON_DA_MOBILE.AsString);
    try
      lStatino.AsJson := lJson;
      UpdateLuci(lStatino);
    except
      on e: exception do
      begin

      end;
      // per ora non fa nulla
    end;
    qryStatiniLuci.Next;
  end;
end;

procedure TdmFbPhoenixJsonReport.UpdateAllPorte;
begin
  qryStatiniPorte.First;
  While not qryStatiniPorte.Eof do
  begin
    var
    lStatino := TStatino.Create;
    var
    lJson := ReplacePhoenixJson(qryStatiniPorteJSON_DA_MOBILE.AsString);
    try
      lStatino.AsJson := lJson;
      UpdatePorte(lStatino);
    except
      on e: exception do
      begin

      end;
      // per ora non fa nulla
    end;
    qryStatiniPorte.Next;
  end;
end;

procedure TdmFbPhoenixJsonReport.UpdateEstintori(const aClass: TStatino);
var
  lEstintori: TEstintori;
begin
  if aClass.Estintori.Count > 0 then
    for lEstintori in aClass.Estintori do
      if qryInterventiEstintori.Locate('ESTINTORE', lEstintori.Chiave, []) then
      begin
        try
          qryInterventiEstintori.Edit;
          qryInterventiEstintoriANOMALIA_APPROVATA.Value := BoolToStr(lEstintori.ANOMALIAAPPROVATA);
          qryInterventiEstintoriAGGIUNTODAMOBILE.Value := BoolToStr(lEstintori.AggiuntoDaMobile);
          qryInterventiEstintoriANOMALIAONDOWNLOAD.Value := lEstintori.AnomaliaOnDownload;
          qryInterventiEstintoriANOMALIARISOLTA.Value := BoolToStr(lEstintori.AnomaliaRisolta);
          qryInterventiEstintoriCONSEGNATO.Value := BoolToStr(lEstintori.Consegnato);
          qryInterventiEstintoriCONTROLLATO.Value := BoolToStr(lEstintori.Controllato);
          qryInterventiEstintoriDATA_LAVORAZIONE.Value := lEstintori.DATALAVORAZIONE;
          qryInterventiEstintoriMOTIVOCONTROLLONEGATO.Value := lEstintori.MotivoControlloNegato;
          qryInterventiEstintoriMOTIVORITIRO.Value := lEstintori.MotivoRitiro;
          qryInterventiEstintoriNONCONTROLLATO.Value := BoolToStr(lEstintori.NonControllato);
          qryInterventiEstintoriORARIOCONSEGNA.Value := lEstintori.OrarioConsegna;
          qryInterventiEstintoriORARIOCONTROLLO.Value := lEstintori.OrarioControllo;
          qryInterventiEstintoriORARIOCONTROLLONEGATO.Value := lEstintori.OrarioControlloNegato;
          qryInterventiEstintoriORARIORITIRO.Value := lEstintori.OrarioRitiro;
          qryInterventiEstintoriORARIOSMALTIMENTO.Value := lEstintori.OrarioSmaltimento;
          qryInterventiEstintoriPERIODICITA_COLLAUDO.Value := lEstintori.PERIODICITACOLLAUDO;
          qryInterventiEstintoriPERIODICITA_REVISIONE.Value := lEstintori.PERIODICITAREVISIONE;
          qryInterventiEstintoriRESTITUITO.Value := BoolToStr(lEstintori.Restituito);
          qryInterventiEstintoriRITIRATO.Value := BoolToStr(lEstintori.Ritirato);
          qryInterventiEstintoriSMALTITO.Value := BoolToStr(lEstintori.Smaltito);
          qryInterventiEstintoriTIPO_ESTINTORE.Value := lEstintori.TIPOESTINTORE;
          qryInterventiEstintoriTIPO_INTERVENTO.Value := lEstintori.TIPOINTERVENTO;
          qryInterventiEstintoriTECNICOCONSEGNA.Value := lEstintori.TecnicoConsegna;
          qryInterventiEstintoriTECNICOCONTROLLO.Value := lEstintori.TecnicoControllo;
          qryInterventiEstintoriTECNICOCONTROLLONEGATO.Value := lEstintori.TecnicoControlloNegato;
          qryInterventiEstintoriTECNICORESTITUZIONE.Value := lEstintori.TecnicoRestituzione;
          qryInterventiEstintoriTECNICORITIRO.Value := lEstintori.TecnicoRitiro;
          qryInterventiEstintoriTECNICOSMALTIMENTO.Value := lEstintori.TecnicoSmaltimento;
          qryInterventiEstintoriANNO_COSTRUZIONE_1.Value := lEstintori.ANNOCOSTRUZIONE;
          qryInterventiEstintoriMARCA_1.Value := lEstintori.MARCA;
          qryInterventiEstintoriMATRICOLA_1.Value := lEstintori.MATRICOLA;
          qryInterventiEstintoriPROGRESSIVO_1.Value := lEstintori.PROGRESSIVO;
          qryInterventiEstintori.Post;
        except
          on e: exception do
            qryInterventiEstintori.Cancel;
        end;
      end;

end;

procedure TdmFbPhoenixJsonReport.UpdateFromClass(const aClass: TStatino);
begin
  UpdateLuci(aClass);
end;

procedure TdmFbPhoenixJsonReport.UpdateFumi(const aClass: TStatino);
var
  lFumi: TRilevatoriFumo;
begin
  if aClass.RilevatoriFumo.Count > 0 then
    for lFumi in aClass.RilevatoriFumo do
      if qryInterventiFumi.Locate('ATTREZZATURA', lFumi.Chiave, []) then
      begin
        try
          qryInterventiFumi.Edit;
          qryInterventiFumiCONTROLLATO.AsString := BoolToStr(lFumi.Controllato);
          qryInterventiFumiANOMALIA_ON_DOWNLOAD.AsString := lFumi.AnomaliaOnDownload;
          qryInterventiFumiANOMALIA_RISOLTA.AsString := BoolToStr(lFumi.AnomaliaRisolta);
          qryInterventiFumiTECNICO_CONTROLLO.AsInteger := lFumi.TecnicoControllo;
          qryInterventiFumi.Post;
        except
          on e: exception do
            qryInterventiFumi.Cancel;
        end;
      end;

end;

procedure TdmFbPhoenixJsonReport.UpdateGruppi(const aClass: TStatino);
var
  lGruppi: TGruppiPressurizzazione;
begin
  if aClass.GruppiPressurizzazione.Count > 0 then
    for lGruppi in aClass.GruppiPressurizzazione do
      if qryInterventiGruppi.Locate('ATTREZZATURA', lGruppi.Chiave, []) then
      begin
        try
          qryInterventiGruppi.Edit;
          qryInterventiGruppiCONTROLLATO.AsString := BoolToStr(lGruppi.Controllato);
          qryInterventiGruppiANOMALIA_ON_DOWNLOAD.AsString := lGruppi.AnomaliaOnDownload;
          qryInterventiGruppiANOMALIA_RISOLTA.AsString := BoolToStr(lGruppi.AnomaliaRisolta);
          qryInterventiGruppiTECNICO_CONTROLLO.AsInteger := lGruppi.TecnicoControllo;
          qryInterventiGruppi.Post;
        except
          on e: exception do
            qryInterventiGruppi.Cancel;
        end;
      end;
end;

procedure TdmFbPhoenixJsonReport.UpdateIdranti(const aClass: TStatino);
var
  lBocc: TBocchelli;
  lId: TIdranti;
begin
  if aClass.Idranti.Count > 0 then
    for lId in aClass.Idranti do
      if qryInterventiLuci.Locate('ATTREZZATURA', lBocc.Chiave, []) then
      begin
        try
          qryInterventiLuci.Edit;

          qryInterventiLuci.Post;
        except
          on e: exception do
            qryInterventiLuci.Cancel;
        end;
      end;
end;

procedure TdmFbPhoenixJsonReport.UpdateLuci(const aClass: TStatino);
var
  lLuci: TLuci;
begin
  if aClass.Luci.Count > 0 then
    for lLuci in aClass.Luci do
      if qryInterventiLuci.Locate('ATTREZZATURA', lLuci.Chiave, []) then
      begin
        try
          qryInterventiLuci.Edit;
          qryInterventiLuciCONTROLLATO.AsString := BoolToStr(lLuci.Controllato);
          qryInterventiLuciANOMALIA_ON_DOWNLOAD.AsString := lLuci.AnomaliaOnDownload;
          qryInterventiLuciANOMALIA_RISOLTA.AsString := BoolToStr(lLuci.AnomaliaRisolta);
          qryInterventiLuciTECNICO_CONTROLLO.AsInteger := lLuci.TecnicoControllo;
          qryInterventiLuci.Post;
        except
          on e: exception do
            qryInterventiLuci.Cancel;
        end;
      end;
end;

procedure TdmFbPhoenixJsonReport.UpdatePorte(const aClass: TStatino);
var
  lPorte: TPorte;
begin
  if aClass.Porte.Count > 0 then
    for lPorte in aClass.Porte do
      if qryInterventiPorte.Locate('ATTREZZATURA', lPorte.Chiave, []) then
      begin
        try
          qryInterventiPorte.Edit;
          qryInterventiPorteCONTROLLATO.AsString := BoolToStr(lPorte.Controllato);
          qryInterventiPorteANOMALIA_ON_DOWNLOAD.AsString := lPorte.AnomaliaOnDownload;
          qryInterventiPorteANOMALIA_RISOLTA.AsString := BoolToStr(lPorte.AnomaliaRisolta);
          qryInterventiPorteTECNICO_CONTROLLO.AsInteger := lPorte.TecnicoControllo;
          qryInterventiPorte.Post;
        except
          on e: exception do
            qryInterventiPorte.Cancel;
        end;
      end;

end;

end.
