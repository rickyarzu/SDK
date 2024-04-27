unit JOrm.Phoenix.Statini.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Phoenix.Statini.Custom.Intf;

// ------------------------------------------ Impl Record interface ----------------------------------

type
  TCustomStatino = class(TJanuaRecord, ICustomStatino)
  private
    FChiave: IJanuaField;
    FCliente: IJanuaField;
    FFiliale: IJanuaField;
    FTitolo: IJanuaField;
    FRagioneSociale: IJanuaField;
    FIndirizzo: IJanuaField;
    FComune: IJanuaField;
    FProvincia: IJanuaField;
    FCap: IJanuaField;
    FTelefono: IJanuaField;
    FCellulare: IJanuaField;
    FNote: IJanuaField;
    FOrarioAperturaDal1: IJanuaField;
    FOrarioAperturaDal2: IJanuaField;
    FOrarioAperturaAl1: IJanuaField;
    FOrarioAperturaAl2: IJanuaField;
    FChiusura: IJanuaField;
    FFattura: IJanuaField;
    FDataIntervento: IJanuaField;
    FGenerazioneAutomatica: IJanuaField;
    FTecnicoIntervento: IJanuaField;
    FScansione: IJanuaField;
    FRegistro: IJanuaField;
    FNotePerIlTecnico: IJanuaField;
    FSospeso: IJanuaField;
    FDaEsportareSulWeb: IJanuaField;
    FResponsabile: IJanuaField;
    FEsportatoSuMobile: IJanuaField;
    FNoteDalTecnico: IJanuaField;
    FJsonDaMobile: IJanuaField;
    FPdfStatino: IJanuaField;
    FRegistroIsPdf: IJanuaField;
    FVerbaleProvaDinamica: IJanuaField;
    FVerbaleManichette: IJanuaField;
    FPreventivo: IJanuaField;
    FIgnoraEvidenziazione: IJanuaField;
    FAnnullatoDaTablet: IJanuaField;
    FMobilewarnNuovaAttrezzatura: IJanuaField;
    FMobilewarnOrdinariaRitirata: IJanuaField;
    FMobilewarnNOrdinControllata: IJanuaField;
    FMobilewarnSmaltimento: IJanuaField;
    FStatoLavorazione: IJanuaField;
    FDataChiusuraDaServer: IJanuaField;
    FChiusuraExt: IJanuaField;
    FChiusuraStatino: IJanuaField;
    FMobilewarnNonEseguiti: IJanuaField;
    FPresaInCarico: IJanuaField;
    FFornitura: IJanuaField;
    FAppuntamentoData: IJanuaField;
    FAppuntamentoOra: IJanuaField;
    FStato: IJanuaField;
  protected
    function GetChiave: IJanuaField;
    function GetCliente: IJanuaField;
    function GetFiliale: IJanuaField;
    function GetTitolo: IJanuaField;
    function GetRagioneSociale: IJanuaField;
    function GetIndirizzo: IJanuaField;
    function GetComune: IJanuaField;
    function GetProvincia: IJanuaField;
    function GetCap: IJanuaField;
    function GetTelefono: IJanuaField;
    function GetCellulare: IJanuaField;
    function GetNote: IJanuaField;
    function GetOrarioAperturaDal1: IJanuaField;
    function GetOrarioAperturaDal2: IJanuaField;
    function GetOrarioAperturaAl1: IJanuaField;
    function GetOrarioAperturaAl2: IJanuaField;
    function GetChiusura: IJanuaField;
    function GetFattura: IJanuaField;
    function GetDataIntervento: IJanuaField;
    function GetGenerazioneAutomatica: IJanuaField;
    function GetTecnicoIntervento: IJanuaField;
    function GetScansione: IJanuaField;
    function GetRegistro: IJanuaField;
    function GetNotePerIlTecnico: IJanuaField;
    function GetSospeso: IJanuaField;
    function GetDaEsportareSulWeb: IJanuaField;
    function GetResponsabile: IJanuaField;
    function GetEsportatoSuMobile: IJanuaField;
    function GetNoteDalTecnico: IJanuaField;
    function GetJsonDaMobile: IJanuaField;
    function GetPdfStatino: IJanuaField;
    function GetRegistroIsPdf: IJanuaField;
    function GetVerbaleProvaDinamica: IJanuaField;
    function GetVerbaleManichette: IJanuaField;
    function GetPreventivo: IJanuaField;
    function GetIgnoraEvidenziazione: IJanuaField;
    function GetAnnullatoDaTablet: IJanuaField;
    function GetMobilewarnNuovaAttrezzatura: IJanuaField;
    function GetMobilewarnOrdinariaRitirata: IJanuaField;
    function GetMobilewarnNOrdinControllata: IJanuaField;
    function GetMobilewarnSmaltimento: IJanuaField;
    function GetStatoLavorazione: IJanuaField;
    function GetDataChiusuraDaServer: IJanuaField;
    function GetChiusuraExt: IJanuaField;
    function GetChiusuraStatino: IJanuaField;
    function GetMobilewarnNonEseguiti: IJanuaField;
    function GetPresaInCarico: IJanuaField;
    function GetFornitura: IJanuaField;
    function GetAppuntamentoData: IJanuaField;
    function GetAppuntamentoOra: IJanuaField;
    function GetStato: IJanuaField;
  public
    constructor Create; override;
    property Chiave: IJanuaField read GetChiave;
    property Cliente: IJanuaField read GetCliente;
    property Filiale: IJanuaField read GetFiliale;
    property Titolo: IJanuaField read GetTitolo;
    property RagioneSociale: IJanuaField read GetRagioneSociale;
    property Indirizzo: IJanuaField read GetIndirizzo;
    property Comune: IJanuaField read GetComune;
    property Provincia: IJanuaField read GetProvincia;
    property Cap: IJanuaField read GetCap;
    property Telefono: IJanuaField read GetTelefono;
    property Cellulare: IJanuaField read GetCellulare;
    property Note: IJanuaField read GetNote;
    property OrarioAperturaDal1: IJanuaField read GetOrarioAperturaDal1;
    property OrarioAperturaDal2: IJanuaField read GetOrarioAperturaDal2;
    property OrarioAperturaAl1: IJanuaField read GetOrarioAperturaAl1;
    property OrarioAperturaAl2: IJanuaField read GetOrarioAperturaAl2;
    property Chiusura: IJanuaField read GetChiusura;
    property Fattura: IJanuaField read GetFattura;
    property DataIntervento: IJanuaField read GetDataIntervento;
    property GenerazioneAutomatica: IJanuaField read GetGenerazioneAutomatica;
    property TecnicoIntervento: IJanuaField read GetTecnicoIntervento;
    property Scansione: IJanuaField read GetScansione;
    property Registro: IJanuaField read GetRegistro;
    property NotePerIlTecnico: IJanuaField read GetNotePerIlTecnico;
    property Sospeso: IJanuaField read GetSospeso;
    property DaEsportareSulWeb: IJanuaField read GetDaEsportareSulWeb;
    property Responsabile: IJanuaField read GetResponsabile;
    property EsportatoSuMobile: IJanuaField read GetEsportatoSuMobile;
    property NoteDalTecnico: IJanuaField read GetNoteDalTecnico;
    property JsonDaMobile: IJanuaField read GetJsonDaMobile;
    property PdfStatino: IJanuaField read GetPdfStatino;
    property RegistroIsPdf: IJanuaField read GetRegistroIsPdf;
    property VerbaleProvaDinamica: IJanuaField read GetVerbaleProvaDinamica;
    property VerbaleManichette: IJanuaField read GetVerbaleManichette;
    property Preventivo: IJanuaField read GetPreventivo;
    property IgnoraEvidenziazione: IJanuaField read GetIgnoraEvidenziazione;
    property AnnullatoDaTablet: IJanuaField read GetAnnullatoDaTablet;
    property MobilewarnNuovaAttrezzatura: IJanuaField read GetMobilewarnNuovaAttrezzatura;
    property MobilewarnOrdinariaRitirata: IJanuaField read GetMobilewarnOrdinariaRitirata;
    property MobilewarnNOrdinControllata: IJanuaField read GetMobilewarnNOrdinControllata;
    property MobilewarnSmaltimento: IJanuaField read GetMobilewarnSmaltimento;
    property StatoLavorazione: IJanuaField read GetStatoLavorazione;
    property DataChiusuraDaServer: IJanuaField read GetDataChiusuraDaServer;
    property ChiusuraExt: IJanuaField read GetChiusuraExt;
    property ChiusuraStatino: IJanuaField read GetChiusuraStatino;
    property MobilewarnNonEseguiti: IJanuaField read GetMobilewarnNonEseguiti;
    property PresaInCarico: IJanuaField read GetPresaInCarico;
    property Fornitura: IJanuaField read GetFornitura;
    property AppuntamentoData: IJanuaField read GetAppuntamentoData;
    property AppuntamentoOra: IJanuaField read GetAppuntamentoOra;
    property Stato: IJanuaField read GetStato;

  end;

  TCustomStatini = class(TJanuaRecordSet, IJanuaRecordSet, ICustomStatini)
  private
    function GetChiave: IJanuaField;
    function GetCliente: IJanuaField;
    function GetFiliale: IJanuaField;
    function GetTitolo: IJanuaField;
    function GetRagioneSociale: IJanuaField;
    function GetIndirizzo: IJanuaField;
    function GetComune: IJanuaField;
    function GetProvincia: IJanuaField;
    function GetCap: IJanuaField;
    function GetTelefono: IJanuaField;
    function GetCellulare: IJanuaField;
    function GetNote: IJanuaField;
    function GetOrarioAperturaDal1: IJanuaField;
    function GetOrarioAperturaDal2: IJanuaField;
    function GetOrarioAperturaAl1: IJanuaField;
    function GetOrarioAperturaAl2: IJanuaField;
    function GetChiusura: IJanuaField;
    function GetFattura: IJanuaField;
    function GetDataIntervento: IJanuaField;
    function GetGenerazioneAutomatica: IJanuaField;
    function GetTecnicoIntervento: IJanuaField;
    function GetScansione: IJanuaField;
    function GetRegistro: IJanuaField;
    function GetNotePerIlTecnico: IJanuaField;
    function GetSospeso: IJanuaField;
    function GetDaEsportareSulWeb: IJanuaField;
    function GetResponsabile: IJanuaField;
    function GetEsportatoSuMobile: IJanuaField;
    function GetNoteDalTecnico: IJanuaField;
    function GetJsonDaMobile: IJanuaField;
    function GetPdfStatino: IJanuaField;
    function GetRegistroIsPdf: IJanuaField;
    function GetVerbaleProvaDinamica: IJanuaField;
    function GetVerbaleManichette: IJanuaField;
    function GetPreventivo: IJanuaField;
    function GetIgnoraEvidenziazione: IJanuaField;
    function GetAnnullatoDaTablet: IJanuaField;
    function GetMobilewarnNuovaAttrezzatura: IJanuaField;
    function GetMobilewarnOrdinariaRitirata: IJanuaField;
    function GetMobilewarnNOrdinControllata: IJanuaField;
    function GetMobilewarnSmaltimento: IJanuaField;
    function GetStatoLavorazione: IJanuaField;
    function GetDataChiusuraDaServer: IJanuaField;
    function GetChiusuraExt: IJanuaField;
    function GetChiusuraStatino: IJanuaField;
    function GetMobilewarnNonEseguiti: IJanuaField;
    function GetPresaInCarico: IJanuaField;
    function GetFornitura: IJanuaField;
    function GetAppuntamentoData: IJanuaField;
    function GetAppuntamentoOra: IJanuaField;
    function GetStato: IJanuaField;
  protected
    function GetCustomStatino: ICustomStatino;
    property CustomStatino: ICustomStatino read GetCustomStatino;
  public
    constructor Create; override;
    property Chiave: IJanuaField read GetChiave;
    property Cliente: IJanuaField read GetCliente;
    property Filiale: IJanuaField read GetFiliale;
    property Titolo: IJanuaField read GetTitolo;
    property RagioneSociale: IJanuaField read GetRagioneSociale;
    property Indirizzo: IJanuaField read GetIndirizzo;
    property Comune: IJanuaField read GetComune;
    property Provincia: IJanuaField read GetProvincia;
    property Cap: IJanuaField read GetCap;
    property Telefono: IJanuaField read GetTelefono;
    property Cellulare: IJanuaField read GetCellulare;
    property Note: IJanuaField read GetNote;
    property OrarioAperturaDal1: IJanuaField read GetOrarioAperturaDal1;
    property OrarioAperturaDal2: IJanuaField read GetOrarioAperturaDal2;
    property OrarioAperturaAl1: IJanuaField read GetOrarioAperturaAl1;
    property OrarioAperturaAl2: IJanuaField read GetOrarioAperturaAl2;
    property Chiusura: IJanuaField read GetChiusura;
    property Fattura: IJanuaField read GetFattura;
    property DataIntervento: IJanuaField read GetDataIntervento;
    property GenerazioneAutomatica: IJanuaField read GetGenerazioneAutomatica;
    property TecnicoIntervento: IJanuaField read GetTecnicoIntervento;
    property Scansione: IJanuaField read GetScansione;
    property Registro: IJanuaField read GetRegistro;
    property NotePerIlTecnico: IJanuaField read GetNotePerIlTecnico;
    property Sospeso: IJanuaField read GetSospeso;
    property DaEsportareSulWeb: IJanuaField read GetDaEsportareSulWeb;
    property Responsabile: IJanuaField read GetResponsabile;
    property EsportatoSuMobile: IJanuaField read GetEsportatoSuMobile;
    property NoteDalTecnico: IJanuaField read GetNoteDalTecnico;
    property JsonDaMobile: IJanuaField read GetJsonDaMobile;
    property PdfStatino: IJanuaField read GetPdfStatino;
    property RegistroIsPdf: IJanuaField read GetRegistroIsPdf;
    property VerbaleProvaDinamica: IJanuaField read GetVerbaleProvaDinamica;
    property VerbaleManichette: IJanuaField read GetVerbaleManichette;
    property Preventivo: IJanuaField read GetPreventivo;
    property IgnoraEvidenziazione: IJanuaField read GetIgnoraEvidenziazione;
    property AnnullatoDaTablet: IJanuaField read GetAnnullatoDaTablet;
    property MobilewarnNuovaAttrezzatura: IJanuaField read GetMobilewarnNuovaAttrezzatura;
    property MobilewarnOrdinariaRitirata: IJanuaField read GetMobilewarnOrdinariaRitirata;
    property MobilewarnNOrdinControllata: IJanuaField read GetMobilewarnNOrdinControllata;
    property MobilewarnSmaltimento: IJanuaField read GetMobilewarnSmaltimento;
    property StatoLavorazione: IJanuaField read GetStatoLavorazione;
    property DataChiusuraDaServer: IJanuaField read GetDataChiusuraDaServer;
    property ChiusuraExt: IJanuaField read GetChiusuraExt;
    property ChiusuraStatino: IJanuaField read GetChiusuraStatino;
    property MobilewarnNonEseguiti: IJanuaField read GetMobilewarnNonEseguiti;
    property PresaInCarico: IJanuaField read GetPresaInCarico;
    property Fornitura: IJanuaField read GetFornitura;
    property AppuntamentoData: IJanuaField read GetAppuntamentoData;
    property AppuntamentoOra: IJanuaField read GetAppuntamentoOra;
    property Stato: IJanuaField read GetStato;
  end;

