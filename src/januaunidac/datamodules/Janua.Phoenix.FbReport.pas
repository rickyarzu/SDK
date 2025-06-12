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
    qryStatiniMESE_INTERVENTO: TSmallintField;
    qryStatiniNOME_MESE: TStringField;
    qrySintesiInterventi: TUniQuery;
    qrySintesiInterventiROWNUM_DISPARI: TLargeintField;
    qrySintesiInterventiSTATINO_DISPARI: TIntegerField;
    qrySintesiInterventiINTERVENTO_DISPARI: TStringField;
    qrySintesiInterventiNUMERO_DISPARI: TLargeintField;
    qrySintesiInterventiROWNUM_DISPARI_1: TLargeintField;
    qrySintesiInterventiSTATINO_DISPARI_1: TIntegerField;
    qrySintesiInterventiINTERVENTO_DISPARI_1: TStringField;
    qrySintesiInterventiNUMERO_DISPARI_1: TLargeintField;
    qryTipoInterventi: TUniQuery;
    qryTipoInterventiPOS: TIntegerField;
    qryTipoInterventiSTATINO: TIntegerField;
    qryTipoInterventiDESCRIZIONE: TStringField;
    qryTipoInterventiCONTROLLI: TLargeintField;
    qryTipoInterventiORDINARIO: TLargeintField;
    qryTipoInterventiREVISIONE: TLargeintField;
    qryTipoInterventiCOLLAUDO: TLargeintField;
    qryTipoInterventiSOSTITUZIONE: TLargeintField;
    qryTipoInterventiRICARICA: TLargeintField;
    qryTipoInterventiRIPARAZIONE: TLargeintField;
    qryTipoInterventiNON_ESEGUITE: TLargeintField;
    qryAnomalieEstintori: TUniQuery;
    qryAnomalieEstintoriANOMALIA: TWideStringField;
    qryAnomalieEstintoriPROGRESSIVO: TIntegerField;
    qryAnomalieEstintoriUBICAZIONE: TWideStringField;
    qryAnomalieEstintoriDESCR_COMPATTA: TStringField;
    qryAnomalieEstintoriMATRICOLA: TStringField;
    qryTipoInterventiPRESSATURA: TLargeintField;
    qryTipoInterventiNUOVI: TLargeintField;
    qryDateInterventi: TUniQuery;
    qryDateInterventiSTATINO: TIntegerField;
    qryDateInterventiDESCRIZIONE: TStringField;
    qryDateInterventiDATA_CONTROLLO: TDateField;
    qryEstitoriRitirati: TUniQuery;
    qryEstitoriRitiratiSTATINO: TIntegerField;
    qryEstitoriRitiratiTIPO: TStringField;
    qryEstitoriRitiratiPROGRESSIVO: TIntegerField;
    qryEstitoriRitiratiMATRICOLA: TStringField;
    qryEstitoriRitiratiDESCRIZIONE: TStringField;
    qryEstitoriRitiratiMOTIVO: TStringField;
    qryDateInterventiTECNICO_CONTROLLO: TIntegerField;
    qryAnomaliePorte: TUniQuery;
    qryAnomaliePorteSTATINO: TIntegerField;
    qryAnomaliePortePROGRESSIVO: TIntegerField;
    qryAnomaliePorteMATRICOLA: TStringField;
    qryAnomaliePorteUBICAZIONE: TWideStringField;
    qryAnomaliePorteDESCRIZIONE: TStringField;
    qryAnomaliePorteANOMALIA: TWideStringField;
    qryAnomaliePorteANOMALIA_ANAGRAFICA: TBlobField;
    qryAnomalieLuci: TUniQuery;
    qryAnomalieLuciSTATINO: TIntegerField;
    qryAnomalieLuciPROGRESSIVO: TIntegerField;
    qryAnomalieLuciUBICAZIONE: TWideStringField;
    qryAnomalieLuciDESCRIZIONE: TStringField;
    qryAnomalieLuciDES_MARCA_LUCE: TStringField;
    qryAnomalieLuciANOMALIA_ON_DOWNLOAD: TStringField;
    qryAnomalieRilevatori: TUniQuery;
    qryAnomalieRilevatoriSTATINO: TIntegerField;
    qryAnomalieRilevatoriUBICAZIONE: TWideStringField;
    qryAnomalieRilevatoriATTREZZATURA: TIntegerField;
    qryAnomalieRilevatoriDESCRIZIONE: TStringField;
    qryAnomalieRilevatoriANOMALIA_ON_DOWNLOAD: TStringField;
    qryAnomalieSprinkler: TUniQuery;
    qryAnomalieSprinklerSTATINO: TIntegerField;
    qryAnomalieSprinklerUBICAZIONE: TWideStringField;
    qryAnomalieSprinklerDESCRIZIONE: TStringField;
    qryAnomalieSprinklerMODELLO: TStringField;
    qryAnomalieSprinklerANOMALIA_ON_DOWNLOAD: TStringField;
    qryAnomalieSprinklerANOMALIA: TWideStringField;
    qryAnomalieSprinklerANOMALIA_INTERVENTO: TBlobField;
    qryAnomalieGruppi: TUniQuery;
    qryAnomalieGruppiSTATINO: TIntegerField;
    qryAnomalieGruppiDESCRIZIONE: TStringField;
    qryAnomalieGruppiANOMALIA: TWideStringField;
    qryAnomalieGruppiANOMALIA_ON_DOWNLOAD: TStringField;
    qryAnomalieIdranti: TUniQuery;
    qryAnomalieIdrantiSTATINO: TIntegerField;
    qryAnomalieIdrantiID_BOCCHELLO: TIntegerField;
    qryAnomalieIdrantiUBICAZIONE: TWideStringField;
    qryAnomalieIdrantiUBICAZIONE_IDRANTE: TWideStringField;
    qryAnomalieIdrantiDES_BOCCHELLO: TStringField;
    qryAnomalieIdrantiANOMALIA: TWideStringField;
    qrpCheckList: TUniQuery;
    qrpCheckListDetails: TUniQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    SmallintField1: TSmallintField;
    WideMemoField1: TWideMemoField;
    IntegerField3: TIntegerField;
    qrpCheckListCHIAVE: TIntegerField;
    qrpCheckListSTATINO: TIntegerField;
    qrpCheckListDESCRIZIONE_ATTREZZATURA: TWideStringField;
    qrpCheckListTIPOLOGIA_DESCRIZIONE: TStringField;
    dsChecklist: TUniDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenReport(const aReportID: NativeInt);
  end;

