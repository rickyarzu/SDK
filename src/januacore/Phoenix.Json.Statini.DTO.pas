unit Phoenix.Json.Statini.DTO;

interface

uses
  Janua.Core.Json, Janua.Core.Classes, Janua.Core.Commons,
  System.Generics.Collections, REST.Json.Types, Pkg.Json.DTO, Janua.Core.Json.DTO;

{$M+}

type
  TBocchelli = class;
  TElementiElettrici = class;
  TOperazioni = class;
  TStatoLavorazioni = class;
  TVerbaleCollaudoManichette = class;
  TUltimaProvaDinamica = class;

  TAccessori = class
  private
    FLastRowProdotto: Integer;
  published
    property LastRowProdotto: Integer read FLastRowProdotto write FLastRowProdotto;
  end;

  TStatoLavorazioni = class
  end;

  TOperazioni = class
  private
    FIdAttrezzatura: Integer;
    FIdOperazione: Integer;
    FStatoOperazione: Integer;
  published
    property IdAttrezzatura: Integer read FIdAttrezzatura write FIdAttrezzatura;
    property IdOperazione: Integer read FIdOperazione write FIdOperazione;
    property StatoOperazione: Integer read FStatoOperazione write FStatoOperazione;
  end;

  TZTmpInfo = class(TJsonDTO)
  private
    FAggiornaIndice: Boolean;

    // Operazioni
    [JSONName('Operazioni'), JSONMarshalled(False)]
    FOperazioniArray: TArray<TOperazioni>;
    [GenericListReflect]
    FOperazioni: TObjectList<TOperazioni>;

    // Stato Lavorazioni
    [JSONName('StatoLavorazioni'), JSONMarshalled(False)]
    FStatoLavorazioniArray: TArray<TStatoLavorazioni>;
    [GenericListReflect]
    FStatoLavorazioni: TObjectList<TStatoLavorazioni>;

    function GetOperazioni: TObjectList<TOperazioni>;
    function GetStatoLavorazioni: TObjectList<TStatoLavorazioni>;
  protected
    function GetAsJson: string; override;
  published
    property AggiornaIndice: Boolean read FAggiornaIndice write FAggiornaIndice;
    property Operazioni: TObjectList<TOperazioni> read GetOperazioni;
    property StatoLavorazioni: TObjectList<TStatoLavorazioni> read GetStatoLavorazioni;
  public
    destructor Destroy; override;
  end;

  TFattureArretrate = class
  private
    FAssegno: Boolean;
    FCHIAVE: Integer;
    FContante: Boolean;
    [SuppressZero]
    FData: TDateTime; // TDateTime
    [SuppressZero]
    FDataPagamento: TDateTime; // TDateTime
    FDescrizione: string;
    FDocPDF: string;
    FFatturaArretrata: Boolean;
    FFatturaNumerata: Boolean;
    FModPagamento: string;
    FNote: string;
    FPOS: Boolean;
    FPagata: Integer;
    FPagataDaUfficio: Boolean;
    FRicBancaria: Boolean;
    FTotale: Integer;
  published
    property Assegno: Boolean read FAssegno write FAssegno;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Contante: Boolean read FContante write FContante;
    property Data: TDateTime read FData write FData; // TDateTime
    property DataPagamento: TDateTime read FDataPagamento write FDataPagamento; // TDateTime
    property Descrizione: string read FDescrizione write FDescrizione;
    property DocPDF: string read FDocPDF write FDocPDF;
    property FatturaArretrata: Boolean read FFatturaArretrata write FFatturaArretrata;
    property FatturaNumerata: Boolean read FFatturaNumerata write FFatturaNumerata;
    property ModPagamento: string read FModPagamento write FModPagamento;
    property Note: string read FNote write FNote;
    property POS: Boolean read FPOS write FPOS;
    property Pagata: Integer read FPagata write FPagata;
    property PagataDaUfficio: Boolean read FPagataDaUfficio write FPagataDaUfficio;
    property RicBancaria: Boolean read FRicBancaria write FRicBancaria;
    property Totale: Integer read FTotale write FTotale;
  end;

  TUltimaProvaDinamica = class
  private
    [SuppressZero, JSONName('DATA_PROVA')]
    FDATAPROVA: TDateTime;
    [JSONName('DIAMETRO_BOCCHELLO')]
    FDIAMETROBOCCHELLO: Integer;
    [JSONName('ESITO_RILIEVO1')]
    FESITORILIEVO1: string;
    [JSONName('ESITO_RILIEVO2')]
    FESITORILIEVO2: string;
    [JSONName('ESITO_RILIEVO3')]
    FESITORILIEVO3: string;
    [JSONName('NOTE_TECNICO')]
    FNOTETECNICO: string;
    [JSONName('NR_IDRANTI_RILIEVO1')]
    FNRIDRANTIRILIEVO1: Integer;
    [JSONName('NR_IDRANTI_RILIEVO2')]
    FNRIDRANTIRILIEVO2: string;
    [JSONName('NR_IDRANTI_RILIEVO3')]
    FNRIDRANTIRILIEVO3: string;
    [JSONName('PORTATA_RILIEVO1')]
    FPORTATARILIEVO1: Integer;
    [JSONName('PORTATA_RILIEVO2')]
    FPORTATARILIEVO2: string;
    [JSONName('PORTATA_RILIEVO3')]
    FPORTATARILIEVO3: string;
    [JSONName('PRESSIONE_RILIEVO1')]
    FPRESSIONERILIEVO1: Integer;
    [JSONName('PRESSIONE_RILIEVO2')]
    FPRESSIONERILIEVO2: string;
    [JSONName('PRESSIONE_RILIEVO3')]
    FPRESSIONERILIEVO3: string;
    [JSONName('PRESSIONE_STATICA')]
    FPRESSIONESTATICA: Integer;
    [JSONName('SPURGO_IMPIANTO')]
    FSPURGOIMPIANTO: Boolean;
  published
    property DATAPROVA: TDateTime read FDATAPROVA write FDATAPROVA;
    property DIAMETROBOCCHELLO: Integer read FDIAMETROBOCCHELLO write FDIAMETROBOCCHELLO;
    property ESITORILIEVO1: string read FESITORILIEVO1 write FESITORILIEVO1;
    property ESITORILIEVO2: string read FESITORILIEVO2 write FESITORILIEVO2;
    property ESITORILIEVO3: string read FESITORILIEVO3 write FESITORILIEVO3;
    property NOTETECNICO: string read FNOTETECNICO write FNOTETECNICO;
    property NRIDRANTIRILIEVO1: Integer read FNRIDRANTIRILIEVO1 write FNRIDRANTIRILIEVO1;
    property NRIDRANTIRILIEVO2: string read FNRIDRANTIRILIEVO2 write FNRIDRANTIRILIEVO2;
    property NRIDRANTIRILIEVO3: string read FNRIDRANTIRILIEVO3 write FNRIDRANTIRILIEVO3;
    property PORTATARILIEVO1: Integer read FPORTATARILIEVO1 write FPORTATARILIEVO1;
    property PORTATARILIEVO2: string read FPORTATARILIEVO2 write FPORTATARILIEVO2;
    property PORTATARILIEVO3: string read FPORTATARILIEVO3 write FPORTATARILIEVO3;
    property PRESSIONERILIEVO1: Integer read FPRESSIONERILIEVO1 write FPRESSIONERILIEVO1;
    property PRESSIONERILIEVO2: string read FPRESSIONERILIEVO2 write FPRESSIONERILIEVO2;
    property PRESSIONERILIEVO3: string read FPRESSIONERILIEVO3 write FPRESSIONERILIEVO3;
    property PRESSIONESTATICA: Integer read FPRESSIONESTATICA write FPRESSIONESTATICA;
    property SPURGOIMPIANTO: Boolean read FSPURGOIMPIANTO write FSPURGOIMPIANTO;
  end;

  TBocchelli = class(TJanuaBindableClass)
  private
    [JSONName('ANNO_MANICHETTA')]
    FANNOMANICHETTA: string;
    [JSONName('ANNO_PRESSATURA')]
    FANNOPRESSATURA: string;
    [JSONName('ANNO_STARTUP')]
    FANNOSTARTUP: Integer;
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    [JSONName('AnomaliaOnDownload')]
    FAnomaliaOnDownload: string;
    [JSONName('AnomaliaRisolta')]
    FAnomaliaRisolta: Boolean;
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('Consegnato')]
    FConsegnato: Boolean;
    [JSONName('Controllato')]
    FControllato: Boolean;
    [JSONName('DataControllo')]
    [SuppressZero]
    FDataControllo: TDateTime;
    [JSONName('DataPressatura')]
    [SuppressZero]
    FDataPressatura: TDateTime;
    [JSONName('DataRitiro')]
    [SuppressZero]
    FDataRitiro: TDateTime;
    [JSONName('ID_BOCCHELLO')]
    FIDBOCCHELLO: Integer;
    [JSONName('ID_NFC')]
    FIDNFC: string;
    [JSONName('LUNGHEZZA_MANICHETTA')]
    FLUNGHEZZAMANICHETTA: Integer;
    [JSONName('MESE_PRESSATURA')]
    FMESEPRESSATURA: string;
    [JSONName('MESE_STARTUP')]
    FMESESTARTUP: Integer;
    [JSONName('NOTE_TECNICO')]
    FNOTETECNICO: string;
    [JSONName('OrarioControllo')]
    FOrarioControllo: string;
    [JSONName('OrarioRitiro')]
    FOrarioRitiro: string;
    [JSONName('PressaturaEffettuata')]
    FPressaturaEffettuata: Boolean;
    [JSONName('Ritirato')]
    FRitirato: Boolean;
    [JSONName('STATO')]
    FSTATO: string;
    [JSONName('TIPO_BOCCHELLO')]
    FTIPOBOCCHELLO: Integer;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    [JSONName('TIPO_LANCIA')]
    FTIPOLANCIA: Integer;
    [JSONName('TecnicoControllo')]
    FTecnicoControllo: Integer;
    [JSONName('TecnicoPressatura')]
    FTecnicoPressatura: Integer;
    [JSONName('TecnicoRitiro')]
    FTecnicoRitiro: Integer;
    [JSONName('UBICAZION')]
    FUBICAZIONE: string;
  published
    property ANNOMANICHETTA: string read FANNOMANICHETTA write FANNOMANICHETTA;
    property ANNOPRESSATURA: string read FANNOPRESSATURA write FANNOPRESSATURA;
    property ANNOSTARTUP: Integer read FANNOSTARTUP write FANNOSTARTUP;
    property ANOMALIA: string read FANOMALIA write FANOMALIA;
    property ANOMALIAAPPROVATA: Boolean read FANOMALIAAPPROVATA write FANOMALIAAPPROVATA;
    property AnomaliaOnDownload: string read FAnomaliaOnDownload write FAnomaliaOnDownload;
    property AnomaliaRisolta: Boolean read FAnomaliaRisolta write FAnomaliaRisolta;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Consegnato: Boolean read FConsegnato write FConsegnato;
    property Controllato: Boolean read FControllato write FControllato;
    property DataControllo: TDateTime read FDataControllo write FDataControllo; // TDateTime
    property DataPressatura: TDateTime read FDataPressatura write FDataPressatura; // TDateTime
    property DataRitiro: TDateTime read FDataRitiro write FDataRitiro; // TDateTime
    property IDBOCCHELLO: Integer read FIDBOCCHELLO write FIDBOCCHELLO;
    property IDNFC: string read FIDNFC write FIDNFC;
    property LUNGHEZZAMANICHETTA: Integer read FLUNGHEZZAMANICHETTA write FLUNGHEZZAMANICHETTA;
    property MESEPRESSATURA: string read FMESEPRESSATURA write FMESEPRESSATURA;
    property MESESTARTUP: Integer read FMESESTARTUP write FMESESTARTUP;
    property NOTETECNICO: string read FNOTETECNICO write FNOTETECNICO;
    property OrarioControllo: string read FOrarioControllo write FOrarioControllo;
    property OrarioRitiro: string read FOrarioRitiro write FOrarioRitiro;
    property PressaturaEffettuata: Boolean read FPressaturaEffettuata write FPressaturaEffettuata;
    property Ritirato: Boolean read FRitirato write FRitirato;
    property STATO: string read FSTATO write FSTATO;
    property TIPOBOCCHELLO: Integer read FTIPOBOCCHELLO write FTIPOBOCCHELLO;
    property TIPOINTERVENTO: string read FTIPOINTERVENTO write FTIPOINTERVENTO;
    property TIPOLANCIA: Integer read FTIPOLANCIA write FTIPOLANCIA;
    property TecnicoControllo: Integer read FTecnicoControllo write FTecnicoControllo;
    property TecnicoPressatura: Integer read FTecnicoPressatura write FTecnicoPressatura;
    property TecnicoRitiro: Integer read FTecnicoRitiro write FTecnicoRitiro;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
  end;

  TIdranti = class(TJsonDTO)
  private
    // Bocchelli
    [JSONName('Bocchelli'), JSONMarshalled(False)]
    FBocchelliArray: TArray<TBocchelli>;
    [GenericListReflect]
    FBocchelli: TObjectList<TBocchelli>;
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    FDescrizione: string;
    [JSONName('PROVA_DINAMICA')]
    FPROVADINAMICA: Integer;
    [JSONName('QUANDO_PROVA_DINAMICA')]
    FQUANDOPROVADINAMICA: string;
    [JSONName('STATO')]
    FSTATO: string;
    [JSONName('SuggerimentoLunghManichetta')]
    FSuggerimentoLunghManichetta: string;
    [JSONName('SuggerimentoTipiBocchelli')]
    FSuggerimentoTipiBocchelli: string;
    [JSONName('TIPO')]
    FTIPO: string;
    [JSONName('TIPO_ATTACCO_MOTOPOMPA')]
    FTIPOATTACCOMOTOPOMPA: Integer;
    FUBICAZIONE: string;
    [JSONName('UBICAZIONE_ATTACCO_MOTOPOMPA')]
    FUBICAZIONEATTACCOMOTOPOMPA: string;
    FUltimaProvaDinamica: TUltimaProvaDinamica;
    [JSONName('VALVOLA_INTERCETTAZIONE')]
    FVALVOLAINTERCETTAZIONE: string;

    function GetBocchelli: TObjectList<TBocchelli>;
  protected
    function GetAsJson: string; override;
  published
    property Bocchelli: TObjectList<TBocchelli> read GetBocchelli;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Descrizione: string read FDescrizione write FDescrizione;
    property PROVADINAMICA: Integer read FPROVADINAMICA write FPROVADINAMICA;
    property QUANDOPROVADINAMICA: string read FQUANDOPROVADINAMICA write FQUANDOPROVADINAMICA;
    property STATO: string read FSTATO write FSTATO;
    property SuggerimentoLunghManichetta: string read FSuggerimentoLunghManichetta
      write FSuggerimentoLunghManichetta;
    property SuggerimentoTipiBocchelli: string read FSuggerimentoTipiBocchelli
      write FSuggerimentoTipiBocchelli;
    property TIPO: string read FTIPO write FTIPO;
    property TIPOATTACCOMOTOPOMPA: Integer read FTIPOATTACCOMOTOPOMPA write FTIPOATTACCOMOTOPOMPA;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
    property UBICAZIONEATTACCOMOTOPOMPA: string read FUBICAZIONEATTACCOMOTOPOMPA
      write FUBICAZIONEATTACCOMOTOPOMPA;
    property UltimaProvaDinamica: TUltimaProvaDinamica read FUltimaProvaDinamica;
    property VALVOLAINTERCETTAZIONE: string read FVALVOLAINTERCETTAZIONE write FVALVOLAINTERCETTAZIONE;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

  TElementiElettrici = class
  private
    [JSONName('ANOMALIA')]
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    [JSONName('AnomaliaOnDownload')]
    FAnomaliaOnDownload: string;
    [JSONName('AnomaliaRisolta')]
    FAnomaliaRisolta: Boolean;
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('Controllato')]
    FControllato: Boolean;
    [JSONName('DataControllo')]
    [SuppressZero]
    FDataControllo: TDateTime;
    [JSONName('MARCA')]
    FMARCA: Integer;
    [JSONName('MODELLO')]
    FMODELLO: string;
    [JSONName('OrarioControllo')]
    FOrarioControllo: string;
    [JSONName('PROGRESSIVO')]
    FPROGRESSIVO: Integer;
    [JSONName('STATO')]
    FSTATO: string;
    [JSONName('TIPO')]
    FTIPO: Integer;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    [JSONName('TecnicoControllo')]
    FTecnicoControllo: Integer;
    [JSONName('UBICAZIONE')]
    FUBICAZIONE: string;
  published
    property ANOMALIA: string read FANOMALIA write FANOMALIA;
    property ANOMALIAAPPROVATA: Boolean read FANOMALIAAPPROVATA write FANOMALIAAPPROVATA;
    property AnomaliaOnDownload: string read FAnomaliaOnDownload write FAnomaliaOnDownload;
    property AnomaliaRisolta: Boolean read FAnomaliaRisolta write FAnomaliaRisolta;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Controllato: Boolean read FControllato write FControllato;
    property DataControllo: TDateTime read FDataControllo write FDataControllo; // TDateTime
    property MARCA: Integer read FMARCA write FMARCA;
    property MODELLO: string read FMODELLO write FMODELLO;
    property OrarioControllo: string read FOrarioControllo write FOrarioControllo;
    property PROGRESSIVO: Integer read FPROGRESSIVO write FPROGRESSIVO;
    property STATO: string read FSTATO write FSTATO;
    property TIPO: Integer read FTIPO write FTIPO;
    property TIPOINTERVENTO: string read FTIPOINTERVENTO write FTIPOINTERVENTO;
    property TecnicoControllo: Integer read FTecnicoControllo write FTecnicoControllo;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
  end;

  TImpiantiElettrici = class(TJsonDTO)
  private
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('Descrizione')]
    FDescrizione: string;

    // Elementi Elettrici
    [JSONName('ElementiElettrici'), JSONMarshalled(False)]
    FElementiElettriciArray: TArray<TElementiElettrici>;
    [GenericListReflect]
    FElementiElettrici: TObjectList<TElementiElettrici>;

    [JSONName('PREZZO')]
    FPREZZO: Integer;
    [JSONName('STATO')]
    FSTATO: string;
    [JSONName('TIPO_VISITA')]
    FTIPOVISITA: string;
    [JSONName('UBICAZIONE')]
    FUBICAZIONE: string;
    function GetElementiElettrici: TObjectList<TElementiElettrici>;
  protected
    function GetAsJson: string; override;
  published
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Descrizione: string read FDescrizione write FDescrizione;
    property ElementiElettrici: TObjectList<TElementiElettrici> read GetElementiElettrici;
    property PREZZO: Integer read FPREZZO write FPREZZO;
    property STATO: string read FSTATO write FSTATO;
    property TIPOVISITA: string read FTIPOVISITA write FTIPOVISITA;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
  public
    destructor Destroy; override;
  end;

  TGruppiPressurizzazione = class
  private
    [JSONName('ANOMALIA')]
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    [JSONName('AnomaliaOnDownload')]
    FAnomaliaOnDownload: string;
    [JSONName('AnomaliaRisolta')]
    FAnomaliaRisolta: Boolean;
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('Controllato')]
    FControllato: Boolean;
    [JSONName('Descrizione')]
    FDescrizione: string;
    [JSONName('DataControllo')]
    [SuppressZero]
    FDataControllo: TDateTime;
    [JSONName('ID_NFC')]
    FIDNFC: string;
    [JSONName('MARCA_MISURATORE_PORTATA')]
    FMARCAMISURATOREPORTATA: string;
    [JSONName('MARCA_MOTOPOMPA')]
    FMARCAMOTOPOMPA: string;
    [JSONName('MARCA_POMPA_JOCKEY')]
    FMARCAPOMPAJOCKEY: string;
    [JSONName('MARCA_POMPA_PORTATA')]
    FMARCAPOMPAPORTATA: string;
    [JSONName('MODELLO_MISURATORE_PORTATA')]
    FMODELLOMISURATOREPORTATA: string;
    [JSONName('MODELLO_MOTOPOMPA')]
    FMODELLOMOTOPOMPA: string;
    [JSONName('MODELLO_POMPA_JOCKEY')]
    FMODELLOPOMPAJOCKEY: string;
    [JSONName('MODELLO_POMPA_PORTATA')]
    FMODELLOPOMPAPORTATA: string;
    [JSONName('Note')]
    FNote: string;
    [JSONName('NonControllato')]
    FNonControllato: Boolean;
    [JSONName('OrarioControllo')]
    FOrarioControllo: string;
    [JSONName('STATO')]
    FSTATO: string;
    [JSONName('TIPO_BATTERIE')]
    FTIPOBATTERIE: string;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    [JSONName('TIPO_MOTOPOMPA')]
    FTIPOMOTOPOMPA: string;
    [JSONName('TIPO_POMPA_JOCKEY')]
    FTIPOPOMPAJOCKEY: string;
    [JSONName('TIPO_POMPA_PORTATA')]
    FTIPOPOMPAPORTATA: string;
    [JSONName('TIPO_STAZIONE')]
    FTIPOSTAZIONE: string;
    [JSONName('TIPO_VISITA')]
    FTIPOVISITA: string;
    [JSONName('TecnicoControllo')]
    FTecnicoControllo: Integer;
    [JSONName('VASI_ESPANSIONE')]
    FVASIESPANSIONE: string;
  published
    property ANOMALIA: string read FANOMALIA write FANOMALIA;
    property ANOMALIAAPPROVATA: Boolean read FANOMALIAAPPROVATA write FANOMALIAAPPROVATA;
    property AnomaliaOnDownload: string read FAnomaliaOnDownload write FAnomaliaOnDownload;
    property AnomaliaRisolta: Boolean read FAnomaliaRisolta write FAnomaliaRisolta;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Controllato: Boolean read FControllato write FControllato;
    property Descrizione: string read FDescrizione write FDescrizione;
    property DataControllo: TDateTime read FDataControllo write FDataControllo; // TDateTime
    property IDNFC: string read FIDNFC write FIDNFC;
    property MARCAMISURATOREPORTATA: string read FMARCAMISURATOREPORTATA write FMARCAMISURATOREPORTATA;
    property MARCAMOTOPOMPA: string read FMARCAMOTOPOMPA write FMARCAMOTOPOMPA;
    property MARCAPOMPAJOCKEY: string read FMARCAPOMPAJOCKEY write FMARCAPOMPAJOCKEY;
    property MARCAPOMPAPORTATA: string read FMARCAPOMPAPORTATA write FMARCAPOMPAPORTATA;
    property MODELLOMISURATOREPORTATA: string read FMODELLOMISURATOREPORTATA write FMODELLOMISURATOREPORTATA;
    property MODELLOMOTOPOMPA: string read FMODELLOMOTOPOMPA write FMODELLOMOTOPOMPA;
    property MODELLOPOMPAJOCKEY: string read FMODELLOPOMPAJOCKEY write FMODELLOPOMPAJOCKEY;
    property MODELLOPOMPAPORTATA: string read FMODELLOPOMPAPORTATA write FMODELLOPOMPAPORTATA;
    property Note: string read FNote write FNote;
    property NonControllato: Boolean read FNonControllato write FNonControllato;
    property OrarioControllo: string read FOrarioControllo write FOrarioControllo;
    property STATO: string read FSTATO write FSTATO;
    property TIPOBATTERIE: string read FTIPOBATTERIE write FTIPOBATTERIE;
    property TIPOINTERVENTO: string read FTIPOINTERVENTO write FTIPOINTERVENTO;
    property TIPOMOTOPOMPA: string read FTIPOMOTOPOMPA write FTIPOMOTOPOMPA;
    property TIPOPOMPAJOCKEY: string read FTIPOPOMPAJOCKEY write FTIPOPOMPAJOCKEY;
    property TIPOPOMPAPORTATA: string read FTIPOPOMPAPORTATA write FTIPOPOMPAPORTATA;
    property TIPOSTAZIONE: string read FTIPOSTAZIONE write FTIPOSTAZIONE;
    property TIPOVISITA: string read FTIPOVISITA write FTIPOVISITA;
    property TecnicoControllo: Integer read FTecnicoControllo write FTecnicoControllo;
    property VASIESPANSIONE: string read FVASIESPANSIONE write FVASIESPANSIONE;
  end;

  TPorte = class
  private
    [JSONName('ANNO_COSTRUZIONE')]
    FANNOCOSTRUZIONE: Integer;
    [JSONName('ANOMALIA')]
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    [JSONName('ANTE')]
    FANTE: string;
    [JSONName('AnomaliaOnDownload')]
    FAnomaliaOnDownload: string;
    [JSONName('AnomaliaRisolta')]
    FAnomaliaRisolta: Boolean;
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('Consegnato')]
    FConsegnato: Boolean;
    [JSONName('Controllato')]
    FControllato: Boolean;
    [JSONName('DIMENSIONE')]
    FDIMENSIONE: string;
    [SuppressZero]
    FDataControllo: TDateTime; // TDateTime
    [JSONName('ID_NFC')]
    FIDNFC: string;
    [JSONName('MARCA')]
    FMARCA: Integer;
    [JSONName('MARCA_MANIGLIONE')]
    FMARCAMANIGLIONE: Integer;
    FMATRICOLA: string;
    [JSONName('NOTE_TECNICO')]
    FNOTETECNICO: string;
    [JSONName('OrarioControllo')]
    FOrarioControllo: string;
    [JSONName('PROGRESSIVO')]
    FPROGRESSIVO: Integer;
    [JSONName('STATO')]
    FSTATO: string;
    [JSONName('TIPO')]
    FTIPO: Integer;
    [JSONName('TIPO_GUARNIZIONE')]
    FTIPOGUARNIZIONE: Integer;
    [JSONName('TIPO_INSTALLAZIONE')]
    FTIPOINSTALLAZIONE: Integer;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    [JSONName('TIPO_MANIGLIA_ESTERNA')]
    FTIPOMANIGLIAESTERNA: Integer;
    [JSONName('TIPO_MANIGLIONE')]
    FTIPOMANIGLIONE: Integer;
    [JSONName('TIPO_SERRATURA_ANTA_PRINCIPALE')]
    FTIPOSERRATURAANTAPRINCIPALE: Integer;
    [JSONName('TIPO_SERRATURA_ANTA_SECONDARIA')]
    FTIPOSERRATURAANTASECONDARIA: Integer;
    [JSONName('TecnicoControllo')]
    FTecnicoControllo: Integer;
    [JSONName('UBICAZIONE')]
    FUBICAZIONE: string;
  published
    property ANNOCOSTRUZIONE: Integer read FANNOCOSTRUZIONE write FANNOCOSTRUZIONE;
    property ANOMALIA: string read FANOMALIA write FANOMALIA;
    property ANOMALIAAPPROVATA: Boolean read FANOMALIAAPPROVATA write FANOMALIAAPPROVATA;
    property ANTE: string read FANTE write FANTE;
    property AnomaliaOnDownload: string read FAnomaliaOnDownload write FAnomaliaOnDownload;
    property AnomaliaRisolta: Boolean read FAnomaliaRisolta write FAnomaliaRisolta;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Consegnato: Boolean read FConsegnato write FConsegnato;
    property Controllato: Boolean read FControllato write FControllato;
    property DIMENSIONE: string read FDIMENSIONE write FDIMENSIONE;
    property DataControllo: TDateTime read FDataControllo write FDataControllo; // TDateTime
    property IDNFC: string read FIDNFC write FIDNFC;
    property MARCA: Integer read FMARCA write FMARCA;
    property MARCAMANIGLIONE: Integer read FMARCAMANIGLIONE write FMARCAMANIGLIONE;
    property MATRICOLA: string read FMATRICOLA write FMATRICOLA;
    property NOTETECNICO: string read FNOTETECNICO write FNOTETECNICO;
    property OrarioControllo: string read FOrarioControllo write FOrarioControllo;
    property PROGRESSIVO: Integer read FPROGRESSIVO write FPROGRESSIVO;
    property STATO: string read FSTATO write FSTATO;
    property TIPO: Integer read FTIPO write FTIPO;
    property TIPOGUARNIZIONE: Integer read FTIPOGUARNIZIONE write FTIPOGUARNIZIONE;
    property TIPOINSTALLAZIONE: Integer read FTIPOINSTALLAZIONE write FTIPOINSTALLAZIONE;
    property TIPOINTERVENTO: string read FTIPOINTERVENTO write FTIPOINTERVENTO;
    property TIPOMANIGLIAESTERNA: Integer read FTIPOMANIGLIAESTERNA write FTIPOMANIGLIAESTERNA;
    property TIPOMANIGLIONE: Integer read FTIPOMANIGLIONE write FTIPOMANIGLIONE;
    property TIPOSERRATURAANTAPRINCIPALE: Integer read FTIPOSERRATURAANTAPRINCIPALE
      write FTIPOSERRATURAANTAPRINCIPALE;
    property TIPOSERRATURAANTASECONDARIA: Integer read FTIPOSERRATURAANTASECONDARIA
      write FTIPOSERRATURAANTASECONDARIA;
    property TecnicoControllo: Integer read FTecnicoControllo write FTecnicoControllo;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
  end;

  TVerbaleCollaudoManichette = class
  private
    [JSONName('CAP')]
    FCAP: string;
    [JSONName('CONCLUSO')]
    FCONCLUSO: Boolean;
    [JSONName('CodiceFiscale')]
    FCodiceFiscale: string;
    [JSONName('Comune')]
    FComune: string;
    [JSONName('Destinatario')]
    FDestinatario: string;
    [JSONName('EMail')]
    FEMail: string;
    [JSONName('Indirizzo')]
    FIndirizzo: string;
    [JSONName('InformazioniCollaudo')]
    FInformazioniCollaudo: string;
    [JSONName('LunghezzaManichette')]
    FLunghezzaManichette: string;
    [JSONName('NOTETECNICO')]
    FNOTETECNICO: string;
    FOperazioniDescrizione01: string;
    FOperazioniDescrizione02: string;
    FOperazioniDescrizione03: string;
    FOperazioniDescrizione04: string;
    FOperazioniDescrizione05: string;
    FOperazioniDescrizione06: string;
    FOperazioniDescrizione07: string;
    FOperazioniDescrizione08: string;
    FOperazioniEsito01: string;
    FOperazioniEsito02: string;
    FOperazioniEsito03: string;
    FOperazioniEsito04: string;
    FOperazioniEsito05: string;
    FOperazioniEsito06: string;
    FOperazioniEsito07: string;
    FOperazioniEsito08: string;
    FOperazioniQuantita01: string;
    FOperazioniQuantita02: string;
    FOperazioniQuantita03: string;
    FOperazioniQuantita04: string;
    FOperazioniQuantita05: string;
    FOperazioniQuantita06: string;
    FOperazioniQuantita07: string;
    FOperazioniQuantita08: string;
    FPartitaIVA: string;
    FTipoImpianto: string;
    FTipoManichette: string;
    FTotaleCollaudi: string;
    FTotaleManichette: string;
  published
    property CAP: string read FCAP write FCAP;
    property CONCLUSO: Boolean read FCONCLUSO write FCONCLUSO;
    property CodiceFiscale: string read FCodiceFiscale write FCodiceFiscale;
    property Comune: string read FComune write FComune;
    property Destinatario: string read FDestinatario write FDestinatario;
    property EMail: string read FEMail write FEMail;
    property Indirizzo: string read FIndirizzo write FIndirizzo;
    property InformazioniCollaudo: string read FInformazioniCollaudo write FInformazioniCollaudo;
    property LunghezzaManichette: string read FLunghezzaManichette write FLunghezzaManichette;
    property NOTETECNICO: string read FNOTETECNICO write FNOTETECNICO;
    property OperazioniDescrizione01: string read FOperazioniDescrizione01 write FOperazioniDescrizione01;
    property OperazioniDescrizione02: string read FOperazioniDescrizione02 write FOperazioniDescrizione02;
    property OperazioniDescrizione03: string read FOperazioniDescrizione03 write FOperazioniDescrizione03;
    property OperazioniDescrizione04: string read FOperazioniDescrizione04 write FOperazioniDescrizione04;
    property OperazioniDescrizione05: string read FOperazioniDescrizione05 write FOperazioniDescrizione05;
    property OperazioniDescrizione06: string read FOperazioniDescrizione06 write FOperazioniDescrizione06;
    property OperazioniDescrizione07: string read FOperazioniDescrizione07 write FOperazioniDescrizione07;
    property OperazioniDescrizione08: string read FOperazioniDescrizione08 write FOperazioniDescrizione08;
    property OperazioniEsito01: string read FOperazioniEsito01 write FOperazioniEsito01;
    property OperazioniEsito02: string read FOperazioniEsito02 write FOperazioniEsito02;
    property OperazioniEsito03: string read FOperazioniEsito03 write FOperazioniEsito03;
    property OperazioniEsito04: string read FOperazioniEsito04 write FOperazioniEsito04;
    property OperazioniEsito05: string read FOperazioniEsito05 write FOperazioniEsito05;
    property OperazioniEsito06: string read FOperazioniEsito06 write FOperazioniEsito06;
    property OperazioniEsito07: string read FOperazioniEsito07 write FOperazioniEsito07;
    property OperazioniEsito08: string read FOperazioniEsito08 write FOperazioniEsito08;
    property OperazioniQuantita01: string read FOperazioniQuantita01 write FOperazioniQuantita01;
    property OperazioniQuantita02: string read FOperazioniQuantita02 write FOperazioniQuantita02;
    property OperazioniQuantita03: string read FOperazioniQuantita03 write FOperazioniQuantita03;
    property OperazioniQuantita04: string read FOperazioniQuantita04 write FOperazioniQuantita04;
    property OperazioniQuantita05: string read FOperazioniQuantita05 write FOperazioniQuantita05;
    property OperazioniQuantita06: string read FOperazioniQuantita06 write FOperazioniQuantita06;
    property OperazioniQuantita07: string read FOperazioniQuantita07 write FOperazioniQuantita07;
    property OperazioniQuantita08: string read FOperazioniQuantita08 write FOperazioniQuantita08;
    property PartitaIVA: string read FPartitaIVA write FPartitaIVA;
    property TipoImpianto: string read FTipoImpianto write FTipoImpianto;
    property TipoManichette: string read FTipoManichette write FTipoManichette;
    property TotaleCollaudi: string read FTotaleCollaudi write FTotaleCollaudi;
    property TotaleManichette: string read FTotaleManichette write FTotaleManichette;
  end;

  TProdotti = class
  private
    FCHIAVE: string;
    FCodice: string;
    [SuppressZero]
    FDataProdotto: TDateTime;
    FDescrizione: string;
    FIdRiga: string;
    FOrarioProdotto: string;
    FQuantita: string;
  published
    property CHIAVE: string read FCHIAVE write FCHIAVE;
    property Codice: string read FCodice write FCodice;
    property DataProdotto: TDateTime read FDataProdotto write FDataProdotto;
    property Descrizione: string read FDescrizione write FDescrizione;
    property IdRiga: string read FIdRiga write FIdRiga;
    property OrarioProdotto: string read FOrarioProdotto write FOrarioProdotto;
    property Quantita: string read FQuantita write FQuantita;
  end;

  TLuci = class
  private
    [JSONName('ANOMALIA')]
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    [JSONName('AUTONOMIA')]
    FAUTONOMIA: Integer;
    [JSONName('AnomaliaOnDownload')]
    FAnomaliaOnDownload: string;
    [JSONName('AnomaliaRisolta')]
    FAnomaliaRisolta: Boolean;
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('Consegnato')]
    FConsegnato: Boolean;
    [JSONName('Controllato')]
    FControllato: Boolean;
    [JSONName('DataControllo')]
    [SuppressZero]
    FDataControllo: TDateTime; // TDateTime
    [JSONName('ID_NFC')]
    FIDNFC: string;
    [JSONName('MARCA')]
    FMARCA: Integer;
    [JSONName('MODELLO')]
    FMODELLO: string;
    [JSONName('NOTE_TECNICO')]
    FNOTETECNICO: string;
    [JSONName('OrarioControllo')]
    FOrarioControllo: string;
    [JSONName('PROGRESSIVO')]
    FPROGRESSIVO: Integer;
    [JSONName('STATO')]
    FSTATO: string;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    [JSONName('TIPO_LUCE')]
    FTIPOLUCE: Integer;
    [JSONName('TecnicoControllo')]
    FTecnicoControllo: Integer;
    [JSONName('UBICAZIONE')]
    FUBICAZIONE: string;
  published
    property ANOMALIA: string read FANOMALIA write FANOMALIA;
    property ANOMALIAAPPROVATA: Boolean read FANOMALIAAPPROVATA write FANOMALIAAPPROVATA;
    property AUTONOMIA: Integer read FAUTONOMIA write FAUTONOMIA;
    property AnomaliaOnDownload: string read FAnomaliaOnDownload write FAnomaliaOnDownload;
    property AnomaliaRisolta: Boolean read FAnomaliaRisolta write FAnomaliaRisolta;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Consegnato: Boolean read FConsegnato write FConsegnato;
    property Controllato: Boolean read FControllato write FControllato;
    property DataControllo: TDateTime read FDataControllo write FDataControllo; // TDateTime
    property IDNFC: string read FIDNFC write FIDNFC;
    property MARCA: Integer read FMARCA write FMARCA;
    property MODELLO: string read FMODELLO write FMODELLO;
    property NOTETECNICO: string read FNOTETECNICO write FNOTETECNICO;
    property OrarioControllo: string read FOrarioControllo write FOrarioControllo;
    property PROGRESSIVO: Integer read FPROGRESSIVO write FPROGRESSIVO;
    property STATO: string read FSTATO write FSTATO;
    property TIPOINTERVENTO: string read FTIPOINTERVENTO write FTIPOINTERVENTO;
    property TIPOLUCE: Integer read FTIPOLUCE write FTIPOLUCE;
    property TecnicoControllo: Integer read FTecnicoControllo write FTecnicoControllo;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
  end;

  TRilevatoriFumo = class
  private
    [JSONName('ANOMALIA')]
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    [JSONName('AnomaliaOnDownload')]
    FAnomaliaOnDownload: string;
    [JSONName('AnomaliaRisolta')]
    FAnomaliaRisolta: Boolean;
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('Controllato')]
    FControllato: Boolean;
    [JSONName('Descrizione')]
    FDescrizione: string;
    [JSONName('DataControllo')]
    [SuppressZero]
    FDataControllo: TDateTime; // TDateTime
    [JSONName('ID_NFC')]
    FIDNFC: string;
    [JSONName('MARCA_CENTRALE')]
    FMARCACENTRALE: string;
    [JSONName('MARCA_RIL_LINEARI')]
    FMARCARILLINEARI: string;
    [JSONName('NOTE_TECNICO')]
    FNOTETECNICO: string;
    [JSONName('NonControllato')]
    FNonControllato: Boolean;
    [JSONName('OrarioControllo')]
    FOrarioControllo: string;
    [JSONName('QUANTITA_BATTERIE')]
    FQUANTITABATTERIE: string;
    [JSONName('QUANTITA_PANNELLI_OTT_ACUST')]
    FQUANTITAPANNELLIOTTACUST: string;
    [JSONName('QUANTITA_PULSANTI')]
    FQUANTITAPULSANTI: string;
    [JSONName('QUANTITA_RILEVATORI')]
    FQUANTITARILEVATORI: string;
    [JSONName('QUANTITA_RIL_LINEARI')]
    FQUANTITARILLINEARI: string;
    [JSONName('STATO')]
    FSTATO: string;
    [JSONName('TIPI_RILEVATORI_LINEARI_FUMI')]
    FTIPIRILEVATORILINEARIFUMI: string;
    [SuppressZero, JSONName('TIPO_BATTERIE')]
    FTIPOBATTERIE: TDateTime;
    [JSONName('TIPO_CENTRALE')]
    FTIPOCENTRALE: string;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    [JSONName('TIPO_RILEVATORI')]
    FTIPORILEVATORI: string;
    [JSONName('TIPO_RIL_LINEARI')]
    FTIPORILLINEARI: string;
    [JSONName('TecnicoControllo')]
    FTecnicoControllo: Integer;
    [JSONName('UBICAZIONE')]
    FUBICAZIONE: string;
  published
    property ANOMALIA: string read FANOMALIA write FANOMALIA;
    property ANOMALIAAPPROVATA: Boolean read FANOMALIAAPPROVATA write FANOMALIAAPPROVATA;
    property AnomaliaOnDownload: string read FAnomaliaOnDownload write FAnomaliaOnDownload;
    property AnomaliaRisolta: Boolean read FAnomaliaRisolta write FAnomaliaRisolta;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Controllato: Boolean read FControllato write FControllato;
    property Descrizione: string read FDescrizione write FDescrizione;
    property DataControllo: TDateTime read FDataControllo write FDataControllo; // TDateTime
    property IDNFC: string read FIDNFC write FIDNFC;
    property MARCACENTRALE: string read FMARCACENTRALE write FMARCACENTRALE;
    property MARCARILLINEARI: string read FMARCARILLINEARI write FMARCARILLINEARI;
    property NOTETECNICO: string read FNOTETECNICO write FNOTETECNICO;
    property NonControllato: Boolean read FNonControllato write FNonControllato;
    property OrarioControllo: string read FOrarioControllo write FOrarioControllo;
    property QUANTITABATTERIE: string read FQUANTITABATTERIE write FQUANTITABATTERIE;
    property QUANTITAPANNELLIOTTACUST: string read FQUANTITAPANNELLIOTTACUST write FQUANTITAPANNELLIOTTACUST;
    property QUANTITAPULSANTI: string read FQUANTITAPULSANTI write FQUANTITAPULSANTI;
    property QUANTITARILEVATORI: string read FQUANTITARILEVATORI write FQUANTITARILEVATORI;
    property QUANTITARILLINEARI: string read FQUANTITARILLINEARI write FQUANTITARILLINEARI;
    property STATO: string read FSTATO write FSTATO;
    property TIPIRILEVATORILINEARIFUMI: string read FTIPIRILEVATORILINEARIFUMI
      write FTIPIRILEVATORILINEARIFUMI;
    property TIPOBATTERIE: TDateTime read FTIPOBATTERIE write FTIPOBATTERIE; // TDateTime
    property TIPOCENTRALE: string read FTIPOCENTRALE write FTIPOCENTRALE;
    property TIPOINTERVENTO: string read FTIPOINTERVENTO write FTIPOINTERVENTO;
    property TIPORILEVATORI: string read FTIPORILEVATORI write FTIPORILEVATORI;
    property TIPORILLINEARI: string read FTIPORILLINEARI write FTIPORILLINEARI;
    property TecnicoControllo: Integer read FTecnicoControllo write FTecnicoControllo;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
  end;

  TSprinkler = class
  private
    [JSONName('ANOMALIA')]
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    [JSONName('AnomaliaOnDownload')]
    FAnomaliaOnDownload: string;
    [JSONName('AnomaliaRisolta')]
    FAnomaliaRisolta: Boolean;
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('COMPRESSORE')]
    FCOMPRESSORE: string;
    [JSONName('Controllato')]
    FControllato: Boolean;
    [JSONName('Descrizione')]
    FDescrizione: string;
    [JSONName('DataControllo')]
    [SuppressZero]
    FDataControllo: TDateTime;
    [JSONName('ID_NFC')]
    FIDNFC: string;
    [JSONName('MARCA')]
    FMARCA: string;
    [JSONName('MODELLO')]
    FMODELLO: string;
    [JSONName('Note')]
    FNote: string;
    [JSONName('NonControllato')]
    FNonControllato: Boolean;
    [JSONName('OrarioControllo')]
    FOrarioControllo: string;
    [JSONName('QUANTITA_VALVOLE')]
    FQUANTITAVALVOLE: string;
    [JSONName('STATO')]
    FSTATO: string;
    [JSONName('TARATURA_VALVOLE')]
    FTARATURAVALVOLE: Integer;
    [JSONName('TIPO')]
    FTIPO: string;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    [JSONName('TIPO_VISITA')]
    FTIPOVISITA: string;
    [JSONName('TecnicoControllo')]
    FTecnicoControllo: Integer;
    [JSONName('UBICAZIONE')]
    FUBICAZIONE: string;
    [JSONName('VALVOLE_RICAMBIO')]
    FVALVOLERICAMBIO: Boolean;
  published
    property ANOMALIA: string read FANOMALIA write FANOMALIA;
    property ANOMALIAAPPROVATA: Boolean read FANOMALIAAPPROVATA write FANOMALIAAPPROVATA;
    property AnomaliaOnDownload: string read FAnomaliaOnDownload write FAnomaliaOnDownload;
    property AnomaliaRisolta: Boolean read FAnomaliaRisolta write FAnomaliaRisolta;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property COMPRESSORE: string read FCOMPRESSORE write FCOMPRESSORE;
    property Controllato: Boolean read FControllato write FControllato;
    property Descrizione: string read FDescrizione write FDescrizione;
    property DataControllo: TDateTime read FDataControllo write FDataControllo; // TDateTime
    property IDNFC: string read FIDNFC write FIDNFC;
    property MARCA: string read FMARCA write FMARCA;
    property MODELLO: string read FMODELLO write FMODELLO;
    property Note: string read FNote write FNote;
    property NonControllato: Boolean read FNonControllato write FNonControllato;
    property OrarioControllo: string read FOrarioControllo write FOrarioControllo;
    property QUANTITAVALVOLE: string read FQUANTITAVALVOLE write FQUANTITAVALVOLE;
    property STATO: string read FSTATO write FSTATO;
    property TARATURAVALVOLE: Integer read FTARATURAVALVOLE write FTARATURAVALVOLE;
    property TIPO: string read FTIPO write FTIPO;
    property TIPOINTERVENTO: string read FTIPOINTERVENTO write FTIPOINTERVENTO;
    property TIPOVISITA: string read FTIPOVISITA write FTIPOVISITA;
    property TecnicoControllo: Integer read FTecnicoControllo write FTecnicoControllo;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
    property VALVOLERICAMBIO: Boolean read FVALVOLERICAMBIO write FVALVOLERICAMBIO;
  end;

  TEstintori = class
  private
    [JSONName('ANNO_COSTRUZIONE')]
    FANNOCOSTRUZIONE: string;
    [JSONName('ANOMALIA')]
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    [JSONName('AggiuntoDaMobile')]
    FAggiuntoDaMobile: Boolean;
    [JSONName('AnomaliaOnDownload')]
    FAnomaliaOnDownload: string;
    [JSONName('AnomaliaRisolta')]
    FAnomaliaRisolta: Boolean;
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('Consegnato')]
    FConsegnato: Boolean;
    [JSONName('Controllato')]
    FControllato: Boolean;
    [SuppressZero, JSONName('DATA_LAVORAZIONE')]
    FDATALAVORAZIONE: TDateTime;
    [JSONName('DATA_STARTUP_COL')]
    FDATASTARTUPCOL: string;
    [JSONName('DATA_STARTUP_REV')]
    FDATASTARTUPREV: string;
    [JSONName('DataConsegna')]
    [SuppressZero]
    FDataConsegna: TDateTime;
    [JSONName('DataControllo')]
    [SuppressZero]
    FDataControllo: TDateTime;
    [JSONName('DataControlloNegato')]
    [SuppressZero]
    FDataControlloNegato: TDateTime;
    [JSONName('DataRestituzione')]
    [SuppressZero]
    FDataRestituzione: TDateTime;
    [JSONName('DataRitiro')]
    [SuppressZero]
    FDataRitiro: TDateTime;
    [JSONName('DataSmaltimento')]
    [SuppressZero]
    FDataSmaltimento: TDateTime;
    [JSONName('ID_NFC')]
    FIDNFC: string;
    [JSONName('MARCA')]
    FMARCA: Integer;
    [JSONName('MATRICOLA')]
    FMATRICOLA: string;
    [JSONName('MotivoControlloNegato')]
    FMotivoControlloNegato: string;
    [JSONName('MotivoRitiro')]
    FMotivoRitiro: string;
    [JSONName('NOTE_TECNICO')]
    FNOTETECNICO: string;
    [JSONName('NonControllato')]
    FNonControllato: Boolean;
    [JSONName('OrarioConsegna')]
    FOrarioConsegna: string;
    [JSONName('OrarioControllo')]
    FOrarioControllo: string;
    [JSONName('OrarioControlloNegato')]
    FOrarioControlloNegato: string;
    [JSONName('OrarioRitiro')]
    FOrarioRitiro: string;
    [JSONName('OrarioSmaltimento')]
    FOrarioSmaltimento: string;
    [JSONName('PERIODICITA_COLLAUDO')]
    FPERIODICITACOLLAUDO: Integer;
    [JSONName('PERIODICITA_REVISIONE')]
    FPERIODICITAREVISIONE: Integer;
    [JSONName('PROGRESSIVO')]
    FPROGRESSIVO: Integer;
    [JSONName('Restituito')]
    FRestituito: Boolean;
    [JSONName('Ritirato')]
    FRitirato: Boolean;
    [JSONName('STATO')]
    FSTATO: string;
    [JSONName('Smaltito')]
    FSmaltito: Boolean;
    [JSONName('TIPO_ESTINTORE')]
    FTIPOESTINTORE: Integer;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    [JSONName('TecnicoConsegna')]
    FTecnicoConsegna: Integer;
    [JSONName('TecnicoControllo')]
    FTecnicoControllo: Integer;
    [JSONName('TecnicoControlloNegato')]
    FTecnicoControlloNegato: Integer;
    [JSONName('TecnicoRestituzione')]
    FTecnicoRestituzione: Integer;
    [JSONName('TecnicoRitiro')]
    FTecnicoRitiro: Integer;
    [JSONName('TecnicoSmaltimento')]
    FTecnicoSmaltimento: Integer;
    [JSONName('UBICAZIONE')]
    FUBICAZIONE: string;
  published
    property ANNOCOSTRUZIONE: string read FANNOCOSTRUZIONE write FANNOCOSTRUZIONE;
    property ANOMALIA: string read FANOMALIA write FANOMALIA;
    property ANOMALIAAPPROVATA: Boolean read FANOMALIAAPPROVATA write FANOMALIAAPPROVATA;
    property AggiuntoDaMobile: Boolean read FAggiuntoDaMobile write FAggiuntoDaMobile;
    property AnomaliaOnDownload: string read FAnomaliaOnDownload write FAnomaliaOnDownload;
    property AnomaliaRisolta: Boolean read FAnomaliaRisolta write FAnomaliaRisolta;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Consegnato: Boolean read FConsegnato write FConsegnato;
    property Controllato: Boolean read FControllato write FControllato;
    property DATALAVORAZIONE: TDateTime read FDATALAVORAZIONE write FDATALAVORAZIONE; // TDateTime
    property DATASTARTUPCOL: string read FDATASTARTUPCOL write FDATASTARTUPCOL;
    property DATASTARTUPREV: string read FDATASTARTUPREV write FDATASTARTUPREV;
    property DataConsegna: TDateTime read FDataConsegna write FDataConsegna; // TDateTime
    property DataControllo: TDateTime read FDataControllo write FDataControllo; // TDateTime
    property DataControlloNegato: TDateTime read FDataControlloNegato write FDataControlloNegato; // TDateTime
    property DataRestituzione: TDateTime read FDataRestituzione write FDataRestituzione; // TDateTime
    property DataRitiro: TDateTime read FDataRitiro write FDataRitiro; // TDateTime
    property DataSmaltimento: TDateTime read FDataSmaltimento write FDataSmaltimento; // TDateTime
    property IDNFC: string read FIDNFC write FIDNFC;
    property MARCA: Integer read FMARCA write FMARCA;
    property MATRICOLA: string read FMATRICOLA write FMATRICOLA;
    property MotivoControlloNegato: string read FMotivoControlloNegato write FMotivoControlloNegato;
    property MotivoRitiro: string read FMotivoRitiro write FMotivoRitiro;
    property NOTETECNICO: string read FNOTETECNICO write FNOTETECNICO;
    property NonControllato: Boolean read FNonControllato write FNonControllato;
    property OrarioConsegna: string read FOrarioConsegna write FOrarioConsegna;
    property OrarioControllo: string read FOrarioControllo write FOrarioControllo;
    property OrarioControlloNegato: string read FOrarioControlloNegato write FOrarioControlloNegato;
    property OrarioRitiro: string read FOrarioRitiro write FOrarioRitiro;
    property OrarioSmaltimento: string read FOrarioSmaltimento write FOrarioSmaltimento;
    property PERIODICITACOLLAUDO: Integer read FPERIODICITACOLLAUDO write FPERIODICITACOLLAUDO;
    property PERIODICITAREVISIONE: Integer read FPERIODICITAREVISIONE write FPERIODICITAREVISIONE;
    property PROGRESSIVO: Integer read FPROGRESSIVO write FPROGRESSIVO;
    property Restituito: Boolean read FRestituito write FRestituito;
    property Ritirato: Boolean read FRitirato write FRitirato;
    property STATO: string read FSTATO write FSTATO;
    property Smaltito: Boolean read FSmaltito write FSmaltito;
    property TIPOESTINTORE: Integer read FTIPOESTINTORE write FTIPOESTINTORE;
    property TIPOINTERVENTO: string read FTIPOINTERVENTO write FTIPOINTERVENTO;
    property TecnicoConsegna: Integer read FTecnicoConsegna write FTecnicoConsegna;
    property TecnicoControllo: Integer read FTecnicoControllo write FTecnicoControllo;
    property TecnicoControlloNegato: Integer read FTecnicoControlloNegato write FTecnicoControlloNegato;
    property TecnicoRestituzione: Integer read FTecnicoRestituzione write FTecnicoRestituzione;
    property TecnicoRitiro: Integer read FTecnicoRitiro write FTecnicoRitiro;
    property TecnicoSmaltimento: Integer read FTecnicoSmaltimento write FTecnicoSmaltimento;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
  end;

  TStatino = class(TJsonDTO)
  private
    [JSONName('CHIAVE')]
    FCHIAVE: Integer;
    [JSONName('RAGIONE_SOCIALE')]
    FRAGIONESOCIALE: string;
    [JSONName('REF_CELLULARE')]
    FREFCELLULARE: string;
    [JSONName('REF_TELEFONO')]
    FREFTELEFONO: string;
    [JSONName('RESPONSABILE')]
    FRESPONSABILE: Integer;
    [JSONName('TITOLO')]
    FTITOLO: string;
    [JSONName('PROVINCIA')]
    FPROVINCIA: string;
    [JSONName('CAP')]
    FCAP: string;
    [JSONName('CELLULARE')]
    FCELLULARE: string;
    [JSONName('CHIUSURA')]
    FCHIUSURA: string;
    [JSONName('COD_ENTE_SDI')]
    FCODENTESDI: string;
    [JSONName('COMUNE')]
    FComune: string;
    [JSONName('CONCLUSO')]
    FCONCLUSO: Boolean;
    [SuppressZero, JSONName('DATA_INTERVENTO')]
    FDATAINTERVENTO: TDateTime;
    [JSONName('DESCRIZIONE_CONTRATTO')]
    FDESCRIZIONECONTRATTO: string;
    [JSONName('DataEliminazioneProdotto')]
    FDataEliminazioneProdotto: string;
    [JSONName('DocumentoAnnullato')]
    FDocumentoAnnullato: Boolean;
    [JSONName('ELEMENTI_ELETTRICI_CONTROLLATI')]
    FELEMENTIELETTRICICONTROLLATI: Integer;
    [JSONName('ELEMENTI_ELETTRICI_NON_CONTROLLATI')]
    FELEMENTIELETTRICINONCONTROLLATI: Integer;
    [JSONName('EMAIL_CONTRATTO')]
    FEMAILCONTRATTO: string;
    [JSONName('ESTINTORI_CONSEGNATI')]
    FESTINTORICONSEGNATI: Integer;
    [JSONName('ESTINTORI_CONTROLLATI')]
    FESTINTORICONTROLLATI: Integer;
    [JSONName('ESTINTORI_NON_CONTROLLATI')]
    FESTINTORINONCONTROLLATI: Integer;
    [JSONName('ESTINTORI_RESTITUITI')]
    FESTINTORIRESTITUITI: Integer;
    [JSONName('ESTINTORI_RITIRATE')]
    FESTINTORIRITIRATE: Integer;
    [JSONName('ESTINTORI_SMALTITI')]
    FESTINTORISMALTITI: Integer;
    [JSONName('FDataDiscrepanza')]
    [SuppressZero]
    FFDataDiscrepanza: TDateTime;
    [JSONName('FORNITURA')]
    FFORNITURA: Boolean;
    [JSONName('FOrarioDiscrepanza')]
    FFOrarioDiscrepanza: string;
    [JSONName('FUMI_CONTROLLATE')]
    FFUMICONTROLLATE: Integer;
    [JSONName('FUMI_NON_CONTROLLATE')]
    FFUMINONCONTROLLATE: Integer;
    [JSONName('FattureInSedeNonElencate')]
    FFattureInSedeNonElencate: Boolean;
    [JSONName('GENERAZIONE_AUTOMATICA')]
    FGENERAZIONEAUTOMATICA: Integer;
    [JSONName('GRUPPI_CONTROLLATI')]
    FGRUPPICONTROLLATI: Integer;
    [JSONName('GRUPPI_NON_CONTROLLATI')]
    FGRUPPINONCONTROLLATI: Integer;
    [JSONName('IDRANTI_CONSEGNATI')]
    FIDRANTICONSEGNATI: Integer;
    [JSONName('IDRANTI_CONTROLLATE')]
    FIDRANTICONTROLLATE: Integer;
    [JSONName('IDRANTI_NON_CONTROLLATI')]
    FIDRANTINONCONTROLLATI: Integer;
    [JSONName('IDRANTI_RESTITUITI')]
    FIDRANTIRESTITUITI: Integer;
    [JSONName('IDRANTI_RITIRATI')]
    FIDRANTIRITIRATI: Integer;
    [JSONName('IDRANTI_SMALTITI')]
    FIDRANTISMALTITI: Integer;
    [JSONName('INDIRIZZO')]
    FIndirizzo: string;
    [JSONName('INFO_APPUNTAMENTO')]
    FInfoAppuntamento: string;
    [JSONName('InvioTemporaneo')]
    FInvioTemporaneo: Boolean;
    [JSONName('LUCI_CONTROLLATE')]
    FLUCICONTROLLATE: Integer;
    [JSONName('LUCI_NON_CONTROLLATE')]
    FLUCINONCONTROLLATE: Integer;
    [JSONName('MAIL_INVIATE_AUTOMATICAMENTE')]
    FMAILINVIATEAUTOMATICAMENTE: Boolean;
    [JSONName('MESE_PRIMA_VISITA')]
    FMESEPRIMAVISITA: Integer;
    [JSONName('NOME_AMMINISTRATORE')]
    FNOMEAMMINISTRATORE: string;
    [JSONName('NOME_FILIALE')]
    FNOMEFILIALE: string;
    [JSONName('NOTE')]
    FNote: string;
    [JSONName('NOTE_DEL_TECNICO')]
    FNOTEDELTECNICO: string;
    [JSONName('NOTE_PER_IL_TECNICO')]
    FNOTEPERILTECNICO: string;
    [JSONName('NOTE_STAMPABILI')]
    FNOTESTAMPABILI: Boolean;
    [JSONName('NonVisualizzareAlert')]
    FNonVisualizzareAlert: Boolean;
    [JSONName('ORARIO_APERTURA_AL1')]
    FORARIOAPERTURAAL1: string;
    [JSONName('ORARIO_APERTURA_AL2')]
    FORARIOAPERTURAAL2: string;
    [JSONName('ORARIO_APERTURA_DAL1')]
    FORARIOAPERTURADAL1: string;
    [JSONName('ORARIO_APERTURA_DAL2')]
    FORARIOAPERTURADAL2: string;
    [JSONName('OraProgrammazioneIntervento')]
    FOraProgrammazioneIntervento: string;
    [JSONName('PEC_AMMINISTRATORE')]
    FPECAMMINISTRATORE: string;
    [JSONName('PERIODICITA_COLLAUDI_IDRANTI')]
    FPERIODICITACOLLAUDIIDRANTI: Integer;
    [JSONName('PORTE_CONTROLLATE')]
    FPORTECONTROLLATE: Integer;
    [JSONName('PORTE_NON_CONTROLLATE')]
    FPORTENONCONTROLLATE: Integer;
    [JSONName('PRESA_IN_CARICO')]
    FPRESAINCARICO: Boolean;
    [JSONName('SPRINKLER_CONTROLLATE')]
    FSPRINKLERCONTROLLATE: Integer;
    [JSONName('SPRINKLER_NON_CONTROLLATI')]
    FSPRINKLERNONCONTROLLATI: Integer;
    [JSONName('SoloFatture')]
    FSoloFatture: Boolean;
    [JSONName('TECNICO_INTERVENTO')]
    FTECNICOINTERVENTO: Integer;
    [JSONName('TELEFONO')]
    FTELEFONO: string;
    [JSONName('TERMINA_CLIENTE')]
    FTerminaCliente: Boolean;
    [JSONName('Accessori')]
    FAccessori: TAccessori;

    // Lista Fatture Arretrate
    [JSONName('fatturearretrate'), JSONMarshalled(False)]
    FFattureArretrateArray: TArray<TFattureArretrate>;
    [GenericListReflect]
    FFattureArretrate: TObjectList<TFattureArretrate>;

    // Lista Estintori
    [JSONName('estintori'), JSONMarshalled(False)]
    FEstintoriArray: TArray<TEstintori>;
    [GenericListReflect]
    FEstintori: TObjectList<TEstintori>;
    // [JSONName('Estintori'), GenericListReflect]

    // Lista Luci
    [JSONName('luci'), JSONMarshalled(False)]
    FLuciArray: TArray<TLuci>;
    [GenericListReflect]
    FLuci: TObjectList<TLuci>;
    // [JSONName('Luci'), GenericListReflect]

    // Lista Idranti
    [JSONName('idranti'), JSONMarshalled(False)]
    FIdrantiArray: TArray<TIdranti>;
    [GenericListReflect]
    FIdranti: TObjectList<TIdranti>;

    // Lista Impianti Elettrici
    [JSONName('impiantielettrici'), JSONMarshalled(False)]
    FImpiantiElettriciArray: TArray<TImpiantiElettrici>;
    [GenericListReflect]
    FImpiantiElettrici: TObjectList<TImpiantiElettrici>;
    // [JSONName('ImpiantiElettrici'), GenericListReflect]

    // Lista Porte
    [JSONName('porte'), JSONMarshalled(False)]
    FPorteArray: TArray<TPorte>;
    [GenericListReflect]
    FPorte: TObjectList<TPorte>;
    // [JSONName('Porte'), GenericListReflect]

    [JSONName('prodotti'), JSONMarshalled(False)]
    FProdottiArray: TArray<TProdotti>;
    [GenericListReflect]
    FProdotti: TObjectList<TProdotti>;
    // [JSONName('Prodotti'), GenericListReflect]

    [JSONName('rilevatorifumo'), JSONMarshalled(False)]
    FRilevatoriFumoArray: TArray<TRilevatoriFumo>;
    [GenericListReflect]
    FRilevatoriFumo: TObjectList<TRilevatoriFumo>;
    // [JSONName('RilevatoriFumo'), GenericListReflect]

    // Lista Sprinkler
    [JSONName('sprinkler'), JSONMarshalled(False)]
    FSprinklerArray: TArray<TSprinkler>;
    [GenericListReflect]
    FSprinkler: TObjectList<TSprinkler>;

    // Lista Gruppi di Pressurizzazione
    [JSONName('gruppipressurizzazione'), JSONMarshalled(False)]
    FGruppiPressurizzazioneArray: TArray<TGruppiPressurizzazione>;
    [GenericListReflect]
    FGruppiPressurizzazione: TObjectList<TGruppiPressurizzazione>;

    // Tmp Info
    [JSONName('ZTmpInfo')]
    FZTmpInfo: TZTmpInfo;

    function GetEstintori: TObjectList<TEstintori>;
    function GetFattureArretrate: TObjectList<TFattureArretrate>;
    function GetGruppiPressurizzazione: TObjectList<TGruppiPressurizzazione>;
    function GetIdranti: TObjectList<TIdranti>;
    function GetImpiantiElettrici: TObjectList<TImpiantiElettrici>;
    function GetLuci: TObjectList<TLuci>;
    function GetPorte: TObjectList<TPorte>;
    function GetProdotti: TObjectList<TProdotti>;
    function GetRilevatoriFumo: TObjectList<TRilevatoriFumo>;
    function GetSprinkler: TObjectList<TSprinkler>;
  protected
    function GetAsJson: string; override;
  published
    property Accessori: TAccessori read FAccessori;
    property CAP: string read FCAP write FCAP;
    property CELLULARE: string read FCELLULARE write FCELLULARE;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property CHIUSURA: string read FCHIUSURA write FCHIUSURA;
    property CODENTESDI: string read FCODENTESDI write FCODENTESDI;
    property Comune: string read FComune write FComune;
    property CONCLUSO: Boolean read FCONCLUSO write FCONCLUSO;
    property DATAINTERVENTO: TDateTime read FDATAINTERVENTO write FDATAINTERVENTO; // TDateTime
    property DESCRIZIONECONTRATTO: string read FDESCRIZIONECONTRATTO write FDESCRIZIONECONTRATTO;
    property DataEliminazioneProdotto: string read FDataEliminazioneProdotto write FDataEliminazioneProdotto;
    property DocumentoAnnullato: Boolean read FDocumentoAnnullato write FDocumentoAnnullato;
    property ELEMENTIELETTRICICONTROLLATI: Integer read FELEMENTIELETTRICICONTROLLATI
      write FELEMENTIELETTRICICONTROLLATI;
    property ELEMENTIELETTRICINONCONTROLLATI: Integer read FELEMENTIELETTRICINONCONTROLLATI
      write FELEMENTIELETTRICINONCONTROLLATI;
    property EMAILCONTRATTO: string read FEMAILCONTRATTO write FEMAILCONTRATTO;
    property ESTINTORICONSEGNATI: Integer read FESTINTORICONSEGNATI write FESTINTORICONSEGNATI;
    property ESTINTORICONTROLLATI: Integer read FESTINTORICONTROLLATI write FESTINTORICONTROLLATI;
    property ESTINTORINONCONTROLLATI: Integer read FESTINTORINONCONTROLLATI write FESTINTORINONCONTROLLATI;
    property ESTINTORIRESTITUITI: Integer read FESTINTORIRESTITUITI write FESTINTORIRESTITUITI;
    property ESTINTORIRITIRATE: Integer read FESTINTORIRITIRATE write FESTINTORIRITIRATE;
    property ESTINTORISMALTITI: Integer read FESTINTORISMALTITI write FESTINTORISMALTITI;
    property Estintori: TObjectList<TEstintori> read GetEstintori;
    property FDataDiscrepanza: TDateTime read FFDataDiscrepanza write FFDataDiscrepanza;
    property FORNITURA: Boolean read FFORNITURA write FFORNITURA;
    property FOrarioDiscrepanza: string read FFOrarioDiscrepanza write FFOrarioDiscrepanza;
    property FUMICONTROLLATE: Integer read FFUMICONTROLLATE write FFUMICONTROLLATE;
    property FUMINONCONTROLLATE: Integer read FFUMINONCONTROLLATE write FFUMINONCONTROLLATE;
    property FattureArretrate: TObjectList<TFattureArretrate> read GetFattureArretrate;
    property FattureInSedeNonElencate: Boolean read FFattureInSedeNonElencate write FFattureInSedeNonElencate;
    property GENERAZIONEAUTOMATICA: Integer read FGENERAZIONEAUTOMATICA write FGENERAZIONEAUTOMATICA;
    property GRUPPICONTROLLATI: Integer read FGRUPPICONTROLLATI write FGRUPPICONTROLLATI;
    property GRUPPINONCONTROLLATI: Integer read FGRUPPINONCONTROLLATI write FGRUPPINONCONTROLLATI;
    property GruppiPressurizzazione: TObjectList<TGruppiPressurizzazione> read GetGruppiPressurizzazione;
    property IDRANTICONSEGNATI: Integer read FIDRANTICONSEGNATI write FIDRANTICONSEGNATI;
    property IDRANTICONTROLLATE: Integer read FIDRANTICONTROLLATE write FIDRANTICONTROLLATE;
    property IDRANTINONCONTROLLATI: Integer read FIDRANTINONCONTROLLATI write FIDRANTINONCONTROLLATI;
    property IDRANTIRESTITUITI: Integer read FIDRANTIRESTITUITI write FIDRANTIRESTITUITI;
    property IDRANTIRITIRATI: Integer read FIDRANTIRITIRATI write FIDRANTIRITIRATI;
    property IDRANTISMALTITI: Integer read FIDRANTISMALTITI write FIDRANTISMALTITI;
    property Indirizzo: string read FIndirizzo write FIndirizzo;
    property Idranti: TObjectList<TIdranti> read GetIdranti;
    property ImpiantiElettrici: TObjectList<TImpiantiElettrici> read GetImpiantiElettrici;
    property InfoAppuntamento: string read FInfoAppuntamento write FInfoAppuntamento;
    property InvioTemporaneo: Boolean read FInvioTemporaneo write FInvioTemporaneo;
    property LUCICONTROLLATE: Integer read FLUCICONTROLLATE write FLUCICONTROLLATE;
    property LUCINONCONTROLLATE: Integer read FLUCINONCONTROLLATE write FLUCINONCONTROLLATE;
    property Luci: TObjectList<TLuci> read GetLuci;
    property MAILINVIATEAUTOMATICAMENTE: Boolean read FMAILINVIATEAUTOMATICAMENTE
      write FMAILINVIATEAUTOMATICAMENTE;
    property MESEPRIMAVISITA: Integer read FMESEPRIMAVISITA write FMESEPRIMAVISITA;
    property NOMEAMMINISTRATORE: string read FNOMEAMMINISTRATORE write FNOMEAMMINISTRATORE;
    property NOMEFILIALE: string read FNOMEFILIALE write FNOMEFILIALE;
    property Note: string read FNote write FNote;
    property NOTEDELTECNICO: string read FNOTEDELTECNICO write FNOTEDELTECNICO;
    property NOTEPERILTECNICO: string read FNOTEPERILTECNICO write FNOTEPERILTECNICO;
    property NOTESTAMPABILI: Boolean read FNOTESTAMPABILI write FNOTESTAMPABILI;
    property NonVisualizzareAlert: Boolean read FNonVisualizzareAlert write FNonVisualizzareAlert;
    property ORARIOAPERTURAAL1: string read FORARIOAPERTURAAL1 write FORARIOAPERTURAAL1;
    property ORARIOAPERTURAAL2: string read FORARIOAPERTURAAL2 write FORARIOAPERTURAAL2;
    property ORARIOAPERTURADAL1: string read FORARIOAPERTURADAL1 write FORARIOAPERTURADAL1;
    property ORARIOAPERTURADAL2: string read FORARIOAPERTURADAL2 write FORARIOAPERTURADAL2;
    property OraProgrammazioneIntervento: string read FOraProgrammazioneIntervento
      write FOraProgrammazioneIntervento;
    property PECAMMINISTRATORE: string read FPECAMMINISTRATORE write FPECAMMINISTRATORE;
    property PERIODICITACOLLAUDIIDRANTI: Integer read FPERIODICITACOLLAUDIIDRANTI
      write FPERIODICITACOLLAUDIIDRANTI;
    property PORTECONTROLLATE: Integer read FPORTECONTROLLATE write FPORTECONTROLLATE;
    property PORTENONCONTROLLATE: Integer read FPORTENONCONTROLLATE write FPORTENONCONTROLLATE;
    property PRESAINCARICO: Boolean read FPRESAINCARICO write FPRESAINCARICO;
    property PROVINCIA: string read FPROVINCIA write FPROVINCIA;
    property Porte: TObjectList<TPorte> read GetPorte;
    property Prodotti: TObjectList<TProdotti> read GetProdotti;
    property RAGIONESOCIALE: string read FRAGIONESOCIALE write FRAGIONESOCIALE;
    property REFCELLULARE: string read FREFCELLULARE write FREFCELLULARE;
    property REFTELEFONO: string read FREFTELEFONO write FREFTELEFONO;
    property RESPONSABILE: Integer read FRESPONSABILE write FRESPONSABILE;
    property RilevatoriFumo: TObjectList<TRilevatoriFumo> read GetRilevatoriFumo;
    property SPRINKLERCONTROLLATE: Integer read FSPRINKLERCONTROLLATE write FSPRINKLERCONTROLLATE;
    property SPRINKLERNONCONTROLLATI: Integer read FSPRINKLERNONCONTROLLATI write FSPRINKLERNONCONTROLLATI;
    property SoloFatture: Boolean read FSoloFatture write FSoloFatture;
    property Sprinkler: TObjectList<TSprinkler> read GetSprinkler;
    property TECNICOINTERVENTO: Integer read FTECNICOINTERVENTO write FTECNICOINTERVENTO;
    property TELEFONO: string read FTELEFONO write FTELEFONO;
    property TITOLO: string read FTITOLO write FTITOLO;
    property TerminaCliente: Boolean read FTerminaCliente write FTerminaCliente;
    property ZTmpInfo: TZTmpInfo read FZTmpInfo;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