implementation

// ------------------------------------------ Impl TStatino -------------------------------

{ TCustomStatino }

constructor TCustomStatino.Create;
begin
  inherited;
  FChiave := AddCreateField(TJanuaFieldType.jptInteger, 'chiave', 'chiave');
  FCliente := AddCreateField(TJanuaFieldType.jptInteger, 'cliente', 'cliente');
  FFiliale := AddCreateField(TJanuaFieldType.jptInteger, 'filiale', 'filiale');
  FTitolo := AddCreateField(TJanuaFieldType.jptString, 'titolo', 'titolo');
  FRagioneSociale := AddCreateField(TJanuaFieldType.jptString, 'ragione_sociale', 'ragione_sociale');
  FIndirizzo := AddCreateField(TJanuaFieldType.jptString, 'indirizzo', 'indirizzo');
  FComune := AddCreateField(TJanuaFieldType.jptString, 'comune', 'comune');
  FProvincia := AddCreateField(TJanuaFieldType.jptString, 'provincia', 'provincia');
  FCap := AddCreateField(TJanuaFieldType.jptString, 'cap', 'cap');
  FTelefono := AddCreateField(TJanuaFieldType.jptString, 'telefono', 'telefono');
  FCellulare := AddCreateField(TJanuaFieldType.jptString, 'cellulare', 'cellulare');
  FNote := AddCreateField(TJanuaFieldType.jptBlob, 'note', 'note');
  FOrarioAperturaDal1 := AddCreateField(TJanuaFieldType.jptDateTime, 'orario_apertura_dal1',
    'orario_apertura_dal1');
  FOrarioAperturaDal2 := AddCreateField(TJanuaFieldType.jptDateTime, 'orario_apertura_dal2',
    'orario_apertura_dal2');
  FOrarioAperturaAl1 := AddCreateField(TJanuaFieldType.jptDateTime, 'orario_apertura_al1',
    'orario_apertura_al1');
  FOrarioAperturaAl2 := AddCreateField(TJanuaFieldType.jptDateTime, 'orario_apertura_al2',
    'orario_apertura_al2');
  FChiusura := AddCreateField(TJanuaFieldType.jptString, 'chiusura', 'chiusura');
  FFattura := AddCreateField(TJanuaFieldType.jptInteger, 'fattura', 'fattura');
  FDataIntervento := AddCreateField(TJanuaFieldType.jptDate, 'data_intervento', 'data_intervento');
  FGenerazioneAutomatica := AddCreateField(TJanuaFieldType.jptInteger, 'generazione_automatica',
    'generazione_automatica');
  FTecnicoIntervento := AddCreateField(TJanuaFieldType.jptInteger, 'tecnico_intervento',
    'tecnico_intervento');
  FScansione := AddCreateField(TJanuaFieldType.jptBlob, 'scansione', 'scansione');
  FRegistro := AddCreateField(TJanuaFieldType.jptBlob, 'registro', 'registro');
  FNotePerIlTecnico := AddCreateField(TJanuaFieldType.jptBlob, 'note_per_il_tecnico', 'note_per_il_tecnico');
  FSospeso := AddCreateField(TJanuaFieldType.jptString, 'sospeso', 'sospeso');
  FDaEsportareSulWeb := AddCreateField(TJanuaFieldType.jptString, 'da_esportare_sul_web',
    'da_esportare_sul_web');
  FResponsabile := AddCreateField(TJanuaFieldType.jptInteger, 'responsabile', 'responsabile');
  FEsportatoSuMobile := AddCreateField(TJanuaFieldType.jptString, 'esportato_su_mobile',
    'esportato_su_mobile');
  FNoteDalTecnico := AddCreateField(TJanuaFieldType.jptBlob, 'note_dal_tecnico', 'note_dal_tecnico');
  FJsonDaMobile := AddCreateField(TJanuaFieldType.jptBlob, 'json_da_mobile', 'json_da_mobile');
  FPdfStatino := AddCreateField(TJanuaFieldType.jptBlob, 'pdf_statino', 'pdf_statino');
  FRegistroIsPdf := AddCreateField(TJanuaFieldType.jptString, 'registro_is_pdf', 'registro_is_pdf');
  FVerbaleProvaDinamica := AddCreateField(TJanuaFieldType.jptBlob, 'verbale_prova_dinamica',
    'verbale_prova_dinamica');
  FVerbaleManichette := AddCreateField(TJanuaFieldType.jptBlob, 'verbale_manichette', 'verbale_manichette');
  FPreventivo := AddCreateField(TJanuaFieldType.jptInteger, 'preventivo', 'preventivo');
  FIgnoraEvidenziazione := AddCreateField(TJanuaFieldType.jptString, 'ignora_evidenziazione',
    'ignora_evidenziazione');
  FAnnullatoDaTablet := AddCreateField(TJanuaFieldType.jptString, 'annullato_da_tablet',
    'annullato_da_tablet');
  FMobilewarnNuovaAttrezzatura := AddCreateField(TJanuaFieldType.jptString, 'mobilewarn_nuova_attrezzatura',
    'mobilewarn_nuova_attrezzatura');
  FMobilewarnOrdinariaRitirata := AddCreateField(TJanuaFieldType.jptString, 'mobilewarn_ordinaria_ritirata',
    'mobilewarn_ordinaria_ritirata');
  FMobilewarnNOrdinControllata := AddCreateField(TJanuaFieldType.jptString, 'mobilewarn_n_ordin_controllata',
    'mobilewarn_n_ordin_controllata');
  FMobilewarnSmaltimento := AddCreateField(TJanuaFieldType.jptString, 'mobilewarn_smaltimento',
    'mobilewarn_smaltimento');
  FStatoLavorazione := AddCreateField(TJanuaFieldType.jptString, 'stato_lavorazione', 'stato_lavorazione');
  FDataChiusuraDaServer := AddCreateField(TJanuaFieldType.jptDate, 'data_chiusura_da_server',
    'data_chiusura_da_server');
  FChiusuraExt := AddCreateField(TJanuaFieldType.jptString, 'chiusura_ext', 'chiusura_ext');
  FChiusuraStatino := AddCreateField(TJanuaFieldType.jptBlob, 'chiusura_statino', 'chiusura_statino');
  FMobilewarnNonEseguiti := AddCreateField(TJanuaFieldType.jptString, 'mobilewarn_non_eseguiti',
    'mobilewarn_non_eseguiti');
  FPresaInCarico := AddCreateField(TJanuaFieldType.jptString, 'presa_in_carico', 'presa_in_carico');
  FFornitura := AddCreateField(TJanuaFieldType.jptString, 'fornitura', 'fornitura');
  FAppuntamentoData := AddCreateField(TJanuaFieldType.jptDate, 'appuntamento_data', 'appuntamento_data');
  FAppuntamentoOra := AddCreateField(TJanuaFieldType.jptDateTime, 'appuntamento_ora', 'appuntamento_ora');
  FStato := AddCreateField(TJanuaFieldType.jptSmallint, 'stato', 'stato');
