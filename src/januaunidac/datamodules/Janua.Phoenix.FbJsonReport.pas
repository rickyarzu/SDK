unit Janua.Phoenix.FbJsonReport;

interface

uses
  System.SysUtils, System.Classes, Janua.Phoenix.dmIBModel, Janua.Interbase.dmModel, UniProvider,
  InterBaseUniProvider, Data.DB, DBAccess, Uni, Janua.Unidac.Connection, MemDS;

type
  TdmFbPhoenixJsonReport = class(TdmJanuaInterbaseModel)
    qryStatini: TUniQuery;
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
    { Private declarations }
  public
    { Public declarations }
    procedure ElaborateJson(const aStatino: integer);
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

uses Phoenix.Json.Statini, Janua.Core.Json, System.StrUtils;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmFbPhoenixJsonReport }

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
  FOriginal := Janua.Core.Json.JsonPretty(lJson);
  lJson := ReplacePhoenixJson(lJson);
  FJsonPretty := Janua.Core.Json.JsonPretty(lJson);

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
  FJsonFinal := Janua.Core.Json.JsonPretty(FJsonFinal);

  FJsonCompatible := ReplaceJsonToPhoenix(FJsonFinal);

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

end.
