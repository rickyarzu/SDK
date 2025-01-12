unit Janua.Phoenix.Globale;

interface

Uses {ZQRPDFFilter,} Graphics, Classes, Forms, XMLDoc, Windows, SysUtils, Dialogs, System.IniFiles,
  // Query Globali
  FIBDatabase, pFIBDatabase, FIBQuery, pFIBQuery,
  // Zirilli
  ZRegioniItaliane, ZEdit, ZFormShowMessage, ZDBaseFunct, ZFileFunct, ZTStringsFunct,
  ZCriptingFunct,  ZLibra, ZUserID, ZDateFunct, ZMathFunct, ZStringConvFunct, ZFatturaElettronica,
  ZStringFunct, {ZDelphiTwain_Vcl,}
  ZDocumentContainer, ZAdvancedStringGrid, ContNrs;

// Configurazione esterne Libra
Const
  KEY_CLIENTE_GENERAZIONE: String = 'Cliente generazione';

  ID_OPER_RIT_ESTINTORE_ORDINARIA: Integer = 0;
  ID_OPER_RIT_ESTINTORE_REVISIONE: Integer = 1;
  ID_OPER_RIT_ESTINTORE_REV_COLL: Integer = 2;

  IMG_SEMAFORO_SPENTO: String = '\SemaforoSpento.png';
  IMG_SEMAFORO_VERDE: String = '\SemaforoVerde.png';
  IMG_SEMAFORO_ROSSO: String = '\SemaforoRosso.png';
  IMG_SEMAFORO_GIALLO: String = '\SemaforoGiallo.png';
  IMG_SEMAFORO_CLASSICA: String = '\SemaforoClassica.png';

  QRY_DESCR_FATTURA
    : String = 'SELECT ID_FATTURA || ''/'' || ANNO_FATTURA FROM FATTURE WHERE CHIAVE = :ChiaveFattura';
  QRY_DESCR_NOTA
    : String = 'SELECT ID_NOTA || ''/'' || ANNO_NOTA FROM NOTE_DI_CREDITO WHERE CHIAVE = :ChiaveFattura';

Const
  MOV_TIPO_FATTATTIVO = 1;
  MOV_TIPO_FATTPASSIVO = 2;
  MOV_TIPO_INSOLUTO = 3;
  MOV_TIPO_NOTE_CREDITO = 4;

  OPER_LAB_INSERIMENTO: String = 'I';
  OPER_LAB_ELIMINAZIONE: String = 'D';
  OPER_LAB_MODIFICA: String = 'U';

  FILE_PRODOTTI_SOTTOSOGLIA = '\MagSottosoglia.jpg';
  FILE_MANCANZA_PRODOTTI = '\MagAssenza.jpg';

  STATO_LAVORAZIONE_RITIRATO: String = 'R';
  STATO_LAVORAZIONE_PRONTO: String = 'P';

var
  GlobalLibra: TLibra;
  GlobalXMLDocument: TXMLDocument;
  { GlobalTwain: TZDelphiTwain; }

Type
  TNotifyInvioEMail = Procedure(Sender: TObject; IdAmministratore: Integer) of Object;
  TStatoStatinoDaTablet = (stsDaInviare, stsInviato, stsRicevuto, stsGestito);

  TTipoAttrezzature = (typIdranti, typEstintori, typSprinkler, typPorte, typRilFumo, typLuci);

  TTipoCassa = (casContanti, casAssegni, casContoCorrente, casMondoEsterno);

  TAggiornamentoTipoIntervento = class(TObject)
    Constructor Create(_ChiaveAttrezzatura: Integer; _VecchioTipoIntervento: String;
      _NuovoTipoIntervento: String);
  public
    ChiaveAttrezzatura: Integer;
    VecchioTipoIntervento: String;
    NuovoTipoIntervento: String;
  end;

  TFiBConfig = record
  public
    class var DB_PRINCIPALE: TpFIBDatabase;
    class var TB_PRINCIPALE: TpFIBTransaction;
    class var QRY_GENERIC: TpFIBQuery;
  end;

  TSystemInformation = class(TObject)
    Constructor Create;
    Destructor Destroy; OverRide;
    Procedure Load(QryGeneric: TpFIBQuery);
    Procedure Save(QryGeneric: TpFIBQuery);
    Procedure LoadIni;
    Procedure SaveIni;
  private
    FNrImmaginiPerPDF: Integer;
    FQuery: TpFIBQuery;
    procedure FOnGRIDMAILDblClick(Sender: TObject);
  public
    ImportazioneAutomaticaMB: record
      Abilitata: Boolean;
      OraScarico: TDateTime;
      UltimoScarico: TDateTime;
    end;

    CheckStatoLavorazioni: Boolean;
    GestioneFatturePassive: Boolean;
    PathModelloContratti: String;
    CartellaExporting: String;
    DenominazioneSocieta: String;
    PartitaIVASocieta: String;
    ShowAllTecnici: Boolean;
    IntestazioneSocieta: TStringList;
    SuggResocontoFatture: TStringList;
    IBAN: String;
    IVA: Integer;
    CostoSostituzioneValv: Double;
    DefaultContoCorrente: Integer;
    CassaContantiInizio: Double;
    DataCassaContantiInizio: TDateTime;
    CassaAssegniInizio: Double;
    DataCassaAssegniInizio: TDateTime;
    ContoFIDO: Integer;
    ContoDestinazioneRIBA: Integer;

    HTTP: record
      Link: String;
      PwdAdmin: String;
      LinkWebApp: String;
    end;

    SMTP: record
      Server: String;
      Porta: Integer;
      Mittente: String;
      Oggetti: TStringList;
      UserName: String;
      Password: String;
      CCn: String;
      Testo: TStringList;
    end;

    Scanner: Integer;
    RisoluzioneScanner: Integer;
    DBAccount: String;
    DBPassword: String;
    DBDatabase: String;
    DBServer: String;
    DBConfigured: Boolean;
    UltimoAggiornamento: TDateTime;

    Etichette: record
      MargineDestro: Double;
      MargineSinis: Double;
      MargineSup: Double;
      MargineInf: Double;
      NumeroColonne: Integer;
      InterVert: Double;
      AltezzaEtichetta: Double;
      InterOriz: Double;
      DisegnaBordi: Boolean;
      Orizzontale: Boolean;
    end;

    ScritteGenAutomaticaFatture: record
      ControlloPeriodicoImpiantiElettrici, ControlloGruppoMensile, ControlloGruppoTrimestrale,
        ControlloGruppoSemestrale, ControlloSprinklerTrimestrale, ControlloSprinklerSemestrale,
        OrdinarioEstintori, OrdinarioPorte, OrdinarioLuci, OrdinarioFumi, OrdinarioBocchelli, ProvaDinamica,
        RevisioneEstintori, SostituzioneEstintori1, SostituzioneEstintori2, SostituzioneValvolaEstintori,
        Smaltimento1, Smaltimento2, CollaudoEstintoreCO2, CollaudoEstintoreNonCO2, CollaudoBocchelli: String;
    end;

    SomeFatturaRegistrata: Boolean;
    ImportazioneDaTabletInCorso: Boolean;
    Property NrImmaginiPerPdf: Integer Read FNrImmaginiPerPDF;
    Procedure MAILLoadGrid(AGrid: TAdvancedStringGrid; AQuery: TpFIBQuery);
    Procedure MAILInitGrid(AGrid: TAdvancedStringGrid);
    Procedure MAILClearGrid(AGrid: TAdvancedStringGrid);
  end;

var
  SystemInformation: TSystemInformation;
  ElencoProvince: TElencoCAP;
  GlobalUserID: TUserID;

Const
  ID_TUTTI_I_CLIENTI = 1;
  ID_TUTTE_LE_FATTURE = 2;
  ID_CONFIGURAZIONE = 3;
  ID_INFO_ESTINTORI = 4;
  ID_TUTTI_I_SETTORI = 5;
  ID_TUTTI_I_PRODOTTI = 6;
  ID_MAGAZZINO = 7;
  ID_CAT_ESTINTORI = 8;
  ID_MARCHE_RILEVATORI_LIN_FUMI = 9;
  ID_PREZZI_ORDINARIE = 10;
  ID_TIPO_PORTE = 11;
  ID_TIPO_LUCI = 12;
  ID_TUTTI_GLI_IDRANTI = 13;
  ID_TIPO_BATTERIE = 14;
  ID_IMPOSTAZIONE_PORTE = 15;
  ID_MARCHE_PORTE = 16;
  ID_TIPO_SERRATURE = 17;
  ID_TIPO_MANIGLIONI_PORTE = 18;
  ID_MARCHE_MANIGLIONI_PORTE = 19;
  ID_IMPOSTAZIONE_IDRANTI = 20;
  ID_TIPI_MOTOPOMPE_IDRANTI = 22;
  ID_IMPOSTAZIONE_RIL_FUMI = 23;
  ID_MARCHE_CENTRALI_FUMI = 24;
  ID_TIPI_CENTRALI_FUMI = 25;
  ID_TIPI_RILEVATORI_FUMI = 26;
  ID_TIPI_RILEVATORI_LINEARI_FUMI = 27;
  ID_INFO_SPRINKLER = 28;
  ID_MARCHE_SPRINKLER = 29;
  ID_IMPOSTAZIONE_LUCI = 30;
  ID_MARCHE_LUCI = 31;
  ID_TIPO_GUARNIZIONI_PORTE = 32;
  ID_TIPI_BOCCHELLI_IDRANTI = 33;
  ID_TIPI_LANCE_IDRANTI = 34;
  ID_ATTREZZATURE = 35;
  ID_ATTREZZATURE_CLIENTE = 36;
  ID_TUTTI_GLI_STATINI = 37;
  ID_TECNICI = 38;
  ID_PREZZI_ORDINARI = 39;
  ID_TIPI_SPRINKLER = 40;
  ID_AMMINISTRATORI = 41;
  ID_COND_PAGAMENTO = 42;
  ID_TUTTI_I_CONTRATTI = 43;
  ID_TUTTI_I_PREVENTIVI = 45;
  ID_TUTTI_I_DDT = 46;
  ID_TUTTE_LE_NOTE = 47;
  ID_TUTTE_LE_CONFERME_ORDINE = 48;
  ID_DOCUMENTI_GENERICI = 49;
  ID_TUTTI_I_FORNITORI = 50;
  ID_TUTTI_GLI_ACQUISTI = 51;
  ID_MOD_PAGAMENTO = 52;
  ID_TUTTI_I_CONTRATTI_DISDETTATI = 53;
  ID_ISTAT = 54;
  ID_TUTTI_I_CONTI = 55;
  ID_CASSA = 56;
  ID_VERSAMENTI = 57;
  ID_PRELIEVI = 58;
  ID_MOVIMENTI = 59;
  ID_CASSA_CONTANTI = 60;
  ID_CASSA_ASSEGNI = 61;
  ID_DISTINTE_DI_CARICO = 62;
  ID_DISTINTE_DI_SCARICO = 63;
  ID_DOCUMENTI_TECNICI = 64;
  ID_ORDINI_TECNICI = 65;
  ID_STATINI_TECNICI = 66;
  ID_TUTTI_I_GRUPPI = 67;
  ID_V_MANICHETTE_TECNICI = 68;
  ID_V_PROVADINAMICA_TECNICI = 69;
  ID_MOTIV_RITIRO_ESTINTORI = 70;
  ID_INFO_IMPIANTI_ELETTRICI = 71;
  ID_TIPO_ELEM_IMP_ELETTRICI = 72;
  ID_MARCHE_ELEM_IMP_ELETTRICI = 73;
  ID_TUTTI_GLI_IMPIANTI_ELETTRICI = 74;
  ID_MARCHE_ESTINTORI = 75;
  ID_MOTIV_CONTROLLO_NEGATO = 76;

  NDX_MITTENTE = 0;
  NDX_DESTINATARIO = 1;
  NDX_VETTORE = 2;

  ID_MOV_CASSA_CONTANTI = 'C';
  ID_MOV_CASSA_ASSEGNI = 'A';
  ID_MOV_CONTI_CORRENTI = '€';
  ID_MOV_MONDO_ESTERNO = 'E';

  COLOR_RIGHE_PARI = clWhite;
  COLOR_RIGHE_DISPARI = $00BBFFFF;
  COLOR_RIGHE_ERRATE = clRed;
  COLOR_STRING_CONSTANT = $00DFDFDF;
  COLOR_RIGHE_PARI_SELECTED = $0080FF80;
  COLOR_RIGHE_DISPARI_SELECTED = $0000B300;

  COLOR_ATTREZZATURA_SMALTITA = clRed;
  COLOR_ATTREZZATURA_SOSPESA = $0071B8FF;
  COLOR_ATTREZZATURA_ANOMALIA = $00FFAEFF;

  ID_NO_DOC_CORRELATO = 'N';
  ID_CORRELATO_CONTRATTO = 'C';
  ID_CORRELATO_ORDINE = 'O';

  ID_DBASE_STATO_STATINI_DA_TABLET: Array [TStatoStatinoDaTablet] of String = ('?', 'I', 'R', 'G');

  TYP_CHECKLIST_RIL_FUMI: String = 'F';
  TYP_CHECKLIST_PORTE_GENERICHE: String = 'p';
  TYP_CHECKLIST_PORTE_REI: String = 'P';
  TYP_CHECKLIST_PORTONI_REI: String = 'r';
  TYP_CHECKLIST_LUCI_EMERGENZA: String = 'L';
  TYP_CHECKLIST_SPRINKLER: String = 'S';
  TYP_CHECKLIST_GRUPPI_PRESSUR: String = 'G';
  TYP_CHECKLIST_IMPIANTI_ELETTRICI: String = 'I';

  TRUE_VALUE = 'T';
  FALSE_VALUE = 'F';

  NO_IMAGE_FILE = '\NoImage.jpg';
  PREFISSO_IMAGE_FILE_PDF = '\ImgPDFFile';

  FILE_ISO_3661: String = '\ISO3661-Alpha2.txt';

  // Definizioni database