end;

function TCustomStatino.GetChiave: IJanuaField;
begin
  Result := FChiave;
end;

function TCustomStatino.GetCliente: IJanuaField;
begin
  Result := FCliente;
end;

function TCustomStatino.GetFiliale: IJanuaField;
begin
  Result := FFiliale;
end;

function TCustomStatino.GetTitolo: IJanuaField;
begin
  Result := FTitolo;
end;

function TCustomStatino.GetRagioneSociale: IJanuaField;
begin
  Result := FRagioneSociale;
end;

function TCustomStatino.GetIndirizzo: IJanuaField;
begin
  Result := FIndirizzo;
end;

function TCustomStatino.GetComune: IJanuaField;
begin
  Result := FComune;
end;

function TCustomStatino.GetProvincia: IJanuaField;
begin
  Result := FProvincia;
end;

function TCustomStatino.GetCap: IJanuaField;
begin
  Result := FCap;
end;

function TCustomStatino.GetTelefono: IJanuaField;
begin
  Result := FTelefono;
end;

function TCustomStatino.GetCellulare: IJanuaField;
begin
  Result := FCellulare;
end;

function TCustomStatino.GetNote: IJanuaField;
begin
  Result := FNote;
end;

function TCustomStatino.GetOrarioAperturaDal1: IJanuaField;
begin
  Result := FOrarioAperturaDal1;