function ReplacePhoenixJson(const aJson: string): string;
function ReplaceJsonToPhoenix(const aJson: string): string;

const
  ArrayPhoenix: TArray<string> = ['Estintori', 'FattureArretrate', 'Luci', 'Idranti', 'ImpiantiElettrici', '',
    'Porte', 'Prodotti', 'RilevatoriFumo', 'Sprinkler', 'GruppiPressurizzazione', '', '', '', '', ''];
  ArrayDTO: TArray<string> = ['estintori', 'fatturearretrate', 'luci', 'idranti', 'impiantielettrici', '', '',
    'porte', 'prodotti', 'rilevatoriFumo', 'sprinkler', 'gruppipressurizzazione', '', '', '', ''];

var
  GlobalParams: string;

implementation

uses Janua.Core.Functions, System.SysUtils, System.StrUtils;

function ReplaceJsonToPhoenix(const aJson: string): string;
begin
  Result := aJson;
  GlobalParams := GlobalParams + sLineBreak + '-------------------' + sLineBreak;

  for var I := Low(ArrayDTO) to High(ArrayDTO) do
    if not ArrayDTO[I].IsEmpty then
      StringReplace(Result, '"' + ArrayDTO[I] + '"', '"' + ArrayPhoenix[I] + '"', [rfReplaceAll]);

  for var I := 2001 to 2030 do
  begin
    var
    vComparer := '"' + I.ToString + '-';
    for var J := 1 to 12 do
    begin
      var
      vReplacer := vComparer;
      var
      vReplaced := vComparer + Lpad(J.ToString, 2, '0');

      var
      vTest := POS(vReplaced, Result);

      var
      K := J - 1;
      vReplacer := vReplacer + Lpad(K.ToString, 2, '0');
      Result := StringReplace(Result, vReplaced, vReplacer, [rfReplaceAll]);

      if vTest > 0 then
        GlobalParams := GlobalParams + (vReplaced + ' - ' + vReplacer + ' Found: ' + vTest.ToString) +
          sLineBreak;
    end;
  end;

  // if Pos(Result, 'T00:00:00.000Z') > 0  then
  Result := StringReplace(Result, 'T00:00:00.000Z', '', [rfReplaceAll]);