Const
  TABLEContratti = 'CLIENTI';
  TABLECondPagamenti = 'COND_PAGAMENTO';
  TABLESettori = 'SETTORI';
  TABLECheckListAttrezzature = 'CHECKLIST_ATTREZZATURE';
  TABLEFatture = 'FATTURE';
  TABLEMotivazioniRitiroEstintori = 'MOTIV_RITIRO_ESTINTORI';
  TABLEMotivazioniControlloNegato = 'MOTIV_CONTROLLO_NEGATO';
  TABLEDDTEntranti = 'DDT_ENTRANTI';
  TABLEMarcheEstintori = 'MARCHE_ESTINTORI';
  TABLEDDTUscenti = 'DDT_USCENTI';
  TABLEVociFatturePassive = 'VOCI_FATTURE_PASSIVE';
  TABLERitenuteFatturePassive = 'RITENUTE_FATTURE_PASSIVE';
  TABLEPreventivi = 'PREVENTIVI';
  TABLECatEstintori = 'CAT_ESTINTORI';
  TABLEManutenzioniOrdinarie = 'MANUTENZIONE_ORDINARIA';
  TABLEMarcheSprinkler = 'MARCHE_SPRINKLER';
  TABLEMarcheLuci = 'MARCHE_LUCI';
  TABLEFilialiContratti = 'FILIALI_CLIENTI';
  TABLEAttrezzature = 'ATTREZZATURE';
  TABLETipoPorte = 'TIPO_PORTE';
  TABLETipoLuci = 'TIPO_LUCI';
  TABLEIdranti = 'IDRANTI_CLIENTI';
  TABLETipoBatterie = 'TIPI_BATTERIE';
  TABLEMarchePorte = 'MARCHE_PORTE';
  TABLEMarcheManiglioniPorte = 'MARCHE_MANIGLIONE_PORTE';
  TABLETipoManiglionePorte = 'TIPI_MANIGLIONI_PORTE';
  TABLERiepiloghiFatturePassive = 'RIEPILOGHI_FATTURE';
  TABLESerrature = 'TIPI_SERRATURE';
  TABLETipiMotopompeIdranti = 'TIPI_MOTOPOMPE_IDRANTI';
  TABLEMarcheCentraleFumi = 'MARCHE_CENTRALI_FUMI';
  TABLETipiCentraleFumi = 'TIPI_CENTRALI_FUMI';
  TABLETipiRilevatoriFumi = 'TIPI_RILEVATORI_FUMI';
  TABLETipiRilevatoriLineariFumi = 'TIPI_RILEVATORI_LINEARI_FUMI';
  TABLEMarcheRilevatoriLinFumi = 'MARCHE_RIL_LINEARI_FUMI';
  TABLEBocchelli = 'BOCCHELLI';
  TABLETipoBocchetti = 'TIPO_BOCCHELLI';
  TABLETecnici = 'TECNICI';
  TABLEModPagamento = 'MOD_PAGAMENTO';
  TABLETipoLancia = 'TIPO_LANCIA';
  TABLEMovimenti = 'MOVIMENTI';
  TABLERateFatture = 'RATE_FATTURA';
  TABLERateFatturePassive = 'RATE_FATTURE_PASSIVE';
  TABLEOrdiniDaTablet = 'ORDINI_DA_TABLET';
  TABLEStatiniDaTablet = 'STATINI_DA_TABLET';
  TABLEVProvaDinamicaDaTablet = 'V_PROVADINAMICA_DA_TABLET';
  TABLEVManichetteDaTablet = 'V_MANICHETTE_DA_TABLET';
  TABLEStatini = 'STATINI';
  TABLETipiSprinkler = 'TIPI_SPRINKLER';
  TABLEAmministratori = 'AMMINISTRATORI';
  TABLEFornitori = 'FORNITORI';
  TABLENoteDiCredito = 'NOTE_DI_CREDITO';
  TABLEAcquisti = 'ACQUISTI';
  TABLEFatturePassive = 'FATTURE_PASSIVE';
  TABLEAttrezzaturePorte = 'PORTE_CLIENTI';
  TABLEAttrezzatureSprinkler = 'SPRINKLER_CLIENTI';
  TABLEAttrezzatureLuci = 'LUCI_CLIENTI';
  TABLEAttrezzatureRilFumo = 'FUMO_CLIENTI';
  TABLEAttrezzatureEstintori = 'ESTINTORI_CLIENTI';
  TABLEContiCorrenti = 'CONTI_CORRENTI';
  TABLEComunicazioniTecnici = 'COMUNICAZIONI_TECNICI';
  TABLEGruppiPressurizzazione = 'GRUPPO_PRESSURIZZAZIONE_CLIENTI';
  TABLETipiInstallazionePorte = 'TIPI_INSTALLAZIONE_PORTE';
  TABLECaricoMagazzino = 'CARICO_MAGAZZINO';
  TABLEScaricoMagazzino = 'SCARICO_MAGAZZINO';
  TABLETipoElemImpiantiElettrici = 'TIPI_ELEM_IMPIANTI_ELETTRICI';
  TABLEMarcheElemImpiantiElettrici = 'MARCHE_ELEM_IMPIANTI_ELETTRICI';
  TABLEElementiImpiantiElettrici = 'ELEMENTI_IMPIANTI_ELETTRICI';
  TABLEImpiantiElettrici = 'IMPIANTI_ELETTRICI_CLIENTI';
  TABLECassePrevidenzialiFattPassive = 'CASSE_PREVIDENZIALI_FATT_PASS';
  TABLEProdottiStatino = 'PRODOTTI_STATINI';

  REFFldManutenzioniOrdinarie = 'CLIENTE';
  REFFldFilialiClienti = 'CLIENTE';
  REFFldAttrezzature = 'CLIENTE';
  REFFldRateFatture = 'FATTURA';
  REFFldRateFatturePassive = 'FATTURA';
  REFFldVociFatturePassive = 'FATTURA';
  REFFldRiepiloghiFatturePassive = 'FATTURA';
  REFFldRitenuteFatturePassive = 'FATTURA';
  REFFldCassePrevidenzialiFattPassive = 'FATTURA';
  REFIdStatino = 'STATINO';

  ID_ANTA_1 = '1';
  ID_ANTA_2 = '2';
  ID_ANTA_SCORREVOLE = 'S';

  ID_PERIODO_GRP_SPR_MENSILE = 'M';
  ID_PERIODO_GRP_SPR_TRIMESTRALE = 'T';
  ID_PERIODO_GRP_SPR_SEMESTRALE = 'S';

  ID_PREVENTIVO_SOSPESO = 'S';
  ID_PREVENTIVO_CONFERMATO = 'K';
  ID_PREVENTIVO_RIFIUTATO = 'R';

  ID_TRASPORTO_MITTENTE = 'M';
  ID_TRASPORTO_DESTINATARIO = 'D';
  ID_TRASPORTO_VETTORE = 'V';

  ID_PRIMA_VISITA = '1';
  ID_SECONDA_VISITA = '2';

  ID_INTERVENTO_ORDINARIO = 'O';
  ID_INTERVENTO_REVISIONE = 'R';
  ID_INTERVENTO_COLLAUDO = 'C';
  ID_INTERVENTO_ALTERNATIVO = 'A';
  ID_INTERVENTO_RICARICA = '@';
  ID_INTERVENTO_SOSTITUZIONE = '-';

  ID_IDRANTE_ANELLO = 'A';
  ID_IDRANTE_COLONNA = 'C';
  ID_IDRANTE_NASPI = 'N';

  ID_STAZIONE_SOPRABATTENTE = 'U';
  ID_STAZIONE_SOTTOBATTENTE = 'D';
  ID_STAZIONE_AD_IMMERSIONE = 'I';

  ID_ATTREZZATURA_ATTIVA = 'A';
  ID_ATTREZZATURA_SOSPESA = 'S';
  ID_ATTREZZATURA_SMALTITA = 'X';

  ID_STATINO_PORTE = 'P';
  ID_STATINO_SPRINKLER = 'S';
  ID_STATINO_LUCI = 'L';
  ID_STATINO_FUMI = 'F';
  ID_STATINO_GRUPPI = 'G';

  ID_INTESTATARIO_AMMINISTRATORE: String = 'T';
  ID_INTESTATARIO_CONTRATTO: String = 'F';
  ID_INTESTATARIO_FORNITORE: String = 'N';

  ID_TIPO_PORTE_NORMALE: Integer = 0;
  ID_TIPO_PORTE_PORTE_REI: Integer = 1;
  ID_TIPO_PORTE_PORTONI_REI: Integer = 2;

var
  FIELDSContratti: TStringList;
  FIELDSTecnici: TStringList;
  FIELDSMovimenti: TStringList;
  FIELDSFatturePassive: TStringList;
  FIELDSVociFatturePassive: TStringList;
  FIELDSContiCorrenti: TStringList;
  FIELDSCondizioniPagamento: TStringList;
  FIELDSMotivazioniRitiroEstintori: TStringList;
  FIELDSMotivControlloNegato: TStringList;
  FIELDSSettori: TStringList;
  FIELDSAmministratori: TStringList;
  FIELDSAcquisti: TStringList;
  FIELDSFornitori: TStringList;
  FIELDSFatture: TStringList;
  FIELDSNoteDiCredito: TStringList;
  FIELDSDDTEntranti: TStringList;
  FIELDSDDTUscenti: TStringList;
  FIELDSPreventivi: TStringList;
  FIELDSCatEstintori: TStringList;
  FIELDSManutenzioniOrdinarie: TStringList;
  FIELDSFilialiClienti: TStringList;
  FIELDSAttrezzature: TStringList;
  FIELDSSingleDescrizione: TStringList;
  FIELDSIdranti: TStringList;
  FIELDSRateFatture: TStringList;
  FIELDSCaricoMagazzino: TStringList;
  FIELDSScaricoMagazzino: TStringList;
  FIELDSRateFatturePassive: TStringList;
  FIELDSStatini: TStringList;
  FIELDSImpiantiElettrici: TStringList;
  FIELDSRitenuteFatturePassive: TStringList;
  FIELDSTipoPorte: TStringList;
  FIELDSGruppiPressurizzazioni: TStringList;
  FIELDSOrdiniDaTablet: TStringList;
  FIELDSStatiniDaTablet: TStringList;
  FIELDSVProvaDinamicaDaTablet: TStringList;
  FIELDSVManichetteDaTablet: TStringList;
  FIELDSRiepiloghiFatturePassive: TStringList;
  FIELDSCassePrevidenzialiFattPassive: TStringList;
  FIELDSProdottiStatini: TStringList;

Function GetStatoStatTablet(IdDatabase: String): TStatoStatinoDaTablet;
Function GetIdFromPeriodoGruppoSprinkler(Periodo: String): String;
Function GetPeriodoGruppoSprinklerFromId(Id: String): String;
Procedure GetListaPeriodiGruppoSprinkler(AList: TStrings; EscludiMensile: Boolean = False);
Procedure AddWhereStatiniFattNonNumerate(SQL: TStrings);
Procedure AddWhereFatturePassiveDaGestire(AQuery: TpFIBQuery);

Function InterpretaIDAnno(EDIT_ANNO, EDIT_NUMERO: TRealEdit; var Anno: Word; var Numero: Integer): Boolean;
// Function GetTotale(Quantita : Double; PrezzoUnitario: Double; IVA : Integer = 0) : Double;
Function GetImportoFromIvato(Ivato: Double; IVA: Integer): Double;
Function GetIvatoFromImporto(Importo: Double; IVA: Integer): Double;
Procedure GetListaSettori(Query: TpFIBQuery; Lista: TStrings);
Function EsisteProdotto(Query: TpFIBQuery; Campo: String; CodiceABarre: Boolean): Boolean;
Function GetNomeFiliale(Query: TpFIBQuery; Chiave: Integer): String;
Procedure GetDescrProdotto(Query: TpFIBQuery; Chiave: Integer; var Descrizione: String; var UdM: String;
  var IVA: Integer; var CodABarre: String; var Importo: Double; var ImportoIvato: Boolean;
  var PrezzoAcq: Double; var Codice: String; var QuantitaMagazzino: Double; var QuantitaMinima: Double);
Function GetIdFromTipoVisita(TipoVisita: String): String;
Function GetTipoVisitaFromId(Id: String): String;
Procedure GetListaTipoVisite(AList: TStrings);
Procedure GetTipologieTipoPorte(AList: TStrings);
Function GetIdFromAntaPorta(Anta: String): String;
Function GetAntaPortaFromId(Id: String): String;
Procedure GetListaAnte(AList: TStrings);
Function GetIdFromTipoIdrante(TipoIdrante: String): String;
Function GetTipoIdranteFromId(Id: String): String;
Procedure GetListaTipoIdrante(AList: TStrings);
Function GetIdFromTipoStazione(TipoStazione: String): String;
Function GetTipoStazioneFromId(Id: String): String;
Procedure GetListaTipoStazione(AList: TStrings);
Function GetIdFromTipoIntervento(TipoIntervento: String): String;
Function GetTipoInterventoFromId(Id: String): String;
Procedure GetListaObbligatoriaTipoIntervento(ALista: TStrings);
Procedure GetListaTipoIntervento(ALista: TStrings; Estintore: Boolean);
Procedure GetUltimiCollRevEstintore(AQuery: TpFIBQuery; IdCatEstintore: Integer; IdEstintore: Integer;
  DataStartupColl: TDateTime; DataStartupRev: TDateTime; var LastCollaudo: TDateTime;
  var LastRevisione: TDateTime; var ValiditaCollaudo: Integer; var ValiditaRevisione: Integer;
  ListaPeriodicita: TStringList = Nil);
Function GetIdPrecedenteStatino(AQuery: TpFIBQuery; IdStatino: Integer; var ChiaveContratto: Integer;
  var StatinoDaRinnovo: Boolean): Integer;
Procedure GetUltimiCollBocchello(AQuery: TpFIBQuery; DataStartup: TDateTime; var LastCollaudo: TDateTime);
Function GetIdFromStatoAttrezzatura(StatoEstintore: String): String;
Function GetStatoAttrezzaturaFromId(Id: String): String;
Procedure GetListaStatiAttrezzature(AList: TStrings);
Function GetIdFromStatoPreventivo(Stato: String): String;
Function GetStatoPreventivoFromId(Id: String): String;
Procedure GetListaStatiPreventivi(AList: TStrings);
Function GetIdFromTrasporto(Stato: String): String;
Function GetTrasportoFromId(Id: String): String;
Procedure GetListaTrasporti(AList: TStrings);
Function EsistonoFattureNonNumerate(AQuery: TpFIBQuery): Boolean;
Function GetTipoCassaFromIDDbase(IDDBase: String): TTipoCassa;
Function GetIDDBaseFromTipoCassa(TipoCassa: TTipoCassa): String;
Function GetPeriodoControllo(VisitaOrdinaria, MeseGenerazione: Integer): String;
Function GetParametroGenerazioneAutomatica(Mese, Anno: Integer): Integer;
Function GetProgressivoInvio(Fattura: Boolean; Numero, Anno: Integer): String;
Procedure GetLsMotivazioniRitiroEstintori(Lista: TStrings);
Function GetIdFromMotivazioneRitiroEstintore(Motivazione: String): Integer;
Function GetMotivazioneRitiroEstintoreFromId(Id: Integer): String;
Function GetAnnoScadenzaEstintore(EstintoreCO2, SenzaScadenza: Boolean;
  AnnoCostruzione, AnnoUltimoCollaudo: Integer): Integer;
Procedure LogInDeveloperMode(FileName, LogEvent: String; EmptyFile: Boolean);
// TAPPULLI
Function TappullaIVAFattureXGorla(Data: TDateTime; Anno, Numero: Integer): Boolean;
Function TappullaConteggiFattureXGorla(Data: TDateTime): Boolean;

var
  DIRECTORY_APPLICATION_DATA: String;

implementation

Uses AllTexts;