end;

function TCustomStatino.GetOrarioAperturaDal2: IJanuaField;
begin
  Result := FOrarioAperturaDal2;
end;

function TCustomStatino.GetOrarioAperturaAl1: IJanuaField;
begin
  Result := FOrarioAperturaAl1;
end;

function TCustomStatino.GetOrarioAperturaAl2: IJanuaField;
begin
  Result := FOrarioAperturaAl2;
end;

function TCustomStatino.GetChiusura: IJanuaField;
begin
  Result := FChiusura;
end;

function TCustomStatino.GetFattura: IJanuaField;
begin
  Result := FFattura;
end;

function TCustomStatino.GetDataIntervento: IJanuaField;
begin
  Result := FDataIntervento;
end;

function TCustomStatino.GetGenerazioneAutomatica: IJanuaField;
begin
  Result := FGenerazioneAutomatica;
end;

function TCustomStatino.GetTecnicoIntervento: IJanuaField;
begin
  Result := FTecnicoIntervento;
end;

function TCustomStatino.GetScansione: IJanuaField;
begin
  Result := FScansione;
end;

function TCustomStatino.GetRegistro: IJanuaField;
begin
  Result := FRegistro;
end;

function TCustomStatino.GetNotePerIlTecnico: IJanuaField;
begin
  Result := FNotePerIlTecnico;