end;

function ReplacePhoenixJson(const aJson: string): string;
begin
  Result := aJson;
  GlobalParams := '';

  for var I := Low(ArrayPhoenix) to High(ArrayPhoenix) do
    if not ArrayPhoenix[I].IsEmpty and (Pos('"' + ArrayPhoenix[I] + '"', Result ) > 0) then
      Result := StringReplace(Result, '"' + ArrayPhoenix[I] + '"', '"' + ArrayDTO[I] + '"', [rfReplaceAll, rfIgnoreCase]);

  for var I := 2001 to 2030 do
  begin
    var
    vComparer := '"' + I.ToString + '-';
    for var J := 11 downto 0 do
    begin
      var
      vReplacer := vComparer;
      var
      vReplaced := vComparer + Lpad(J.ToString, 2, '0');

      var
      vTest := POS(vReplaced, Result);

      var
      K := J + 1;
      vReplacer := vReplacer + Lpad(K.ToString, 2, '0');
      Result := StringReplace(Result, vReplaced, vReplacer, [rfReplaceAll]);
      if vTest > 0 then
        GlobalParams := GlobalParams + (vReplaced + ' - ' + vReplacer + ' Found: ' + vTest.ToString) +
          sLineBreak;

      if not(J in [10, 11]) then
      begin
        // vReplacer := vReplacer + K.ToString + '-';
        vReplaced := vComparer + J.ToString + '-';
        vReplacer := vReplacer + '-';
        vTest := POS(vReplaced, Result);
        if vTest > 0 then
        begin
          Result := StringReplace(Result, vReplaced, vReplacer, [rfReplaceAll]);
          GlobalParams := GlobalParams + (vReplaced + ' - ' + vReplacer + ' Found: ' + vTest.ToString) +
            sLineBreak;
        end;
      end;

    end;
  end;