Const
  FIELDS_CONTRATTI: Array [01 .. 67] of String = ('TITOLO', 'RAGIONE_SOCIALE',
    'VISITA_FATTURAZIONE_ORDINARIA', 'PARTITA_IVA', 'CODICE_FISCALE', 'TELEFONO1', 'TELEFONO2', 'NATURA_IVA',
    'FAX', 'EMAIL', 'INDIRIZZO_FATTURAZIONE', 'COMUNE_FATTURAZIONE', 'CELLULARE', 'PROVINCIA_FATTURAZIONE',
    'CAP_FATTURAZIONE', 'INDIRIZZO_SPEDIZIONE', 'COMUNE_SPEDIZIONE', 'CAP_SPEDIZIONE', 'PROVINCIA_SPEDIZIONE',
    'NOTE', 'PRESSO', 'PREZZO_ORDINARIE_SPRINKLER', 'PREZZO_ORDINARIE_FUMI', 'ABI', 'CAB',
    'PREZZO_ORDINARIE_LUCI', 'PREZZO_ORDINARIE_PORTE', 'BANCA_APPOGGIO', 'PREZZO_ORDINARIE_IDRANTI',
    'PREZZO_COLLAUDI_IDRANTI', 'DESCRIZIONE_SCHEDA', 'NOTE_NASCOSTE', 'AMMINISTRATORE', 'NR_CIVICO',
    'IMPIANTI_ELETTRICI_VISIBILI', 'ISTAT', 'COND_PAGAMENTO', 'ESENTE_IVA', 'RITENUTA', 'NOTE_IN_FATTURA',
    'DATA_CONTRATTO', 'MANUALE', 'DISDETTATO', 'SOSPENSIONE_TEMPORANEA', 'MOTIV_SOSP_TEMPORANEA',
    'INIZIO_SOSP_TEMPORANEA', 'DATA_DIFFERITA', 'ORDINA_X_UBICAZIONE', 'NON_CONFERMATO',
    'DA_ESPORTARE_SUL_WEB', 'RESPONSABILE', 'COSTO_SOSTITUZIONE_VALVOLA', 'GRUPPO_TIPO_VISITE',
    'GRUPPO_PREZZO_VISITA_MENSILE', 'GRUPPO_PREZZO_VISITA_TRIMEST', 'GRUPPO_PREZZO_VISITA_SEMESTRALE',
    'ESTINTORI_VISIBILI', 'LUCI_VISIBILI', 'SPRINKLER_VISIBILI', 'PORTE_VISIBILI', 'RIL_FUMO_VISIBILI', 'IVA',
    'GRUPPO_PRESS_VISIBILE', 'IMPIANTO_IDRANTI_VISIBILE', 'PREZZO_SEMESTRALE_SPRINKLER',
    'SPRINKLER_TIPO_VISITE', 'FATTURA_ANTICIPATA');

  FIELDS_FATTURE_PASSIVE: Array [01 .. 22] of String = ('FORNITORE', 'NUMERO', 'DATA', 'OGGETTO', 'IVA',
    'RITENUTA', 'COND_PAGAMENTO', 'INARCASSA', 'TITOLO', 'PARTITA_IVA', 'CODICE_FISCALE', 'RAGIONE_SOCIALE',
    'CAP_FATTURAZIONE', 'IS_FATTURA', 'INDIRIZZO_FATTURAZIONE', 'COMUNE_FATTURAZIONE', 'PROV_FATTURAZIONE',
    'NR_CIVICO_FATTURAZIONE', 'TOTALE_FATTURA', 'ALERT_APPENA_ARRIVATA', 'IBAN', 'ESPORTATA_COMMERCIALISTA');

  FIELDS_MOTIVAZIONI_RITIRO_ESTINTORI: Array [01 .. 02] of String = ('DESCRIZIONE', 'OPERAZIONE');
  FIELDS_MOTIV_CONTROLLO_NEGATO: Array [01 .. 01] of String = ('DESCRIZIONE');
  FIELDS_RITENUTE_FATTURE_PASSIVE: Array [01 .. 03] of String = ('TIPO', 'ALIQUOTA', 'IMPORTO');

  FIELDS_RIEPILOGHI_FATTURE_PASSIVE: Array [01 .. 04] of String = ('IVA', 'ARROTONDAMENTO', 'IMPONIBILE',
    'IMPOSTA');

  FIELDS_CASSE_PREVIDENZIALI_FATT_PASS: Array [01 .. 04] of String = ('TIPO', 'ALIQUOTA', 'IMPORTO', 'IVA');

  FIELDS_MOVIMENTI: Array [0 .. 10] of String = ('TIPO_CASSA_PRELIEVO', 'CONTO_CORRENTE_PRELIEVO',
    'TIPO_CASSA_VERSAMENTO', 'CONTO_CORRENTE_VERSAMENTO', 'ULTIMA_MODIFICA', 'DATA', 'IMPORTO', 'DESCRIZIONE',
    'ESCLUDI_DA_PRIMA_NOTA', 'FORNITORE_PARTITARIO', 'AMMINISTRATORE_PARTITARIO');

  FIELDS_CONDIZIONI_PAGAMENTO: Array [01 .. 10] of String = ('DESCRIZIONE', 'RICEVUTA_BANCARIA', 'P30GG',
    'P60GG', 'P90GG', 'P120GG', 'FINE_MESE', 'TRAMITE_BANCA', 'ELE_COND_PAGAMENTO', 'ELE_MOD_PAGAMENTO');

  FIELDS_SETTORI: Array [01 .. 02] of String = ('DESCRIZIONE', 'CHECK_MINIMI');

  FIELDS_TIPO_PORTE: Array [01 .. 02] of String = ('DESCRIZIONE', 'TIPOLOGIA');

  FIELDS_ACQUISTI: Array [01 .. 03] of String = ('FORNITORE', 'DATA_ACQUISTO', 'NOTE');

  FIELDS_AMMINISTRATORI: Array [01 .. 40] of String = ('RAGIONE_SOCIALE', 'PARTITA_IVA', 'CODICE_FISCALE',
    'EMAIL2', 'TELEFONO1', 'CELLULARE', 'TELEFONO2', 'EMAIL3', 'FAX', 'EMAIL', 'INDIRIZZO_SPEDIZIONE',
    'COMUNE_SPEDIZIONE', 'CAP_SPEDIZIONE', 'PROVINCIA_SPEDIZIONE', 'TITOLO', 'COD_ENTE_SDI',
    'AMMINISTRATORE_CONDOMINIO', 'INDIRIZZO_FATTURAZIONE', 'EMAIL4', 'PROVINCIA_FATTURAZIONE',
    'CAP_FATTURAZIONE', 'COMUNE_FATTURAZIONE', 'COND_PAGAMENTO', 'BANCA_APPOGGIO', 'ABI', 'CAB', 'ESENTE_IVA',
    'NR_CIVICO', 'PEC', 'ESPORTA_SUL_WEB', 'DA_ESPORTARE_SUL_WEB', 'FATTURA_ELETTRONICA',
    'NAZIONE_FATTURAZIONE', 'NAZIONE_EM_PIVA', 'ESIGIBILITA_IVA', 'NATURA_IVA', 'NOTE_IN_FATTURA', 'ATTIVO',
    'ENTE_PUBBLICO', 'ID_WEB_APPLICATION');

  FIELDS_CONTI: Array [01 .. 10] of String = ('BANCA', 'NUMERO', 'ABI', 'CAB', 'DATA_INIZIO_SESSIONE',
    'SALDO_INIZIO_SESSIONE', 'AGENZIA', 'INDIRIZZO', 'CIN', 'IBAN');

  FIELDS_CARICO_MAGAZZINO: Array [1 .. 4] of String = ('DATA', 'FORNITORE', 'NOTE', 'CHIAVE_MOBILE');

  FIELDS_SCARICO_MAGAZZINO: Array [1 .. 5] of String = ('DATA', 'NOME_CLIENTE', 'CONFERMA_ORDINE', 'NOTE',
    'CHIAVE_MOBILE');

  FIELDS_GRUPPI_PRESSURIZZAZIONE: Array [01 .. 22] of String = ('CLIENTE', 'DESCRIZIONE', 'TIPO_STAZIONE',
    'TIPO_BATTERIE', 'MARCA_POMPA_JOCKEY', 'TIPO_POMPA_JOCKEY', 'MODELLO_POMPA_JOCKEY', 'MARCA_POMPA_PORTATA',
    'ID_NFC', 'TIPO_POMPA_PORTATA', 'MODELLO_POMPA_PORTATA', 'MARCA_MOTOPOMPA', 'TIPO_MOTOPOMPA',
    'MODELLO_MOTOPOMPA', 'VASI_ESPANSIONE', 'FILIALE', 'MARCA_MISURATORE_PORTATA',
    'MODELLO_MISURATORE_PORTATA', 'STATO', 'ANOMALIA', 'ANOMALIA_APPROVATA', 'NOTE');

  FIELDS_FORNITORI: Array [01 .. 32] of String = ('RAGIONE_SOCIALE', 'PARTITA_IVA', 'CODICE_FISCALE', 'IBAN',
    'TELEFONO1', 'CELLULARE', 'TELEFONO2', 'TELEFONO3', 'FAX', 'EMAIL', 'TITOLO', 'INDIRIZZO_FATTURAZIONE',
    'PROVINCIA_FATTURAZIONE', 'CAP_FATTURAZIONE', 'COMUNE_FATTURAZIONE', 'INDIRIZZO_SPEDIZIONE',
    'COMUNE_SPEDIZIONE', 'PROVINCIA_SPEDIZIONE', 'CAP_SPEDIZIONE', 'IVA', 'RITENUTA', 'INARCASSA',
    'EMITTENTE_PIVA', 'REA_UFFICIO', 'NUMERO_REA', 'CAPITALE_SOCIALE', 'SOCIO_UNICO_REA',
    'STATO_LIQUIDAZIONE_REA', 'REA_PRESENTE', 'NR_CIVICO_FATTURAZIONE', 'NR_CIVICO_SPEDIZIONE',
    'COND_PAGAMENTO');

  FIELDS_VOCI_FATTURE_PASSIVE: Array [01 .. 12] of String = ('NUMERO_LINEA', 'QUANTITA', 'MEMO_DESCRIZIONE',
    'PREZZO_UNITARIO', 'SCONTO1', 'SCONTO2', 'SCONTO3', 'PREZZO_TOTALE', 'IVA', 'DDT', 'DATA_DDT', 'NOTE');

  FIELDS_ORDINI_DA_TABLET: Array [01 .. 05] of String = ('ID_DOCUMENTO', 'DATA', 'BODY', 'TECNICO',
    'GESTITO');
  FIELDS_STATINI_DA_TABLET: Array [01 .. 17] of String = ('ID_DOCUMENTO', 'DATA', 'BODY', 'TECNICO', 'STATO',
    'FATTURA', 'PREVENTIVO', 'CONTRATTO', 'EMAIL', 'INDIRIZZO', 'COMUNE', 'PARTITA_IVA', 'CODICE_FISCALE',
    'PROBLEMA_RISCONTRATO', 'RICHIEDENTE', 'TELEFONO_RICHIEDENTE', 'DATA_RICHIESTA');
  FIELDS_V_PROVADINAMICA_DA_TABLET: Array [01 .. 05] of String = ('ID_DOCUMENTO', 'DATA', 'BODY', 'TECNICO',
    'GESTITO');
  FIELDS_V_MANICHETTE_DA_TABLET: Array [01 .. 05] of String = ('ID_DOCUMENTO', 'DATA', 'BODY', 'TECNICO',
    'GESTITO');

  FIELDS_SINGLE_DESCRIZIONE: Array [01 .. 01] of String = ('DESCRIZIONE');

  FIELDS_TECNICI: Array [01 .. 05] of String = ('DESCRIZIONE', 'ATTIVO', 'ACCOUNT_MOBILE', 'EMAIL',
    'TELEFONO');

  FIELDS_DDT_USCENTI: Array [01 .. 28] of String = ('ID_DDT', 'ANNO_DDT', 'ID_AMMINISTRATORE',
    'GENERALITA_CLIENTE', 'INDIRIZZO_CLIENTE', 'COMUNE_CLIENTE', 'PROVINCIA_CLIENTE', 'CAP_CLIENTE',
    'DATA_DDT', 'TRASPORTO_A_MEZZO', 'CAUSALE', 'ASPETTO_BENI', 'NUMERO_COLLI', 'PESO', 'PORTO', 'ORA_INIZIO',
    'DATA_INIZIO', 'NOTE', 'DESTINAZIONE', 'INDIRIZZO_DESTINAZIONE', 'COMUNE_DESTINAZIONE', 'ID_FORNITORE',
    'PROVINCIA_DESTINAZIONE', 'CAP_DESTINAZIONE', 'TITOLO_CLIENTE', 'VOSTRO_ORDINE', 'ORDINE_DEL',
    'ULTIMA_RIGA');

  FIELDS_DDT_ENTRANTI: Array [01 .. 10] of String = ('NUMERO_DDT', 'ID_FORNITORE', 'GENERALITA_FORNITORE',
    'INDIRIZZO_FORNITORE', 'COMUNE_FORNITORE', 'PROVINCIA_FORNITORE', 'CAP_FORNITORE', 'DATA_DDT',
    'TITOLO_FORNITORE', 'ULTIMA_RIGA');

  FIELDS_STATINI: Array [01 .. 39] of String = ('CLIENTE', 'FILIALE', 'TITOLO', 'RAGIONE_SOCIALE',
    'INDIRIZZO', 'COMUNE', 'PROVINCIA', 'CAP', 'TELEFONO', 'CELLULARE', 'NOTE', 'ESPORTATO_SU_MOBILE',
    'ORARIO_APERTURA_DAL1', 'ORARIO_APERTURA_DAL2', 'RESPONSABILE', 'ORARIO_APERTURA_AL1',
    'ORARIO_APERTURA_AL2', 'GENERAZIONE_AUTOMATICA', 'DATA_INTERVENTO~DATA_INTERVENTO', 'CHIUSURA', 'FATTURA',
    'ANNULLATO_DA_TABLET', 'NOTE_PER_IL_TECNICO', 'REGISTRO', 'DA_ESPORTARE_SUL_WEB', 'PRESA_IN_CARICO',
    'MOBILEWARN_SMALTIMENTO', 'MOBILEWARN_NUOVA_ATTREZZATURA', 'FORNITURA', 'MOBILEWARN_ORDINARIA_RITIRATA',
    'MOBILEWARN_N_ORDIN_CONTROLLATA', 'REGISTRO_IS_PDF', 'NOTE_DAL_TECNICO', 'PREVENTIVO',
    'IGNORA_EVIDENZIAZIONE', 'DATA_CHIUSURA_DA_SERVER', 'CHIUSURA_EXT',
    'CHIUSURA_PRESENTE~IIF(CHIUSURA_STATINO IS NOT NULL,''T'',''F'')',
    'TECNICO_CONCLUSIONE~(SELECT MAX(DESCRIZIONE) FROM TECNICI WHERE STATINI.TECNICO_INTERVENTO = TECNICI.CHIAVE)');

  FIELDS_RATE_FATTURE: Array [01 .. 07] of String = ('DATA', 'IMPORTO', 'DATA_PAGAMENTO', 'DESCRIZIONE',
    'CASSA_CONTANTI', 'CASSA_ASSEGNI', 'CONTO_CORRENTE');

  FIELDS_RATE_FATTURE_PASSIVE: Array [01 .. 06] of String = ('DATA_SCADENZA', 'IMPORTO', 'DATA_PAGAMENTO',
    'MOD_PAGAMENTO', 'CASSA_CONTANTI', 'CONTO_CORRENTE');

  FIELDS_FATTURE: Array [01 .. 48] of String = ('ID_FATTURA', 'ANNO_FATTURA', 'ID_CLIENTE',
    'GENERALITA_CLIENTE', 'GENERAZIONE_AUTOMATICA', 'INDIRIZZO_CLIENTE', 'COMUNE_CLIENTE',
    'PROVINCIA_CLIENTE', 'CAP_CLIENTE', 'NATURA_IVA', 'DATA_FATTURA', 'PARTITA_IVA', 'COND_PAGAMENTO',
    'BANCA_APPOGGIO', 'ESIGIBILITA_IVA', 'TITOLO_CLIENTE', 'COD_FISCALE', 'COMUNE_DESTINAZIONE',
    'PROVINCIA_DESTINAZIONE', 'CAP_DESTINAZIONE', 'ABI', 'CAB', 'RIF_VOSTRO_ORDINE', 'DESTINAZIONE',
    'IVA_SUGGERITA', 'INDIRIZZO_DESTINAZIONE', 'DATA_ORDINE', 'NOTE_IN_FATTURA', 'RITENUTA', 'ESENTE_IVA',
    'INVIO_EMAIL', 'ID_AMMINISTRATORE', 'RIC_PRESENTATA', 'DA_ESPORTARE_SUL_WEB', 'FATTURA_ELETTRONICA',
    'BODY_FATTURA_ELETTRONICA', 'CAUSALE', 'COD_ENTE_FATTURA_ELETTRONICA', 'FATT_ELETT_FOR_UNIQUE_KEY',
    'DOC_CORR_TIPO', 'DOC_CORR_DATA', 'DOC_CORR_VOCE_RIFERIMENTO', 'DOC_CORR_CIG', 'DOC_CORR_CUP',
    'DOC_CORR_CONVENZIONE', 'DOC_CORR_ID_DOCUMENTO', 'NR_CIVICO', 'FATT_ELETT_INVIATA');

  FIELDS_NOTE_DI_CREDITO: Array [01 .. 50] of String = ('ID_NOTA', 'ANNO_NOTA', 'ID_CLIENTE',
    'GENERALITA_CLIENTE', 'CAUSALE', 'INDIRIZZO_CLIENTE', 'COMUNE_CLIENTE', 'PROVINCIA_CLIENTE',
    'CAP_CLIENTE', 'DATA_NOTA', 'PARTITA_IVA', 'COND_PAGAMENTO', 'BANCA_APPOGGIO', 'PROFORMA',
    'TITOLO_CLIENTE', 'COD_FISCALE', 'COMUNE_DESTINAZIONE', 'PROVINCIA_DESTINAZIONE', 'CAP_DESTINAZIONE',
    'ABI', 'CAB', 'RIF_VOSTRO_ORDINE', 'DESTINAZIONE', 'INDIRIZZO_DESTINAZIONE', 'DATA_ORDINE', 'NOTE',
    'RITENUTA', 'ESENTE_IVA', 'ID_AMMINISTRATORE', 'RIC_PRESENTATA', 'BODY_FATTURA_ELETTRONICA',
    'FATTURA_ELETTRONICA', 'FATTURA_NON_RISCOSSA', 'CONTANTI', 'CONTO_CORRENTE', 'IMPORTO_X_PRIMA_NOTA',
    'NOTA_ELETTRONICA_FOR_UNIQUE_KEY', 'NR_CIVICO', 'DOC_CORR_TIPO', 'DOC_CORR_DATA',
    'DOC_CORR_VOCE_RIFERIMENTO', 'MOVIMENTO~MOVIMENTO', 'DOC_CORR_CIG', 'DOC_CORR_CUP',
    'DOC_CORR_CONVENZIONE', 'DOC_CORR_ID_DOCUMENTO', 'ESIGIBILITA_IVA', 'NATURA_IVA', 'FATT_ELETT_INVIATA',
    'DATA_PAGAMENTO');

  FIELDS_PREVENTIVI: Array [01 .. 29] of String = ('ID_PREVENTIVO', 'ANNO_PREVENTIVO', 'ID_CLIENTE',
    'GENERALITA_CLIENTE', 'GENERAZIONE_AUTOMATICA', 'INDIRIZZO_CLIENTE', 'COMUNE_CLIENTE',
    'PROVINCIA_CLIENTE', 'CAP_CLIENTE', 'DATA_PREVENTIVO', 'PARTITA_IVA', 'COND_PAGAMENTO', 'BANCA_APPOGGIO',
    'TITOLO_CLIENTE', 'COD_FISCALE', 'COMUNE_DESTINAZIONE', 'PROVINCIA_DESTINAZIONE', 'CAP_DESTINAZIONE',
    'ABI', 'CAB', 'DESTINAZIONE', 'INDIRIZZO_DESTINAZIONE', 'NOTE', 'FATTURA', 'RITENUTA', 'ESENTE_IVA',
    'ID_AMMINISTRATORE', 'STATO', 'INVIO_MAIL');

  FIELDS_CAT_ESTINTORI: Array [01 .. 11] of String = ('DESCRIZIONE', 'CLASSE_FUOCO', 'PREZZO_COLLAUDO',
    'PREZZO_REVISIONE', 'PERIODICITA_COLLAUDO', 'PERIODICITA_REVISIONE', 'SENZA_SCADENZA', 'CO2',
    'PREZZO_SOSTITUZIONE', 'PREZZO_SMALTIMENTO', 'DESCR_COMPATTA');

  FIELDS_MANUTENZIONI_ORARIE: Array [01 .. 03] of String = ('DAL', 'AL', 'PREZZO');

  FIELDS_FILIALI_CLIENTI: Array [01 .. 19] of String = ('NOME', 'ID', 'SEDE', 'INDIRIZZO', 'COMUNE',
    'PROVINCIA', 'CAP', 'REF_TELEFONO', 'TELEFONO', 'REF_CELLULARE', 'CELLULARE', 'EMAIL', 'NOTE',
    'ORARIO_APERTURA_DAL1', 'ORARIO_APERTURA_AL1', 'ORARIO_APERTURA_DAL2', 'ORARIO_APERTURA_AL2', 'CHIUSURA',
    'ESCLUDI_DA_GENERAZIONE');

  FIELDS_ATTREZZATURE: Array [01 .. 03] of String = ('MATRICOLA', 'MESE_PARTENZA', 'ANNO_PARTENZA');

  FIELDS_IDRANTI: Array [01 .. 11] of String = ('CLIENTE', 'FILIALE', 'DESCRIZIONE', 'TIPO',
    'VALVOLA_INTERCETTAZIONE', 'TIPO_ATTACCO_MOTOPOMPA', 'UBICAZIONE_ATTACCO_MOTOPOMPA', 'PROVA_DINAMICA',
    'UBICAZIONE', 'STATO', 'QUANDO_PROVA_DINAMICA');

  FIELDS_IMPIANTI_ELETTRICI: Array [01 .. 07] of String = ('CLIENTE', 'FILIALE', 'DESCRIZIONE', 'STATO',
    'PREZZO', 'TIPO_VISITA', 'UBICAZIONE');

  FIELDS_PRODOTTI_STATINI: Array [01 .. 03] of String = ('QUANTITA', 'CODICE', 'DESCRIZIONE');

