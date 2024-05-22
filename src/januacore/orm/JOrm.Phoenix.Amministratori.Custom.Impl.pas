unit JOrm.Phoenix.Amministratori.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Phoenix.Amministratori.Custom.Intf;

//------------------------------------------ Impl Record interface ----------------------------------

type
  TCustomAmministratore = class(TJanuaRecord, ICustomAmministratore)
  private
    FChiave: IJanuaField;
    FRagioneSociale: IJanuaField;
    FPartitaIva: IJanuaField;
    FCodiceFiscale: IJanuaField;
    FEmail: IJanuaField;
    FIndirizzoSpedizione: IJanuaField;
    FCapSpedizione: IJanuaField;
    FProvinciaSpedizione: IJanuaField;
    FTitolo: IJanuaField;
    FAmministratoreCondominio: IJanuaField;
    FIndirizzoFatturazione: IJanuaField;
    FCapFatturazione: IJanuaField;
    FProvinciaFatturazione: IJanuaField;
    FCondPagamento: IJanuaField;
    FEsenteIva: IJanuaField;
    FSospeso: IJanuaField;
    FEsportaSulWeb: IJanuaField;
    FDaEsportareSulWeb: IJanuaField;
    FPec: IJanuaField;
    FFatturaElettronica: IJanuaField;
    FCodEnteSdi: IJanuaField;
    FNazioneFatturazione: IJanuaField;
    FNazioneEmPiva: IJanuaField;
    FEsigibilitaIva: IJanuaField;
    FNoteInFattura: IJanuaField;
    FAttivo: IJanuaField;
    FEntePubblico: IJanuaField;
    FIdWebApplication: IJanuaField;
    FEmail2: IJanuaField;
    FEmail3: IJanuaField;
    FEmail4: IJanuaField;
    FNaturaIva: IJanuaField;
    FComuneFatturazione: IJanuaField;
    FTelefono1: IJanuaField;
    FCellulare: IJanuaField;
    FTelefono2: IJanuaField;
    FFax: IJanuaField;
    FComuneSpedizione: IJanuaField;
    FBancaAppoggio: IJanuaField;
    FAbi: IJanuaField;
    FCab: IJanuaField;
    FNrCivico: IJanuaField;
  protected
    function GetChiave: IJanuaField;
    function GetRagioneSociale: IJanuaField;
    function GetPartitaIva: IJanuaField;
    function GetCodiceFiscale: IJanuaField;
    function GetEmail: IJanuaField;
    function GetIndirizzoSpedizione: IJanuaField;
    function GetCapSpedizione: IJanuaField;
    function GetProvinciaSpedizione: IJanuaField;
    function GetTitolo: IJanuaField;
    function GetAmministratoreCondominio: IJanuaField;
    function GetIndirizzoFatturazione: IJanuaField;
    function GetCapFatturazione: IJanuaField;
    function GetProvinciaFatturazione: IJanuaField;
    function GetCondPagamento: IJanuaField;
    function GetEsenteIva: IJanuaField;
    function GetSospeso: IJanuaField;
    function GetEsportaSulWeb: IJanuaField;
    function GetDaEsportareSulWeb: IJanuaField;
    function GetPec: IJanuaField;
    function GetFatturaElettronica: IJanuaField;
    function GetCodEnteSdi: IJanuaField;
    function GetNazioneFatturazione: IJanuaField;
    function GetNazioneEmPiva: IJanuaField;
    function GetEsigibilitaIva: IJanuaField;
    function GetNoteInFattura: IJanuaField;
    function GetAttivo: IJanuaField;
    function GetEntePubblico: IJanuaField;
    function GetIdWebApplication: IJanuaField;
    function GetEmail2: IJanuaField;
    function GetEmail3: IJanuaField;
    function GetEmail4: IJanuaField;
    function GetNaturaIva: IJanuaField;
    function GetComuneFatturazione: IJanuaField;
    function GetTelefono1: IJanuaField;
    function GetCellulare: IJanuaField;
    function GetTelefono2: IJanuaField;
    function GetFax: IJanuaField;
    function GetComuneSpedizione: IJanuaField;
    function GetBancaAppoggio: IJanuaField;
    function GetAbi: IJanuaField;
    function GetCab: IJanuaField;
    function GetNrCivico: IJanuaField;
  public
    constructor Create; override;
    property Chiave: IJanuaField read GetChiave;
    property RagioneSociale: IJanuaField read GetRagioneSociale;
    property PartitaIva: IJanuaField read GetPartitaIva;
    property CodiceFiscale: IJanuaField read GetCodiceFiscale;
    property Email: IJanuaField read GetEmail;
    property IndirizzoSpedizione: IJanuaField read GetIndirizzoSpedizione;
    property CapSpedizione: IJanuaField read GetCapSpedizione;
    property ProvinciaSpedizione: IJanuaField read GetProvinciaSpedizione;
    property Titolo: IJanuaField read GetTitolo;
    property AmministratoreCondominio: IJanuaField read GetAmministratoreCondominio;
    property IndirizzoFatturazione: IJanuaField read GetIndirizzoFatturazione;
    property CapFatturazione: IJanuaField read GetCapFatturazione;
    property ProvinciaFatturazione: IJanuaField read GetProvinciaFatturazione;
    property CondPagamento: IJanuaField read GetCondPagamento;
    property EsenteIva: IJanuaField read GetEsenteIva;
    property Sospeso: IJanuaField read GetSospeso;
    property EsportaSulWeb: IJanuaField read GetEsportaSulWeb;
    property DaEsportareSulWeb: IJanuaField read GetDaEsportareSulWeb;
    property Pec: IJanuaField read GetPec;
    property FatturaElettronica: IJanuaField read GetFatturaElettronica;
    property CodEnteSdi: IJanuaField read GetCodEnteSdi;
    property NazioneFatturazione: IJanuaField read GetNazioneFatturazione;
    property NazioneEmPiva: IJanuaField read GetNazioneEmPiva;
    property EsigibilitaIva: IJanuaField read GetEsigibilitaIva;
    property NoteInFattura: IJanuaField read GetNoteInFattura;
    property Attivo: IJanuaField read GetAttivo;
    property EntePubblico: IJanuaField read GetEntePubblico;
    property IdWebApplication: IJanuaField read GetIdWebApplication;
    property Email2: IJanuaField read GetEmail2;
    property Email3: IJanuaField read GetEmail3;
    property Email4: IJanuaField read GetEmail4;
    property NaturaIva: IJanuaField read GetNaturaIva;
    property ComuneFatturazione: IJanuaField read GetComuneFatturazione;
    property Telefono1: IJanuaField read GetTelefono1;
    property Cellulare: IJanuaField read GetCellulare;
    property Telefono2: IJanuaField read GetTelefono2;
    property Fax: IJanuaField read GetFax;
    property ComuneSpedizione: IJanuaField read GetComuneSpedizione;
    property BancaAppoggio: IJanuaField read GetBancaAppoggio;
    property Abi: IJanuaField read GetAbi;
    property Cab: IJanuaField read GetCab;
    property NrCivico: IJanuaField read GetNrCivico;

  end;

  TCustomAmministratori = class(TJanuaRecordSet, IJanuaRecordSet, ICustomAmministratori)
  private
    function GetChiave: IJanuaField;
    function GetRagioneSociale: IJanuaField;
    function GetPartitaIva: IJanuaField;
    function GetCodiceFiscale: IJanuaField;
    function GetEmail: IJanuaField;
    function GetIndirizzoSpedizione: IJanuaField;
    function GetCapSpedizione: IJanuaField;
    function GetProvinciaSpedizione: IJanuaField;
    function GetTitolo: IJanuaField;
    function GetAmministratoreCondominio: IJanuaField;
    function GetIndirizzoFatturazione: IJanuaField;
    function GetCapFatturazione: IJanuaField;
    function GetProvinciaFatturazione: IJanuaField;
    function GetCondPagamento: IJanuaField;
    function GetEsenteIva: IJanuaField;
    function GetSospeso: IJanuaField;
    function GetEsportaSulWeb: IJanuaField;
    function GetDaEsportareSulWeb: IJanuaField;
    function GetPec: IJanuaField;
    function GetFatturaElettronica: IJanuaField;
    function GetCodEnteSdi: IJanuaField;
    function GetNazioneFatturazione: IJanuaField;
    function GetNazioneEmPiva: IJanuaField;
    function GetEsigibilitaIva: IJanuaField;
    function GetNoteInFattura: IJanuaField;
    function GetAttivo: IJanuaField;
    function GetEntePubblico: IJanuaField;
    function GetIdWebApplication: IJanuaField;
    function GetEmail2: IJanuaField;
    function GetEmail3: IJanuaField;
    function GetEmail4: IJanuaField;
    function GetNaturaIva: IJanuaField;
    function GetComuneFatturazione: IJanuaField;
    function GetTelefono1: IJanuaField;
    function GetCellulare: IJanuaField;
    function GetTelefono2: IJanuaField;
    function GetFax: IJanuaField;
    function GetComuneSpedizione: IJanuaField;
    function GetBancaAppoggio: IJanuaField;
    function GetAbi: IJanuaField;
    function GetCab: IJanuaField;
    function GetNrCivico: IJanuaField;
  protected
    function GetCustomAmministratore: ICustomAmministratore;
    property CustomAmministratore: ICustomAmministratore read GetCustomAmministratore;
  public
    constructor Create; override;
    property Chiave: IJanuaField read GetChiave;
    property RagioneSociale: IJanuaField read GetRagioneSociale;
    property PartitaIva: IJanuaField read GetPartitaIva;
    property CodiceFiscale: IJanuaField read GetCodiceFiscale;
    property Email: IJanuaField read GetEmail;
    property IndirizzoSpedizione: IJanuaField read GetIndirizzoSpedizione;
    property CapSpedizione: IJanuaField read GetCapSpedizione;
    property ProvinciaSpedizione: IJanuaField read GetProvinciaSpedizione;
    property Titolo: IJanuaField read GetTitolo;
    property AmministratoreCondominio: IJanuaField read GetAmministratoreCondominio;
    property IndirizzoFatturazione: IJanuaField read GetIndirizzoFatturazione;
    property CapFatturazione: IJanuaField read GetCapFatturazione;
    property ProvinciaFatturazione: IJanuaField read GetProvinciaFatturazione;
    property CondPagamento: IJanuaField read GetCondPagamento;
    property EsenteIva: IJanuaField read GetEsenteIva;
    property Sospeso: IJanuaField read GetSospeso;
    property EsportaSulWeb: IJanuaField read GetEsportaSulWeb;
    property DaEsportareSulWeb: IJanuaField read GetDaEsportareSulWeb;
    property Pec: IJanuaField read GetPec;
    property FatturaElettronica: IJanuaField read GetFatturaElettronica;
    property CodEnteSdi: IJanuaField read GetCodEnteSdi;
    property NazioneFatturazione: IJanuaField read GetNazioneFatturazione;
    property NazioneEmPiva: IJanuaField read GetNazioneEmPiva;
    property EsigibilitaIva: IJanuaField read GetEsigibilitaIva;
    property NoteInFattura: IJanuaField read GetNoteInFattura;
    property Attivo: IJanuaField read GetAttivo;
    property EntePubblico: IJanuaField read GetEntePubblico;
    property IdWebApplication: IJanuaField read GetIdWebApplication;
    property Email2: IJanuaField read GetEmail2;
    property Email3: IJanuaField read GetEmail3;
    property Email4: IJanuaField read GetEmail4;
    property NaturaIva: IJanuaField read GetNaturaIva;
    property ComuneFatturazione: IJanuaField read GetComuneFatturazione;
    property Telefono1: IJanuaField read GetTelefono1;
    property Cellulare: IJanuaField read GetCellulare;
    property Telefono2: IJanuaField read GetTelefono2;
    property Fax: IJanuaField read GetFax;
    property ComuneSpedizione: IJanuaField read GetComuneSpedizione;
    property BancaAppoggio: IJanuaField read GetBancaAppoggio;
    property Abi: IJanuaField read GetAbi;
    property Cab: IJanuaField read GetCab;
    property NrCivico: IJanuaField read GetNrCivico;
  end;