end;

{ TZTmpInfo }

destructor TZTmpInfo.Destroy;
begin
  GetOperazioni.Free;
  GetStatoLavorazioni.Free;
  inherited;
end;

function TZTmpInfo.GetOperazioni: TObjectList<TOperazioni>;
begin
  Result := ObjectList<TOperazioni>(FOperazioni, FOperazioniArray);
end;

function TZTmpInfo.GetStatoLavorazioni: TObjectList<TStatoLavorazioni>;
begin
  Result := ObjectList<TStatoLavorazioni>(FStatoLavorazioni, FStatoLavorazioniArray);
end;

function TZTmpInfo.GetAsJson: string;
begin
  RefreshArray<TOperazioni>(FOperazioni, FOperazioniArray);
  RefreshArray<TStatoLavorazioni>(FStatoLavorazioni, FStatoLavorazioniArray);
  Result := inherited;
end;

{ TIdranti }

constructor TIdranti.Create;
begin
  inherited;
  FUltimaProvaDinamica := TUltimaProvaDinamica.Create;
end;

destructor TIdranti.Destroy;
begin
  FUltimaProvaDinamica.Free;
  GetBocchelli.Free;
  inherited;
end;

function TIdranti.GetBocchelli: TObjectList<TBocchelli>;
begin
  Result := ObjectList<TBocchelli>(FBocchelli, FBocchelliArray);
