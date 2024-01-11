unit Z.Json.Statini;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TBocchelli = class;
  TElementiElettrici = class;
  TOperazioni = class;
  TStatoLavorazioni = class;
  TVerbaleCollaudoManichette = class;

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
    [JSONName('Operazioni'), JSONMarshalled(False)]
    FOperazioniArray: TArray<TOperazioni>;
    [GenericListReflect]
    FOperazioni: TObjectList<TOperazioni>;
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
    FChiave: Integer;
    FContante: Boolean;
    [SuppressZero]
    FData: TDateTime;
    [SuppressZero]
    FDataPagamento: TDateTime;
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
    property Chiave: Integer read FChiave write FChiave;
    property Contante: Boolean read FContante write FContante;
    property Data: TDateTime read FData write FData;
    property DataPagamento: TDateTime read FDataPagamento write FDataPagamento;
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
  
  TPorte = class
  private
    [JSONName('ANNO_COSTRUZIONE')]
    FANNOCOSTRUZIONE: Integer;
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    FANTE: string;
    FAnomaliaOnDownload: string;
    FAnomaliaRisolta: Boolean;
    FCHIAVE: Integer;
    FConsegnato: Boolean;
    FControllato: Boolean;
    FDIMENSIONE: string;
    [SuppressZero]
    FDataControllo: TDateTime;
    [JSONName('ID_NFC')]
    FIDNFC: string;
    FMARCA: Integer;
    [JSONName('MARCA_MANIGLIONE')]
    FMARCAMANIGLIONE: Integer;
    FMATRICOLA: string;
    FOrarioControllo: string;
    FPROGRESSIVO: Integer;
    FSTATO: string;
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
    FTecnicoControllo: Integer;
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
    property DataControllo: TDateTime read FDataControllo write FDataControllo;
    property IDNFC: string read FIDNFC write FIDNFC;
    property MARCA: Integer read FMARCA write FMARCA;
    property MARCAMANIGLIONE: Integer read FMARCAMANIGLIONE write FMARCAMANIGLIONE;
    property MATRICOLA: string read FMATRICOLA write FMATRICOLA;
    property OrarioControllo: string read FOrarioControllo write FOrarioControllo;
    property PROGRESSIVO: Integer read FPROGRESSIVO write FPROGRESSIVO;
    property STATO: string read FSTATO write FSTATO;
    property TIPO: Integer read FTIPO write FTIPO;
    property TIPOGUARNIZIONE: Integer read FTIPOGUARNIZIONE write FTIPOGUARNIZIONE;
    property TIPOINSTALLAZIONE: Integer read FTIPOINSTALLAZIONE write FTIPOINSTALLAZIONE;
    property TIPOINTERVENTO: string read FTIPOINTERVENTO write FTIPOINTERVENTO;
    property TIPOMANIGLIAESTERNA: Integer read FTIPOMANIGLIAESTERNA write FTIPOMANIGLIAESTERNA;
    property TIPOMANIGLIONE: Integer read FTIPOMANIGLIONE write FTIPOMANIGLIONE;
    property TIPOSERRATURAANTAPRINCIPALE: Integer read FTIPOSERRATURAANTAPRINCIPALE write FTIPOSERRATURAANTAPRINCIPALE;
    property TIPOSERRATURAANTASECONDARIA: Integer read FTIPOSERRATURAANTASECONDARIA write FTIPOSERRATURAANTASECONDARIA;
    property TecnicoControllo: Integer read FTecnicoControllo write FTecnicoControllo;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
  end;
  
  TVerbaleCollaudoManichette = class
  private
    FCAP: string;
    FCONCLUSO: Boolean;
    FCodiceFiscale: string;
    FComune: string;
    FDestinatario: string;
    FEMail: string;
    FIndirizzo: string;
    FInformazioniCollaudo: string;
    FLunghezzaManichette: string;
    FNoteTecnico: string;
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
    property NoteTecnico: string read FNoteTecnico write FNoteTecnico;
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
  
  TBocchelli = class
  private
    [JSONName('ANNO_MANICHETTA')]
    FANNOMANICHETTA: Integer;
    [JSONName('ANNO_PRESSATURA')]
    FANNOPRESSATURA: Integer;
    [JSONName('ANNO_STARTUP')]
    FANNOSTARTUP: Integer;
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    FAnomaliaOnDownload: string;
    FAnomaliaRisolta: Boolean;
    FCHIAVE: Integer;
    FConsegnato: Boolean;
    FControllato: Boolean;
    [JSONName('DESCRIZIONE_ALTERNATIVA_INT')]
    FDESCRIZIONEALTERNATIVAINT: string;
    [SuppressZero]
    FDataControllo: TDateTime;
    [JSONName('ID_BOCCHELLO')]
    FIDBOCCHELLO: Integer;
    [JSONName('ID_NFC')]
    FIDNFC: string;
    [JSONName('LUNGHEZZA_MANICHETTA')]
    FLUNGHEZZAMANICHETTA: Integer;
    [JSONName('MESE_PRESSATURA')]
    FMESEPRESSATURA: Integer;
    [JSONName('MESE_STARTUP')]
    FMESESTARTUP: Integer;
    [JSONName('NOTE_TECNICO')]
    FNOTETECNICO: string;
    FOrarioControllo: string;
    FSTATO: string;
    [JSONName('TIPO_BOCCHELLO')]
    FTIPOBOCCHELLO: Integer;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    [JSONName('TIPO_LANCIA')]
    FTIPOLANCIA: Integer;
    FTecnicoControllo: Integer;
    FUBICAZIONE: string;
  published
    property ANNOMANICHETTA: Integer read FANNOMANICHETTA write FANNOMANICHETTA;
    property ANNOPRESSATURA: Integer read FANNOPRESSATURA write FANNOPRESSATURA;
    property ANNOSTARTUP: Integer read FANNOSTARTUP write FANNOSTARTUP;
    property ANOMALIA: string read FANOMALIA write FANOMALIA;
    property ANOMALIAAPPROVATA: Boolean read FANOMALIAAPPROVATA write FANOMALIAAPPROVATA;
    property AnomaliaOnDownload: string read FAnomaliaOnDownload write FAnomaliaOnDownload;
    property AnomaliaRisolta: Boolean read FAnomaliaRisolta write FAnomaliaRisolta;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Consegnato: Boolean read FConsegnato write FConsegnato;
    property Controllato: Boolean read FControllato write FControllato;
    property DESCRIZIONEALTERNATIVAINT: string read FDESCRIZIONEALTERNATIVAINT write FDESCRIZIONEALTERNATIVAINT;
    property DataControllo: TDateTime read FDataControllo write FDataControllo;
    property IDBOCCHELLO: Integer read FIDBOCCHELLO write FIDBOCCHELLO;
    property IDNFC: string read FIDNFC write FIDNFC;
    property LUNGHEZZAMANICHETTA: Integer read FLUNGHEZZAMANICHETTA write FLUNGHEZZAMANICHETTA;
    property MESEPRESSATURA: Integer read FMESEPRESSATURA write FMESEPRESSATURA;
    property MESESTARTUP: Integer read FMESESTARTUP write FMESESTARTUP;
    property NOTETECNICO: string read FNOTETECNICO write FNOTETECNICO;
    property OrarioControllo: string read FOrarioControllo write FOrarioControllo;
    property STATO: string read FSTATO write FSTATO;
    property TIPOBOCCHELLO: Integer read FTIPOBOCCHELLO write FTIPOBOCCHELLO;
    property TIPOINTERVENTO: string read FTIPOINTERVENTO write FTIPOINTERVENTO;
    property TIPOLANCIA: Integer read FTIPOLANCIA write FTIPOLANCIA;
    property TecnicoControllo: Integer read FTecnicoControllo write FTecnicoControllo;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
  end;
  
  TIdranti = class(TJsonDTO)
  private
    [JSONName('Bocchelli'), JSONMarshalled(False)]
    FBocchelliArray: TArray<TBocchelli>;
    [GenericListReflect]
    FBocchelli: TObjectList<TBocchelli>;
    FCHIAVE: Integer;
    FDESCRIZIONE: string;
    [JSONName('PROVA_DINAMICA')]
    FPROVADINAMICA: Integer;
    [JSONName('QUANDO_PROVA_DINAMICA')]
    FQUANDOPROVADINAMICA: string;
    FSTATO: string;
    FSuggerimentoLunghManichetta: string;
    FSuggerimentoTipiBocchelli: string;
    FTIPO: string;
    [JSONName('TIPO_ATTACCO_MOTOPOMPA')]
    FTIPOATTACCOMOTOPOMPA: Integer;
    FUBICAZIONE: string;
    [JSONName('UBICAZIONE_ATTACCO_MOTOPOMPA')]
    FUBICAZIONEATTACCOMOTOPOMPA: string;
    [JSONName('VALVOLA_INTERCETTAZIONE')]
    FVALVOLAINTERCETTAZIONE: string;
    FVerbaleCollaudoManichette: TVerbaleCollaudoManichette;
    function GetBocchelli: TObjectList<TBocchelli>;
  protected
    function GetAsJson: string; override;
  published
    property Bocchelli: TObjectList<TBocchelli> read GetBocchelli;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property DESCRIZIONE: string read FDESCRIZIONE write FDESCRIZIONE;
    property PROVADINAMICA: Integer read FPROVADINAMICA write FPROVADINAMICA;
    property QUANDOPROVADINAMICA: string read FQUANDOPROVADINAMICA write FQUANDOPROVADINAMICA;
    property STATO: string read FSTATO write FSTATO;
    property SuggerimentoLunghManichetta: string read FSuggerimentoLunghManichetta write FSuggerimentoLunghManichetta;
    property SuggerimentoTipiBocchelli: string read FSuggerimentoTipiBocchelli write FSuggerimentoTipiBocchelli;
    property TIPO: string read FTIPO write FTIPO;
    property TIPOATTACCOMOTOPOMPA: Integer read FTIPOATTACCOMOTOPOMPA write FTIPOATTACCOMOTOPOMPA;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
    property UBICAZIONEATTACCOMOTOPOMPA: string read FUBICAZIONEATTACCOMOTOPOMPA write FUBICAZIONEATTACCOMOTOPOMPA;
    property VALVOLAINTERCETTAZIONE: string read FVALVOLAINTERCETTAZIONE write FVALVOLAINTERCETTAZIONE;
    property VerbaleCollaudoManichette: TVerbaleCollaudoManichette read FVerbaleCollaudoManichette;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;
  
  TElementiElettrici = class
  private
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    FAnomaliaOnDownload: string;
    FAnomaliaRisolta: Boolean;
    FCHIAVE: Integer;
    FControllato: Boolean;
    [SuppressZero]
    FDataControllo: TDateTime;
    FMARCA: Integer;
    FMODELLO: string;
    FOrarioControllo: string;
    FPROGRESSIVO: Integer;
    FSTATO: string;
    FTIPO: Integer;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    FTecnicoControllo: Integer;
    FUBICAZIONE: string;
  published
    property ANOMALIA: string read FANOMALIA write FANOMALIA;
    property ANOMALIAAPPROVATA: Boolean read FANOMALIAAPPROVATA write FANOMALIAAPPROVATA;
    property AnomaliaOnDownload: string read FAnomaliaOnDownload write FAnomaliaOnDownload;
    property AnomaliaRisolta: Boolean read FAnomaliaRisolta write FAnomaliaRisolta;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Controllato: Boolean read FControllato write FControllato;
    property DataControllo: TDateTime read FDataControllo write FDataControllo;
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
    FCHIAVE: Integer;
    FDESCRIZIONE: string;
    [JSONName('ElementiElettrici'), JSONMarshalled(False)]
    FElementiElettriciArray: TArray<TElementiElettrici>;
    [GenericListReflect]
    FElementiElettrici: TObjectList<TElementiElettrici>;
    FPREZZO: Integer;
    FSTATO: string;
    [JSONName('TIPO_VISITA')]
    FTIPOVISITA: string;
    FUBICAZIONE: string;
    function GetElementiElettrici: TObjectList<TElementiElettrici>;
  protected
    function GetAsJson: string; override;
  published
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property DESCRIZIONE: string read FDESCRIZIONE write FDESCRIZIONE;
    property ElementiElettrici: TObjectList<TElementiElettrici> read GetElementiElettrici;
    property PREZZO: Integer read FPREZZO write FPREZZO;
    property STATO: string read FSTATO write FSTATO;
    property TIPOVISITA: string read FTIPOVISITA write FTIPOVISITA;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
  public
    destructor Destroy; override;
  end;
  
  TLuci = class
  private
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    FAUTONOMIA: Integer;
    FAnomaliaOnDownload: string;
    FAnomaliaRisolta: Boolean;
    FCHIAVE: Integer;
    FConsegnato: Boolean;
    FControllato: Boolean;
    [SuppressZero]
    FDataControllo: TDateTime;
    FMARCA: Integer;
    FMODELLO: string;
    [JSONName('NOTE_TECNICO')]
    FNOTETECNICO: string;
    FOrarioControllo: string;
    FPROGRESSIVO: Integer;
    FSTATO: string;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    [JSONName('TIPO_LUCE')]
    FTIPOLUCE: Integer;
    FTecnicoControllo: Integer;
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
    property DataControllo: TDateTime read FDataControllo write FDataControllo;
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
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    FAnomaliaOnDownload: string;
    FAnomaliaRisolta: Boolean;
    FCHIAVE: Integer;
    FControllato: Boolean;
    FDESCRIZIONE: string;
    [SuppressZero]
    FDataControllo: TDateTime;
    [JSONName('MARCA_CENTRALE')]
    FMARCACENTRALE: string;
    [JSONName('NOTE_TECNICO')]
    FNOTETECNICO: string;
    FNonControllato: Boolean;
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
    FSTATO: string;
    [SuppressZero, JSONName('TIPO_BATTERIE')]
    FTIPOBATTERIE: TDateTime;
    [JSONName('TIPO_CENTRALE')]
    FTIPOCENTRALE: string;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    [JSONName('TIPO_RILEVATORI')]
    FTIPORILEVATORI: string;
    FTecnicoControllo: Integer;
    FUBICAZIONE: string;
  published
    property ANOMALIA: string read FANOMALIA write FANOMALIA;
    property ANOMALIAAPPROVATA: Boolean read FANOMALIAAPPROVATA write FANOMALIAAPPROVATA;
    property AnomaliaOnDownload: string read FAnomaliaOnDownload write FAnomaliaOnDownload;
    property AnomaliaRisolta: Boolean read FAnomaliaRisolta write FAnomaliaRisolta;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Controllato: Boolean read FControllato write FControllato;
    property DESCRIZIONE: string read FDESCRIZIONE write FDESCRIZIONE;
    property DataControllo: TDateTime read FDataControllo write FDataControllo;
    property MARCACENTRALE: string read FMARCACENTRALE write FMARCACENTRALE;
    property NOTETECNICO: string read FNOTETECNICO write FNOTETECNICO;
    property NonControllato: Boolean read FNonControllato write FNonControllato;
    property OrarioControllo: string read FOrarioControllo write FOrarioControllo;
    property QUANTITABATTERIE: string read FQUANTITABATTERIE write FQUANTITABATTERIE;
    property QUANTITAPANNELLIOTTACUST: string read FQUANTITAPANNELLIOTTACUST write FQUANTITAPANNELLIOTTACUST;
    property QUANTITAPULSANTI: string read FQUANTITAPULSANTI write FQUANTITAPULSANTI;
    property QUANTITARILEVATORI: string read FQUANTITARILEVATORI write FQUANTITARILEVATORI;
    property QUANTITARILLINEARI: string read FQUANTITARILLINEARI write FQUANTITARILLINEARI;
    property STATO: string read FSTATO write FSTATO;
    property TIPOBATTERIE: TDateTime read FTIPOBATTERIE write FTIPOBATTERIE;
    property TIPOCENTRALE: string read FTIPOCENTRALE write FTIPOCENTRALE;
    property TIPOINTERVENTO: string read FTIPOINTERVENTO write FTIPOINTERVENTO;
    property TIPORILEVATORI: string read FTIPORILEVATORI write FTIPORILEVATORI;
    property TecnicoControllo: Integer read FTecnicoControllo write FTecnicoControllo;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
  end;
  
  TSprinkler = class
  private
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    FAnomaliaOnDownload: string;
    FAnomaliaRisolta: Boolean;
    FCHIAVE: Integer;
    FCOMPRESSORE: string;
    FControllato: Boolean;
    FDESCRIZIONE: string;
    [SuppressZero]
    FDataControllo: TDateTime;
    [JSONName('ID_NFC')]
    FIDNFC: string;
    FMARCA: string;
    FMODELLO: string;
    FNOTE: string;
    FNonControllato: Boolean;
    FOrarioControllo: string;
    [JSONName('QUANTITA_VALVOLE')]
    FQUANTITAVALVOLE: string;
    FSTATO: string;
    [JSONName('TARATURA_VALVOLE')]
    FTARATURAVALVOLE: Integer;
    FTIPO: string;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    [JSONName('TIPO_VISITA')]
    FTIPOVISITA: string;
    FTecnicoControllo: Integer;
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
    property DESCRIZIONE: string read FDESCRIZIONE write FDESCRIZIONE;
    property DataControllo: TDateTime read FDataControllo write FDataControllo;
    property IDNFC: string read FIDNFC write FIDNFC;
    property MARCA: string read FMARCA write FMARCA;
    property MODELLO: string read FMODELLO write FMODELLO;
    property NOTE: string read FNOTE write FNOTE;
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
    FANNOCOSTRUZIONE: Integer;
    FANOMALIA: string;
    [JSONName('ANOMALIA_APPROVATA')]
    FANOMALIAAPPROVATA: Boolean;
    FAnomaliaOnDownload: string;
    FAnomaliaRisolta: Boolean;
    FCHIAVE: Integer;
    FConsegnato: Boolean;
    FControllato: Boolean;
    [JSONName('DATA_STARTUP_COL')]
    FDATASTARTUPCOL: string;
    [JSONName('DATA_STARTUP_REV')]
    FDATASTARTUPREV: string;
    [SuppressZero]
    FDataControllo: TDateTime;
    [JSONName('ID_NFC')]
    FIDNFC: string;
    FMARCA: Integer;
    FMATRICOLA: string;
    [JSONName('NOTE_TECNICO')]
    FNOTETECNICO: string;
    FOrarioControllo: string;
    [JSONName('PERIODICITA_COLLAUDO')]
    FPERIODICITACOLLAUDO: Integer;
    [JSONName('PERIODICITA_REVISIONE')]
    FPERIODICITAREVISIONE: Integer;
    FPROGRESSIVO: Integer;
    FSTATO: string;
    [JSONName('TIPO_ESTINTORE')]
    FTIPOESTINTORE: Integer;
    [JSONName('TIPO_INTERVENTO')]
    FTIPOINTERVENTO: string;
    FTecnicoControllo: Integer;
    FUBICAZIONE: string;
  published
    property ANNOCOSTRUZIONE: Integer read FANNOCOSTRUZIONE write FANNOCOSTRUZIONE;
    property ANOMALIA: string read FANOMALIA write FANOMALIA;
    property ANOMALIAAPPROVATA: Boolean read FANOMALIAAPPROVATA write FANOMALIAAPPROVATA;
    property AnomaliaOnDownload: string read FAnomaliaOnDownload write FAnomaliaOnDownload;
    property AnomaliaRisolta: Boolean read FAnomaliaRisolta write FAnomaliaRisolta;
    property CHIAVE: Integer read FCHIAVE write FCHIAVE;
    property Consegnato: Boolean read FConsegnato write FConsegnato;
    property Controllato: Boolean read FControllato write FControllato;
    property DATASTARTUPCOL: string read FDATASTARTUPCOL write FDATASTARTUPCOL;
    property DATASTARTUPREV: string read FDATASTARTUPREV write FDATASTARTUPREV;
    property DataControllo: TDateTime read FDataControllo write FDataControllo;
    property IDNFC: string read FIDNFC write FIDNFC;
    property MARCA: Integer read FMARCA write FMARCA;
    property MATRICOLA: string read FMATRICOLA write FMATRICOLA;
    property NOTETECNICO: string read FNOTETECNICO write FNOTETECNICO;
    property OrarioControllo: string read FOrarioControllo write FOrarioControllo;
    property PERIODICITACOLLAUDO: Integer read FPERIODICITACOLLAUDO write FPERIODICITACOLLAUDO;
    property PERIODICITAREVISIONE: Integer read FPERIODICITAREVISIONE write FPERIODICITAREVISIONE;
    property PROGRESSIVO: Integer read FPROGRESSIVO write FPROGRESSIVO;
    property STATO: string read FSTATO write FSTATO;
    property TIPOESTINTORE: Integer read FTIPOESTINTORE write FTIPOESTINTORE;
    property TIPOINTERVENTO: string read FTIPOINTERVENTO write FTIPOINTERVENTO;
    property TecnicoControllo: Integer read FTecnicoControllo write FTecnicoControllo;
    property UBICAZIONE: string read FUBICAZIONE write FUBICAZIONE;
  end;
  
  TRoot = class(TJsonDTO)
  private
    FAccessori: TAccessori;
    FCAP: string;
    FCELLULARE: string;
    FCHIAVE: Integer;
    FCHIUSURA: string;
    [JSONName('COD_ENTE_SDI')]
    FCODENTESDI: string;
    FCOMUNE: string;
    FCONCLUSO: Boolean;
    [SuppressZero, JSONName('DATA_INTERVENTO')]
    FDATAINTERVENTO: TDateTime;
    [JSONName('DESCRIZIONE_CONTRATTO')]
    FDESCRIZIONECONTRATTO: string;
    FDataEliminazioneProdotto: string;
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
    [JSONName('Estintori'), JSONMarshalled(False)]
    FEstintoriArray: TArray<TEstintori>;
    [GenericListReflect]
    FEstintori: TObjectList<TEstintori>;
    [SuppressZero]
    FFDataDiscrepanza: TDateTime;
    FFORNITURA: Boolean;
    FFOrarioDiscrepanza: string;
    [JSONName('FUMI_CONTROLLATE')]
    FFUMICONTROLLATE: Integer;
    [JSONName('FUMI_NON_CONTROLLATE')]
    FFUMINONCONTROLLATE: Integer;
    [JSONName('FattureArretrate'), JSONMarshalled(False)]
    FFattureArretrateArray: TArray<TFattureArretrate>;
    [GenericListReflect]
    FFattureArretrate: TObjectList<TFattureArretrate>;
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
    FINDIRIZZO: string;
    [JSONName('Idranti'), JSONMarshalled(False)]
    FIdrantiArray: TArray<TIdranti>;
    [GenericListReflect]
    FIdranti: TObjectList<TIdranti>;
    [JSONName('ImpiantiElettrici'), JSONMarshalled(False)]
    FImpiantiElettriciArray: TArray<TImpiantiElettrici>;
    [GenericListReflect]
    FImpiantiElettrici: TObjectList<TImpiantiElettrici>;
    FInfoAppuntamento: string;
    FInvioTemporaneo: Boolean;
    [JSONName('LUCI_CONTROLLATE')]
    FLUCICONTROLLATE: Integer;
    [JSONName('LUCI_NON_CONTROLLATE')]
    FLUCINONCONTROLLATE: Integer;
    [JSONName('Luci'), JSONMarshalled(False)]
    FLuciArray: TArray<TLuci>;
    [GenericListReflect]
    FLuci: TObjectList<TLuci>;
    [JSONName('MAIL_INVIATE_AUTOMATICAMENTE')]
    FMAILINVIATEAUTOMATICAMENTE: Boolean;
    [JSONName('MESE_PRIMA_VISITA')]
    FMESEPRIMAVISITA: Integer;
    [JSONName('NOME_AMMINISTRATORE')]
    FNOMEAMMINISTRATORE: string;
    [JSONName('NOME_FILIALE')]
    FNOMEFILIALE: string;
    FNOTE: string;
    [JSONName('NOTE_DEL_TECNICO')]
    FNOTEDELTECNICO: string;
    [JSONName('NOTE_PER_IL_TECNICO')]
    FNOTEPERILTECNICO: string;
    [JSONName('NOTE_STAMPABILI')]
    FNOTESTAMPABILI: Boolean;
    FNonVisualizzareAlert: Boolean;
    [JSONName('ORARIO_APERTURA_AL1')]
    FORARIOAPERTURAAL1: string;
    [JSONName('ORARIO_APERTURA_AL2')]
    FORARIOAPERTURAAL2: string;
    [JSONName('ORARIO_APERTURA_DAL1')]
    FORARIOAPERTURADAL1: string;
    [JSONName('ORARIO_APERTURA_DAL2')]
    FORARIOAPERTURADAL2: string;
    FOraProgrammazioneIntervento: string;
    FPDFVerbaleCollaudoManichette: string;
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
    FPROVINCIA: string;
    [JSONName('Porte'), JSONMarshalled(False)]
    FPorteArray: TArray<TPorte>;
    [GenericListReflect]
    FPorte: TObjectList<TPorte>;
    [JSONName('RAGIONE_SOCIALE')]
    FRAGIONESOCIALE: string;
    [JSONName('REF_CELLULARE')]
    FREFCELLULARE: string;
    [JSONName('REF_TELEFONO')]
    FREFTELEFONO: string;
    FRESPONSABILE: Integer;
    [JSONName('RilevatoriFumo'), JSONMarshalled(False)]
    FRilevatoriFumoArray: TArray<TRilevatoriFumo>;
    [GenericListReflect]
    FRilevatoriFumo: TObjectList<TRilevatoriFumo>;
    [JSONName('SPRINKLER_CONTROLLATE')]
    FSPRINKLERCONTROLLATE: Integer;
    [JSONName('SPRINKLER_NON_CONTROLLATI')]
    FSPRINKLERNONCONTROLLATI: Integer;
    FSoloFatture: Boolean;
    [JSONName('Sprinkler'), JSONMarshalled(False)]
    FSprinklerArray: TArray<TSprinkler>;
    [GenericListReflect]
    FSprinkler: TObjectList<TSprinkler>;
    [JSONName('TECNICO_INTERVENTO')]
    FTECNICOINTERVENTO: Integer;
    FTELEFONO: string;
    FTITOLO: string;
    FTerminaCliente: Boolean;
    FZTmpInfo: TZTmpInfo;
    function GetEstintori: TObjectList<TEstintori>;
    function GetFattureArretrate: TObjectList<TFattureArretrate>;
    function GetIdranti: TObjectList<TIdranti>;
    function GetImpiantiElettrici: TObjectList<TImpiantiElettrici>;
    function GetLuci: TObjectList<TLuci>;
    function GetPorte: TObjectList<TPorte>;
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
    property COMUNE: string read FCOMUNE write FCOMUNE;
    property CONCLUSO: Boolean read FCONCLUSO write FCONCLUSO;
    property DATAINTERVENTO: TDateTime read FDATAINTERVENTO write FDATAINTERVENTO;
    property DESCRIZIONECONTRATTO: string read FDESCRIZIONECONTRATTO write FDESCRIZIONECONTRATTO;
    property DataEliminazioneProdotto: string read FDataEliminazioneProdotto write FDataEliminazioneProdotto;
    property DocumentoAnnullato: Boolean read FDocumentoAnnullato write FDocumentoAnnullato;
    property ELEMENTIELETTRICICONTROLLATI: Integer read FELEMENTIELETTRICICONTROLLATI write FELEMENTIELETTRICICONTROLLATI;
    property ELEMENTIELETTRICINONCONTROLLATI: Integer read FELEMENTIELETTRICINONCONTROLLATI write FELEMENTIELETTRICINONCONTROLLATI;
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
    property IDRANTICONSEGNATI: Integer read FIDRANTICONSEGNATI write FIDRANTICONSEGNATI;
    property IDRANTICONTROLLATE: Integer read FIDRANTICONTROLLATE write FIDRANTICONTROLLATE;
    property IDRANTINONCONTROLLATI: Integer read FIDRANTINONCONTROLLATI write FIDRANTINONCONTROLLATI;
    property IDRANTIRESTITUITI: Integer read FIDRANTIRESTITUITI write FIDRANTIRESTITUITI;
    property IDRANTIRITIRATI: Integer read FIDRANTIRITIRATI write FIDRANTIRITIRATI;
    property IDRANTISMALTITI: Integer read FIDRANTISMALTITI write FIDRANTISMALTITI;
    property INDIRIZZO: string read FINDIRIZZO write FINDIRIZZO;
    property Idranti: TObjectList<TIdranti> read GetIdranti;
    property ImpiantiElettrici: TObjectList<TImpiantiElettrici> read GetImpiantiElettrici;
    property InfoAppuntamento: string read FInfoAppuntamento write FInfoAppuntamento;
    property InvioTemporaneo: Boolean read FInvioTemporaneo write FInvioTemporaneo;
    property LUCICONTROLLATE: Integer read FLUCICONTROLLATE write FLUCICONTROLLATE;
    property LUCINONCONTROLLATE: Integer read FLUCINONCONTROLLATE write FLUCINONCONTROLLATE;
    property Luci: TObjectList<TLuci> read GetLuci;
    property MAILINVIATEAUTOMATICAMENTE: Boolean read FMAILINVIATEAUTOMATICAMENTE write FMAILINVIATEAUTOMATICAMENTE;
    property MESEPRIMAVISITA: Integer read FMESEPRIMAVISITA write FMESEPRIMAVISITA;
    property NOMEAMMINISTRATORE: string read FNOMEAMMINISTRATORE write FNOMEAMMINISTRATORE;
    property NOMEFILIALE: string read FNOMEFILIALE write FNOMEFILIALE;
    property NOTE: string read FNOTE write FNOTE;
    property NOTEDELTECNICO: string read FNOTEDELTECNICO write FNOTEDELTECNICO;
    property NOTEPERILTECNICO: string read FNOTEPERILTECNICO write FNOTEPERILTECNICO;
    property NOTESTAMPABILI: Boolean read FNOTESTAMPABILI write FNOTESTAMPABILI;
    property NonVisualizzareAlert: Boolean read FNonVisualizzareAlert write FNonVisualizzareAlert;
    property ORARIOAPERTURAAL1: string read FORARIOAPERTURAAL1 write FORARIOAPERTURAAL1;
    property ORARIOAPERTURAAL2: string read FORARIOAPERTURAAL2 write FORARIOAPERTURAAL2;
    property ORARIOAPERTURADAL1: string read FORARIOAPERTURADAL1 write FORARIOAPERTURADAL1;
    property ORARIOAPERTURADAL2: string read FORARIOAPERTURADAL2 write FORARIOAPERTURADAL2;
    property OraProgrammazioneIntervento: string read FOraProgrammazioneIntervento write FOraProgrammazioneIntervento;
    property PDFVerbaleCollaudoManichette: string read FPDFVerbaleCollaudoManichette write FPDFVerbaleCollaudoManichette;
    property PECAMMINISTRATORE: string read FPECAMMINISTRATORE write FPECAMMINISTRATORE;
    property PERIODICITACOLLAUDIIDRANTI: Integer read FPERIODICITACOLLAUDIIDRANTI write FPERIODICITACOLLAUDIIDRANTI;
    property PORTECONTROLLATE: Integer read FPORTECONTROLLATE write FPORTECONTROLLATE;
    property PORTENONCONTROLLATE: Integer read FPORTENONCONTROLLATE write FPORTENONCONTROLLATE;
    property PRESAINCARICO: Boolean read FPRESAINCARICO write FPRESAINCARICO;
    property PROVINCIA: string read FPROVINCIA write FPROVINCIA;
    property Porte: TObjectList<TPorte> read GetPorte;
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
  