Const
  SUB_FOLDER_APPLICATION_DATA: String = '\ZMax\Phoenix';
  FILE_CONFIGURAZIONE: String = '\Phoenix.ini';

  SEZIONE_DATABASE: String = 'Database';
  KEY_ACCOUNT: String = 'Account';
  KEY_PASSWORD: String = 'Password';
  KEY_SERVER: String = 'Server';
  KEY_DATABASE: String = 'Database';

  SEZIONE_IMPORTAZIONE_MB: String = 'Importazione automatica da mobile';
  KEY_IMPORT_MB_ABILITAZIONE: String = 'Abilitazione';
  KEY_IMPORT_MB_ORA: String = 'Ora scarico';
  KEY_IMPORT_MB_ULTIMO_SCARICO: String = 'Data ultimo scarico';

  SEZIONE_AMMINISTRAZIONE: String = 'Amministrazione';
  KEY_VISIONE_FATTURE_PASSIVE: String = 'Visione fatture passive';
  KEY_PATH_MODELLO_CONTRATTI: String = 'Path modello contratti';
  KEY_CARTELLA_EXPORTING: String = 'Cartella exporting';
  KEY_LOAD_STATO_LAVORAZIONE: String = 'Carica stato lavorazioni';

Function GetStatoStatTablet(IdDatabase: String): TStatoStatinoDaTablet;
begin
  for Result := Low(TStatoStatinoDaTablet) to High(TStatoStatinoDaTablet) do
    if IdDatabase = ID_DBASE_STATO_STATINI_DA_TABLET[Result] then
      break;
end;

Function InterpretaIDAnno(EDIT_ANNO, EDIT_NUMERO: TRealEdit; var Anno: Word; var Numero: Integer): Boolean;
begin
  Result := False;
  try
    Numero := Trunc(EDIT_NUMERO.Value);
    if Numero = 0 then
      Exit;
    Anno := Trunc(EDIT_ANNO.Value);
    if Anno <> 0 then
      Result := True;
  except
  end;
end;

Function GetImportoFromIvato(Ivato: Double; IVA: Integer): Double;
begin
  Result := Ivato * 100 / (IVA + 100);
end;

Function GetIvatoFromImporto(Importo: Double; IVA: Integer): Double;
begin
  Result := Importo * (IVA + 100) / 100;
end;

Procedure GetListaSettori(Query: TpFIBQuery; Lista: TStrings);
begin
  Lista.Clear;
  With Query do
  begin
    try
      FIBPlusChangeSQL(Query, ['SELECT * FROM SETTORI ORDER BY DESCRIZIONE']);
      ExecQuery;
      While not Eof do
      begin
        Lista.AddObject(FieldByName('DESCRIZIONE').AsString, TObject(FieldByName('CHIAVE').AsInteger));
        Next;
      end;
    finally
      Close;
    end;
  end;
end;

// Implementazione TSystemInformation
Constructor TSystemInformation.Create;
begin
  Inherited Create;
  IntestazioneSocieta := TStringList.Create;
  SMTP.Testo := TStringList.Create;
  SuggResocontoFatture := TStringList.Create;
  SMTP.Oggetti := TStringList.Create;
  ShowAllTecnici := False;
  SomeFatturaRegistrata := False;
  ImportazioneDaTabletInCorso := False;
end;

Destructor TSystemInformation.Destroy;
begin
  IntestazioneSocieta.Free;
  SuggResocontoFatture.Free;
  SMTP.Testo.Free;
  SMTP.Oggetti.Free;
  Inherited Destroy;
end;

Procedure TSystemInformation.LoadIni;
var
  IniFile: TIniFile;
  lFileName: TFileName;
begin
  lFileName := (DIRECTORY_APPLICATION_DATA + FILE_CONFIGURAZIONE);
  DBConfigured := FileExists(lFileName);
  IniFile := TIniFile.Create(lFileName);
  try
    DBAccount := IniFile.ReadString(SEZIONE_DATABASE, KEY_ACCOUNT, 'SYSDBA');
    DBPassword := DeCripta(AnsiString(IniFile.ReadString(SEZIONE_DATABASE, KEY_PASSWORD,
      String(Cripta('masterkey')))));
    DBDatabase := IniFile.ReadString(SEZIONE_DATABASE, KEY_DATABASE, ExtractFilePath(Application.ExeName) +
      '\Phoenix.fdb');
    DBServer := IniFile.ReadString(SEZIONE_DATABASE, KEY_SERVER, 'localhost');
    ImportazioneAutomaticaMB.Abilitata := IniFile.ReadBool(SEZIONE_IMPORTAZIONE_MB,
      KEY_IMPORT_MB_ABILITAZIONE, False);
    ImportazioneAutomaticaMB.OraScarico := IniFile.ReadTime(SEZIONE_IMPORTAZIONE_MB, KEY_IMPORT_MB_ORA, 0.0);
    ImportazioneAutomaticaMB.UltimoScarico := IniFile.ReadDateTime(SEZIONE_IMPORTAZIONE_MB,
      KEY_IMPORT_MB_ULTIMO_SCARICO, 0.0);
    GestioneFatturePassive := IniFile.ReadBool(SEZIONE_AMMINISTRAZIONE, KEY_VISIONE_FATTURE_PASSIVE, False);
    PathModelloContratti := IniFile.ReadString(SEZIONE_AMMINISTRAZIONE, KEY_PATH_MODELLO_CONTRATTI, '');
    CartellaExporting := IniFile.ReadString(SEZIONE_AMMINISTRAZIONE, KEY_CARTELLA_EXPORTING, '');
    CheckStatoLavorazioni := IniFile.ReadBool(SEZIONE_AMMINISTRAZIONE, KEY_LOAD_STATO_LAVORAZIONE, False);
  finally
    IniFile.Free;
  end;
  FNrImmaginiPerPDF := 1;
  while FileExists(ExtractFilePath(Application.ExeName) + PREFISSO_IMAGE_FILE_PDF + FormatFloat('00',
    FNrImmaginiPerPDF) + '.jpg') do
    Inc(FNrImmaginiPerPDF);
  Dec(FNrImmaginiPerPDF);
end;

Procedure TSystemInformation.SaveIni;
var
  IniFile: TIniFile;
  lFileName: TFileName;
begin
  lFileName := (DIRECTORY_APPLICATION_DATA + FILE_CONFIGURAZIONE);
  DBConfigured := FileExists(lFileName);
  IniFile := TIniFile.Create(lFileName);
  try
    IniFile.WriteString(SEZIONE_DATABASE, KEY_ACCOUNT, DBAccount);
    IniFile.WriteString(SEZIONE_DATABASE, KEY_PASSWORD, String(Cripta(DBPassword)));
    IniFile.WriteString(SEZIONE_DATABASE, KEY_DATABASE, DBDatabase);
    IniFile.WriteString(SEZIONE_DATABASE, KEY_SERVER, DBServer);
    IniFile.WriteBool(SEZIONE_IMPORTAZIONE_MB, KEY_IMPORT_MB_ABILITAZIONE,
      ImportazioneAutomaticaMB.Abilitata);
    IniFile.WriteBool(SEZIONE_AMMINISTRAZIONE, KEY_VISIONE_FATTURE_PASSIVE, GestioneFatturePassive);
    IniFile.WriteString(SEZIONE_AMMINISTRAZIONE, KEY_PATH_MODELLO_CONTRATTI, PathModelloContratti);
    IniFile.WriteString(SEZIONE_AMMINISTRAZIONE, KEY_CARTELLA_EXPORTING, CartellaExporting);
    IniFile.WriteTime(SEZIONE_IMPORTAZIONE_MB, KEY_IMPORT_MB_ORA, ImportazioneAutomaticaMB.OraScarico);
    IniFile.WriteDateTime(SEZIONE_IMPORTAZIONE_MB, KEY_IMPORT_MB_ULTIMO_SCARICO,
      ImportazioneAutomaticaMB.UltimoScarico);
    IniFile.WriteBool(SEZIONE_AMMINISTRAZIONE, KEY_LOAD_STATO_LAVORAZIONE, CheckStatoLavorazioni);
  finally
    IniFile.Free;
  end;
end;

Procedure TSystemInformation.Load(QryGeneric: TpFIBQuery);
var
  ImpostazioniTrovate: Boolean;
Const
  DEFAULT_ADMIN_PASSWORD: String = '***!PhoenixFly';
  Procedure LoadScrittaGenAutomatica(var Valore: String; Campo, DefaultValue: String);
  begin
    if IsValidName(QryGeneric.FieldByName(Campo).AsString) then
      Valore := QryGeneric.FieldByName(Campo).AsString
    else
      Valore := DefaultValue;
  end;