implementation

//------------------------------------------ Impl TAmministratore -------------------------------

{TCustomAmministratore}

  constructor TCustomAmministratore.Create;
  begin
    inherited;
    FChiave:= AddCreateField(TJanuaFieldType.jptInteger, 'chiave', 'chiave');
    FRagioneSociale:= AddCreateField(TJanuaFieldType.jptString, 'ragione_sociale', 'ragione_sociale');
    FPartitaIva:= AddCreateField(TJanuaFieldType.jptString, 'partita_iva', 'partita_iva');
    FCodiceFiscale:= AddCreateField(TJanuaFieldType.jptString, 'codice_fiscale', 'codice_fiscale');
    FEmail:= AddCreateField(TJanuaFieldType.jptString, 'email', 'email');
    FIndirizzoSpedizione:= AddCreateField(TJanuaFieldType.jptString, 'indirizzo_spedizione', 'indirizzo_spedizione');
    FCapSpedizione:= AddCreateField(TJanuaFieldType.jptString, 'cap_spedizione', 'cap_spedizione');
    FProvinciaSpedizione:= AddCreateField(TJanuaFieldType.jptString, 'provincia_spedizione', 'provincia_spedizione');
    FTitolo:= AddCreateField(TJanuaFieldType.jptString, 'titolo', 'titolo');
    FAmministratoreCondominio:= AddCreateField(TJanuaFieldType.jptString, 'amministratore_condominio', 'amministratore_condominio');
    FIndirizzoFatturazione:= AddCreateField(TJanuaFieldType.jptString, 'indirizzo_fatturazione', 'indirizzo_fatturazione');
    FCapFatturazione:= AddCreateField(TJanuaFieldType.jptString, 'cap_fatturazione', 'cap_fatturazione');
    FProvinciaFatturazione:= AddCreateField(TJanuaFieldType.jptString, 'provincia_fatturazione', 'provincia_fatturazione');
    FCondPagamento:= AddCreateField(TJanuaFieldType.jptInteger, 'cond_pagamento', 'cond_pagamento');
    FEsenteIva:= AddCreateField(TJanuaFieldType.jptString, 'esente_iva', 'esente_iva');
    FSospeso:= AddCreateField(TJanuaFieldType.jptString, 'sospeso', 'sospeso');
    FEsportaSulWeb:= AddCreateField(TJanuaFieldType.jptString, 'esporta_sul_web', 'esporta_sul_web');
    FDaEsportareSulWeb:= AddCreateField(TJanuaFieldType.jptString, 'da_esportare_sul_web', 'da_esportare_sul_web');
    FPec:= AddCreateField(TJanuaFieldType.jptString, 'pec', 'pec');
    FFatturaElettronica:= AddCreateField(TJanuaFieldType.jptString, 'fattura_elettronica', 'fattura_elettronica');
    FCodEnteSdi:= AddCreateField(TJanuaFieldType.jptString, 'cod_ente_sdi', 'cod_ente_sdi');
    FNazioneFatturazione:= AddCreateField(TJanuaFieldType.jptString, 'nazione_fatturazione', 'nazione_fatturazione');
    FNazioneEmPiva:= AddCreateField(TJanuaFieldType.jptString, 'nazione_em_piva', 'nazione_em_piva');
    FEsigibilitaIva:= AddCreateField(TJanuaFieldType.jptString, 'esigibilita_iva', 'esigibilita_iva');
    FNoteInFattura:= AddCreateField(TJanuaFieldType.jptString, 'note_in_fattura', 'note_in_fattura');
    FAttivo:= AddCreateField(TJanuaFieldType.jptString, 'attivo', 'attivo');
    FEntePubblico:= AddCreateField(TJanuaFieldType.jptString, 'ente_pubblico', 'ente_pubblico');
    FIdWebApplication:= AddCreateField(TJanuaFieldType.jptString, 'id_web_application', 'id_web_application');
    FEmail2:= AddCreateField(TJanuaFieldType.jptString, 'email2', 'email2');
    FEmail3:= AddCreateField(TJanuaFieldType.jptString, 'email3', 'email3');
    FEmail4:= AddCreateField(TJanuaFieldType.jptString, 'email4', 'email4');
    FNaturaIva:= AddCreateField(TJanuaFieldType.jptSmallint, 'natura_iva', 'natura_iva');
    FComuneFatturazione:= AddCreateField(TJanuaFieldType.jptString, 'comune_fatturazione', 'comune_fatturazione');
    FTelefono1:= AddCreateField(TJanuaFieldType.jptString, 'telefono1', 'telefono1');
    FCellulare:= AddCreateField(TJanuaFieldType.jptString, 'cellulare', 'cellulare');
    FTelefono2:= AddCreateField(TJanuaFieldType.jptString, 'telefono2', 'telefono2');
    FFax:= AddCreateField(TJanuaFieldType.jptString, 'fax', 'fax');
    FComuneSpedizione:= AddCreateField(TJanuaFieldType.jptString, 'comune_spedizione', 'comune_spedizione');
    FBancaAppoggio:= AddCreateField(TJanuaFieldType.jptString, 'banca_appoggio', 'banca_appoggio');
    FAbi:= AddCreateField(TJanuaFieldType.jptString, 'abi', 'abi');
    FCab:= AddCreateField(TJanuaFieldType.jptString, 'cab', 'cab');
    FNrCivico:= AddCreateField(TJanuaFieldType.jptString, 'nr_civico', 'nr_civico');
  end;

  function TCustomAmministratore.GetChiave: IJanuaField;
  begin
    Result := FChiave;
  end;

  function TCustomAmministratore.GetRagioneSociale: IJanuaField;
  begin
    Result := FRagioneSociale;
  end;

  function TCustomAmministratore.GetPartitaIva: IJanuaField;
  begin
    Result := FPartitaIva;
  end;

  function TCustomAmministratore.GetCodiceFiscale: IJanuaField;
  begin
    Result := FCodiceFiscale;
  end;

  function TCustomAmministratore.GetEmail: IJanuaField;
  begin
    Result := FEmail;
  end;

  function TCustomAmministratore.GetIndirizzoSpedizione: IJanuaField;
  begin
    Result := FIndirizzoSpedizione;
  end;

  function TCustomAmministratore.GetCapSpedizione: IJanuaField;
  begin
    Result := FCapSpedizione;
  end;

  function TCustomAmministratore.GetProvinciaSpedizione: IJanuaField;
  begin
    Result := FProvinciaSpedizione;
  end;

  function TCustomAmministratore.GetTitolo: IJanuaField;
  begin
    Result := FTitolo;
  end;

  function TCustomAmministratore.GetAmministratoreCondominio: IJanuaField;
  begin
    Result := FAmministratoreCondominio;
  end;

  function TCustomAmministratore.GetIndirizzoFatturazione: IJanuaField;
  begin
    Result := FIndirizzoFatturazione;
  end;

  function TCustomAmministratore.GetCapFatturazione: IJanuaField;
  begin
    Result := FCapFatturazione;
  end;

  function TCustomAmministratore.GetProvinciaFatturazione: IJanuaField;
  begin
    Result := FProvinciaFatturazione;
  end;

  function TCustomAmministratore.GetCondPagamento: IJanuaField;
  begin
    Result := FCondPagamento;
  end;

  function TCustomAmministratore.GetEsenteIva: IJanuaField;
  begin
    Result := FEsenteIva;
  end;

  function TCustomAmministratore.GetSospeso: IJanuaField;
  begin
    Result := FSospeso;
  end;

  function TCustomAmministratore.GetEsportaSulWeb: IJanuaField;
  begin
    Result := FEsportaSulWeb;
  end;

  function TCustomAmministratore.GetDaEsportareSulWeb: IJanuaField;
  begin
    Result := FDaEsportareSulWeb;
  end;

  function TCustomAmministratore.GetPec: IJanuaField;
  begin
    Result := FPec;
  end;

  function TCustomAmministratore.GetFatturaElettronica: IJanuaField;
  begin
    Result := FFatturaElettronica;
  end;

  function TCustomAmministratore.GetCodEnteSdi: IJanuaField;
  begin
    Result := FCodEnteSdi;
  end;

  function TCustomAmministratore.GetNazioneFatturazione: IJanuaField;
  begin
    Result := FNazioneFatturazione;
  end;

  function TCustomAmministratore.GetNazioneEmPiva: IJanuaField;
  begin
    Result := FNazioneEmPiva;
  end;

  function TCustomAmministratore.GetEsigibilitaIva: IJanuaField;
  begin
    Result := FEsigibilitaIva;
  end;

  function TCustomAmministratore.GetNoteInFattura: IJanuaField;
  begin
    Result := FNoteInFattura;
  end;

  function TCustomAmministratore.GetAttivo: IJanuaField;
  begin
    Result := FAttivo;
  end;

  function TCustomAmministratore.GetEntePubblico: IJanuaField;
  begin
    Result := FEntePubblico;
  end;

  function TCustomAmministratore.GetIdWebApplication: IJanuaField;
  begin
    Result := FIdWebApplication;
  end;

  function TCustomAmministratore.GetEmail2: IJanuaField;
  begin
    Result := FEmail2;
  end;

  function TCustomAmministratore.GetEmail3: IJanuaField;
  begin
    Result := FEmail3;
  end;

  function TCustomAmministratore.GetEmail4: IJanuaField;
  begin
    Result := FEmail4;
  end;

  function TCustomAmministratore.GetNaturaIva: IJanuaField;
  begin
    Result := FNaturaIva;
  end;

  function TCustomAmministratore.GetComuneFatturazione: IJanuaField;
  begin
    Result := FComuneFatturazione;
  end;

  function TCustomAmministratore.GetTelefono1: IJanuaField;
  begin
    Result := FTelefono1;
  end;

  function TCustomAmministratore.GetCellulare: IJanuaField;
  begin
    Result := FCellulare;
  end;

  function TCustomAmministratore.GetTelefono2: IJanuaField;
  begin
    Result := FTelefono2;
  end;

  function TCustomAmministratore.GetFax: IJanuaField;
  begin
    Result := FFax;
  end;

  function TCustomAmministratore.GetComuneSpedizione: IJanuaField;
  begin
    Result := FComuneSpedizione;
  end;

  function TCustomAmministratore.GetBancaAppoggio: IJanuaField;
  begin
    Result := FBancaAppoggio;
  end;

  function TCustomAmministratore.GetAbi: IJanuaField;
  begin
    Result := FAbi;
  end;

  function TCustomAmministratore.GetCab: IJanuaField;
  begin
    Result := FCab;
  end;

  function TCustomAmministratore.GetNrCivico: IJanuaField;
  begin
    Result := FNrCivico;
  end;

  { TCustomAmministratori }
  constructor TCustomAmministratori.Create;
  begin
    inherited;
  end;

  function TCustomAmministratori.GetChiave: IJanuaField;
  begin
    Result := self.CustomAmministratore.Chiave;
  end;

  function TCustomAmministratori.GetRagioneSociale: IJanuaField;
  begin
    Result := self.CustomAmministratore.RagioneSociale;
  end;

  function TCustomAmministratori.GetPartitaIva: IJanuaField;
  begin
    Result := self.CustomAmministratore.PartitaIva;
  end;

  function TCustomAmministratori.GetCodiceFiscale: IJanuaField;
  begin
    Result := self.CustomAmministratore.CodiceFiscale;
  end;

  function TCustomAmministratori.GetEmail: IJanuaField;
  begin
    Result := self.CustomAmministratore.Email;
  end;

  function TCustomAmministratori.GetIndirizzoSpedizione: IJanuaField;
  begin
    Result := self.CustomAmministratore.IndirizzoSpedizione;
  end;

  function TCustomAmministratori.GetCapSpedizione: IJanuaField;
  begin
    Result := self.CustomAmministratore.CapSpedizione;
  end;

  function TCustomAmministratori.GetProvinciaSpedizione: IJanuaField;
  begin
    Result := self.CustomAmministratore.ProvinciaSpedizione;
  end;

  function TCustomAmministratori.GetTitolo: IJanuaField;
  begin
    Result := self.CustomAmministratore.Titolo;
  end;

  function TCustomAmministratori.GetAmministratoreCondominio: IJanuaField;
  begin
    Result := self.CustomAmministratore.AmministratoreCondominio;
  end;

  function TCustomAmministratori.GetIndirizzoFatturazione: IJanuaField;
  begin
    Result := self.CustomAmministratore.IndirizzoFatturazione;
  end;

  function TCustomAmministratori.GetCapFatturazione: IJanuaField;
  begin
    Result := self.CustomAmministratore.CapFatturazione;
  end;

  function TCustomAmministratori.GetProvinciaFatturazione: IJanuaField;
  begin
    Result := self.CustomAmministratore.ProvinciaFatturazione;
  end;

  function TCustomAmministratori.GetCondPagamento: IJanuaField;
  begin
    Result := self.CustomAmministratore.CondPagamento;
  end;

  function TCustomAmministratori.GetEsenteIva: IJanuaField;
  begin
    Result := self.CustomAmministratore.EsenteIva;
  end;

  function TCustomAmministratori.GetSospeso: IJanuaField;
  begin
    Result := self.CustomAmministratore.Sospeso;
  end;

  function TCustomAmministratori.GetEsportaSulWeb: IJanuaField;
  begin
    Result := self.CustomAmministratore.EsportaSulWeb;
  end;

  function TCustomAmministratori.GetDaEsportareSulWeb: IJanuaField;
  begin
    Result := self.CustomAmministratore.DaEsportareSulWeb;
  end;

  function TCustomAmministratori.GetPec: IJanuaField;
  begin
    Result := self.CustomAmministratore.Pec;
  end;

  function TCustomAmministratori.GetFatturaElettronica: IJanuaField;
  begin
    Result := self.CustomAmministratore.FatturaElettronica;
  end;

  function TCustomAmministratori.GetCodEnteSdi: IJanuaField;
  begin
    Result := self.CustomAmministratore.CodEnteSdi;
  end;

  function TCustomAmministratori.GetNazioneFatturazione: IJanuaField;
  begin
    Result := self.CustomAmministratore.NazioneFatturazione;
  end;

  function TCustomAmministratori.GetNazioneEmPiva: IJanuaField;
  begin
    Result := self.CustomAmministratore.NazioneEmPiva;
  end;

  function TCustomAmministratori.GetEsigibilitaIva: IJanuaField;
  begin
    Result := self.CustomAmministratore.EsigibilitaIva;
  end;

  function TCustomAmministratori.GetNoteInFattura: IJanuaField;
  begin
    Result := self.CustomAmministratore.NoteInFattura;
  end;

  function TCustomAmministratori.GetAttivo: IJanuaField;
  begin
    Result := self.CustomAmministratore.Attivo;
  end;

  function TCustomAmministratori.GetEntePubblico: IJanuaField;
  begin
    Result := self.CustomAmministratore.EntePubblico;
  end;

  function TCustomAmministratori.GetIdWebApplication: IJanuaField;
  begin
    Result := self.CustomAmministratore.IdWebApplication;
  end;

  function TCustomAmministratori.GetEmail2: IJanuaField;
  begin
    Result := self.CustomAmministratore.Email2;
  end;

  function TCustomAmministratori.GetEmail3: IJanuaField;
  begin
    Result := self.CustomAmministratore.Email3;
  end;

  function TCustomAmministratori.GetEmail4: IJanuaField;
  begin
    Result := self.CustomAmministratore.Email4;
  end;

  function TCustomAmministratori.GetNaturaIva: IJanuaField;
  begin
    Result := self.CustomAmministratore.NaturaIva;
  end;

  function TCustomAmministratori.GetComuneFatturazione: IJanuaField;
  begin
    Result := self.CustomAmministratore.ComuneFatturazione;
  end;

  function TCustomAmministratori.GetTelefono1: IJanuaField;
  begin
    Result := self.CustomAmministratore.Telefono1;
  end;

  function TCustomAmministratori.GetCellulare: IJanuaField;
  begin
    Result := self.CustomAmministratore.Cellulare;
  end;

  function TCustomAmministratori.GetTelefono2: IJanuaField;
  begin
    Result := self.CustomAmministratore.Telefono2;
  end;

  function TCustomAmministratori.GetFax: IJanuaField;
  begin
    Result := self.CustomAmministratore.Fax;
  end;

  function TCustomAmministratori.GetComuneSpedizione: IJanuaField;
  begin
    Result := self.CustomAmministratore.ComuneSpedizione;
  end;

  function TCustomAmministratori.GetBancaAppoggio: IJanuaField;
  begin
    Result := self.CustomAmministratore.BancaAppoggio;
  end;

  function TCustomAmministratori.GetAbi: IJanuaField;
  begin
    Result := self.CustomAmministratore.Abi;
  end;

  function TCustomAmministratori.GetCab: IJanuaField;
  begin
    Result := self.CustomAmministratore.Cab;
  end;

  function TCustomAmministratori.GetNrCivico: IJanuaField;
  begin
    Result := self.CustomAmministratore.NrCivico;
  end;

  function TCustomAmministratori.GetCustomAmministratore: ICustomAmministratore;
  begin
    Result := FRecord as ICustomAmministratore;
  end;

end.