implementation

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
  FVerbaleCollaudoManichette := TVerbaleCollaudoManichette.Create;
end;

destructor TIdranti.Destroy;
begin
  FVerbaleCollaudoManichette.Free;
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

{ TRoot }

constructor TRoot.Create;
begin
  inherited;
  FZTmpInfo := TZTmpInfo.Create;
  FAccessori := TAccessori.Create;
end;

destructor TRoot.Destroy;
begin
  FZTmpInfo.Free;
  FAccessori.Free;
  GetEstintori.Free;
  GetSprinkler.Free;
  GetRilevatoriFumo.Free;
  GetLuci.Free;
  GetImpiantiElettrici.Free;
  GetIdranti.Free;
  GetPorte.Free;
  GetFattureArretrate.Free;
  inherited;
end;

function TRoot.GetEstintori: TObjectList<TEstintori>;
begin
  Result := ObjectList<TEstintori>(FEstintori, FEstintoriArray);
end;

function TRoot.GetFattureArretrate: TObjectList<TFattureArretrate>;
begin
  Result := ObjectList<TFattureArretrate>(FFattureArretrate, FFattureArretrateArray);
end;

function TRoot.GetIdranti: TObjectList<TIdranti>;
begin
  Result := ObjectList<TIdranti>(FIdranti, FIdrantiArray);