begin
  FQuery := QryGeneric;
  With QryGeneric do
  begin
    try
      SQL.Clear;
      SQL.Add('SELECT * FROM IMPOSTAZIONI');
      ExecQuery;
      ImpostazioniTrovate := RecordCount <> 0;
      if ImpostazioniTrovate then
      begin
        DenominazioneSocieta := FieldByName('DENOMINAZIONE_SOCIETA').AsString;
        PartitaIVASocieta := FieldByName('PARTITA_IVA_SOCIETA').AsString;
        IntestazioneSocieta.Text := FieldByName('ALTRI_DATI_SOCIETA').AsString;
        IBAN := FieldByName('IBAN').AsString;
        IVA := FieldByName('IVA').AsInteger;
        Scanner := FieldByName('SCANNER').AsInteger;
        RisoluzioneScanner := FieldByName('RISOLUZIONE_SCANNER').AsInteger;
        if RisoluzioneScanner < 100 then
          RisoluzioneScanner := 200;
        UltimoAggiornamento := FieldByName('LAST_CHECK_AGGIORNAMENTI').AsDateTime;
        SMTP.Server := FieldByName('SMTP_SERVER').AsString;
        SMTP.Porta := FieldByName('SMTP_PORTA').AsInteger;
        SMTP.Mittente := FieldByName('SMTP_MITTENTE').AsString;
        SMTP.Oggetti.Text := FieldByName('SMTP_OGGETTI').AsString;
        SMTP.Testo.Text := FieldByName('SMTP_TESTO').AsString;
        SMTP.UserName := FieldByName('SMTP_USERNAME').AsString;
        SMTP.Password := FieldByName('SMTP_PASSWORD').AsString;
        SMTP.CCn := FieldByName('SMTP_CCn').AsString;
        HTTP.Link := FieldByName('HTTP_LINK').AsString;
        if GlobalLibra.DeveloperMode then
          // SystemInformation.HTTP.Link := 'https://www.zmsoftware.cloud/PhoenixMobile';
          SystemInformation.HTTP.Link := 'http://127.0.0.1/PhoenixMobile';
        HTTP.LinkWebApp := FieldByName('HTTP_LINK_WEBAPP').AsString;
        HTTP.PwdAdmin := FieldByName('PWD_ADMIN_HTTP').AsString;
        if not IsValidName(HTTP.PwdAdmin) then
          HTTP.PwdAdmin := DEFAULT_ADMIN_PASSWORD;

        SuggResocontoFatture.Text := FieldByName('SUGGERIMENTO_RESOCONTO_FATTURE').AsString;
        CostoSostituzioneValv := CentsToReal(FieldByName('COSTO_SOSTITUZIONE_VALVOLA').AsInteger);

        if FieldByName('DEFAULT_CONTO').IsNull then
          DefaultContoCorrente := -1
        else
          DefaultContoCorrente := FieldByName('DEFAULT_CONTO').AsInteger;
        CassaContantiInizio := CentsToReal(FieldByName('START_CASSA_CONTANTI').AsInteger);
        CassaAssegniInizio := CentsToReal(FieldByName('START_CASSA_ASSEGNI').AsInteger);
        DataCassaContantiInizio := FieldByName('START_DATA_CASSA_CONTANTI').AsDate;
        DataCassaAssegniInizio := FieldByName('START_DATA_CASSA_ASSEGNI').AsDate;
        if FieldByName('CONTO_FIDO').IsNull then
          ContoFIDO := -1
        else
          ContoFIDO := FieldByName('CONTO_FIDO').AsInteger;
        if FieldByName('CONTO_DESTINAZIONE_RIBA').IsNull then
          ContoDestinazioneRIBA := -1
        else
          ContoDestinazioneRIBA := FieldByName('CONTO_DESTINAZIONE_RIBA').AsInteger;

        if SMTP.Porta = 0 then
          SMTP.Porta := 25;
        if IVA = 0 then
          IVA := 22;
        With SystemInformation.Etichette do
        begin
          MargineDestro := FieldByName('MARGINE_DESTRO').AsInteger / 100;
          MargineSinis := FieldByName('MARGINE_SINISTRO').AsInteger / 100;
          MargineSup := FieldByName('MARGINE_SUPERIORE').AsInteger / 100;
          MargineInf := FieldByName('MARGINE_INFERIORE').AsInteger / 100;
          NumeroColonne := FieldByName('NUMERO_COLONNE').AsInteger;
          if NumeroColonne = 0 then
            NumeroColonne := 100;
          InterVert := FieldByName('INTERLINEA_VERTICALE').AsInteger / 100;
          AltezzaEtichetta := FieldByName('ALTEZZA_ETICHETTA').AsInteger / 100;
          InterOriz := FieldByName('INTERLINEA_ORIZZONTALE').AsInteger / 100;
          DisegnaBordi := FieldByName('DISEGNA_BORDI').AsString = TRUE_VALUE;
          Orizzontale := FieldByName('ORIENTAZIONE_ORIZZONTALE').AsString = TRUE_VALUE;
        end;
        With SystemInformation.ScritteGenAutomaticaFatture do
        begin
          LoadScrittaGenAutomatica(ControlloGruppoMensile, 'CONTROLLO_GRUPPO_MENSILE',
            'Controllo mensile gruppi pressurizzazione impianto');
          LoadScrittaGenAutomatica(ControlloPeriodicoImpiantiElettrici, 'CONTROLLO_PER_IMP_ELETTRICI',
            'Controllo periodico impianti elettrici come da contratto visita di');
          LoadScrittaGenAutomatica(ControlloGruppoTrimestrale, 'CONTROLLO_GRUPPO_TRIMESTRALE',
            'Controllo trimestrale gruppi pressurizzazione impianto');
          LoadScrittaGenAutomatica(ControlloGruppoSemestrale, 'CONTROLLO_GRUPPO_SEMESTRALE',
            'Controllo semestrale gruppi pressurizzazione impianto');
          LoadScrittaGenAutomatica(ControlloSprinklerTrimestrale, 'CONTROLLO_SPRINKLER_TRIMESTRALE',
            'Controllo trimestrale sprinkler');
          LoadScrittaGenAutomatica(ControlloSprinklerSemestrale, 'CONTROLLO_SPRINKLER_SEMESTRALE',
            'Controllo semestrale sprinkler');
          LoadScrittaGenAutomatica(OrdinarioEstintori, 'CONTROLLO_ORDINARIO_ESTINTORI',
            'Servizio manutenzione estintori come da contratto visita di');
          LoadScrittaGenAutomatica(OrdinarioPorte, 'CONTROLLO_ORDINARIO_PORTE',
            'Servizio manutenzione porte tagliafuoco come da contratto visita di');
          LoadScrittaGenAutomatica(OrdinarioLuci, 'CONTROLLO_ORDINARIO_LUCI',
            'Servizio manutenzione luci emergenza come da contratto visita di');
          LoadScrittaGenAutomatica(OrdinarioFumi, 'CONTROLLO_ORDINARIO_FUMI',
            'Servizio manutenzione rilevazione fumi come da contratto visita di');
          LoadScrittaGenAutomatica(OrdinarioBocchelli, 'CONTROLLO_ORDINARIO_BOCCHELLI',
            'Servizio manutenzione idranti come da contratto visita di');
          LoadScrittaGenAutomatica(ProvaDinamica, 'PROVA_DINAMICA', 'Prova dinamica impianto idrante');
          LoadScrittaGenAutomatica(RevisioneEstintori, 'REVISIONE_ESTINTORI',
            'Revisione a norma UNI 9994 come da contratto estintore');
          LoadScrittaGenAutomatica(SostituzioneEstintori1, 'SOSTITUZIONE_ESTINTORI1',
            'Sostituzione estintore');
          LoadScrittaGenAutomatica(SostituzioneEstintori2, 'SOSTITUZIONE_ESTINTORI2',
            'per raggiungimento 18° anno di età''');
          LoadScrittaGenAutomatica(SostituzioneValvolaEstintori, 'SOSTITUZIONE_VALVOLA_ESTINTORI',
            'Sostituzione valvola estintore');
          LoadScrittaGenAutomatica(Smaltimento1, 'SMALTIMENTO1', 'Servizio smaltimento estintore');
          LoadScrittaGenAutomatica(Smaltimento2, 'SMALTIMENTO2', 'per vetustà');
          LoadScrittaGenAutomatica(CollaudoEstintoreCO2, 'COLLAUDO_ESTINTORI_CO2',
            'Collaudo ISPESL come da contratto estintore');
          LoadScrittaGenAutomatica(CollaudoEstintoreNonCO2, 'COLLAUDO_ESTINTORI_NON_CO2',
            'Collaudo UNI 9994 come da contratto estintore');
          LoadScrittaGenAutomatica(CollaudoBocchelli, 'COLLAUDO_BOCCHELLI',
            'Pressatura quinquennale manichette antincendio. Visita di');
        end;
      end
      else
      begin
        DenominazioneSocieta := '[Sconosciuta]';
        PartitaIVASocieta := '[Sconosciuta]';
        IntestazioneSocieta.Clear;
        SuggResocontoFatture.Clear;
        SMTP.UserName := '';
        SMTP.Password := '';
        HTTP.Link := '';
        IVA := 22;
        CostoSostituzioneValv := 22;
        DefaultContoCorrente := -1;
        CassaContantiInizio := 0;
        CassaAssegniInizio := 0;
        HTTP.PwdAdmin := DEFAULT_ADMIN_PASSWORD;
        Scanner := 0;
        RisoluzioneScanner := 200;
      end;
    finally
      Close;
    end;
    if not ImpostazioniTrovate then
    begin
      Transaction.StartTransaction;
      try
        CopyArrayInTStringList(SQL,
          ['INSERT INTO IMPOSTAZIONI (DENOMINAZIONE_SOCIETA,PARTITA_IVA_SOCIETA,IVA) VALUES (:DENOMINAZIONE_SOCIETA,:PARTITA_IVA_SOCIETA,:IVA)']
          );
        ParamByName('DENOMINAZIONE_SOCIETA').AsString := DenominazioneSocieta;
        ParamByName('PARTITA_IVA_SOCIETA').AsString := PartitaIVASocieta;
        ParamByName('IVA').AsInteger := IVA;
        ExecQuery;
        Transaction.CommitRetaining;
      except
        Transaction.RollbackRetaining;
        Raise;
      end;
    end;
  end;
  CommonDocumentContainerSettings.Sorgente := Scanner;
  CommonDocumentContainerSettings.ShowExternalWindow := False;
  CommonDocumentContainerSettings.RisoluzioneScanner := RisoluzioneScanner;
end;

Procedure TSystemInformation.Save(QryGeneric: TpFIBQuery);
var
  UltimoCalcoloISTAT: Integer;
begin
  With QryGeneric do
  begin
    Transaction.StartTransaction;
    try
      CopyArrayInTStringList(SQL, ['SELECT ULTIMO_CALCOLO_ISTAT FROM IMPOSTAZIONI']);
      try
        ExecQuery;
        UltimoCalcoloISTAT := Fields[0].AsInteger;
      finally
        Close;
      end;
      CopyArrayInTStringList(SQL, ['DELETE FROM IMPOSTAZIONI']);
      ExecQuery;
      SQL.Clear;
      CreateUpdateInsertSQL(QryGeneric, 'IMPOSTAZIONI', [''], ['DENOMINAZIONE_SOCIETA', 'IBAN',
        'ALTRI_DATI_SOCIETA', 'IVA', 'SMTP_CCn', 'SUGGERIMENTO_RESOCONTO_FATTURE', 'PWD_ADMIN_HTTP',
        'START_CASSA_ASSEGNI', 'COSTO_SOSTITUZIONE_VALVOLA', 'HTTP_LINK', 'DEFAULT_CONTO',
        'START_CASSA_CONTANTI', 'START_DATA_CASSA_CONTANTI', 'START_DATA_CASSA_ASSEGNI', 'CONTO_FIDO',
        'CONTO_DESTINAZIONE_RIBA', 'SMTP_SERVER', 'SMTP_PORTA', 'SMTP_MITTENTE',
        'CONTROLLO_PER_IMP_ELETTRICI', 'SMTP_OGGETTI', 'SMTP_TESTO', 'ULTIMO_CALCOLO_ISTAT', 'SMTP_USERNAME',
        'SMTP_PASSWORD', 'ALTEZZA_ETICHETTA', 'NUMERO_COLONNE', 'INTERLINEA_VERTICALE', 'HTTP_LINK_WEBAPP',
        'INTERLINEA_ORIZZONTALE', 'MARGINE_DESTRO', 'MARGINE_SINISTRO', 'PARTITA_IVA_SOCIETA',
        'MARGINE_SUPERIORE', 'MARGINE_INFERIORE', 'DISEGNA_BORDI', 'ORIENTAZIONE_ORIZZONTALE',
        'CONTROLLO_GRUPPO_MENSILE', 'CONTROLLO_GRUPPO_TRIMESTRALE', 'CONTROLLO_GRUPPO_SEMESTRALE',
        'CONTROLLO_SPRINKLER_TRIMESTRALE', 'CONTROLLO_SPRINKLER_SEMESTRALE', 'CONTROLLO_ORDINARIO_ESTINTORI',
        'CONTROLLO_ORDINARIO_PORTE', 'CONTROLLO_ORDINARIO_LUCI', 'LAST_CHECK_AGGIORNAMENTI',
        'CONTROLLO_ORDINARIO_FUMI', 'CONTROLLO_ORDINARIO_BOCCHELLI', 'PROVA_DINAMICA', 'REVISIONE_ESTINTORI',
        'SOSTITUZIONE_ESTINTORI1', 'SOSTITUZIONE_ESTINTORI2', 'SCANNER', 'SMALTIMENTO1', 'SMALTIMENTO2',
        'COLLAUDO_ESTINTORI_CO2', 'SOSTITUZIONE_VALVOLA_ESTINTORI', 'COLLAUDO_ESTINTORI_NON_CO2',
        'COLLAUDO_BOCCHELLI', 'RISOLUZIONE_SCANNER'], False);

      FIBPlusSaveTStrings(QryGeneric, 'ALTRI_DATI_SOCIETA', IntestazioneSocieta);
      ParamByName('DENOMINAZIONE_SOCIETA').AsString := DenominazioneSocieta;
      ParamByName('PARTITA_IVA_SOCIETA').AsString := PartitaIVASocieta;
      ParamByName('IBAN').AsString := IBAN;
      ParamByName('IVA').AsInteger := IVA;
      ParamByName('LAST_CHECK_AGGIORNAMENTI').AsDateTime := UltimoAggiornamento;
      ParamByName('HTTP_LINK_WEBAPP').AsString := HTTP.LinkWebApp;
      ParamByName('SMTP_SERVER').AsString := SMTP.Server;
      ParamByName('SMTP_MITTENTE').AsString := SMTP.Mittente;
      FIBPlusSaveTStrings(QryGeneric, 'SMTP_OGGETTI', SMTP.Oggetti);
      ParamByName('SMTP_PORTA').AsInteger := SMTP.Porta;
      ParamByName('RISOLUZIONE_SCANNER').AsInteger := RisoluzioneScanner;
      ParamByName('SMTP_CCn').AsString := SMTP.CCn;
      ParamByName('ULTIMO_CALCOLO_ISTAT').AsInteger := UltimoCalcoloISTAT;
      ParamByName('SMTP_USERNAME').AsString := SMTP.UserName;
      ParamByName('SMTP_PASSWORD').AsString := SMTP.Password;
      ParamByName('COSTO_SOSTITUZIONE_VALVOLA').AsInteger := RealToCents(CostoSostituzioneValv);
      ParamByName('HTTP_LINK').AsString := HTTP.Link;
      ParamByName('PWD_ADMIN_HTTP').AsString := HTTP.PwdAdmin;
      ParamByName('START_DATA_CASSA_CONTANTI').AsDate := SystemInformation.DataCassaContantiInizio;
      ParamByName('START_DATA_CASSA_ASSEGNI').AsDate := SystemInformation.DataCassaAssegniInizio;
      ParamByName('SCANNER').AsInteger := SystemInformation.Scanner;
      ParamByName('CONTO_FIDO').AsInteger := SystemInformation.ContoFIDO;
      ParamByName('CONTO_DESTINAZIONE_RIBA').AsInteger := SystemInformation.ContoDestinazioneRIBA;

      if DefaultContoCorrente = -1 then
        ParamByName('DEFAULT_CONTO').Clear
      else
        ParamByName('DEFAULT_CONTO').AsInteger := DefaultContoCorrente;
      ParamByName('START_CASSA_CONTANTI').AsInteger := RealToCents(CassaContantiInizio);
      ParamByName('START_CASSA_ASSEGNI').AsInteger := RealToCents(CassaAssegniInizio);

      With SystemInformation.Etichette do
      begin
        ParamByName('ALTEZZA_ETICHETTA').AsInteger := Trunc(AltezzaEtichetta * 100);
        ParamByName('NUMERO_COLONNE').AsInteger := NumeroColonne;
        ParamByName('INTERLINEA_VERTICALE').AsInteger := Trunc(InterVert * 100);
        ParamByName('INTERLINEA_ORIZZONTALE').AsInteger := Trunc(InterOriz * 100);
        ParamByName('MARGINE_DESTRO').AsInteger := Trunc(MargineDestro * 100);
        ParamByName('MARGINE_SINISTRO').AsInteger := Trunc(MargineSinis * 100);
        ParamByName('MARGINE_SUPERIORE').AsInteger := Trunc(MargineSup * 100);
        ParamByName('MARGINE_INFERIORE').AsInteger := Trunc(MargineInf * 100);
        ParamByName('DISEGNA_BORDI').AsString := SostBoolean(DisegnaBordi, TRUE_VALUE, FALSE_VALUE);
        ParamByName('ORIENTAZIONE_ORIZZONTALE').AsString := SostBoolean(Orizzontale, TRUE_VALUE, FALSE_VALUE);
      end;

      With SystemInformation.ScritteGenAutomaticaFatture do
      begin
        ParamByName('CONTROLLO_GRUPPO_MENSILE').AsString := ControlloGruppoMensile;
        ParamByName('CONTROLLO_GRUPPO_TRIMESTRALE').AsString := ControlloGruppoTrimestrale;
        ParamByName('CONTROLLO_GRUPPO_SEMESTRALE').AsString := ControlloGruppoSemestrale;
        ParamByName('CONTROLLO_SPRINKLER_TRIMESTRALE').AsString := ControlloSprinklerTrimestrale;
        ParamByName('CONTROLLO_SPRINKLER_SEMESTRALE').AsString := ControlloSprinklerSemestrale;
        ParamByName('CONTROLLO_ORDINARIO_ESTINTORI').AsString := OrdinarioEstintori;
        ParamByName('CONTROLLO_ORDINARIO_PORTE').AsString := OrdinarioPorte;
        ParamByName('CONTROLLO_ORDINARIO_LUCI').AsString := OrdinarioLuci;
        ParamByName('CONTROLLO_ORDINARIO_FUMI').AsString := OrdinarioFumi;
        ParamByName('CONTROLLO_ORDINARIO_BOCCHELLI').AsString := OrdinarioBocchelli;
        ParamByName('PROVA_DINAMICA').AsString := ProvaDinamica;
        ParamByName('REVISIONE_ESTINTORI').AsString := RevisioneEstintori;
        ParamByName('SOSTITUZIONE_ESTINTORI1').AsString := SostituzioneEstintori1;
        ParamByName('SOSTITUZIONE_ESTINTORI2').AsString := SostituzioneEstintori2;
        ParamByName('SOSTITUZIONE_VALVOLA_ESTINTORI').AsString := SostituzioneValvolaEstintori;
        ParamByName('SMALTIMENTO1').AsString := Smaltimento1;
        ParamByName('SMALTIMENTO2').AsString := Smaltimento2;
        ParamByName('COLLAUDO_ESTINTORI_CO2').AsString := CollaudoEstintoreCO2;
        ParamByName('COLLAUDO_ESTINTORI_NON_CO2').AsString := CollaudoEstintoreNonCO2;
        ParamByName('COLLAUDO_BOCCHELLI').AsString := CollaudoBocchelli;
        ParamByName('CONTROLLO_PER_IMP_ELETTRICI').AsString := ControlloPeriodicoImpiantiElettrici;
      end;

      FIBPlusSaveTStrings(QryGeneric, 'SUGGERIMENTO_RESOCONTO_FATTURE', SuggResocontoFatture);
      FIBPlusSaveTStrings(QryGeneric, 'SMTP_TESTO', SMTP.Testo);
      ExecQuery;
      Transaction.CommitRetaining;
      CommonDocumentContainerSettings.Sorgente := Scanner;
      CommonDocumentContainerSettings.ShowExternalWindow := False;
      CommonDocumentContainerSettings.RisoluzioneScanner := RisoluzioneScanner;
    except
      Transaction.RollbackRetaining;
      Raise;
    end;
  end;