end;

function TCustomStatino.GetSospeso: IJanuaField;
begin
  Result := FSospeso;
end;

function TCustomStatino.GetDaEsportareSulWeb: IJanuaField;
begin
  Result := FDaEsportareSulWeb;
end;

function TCustomStatino.GetResponsabile: IJanuaField;
begin
  Result := FResponsabile;
end;

function TCustomStatino.GetEsportatoSuMobile: IJanuaField;
begin
  Result := FEsportatoSuMobile;
end;

function TCustomStatino.GetNoteDalTecnico: IJanuaField;
begin
  Result := FNoteDalTecnico;
end;

function TCustomStatino.GetJsonDaMobile: IJanuaField;
begin
  Result := FJsonDaMobile;
end;

function TCustomStatino.GetPdfStatino: IJanuaField;
begin
  Result := FPdfStatino;
end;

function TCustomStatino.GetRegistroIsPdf: IJanuaField;
begin
  Result := FRegistroIsPdf;
end;

function TCustomStatino.GetVerbaleProvaDinamica: IJanuaField;
begin
  Result := FVerbaleProvaDinamica;
end;

function TCustomStatino.GetVerbaleManichette: IJanuaField;
begin
  Result := FVerbaleManichette;
end;

function TCustomStatino.GetPreventivo: IJanuaField;
begin
  Result := FPreventivo;