end;

function TIdranti.GetAsJson: string;
begin
  RefreshArray<TBocchelli>(FBocchelli, FBocchelliArray);
  Result := inherited;
end;

{ TImpiantiElettrici }

destructor TImpiantiElettrici.Destroy;
begin
  GetElementiElettrici.Free;
  inherited;
end;

function TImpiantiElettrici.GetElementiElettrici: TObjectList<TElementiElettrici>;
begin
  Result := ObjectList<TElementiElettrici>(FElementiElettrici, FElementiElettriciArray);
end;

function TImpiantiElettrici.GetAsJson: string;
begin
  RefreshArray<TElementiElettrici>(FElementiElettrici, FElementiElettriciArray);
  Result := inherited;
end;

{ TStatino }

constructor TStatino.Create;
begin
  inherited;
  FZTmpInfo := TZTmpInfo.Create;
  FAccessori := TAccessori.Create;
end;

destructor TStatino.Destroy;
begin
  FZTmpInfo.Free;
  FAccessori.Free;
  GetEstintori.Free;
  GetSprinkler.Free;
  GetRilevatoriFumo.Free;
  GetLuci.Free;
  GetProdotti.Free;
  GetPorte.Free;
  GetGruppiPressurizzazione.Free;
  GetImpiantiElettrici.Free;
  GetIdranti.Free;
  GetFattureArretrate.Free;
  inherited;