end;

Procedure GetDescrProdotto(Query: TpFIBQuery; Chiave: Integer; var Descrizione: String; var UdM: String;
  var IVA: Integer; var CodABarre: String; var Importo: Double; var ImportoIvato: Boolean;
  var PrezzoAcq: Double; var Codice: String; var QuantitaMagazzino: Double; var QuantitaMinima: Double);
begin
  Descrizione := '';
  UdM := '';
  try
    With Query do
    begin
      FIBPlusChangeSQL(Query, ['SELECT * FROM PRODOTTI WHERE CHIAVE = ' + IntToStr(Chiave)]);
      ExecQuery;
      if Query.RecordCount <> 0 then
      begin
        Descrizione := FieldByName('DESCRIZIONE').AsString;
        UdM := FieldByName('UNITA_DI_MISURA').AsString;
        IVA := FieldByName('IVA').AsInteger;
        CodABarre := FieldByName('CODICE_A_BARRE').AsString;
        Importo := CentsToReal(FieldByName('IMPORTO').AsInteger);
        ImportoIvato := FieldByName('IMPORTO_IVATO').AsString = TRUE_VALUE;
        PrezzoAcq := CentsToReal(FieldByName('PREZZO_ACQUISTO').AsInteger);
        Codice := FieldByName('CODICE_PRODOTTO').AsString;
        QuantitaMagazzino := CentsToReal(FieldByName('QUANTITA_MAGAZZINO').AsInteger);
        QuantitaMinima := CentsToReal(FieldByName('QUANTITA_MINIMA').AsInteger);
      end;
    end;
  finally
    Query.Close;
  end;
end;