end;

function TCustomStatino.GetIgnoraEvidenziazione: IJanuaField;
begin
  Result := FIgnoraEvidenziazione;
end;

function TCustomStatino.GetAnnullatoDaTablet: IJanuaField;
begin
  Result := FAnnullatoDaTablet;
end;

function TCustomStatino.GetMobilewarnNuovaAttrezzatura: IJanuaField;
begin
  Result := FMobilewarnNuovaAttrezzatura;
end;

function TCustomStatino.GetMobilewarnOrdinariaRitirata: IJanuaField;
begin
  Result := FMobilewarnOrdinariaRitirata;
end;

function TCustomStatino.GetMobilewarnNOrdinControllata: IJanuaField;
begin
  Result := FMobilewarnNOrdinControllata;
end;

function TCustomStatino.GetMobilewarnSmaltimento: IJanuaField;
begin
  Result := FMobilewarnSmaltimento;
end;

function TCustomStatino.GetStatoLavorazione: IJanuaField;
begin
  Result := FStatoLavorazione;
end;

function TCustomStatino.GetDataChiusuraDaServer: IJanuaField;
begin
  Result := FDataChiusuraDaServer;
end;

function TCustomStatino.GetChiusuraExt: IJanuaField;
begin
  Result := FChiusuraExt;