end;

function TStatino.GetEstintori: TObjectList<TEstintori>;
begin
  Result := ObjectList<TEstintori>(FEstintori, FEstintoriArray);
end;

function TStatino.GetFattureArretrate: TObjectList<TFattureArretrate>;
begin
  Result := ObjectList<TFattureArretrate>(FFattureArretrate, FFattureArretrateArray);
end;

function TStatino.GetGruppiPressurizzazione: TObjectList<TGruppiPressurizzazione>;
begin
  Result := ObjectList<TGruppiPressurizzazione>(FGruppiPressurizzazione, FGruppiPressurizzazioneArray);
end;

function TStatino.GetIdranti: TObjectList<TIdranti>;
begin
  Result := ObjectList<TIdranti>(FIdranti, FIdrantiArray);
end;

function TStatino.GetImpiantiElettrici: TObjectList<TImpiantiElettrici>;
begin
  Result := ObjectList<TImpiantiElettrici>(FImpiantiElettrici, FImpiantiElettriciArray);
end;

function TStatino.GetLuci: TObjectList<TLuci>;
begin
  Result := ObjectList<TLuci>(FLuci, FLuciArray);
end;

function TStatino.GetPorte: TObjectList<TPorte>;
begin
  Result := ObjectList<TPorte>(FPorte, FPorteArray);