Function EsisteProdotto(Query: TpFIBQuery; Campo: String; CodiceABarre: Boolean): Boolean;
begin
  FIBPlusChangeSQL(Query, ['SELECT COUNT(*) FROM PRODOTTI', SostBoolean(CodiceABarre,
    'WHERE UPPER(CODICE_A_BARRE) = ''' + UpperCase(Campo) + '''', 'WHERE UPPER(DESCRIZIONE) = ''' +
    UpperCase(Campo) + '''')]);
  try
    Query.ExecQuery;
    Result := Query.Fields[0].AsInteger > 0;
  finally
    Query.Close;
  end;
end;

Function GetNomeFiliale(Query: TpFIBQuery; Chiave: Integer): String;
begin
  With Query do
  begin
    try
      FIBPlusChangeSQL(Query, ['SELECT * FROM FILIALI_CLIENTI WHERE CHIAVE = ' + IntToStr(Chiave)]);
      ExecQuery;
      if RecordCount = 0 then
        Result := '????'
      else
        Result := FieldByName('NOME').AsString;
    finally
      Close;
    end;
  end;
end;

Function GetIdFromAntaPorta(Anta: String): String;
begin
  Result := ID_ANTA_1;
  if Anta = ANTA2 then
    Result := ID_ANTA_2;
  if Anta = ANTA_SCORREVOLE then
    Result := ID_ANTA_SCORREVOLE;
end;

Function GetAntaPortaFromId(Id: String): String;
begin
  Result := ANTA1;
  if Id = ID_ANTA_2 then
    Result := ANTA2;
  if Id = ID_ANTA_SCORREVOLE then
    Result := ANTA_SCORREVOLE;
end;

Function GetIdFromStatoAttrezzatura(StatoEstintore: String): String;
begin
  Result := ID_ATTREZZATURA_ATTIVA;
  if StatoEstintore = ATTREZZATURA_SOSPESA then
    Result := ID_ATTREZZATURA_SOSPESA;
  if StatoEstintore = ATTREZZATURA_SMALTITA then
    Result := ID_ATTREZZATURA_SMALTITA;
end;

Function GetStatoAttrezzaturaFromId(Id: String): String;
begin
  Result := ATTREZZATURA_ATTIVA;
  if Id = ID_ATTREZZATURA_SOSPESA then
    Result := ATTREZZATURA_SOSPESA;
  if Id = ID_ATTREZZATURA_SMALTITA then
    Result := ATTREZZATURA_SMALTITA;
end;

Procedure GetListaStatiAttrezzature(AList: TStrings);
begin
  AList.Clear;
  AList.Add(ATTREZZATURA_ATTIVA);
  AList.Add(ATTREZZATURA_SMALTITA);
  AList.Add(ATTREZZATURA_SOSPESA)
end;

Function GetIdFromPeriodoGruppoSprinkler(Periodo: String): String;
begin
  Result := ID_PERIODO_GRP_SPR_TRIMESTRALE;
  if Periodo = STRING_PERIODO_GRUPPO_MENSILE then
    Result := ID_PERIODO_GRP_SPR_MENSILE;
  if Periodo = STRING_PERIODO_GRUPPO_SEMESTRALE then
    Result := ID_PERIODO_GRP_SPR_SEMESTRALE;
end;

Function GetPeriodoGruppoSprinklerFromId(Id: String): String;
begin
  Result := STRING_PERIODO_GRUPPO_TRIMESTRALE;
  if Id = ID_PERIODO_GRP_SPR_MENSILE then
    Result := STRING_PERIODO_GRUPPO_MENSILE;
  if Id = ID_PERIODO_GRP_SPR_SEMESTRALE then
    Result := STRING_PERIODO_GRUPPO_SEMESTRALE;
end;

Procedure GetListaPeriodiGruppoSprinkler(AList: TStrings; EscludiMensile: Boolean = False);
begin
  AList.Clear;
  if not EscludiMensile then
    AList.Add(STRING_PERIODO_GRUPPO_MENSILE);
  AList.Add(STRING_PERIODO_GRUPPO_TRIMESTRALE);
  AList.Add(STRING_PERIODO_GRUPPO_SEMESTRALE);
end;

Function GetIdFromTipoVisita(TipoVisita: String): String;
begin
  if TipoVisita = PRIMA_VISITA then
    Result := ID_PRIMA_VISITA
  else
    Result := ID_SECONDA_VISITA;
end;

Function GetTipoVisitaFromId(Id: String): String;
begin
  if Id = ID_PRIMA_VISITA then
    Result := PRIMA_VISITA
  else
    Result := SECONDA_VISITA;
end;

Procedure GetListaTipoVisite(AList: TStrings);
begin
  AList.Clear;
  AList.Add(PRIMA_VISITA);
  AList.Add(SECONDA_VISITA);
end;

Procedure GetTipologieTipoPorte(AList: TStrings);
begin
  AList.Clear;
  AList.AddObject(TIPO_PORTA_NORMALE, TObject(ID_TIPO_PORTE_NORMALE));
  AList.AddObject(TIPO_PORTA_PORTA_REI, TObject(ID_TIPO_PORTE_PORTE_REI));
  AList.AddObject(TIPO_PORTA_PORTONE_REI, TObject(ID_TIPO_PORTE_PORTONI_REI));
end;

Procedure GetListaAnte(AList: TStrings);
begin
  AList.Clear;
  AList.Add(ANTA1);
  AList.Add(ANTA2);
  AList.Add(ANTA_SCORREVOLE);
end;

Function GetIdFromTipoIntervento(TipoIntervento: String): String;
begin
  Result := ID_INTERVENTO_ORDINARIO;
  if TipoIntervento = INTERVENTO_ORDINARIO then
    Result := ID_INTERVENTO_ORDINARIO;
  if TipoIntervento = INTERVENTO_REVISIONE then
    Result := ID_INTERVENTO_REVISIONE;
  if TipoIntervento = INTERVENTO_COLLAUDO then
    Result := ID_INTERVENTO_COLLAUDO;
  if TipoIntervento = INTERVENTO_ALTERNATIVO then
    Result := ID_INTERVENTO_ALTERNATIVO;
  if TipoIntervento = INTERVENTO_RICARICA then
    Result := ID_INTERVENTO_RICARICA;
  if TipoIntervento = INTERVENTO_SOSTITUZIONE then
    Result := ID_INTERVENTO_SOSTITUZIONE;

end;

Function GetTipoInterventoFromId(Id: String): String;
begin
  Result := INTERVENTO_ORDINARIO;
  if Id = ID_INTERVENTO_ORDINARIO then
    Result := INTERVENTO_ORDINARIO;
  if Id = ID_INTERVENTO_COLLAUDO then
    Result := INTERVENTO_COLLAUDO;
  if Id = ID_INTERVENTO_REVISIONE then
    Result := INTERVENTO_REVISIONE;
  if Id = ID_INTERVENTO_ALTERNATIVO then
    Result := INTERVENTO_ALTERNATIVO;
  if Id = ID_INTERVENTO_RICARICA then
    Result := INTERVENTO_RICARICA;
  if Id = ID_INTERVENTO_SOSTITUZIONE then
    Result := INTERVENTO_SOSTITUZIONE;

end;

Procedure GetListaObbligatoriaTipoIntervento(ALista: TStrings);
begin
  ALista.Clear;
  ALista.Add(INTERVENTO_ORDINARIO);
  ALista.Add(INTERVENTO_ALTERNATIVO);
end;

Procedure GetListaTipoIntervento(ALista: TStrings; Estintore: Boolean);
begin
  ALista.Clear;
  ALista.Add(INTERVENTO_ORDINARIO);
  ALista.Add(INTERVENTO_COLLAUDO);

  if Estintore then
  begin
    ALista.Add(INTERVENTO_REVISIONE);
    ALista.Add(INTERVENTO_RICARICA);
    ALista.Add(INTERVENTO_SOSTITUZIONE);
  end;
  ALista.Add(INTERVENTO_ALTERNATIVO);
end;

Function GetIdFromTipoIdrante(TipoIdrante: String): String;
begin
  Result := ID_IDRANTE_ANELLO;
  if TipoIdrante = IDRANTE_COLONNA then
    Result := ID_IDRANTE_COLONNA;
  if TipoIdrante = IDRANTE_NASPI then
    Result := ID_IDRANTE_NASPI;
end;

Function GetTipoIdranteFromId(Id: String): String;
begin
  Result := IDRANTE_ANELLO;
  if Id = ID_IDRANTE_COLONNA then
    Result := IDRANTE_COLONNA;
  if Id = ID_IDRANTE_NASPI then
    Result := IDRANTE_NASPI;
end;

Procedure GetListaTipoIdrante(AList: TStrings);
begin
  AList.Clear;
  AList.Add(IDRANTE_ANELLO);
  AList.Add(IDRANTE_COLONNA);
  AList.Add(IDRANTE_NASPI);
end;

Function GetIdFromTipoStazione(TipoStazione: String): String;
begin
  Result := ID_STAZIONE_AD_IMMERSIONE;
  if TipoStazione = SOPRABATTENTE then
    Result := ID_STAZIONE_SOPRABATTENTE;
  if TipoStazione = SOTTOBATTENTE then
    Result := ID_STAZIONE_SOTTOBATTENTE;
end;

Function GetTipoStazioneFromId(Id: String): String;
begin
  Result := AD_IMMERSIONE;
  if Id = ID_STAZIONE_SOPRABATTENTE then
    Result := SOPRABATTENTE;
  if Id = ID_STAZIONE_SOTTOBATTENTE then
    Result := SOTTOBATTENTE;
end;

Procedure GetListaTipoStazione(AList: TStrings);
begin
  AList.Add(SOPRABATTENTE);
  AList.Add(SOTTOBATTENTE);
  AList.Add(AD_IMMERSIONE);
end;

Procedure GetUltimiCollBocchello(AQuery: TpFIBQuery; DataStartup: TDateTime; var LastCollaudo: TDateTime);

var
  ValiditaCollaudo: Integer;
begin
  ValiditaCollaudo := 0;

  CopyArrayInTStringList(AQuery.SQL, ['SELECT PERIODICITA_COLLAUDI_IDRANTI', '  FROM PREZZI_ATTREZZATURE']);
  try
    AQuery.ExecQuery;
    if not AQuery.Eof then
      ValiditaCollaudo := AQuery.FieldByName('PERIODICITA_COLLAUDI_IDRANTI').AsInteger;
  finally
    AQuery.Close;
  end;

  if ValiditaCollaudo <> 0 then
    LastCollaudo := SumMonth(DataStartup, ValiditaCollaudo)
  else
    LastCollaudo := DataStartup;
end;

Function GetIdPrecedenteStatino(AQuery: TpFIBQuery; IdStatino: Integer; var ChiaveContratto: Integer;
  var StatinoDaRinnovo: Boolean): Integer;
var
  DataIntervento: TDateTime;
  EndRicerca: Boolean;
begin
  Result := -1;
  StatinoDaRinnovo := False;
  ChiaveContratto := -1;
  DataIntervento := 0.0;
  CopyArrayInTStringList(AQuery.SQL, ['SELECT * FROM STATINI WHERE CHIAVE = :IdStatino']);
  AQuery.ParamByName('IdStatino').AsInteger := IdStatino;
  try
    AQuery.ExecQuery;
    if not AQuery.Eof then
    begin
      ChiaveContratto := AQuery.FieldByName('CLIENTE').AsInteger;
      DataIntervento := AQuery.FieldByName('DATA_INTERVENTO').AsDate;
      if DataIntervento = 0.0 then
        DataIntervento := Now;
    end;
  finally
    AQuery.Close;
  end;
  EndRicerca := ChiaveContratto = -1;
  while not EndRicerca do
  begin
    CopyArrayInTStringList(AQuery.SQL, ['SELECT CHIAVE,DATA_INTERVENTO', '  FROM STATINI',
      ' WHERE DATA_INTERVENTO < :DataIntervento', '   AND CLIENTE = :IdContratto',
      'ORDER BY DATA_INTERVENTO']);
    try
      AQuery.ParamByName('IdContratto').AsInteger := ChiaveContratto;
      AQuery.ParamByName('DataIntervento').AsDate := DataIntervento;
      AQuery.ExecQuery;
      While not AQuery.Eof do
      begin
        Result := AQuery.FieldByName('CHIAVE').AsInteger;
        AQuery.Next;
      end;
    finally
      AQuery.Close;
    end;
    if Result = -1 then
    begin
      CopyArrayInTStringList(AQuery.SQL, ['SELECT RINNOVATO_DA FROM RINNOVI_CONTRATTI WHERE CONTRATTO = ' +
        IntToStr(ChiaveContratto)]);
      try
        AQuery.ExecQuery;
        if AQuery.Eof then
        begin
          ChiaveContratto := -1;
          EndRicerca := True;
        end
        else
        begin
          ChiaveContratto := AQuery.Fields[0].AsInteger;
          StatinoDaRinnovo := True;
        end;
      finally
        AQuery.Close;
      end;
    end
    else
      EndRicerca := True;
  end;
end;

Procedure GetUltimiCollRevEstintore(AQuery: TpFIBQuery; IdCatEstintore: Integer; IdEstintore: Integer;
  DataStartupColl: TDateTime; DataStartupRev: TDateTime; var LastCollaudo: TDateTime;
  var LastRevisione: TDateTime; var ValiditaCollaudo: Integer; var ValiditaRevisione: Integer;
  ListaPeriodicita: TStringList = Nil);
var
  Index: Integer;
begin
  ValiditaCollaudo := 0;
  ValiditaRevisione := 0;

  if IdCatEstintore = -1 then // SOLO SE NON HO ALLA BASE LA CATEGORIA DELL'ESTINTORE
  begin
    CopyArrayInTStringList(AQuery.SQL, ['SELECT TIPO_ESTINTORE FROM ESTINTORI_CLIENTI',
      ' WHERE CHIAVE = ' + IntToStr(IdEstintore) + ')']);
    if not AQuery.Eof then
      IdCatEstintore := AQuery.Fields[0].AsInteger
    else
      raise Exception.Create('Estintore non trovato');

  end;

  if ListaPeriodicita <> Nil then
  begin
    Index := ListaPeriodicita.IndexOf(IntToStr(IdCatEstintore));
    if Index <> -1 then
    begin
      ValiditaCollaudo := Integer(ListaPeriodicita.Objects[Index]) div 1000;
      ValiditaRevisione := Integer(ListaPeriodicita.Objects[Index]) mod 1000;
    end;
  end;

  if (ValiditaCollaudo = 0) or (ValiditaRevisione = 0) then
  begin
    CopyArrayInTStringList(AQuery.SQL, ['SELECT PERIODICITA_REVISIONE,PERIODICITA_COLLAUDO',
      '  FROM CAT_ESTINTORI', 'WHERE CHIAVE = ' + IntToStr(IdCatEstintore)]);
    try
      AQuery.ExecQuery;
      if not AQuery.Eof then
      begin
        ValiditaCollaudo := AQuery.FieldByName('PERIODICITA_COLLAUDO').AsInteger;
        ValiditaRevisione := AQuery.FieldByName('PERIODICITA_REVISIONE').AsInteger;
        if ListaPeriodicita <> Nil then
        begin
          if ListaPeriodicita.IndexOf(IntToStr(IdCatEstintore)) = -1 then
            ListaPeriodicita.AddObject(IntToStr(IdCatEstintore),
              TObject(ValiditaCollaudo * 1000 + ValiditaRevisione));
        end;
      end;
    finally
      AQuery.Close;
    end;
  end;

  if ValiditaCollaudo <> 0 then
    LastCollaudo := SumMonth(DataStartupColl, ValiditaCollaudo)
  else
    LastCollaudo := DataStartupColl;

  if ValiditaRevisione <> 0 then
    LastRevisione := SumMonth(DataStartupRev, ValiditaRevisione)
  else
    LastRevisione := DataStartupRev;
end;

Function GetIdFromStatoPreventivo(Stato: String): String;
begin
  Result := ID_PREVENTIVO_SOSPESO;
  if Stato = STATO_PREVENTIVO_CONFERMATO then
    Result := ID_PREVENTIVO_CONFERMATO;
  if Stato = STATO_PREVENTIVO_RIFIUTATO then
    Result := ID_PREVENTIVO_RIFIUTATO;
end;

Function GetStatoPreventivoFromId(Id: String): String;
begin
  Result := STATO_PREVENTIVO_SOSPESO;
  if Id = ID_PREVENTIVO_CONFERMATO then
    Result := STATO_PREVENTIVO_CONFERMATO;
  if Id = ID_PREVENTIVO_RIFIUTATO then
    Result := STATO_PREVENTIVO_RIFIUTATO;
end;

Procedure GetListaStatiPreventivi(AList: TStrings);
begin
  AList.Clear;
  AList.Add(STATO_PREVENTIVO_SOSPESO);
  AList.Add(STATO_PREVENTIVO_CONFERMATO);
  AList.Add(STATO_PREVENTIVO_RIFIUTATO);
end;

Function GetIdFromTrasporto(Stato: String): String;
begin
  Result := ID_TRASPORTO_MITTENTE;
  if Stato = TRASPORTO_DESTINATARIO then
    Result := ID_TRASPORTO_DESTINATARIO;
  if Stato = TRASPORTO_VETTORE then
    Result := ID_TRASPORTO_VETTORE;
end;

Function GetTrasportoFromId(Id: String): String;
begin
  Result := TRASPORTO_MITTENTE;
  if Id = ID_TRASPORTO_DESTINATARIO then
    Result := TRASPORTO_DESTINATARIO;
  if Id = ID_TRASPORTO_VETTORE then
    Result := TRASPORTO_VETTORE;
end;

Procedure GetListaTrasporti(AList: TStrings);
begin
  AList.Clear;
  AList.Add(TRASPORTO_MITTENTE);
  AList.Add(TRASPORTO_DESTINATARIO);
  AList.Add(TRASPORTO_VETTORE);
end;

// TAPPULLI
Function TappullaIVAFattureXGorla(Data: TDateTime; Anno, Numero: Integer): Boolean;
begin
  Result := False;
  if UpperCase(GlobalUserID.Cliente) = 'ASSOANTIINCENDIO' then
    if (Data <= EncodeDate(2013, 11, 10)) then
      Result := not((Anno = 2013) and ((Numero = 1688) or (Numero = 1645) or (Numero = 1687) or
        (Numero = 1630)));
end;

Function TappullaConteggiFattureXGorla(Data: TDateTime): Boolean;
begin
  Result := False;
  if UpperCase(GlobalUserID.Cliente) = 'ASSOANTIINCENDIO' then
    Result := Data < EncodeDate(2018, 01, 01);
end;

Function EsistonoFattureNonNumerate(AQuery: TpFIBQuery): Boolean;
begin
  With AQuery do
  begin
    CopyArrayInTStringList(SQL, ['SELECT COUNT(*)', '  FROM FATTURE', ' WHERE ID_FATTURA IS NULL',
      '  AND NOT (ID_CLIENTE IN (SELECT CHIAVE FROM CLIENTI WHERE FATTURA_ANTICIPATA <> ''T''))']);
    try
      ExecQuery;
      Result := Fields[0].AsInteger <> 0;
    finally
      Close;
    end;
  end;
end;

Const
  STRING_OPER_RIT_ESTINTORE_ORDINARIA: String = 'Ordinaria';
  STRING_OPER_RIT_ESTINTORE_REVISIONE: String = 'Revisione';
  STRING_OPER_RIT_ESTINTORE_REV_COLL: String = 'Revisione/Collaudo';

Procedure GetLsMotivazioniRitiroEstintori(Lista: TStrings);
begin
  Lista.AddObject(STRING_OPER_RIT_ESTINTORE_ORDINARIA, TObject(ID_OPER_RIT_ESTINTORE_ORDINARIA));
  Lista.AddObject(STRING_OPER_RIT_ESTINTORE_REV_COLL, TObject(ID_OPER_RIT_ESTINTORE_REV_COLL));
  Lista.AddObject(STRING_OPER_RIT_ESTINTORE_REVISIONE, TObject(ID_OPER_RIT_ESTINTORE_REVISIONE));
end;

Function GetIdFromMotivazioneRitiroEstintore(Motivazione: String): Integer;
begin
  Result := ID_OPER_RIT_ESTINTORE_ORDINARIA;
  if Motivazione = STRING_OPER_RIT_ESTINTORE_REV_COLL then
    Result := ID_OPER_RIT_ESTINTORE_REV_COLL;
  if Motivazione = STRING_OPER_RIT_ESTINTORE_REVISIONE then
    Result := ID_OPER_RIT_ESTINTORE_REVISIONE;
end;

Function GetMotivazioneRitiroEstintoreFromId(Id: Integer): String;
begin
  Result := STRING_OPER_RIT_ESTINTORE_ORDINARIA;
  if Id = ID_OPER_RIT_ESTINTORE_REV_COLL then
    Result := STRING_OPER_RIT_ESTINTORE_REV_COLL;
  if Id = ID_OPER_RIT_ESTINTORE_REVISIONE then
    Result := STRING_OPER_RIT_ESTINTORE_REVISIONE;
end;

Function GetProgressivoInvio(Fattura: Boolean; Numero, Anno: Integer): String;
begin
  Result := SostBoolean(Fattura, 'FE', 'NE') + FormatFloat('00', Anno mod 100) + '_' +
    FormatFloat('0000', Numero);
end;

Function GetTipoCassaFromIDDbase(IDDBase: String): TTipoCassa;
begin
  Result := casContanti;
  if IDDBase = ID_MOV_CASSA_ASSEGNI then
    Result := casAssegni;
  if IDDBase = ID_MOV_CONTI_CORRENTI then
    Result := casContoCorrente;
  if IDDBase = ID_MOV_MONDO_ESTERNO then
    Result := casMondoEsterno;
end;

Function GetIDDBaseFromTipoCassa(TipoCassa: TTipoCassa): String;
begin
  case TipoCassa of
    casAssegni:
      Result := ID_MOV_CASSA_ASSEGNI;
    casContoCorrente:
      Result := ID_MOV_CONTI_CORRENTI;
    casMondoEsterno:
      Result := ID_MOV_MONDO_ESTERNO;
  else
    Result := ID_MOV_CASSA_CONTANTI;
  end;
end;

Function GetPeriodoControllo(VisitaOrdinaria, MeseGenerazione: Integer): String;
begin
  Result := ID_PERIODO_GRP_SPR_MENSILE;
  if (MeseGenerazione = VisitaOrdinaria) or (MeseGenerazione = ((VisitaOrdinaria + 6) mod 12)) then
    Result := ID_PERIODO_GRP_SPR_SEMESTRALE
  else
  begin
    if (MeseGenerazione = ((VisitaOrdinaria + 3) mod 12)) or (MeseGenerazione = ((VisitaOrdinaria + 9) mod 12))
    then
      Result := ID_PERIODO_GRP_SPR_TRIMESTRALE;
  end;
end;

Function GetParametroGenerazioneAutomatica(Mese, Anno: Integer): Integer;
begin
  Result := (Mese mod 100) + (Anno * 100);
end;

Procedure AddWhereStatiniFattNonNumerate(SQL: TStrings);
begin
  SQL.Add('WHERE STATINI.FATTURA IS NOT NULL');
  SQL.Add('  AND STATINI.JSON_DA_MOBILE IS NOT NULL');
  SQL.Add('  AND (SELECT FATTURE.ID_FATTURA FROM FATTURE WHERE FATTURE.CHIAVE = STATINI.FATTURA) IS NULL');
end;

Procedure AddWhereFatturePassiveDaGestire(AQuery: TpFIBQuery);
begin
  AQuery.SQL.Add('WHERE DATA >= :Inizio2019 AND ALERT_APPENA_ARRIVATA = ''T''');
  AQuery.ParamByName('Inizio2019').AsDate := EncodeDate(2019, 01, 01);
end;

Const
  COL_MAIL_CHIAVE: Integer = 0;

  COL_MAIL_DATA: Integer = 0;
  COL_MAIL_ORA: Integer = 1;
  COL_MAIL_MITTENTE: Integer = 2;
  COL_MAIL_DESTINATARIO: Integer = 3;
  COL_MAIL_MAIL_DESTINATARIO: Integer = 4;
  COL_MAIL_OGGETTO: Integer = 5;
  COL_MAIL_TESTO: Integer = 6;
  COL_MAIL_ALLEGATO: Integer = 7;
  COL_MAIL_ERRORE_INVIO: Integer = 8;

  COLOR_MAIL_ERROR: TColor = clRed;
  COLOR_MAIL_OK: TColor = clGreen;

procedure TSystemInformation.FOnGRIDMAILDblClick(Sender: TObject);
Const
  FILE_TMP_ALLEGATO: String = '\AllegatoTmp.pdf';
var
  GRID_MAIL: TAdvancedStringGrid;
begin
  With FQuery do
  begin
    GRID_MAIL := TAdvancedStringGrid(Sender);
    if GRID_MAIL.Cells[COL_MAIL_ALLEGATO, GRID_MAIL.Row].Settings.Brush.Color = COLOR_MAIL_OK then
    begin
      DeleteFile(DIRECTORY_APPLICATION_DATA + FILE_TMP_ALLEGATO);
      CopyArrayInTStringList(SQL, ['SELECT ALLEGATO FROM ARCHIVIO_MAIL WHERE CHIAVE = :IdMail']);
      ParamByName('IdMail').AsInteger := GRID_MAIL.Cells[COL_MAIL_CHIAVE, GRID_MAIL.Row].Tag;
      try
        ExecQuery;
        if Eof then
          _ShowMessage(CAPTION_CHIUDI, CAPTION_MESSAGE, 'Allegato non trovato')
        else
        begin
          Fields[0].SaveToFileStream(DIRECTORY_APPLICATION_DATA + FILE_TMP_ALLEGATO);
        end;
      finally
        Close;
      end;
      if FileExists(DIRECTORY_APPLICATION_DATA + FILE_TMP_ALLEGATO) then
        ExecuteFile(DIRECTORY_APPLICATION_DATA + FILE_TMP_ALLEGATO, '', DIRECTORY_APPLICATION_DATA,
          SW_MAXIMIZE);
    end;
  end;
end;

Procedure TSystemInformation.MAILInitGrid(AGrid: TAdvancedStringGrid);
begin
  AGrid.Cells[COL_MAIL_DATA, 0].Text := 'Data';
  AGrid.ColDataStyles[COL_MAIL_DATA].Settings.DataType := ctdDate;
  AGrid.Cells[COL_MAIL_ORA, 0].Text := 'Ora';
  AGrid.ColDataStyles[COL_MAIL_ORA].Settings.DataType := ctdTime;
  AGrid.Cells[COL_MAIL_MITTENTE, 0].Text := 'Mittente';
  AGrid.ColDataStyles[COL_MAIL_MITTENTE].Settings.DataType := ctdString;
  AGrid.Cells[COL_MAIL_DESTINATARIO, 0].Text := 'Destinatario';
  AGrid.ColDataStyles[COL_MAIL_DESTINATARIO].Settings.DataType := ctdString;
  AGrid.Cells[COL_MAIL_MAIL_DESTINATARIO, 0].Text := 'Mail';
  AGrid.ColDataStyles[COL_MAIL_MAIL_DESTINATARIO].Settings.DataType := ctdString;
  AGrid.Cells[COL_MAIL_OGGETTO, 0].Text := 'Oggetto';
  AGrid.ColDataStyles[COL_MAIL_OGGETTO].Settings.DataType := ctdString;
  AGrid.Cells[COL_MAIL_TESTO, 0].Text := 'Testo';
  AGrid.ColDataStyles[COL_MAIL_TESTO].Settings.DataType := ctdMemo;
  AGrid.Cells[COL_MAIL_ALLEGATO, 0].Text := 'Allegato';
  AGrid.ColDataStyles[COL_MAIL_ALLEGATO].Settings.DataType := ctdString;
  AGrid.Cells[COL_MAIL_ERRORE_INVIO, 0].Text := 'Stato';
  AGrid.ColDataStyles[COL_MAIL_ERRORE_INVIO].Settings.DataType := ctdString;
  AGrid.OnDblClick := FOnGRIDMAILDblClick;
end;

Procedure TSystemInformation.MAILClearGrid(AGrid: TAdvancedStringGrid);
begin
  AGrid.RowCount := AGrid.FixedRows + 1;
  AGrid.Cells[COL_MAIL_CHIAVE, AGrid.LastRow].Tag := -1;
  AGrid.Cells[COL_MAIL_DATA, AGrid.LastRow].Date := 0.0;
  AGrid.Cells[COL_MAIL_ORA, AGrid.LastRow].Time := 0.0;
  AGrid.Cells[COL_MAIL_MITTENTE, AGrid.LastRow].Text := '';
  AGrid.Cells[COL_MAIL_DESTINATARIO, AGrid.LastRow].Text := '';
  AGrid.Cells[COL_MAIL_MAIL_DESTINATARIO, AGrid.LastRow].Text := '';
  AGrid.Cells[COL_MAIL_OGGETTO, AGrid.LastRow].Text := '';
  AGrid.Cells[COL_MAIL_TESTO, AGrid.LastRow].Lines.Clear;
  AGrid.Cells[COL_MAIL_ALLEGATO, AGrid.LastRow].Text := '<NO ALLEGATO>';
  AGrid.ColDataStyles[COL_MAIL_ALLEGATO].Settings.Brush.Color := COLOR_MAIL_ERROR;
  AGrid.Cells[COL_MAIL_ERRORE_INVIO, AGrid.LastRow].Text := '<NO ERROR>';
  AGrid.Cells[COL_MAIL_ERRORE_INVIO, AGrid.LastRow].Settings.Brush.Color := COLOR_MAIL_OK;
end;

Procedure TSystemInformation.MAILLoadGrid(AGrid: TAdvancedStringGrid; AQuery: TpFIBQuery);
var
  i: Integer;
begin
  With AQuery do
  begin
    MAILClearGrid(AGrid);
    try
      ExecQuery;
      while not Eof do
      begin
        if AGrid.Cells[COL_MAIL_CHIAVE, AGrid.RowCount - 1].Tag <> -1 then
          AGrid.RowCount := AGrid.RowCount + 1;
        AGrid.RowHeights[AGrid.RowCount - 1] := 10;
        AGrid.Cells[COL_MAIL_CHIAVE, AGrid.RowCount - 1].Tag := FieldByName('CHIAVE').AsInteger;
        AGrid.Cells[COL_MAIL_DATA, AGrid.RowCount - 1].Date := FieldByName('DATA').AsDate;
        AGrid.Cells[COL_MAIL_ORA, AGrid.RowCount - 1].Time := FieldByName('ORA').AsTime;
        AGrid.Cells[COL_MAIL_MITTENTE, AGrid.RowCount - 1].Text := FieldByName('MITTENTE').AsString;
        AGrid.Cells[COL_MAIL_DESTINATARIO, AGrid.RowCount - 1].Text := FieldByName('DESTINATARIO').AsString;
        AGrid.Cells[COL_MAIL_MAIL_DESTINATARIO, AGrid.RowCount - 1].Text :=
          FieldByName('MAIL_DESTINATARIO').AsString;
        AGrid.Cells[COL_MAIL_OGGETTO, AGrid.RowCount - 1].Text := FieldByName('OGGETTO').AsString;
        AGrid.Cells[COL_MAIL_TESTO, AGrid.RowCount - 1].Lines.Text := FieldByName('TESTO').AsString;
        if FieldByName('ALLEGATO').IsNull then
        begin
          AGrid.Cells[COL_MAIL_ALLEGATO, AGrid.RowCount - 1].Text := '<Nessun allegato>';
          AGrid.Cells[COL_MAIL_ALLEGATO, AGrid.RowCount - 1].Settings.Brush.Color := $00DFDFDF;
        end
        else
        begin
          AGrid.Cells[COL_MAIL_ALLEGATO, AGrid.RowCount - 1].Text := '<Allegato>';
          AGrid.Cells[COL_MAIL_ALLEGATO, AGrid.RowCount - 1].Settings.Brush.Color := COLOR_MAIL_OK;
        end;
        if FieldByName('ERRORE_INVIO').IsNull then
        begin
          AGrid.Cells[COL_MAIL_ERRORE_INVIO, AGrid.RowCount - 1].Text := '<NO ERROR>';
          AGrid.Cells[COL_MAIL_ERRORE_INVIO, AGrid.RowCount - 1].Settings.Brush.Color := COLOR_MAIL_OK;
        end
        else
        begin
          AGrid.Cells[COL_MAIL_ERRORE_INVIO, AGrid.RowCount - 1].Text := FieldByName('ERRORE_INVIO').AsString;
          AGrid.Cells[COL_MAIL_ERRORE_INVIO, AGrid.RowCount - 1].Settings.Brush.Color := COLOR_MAIL_ERROR;
        end;
        for i := AGrid.FixedCols to AGrid.ColCount - 1 do
          if not(i in [COL_MAIL_ERRORE_INVIO, COL_MAIL_ALLEGATO]) then
            AGrid.Cells[i, AGrid.RowCount - 1].Settings.Brush.Color :=
              SostBooleanWithInt((AGrid.RowCount - 1) mod 2 = 1, COLOR_RIGHE_DISPARI, COLOR_RIGHE_PARI);
        Next;
      end;
    finally
      Close;
    end;
  end;
end;

Constructor TAggiornamentoTipoIntervento.Create(_ChiaveAttrezzatura: Integer;
  _VecchioTipoIntervento, _NuovoTipoIntervento: String);
begin
  Inherited Create;
  ChiaveAttrezzatura := _ChiaveAttrezzatura;
  VecchioTipoIntervento := _VecchioTipoIntervento;
  NuovoTipoIntervento := _NuovoTipoIntervento;
end;

Procedure LogInDeveloperMode(FileName, LogEvent: String; EmptyFile: Boolean);
begin
  if GlobalLibra.DeveloperMode then
  begin
    ForceDirectories('d:\ppp\PhoenixLogs');
    AppendMessageToFile('d:\ppp\PhoenixLogs\' + FileName, LogEvent, EmptyFile)
  end;
end;

Function GetAnnoScadenzaEstintore(EstintoreCO2, SenzaScadenza: Boolean;
  AnnoCostruzione, AnnoUltimoCollaudo: Integer): Integer;
begin
  if SenzaScadenza then
    Result := 2300
  else
    Result := AnnoCostruzione + SostBooleanWithInt(EstintoreCO2 and (AnnoCostruzione >= 2008) and
      (AnnoUltimoCollaudo <= AnnoCostruzione), 10, 18)
end;

Initialization

{ PDFFilterRapportoFont := 1.3; }
DIRECTORY_APPLICATION_DATA := GetLocalAppDataPath(SUB_FOLDER_APPLICATION_DATA);
{ GlobalTwain := TZDelphiTwain.Create; }
{ if GlobalTwain.LoadLibrary then
  GlobalTwain.SourceManagerLoaded := True; }
ElencoProvince := TElencoCAP.Create;
ForceDirectories(DIRECTORY_APPLICATION_DATA);
SystemInformation := TSystemInformation.Create;
FIELDSContratti := TStringList.Create;
CopyArrayInTStringList(FIELDSContratti, FIELDS_CONTRATTI);
FIELDSFatture := TStringList.Create;
CopyArrayInTStringList(FIELDSFatture, FIELDS_FATTURE);
FIELDSPreventivi := TStringList.Create;
CopyArrayInTStringList(FIELDSPreventivi, FIELDS_PREVENTIVI);
FIELDSCatEstintori := TStringList.Create;
CopyArrayInTStringList(FIELDSCatEstintori, FIELDS_CAT_ESTINTORI);
FIELDSManutenzioniOrdinarie := TStringList.Create;
CopyArrayInTStringList(FIELDSManutenzioniOrdinarie, FIELDS_MANUTENZIONI_ORARIE);
FIELDSFilialiClienti := TStringList.Create;
CopyArrayInTStringList(FIELDSFilialiClienti, FIELDS_FILIALI_CLIENTI);
FIELDSAttrezzature := TStringList.Create;
CopyArrayInTStringList(FIELDSAttrezzature, FIELDS_ATTREZZATURE);
FIELDSSingleDescrizione := TStringList.Create;
CopyArrayInTStringList(FIELDSSingleDescrizione, FIELDS_SINGLE_DESCRIZIONE);
FIELDSIdranti := TStringList.Create;
CopyArrayInTStringList(FIELDSIdranti, FIELDS_IDRANTI);
FIELDSStatini := TStringList.Create;
CopyArrayInTStringList(FIELDSStatini, FIELDS_STATINI);
FIELDSRateFatture := TStringList.Create;
CopyArrayInTStringList(FIELDSRateFatture, FIELDS_RATE_FATTURE);
FIELDSAmministratori := TStringList.Create;
CopyArrayInTStringList(FIELDSAmministratori, FIELDS_AMMINISTRATORI);
FIELDSCondizioniPagamento := TStringList.Create;
CopyArrayInTStringList(FIELDSCondizioniPagamento, FIELDS_CONDIZIONI_PAGAMENTO);
FIELDSSettori := TStringList.Create;
CopyArrayInTStringList(FIELDSSettori, FIELDS_SETTORI);
FIELDSNoteDiCredito := TStringList.Create;
CopyArrayInTStringList(FIELDSNoteDiCredito, FIELDS_NOTE_DI_CREDITO);
FIELDSFornitori := TStringList.Create;
CopyArrayInTStringList(FIELDSFornitori, FIELDS_FORNITORI);
FIELDSAcquisti := TStringList.Create;
CopyArrayInTStringList(FIELDSAcquisti, FIELDS_ACQUISTI);
FIELDSFatturePassive := TStringList.Create;
CopyArrayInTStringList(FIELDSFatturePassive, FIELDS_FATTURE_PASSIVE);
FIELDSRateFatturePassive := TStringList.Create;
CopyArrayInTStringList(FIELDSRateFatturePassive, FIELDS_RATE_FATTURE_PASSIVE);
FIELDSTecnici := TStringList.Create;
CopyArrayInTStringList(FIELDSTecnici, FIELDS_TECNICI);
FIELDSContiCorrenti := TStringList.Create;
CopyArrayInTStringList(FIELDSContiCorrenti, FIELDS_CONTI);
FIELDSMovimenti := TStringList.Create;
CopyArrayInTStringList(FIELDSMovimenti, FIELDS_MOVIMENTI);
FIELDSTipoPorte := TStringList.Create;
CopyArrayInTStringList(FIELDSTipoPorte, FIELDS_TIPO_PORTE);
FIELDSGruppiPressurizzazioni := TStringList.Create;
CopyArrayInTStringList(FIELDSGruppiPressurizzazioni, FIELDS_GRUPPI_PRESSURIZZAZIONE);
FIELDSCaricoMagazzino := TStringList.Create;
CopyArrayInTStringList(FIELDSCaricoMagazzino, FIELDS_CARICO_MAGAZZINO);
FIELDSScaricoMagazzino := TStringList.Create;
CopyArrayInTStringList(FIELDSScaricoMagazzino, FIELDS_SCARICO_MAGAZZINO);
FIELDSStatiniDaTablet := TStringList.Create;
CopyArrayInTStringList(FIELDSStatiniDaTablet, FIELDS_STATINI_DA_TABLET);
FIELDSOrdiniDaTablet := TStringList.Create;
CopyArrayInTStringList(FIELDSOrdiniDaTablet, FIELDS_ORDINI_DA_TABLET);
FIELDSVProvaDinamicaDaTablet := TStringList.Create;
CopyArrayInTStringList(FIELDSVProvaDinamicaDaTablet, FIELDS_V_PROVADINAMICA_DA_TABLET);
FIELDSVManichetteDaTablet := TStringList.Create;
CopyArrayInTStringList(FIELDSVManichetteDaTablet, FIELDS_V_MANICHETTE_DA_TABLET);
FIELDSVociFatturePassive := TStringList.Create;
CopyArrayInTStringList(FIELDSVociFatturePassive, FIELDS_VOCI_FATTURE_PASSIVE);
FIELDSRiepiloghiFatturePassive := TStringList.Create;
CopyArrayInTStringList(FIELDSRiepiloghiFatturePassive, FIELDS_RIEPILOGHI_FATTURE_PASSIVE);
FIELDSMotivazioniRitiroEstintori := TStringList.Create;
CopyArrayInTStringList(FIELDSMotivazioniRitiroEstintori, FIELDS_MOTIVAZIONI_RITIRO_ESTINTORI);
FIELDSMotivControlloNegato := TStringList.Create;
CopyArrayInTStringList(FIELDSMotivControlloNegato, FIELDS_MOTIV_CONTROLLO_NEGATO);
FIELDSImpiantiElettrici := TStringList.Create;
CopyArrayInTStringList(FIELDSImpiantiElettrici, FIELDS_IMPIANTI_ELETTRICI);
FIELDSDDTEntranti := TStringList.Create;
CopyArrayInTStringList(FIELDSDDTEntranti, FIELDS_DDT_ENTRANTI);
FIELDSDDTUscenti := TStringList.Create;
CopyArrayInTStringList(FIELDSDDTUscenti, FIELDS_DDT_USCENTI);
FIELDSCassePrevidenzialiFattPassive := TStringList.Create;
CopyArrayInTStringList(FIELDSCassePrevidenzialiFattPassive, FIELDS_CASSE_PREVIDENZIALI_FATT_PASS);
FIELDSRitenuteFatturePassive := TStringList.Create;
CopyArrayInTStringList(FIELDSRitenuteFatturePassive, FIELDS_RITENUTE_FATTURE_PASSIVE);
FIELDSProdottiStatini := TStringList.Create;
CopyArrayInTStringList(FIELDSProdottiStatini, FIELDS_PRODOTTI_STATINI);

Finalization

FIELDSAmministratori.Free;
FIELDSAcquisti.Free;
FIELDSScaricoMagazzino.Free;
FIELDSAttrezzature.Free;
FIELDSIdranti.Free;
FIELDSFatture.Free;
FIELDSContratti.Free;
FIELDSCatEstintori.Free;
FIELDSRateFatture.Free;
FIELDSManutenzioniOrdinarie.Free;
FIELDSCaricoMagazzino.Free;
FIELDSFilialiClienti.Free;
FIELDSVociFatturePassive.Free;
FIELDSStatini.Free;
FIELDSPreventivi.Free;
FIELDSNoteDiCredito.Free;
FIELDSFornitori.Free;
FIELDSFatturePassive.Free;
FIELDSRateFatturePassive.Free;
FIELDSMotivazioniRitiroEstintori.Free;
FIELDSMotivControlloNegato.Free;
FIELDSTecnici.Free;
FIELDSContiCorrenti.Free;
FIELDSMovimenti.Free;
FIELDSTipoPorte.Free;
FIELDSGruppiPressurizzazioni.Free;
FIELDSStatiniDaTablet.Free;
FIELDSOrdiniDaTablet.Free;
FIELDSVProvaDinamicaDaTablet.Free;
FIELDSVManichetteDaTablet.Free;
FIELDSRiepiloghiFatturePassive.Free;
FIELDSImpiantiElettrici.Free;
FIELDSDDTEntranti.Free;
FIELDSCassePrevidenzialiFattPassive.Free;
FIELDSDDTUscenti.Free;
FIELDSRitenuteFatturePassive.Free;
SystemInformation.Free;
if Assigned(ElencoProvince) then
  ElencoProvince.Free;
{ GlobalTwain.Free; }

end.