end;

function TCustomStatino.GetChiusuraStatino: IJanuaField;
begin
  Result := FChiusuraStatino;
end;

function TCustomStatino.GetMobilewarnNonEseguiti: IJanuaField;
begin
  Result := FMobilewarnNonEseguiti;
end;

function TCustomStatino.GetPresaInCarico: IJanuaField;
begin
  Result := FPresaInCarico;
end;

function TCustomStatino.GetFornitura: IJanuaField;
begin
  Result := FFornitura;
end;

function TCustomStatino.GetAppuntamentoData: IJanuaField;
begin
  Result := FAppuntamentoData;
end;

function TCustomStatino.GetAppuntamentoOra: IJanuaField;
begin
  Result := FAppuntamentoOra;
end;

function TCustomStatino.GetStato: IJanuaField;
begin
  Result := FStato;
end;

{ TCustomStatini }
constructor TCustomStatini.Create;
begin
  inherited;
end;

function TCustomStatini.GetChiave: IJanuaField;
begin
  Result := self.CustomStatino.Chiave;
end;

function TCustomStatini.GetCliente: IJanuaField;
begin
  Result := self.CustomStatino.Cliente;
end;

function TCustomStatini.GetFiliale: IJanuaField;
begin
  Result := self.CustomStatino.Filiale;
end;

function TCustomStatini.GetTitolo: IJanuaField;
begin
  Result := self.CustomStatino.Titolo;
end;

function TCustomStatini.GetRagioneSociale: IJanuaField;
begin
  Result := self.CustomStatino.RagioneSociale;
end;

function TCustomStatini.GetIndirizzo: IJanuaField;
begin
  Result := self.CustomStatino.Indirizzo;
end;

function TCustomStatini.GetComune: IJanuaField;
begin
  Result := self.CustomStatino.Comune;
end;

function TCustomStatini.GetProvincia: IJanuaField;
begin
  Result := self.CustomStatino.Provincia;
end;

function TCustomStatini.GetCap: IJanuaField;
begin
  Result := self.CustomStatino.Cap;
end;

function TCustomStatini.GetTelefono: IJanuaField;
begin
  Result := self.CustomStatino.Telefono;
end;

function TCustomStatini.GetCellulare: IJanuaField;
begin
  Result := self.CustomStatino.Cellulare;
end;

function TCustomStatini.GetNote: IJanuaField;
begin
  Result := self.CustomStatino.Note;
end;

function TCustomStatini.GetOrarioAperturaDal1: IJanuaField;
begin
  Result := self.CustomStatino.OrarioAperturaDal1;
end;

function TCustomStatini.GetOrarioAperturaDal2: IJanuaField;
begin
  Result := self.CustomStatino.OrarioAperturaDal2;
end;

function TCustomStatini.GetOrarioAperturaAl1: IJanuaField;
begin
  Result := self.CustomStatino.OrarioAperturaAl1;
end;

function TCustomStatini.GetOrarioAperturaAl2: IJanuaField;
begin
  Result := self.CustomStatino.OrarioAperturaAl2;
end;

function TCustomStatini.GetChiusura: IJanuaField;
begin
  Result := self.CustomStatino.Chiusura;
end;

function TCustomStatini.GetFattura: IJanuaField;
begin
  Result := self.CustomStatino.Fattura;
end;

function TCustomStatini.GetDataIntervento: IJanuaField;
begin
  Result := self.CustomStatino.DataIntervento;
end;

function TCustomStatini.GetGenerazioneAutomatica: IJanuaField;
begin
  Result := self.CustomStatino.GenerazioneAutomatica;
end;

function TCustomStatini.GetTecnicoIntervento: IJanuaField;
begin
  Result := self.CustomStatino.TecnicoIntervento;
end;