end;

function TStatino.GetProdotti: TObjectList<TProdotti>;
begin
  Result := ObjectList<TProdotti>(FProdotti, FProdottiArray);
end;

function TStatino.GetRilevatoriFumo: TObjectList<TRilevatoriFumo>;
begin
  Result := ObjectList<TRilevatoriFumo>(FRilevatoriFumo, FRilevatoriFumoArray);
end;

function TStatino.GetSprinkler: TObjectList<TSprinkler>;
begin
  Result := ObjectList<TSprinkler>(FSprinkler, FSprinklerArray);
end;

function TStatino.GetAsJson: string;
begin
  RefreshArray<TEstintori>(FEstintori, FEstintoriArray);
  RefreshArray<TFattureArretrate>(FFattureArretrate, FFattureArretrateArray);
  RefreshArray<TGruppiPressurizzazione>(FGruppiPressurizzazione, FGruppiPressurizzazioneArray);
  RefreshArray<TIdranti>(FIdranti, FIdrantiArray);
  RefreshArray<TImpiantiElettrici>(FImpiantiElettrici, FImpiantiElettriciArray);
  RefreshArray<TLuci>(FLuci, FLuciArray);
  RefreshArray<TPorte>(FPorte, FPorteArray);
  RefreshArray<TProdotti>(FProdotti, FProdottiArray);
  RefreshArray<TRilevatoriFumo>(FRilevatoriFumo, FRilevatoriFumoArray);
  RefreshArray<TSprinkler>(FSprinkler, FSprinklerArray);
  Result := inherited;
end;

end.