end;

function TRoot.GetImpiantiElettrici: TObjectList<TImpiantiElettrici>;
begin
  Result := ObjectList<TImpiantiElettrici>(FImpiantiElettrici, FImpiantiElettriciArray);
end;

function TRoot.GetLuci: TObjectList<TLuci>;
begin
  Result := ObjectList<TLuci>(FLuci, FLuciArray);
end;

function TRoot.GetPorte: TObjectList<TPorte>;
begin
  Result := ObjectList<TPorte>(FPorte, FPorteArray);
end;

function TRoot.GetRilevatoriFumo: TObjectList<TRilevatoriFumo>;
begin
  Result := ObjectList<TRilevatoriFumo>(FRilevatoriFumo, FRilevatoriFumoArray);
end;

function TRoot.GetSprinkler: TObjectList<TSprinkler>;
begin
  Result := ObjectList<TSprinkler>(FSprinkler, FSprinklerArray);
end;

function TRoot.GetAsJson: string;
begin
  RefreshArray<TEstintori>(FEstintori, FEstintoriArray);
  RefreshArray<TFattureArretrate>(FFattureArretrate, FFattureArretrateArray);
  RefreshArray<TIdranti>(FIdranti, FIdrantiArray);
  RefreshArray<TImpiantiElettrici>(FImpiantiElettrici, FImpiantiElettriciArray);
  RefreshArray<TLuci>(FLuci, FLuciArray);
  RefreshArray<TPorte>(FPorte, FPorteArray);
  RefreshArray<TRilevatoriFumo>(FRilevatoriFumo, FRilevatoriFumoArray);
  RefreshArray<TSprinkler>(FSprinkler, FSprinklerArray);
  Result := inherited;
end;

end.