function TCustomStatini.GetScansione: IJanuaField;
begin
  Result := self.CustomStatino.Scansione;
end;

function TCustomStatini.GetRegistro: IJanuaField;
begin
  Result := self.CustomStatino.Registro;
end;

function TCustomStatini.GetNotePerIlTecnico: IJanuaField;
begin
  Result := self.CustomStatino.NotePerIlTecnico;
end;

function TCustomStatini.GetSospeso: IJanuaField;
begin
  Result := self.CustomStatino.Sospeso;
end;

function TCustomStatini.GetDaEsportareSulWeb: IJanuaField;
begin
  Result := self.CustomStatino.DaEsportareSulWeb;
end;

function TCustomStatini.GetResponsabile: IJanuaField;
begin
  Result := self.CustomStatino.Responsabile;
end;

function TCustomStatini.GetEsportatoSuMobile: IJanuaField;
begin
  Result := self.CustomStatino.EsportatoSuMobile;
end;

function TCustomStatini.GetNoteDalTecnico: IJanuaField;
begin
  Result := self.CustomStatino.NoteDalTecnico;
end;

function TCustomStatini.GetJsonDaMobile: IJanuaField;
begin
  Result := self.CustomStatino.JsonDaMobile;
end;

function TCustomStatini.GetPdfStatino: IJanuaField;
begin
  Result := self.CustomStatino.PdfStatino;
end;

function TCustomStatini.GetRegistroIsPdf: IJanuaField;
begin
  Result := self.CustomStatino.RegistroIsPdf;
end;

function TCustomStatini.GetVerbaleProvaDinamica: IJanuaField;
begin
  Result := self.CustomStatino.VerbaleProvaDinamica;
end;

function TCustomStatini.GetVerbaleManichette: IJanuaField;
begin
  Result := self.CustomStatino.VerbaleManichette;
end;

function TCustomStatini.GetPreventivo: IJanuaField;
begin
  Result := self.CustomStatino.Preventivo;
end;

function TCustomStatini.GetIgnoraEvidenziazione: IJanuaField;
begin
  Result := self.CustomStatino.IgnoraEvidenziazione;
end;

function TCustomStatini.GetAnnullatoDaTablet: IJanuaField;
begin
  Result := self.CustomStatino.AnnullatoDaTablet;
end;

function TCustomStatini.GetMobilewarnNuovaAttrezzatura: IJanuaField;
begin
  Result := self.CustomStatino.MobilewarnNuovaAttrezzatura;
end;

function TCustomStatini.GetMobilewarnOrdinariaRitirata: IJanuaField;
begin
  Result := self.CustomStatino.MobilewarnOrdinariaRitirata;
end;

function TCustomStatini.GetMobilewarnNOrdinControllata: IJanuaField;
begin
  Result := self.CustomStatino.MobilewarnNOrdinControllata;
end;

function TCustomStatini.GetMobilewarnSmaltimento: IJanuaField;
begin
  Result := self.CustomStatino.MobilewarnSmaltimento;
end;

function TCustomStatini.GetStatoLavorazione: IJanuaField;
begin
  Result := self.CustomStatino.StatoLavorazione;
end;

function TCustomStatini.GetDataChiusuraDaServer: IJanuaField;
begin
  Result := self.CustomStatino.DataChiusuraDaServer;
end;

function TCustomStatini.GetChiusuraExt: IJanuaField;
begin
  Result := self.CustomStatino.ChiusuraExt;
end;

function TCustomStatini.GetChiusuraStatino: IJanuaField;
begin
  Result := self.CustomStatino.ChiusuraStatino;
end;

function TCustomStatini.GetMobilewarnNonEseguiti: IJanuaField;
begin
  Result := self.CustomStatino.MobilewarnNonEseguiti;
end;

function TCustomStatini.GetPresaInCarico: IJanuaField;
begin
  Result := self.CustomStatino.PresaInCarico;
end;

function TCustomStatini.GetFornitura: IJanuaField;
begin
  Result := self.CustomStatino.Fornitura;
end;

function TCustomStatini.GetAppuntamentoData: IJanuaField;
begin
  Result := self.CustomStatino.AppuntamentoData;
end;

function TCustomStatini.GetAppuntamentoOra: IJanuaField;
begin
  Result := self.CustomStatino.AppuntamentoOra;
end;

function TCustomStatini.GetStato: IJanuaField;
begin
  Result := self.CustomStatino.Stato;
end;

function TCustomStatini.GetCustomStatino: ICustomStatino;
begin
  Result := FRecord as ICustomStatino;
end;

end.