var
  dmPhoenixFbReport: TdmPhoenixFbReport;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmPhoenixFbReport }

procedure TdmPhoenixFbReport.OpenReport(const aReportID: NativeInt);
begin
  qryStatini.Close;
  qryStatini.Params[0].AsInteger := aReportID;
  qryStatini.Open;

  qrySintesiInterventi.Close;
  qrySintesiInterventi.Params[0].AsInteger := aReportID;
  qrySintesiInterventi.Open;

  qryTipoInterventi.Close;
  qryTipoInterventi.Params[0].AsInteger := aReportID;
  qryTipoInterventi.Open;

  qryEstitoriRitirati.Close;
  qryEstitoriRitirati.Params[0].AsInteger := aReportID;
  qryEstitoriRitirati.Open;

  qryAnomalieEstintori.Close;
  qryAnomalieEstintori.Params[0].AsInteger := aReportID;
  qryAnomalieEstintori.Open;

  qryDateInterventi.Close;
  qryDateInterventi.Params[0].AsInteger := aReportID;
  qryDateInterventi.Open;

  qryAnomaliePorte.Close;
  qryAnomaliePorte.Params[0].AsInteger := aReportID;
  qryAnomaliePorte.Open;

  qryAnomalieLuci.Close;
  qryAnomalieLuci.Params[0].AsInteger := aReportID;
  qryAnomalieLuci.Open;

  qryAnomalieRilevatori.Close;
  qryAnomalieRilevatori.Params[0].AsInteger := aReportID;
  qryAnomalieRilevatori.Open;

  qryAnomalieSprinkler.Close;
  qryAnomalieSprinkler.Params[0].AsInteger := aReportID;
  qryAnomalieSprinkler.Open;

  //
  qryAnomalieGruppi.Close;
  qryAnomalieGruppi.Params[0].AsInteger := aReportID;
  qryAnomalieGruppi.Open;

  // qryAnomalieIdranti
  qryAnomalieIdranti.Close;
  qryAnomalieIdranti.Params[0].AsInteger := aReportID;
  qryAnomalieIdranti.Open;

  qrpCheckList.Close;
  qrpCheckList.Params[0].AsInteger := aReportID;
  qrpCheckList.Open;

  qrpCheckListDetails.Close;
  // qrpCheckList.Params[0].AsInteger := aReportID;
  qrpCheckListDetails.Open;

end;

end.
