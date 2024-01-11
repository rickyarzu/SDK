CREATE SCHEMA phoenix
    AUTHORIZATION ergo;
	
CREATE  TABLE phoenix."ACQUISTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"FORNITORE"          varchar(60)   ,
	"DATA_ACQUISTO"      date  NOT NULL ,
	"NOTE"               text   ,
	"SOSPESO"            char(1)   ,
	CONSTRAINT "INTEG_260" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."CARICO_MAGAZZINO" ( 
	"CHIAVE"             integer  NOT NULL ,
	"FORNITORE"          varchar(255)   ,
	"DATA"               date  NOT NULL ,
	"NOTE"               text   ,
	"SOSPESO"            char(1)   ,
	"CHIAVE_MOBILE"      integer   ,
	CONSTRAINT "PK_CARICO_MAGAZZINO" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."CASSE_PREVIDENZIALI_FATT_PASS" ( 
	"CHIAVE"             integer  NOT NULL ,
	"FATTURA"            integer   ,
	"TIPO"               smallint   ,
	"ALIQUOTA"           smallint   ,
	"IMPORTO"            integer   ,
	"IVA"                smallint   ,
	CONSTRAINT "PK_CASSE_PREVIDENZIALI_FATT_PAS" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."CAT_ESTINTORI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	"CLASSE_FUOCO"       varchar(30)   ,
	"PREZZO_COLLAUDO"    integer   ,
	"PREZZO_REVISIONE"   integer   ,
	"PERIODICITA_COLLAUDO" smallint   ,
	"PERIODICITA_REVISIONE" smallint   ,
	"SENZA_SCADENZA"     char(1)   ,
	"CO2"                char(1)   ,
	"PREZZO_SOSTITUZIONE" integer   ,
	"PREZZO_SMALTIMENTO" integer   ,
	"SOSPESO"            char(1)   ,
	"DESCR_COMPATTA"     varchar(255)   ,
	CONSTRAINT "PK_CAT_ESTINTORI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."CFG_FATTURA_ELETTRONICA" ( 
	"PAESE_TRASMITTENTE" varchar(255)   ,
	"PIVA_TRASMITTENTE"  varchar(255)   ,
	"NAZIONE_EM_PIVA_PRESTATORE" varchar(255)   ,
	"PARTITA_IVA_PRESTATORE" varchar(255)   ,
	"DENOMINAZIONE_PRESTATORE" varchar(255)   ,
	"COGNOME_PRESTATORE" varchar(255)   ,
	"REGIME_FISCALE_PRESTATORE" varchar(255)   ,
	"INDIRIZZO_SEDE_PRESTATORE" varchar(255)   ,
	"NR_CIVICO_SEDE_PRESTATORE" varchar(255)   ,
	"CAP_SEDE_PRESTATORE" varchar(255)   ,
	"COMUNE_SEDE_PRESTATORE" varchar(255)   ,
	"NAZIONE_SEDE_PRESTATORE" varchar(255)   ,
	"NAZIONE_SUCCURSALE_PRESTATORE" varchar(255)   ,
	"INDIRIZZO_SUCCURSALE_PRESTATORE" varchar(255)   ,
	"COMUNE_SUCCURSALE_PRESTATORE" varchar(255)   ,
	"NR_CIVICO_SUCCURSALE_PRESTATORE" varchar(255)   ,
	"CAP_SUCCURSALE_PRESTATORE" varchar(255)   ,
	"PRESTATORE_PERSONA_FISICA" char(1)   ,
	"NUMERO_REA"         varchar(20)   ,
	"PROVINCIA_REA"      char(2)   ,
	"CAPITALE_SOCIALE_REA" integer   ,
	"SOCIO_UNICO_REA"    char(1)   ,
	"IN_LIQUIDAZIONE_REA" char(1)   ,
	"PARTITA_IVA_RAPPR_FISCALE" varchar(255)   ,
	"NAZIONE_EM_PIVA_RAPPR_FISCALE" varchar(255)   ,
	"DENOMINAZIONE_RAPPR_FISCALE" varchar(255)   ,
	"COGNOME_RAPPR_FISCALE" varchar(255)   ,
	"RAPPR_FISCALE_PERSONA_FISICA" char(1)   ,
	"PROVINCIA_SEDE_PRESTATORE" char(2)   ,
	"PROVINCIA_SUCCURSALE_PRESTATORE" char(2)   ,
	"TELEFONO_PRESTATORE" varchar(255)   ,
	"FAX_PRESTATORE"     varchar(255)   ,
	"EMAIL_PRESTATORE"   varchar(255)   ,
	"TIPO_RITENUTA"      smallint   ,
	"CAUSALE_RITENUTA"   smallint   ,
	"FTP_ABILITATO"      char(1)   ,
	"FTP_SERVER"         varchar(255)   ,
	"FTP_ACCOUNT"        varchar(255)   ,
	"FTP_PASSWORD"       varchar(255)   ,
	"PASSWORD_CERTIFICATI" varchar(255)   ,
	"FTP_PORTA"          smallint   ,
	"FTP_DIRECTORY"      varchar(255)   ,
	"FTP_SERVER_PASSIVO" char(1)   ,
	"MAIL_INFO_SERVER"   varchar(255)   ,
	"MAIL_INFO_USERNAME" varchar(255)   ,
	"MAIL_INFO_PASSWORD" varchar(255)   ,
	"MAIL_INFO_DESTINATARIO" varchar(255)   ,
	"MAIL_INFO_PORTA"    integer   ,
	"MAIL_INFO_MITTENTE" varchar(255)   
 ) ;

CREATE  TABLE phoenix."COND_PAGAMENTO" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	"RICEVUTA_BANCARIA"  char(1)   ,
	"P30GG"              char(1)   ,
	"P60GG"              char(1)   ,
	"P90GG"              char(1)   ,
	"P120GG"             char(1)   ,
	"FINE_MESE"          char(1)   ,
	"TRAMITE_BANCA"      char(1)   ,
	"ELE_COND_PAGAMENTO" smallint   ,
	"ELE_MOD_PAGAMENTO"  smallint   ,
	CONSTRAINT "PK_COND_PAGAMENTO" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."CONTI_CORRENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"BANCA"              varchar(255)   ,
	"NUMERO"             varchar(30)   ,
	"ABI"                varchar(30)   ,
	"CAB"                varchar(30)   ,
	"DATA_INIZIO_SESSIONE" date   ,
	"SALDO_INIZIO_SESSIONE" integer   ,
	"DISPONIBILITA"      integer   ,
	"AGENZIA"            varchar(255)   ,
	"INDIRIZZO"          varchar(255)   ,
	"CIN"                varchar(20)   ,
	"IBAN"               varchar(50)   ,
	"SOSPESO"            char(1)   ,
	CONSTRAINT "PK_CONTI_CORRENTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."FORNITORI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"RAGIONE_SOCIALE"    varchar(255)   ,
	"PARTITA_IVA"        char(16)   ,
	"CODICE_FISCALE"     char(16)   ,
	"TITOLO"             varchar(10)   ,
	"INDIRIZZO_FATTURAZIONE" varchar(255)   ,
	"CAP_FATTURAZIONE"   varchar(10)   ,
	"PROVINCIA_FATTURAZIONE" char(2)   ,
	"SOSPESO"            char(1)   ,
	"INDIRIZZO_SPEDIZIONE" varchar(255)   ,
	"CAP_SPEDIZIONE"     varchar(10)   ,
	"PROVINCIA_SPEDIZIONE" char(2)   ,
	"IVA"                smallint   ,
	"RITENUTA"           smallint   ,
	"INARCASSA"          smallint   ,
	"EMAIL"              varchar(255)   ,
	"REA_UFFICIO"        varchar(255)   ,
	"NUMERO_REA"         varchar(255)   ,
	"CAPITALE_SOCIALE"   bigint   ,
	"SOCIO_UNICO_REA"    char(1)   ,
	"STATO_LIQUIDAZIONE_REA" char(1)   ,
	"REA_PRESENTE"       char(1)   ,
	"NR_CIVICO"          varchar(255)   ,
	"EMITTENTE_PIVA"     varchar(255)   ,
	"COND_PAGAMENTO"     integer   ,
	"TELEFONO1"          varchar(255)   ,
	"CELLULARE"          varchar(255)   ,
	"TELEFONO2"          varchar(255)   ,
	"TELEFONO3"          varchar(255)   ,
	"FAX"                varchar(255)   ,
	"COMUNE_FATTURAZIONE" varchar(255)   ,
	"COMUNE_SPEDIZIONE"  varchar(255)   ,
	"NR_CIVICO_FATTURAZIONE" varchar(20)   ,
	"NR_CIVICO_SPEDIZIONE" varchar(20)   ,
	"IBAN"               varchar(255)   ,
	CONSTRAINT "PK_FORNITORI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_FORNITORI_COND_PAG" ON phoenix."FORNITORI" ( "COND_PAGAMENTO" ) ;

CREATE  TABLE phoenix."IMPOSTAZIONI" ( 
	"DENOMINAZIONE_SOCIETA" varchar(50)   ,
	"ALTRI_DATI_SOCIETA" text   ,
	"IBAN"               char(27)   ,
	"IVA"                smallint   ,
	"SMTP_SERVER"        varchar(255)   ,
	"SMTP_MITTENTE"      varchar(255)   ,
	"SMTP_PORTA"         smallint   ,
	"SMTP_TESTO"         text   ,
	"ULTIMO_CALCOLO_ISTAT" integer   ,
	"SMTP_USERNAME"      varchar(255)   ,
	"SMTP_PASSWORD"      varchar(255)   ,
	"SMTP_CCN"           varchar(255)   ,
	"SUGGERIMENTO_RESOCONTO_FATTURE" text   ,
	"COSTO_SOSTITUZIONE_VALVOLA" integer   ,
	"HTTP_LINK"          varchar(255)   ,
	"PWD_ADMIN_HTTP"     varchar(255)   ,
	"DEFAULT_CONTO"      integer   ,
	"START_CASSA_CONTANTI" integer   ,
	"START_CASSA_ASSEGNI" integer   ,
	"START_DATA_CASSA_CONTANTI" date   ,
	"START_DATA_CASSA_ASSEGNI" date   ,
	"CONTO_FIDO"         integer   ,
	"CONTO_DESTINAZIONE_RIBA" integer   ,
	"SMTP_OGGETTI"       text   ,
	"ALTEZZA_ETICHETTA"  smallint   ,
	"NUMERO_COLONNE"     smallint   ,
	"INTERLINEA_VERTICALE" smallint   ,
	"INTERLINEA_ORIZZONTALE" smallint   ,
	"MARGINE_DESTRO"     smallint   ,
	"MARGINE_SINISTRO"   smallint   ,
	"MARGINE_SUPERIORE"  smallint   ,
	"MARGINE_INFERIORE"  smallint   ,
	"DISEGNA_BORDI"      char(1)   ,
	"ORIENTAZIONE_ORIZZONTALE" char(1)   ,
	"CONTROLLO_GRUPPO_MENSILE" varchar(255)   ,
	"CONTROLLO_GRUPPO_TRIMESTRALE" varchar(255)   ,
	"CONTROLLO_GRUPPO_SEMESTRALE" varchar(255)   ,
	"CONTROLLO_SPRINKLER_SEMESTRALE" varchar(255)   ,
	"CONTROLLO_SPRINKLER_TRIMESTRALE" varchar(255)   ,
	"CONTROLLO_ORDINARIO_ESTINTORI" varchar(255)   ,
	"CONTROLLO_ORDINARIO_PORTE" varchar(255)   ,
	"CONTROLLO_ORDINARIO_FUMI" varchar(255)   ,
	"CONTROLLO_ORDINARIO_LUCI" varchar(255)   ,
	"CONTROLLO_ORDINARIO_BOCCHELLI" varchar(255)   ,
	"PROVA_DINAMICA"     varchar(255)   ,
	"REVISIONE_ESTINTORI" varchar(255)   ,
	"SOSTITUZIONE_ESTINTORI1" varchar(255)   ,
	"SOSTITUZIONE_ESTINTORI2" varchar(255)   ,
	"SMALTIMENTO1"       varchar(255)   ,
	"SMALTIMENTO2"       varchar(255)   ,
	"COLLAUDO_ESTINTORI_CO2" varchar(255)   ,
	"COLLAUDO_ESTINTORI_NON_CO2" varchar(255)   ,
	"COLLAUDO_BOCCHELLI" varchar(255)   ,
	"SOSTITUZIONE_VALVOLA_ESTINTORI" varchar(255)   ,
	"HTTP_LINK_WEBAPP"   varchar(255)   ,
	"LAST_CHECK_AGGIORNAMENTI" timestamp(19)   ,
	"PARTITA_IVA_SOCIETA" varchar(30)   ,
	"SCANNER"            smallint   ,
	"RISOLUZIONE_SCANNER" smallint   ,
	"CONTROLLO_PER_IMP_ELETTRICI" varchar(255)   ,
	"DATA_ULTIMO_LOG_ESAMINATO" timestamp(19)   
 ) ;

CREATE  TABLE phoenix."INSOLUTO_RATE_ATTIVE" ( 
	"MOVIMENTO_INSOLUTO" integer  NOT NULL ,
	"RATA"               integer  NOT NULL ,
	CONSTRAINT "PK_INSOLUTO_RATE_ATTIVE" PRIMARY KEY ( "MOVIMENTO_INSOLUTO", "RATA" )
 ) ;

CREATE  TABLE phoenix."ISTAT" ( 
	"ANNO"               smallint  NOT NULL ,
	"MESE"               smallint  NOT NULL ,
	"VALORE"             integer   ,
	CONSTRAINT "PK_ISTAT" PRIMARY KEY ( "ANNO", "MESE" )
 ) ;

CREATE  TABLE phoenix."MARCHE_CENTRALI_FUMI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_MARCHE_CENTRALI_FUMI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."MARCHE_ELEM_IMPIANTI_ELETTRICI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_MARCHE_ELEM_IMPIANTI_ELETT" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."MARCHE_ESTINTORI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_MARCHE_ESTINTORI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."MARCHE_LUCI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_MARCHE_LUCI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."MARCHE_MANIGLIONE_PORTE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_MARCHE_MANIGLIONE_PORTE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."MARCHE_PORTE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_MARCHE_PORTE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."MARCHE_RIL_LINEARI_FUMI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_MARCHE_RIL_LINEARI_FUMI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."MARCHE_SPRINKLER" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_MARCHE_SPRINKLER" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."MARCHE_STAZIONI_IDRANTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   
 ) ;

CREATE  TABLE phoenix."MOD_PAGAMENTO" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)  NOT NULL ,
	CONSTRAINT "PK_MOD_PAGAMENTO" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."MOTIV_CONTROLLO_NEGATO" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	"OPERAZIONE"         smallint   
 ) ;

CREATE  TABLE phoenix."MOTIV_RITIRO_ESTINTORI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	"OPERAZIONE"         smallint   ,
	CONSTRAINT "PK_MOTIV_RITIRO_ESTINTORI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."PREZZI_ATTREZZATURE" ( 
	"PREZZO_ORDINARIE_SPRINKLER" integer  NOT NULL ,
	"PREZZO_ORDINARIE_FUMI" integer   ,
	"PREZZO_ORDINARIE_LUCI" integer   ,
	"PREZZO_ORDINARIE_PORTE" integer   ,
	"PREZZO_ORDINARIE_IDRANTI" integer   ,
	"PREZZO_COLLAUDI_IDRANTI" integer   ,
	"PERIODICITA_COLLAUDI_IDRANTI" integer   ,
	"GRUPPO_TIPO_VISITE" char(1)   ,
	"GRUPPO_PREZZO_VISITA_MENSILE" integer   ,
	"GRUPPO_PREZZO_VISITA_TRIMEST" integer   ,
	"GRUPPO_PREZZO_VISITA_SEMESTRALE" integer   ,
	"PREZZO_SEMESTRALE_SPRINKLER" integer   ,
	"SPRINKLER_TIPO_VISITE" char(1)   
 ) ;

CREATE  TABLE phoenix."RDB$AUTH_MAPPING" ( 
	"RDB$MAP_NAME"       char(31)  NOT NULL ,
	"RDB$MAP_USING"      char(1)  NOT NULL ,
	"RDB$MAP_PLUGIN"     char(31)   ,
	"RDB$MAP_DB"         char(31)   ,
	"RDB$MAP_FROM_TYPE"  char(31)  NOT NULL ,
	"RDB$MAP_FROM"       char(255)   ,
	"RDB$MAP_TO_TYPE"    smallint   ,
	"RDB$MAP_TO"         char(31)   ,
	"RDB$SYSTEM_FLAG"    smallint  NOT NULL ,
	"RDB$DESCRIPTION"    text   
 ) ;

CREATE INDEX "RDB$INDEX_52" ON phoenix."RDB$AUTH_MAPPING" ( "RDB$MAP_NAME" ) ;

CREATE  TABLE phoenix."SCARICO_MAGAZZINO" ( 
	"CHIAVE"             integer  NOT NULL ,
	"NOME_CLIENTE"       varchar(255)   ,
	"CONFERMA_ORDINE"    varchar(255)   ,
	"DATA"               date  NOT NULL ,
	"NOTE"               text   ,
	"SOSPESO"            char(1)   ,
	"CHIAVE_MOBILE"      integer   ,
	CONSTRAINT "PK_SCARICO_MAGAZZINO" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."SEC$GLOBAL_AUTH_MAPPING" ( 
	"SEC$MAP_NAME"       char(31)  NOT NULL ,
	"SEC$MAP_USING"      char(1)  NOT NULL ,
	"SEC$MAP_PLUGIN"     char(31)   ,
	"SEC$MAP_DB"         char(31)   ,
	"SEC$MAP_FROM_TYPE"  char(31)  NOT NULL ,
	"SEC$MAP_FROM"       char(255)   ,
	"SEC$MAP_TO_TYPE"    smallint   ,
	"SEC$MAP_TO"         char(31)   
 ) ;

CREATE  TABLE phoenix."SETTORI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(100)  NOT NULL ,
	"CHECK_MINIMI"       char(1)   ,
	CONSTRAINT "PK_SETTORI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TECNICI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	"SOSPESO"            char(1)   ,
	"ATTIVO"             char(1)   ,
	"ACCOUNT_MOBILE"     varchar(255)   ,
	"EMAIL"              varchar(255)   ,
	"TELEFONO"           varchar(255)   ,
	CONSTRAINT "PK_TECNICI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TIPI_BATTERIE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_TIPI_BATTERIE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TIPI_CENTRALI_FUMI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_TIPI_CENTRALI_FUMI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TIPI_ELEM_IMPIANTI_ELETTRICI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_TIPI_ELEM_IMPIANTI_ELETT" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TIPI_INSTALLAZIONE_PORTE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_TIPI_INSTALLAZIONE_PORTE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TIPI_MANIGLIONI_PORTE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_TIPI_MANIGLIONI_PORTE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TIPI_MOTOPOMPE_IDRANTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_TIPI_MOTOPOMPE_IDRANTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TIPI_RILEVATORI_FUMI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_TIPI_RILEVATORI_FUMI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TIPI_RILEVATORI_LINEARI_FUMI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_TIPI_RILEVATORI_LINEARI_FUMI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TIPI_SERRATURE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_TIPI_SERRATURE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TIPI_SPRINKLER" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   
 ) ;

CREATE  TABLE phoenix."TIPO_BOCCHELLI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_TIPO_BOCCHELLI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TIPO_LANCIA" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_TIPO_LANCIA" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TIPO_LUCI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_TIPO_LUCI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."TIPO_PORTE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	"TIPOLOGIA"          smallint   ,
	CONSTRAINT "PK_TIPO_PORTE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."USER_ID" ( 
	"UTENTE"             varchar(255)  NOT NULL ,
	"CHIAVE_ID"          varchar(255)   ,
	CONSTRAINT "PK_USER_ID" PRIMARY KEY ( "UTENTE" )
 ) ;

CREATE  TABLE phoenix."V_MANICHETTE_DA_TABLET" ( 
	"CHIAVE"             integer  NOT NULL ,
	"ID_DOCUMENTO"       varchar(10)   ,
	"BODY"               text   ,
	"DATA"               date   ,
	"TECNICO"            integer   ,
	"GESTITO"            char(1)   ,
	"SOSPESO"            char(1)   ,
	CONSTRAINT "PK_V_MANICHETTE_DA_TABLET" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."V_PROVADINAMICA_DA_TABLET" ( 
	"CHIAVE"             integer  NOT NULL ,
	"ID_DOCUMENTO"       varchar(10)   ,
	"BODY"               text   ,
	"DATA"               date   ,
	"TECNICO"            integer   ,
	"GESTITO"            char(1)   ,
	"SOSPESO"            char(1)   ,
	CONSTRAINT "PK_V_PROVADINAMICA_DA_TABLET" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE  TABLE phoenix."_LIBRA_INFORMATION" ( 
	"DB_VERSION"         integer  NOT NULL 
 ) ;

CREATE  TABLE phoenix."AMMINISTRATORI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"RAGIONE_SOCIALE"    varchar(255)   ,
	"PARTITA_IVA"        char(16)   ,
	"CODICE_FISCALE"     char(16)   ,
	"EMAIL"              varchar(255)  NOT NULL ,
	"INDIRIZZO_SPEDIZIONE" varchar(255)   ,
	"CAP_SPEDIZIONE"     varchar(10)   ,
	"PROVINCIA_SPEDIZIONE" char(2)   ,
	"TITOLO"             varchar(10)   ,
	"AMMINISTRATORE_CONDOMINIO" char(1)   ,
	"INDIRIZZO_FATTURAZIONE" varchar(255)   ,
	"CAP_FATTURAZIONE"   varchar(10)   ,
	"PROVINCIA_FATTURAZIONE" char(2)   ,
	"COND_PAGAMENTO"     integer   ,
	"ESENTE_IVA"         char(1)   ,
	"SOSPESO"            char(1)   ,
	"ESPORTA_SUL_WEB"    char(1)   ,
	"DA_ESPORTARE_SUL_WEB" char(1)   ,
	"PEC"                varchar(255)   ,
	"FATTURA_ELETTRONICA" char(1)   ,
	"COD_ENTE_SDI"       varchar(255)   ,
	"NAZIONE_FATTURAZIONE" varchar(255)   ,
	"NAZIONE_EM_PIVA"    varchar(255)   ,
	"ESIGIBILITA_IVA"    char(1)   ,
	"NOTE_IN_FATTURA"    varchar(255)   ,
	"ATTIVO"             char(1)   ,
	"ENTE_PUBBLICO"      char(1)   ,
	"ID_WEB_APPLICATION" varchar(255)   ,
	"EMAIL2"             varchar(255)   ,
	"EMAIL3"             varchar(255)   ,
	"EMAIL4"             varchar(255)   ,
	"NATURA_IVA"         smallint   ,
	"COMUNE_FATTURAZIONE" varchar(255)   ,
	"TELEFONO1"          varchar(255)   ,
	"CELLULARE"          varchar(255)   ,
	"TELEFONO2"          varchar(255)   ,
	"FAX"                varchar(255)   ,
	"COMUNE_SPEDIZIONE"  varchar(255)   ,
	"BANCA_APPOGGIO"     varchar(255)   ,
	"ABI"                varchar(5)   ,
	"CAB"                varchar(5)   ,
	"NR_CIVICO"          varchar(20)   ,
	CONSTRAINT "PK_AMMINISTRATORI" PRIMARY KEY ( "CHIAVE" ),
	CONSTRAINT "UNQ_AMMINISTRATORI_ID_WEB" UNIQUE ( "ID_WEB_APPLICATION" ) 
 ) ;

CREATE INDEX "FK_AMMINISTRATORI_COND_PAGAMENT" ON phoenix."AMMINISTRATORI" ( "COND_PAGAMENTO" ) ;

CREATE  TABLE phoenix."ARCHIVIO_MAIL" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DATA"               date   ,
	"ORA"                time   ,
	"MITTENTE"           varchar(255)   ,
	"DESTINATARIO"       varchar(255)   ,
	"MAIL_DESTINATARIO"  varchar(255)   ,
	"OGGETTO"            varchar(255)   ,
	"TESTO"              text   ,
	"ALLEGATO"           text   ,
	"ERRORE_INVIO"       varchar(255)   ,
	"ID_AMMINISTRATORE"  integer   ,
	"ID_FORNITORE"       integer   
 ) ;

CREATE INDEX "FK_ARCHIVIO_MAIL_AMMINISTRATORI" ON phoenix."ARCHIVIO_MAIL" ( "ID_AMMINISTRATORE" ) ;

CREATE INDEX "FK_ARCH_MAIL_FORNITORE" ON phoenix."ARCHIVIO_MAIL" ( "ID_FORNITORE" ) ;

CREATE  TABLE phoenix."CHECKLIST_ATTREZZATURE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)   ,
	"TIPOLOGIA"          char(1)   ,
	"ORDINAMENTO"        smallint   ,
	"ANOMALIE_CORRELATE" text   ,
	"SOTTOCATEGORIA"     integer   ,
	CONSTRAINT "PK_CHECKLIST_ATTREZZATURE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_CHECKLIST_ATTREZ_SOTTOCAT" ON phoenix."CHECKLIST_ATTREZZATURE" ( "SOTTOCATEGORIA" ) ;

CREATE  TABLE phoenix."CLIENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"VISITA_FATTURAZIONE_ORDINARIA" smallint   ,
	"PARTITA_IVA"        char(16)  NOT NULL ,
	"CODICE_FISCALE"     char(16)   ,
	"EMAIL"              varchar(255)  NOT NULL ,
	"INDIRIZZO_FATTURAZIONE" varchar(255)   ,
	"PROVINCIA_FATTURAZIONE" char(2)   ,
	"CAP_FATTURAZIONE"   varchar(10)   ,
	"INDIRIZZO_SPEDIZIONE" varchar(255)   ,
	"CAP_SPEDIZIONE"     varchar(10)   ,
	"PROVINCIA_SPEDIZIONE" char(2)   ,
	"NOTE"               text   ,
	"PRESSO"             varchar(255)   ,
	"TITOLO"             varchar(10)   ,
	"PREZZO_ORDINARIE_SPRINKLER" integer   ,
	"PREZZO_ORDINARIE_FUMI" integer   ,
	"PREZZO_ORDINARIE_LUCI" integer   ,
	"PREZZO_ORDINARIE_PORTE" integer   ,
	"PREZZO_ORDINARIE_IDRANTI" integer   ,
	"PREZZO_COLLAUDI_IDRANTI" integer   ,
	"NOTE_NASCOSTE"      text   ,
	"AMMINISTRATORE"     integer   ,
	"DESCRIZIONE_SCHEDA" varchar(255)   ,
	"COND_PAGAMENTO"     integer   ,
	"ISTAT"              char(1)   ,
	"ESENTE_IVA"         char(1)   ,
	"NOTE_IN_FATTURA"    varchar(255)   ,
	"RITENUTA"           smallint   ,
	"DISDETTATO"         char(1)   ,
	"MANUALE"            char(1)   ,
	"DATA_CONTRATTO"     date   ,
	"ORDINA_X_UBICAZIONE" char(1)   ,
	"NON_CONFERMATO"     char(1)   ,
	"SOSPESO"            char(1)   ,
	"DATA_DIFFERITA"     date   ,
	"DA_ESPORTARE_SUL_WEB" char(1)   ,
	"COSTO_SOSTITUZIONE_VALVOLA" integer   ,
	"RESPONSABILE"       integer   ,
	"ESTINTORI_VISIBILI" char(1)   ,
	"SPRINKLER_VISIBILI" char(1)   ,
	"LUCI_VISIBILI"      char(1)   ,
	"RIL_FUMO_VISIBILI"  char(1)   ,
	"PORTE_VISIBILI"     char(1)   ,
	"GRUPPO_PRESS_VISIBILE" char(1)   ,
	"IMPIANTO_IDRANTI_VISIBILE" char(1)   ,
	"GRUPPO_PREZZO_VISITA_SEMESTRALE" integer   ,
	"GRUPPO_PREZZO_VISITA_TRIMEST" integer   ,
	"GRUPPO_PREZZO_VISITA_MENSILE" integer   ,
	"GRUPPO_TIPO_VISITE" char(1)   ,
	"PREZZO_SEMESTRALE_SPRINKLER" integer   ,
	"SPRINKLER_TIPO_VISITE" char(1)   ,
	"IVA"                smallint   ,
	"FATTURA_ANTICIPATA" char(1)   ,
	"NATURA_IVA"         smallint   ,
	"RAGIONE_SOCIALE"    varchar(255)  NOT NULL ,
	"COMUNE_FATTURAZIONE" varchar(255)   ,
	"COMUNE_SPEDIZIONE"  varchar(255)   ,
	"TELEFONO1"          varchar(255)   ,
	"CELLULARE"          varchar(255)   ,
	"TELEFONO2"          varchar(255)   ,
	"FAX"                varchar(255)   ,
	"BANCA_APPOGGIO"     varchar(255)   ,
	"ABI"                varchar(5)   ,
	"CAB"                varchar(5)   ,
	"NR_CIVICO"          varchar(20)   ,
	"IMPIANTI_ELETTRICI_VISIBILI" char(1)   ,
	"SOSPENSIONE_TEMPORANEA" char(1)   ,
	"INIZIO_SOSP_TEMPORANEA" date   ,
	"MOTIV_SOSP_TEMPORANEA" varchar(255)   ,
	CONSTRAINT "INTEG_93" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_CLIENTI_AMMINISTRATORE" ON phoenix."CLIENTI" ( "AMMINISTRATORE" ) ;

CREATE INDEX "FK_CLIENTI_COND_PAGAMENTO" ON phoenix."CLIENTI" ( "COND_PAGAMENTO" ) ;

CREATE INDEX "FK_CLIENTI_RESPONSABILE" ON phoenix."CLIENTI" ( "RESPONSABILE" ) ;

CREATE  TABLE phoenix."COMUNICAZIONI_TECNICI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"TECNICO"            integer   ,
	"DATA_CREAZIONE"     date   ,
	"TITOLO"             varchar(255)   ,
	"TESTO"              text   ,
	"DATA_INVIO"         date   ,
	"DATA_RICEZIONE"     date   ,
	"DATA_LETTURA"       date   ,
	"DATA_CONCLUSIONE"   date   ,
	CONSTRAINT "PK_COMUNICAZIONI_TECNICI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_COMUNICAZIONI_TECNICI" ON phoenix."COMUNICAZIONI_TECNICI" ( "TECNICO" ) ;

CREATE  TABLE phoenix."DDT_ENTRANTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"ID_FORNITORE"       integer   ,
	"TITOLO_FORNITORE"   varchar(10)   ,
	"NUMERO_DDT"         varchar(255)   ,
	"DATA_DDT"           date  NOT NULL ,
	"GENERALITA_FORNITORE" varchar(60)   ,
	"COMUNE_FORNITORE"   varchar(255)   ,
	"INDIRIZZO_FORNITORE" varchar(255)   ,
	"PROVINCIA_FORNITORE" char(2)   ,
	"CAP_FORNITORE"      varchar(10)   ,
	"ULTIMA_RIGA"        text   ,
	"SOSPESO"            char(1)   ,
	CONSTRAINT "PK_DDT_ENTRANTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_DDT_ENTRANTI_FORNITORE" ON phoenix."DDT_ENTRANTI" ( "ID_FORNITORE" ) ;

CREATE  TABLE phoenix."DDT_USCENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"ID_DDT"             smallint  NOT NULL ,
	"ANNO_DDT"           smallint  NOT NULL ,
	"ID_AMMINISTRATORE"  integer   ,
	"GENERALITA_CLIENTE" varchar(60)   ,
	"INDIRIZZO_CLIENTE"  varchar(255)   ,
	"PROVINCIA_CLIENTE"  char(2)   ,
	"COMUNE_CLIENTE"     varchar(255)   ,
	"CAP_CLIENTE"        varchar(10)   ,
	"DATA_DDT"           date  NOT NULL ,
	"TRASPORTO_A_MEZZO"  char(1)  NOT NULL ,
	"CAUSALE"            varchar(30)  NOT NULL ,
	"ASPETTO_BENI"       varchar(30)  NOT NULL ,
	"NUMERO_COLLI"       smallint  NOT NULL ,
	"PESO"               varchar(10)  NOT NULL ,
	"PORTO"              varchar(30)  NOT NULL ,
	"ORA_INIZIO"         time   ,
	"DATA_INIZIO"        date   ,
	"NOTE"               text   ,
	"DESTINAZIONE"       varchar(255)   ,
	"INDIRIZZO_DESTINAZIONE" varchar(255)   ,
	"PROVINCIA_DESTINAZIONE" char(2)   ,
	"COMUNE_DESTINAZIONE" varchar(255)   ,
	"CAP_DESTINAZIONE"   varchar(10)   ,
	"TITOLO_CLIENTE"     varchar(10)   ,
	"VOSTRO_ORDINE"      varchar(100)   ,
	"ORDINE_DEL"         date   ,
	"ULTIMA_RIGA"        text   ,
	"SOSPESO"            char(1)   ,
	"ID_FORNITORE"       integer   ,
	CONSTRAINT "PK_DDT_USCENTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_DDT_USCENTI_AMMINISTRATORE" ON phoenix."DDT_USCENTI" ( "ID_AMMINISTRATORE" ) ;

CREATE INDEX "FK_DDT_USCENTI_FORNITORE" ON phoenix."DDT_USCENTI" ( "ID_FORNITORE" ) ;

CREATE  TABLE phoenix."FATTURE_PASSIVE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"FORNITORE"          integer   ,
	"NUMERO"             varchar(255)   ,
	"DATA"               date   ,
	"OGGETTO"            varchar(255)   ,
	"IVA"                integer   ,
	"RITENUTA"           integer   ,
	"COND_PAGAMENTO"     integer   ,
	"SOSPESO"            char(1)   ,
	"INARCASSA"          smallint   ,
	"ALERT_APPENA_ARRIVATA" char(1)   ,
	"RAGIONE_SOCIALE"    varchar(255)   ,
	"CODICE_FISCALE"     varchar(16)   ,
	"INDIRIZZO_FATTURAZIONE" varchar(255)   ,
	"CAP_FATTURAZIONE"   varchar(10)   ,
	"PROV_FATTURAZIONE"  char(2)   ,
	"PARTITA_IVA"        varchar(16)   ,
	"TOTALE_FATTURA"     integer   ,
	"IS_FATTURA"         char(1)   ,
	"ESPORTATA_COMMERCIALISTA" char(1)   ,
	"COMUNE_FATTURAZIONE" varchar(255)   ,
	"TITOLO"             varchar(10)   ,
	"NR_CIVICO_FATTURAZIONE" varchar(20)   ,
	"IBAN"               varchar(255)   ,
	CONSTRAINT "PK_FATTURE_PASSIVE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_FATTURE_PASSIVE_COND_PAGAMEN" ON phoenix."FATTURE_PASSIVE" ( "COND_PAGAMENTO" ) ;

CREATE INDEX "FK_FATTURE_PASSIVE_FORNITORE" ON phoenix."FATTURE_PASSIVE" ( "FORNITORE" ) ;

CREATE  TABLE phoenix."FILIALI_CLIENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"CLIENTE"            integer  NOT NULL ,
	"NOME"               varchar(100)  NOT NULL ,
	"PROVINCIA"          char(2)   ,
	"CAP"                varchar(10)   ,
	"INDIRIZZO"          varchar(255)   ,
	"TELEFONO"           varchar(255)   ,
	"NOTE"               text   ,
	"ORARIO_APERTURA_DAL1" time   ,
	"ORARIO_APERTURA_DAL2" time   ,
	"ORARIO_APERTURA_AL1" time   ,
	"ORARIO_APERTURA_AL2" time   ,
	"CHIUSURA"           varchar(255)   ,
	"CELLULARE"          varchar(255)   ,
	"EMAIL"              varchar(255)   ,
	"ESCLUDI_DA_GENERAZIONE" char(1)   ,
	"SEDE"               char(1)   ,
	"ID"                 varchar(255)   ,
	"REF_TELEFONO"       varchar(255)   ,
	"REF_CELLULARE"      varchar(255)   ,
	"COMUNE"             varchar(255)   ,
	CONSTRAINT "PK_FILIALI_CLIENTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_FILIALI_CLIENTI" ON phoenix."FILIALI_CLIENTI" ( "CLIENTE" ) ;

CREATE  TABLE phoenix."FUMO_CLIENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"CLIENTE"            integer   ,
	"FILIALE"            integer   ,
	"MARCA_CENTRALE"     integer   ,
	"TIPO_CENTRALE"      integer   ,
	"QUANTITA_BATTERIE"  integer   ,
	"TIPO_BATTERIE"      integer   ,
	"QUANTITA_RILEVATORI" integer   ,
	"TIPO_RILEVATORI"    integer   ,
	"QUANTITA_RIL_LINEARI" integer   ,
	"TIPO_RIL_LINEARI"   integer   ,
	"MARCA_RIL_LINEARI"  integer   ,
	"QUANTITA_PULSANTI"  integer   ,
	"QUANTITA_PANNELLI_OTT_ACUST" integer   ,
	"UBICAZIONE"         text   ,
	"STATO"              char(1)  NOT NULL ,
	"RINNOVATO_DA"       integer   ,
	"ANOMALIA_APPROVATA" char(1)   ,
	"ANOMALIA"           text   ,
	"DESCRIZIONE"        varchar(255)   ,
	"PREC_ANOMALIA"      text   ,
	"NOTE_TECNICO"       text   ,
	"ID_NFC"             varchar(100)   ,
	CONSTRAINT "PK_FUMO_CLIENTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_FUMO_CLIENTI_CLIENTE" ON phoenix."FUMO_CLIENTI" ( "CLIENTE" ) ;

CREATE INDEX "FK_FUMO_CLIENTI_FILIALE" ON phoenix."FUMO_CLIENTI" ( "FILIALE" ) ;

CREATE INDEX "FK_FUMO_CLIENTI_MARCHE_CENTRALI" ON phoenix."FUMO_CLIENTI" ( "MARCA_CENTRALE" ) ;

CREATE INDEX "FK_FUMO_CLIENTI_RINNOVO" ON phoenix."FUMO_CLIENTI" ( "RINNOVATO_DA" ) ;

CREATE INDEX "FK_FUMO_CLIENTI_TIPO_CENTRALE" ON phoenix."FUMO_CLIENTI" ( "TIPO_CENTRALE" ) ;

CREATE INDEX "FK_FUMO_CLIENTI_TIPO_RILEVATORI" ON phoenix."FUMO_CLIENTI" ( "TIPO_RILEVATORI" ) ;

CREATE INDEX "FK_FUMO_CLIENTI_TIPO_RIL_LINEAR" ON phoenix."FUMO_CLIENTI" ( "TIPO_RIL_LINEARI" ) ;

CREATE  TABLE phoenix."GRUPPO_PRESSURIZZAZIONE_CLIENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"CLIENTE"            integer   ,
	"DESCRIZIONE"        varchar(255)   ,
	"TIPO_STAZIONE"      char(1)   ,
	"TIPO_BATTERIE"      integer   ,
	"MARCA_POMPA_JOCKEY" varchar(255)   ,
	"TIPO_POMPA_JOCKEY"  varchar(255)   ,
	"MODELLO_POMPA_JOCKEY" varchar(255)   ,
	"MARCA_POMPA_PORTATA" varchar(255)   ,
	"TIPO_POMPA_PORTATA" varchar(255)   ,
	"MODELLO_POMPA_PORTATA" varchar(255)   ,
	"MARCA_MOTOPOMPA"    varchar(255)   ,
	"TIPO_MOTOPOMPA"     varchar(255)   ,
	"MODELLO_MOTOPOMPA"  varchar(255)   ,
	"VASI_ESPANSIONE"    varchar(255)   ,
	"MARCA_MISURATORE_PORTATA" varchar(255)   ,
	"MODELLO_MISURATORE_PORTATA" varchar(255)   ,
	"ANOMALIA"           text   ,
	"ANOMALIA_APPROVATA" char(1)   ,
	"NOTE"               text   ,
	"SOSPESO"            char(1)   ,
	"FILIALE"            integer   ,
	"STATO"              char(1)  NOT NULL ,
	"RINNOVATO_DA"       integer   ,
	"PREC_ANOMALIA"      text   ,
	"ID_NFC"             varchar(100)   ,
	CONSTRAINT "PK_GRUPPO_PRESSURIZZAZIONE_CLIE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_GRUPPO_FILIALI" ON phoenix."GRUPPO_PRESSURIZZAZIONE_CLIENTI" ( "FILIALE" ) ;

CREATE INDEX "FK_GRUPPO_PRESSU_CLIENTE" ON phoenix."GRUPPO_PRESSURIZZAZIONE_CLIENTI" ( "CLIENTE" ) ;

CREATE INDEX "FK_GRUPPO_PRESSU_TIPO_BATTERIE" ON phoenix."GRUPPO_PRESSURIZZAZIONE_CLIENTI" ( "TIPO_BATTERIE" ) ;

CREATE  TABLE phoenix."IDRANTI_CLIENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"CLIENTE"            integer   ,
	"FILIALE"            integer   ,
	"DESCRIZIONE"        varchar(255)   ,
	"TIPO"               char(1)   ,
	"VALVOLA_INTERCETTAZIONE" varchar(255)   ,
	"UBICAZIONE_ATTACCO_MOTOPOMPA" varchar(255)   ,
	"UBICAZIONE"         text   ,
	"TIPO_ATTACCO_MOTOPOMPA" integer   ,
	"PROVA_DINAMICA"     integer   ,
	"QUANDO_PROVA_DINAMICA" char(1)   ,
	"STATO"              char(1)   ,
	"SOSPESO"            char(1)   ,
	"RINNOVATO_DA"       integer   ,
	CONSTRAINT "PK_IDRANTI_CLIENTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_IDRANTI_CLIENTI_CLIENTE" ON phoenix."IDRANTI_CLIENTI" ( "CLIENTE" ) ;

CREATE INDEX "FK_IDRANTI_CLIENTI_FILIALE" ON phoenix."IDRANTI_CLIENTI" ( "FILIALE" ) ;

CREATE INDEX "FK_IDRANTI_CLIENTI_MOTOPOMPA" ON phoenix."IDRANTI_CLIENTI" ( "TIPO_ATTACCO_MOTOPOMPA" ) ;

CREATE  TABLE phoenix."IMPIANTI_ELETTRICI_CLIENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"CLIENTE"            integer   ,
	"FILIALE"            integer   ,
	"DESCRIZIONE"        varchar(255)   ,
	"STATO"              char(1)   ,
	"SOSPESO"            char(1)   ,
	"RINNOVATO_DA"       integer   ,
	"PREZZO"             integer   ,
	"TIPO_VISITA"        char(1)   ,
	"UBICAZIONE"         text   ,
	CONSTRAINT "PK_IMPIANTI_ELETTRICI_CLIENTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_IMPIANTI_ELETTRICI_CLIENTI_1" ON phoenix."IMPIANTI_ELETTRICI_CLIENTI" ( "CLIENTE" ) ;

CREATE INDEX "FK_IMPIANTI_ELETTRICI_FILIALE" ON phoenix."IMPIANTI_ELETTRICI_CLIENTI" ( "FILIALE" ) ;

CREATE  TABLE phoenix."LUCI_CLIENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"CLIENTE"            integer   ,
	"FILIALE"            integer   ,
	"TIPO_LUCE"          integer   ,
	"MARCA"              integer   ,
	"UBICAZIONE"         text   ,
	"PROGRESSIVO"        integer   ,
	"STATO"              char(1)  NOT NULL ,
	"RINNOVATO_DA"       integer   ,
	"ANOMALIA_APPROVATA" char(1)   ,
	"ANOMALIA"           text   ,
	"MODELLO"            varchar(255)   ,
	"AUTONOMIA"          smallint   ,
	"PREC_ANOMALIA"      text   ,
	"NOTE_TECNICO"       text   ,
	"ID_NFC"             varchar(100)   ,
	CONSTRAINT "PK_LUCI_CLIENTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_LUCI_CLIENTI_CLIENTE" ON phoenix."LUCI_CLIENTI" ( "CLIENTE" ) ;

CREATE INDEX "FK_LUCI_CLIENTI_FILIALE" ON phoenix."LUCI_CLIENTI" ( "FILIALE" ) ;

CREATE INDEX "FK_LUCI_CLIENTI_MARCA" ON phoenix."LUCI_CLIENTI" ( "MARCA" ) ;

CREATE INDEX "FK_LUCI_CLIENTI_RINNOVO" ON phoenix."LUCI_CLIENTI" ( "RINNOVATO_DA" ) ;

CREATE INDEX "FK_LUCI_CLIENTI_TIPO" ON phoenix."LUCI_CLIENTI" ( "TIPO_LUCE" ) ;

CREATE  TABLE phoenix."MANUTENZIONE_ORDINARIA" ( 
	"CHIAVE"             integer  NOT NULL ,
	"CLIENTE"            integer   ,
	"DAL"                integer   ,
	"AL"                 integer   ,
	"PREZZO"             integer   ,
	CONSTRAINT "PK_MANUTENZIONE_ORARIA" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_MANUTENZIONE_ORDINARIA_CLIEN" ON phoenix."MANUTENZIONE_ORDINARIA" ( "CLIENTE" ) ;

CREATE  TABLE phoenix."MAN_STRAORDINARIE_CLIENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"CLIENTE"            integer  NOT NULL ,
	"CAT_ESTINTORE"      integer  NOT NULL ,
	"PREZZO_COLLAUDO"    integer   ,
	"PREZZO_REVISIONE"   integer   ,
	"PREZZO_SOSTITUZIONE" integer   ,
	"PREZZO_SMALTIMENTO" integer   ,
	CONSTRAINT "PK_MAN_STRAORDINARIE_CLIENTI" PRIMARY KEY ( "CHIAVE" ),
	CONSTRAINT "UNQ1_MAN_STRAORDINARIE_CLIENTI" UNIQUE ( "CLIENTE", "CAT_ESTINTORE" ) 
 ) ;

CREATE INDEX "FK_MAN_STRAORDINARIE_CLIENTE" ON phoenix."MAN_STRAORDINARIE_CLIENTI" ( "CLIENTE" ) ;

CREATE INDEX "FK_MAN_STRAORDINARIE_ESTINTORE" ON phoenix."MAN_STRAORDINARIE_CLIENTI" ( "CAT_ESTINTORE" ) ;

CREATE  TABLE phoenix."MOVIMENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DATA"               date   ,
	"ORDINANTE"          varchar(255)   ,
	"TIPO_CASSA_PRELIEVO" char(1)   ,
	"CONTO_CORRENTE_PRELIEVO" integer   ,
	"TIPO_CASSA_VERSAMENTO" char(1)   ,
	"CONTO_CORRENTE_VERSAMENTO" integer   ,
	"IMPORTO"            integer   ,
	"SOSPESO"            char(1)   ,
	"DESCRIZIONE"        text   ,
	"ESCLUDI_DA_PRIMA_NOTA" char(1)   ,
	"FORNITORE_PARTITARIO" integer   ,
	"AMMINISTRATORE_PARTITARIO" integer   ,
	"ULTIMA_MODIFICA"    timestamp(19)   ,
	CONSTRAINT "PK_MOVIMENTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_MOVIMENTI_CONTO_PRELIEVO" ON phoenix."MOVIMENTI" ( "CONTO_CORRENTE_PRELIEVO" ) ;

CREATE INDEX "FK_MOVIMENTI_CONTO_VERSAMENTO" ON phoenix."MOVIMENTI" ( "CONTO_CORRENTE_VERSAMENTO" ) ;

CREATE INDEX "FK_MOV_AMMINISTRATORE" ON phoenix."MOVIMENTI" ( "AMMINISTRATORE_PARTITARIO" ) ;

CREATE INDEX "FK_MOV_FORNITORE" ON phoenix."MOVIMENTI" ( "FORNITORE_PARTITARIO" ) ;

CREATE  TABLE phoenix."ORDINI_DA_TABLET" ( 
	"CHIAVE"             integer  NOT NULL ,
	"ID_DOCUMENTO"       varchar(10)   ,
	"BODY"               text   ,
	"DATA"               date   ,
	"TECNICO"            integer   ,
	"GESTITO"            char(1)   ,
	"SOSPESO"            char(1)   ,
	"PREVENTIVO"         char(1)   ,
	CONSTRAINT "PK_ORDINI_DA_TABLET" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_ORDINI_DA_TABLET_TECNICO" ON phoenix."ORDINI_DA_TABLET" ( "TECNICO" ) ;

CREATE  TABLE phoenix."PORTE_CLIENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"CLIENTE"            integer   ,
	"FILIALE"            integer   ,
	"TIPO"               integer   ,
	"MATRICOLA"          varchar(255)   ,
	"ANNO_COSTRUZIONE"   smallint   ,
	"ANTE"               char(1)   ,
	"MARCA"              integer   ,
	"MARCA_MANIGLIONE"   integer   ,
	"TIPO_MANIGLIONE"    integer   ,
	"TIPO_SERRATURA_ANTA_PRINCIPALE" integer   ,
	"TIPO_SERRATURA_ANTA_SECONDARIA" integer   ,
	"TIPO_MANIGLIA_ESTERNA" integer   ,
	"TIPO_GUARNIZIONE"   integer   ,
	"UBICAZIONE"         text   ,
	"PROGRESSIVO"        integer   ,
	"STATO"              char(1)  NOT NULL ,
	"RINNOVATO_DA"       integer   ,
	"ANOMALIA_APPROVATA" char(1)   ,
	"ANOMALIA"           text   ,
	"TIPO_INSTALLAZIONE" integer   ,
	"DIMENSIONE"         varchar(255)   ,
	"PREC_ANOMALIA"      text   ,
	"NOTE_TECNICO"       text   ,
	"ID_NFC"             varchar(100)   ,
	CONSTRAINT "PK_PORTE_CLIENTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_PORTE_CLIENTI_CLIENTE" ON phoenix."PORTE_CLIENTI" ( "CLIENTE" ) ;

CREATE INDEX "FK_PORTE_CLIENTI_FILIALE" ON phoenix."PORTE_CLIENTI" ( "FILIALE" ) ;

CREATE INDEX "FK_PORTE_CLIENTI_MARCA" ON phoenix."PORTE_CLIENTI" ( "MARCA" ) ;

CREATE INDEX "FK_PORTE_CLIENTI_MARCA_MANIGLIO" ON phoenix."PORTE_CLIENTI" ( "MARCA_MANIGLIONE" ) ;

CREATE INDEX "FK_PORTE_CLIENTI_RINNOVO" ON phoenix."PORTE_CLIENTI" ( "RINNOVATO_DA" ) ;

CREATE INDEX "FK_PORTE_CLIENTI_TIPO" ON phoenix."PORTE_CLIENTI" ( "TIPO" ) ;

CREATE INDEX "FK_PORTE_CLIENTI_TIPO_INSTALLAZ" ON phoenix."PORTE_CLIENTI" ( "TIPO_INSTALLAZIONE" ) ;

CREATE INDEX "FK_PORTE_CLIENTI_TIPO_MANIGLION" ON phoenix."PORTE_CLIENTI" ( "TIPO_MANIGLIONE" ) ;

CREATE INDEX "FK_PORTE_CLIENTI_TIPO_MANIG_EST" ON phoenix."PORTE_CLIENTI" ( "TIPO_MANIGLIA_ESTERNA" ) ;

CREATE INDEX "FK_PORTE_CLIENTI_TIPO_SERR_PRIN" ON phoenix."PORTE_CLIENTI" ( "TIPO_SERRATURA_ANTA_PRINCIPALE" ) ;

CREATE INDEX "FK_PORTE_CLIENTI_TIPO_SERR_SECO" ON phoenix."PORTE_CLIENTI" ( "TIPO_SERRATURA_ANTA_SECONDARIA" ) ;

CREATE  TABLE phoenix."PRODOTTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DESCRIZIONE"        varchar(100)   ,
	"IMPORTO"            integer  NOT NULL ,
	"UNITA_DI_MISURA"    varchar(10)   ,
	"IVA"                smallint   ,
	"QUANTITA_MAGAZZINO" integer  NOT NULL ,
	"CODICE_A_BARRE"     varchar(20)   ,
	"QUANTITA_MINIMA"    integer   ,
	"IMPORTO_IVATO"      char(1)  NOT NULL ,
	"SETTORE"            integer  NOT NULL ,
	"PREZZO_ACQUISTO"    integer   ,
	"CODICE_PRODOTTO"    varchar(255)   ,
	"VISIBILE"           char(1)   ,
	"DA_INVIARE_A_MOBILE" char(1)   ,
	CONSTRAINT "PK_PRODOTTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_PRODOTTI_SETTORE" ON phoenix."PRODOTTI" ( "SETTORE" ) ;

CREATE UNIQUE INDEX "NDX_CODICE_A_BARRE" ON phoenix."PRODOTTI" ( "CODICE_A_BARRE" ) ;

CREATE UNIQUE INDEX "NDX_DESCRIZIONE" ON phoenix."PRODOTTI" ( "DESCRIZIONE" ) ;

CREATE  TABLE phoenix."RATE_FATTURE_PASSIVE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"FATTURA"            integer   ,
	"DATA_SCADENZA"      date   ,
	"DATA_PAGAMENTO"     date   ,
	"MOD_PAGAMENTO"      integer   ,
	"CASSA_CONTANTI"     char(1)   ,
	"CONTO_CORRENTE"     integer   ,
	"MOVIMENTO"          integer   ,
	"IMPORTO"            integer   ,
	CONSTRAINT "PK_RATE_FATTURE_PASSIVE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_RATE_FATTURE_PASSIVE_FATTURA" ON phoenix."RATE_FATTURE_PASSIVE" ( "FATTURA" ) ;

CREATE INDEX "FK_RATE_FATTURE_PASSIVE_MOVIMEN" ON phoenix."RATE_FATTURE_PASSIVE" ( "MOVIMENTO" ) ;

CREATE  TABLE phoenix."REL_DDT_ENTRANTE_ACQUISTI" ( 
	"DDT_ENTRANTE"       integer  NOT NULL ,
	"ACQUISTO"           integer  NOT NULL ,
	CONSTRAINT "PK_REL_DDT_ENTRANTE_ACQUISTI" PRIMARY KEY ( "DDT_ENTRANTE", "ACQUISTO" )
 ) ;

CREATE INDEX "FK_REL_DDT_ENTRANTE_ACQ_ACQUIST" ON phoenix."REL_DDT_ENTRANTE_ACQUISTI" ( "ACQUISTO" ) ;

CREATE INDEX "FK_REL_DDT_ENTRANTE_ACQ_DDT" ON phoenix."REL_DDT_ENTRANTE_ACQUISTI" ( "DDT_ENTRANTE" ) ;

CREATE  TABLE phoenix."RIEPILOGHI_FATTURE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"FATTURA"            integer   ,
	"IVA"                smallint   ,
	"ARROTONDAMENTO"     integer   ,
	"IMPONIBILE"         integer   ,
	"IMPOSTA"            integer   ,
	CONSTRAINT "PK_RIEPILOGHI_FATTURE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_RIEPILOGHI_FATTURA" ON phoenix."RIEPILOGHI_FATTURE" ( "FATTURA" ) ;

CREATE  TABLE phoenix."RINNOVI_CONTRATTI" ( 
	"CONTRATTO"          integer  NOT NULL ,
	"RINNOVATO_DA"       integer  NOT NULL ,
	CONSTRAINT "PK_RINNOVI_CONTRATTI" PRIMARY KEY ( "CONTRATTO", "RINNOVATO_DA" )
 ) ;

CREATE INDEX "FK_RINNOVI_CONTRATTI1" ON phoenix."RINNOVI_CONTRATTI" ( "CONTRATTO" ) ;

CREATE INDEX "FK_RINNOVI_CONTRATTI2" ON phoenix."RINNOVI_CONTRATTI" ( "RINNOVATO_DA" ) ;

CREATE  TABLE phoenix."RITENUTE_FATTURE_PASSIVE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"FATTURA"            integer   ,
	"TIPO"               smallint   ,
	"ALIQUOTA"           integer   ,
	"IMPORTO"            integer   ,
	CONSTRAINT "PK_RITENUTE_FATTURE_PASSIVE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_RITENUTE_FATTURE_PASSIVE_1" ON phoenix."RITENUTE_FATTURE_PASSIVE" ( "FATTURA" ) ;

CREATE  TABLE phoenix."SCANSIONI_CONTRATTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"CLIENTE"            integer   ,
	"PAGINA"             smallint   ,
	"IMMAGINE"           text   ,
	"IS_PDF"             char(1)   ,
	"TESTO"              varchar(255)   ,
	CONSTRAINT "PK_CONTRATTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_CONTRATTI_CLIENTE" ON phoenix."SCANSIONI_CONTRATTI" ( "CLIENTE" ) ;

CREATE  TABLE phoenix."SCANSIONI_FATTURE_PASSIVE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"FATTURA"            integer   ,
	"PAGINA"             smallint   ,
	"IMMAGINE"           text   ,
	"IS_PDF"             char(1)   ,
	"TESTO"              varchar(255)   ,
	CONSTRAINT "PK_SCANSIONI_FATTURE_PASSIVE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_SCANSIONI_FATTURE_PASSIVE_F" ON phoenix."SCANSIONI_FATTURE_PASSIVE" ( "FATTURA" ) ;

CREATE  TABLE phoenix."SPRINKLER_CLIENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"CLIENTE"            integer   ,
	"FILIALE"            integer   ,
	"MARCA"              integer   ,
	"TARATURA_VALVOLE"   smallint   ,
	"VALVOLE_RICAMBIO"   char(1)   ,
	"UBICAZIONE"         text   ,
	"TIPO"               integer   ,
	"STATO"              char(1)  NOT NULL ,
	"RINNOVATO_DA"       integer   ,
	"ANOMALIA_APPROVATA" char(1)   ,
	"ANOMALIA"           text   ,
	"MODELLO"            varchar(255)   ,
	"COMPRESSORE"        varchar(255)   ,
	"NOTE"               text   ,
	"QUANTITA_VALVOLE"   varchar(255)   ,
	"DESCRIZIONE"        varchar(255)   ,
	"PREC_ANOMALIA"      text   ,
	"ID_NFC"             varchar(100)   ,
	CONSTRAINT "PK_SPRINKLER_CLIENTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_SPRINKLER_CLIENTI_CLIENTE" ON phoenix."SPRINKLER_CLIENTI" ( "CLIENTE" ) ;

CREATE INDEX "FK_SPRINKLER_CLIENTI_FILIALE" ON phoenix."SPRINKLER_CLIENTI" ( "FILIALE" ) ;

CREATE INDEX "FK_SPRINKLER_CLIENTI_MARCHE" ON phoenix."SPRINKLER_CLIENTI" ( "MARCA" ) ;

CREATE INDEX "FK_SPRINKLER_CLIENTI_RINNOVO" ON phoenix."SPRINKLER_CLIENTI" ( "RINNOVATO_DA" ) ;

CREATE  TABLE phoenix."STATO_CHECKLIST_ATTREZZATURE" ( 
	"ATTREZZATURA"       integer  NOT NULL ,
	"CHECKLIST"          integer  NOT NULL ,
	"STATO"              integer   ,
	CONSTRAINT "PK_STATO_CHECKLIST_ATTREZZATURE" PRIMARY KEY ( "ATTREZZATURA", "CHECKLIST" )
 ) ;

CREATE INDEX "FK_STATO_CHECKLIST_ATTREZZATURE" ON phoenix."STATO_CHECKLIST_ATTREZZATURE" ( "CHECKLIST" ) ;

CREATE  TABLE phoenix."ULTIMA_PROVA_DINAMICA" ( 
	"IDRANTE"            integer  NOT NULL ,
	"DATA_PROVA"         date   ,
	"PRESSIONE_STATICA"  integer   ,
	"SPURGO_IMPIANTO"    char(1)   ,
	"DIAMETRO_BOCCHELLO" integer   ,
	"NR_IDRANTI_RILIEVO1" smallint   ,
	"PRESSIONE_RILIEVO1" integer   ,
	"PORTATA_RILIEVO1"   integer   ,
	"ESITO_RILIEVO1"     char(1)   ,
	"NR_IDRANTI_RILIEVO2" smallint   ,
	"PRESSIONE_RILIEVO2" integer   ,
	"PORTATA_RILIEVO2"   integer   ,
	"ESITO_RILIEVO2"     char(1)   ,
	"NR_IDRANTI_RILIEVO3" smallint   ,
	"PRESSIONE_RILIEVO3" integer   ,
	"PORTATA_RILIEVO3"   integer   ,
	"ESITO_RILIEVO3"     char(1)   ,
	"NOTE_TECNICO"       text   ,
	CONSTRAINT "PK_ULTIMA_PROVA_DINAMICA" PRIMARY KEY ( "IDRANTE" )
 ) ;

CREATE  TABLE phoenix."VOCI_ACQUISTI" ( 
	"ACQUISTO"           integer  NOT NULL ,
	"ORDINAMENTO"        smallint  NOT NULL ,
	"QUANTITA"           integer  NOT NULL ,
	"DESCRIZIONE"        varchar(255)  NOT NULL ,
	"PRODOTTO"           integer  NOT NULL ,
	"UNITA_DI_MISURA"    varchar(10)   ,
	"CODICE_A_BARRE"     varchar(20)   ,
	"CODICE_FORNITORE"   varchar(255)   ,
	"CODICE_PRODOTTO"    varchar(255)   ,
	CONSTRAINT "PK_VOCI_ACQUISTI" PRIMARY KEY ( "ACQUISTO", "ORDINAMENTO" )
 ) ;

CREATE INDEX "FK_VOCI_ACQUISTI" ON phoenix."VOCI_ACQUISTI" ( "ACQUISTO" ) ;

CREATE INDEX "FK_VOCI_ACQUISTI_PRODOTTO" ON phoenix."VOCI_ACQUISTI" ( "PRODOTTO" ) ;

CREATE  TABLE phoenix."VOCI_CARICO_MAGAZZINO" ( 
	"CARICO"             integer  NOT NULL ,
	"ORDINAMENTO"        smallint  NOT NULL ,
	"QUANTITA"           integer  NOT NULL ,
	"DESCRIZIONE"        varchar(100)  NOT NULL ,
	"PRODOTTO"           integer  NOT NULL ,
	"UNITA_DI_MISURA"    varchar(10)   ,
	"CODICE_A_BARRE"     varchar(20)   ,
	"CODICE_PRODOTTO"    varchar(255)   ,
	CONSTRAINT "PK_VOCI_CARICO_MAGAZZINO" PRIMARY KEY ( "CARICO", "ORDINAMENTO" )
 ) ;

CREATE INDEX "FK_VOCI_CARICO_MAGAZZINO" ON phoenix."VOCI_CARICO_MAGAZZINO" ( "CARICO" ) ;

CREATE INDEX "FK_VOCI_CARICO_MAGAZZINO_1" ON phoenix."VOCI_CARICO_MAGAZZINO" ( "PRODOTTO" ) ;

CREATE  TABLE phoenix."VOCI_DDT_ENTRANTI" ( 
	"DDT"                integer  NOT NULL ,
	"ORDINAMENTO"        smallint  NOT NULL ,
	"QUANTITA"           integer  NOT NULL ,
	"DESCRIZIONE"        varchar(100)  NOT NULL ,
	"PRODOTTO"           integer  NOT NULL ,
	"UNITA_DI_MISURA"    varchar(10)   ,
	"CODICE_A_BARRE"     varchar(20)   ,
	"CODICE_PRODOTTO"    varchar(255)   ,
	CONSTRAINT "PK_VOCI_DDT_ENTRANTI" PRIMARY KEY ( "DDT", "ORDINAMENTO" )
 ) ;

CREATE INDEX "FK_VOCI_DDT_ENTRANTI_1" ON phoenix."VOCI_DDT_ENTRANTI" ( "DDT" ) ;

CREATE INDEX "FK_VOCI_DDT_ENTRANTI_PRODOTTI" ON phoenix."VOCI_DDT_ENTRANTI" ( "PRODOTTO" ) ;

CREATE  TABLE phoenix."VOCI_DDT_USCENTI" ( 
	"DDT"                integer  NOT NULL ,
	"ORDINAMENTO"        smallint  NOT NULL ,
	"QUANTITA"           integer  NOT NULL ,
	"DESCRIZIONE"        varchar(100)  NOT NULL ,
	"PRODOTTO"           integer   ,
	"UNITA_DI_MISURA"    varchar(10)   ,
	"CODICE_A_BARRE"     varchar(20)   ,
	"CODICE_PRODOTTO"    varchar(255)   ,
	CONSTRAINT "PK_VOCI_DDT_USCENTI" PRIMARY KEY ( "DDT", "ORDINAMENTO" )
 ) ;

CREATE INDEX "FK_VOCI_DDT_USCENTI" ON phoenix."VOCI_DDT_USCENTI" ( "DDT" ) ;

CREATE INDEX "FK_VOCI_DDT_USCENTI_PRODOTTI" ON phoenix."VOCI_DDT_USCENTI" ( "PRODOTTO" ) ;

CREATE  TABLE phoenix."VOCI_FATTURE_PASSIVE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"FATTURA"            integer   ,
	"NUMERO_LINEA"       smallint   ,
	"QUANTITA"           integer   ,
	"PREZZO_UNITARIO"    integer   ,
	"PREZZO_TOTALE"      integer   ,
	"IVA"                smallint   ,
	"SCONTO1"            integer   ,
	"SCONTO2"            integer   ,
	"SCONTO3"            integer   ,
	"DDT"                varchar(255)   ,
	"DATA_DDT"           date   ,
	"NOTE"               text   ,
	"MEMO_DESCRIZIONE"   text   ,
	CONSTRAINT "PK_VOCI_FATTURE_PASSIVE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_VOCI_PASSIVE_FATTURA" ON phoenix."VOCI_FATTURE_PASSIVE" ( "FATTURA" ) ;

CREATE  TABLE phoenix."VOCI_SCARICO_MAGAZZINO" ( 
	"SCARICO"            integer  NOT NULL ,
	"ORDINAMENTO"        smallint  NOT NULL ,
	"QUANTITA"           integer  NOT NULL ,
	"DESCRIZIONE"        varchar(100)  NOT NULL ,
	"PRODOTTO"           integer  NOT NULL ,
	"UNITA_DI_MISURA"    varchar(10)   ,
	"CODICE_A_BARRE"     varchar(20)   ,
	"CODICE_PRODOTTO"    varchar(255)   ,
	CONSTRAINT "PK_VOCI_SCARICO_MAGAZZINO" PRIMARY KEY ( "SCARICO", "ORDINAMENTO" )
 ) ;

CREATE INDEX "FK_VOCI_SCARICO_MAGAZZINO" ON phoenix."VOCI_SCARICO_MAGAZZINO" ( "SCARICO" ) ;

CREATE INDEX "FK_VOCI_SCARICO_MAGAZZINO_1" ON phoenix."VOCI_SCARICO_MAGAZZINO" ( "PRODOTTO" ) ;

CREATE  TABLE phoenix."XML_FATTURE_PASSIVE" ( 
	"FATTURA"            integer  NOT NULL ,
	"BODY_XML"           text   ,
	CONSTRAINT "PK_XML_FATTURE_PASSIVE" PRIMARY KEY ( "FATTURA" )
 ) ;

CREATE  TABLE phoenix."BOCCHELLI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"IDRANTE"            integer   ,
	"ID_BOCCHELLO"       integer   ,
	"TIPO_BOCCHELLO"     integer   ,
	"TIPO_LANCIA"        integer   ,
	"LUNGHEZZA_MANICHETTA" integer   ,
	"UBICAZIONE"         text   ,
	"MESE_STARTUP"       smallint   ,
	"ANNO_STARTUP"       smallint   ,
	"ANNO_MANICHETTA"    smallint   ,
	"RINNOVATO_DA"       integer   ,
	"ANOMALIA_APPROVATA" char(1)   ,
	"ANOMALIA"           text   ,
	"STATO"              char(1)   ,
	"PREC_ANOMALIA"      text   ,
	"NOTE_TECNICO"       text   ,
	"MESE_PRESSATURA"    smallint   ,
	"ANNO_PRESSATURA"    smallint   ,
	"ID_NFC"             varchar(100)   ,
	CONSTRAINT "PK_BOCCHELLI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_BOCCHELLI_IDRANTE" ON phoenix."BOCCHELLI" ( "IDRANTE" ) ;

CREATE INDEX "FK_BOCCHELLI_RINNOVO" ON phoenix."BOCCHELLI" ( "RINNOVATO_DA" ) ;

CREATE INDEX "FK_BOCCHELLI_TIPO" ON phoenix."BOCCHELLI" ( "TIPO_BOCCHELLO" ) ;

CREATE INDEX "FK_BOCCHELLI_TIPO_LANCIA" ON phoenix."BOCCHELLI" ( "TIPO_LANCIA" ) ;

CREATE  TABLE phoenix."CODICI_FORNITORI_PRODOTTI" ( 
	"FORNITORE"          integer  NOT NULL ,
	"PRODOTTO"           integer  NOT NULL ,
	"CODICE"             varchar(255)   ,
	CONSTRAINT "PK_CODICI_FORNITORI_PRODOTTI" PRIMARY KEY ( "FORNITORE", "PRODOTTO" )
 ) ;

CREATE INDEX "FK_CODICI_PR_FORNITORE" ON phoenix."CODICI_FORNITORI_PRODOTTI" ( "FORNITORE" ) ;

CREATE INDEX "FK_CODICI_PR_PRODOTTO" ON phoenix."CODICI_FORNITORI_PRODOTTI" ( "PRODOTTO" ) ;

CREATE  TABLE phoenix."ELEMENTI_IMPIANTI_ELETTRICI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"IMPIANTO"           integer   ,
	"PROGRESSIVO"        integer   ,
	"TIPO"               integer   ,
	"MARCA"              integer   ,
	"MODELLO"            varchar(255)   ,
	"UBICAZIONE"         text   ,
	"RINNOVATO_DA"       integer   ,
	"ANOMALIA_APPROVATA" char(1)   ,
	"ANOMALIA"           text   ,
	"STATO"              char(1)   ,
	"PREC_ANOMALIA"      text   ,
	"NOTE_TECNICO"       text   ,
	"ID_NFC"             varchar(100)   ,
	CONSTRAINT "PK_ELEMENTI_IMPIANTI_ELETTRICI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_ELEMENTI_IMPIANTI_ELETTRICI_" ON phoenix."ELEMENTI_IMPIANTI_ELETTRICI" ( "TIPO" ) ;

CREATE INDEX "FK_ELEMENTI_IMP_IMPIANTO" ON phoenix."ELEMENTI_IMPIANTI_ELETTRICI" ( "IMPIANTO" ) ;

CREATE INDEX "FK_ELEMENTI_IMP_MARCA" ON phoenix."ELEMENTI_IMPIANTI_ELETTRICI" ( "MARCA" ) ;

CREATE  TABLE phoenix."ESTINTORI_CLIENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"CLIENTE"            integer   ,
	"FILIALE"            integer   ,
	"DATA_STARTUP_REV"   date   ,
	"TIPO_ESTINTORE"     integer   ,
	"PROGRESSIVO"        integer  NOT NULL ,
	"MATRICOLA"          varchar(255)   ,
	"ANNO_COSTRUZIONE"   smallint   ,
	"DATA_STARTUP_COL"   date   ,
	"STATO"              char(1)  NOT NULL ,
	"RINNOVATO_DA"       integer   ,
	"ANOMALIA_APPROVATA" char(1)   ,
	"ANOMALIA"           text   ,
	"UBICAZIONE"         text   ,
	"PREC_ANOMALIA"      text   ,
	"NOTE_TECNICO"       text   ,
	"ID_NFC"             varchar(100)   ,
	"MARCA"              integer   ,
	CONSTRAINT "PK_ESTINTORI_CLIENTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_ESTINTORI_CLIENTI_CLIENTE" ON phoenix."ESTINTORI_CLIENTI" ( "CLIENTE" ) ;

CREATE INDEX "FK_ESTINTORI_CLIENTI_FILIALE" ON phoenix."ESTINTORI_CLIENTI" ( "FILIALE" ) ;

CREATE INDEX "FK_ESTINTORI_CLIENTI_MARCA" ON phoenix."ESTINTORI_CLIENTI" ( "MARCA" ) ;

CREATE INDEX "FK_ESTINTORI_CLIENTI_RINNOVO" ON phoenix."ESTINTORI_CLIENTI" ( "RINNOVATO_DA" ) ;

CREATE INDEX "FK_ESTINTORI_CLIENTI_TIPO" ON phoenix."ESTINTORI_CLIENTI" ( "TIPO_ESTINTORE" ) ;

CREATE  TABLE phoenix."FATTURE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"ID_FATTURA"         smallint   ,
	"ANNO_FATTURA"       smallint   ,
	"ID_CLIENTE"         integer   ,
	"INDIRIZZO_CLIENTE"  varchar(255)   ,
	"PROVINCIA_CLIENTE"  char(2)   ,
	"CAP_CLIENTE"        varchar(10)  NOT NULL ,
	"DATA_FATTURA"       date  NOT NULL ,
	"PARTITA_IVA"        char(16)  NOT NULL ,
	"TITOLO_CLIENTE"     varchar(10)   ,
	"COD_FISCALE"        varchar(16)   ,
	"PROVINCIA_DESTINAZIONE" char(2)   ,
	"CAP_DESTINAZIONE"   varchar(10)   ,
	"DESTINAZIONE"       varchar(255)   ,
	"INDIRIZZO_DESTINAZIONE" varchar(255)   ,
	"DATA_ORDINE"        date   ,
	"COND_PAGAMENTO"     integer   ,
	"GENERAZIONE_AUTOMATICA" integer   ,
	"ABI"                varchar(10)   ,
	"CAB"                varchar(10)   ,
	"ESENTE_IVA"         char(1)   ,
	"NOTE_IN_FATTURA"    varchar(255)   ,
	"RITENUTA"           smallint   ,
	"ID_AMMINISTRATORE"  integer   ,
	"RIC_PRESENTATA"     char(1)   ,
	"SOSPESO"            char(1)   ,
	"INVIO_EMAIL"        char(1)   ,
	"DA_ESPORTARE_SUL_WEB" char(1)   ,
	"FATTURA_ELETTRONICA" char(1)   ,
	"BODY_FATTURA_ELETTRONICA" text   ,
	"CAUSALE"            text   ,
	"COD_ENTE_FATTURA_ELETTRONICA" varchar(255)   ,
	"ESIGIBILITA_IVA"    char(1)   ,
	"IVA_SUGGERITA"      smallint   ,
	"FATT_ELETT_FOR_UNIQUE_KEY" char(1)   ,
	"DOC_CORR_DATA"      date   ,
	"DOC_CORR_VOCE_RIFERIMENTO" varchar(255)   ,
	"DOC_CORR_CIG"       varchar(255)   ,
	"DOC_CORR_CUP"       varchar(255)   ,
	"DOC_CORR_CONVENZIONE" varchar(255)   ,
	"DOC_CORR_TIPO"      char(1)   ,
	"DOC_CORR_ID_DOCUMENTO" varchar(255)   ,
	"NATURA_IVA"         smallint   ,
	"MOV_PRESENTAZIONE"  integer   ,
	"GENERALITA_CLIENTE" varchar(255)  NOT NULL ,
	"FATT_ELETT_INVIATA" char(1)   ,
	"COMUNE_CLIENTE"     varchar(255)   ,
	"BANCA_APPOGGIO"     varchar(255)   ,
	"COMUNE_DESTINAZIONE" varchar(255)   ,
	"RIF_VOSTRO_ORDINE"  varchar(255)   ,
	"NR_CIVICO"          varchar(20)   ,
	CONSTRAINT "PK_FATTURE" PRIMARY KEY ( "CHIAVE" ),
	CONSTRAINT "UNQ1_FATTURE" UNIQUE ( "ANNO_FATTURA", "ID_FATTURA", "FATT_ELETT_FOR_UNIQUE_KEY" ) 
 ) ;

CREATE INDEX "FK_FATTURE" ON phoenix."FATTURE" ( "ID_CLIENTE" ) ;

CREATE INDEX "FK_FATTURE_AMMINISTRATORI" ON phoenix."FATTURE" ( "ID_AMMINISTRATORE" ) ;

CREATE INDEX "FK_FATTURE_COND_PAGAMENTO" ON phoenix."FATTURE" ( "COND_PAGAMENTO" ) ;

CREATE INDEX "FK_FATT_MOV_PRESENTAZIONE" ON phoenix."FATTURE" ( "MOV_PRESENTAZIONE" ) ;

CREATE  TABLE phoenix."FATT_ELETT_COMUNICAZIONI_SDI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"FATTURA"            integer   ,
	"DATA_INVIO"         date   ,
	"ORA_INVIO"          time   ,
	"NOME_SUPPORTO"      varchar(255)   ,
	"NOME_PROGRESSIVO"   varchar(255)   ,
	"ZIP_INVIATO"        text   ,
	"DATA_RICEZIONE"     date   ,
	"DATA_ESITO"         date   ,
	"ORA_RICEZIONE"      time   ,
	"ORA_ESITO"          time   ,
	"ESITO"              char(1)   ,
	"SCARTO"             text   ,
	"DATA_CONSEGNA"      date   ,
	"ORA_CONSEGNA"       time   ,
	"BODY_CONSEGNA_SCARTO" text   ,
	CONSTRAINT "PK_FATT_ELETT_COMUNICAZIONI_SDI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FATT_ELETT_COMUNICAZIONI_S_IDX1" ON phoenix."FATT_ELETT_COMUNICAZIONI_SDI" ( "NOME_SUPPORTO" ) ;

CREATE INDEX "FATT_ELETT_COMUNICAZIONI_S_IDX2" ON phoenix."FATT_ELETT_COMUNICAZIONI_SDI" ( "DATA_INVIO", "ORA_INVIO" ) ;

CREATE INDEX "FK_FATT_ELETT_COM_SDI_FATT" ON phoenix."FATT_ELETT_COMUNICAZIONI_SDI" ( "FATTURA" ) ;

CREATE  TABLE phoenix."INSOLUTI_MOVIMENTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"MOVIMENTO"          integer   ,
	"DATA"               date   ,
	"DESCRIZIONE"        varchar(255)   ,
	"IMPORTO"            integer   ,
	CONSTRAINT "PK_INSOLUTI_MOVIMENTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_INSOLUTI_MOVIMENTI_MOVIMENTO" ON phoenix."INSOLUTI_MOVIMENTI" ( "MOVIMENTO" ) ;

CREATE  TABLE phoenix."LOG_STATO_LAVORAZIONI" ( 
	"DATA"               timestamp(19)   ,
	"OPERAZIONE"         char(1)   ,
	"TECNICO"            integer   ,
	"STATINO"            varchar(20)   ,
	"ESTINTORE"          integer   ,
	"SPECIFICA"          text   ,
	"STATO"              char(1)   ,
	"STATINO_ORDINARIO"  char(1)   ,
	"DESCRIZIONE"        varchar(255)   
 ) ;

CREATE INDEX "FK_LOG_LAVOR_ESTINTORI" ON phoenix."LOG_STATO_LAVORAZIONI" ( "ESTINTORE" ) ;

CREATE INDEX "FK_LOG_LAVOR_TECNICO" ON phoenix."LOG_STATO_LAVORAZIONI" ( "TECNICO" ) ;

CREATE  TABLE phoenix."NOTE_DI_CREDITO" ( 
	"CHIAVE"             integer  NOT NULL ,
	"ID_NOTA"            smallint   ,
	"ANNO_NOTA"          smallint   ,
	"ID_CLIENTE"         integer   ,
	"INDIRIZZO_CLIENTE"  varchar(255)   ,
	"PROVINCIA_CLIENTE"  char(2)   ,
	"CAP_CLIENTE"        varchar(10)  NOT NULL ,
	"DATA_NOTA"          date  NOT NULL ,
	"PARTITA_IVA"        char(16)  NOT NULL ,
	"TITOLO_CLIENTE"     varchar(10)   ,
	"COD_FISCALE"        varchar(16)   ,
	"PROVINCIA_DESTINAZIONE" char(2)   ,
	"CAP_DESTINAZIONE"   varchar(10)   ,
	"DESTINAZIONE"       varchar(255)   ,
	"INDIRIZZO_DESTINAZIONE" varchar(255)   ,
	"DATA_ORDINE"        date   ,
	"COND_PAGAMENTO"     integer   ,
	"ESENTE_IVA"         char(1)   ,
	"NOTE"               varchar(255)   ,
	"RITENUTA"           smallint   ,
	"ID_AMMINISTRATORE"  integer   ,
	"RIC_PRESENTATA"     char(1)   ,
	"SOSPESO"            char(1)   ,
	"BODY_FATTURA_ELETTRONICA" text   ,
	"FATTURA_ELETTRONICA" char(1)   ,
	"CAUSALE"            text   ,
	"FATTURA_NON_RISCOSSA" integer   ,
	"CONTANTI"           char(1)   ,
	"CONTO_CORRENTE"     integer   ,
	"IMPORTO_X_PRIMA_NOTA" integer   ,
	"NOTA_ELETTRONICA_FOR_UNIQUE_KEY" char(1)   ,
	"ESIGIBILITA_IVA"    char(1)   ,
	"NATURA_IVA"         smallint   ,
	"DOC_CORR_DATA"      date   ,
	"DOC_CORR_VOCE_RIFERIMENTO" varchar(255)   ,
	"DOC_CORR_CIG"       varchar(255)   ,
	"DOC_CORR_CUP"       varchar(255)   ,
	"DOC_CORR_CONVENZIONE" varchar(255)   ,
	"DOC_CORR_TIPO"      char(1)   ,
	"DOC_CORR_ID_DOCUMENTO" varchar(255)   ,
	"GENERALITA_CLIENTE" varchar(255)  NOT NULL ,
	"FATT_ELETT_INVIATA" char(1)   ,
	"COMUNE_CLIENTE"     varchar(255)   ,
	"BANCA_APPOGGIO"     varchar(255)   ,
	"COMUNE_DESTINAZIONE" varchar(255)   ,
	"RIF_VOSTRO_ORDINE"  varchar(255)   ,
	"ABI"                varchar(5)   ,
	"CAB"                varchar(5)   ,
	"NR_CIVICO"          varchar(20)   ,
	"PROFORMA"           char(1)   ,
	"MOVIMENTO"          integer   ,
	"DATA_PAGAMENTO"     date   ,
	CONSTRAINT "PK_NOTE_DI_CREDITO" PRIMARY KEY ( "CHIAVE" ),
	CONSTRAINT "UNQ_NOTE_DI_CREDITO" UNIQUE ( "ID_NOTA", "ANNO_NOTA", "NOTA_ELETTRONICA_FOR_UNIQUE_KEY" ) 
 ) ;

CREATE INDEX "FK_NOTE_AMMINISTRATORI" ON phoenix."NOTE_DI_CREDITO" ( "ID_AMMINISTRATORE" ) ;

CREATE INDEX "FK_NOTE_CLIENTI" ON phoenix."NOTE_DI_CREDITO" ( "ID_CLIENTE" ) ;

CREATE INDEX "FK_NOTE_COND_PAGAMENTO" ON phoenix."NOTE_DI_CREDITO" ( "COND_PAGAMENTO" ) ;

CREATE INDEX "FK_NOTE_DI_CREDITO_NON_RISCOSSO" ON phoenix."NOTE_DI_CREDITO" ( "FATTURA_NON_RISCOSSA" ) ;

CREATE  TABLE phoenix."NOTE_ELETT_COMUNICAZIONI_SDI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"NOTA"               integer   ,
	"DATA_INVIO"         date   ,
	"ORA_INVIO"          time   ,
	"NOME_SUPPORTO"      varchar(255)   ,
	"NOME_PROGRESSIVO"   varchar(255)   ,
	"ZIP_INVIATO"        text   ,
	"DATA_RICEZIONE"     date   ,
	"DATA_ESITO"         date   ,
	"ORA_RICEZIONE"      time   ,
	"ORA_ESITO"          time   ,
	"ESITO"              char(1)   ,
	"SCARTO"             text   ,
	"DATA_CONSEGNA"      date   ,
	"ORA_CONSEGNA"       time   ,
	"BODY_CONSEGNA_SCARTO" text   ,
	CONSTRAINT "PK_NOTE_ELETT_COMUNICAZIONI_SDI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_NOTE_ELETT_COM_NOTA" ON phoenix."NOTE_ELETT_COMUNICAZIONI_SDI" ( "NOTA" ) ;

CREATE  TABLE phoenix."PREVENTIVI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"ID_PREVENTIVO"      smallint  NOT NULL ,
	"ANNO_PREVENTIVO"    smallint  NOT NULL ,
	"ID_CLIENTE"         integer   ,
	"INDIRIZZO_CLIENTE"  varchar(255)   ,
	"PROVINCIA_CLIENTE"  char(2)   ,
	"CAP_CLIENTE"        varchar(10)   ,
	"DATA_PREVENTIVO"    date  NOT NULL ,
	"PARTITA_IVA"        char(16)   ,
	"TITOLO_CLIENTE"     varchar(10)   ,
	"COD_FISCALE"        varchar(16)   ,
	"PROVINCIA_DESTINAZIONE" char(2)   ,
	"CAP_DESTINAZIONE"   varchar(10)   ,
	"DESTINAZIONE"       varchar(255)   ,
	"INDIRIZZO_DESTINAZIONE" varchar(255)   ,
	"COND_PAGAMENTO"     integer   ,
	"GENERAZIONE_AUTOMATICA" integer   ,
	"ESENTE_IVA"         char(1)   ,
	"RITENUTA"           smallint   ,
	"ID_AMMINISTRATORE"  integer   ,
	"FATTURA"            integer   ,
	"STATO"              char(1)   ,
	"NOTE"               text   ,
	"SOSPESO"            char(1)   ,
	"INVIO_MAIL"         char(1)   ,
	"GENERALITA_CLIENTE" varchar(255)  NOT NULL ,
	"COMUNE_CLIENTE"     varchar(255)   ,
	"BANCA_APPOGGIO"     varchar(255)   ,
	"COMUNE_DESTINAZIONE" varchar(255)   ,
	"ABI"                varchar(5)   ,
	"CAB"                varchar(5)   ,
	CONSTRAINT "PK_PREVENTIVI" PRIMARY KEY ( "CHIAVE" ),
	CONSTRAINT "UNQ_PREVENTIVI" UNIQUE ( "ID_PREVENTIVO", "ANNO_PREVENTIVO" ) 
 ) ;

CREATE INDEX "FK_PREVENTIVI_FATTURA" ON phoenix."PREVENTIVI" ( "FATTURA" ) ;

CREATE INDEX "FK_PREVENT_AMMINISTRATORI" ON phoenix."PREVENTIVI" ( "ID_AMMINISTRATORE" ) ;

CREATE INDEX "FK_PREVENT_CLIENTI" ON phoenix."PREVENTIVI" ( "ID_CLIENTE" ) ;

CREATE INDEX "FK_PREVENT_COND_PAGAMENTO" ON phoenix."PREVENTIVI" ( "COND_PAGAMENTO" ) ;

CREATE INDEX "NDX_VELOC_ALBERTO" ON phoenix."PREVENTIVI" ( "DATA_PREVENTIVO", "STATO" ) ;

CREATE  TABLE phoenix."PREVENTIVI_SOST_ESTINTORI" ( 
	"PREVENTIVO"         integer  NOT NULL ,
	"ESTINTORE"          integer  NOT NULL ,
	CONSTRAINT "PK_PREVENTIVI_SOST_ESTINTORI" PRIMARY KEY ( "PREVENTIVO", "ESTINTORE" )
 ) ;

CREATE INDEX "FK_PREVENTIVI_SOST_EST_ESTINT" ON phoenix."PREVENTIVI_SOST_ESTINTORI" ( "ESTINTORE" ) ;

CREATE INDEX "FK_PREVENTIVI_SOST_EST_PREV" ON phoenix."PREVENTIVI_SOST_ESTINTORI" ( "PREVENTIVO" ) ;

CREATE  TABLE phoenix."PREZZI_X_CLIENTE" ( 
	"CLIENTE"            integer  NOT NULL ,
	"PRODOTTO"           integer  NOT NULL ,
	"PREZZO"             integer  NOT NULL ,
	"PREZZO_IVATO"       char(1)   ,
	CONSTRAINT "PK_PREZZI_X_CLIENTE" PRIMARY KEY ( "CLIENTE", "PRODOTTO" )
 ) ;

CREATE INDEX "FK_PREZZI_X_CLIENTE" ON phoenix."PREZZI_X_CLIENTE" ( "CLIENTE" ) ;

CREATE INDEX "FK_PREZZI_X_CLIENTE_PR" ON phoenix."PREZZI_X_CLIENTE" ( "PRODOTTO" ) ;

CREATE  TABLE phoenix."RATE_FATTURA" ( 
	"CHIAVE"             integer  NOT NULL ,
	"FATTURA"            integer   ,
	"DATA"               date   ,
	"DATA_PAGAMENTO"     date   ,
	"IMPORTO"            integer   ,
	"CASSA_CONTANTI"     char(1)   ,
	"CASSA_ASSEGNI"      char(1)   ,
	"CONTO_CORRENTE"     integer   ,
	"MOVIMENTO"          integer   ,
	"DESCRIZIONE"        varchar(255)   ,
	CONSTRAINT "PK_RATE_FATTURA" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_RATE_FATTURA" ON phoenix."RATE_FATTURA" ( "FATTURA" ) ;

CREATE INDEX "FK_RATE_FATTURA_CONTO" ON phoenix."RATE_FATTURA" ( "CONTO_CORRENTE" ) ;

CREATE INDEX "FK_RATE_FATTURA_MOVIMENTO" ON phoenix."RATE_FATTURA" ( "MOVIMENTO" ) ;

CREATE  TABLE phoenix."SCANSIONI_FATTURE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"FATTURA"            integer   ,
	"PAGINA"             smallint   ,
	"IMMAGINE"           text   ,
	"IS_PDF"             char(1)   ,
	"TESTO"              varchar(255)   ,
	"INVIA_SDI"          char(1)   ,
	CONSTRAINT "PK_SCANSIONI_FATTURE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_SCANSIONI_FATTURE" ON phoenix."SCANSIONI_FATTURE" ( "FATTURA" ) ;

CREATE  TABLE phoenix."SCANSIONI_PREVENTIVI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"PREVENTIVO"         integer   ,
	"PAGINA"             smallint   ,
	"IMMAGINE"           text   ,
	"IS_PDF"             char(1)   ,
	"TESTO"              varchar(255)   ,
	CONSTRAINT "PK_SCANS_PREVENTIVI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_SCANSIONI_PREVENTIVI" ON phoenix."SCANSIONI_PREVENTIVI" ( "PREVENTIVO" ) ;

CREATE  TABLE phoenix."STATINI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"CLIENTE"            integer   ,
	"FILIALE"            integer   ,
	"TITOLO"             varchar(10)   ,
	"RAGIONE_SOCIALE"    varchar(255)   ,
	"INDIRIZZO"          varchar(255)   ,
	"COMUNE"             varchar(255)   ,
	"PROVINCIA"          char(2)   ,
	"CAP"                varchar(10)   ,
	"TELEFONO"           varchar(255)   ,
	"CELLULARE"          varchar(255)   ,
	"NOTE"               text   ,
	"ORARIO_APERTURA_DAL1" time   ,
	"ORARIO_APERTURA_DAL2" time   ,
	"ORARIO_APERTURA_AL1" time   ,
	"ORARIO_APERTURA_AL2" time   ,
	"CHIUSURA"           varchar(255)   ,
	"FATTURA"            integer   ,
	"DATA_INTERVENTO"    date   ,
	"GENERAZIONE_AUTOMATICA" integer   ,
	"TECNICO_INTERVENTO" integer   ,
	"SCANSIONE"          text   ,
	"REGISTRO"           text   ,
	"NOTE_PER_IL_TECNICO" text   ,
	"SOSPESO"            char(1)   ,
	"DA_ESPORTARE_SUL_WEB" char(1)   ,
	"RESPONSABILE"       integer   ,
	"ESPORTATO_SU_MOBILE" char(1)   ,
	"NOTE_DAL_TECNICO"   text   ,
	"JSON_DA_MOBILE"     text   ,
	"PDF_STATINO"        text   ,
	"REGISTRO_IS_PDF"    char(1)   ,
	"VERBALE_PROVA_DINAMICA" text   ,
	"VERBALE_MANICHETTE" text   ,
	"PREVENTIVO"         integer   ,
	"IGNORA_EVIDENZIAZIONE" char(1)   ,
	"ANNULLATO_DA_TABLET" char(1)   ,
	"MOBILEWARN_NUOVA_ATTREZZATURA" char(1)   ,
	"MOBILEWARN_ORDINARIA_RITIRATA" char(1)   ,
	"MOBILEWARN_N_ORDIN_CONTROLLATA" char(1)   ,
	"MOBILEWARN_SMALTIMENTO" char(1)   ,
	"STATO_LAVORAZIONE"  char(1)   ,
	"DATA_CHIUSURA_DA_SERVER" date   ,
	"CHIUSURA_EXT"       varchar(50)   ,
	"CHIUSURA_STATINO"   text   ,
	"MOBILEWARN_NON_ESEGUITI" char(1)   ,
	"PRESA_IN_CARICO"    char(1)   ,
	"FORNITURA"          char(1)   ,
	CONSTRAINT "PK_STATINI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_STATINI_1" ON phoenix."STATINI" ( "FILIALE" ) ;

CREATE INDEX "FK_STATINI_CLIENTI" ON phoenix."STATINI" ( "CLIENTE" ) ;

CREATE INDEX "FK_STATINI_FATTURA" ON phoenix."STATINI" ( "FATTURA" ) ;

CREATE INDEX "FK_STATINI_PREVENTIVO" ON phoenix."STATINI" ( "PREVENTIVO" ) ;

CREATE INDEX "FK_STATINI_RESPONSABILE" ON phoenix."STATINI" ( "RESPONSABILE" ) ;

CREATE INDEX "FK_STATINI_TECNICO" ON phoenix."STATINI" ( "TECNICO_INTERVENTO" ) ;

CREATE  TABLE phoenix."STATINI_DA_TABLET" ( 
	"CHIAVE"             integer  NOT NULL ,
	"ID_DOCUMENTO"       varchar(10)   ,
	"BODY"               text   ,
	"DATA"               date   ,
	"TECNICO"            integer   ,
	"SOSPESO"            char(1)   ,
	"STATO"              char(1)   ,
	"FATTURA"            integer   ,
	"PREVENTIVO"         integer   ,
	"CONTRATTO"          varchar(255)   ,
	"EMAIL"              varchar(255)   ,
	"INDIRIZZO"          varchar(255)   ,
	"COMUNE"             varchar(255)   ,
	"PARTITA_IVA"        varchar(16)   ,
	"CODICE_FISCALE"     varchar(16)   ,
	"PROBLEMA_RISCONTRATO" text   ,
	"RICHIEDENTE"        varchar(255)   ,
	"TELEFONO_RICHIEDENTE" varchar(255)   ,
	"DATA_RICHIESTA"     date   ,
	CONSTRAINT "PK_STATINI_DA_TABLET" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_STATINI_DA_TABLET_FATT" ON phoenix."STATINI_DA_TABLET" ( "FATTURA" ) ;

CREATE INDEX "FK_STATINI_DA_TABLET_PREV" ON phoenix."STATINI_DA_TABLET" ( "PREVENTIVO" ) ;

CREATE INDEX "FK_STATINI_DA_TABLET_TECNICO" ON phoenix."STATINI_DA_TABLET" ( "TECNICO" ) ;

CREATE  TABLE phoenix."VOCI_FATTURE" ( 
	"FATTURA"            integer  NOT NULL ,
	"ORDINAMENTO"        integer  NOT NULL ,
	"IMPORTO"            integer  NOT NULL ,
	"QUANTITA"           integer  NOT NULL ,
	"IVA"                smallint  NOT NULL ,
	"UNITA_DI_MISURA"    varchar(10)   ,
	"CODICE_A_BARRE"     varchar(20)   ,
	"IMPORTO_IVATO"      char(1)   ,
	"SCONTO"             smallint   ,
	"PRODOTTO"           integer   ,
	"CODICE"             varchar(255)   ,
	"DESCRIZIONE"        text   ,
	"VOCE_VUOTA"         text   
 ) ;

CREATE INDEX "FK_VOCI_FATTURE" ON phoenix."VOCI_FATTURE" ( "FATTURA" ) ;

CREATE INDEX "FK_VOCI_PRODOTTI" ON phoenix."VOCI_FATTURE" ( "PRODOTTO" ) ;

CREATE  TABLE phoenix."VOCI_NOTE_CREDITO" ( 
	"NOTA"               integer  NOT NULL ,
	"ORDINAMENTO"        integer  NOT NULL ,
	"IMPORTO"            integer  NOT NULL ,
	"QUANTITA"           integer  NOT NULL ,
	"IVA"                smallint  NOT NULL ,
	"UNITA_DI_MISURA"    varchar(10)   ,
	"CODICE_A_BARRE"     varchar(20)   ,
	"IMPORTO_IVATO"      char(1)   ,
	"PRODOTTO"           integer   ,
	"CODICE"             varchar(255)   ,
	"SCONTO"             smallint   ,
	"DESCRIZIONE"        text   ,
	"VOCE_VUOTA"         text   
 ) ;

CREATE INDEX "FK_VOCI_NOTE_CREDITO" ON phoenix."VOCI_NOTE_CREDITO" ( "NOTA" ) ;

CREATE INDEX "FK_VOCI_NOTE_PRODOTTI" ON phoenix."VOCI_NOTE_CREDITO" ( "PRODOTTO" ) ;

CREATE  TABLE phoenix."VOCI_PREVENTIVI" ( 
	"PREVENTIVO"         integer  NOT NULL ,
	"ORDINAMENTO"        integer  NOT NULL ,
	"IMPORTO"            integer  NOT NULL ,
	"QUANTITA"           integer  NOT NULL ,
	"IVA"                smallint  NOT NULL ,
	"UNITA_DI_MISURA"    varchar(10)   ,
	"CODICE_A_BARRE"     varchar(20)   ,
	"IMPORTO_IVATO"      char(1)   ,
	"SCONTO"             smallint   ,
	"PRODOTTO"           integer   ,
	"CODICE"             varchar(255)   ,
	"DESCRIZIONE"        text   ,
	"VOCE_VUOTA"         text   
 ) ;

CREATE INDEX "FK_VOCI_PREVENTIVI" ON phoenix."VOCI_PREVENTIVI" ( "PREVENTIVO" ) ;

CREATE INDEX "FK_VOCI_PREV_PRODOTTI" ON phoenix."VOCI_PREVENTIVI" ( "PRODOTTO" ) ;

CREATE  TABLE phoenix."ANOMALIE_PREVENTIVATE" ( 
	"PREVENTIVO"         integer  NOT NULL ,
	"ATTREZZATURA"       integer  NOT NULL ,
	"ANOMALIA"           text   ,
	CONSTRAINT "PK_ANOMALIE_PREVENTIVATE" PRIMARY KEY ( "PREVENTIVO", "ATTREZZATURA" )
 ) ;

CREATE INDEX "FK_ANOMALIE_PREVENTIVATE_PREV" ON phoenix."ANOMALIE_PREVENTIVATE" ( "PREVENTIVO" ) ;

CREATE  TABLE phoenix."FATTURE_ARRETRATE" ( 
	"STATINO"            integer  NOT NULL ,
	"FATTURA"            integer  NOT NULL ,
	CONSTRAINT "PK_FATTURE_ARRETRATE" PRIMARY KEY ( "STATINO", "FATTURA" )
 ) ;

CREATE INDEX "FK_FATTURE_ARRET_FATTURA" ON phoenix."FATTURE_ARRETRATE" ( "FATTURA" ) ;

CREATE INDEX "FK_FATTURE_ARRET_STATINO" ON phoenix."FATTURE_ARRETRATE" ( "STATINO" ) ;

CREATE  TABLE phoenix."INTERVENTI_ATTREZZATURE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"STATINO"            integer   ,
	"ATTREZZATURA"       integer   ,
	"TIPO_ATTREZZATURA"  char(1)   ,
	"ANOMALIA"           text   ,
	"TIPO"               char(1)   ,
	"DATA_CONTROLLO"     date   ,
	"DATA_CONSEGNA"      date   ,
	"PERIODI_NON_ORDINARI" char(1)   ,
	"DATA_CONTROLLO_NEGATO" date   ,
	CONSTRAINT "PK_INTERVENTI_ATTREZZATURE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_INTERVENTI_ATTREZZATURE_STAT" ON phoenix."INTERVENTI_ATTREZZATURE" ( "STATINO" ) ;

CREATE  TABLE phoenix."INTERVENTI_ESTINTORI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"STATINO"            integer   ,
	"ESTINTORE"          integer   ,
	"TIPO"               char(1)   ,
	"DESCRIZIONE_ALTERNATIVA" varchar(255)   ,
	"RESET_DATA_COLLAUDO" char(1)   ,
	"RESET_DATA_REVISIONE" char(1)   ,
	"ANOMALIA"           text   ,
	"DATA_CONTROLLO"     date   ,
	"DATA_RITIRO"        date   ,
	"DATA_SMALTIMENTO"   date   ,
	"DATA_RESTITUZIONE"  date   ,
	"DATA_CONSEGNA"      date   ,
	"DATA_CONTROLLO_NEGATO" date   ,
	CONSTRAINT "PK_INTERVENTI_ESTINTORI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_INTERVENTI_ESTINTORI" ON phoenix."INTERVENTI_ESTINTORI" ( "ESTINTORE" ) ;

CREATE INDEX "FK_INTERVENTI_ESTINTORI_STATINO" ON phoenix."INTERVENTI_ESTINTORI" ( "STATINO" ) ;

CREATE  TABLE phoenix."INTERVENTI_IDRANTI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"STATINO"            integer   ,
	"BOCCHELLO"          integer   ,
	"TIPO"               char(1)   ,
	"DESCRIZIONE_ALTERNATIVA" varchar(255)   ,
	"RESET_DATA_COLLAUDO" char(1)   ,
	"ANOMALIA"           text   ,
	"DATA_CONTROLLO"     date   ,
	"DATA_RITIRO"        date   ,
	"DATA_SMALTIMENTO"   date   ,
	"DATA_RESTITUZIONE"  date   ,
	"DATA_CONSEGNA"      date   ,
	"DATA_PRESSATURA"    date   ,
	"DATA_CONTROLLO_NEGATO" date   ,
	CONSTRAINT "PK_INTERVENTI_IDRANTI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_INTERVENTI_IDRANTI_BOCCHELLO" ON phoenix."INTERVENTI_IDRANTI" ( "BOCCHELLO" ) ;

CREATE INDEX "FK_INTERVENTI_IDRANTI_STATINO" ON phoenix."INTERVENTI_IDRANTI" ( "STATINO" ) ;

CREATE  TABLE phoenix."INTERVENTI_IMPIANTI_ELETTRICI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"STATINO"            integer   ,
	"ELEMENTO_IMPIANTO_ELETTRICO" integer   ,
	"ANOMALIA"           text   ,
	"DATA_CONTROLLO"     date   ,
	"TIPO"               char(1)   ,
	"DATA_CONSEGNA"      date   ,
	"DESCRIZIONE_ALTERNATIVA" varchar(255)   ,
	"DATA_CONTROLLO_NEGATO" date   ,
	CONSTRAINT "PK_INTERVENTI_IMPIANTI_ELETTRIC" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_INTERVENTI_ELETT_STATINI" ON phoenix."INTERVENTI_IMPIANTI_ELETTRICI" ( "STATINO" ) ;

CREATE INDEX "FK_INTERVENTI_IMPIANTI_ELETTRIC" ON phoenix."INTERVENTI_IMPIANTI_ELETTRICI" ( "ELEMENTO_IMPIANTO_ELETTRICO" ) ;

CREATE  TABLE phoenix."PRODOTTI_STATINI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"STATINO"            integer   ,
	"QUANTITA"           integer   ,
	"CODICE"             varchar(255)   ,
	"DESCRIZIONE"        varchar(255)   ,
	"ORDINAMENTO"        smallint   ,
	CONSTRAINT "PK_PRODOTTI_STATINI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_PRODOTTI_STATINI_1" ON phoenix."PRODOTTI_STATINI" ( "STATINO" ) ;

CREATE  TABLE phoenix."PROGRAMMAZIONE_STATINI" ( 
	"STATINO"            integer  NOT NULL ,
	"DATA_PROGRAMMAZIONE" date   ,
	"ORA"                time   ,
	"INVIATO"            char(1)   ,
	"NOTE"               text   ,
	"ELIMINATO"          char(1)   ,
	"FISSATO_DAL_TECNICO" char(1)   ,
	CONSTRAINT "PK_PROGRAMMAZIONE_STATINI" PRIMARY KEY ( "STATINO" )
 ) ;

CREATE  TABLE phoenix."RIENTRI_DA_MOBILE" ( 
	"CHIAVE"             integer  NOT NULL ,
	"DATA"               date   ,
	"STATINO"            integer   ,
	CONSTRAINT "PK_RIENTRI_DA_MOBILE" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_RIENTRI_DA_MOBILE_STATINO" ON phoenix."RIENTRI_DA_MOBILE" ( "STATINO" ) ;

CREATE  TABLE phoenix."SCANSIONI_STATINI" ( 
	"CHIAVE"             integer  NOT NULL ,
	"STATINO"            integer   ,
	"PAGINA"             smallint   ,
	"IMMAGINE"           text   ,
	"IS_PDF"             char(1)   ,
	"TESTO"              varchar(255)   ,
	CONSTRAINT "PK_SCANSIONI_STATINI" PRIMARY KEY ( "CHIAVE" )
 ) ;

CREATE INDEX "FK_SCANSIONI_STATINI" ON phoenix."SCANSIONI_STATINI" ( "STATINO" ) ;

ALTER TABLE phoenix."FORNITORI" ADD CONSTRAINT "FK_FORNITORI_COND_PAG" FOREIGN KEY ( "COND_PAGAMENTO" ) REFERENCES phoenix."COND_PAGAMENTO"( "CHIAVE" )   ;

ALTER TABLE phoenix."AMMINISTRATORI" ADD CONSTRAINT "FK_AMMINISTRATORI_COND_PAGAMENT" FOREIGN KEY ( "COND_PAGAMENTO" ) REFERENCES phoenix."COND_PAGAMENTO"( "CHIAVE" )   ;

ALTER TABLE phoenix."ARCHIVIO_MAIL" ADD CONSTRAINT "FK_ARCHIVIO_MAIL_AMMINISTRATORI" FOREIGN KEY ( "ID_AMMINISTRATORE" ) REFERENCES phoenix."AMMINISTRATORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."ARCHIVIO_MAIL" ADD CONSTRAINT "FK_ARCH_MAIL_FORNITORE" FOREIGN KEY ( "ID_FORNITORE" ) REFERENCES phoenix."FORNITORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."CHECKLIST_ATTREZZATURE" ADD CONSTRAINT "FK_CHECKLIST_ATTREZ_SOTTOCAT" FOREIGN KEY ( "SOTTOCATEGORIA" ) REFERENCES phoenix."TIPI_ELEM_IMPIANTI_ELETTRICI"( "CHIAVE" )   ;

ALTER TABLE phoenix."CLIENTI" ADD CONSTRAINT "FK_CLIENTI_AMMINISTRATORE" FOREIGN KEY ( "AMMINISTRATORE" ) REFERENCES phoenix."AMMINISTRATORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."CLIENTI" ADD CONSTRAINT "FK_CLIENTI_COND_PAGAMENTO" FOREIGN KEY ( "COND_PAGAMENTO" ) REFERENCES phoenix."COND_PAGAMENTO"( "CHIAVE" )   ;

ALTER TABLE phoenix."CLIENTI" ADD CONSTRAINT "FK_CLIENTI_RESPONSABILE" FOREIGN KEY ( "RESPONSABILE" ) REFERENCES phoenix."TECNICI"( "CHIAVE" )   ;

ALTER TABLE phoenix."COMUNICAZIONI_TECNICI" ADD CONSTRAINT "FK_COMUNICAZIONI_TECNICI" FOREIGN KEY ( "TECNICO" ) REFERENCES phoenix."TECNICI"( "CHIAVE" )   ;

ALTER TABLE phoenix."DDT_ENTRANTI" ADD CONSTRAINT "FK_DDT_ENTRANTI_FORNITORE" FOREIGN KEY ( "ID_FORNITORE" ) REFERENCES phoenix."FORNITORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."DDT_USCENTI" ADD CONSTRAINT "FK_DDT_USCENTI_AMMINISTRATORE" FOREIGN KEY ( "ID_AMMINISTRATORE" ) REFERENCES phoenix."AMMINISTRATORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."DDT_USCENTI" ADD CONSTRAINT "FK_DDT_USCENTI_FORNITORE" FOREIGN KEY ( "ID_FORNITORE" ) REFERENCES phoenix."FORNITORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FATTURE_PASSIVE" ADD CONSTRAINT "FK_FATTURE_PASSIVE_COND_PAGAMEN" FOREIGN KEY ( "COND_PAGAMENTO" ) REFERENCES phoenix."COND_PAGAMENTO"( "CHIAVE" )   ;

ALTER TABLE phoenix."FATTURE_PASSIVE" ADD CONSTRAINT "FK_FATTURE_PASSIVE_FORNITORE" FOREIGN KEY ( "FORNITORE" ) REFERENCES phoenix."FORNITORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FILIALI_CLIENTI" ADD CONSTRAINT "FK_FILIALI_CLIENTI" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FUMO_CLIENTI" ADD CONSTRAINT "FK_FUMO_CLIENTI_CLIENTE" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FUMO_CLIENTI" ADD CONSTRAINT "FK_FUMO_CLIENTI_FILIALE" FOREIGN KEY ( "FILIALE" ) REFERENCES phoenix."FILIALI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FUMO_CLIENTI" ADD CONSTRAINT "FK_FUMO_CLIENTI_RINNOVO" FOREIGN KEY ( "RINNOVATO_DA" ) REFERENCES phoenix."FUMO_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FUMO_CLIENTI" ADD CONSTRAINT "FK_FUMO_CLIENTI_MARCHE_CENTRALI" FOREIGN KEY ( "MARCA_CENTRALE" ) REFERENCES phoenix."MARCHE_CENTRALI_FUMI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FUMO_CLIENTI" ADD CONSTRAINT "FK_FUMO_CLIENTI_TIPO_CENTRALE" FOREIGN KEY ( "TIPO_CENTRALE" ) REFERENCES phoenix."TIPI_CENTRALI_FUMI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FUMO_CLIENTI" ADD CONSTRAINT "FK_FUMO_CLIENTI_TIPO_RILEVATORI" FOREIGN KEY ( "TIPO_RILEVATORI" ) REFERENCES phoenix."TIPI_RILEVATORI_FUMI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FUMO_CLIENTI" ADD CONSTRAINT "FK_FUMO_CLIENTI_TIPO_RIL_LINEAR" FOREIGN KEY ( "TIPO_RIL_LINEARI" ) REFERENCES phoenix."TIPI_RILEVATORI_LINEARI_FUMI"( "CHIAVE" )   ;

ALTER TABLE phoenix."GRUPPO_PRESSURIZZAZIONE_CLIENTI" ADD CONSTRAINT "FK_GRUPPO_PRESSU_CLIENTE" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."GRUPPO_PRESSURIZZAZIONE_CLIENTI" ADD CONSTRAINT "FK_GRUPPO_FILIALI" FOREIGN KEY ( "FILIALE" ) REFERENCES phoenix."FILIALI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."GRUPPO_PRESSURIZZAZIONE_CLIENTI" ADD CONSTRAINT "FK_GRUPPO_PRESSU_TIPO_BATTERIE" FOREIGN KEY ( "TIPO_BATTERIE" ) REFERENCES phoenix."TIPI_BATTERIE"( "CHIAVE" )   ;

ALTER TABLE phoenix."IDRANTI_CLIENTI" ADD CONSTRAINT "FK_IDRANTI_CLIENTI_CLIENTE" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."IDRANTI_CLIENTI" ADD CONSTRAINT "FK_IDRANTI_CLIENTI_FILIALE" FOREIGN KEY ( "FILIALE" ) REFERENCES phoenix."FILIALI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."IDRANTI_CLIENTI" ADD CONSTRAINT "FK_IDRANTI_CLIENTI_MOTOPOMPA" FOREIGN KEY ( "TIPO_ATTACCO_MOTOPOMPA" ) REFERENCES phoenix."TIPI_MOTOPOMPE_IDRANTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."IMPIANTI_ELETTRICI_CLIENTI" ADD CONSTRAINT "FK_IMPIANTI_ELETTRICI_CLIENTI_1" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."IMPIANTI_ELETTRICI_CLIENTI" ADD CONSTRAINT "FK_IMPIANTI_ELETTRICI_FILIALE" FOREIGN KEY ( "FILIALE" ) REFERENCES phoenix."FILIALI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."LUCI_CLIENTI" ADD CONSTRAINT "FK_LUCI_CLIENTI_CLIENTE" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."LUCI_CLIENTI" ADD CONSTRAINT "FK_LUCI_CLIENTI_FILIALE" FOREIGN KEY ( "FILIALE" ) REFERENCES phoenix."FILIALI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."LUCI_CLIENTI" ADD CONSTRAINT "FK_LUCI_CLIENTI_RINNOVO" FOREIGN KEY ( "RINNOVATO_DA" ) REFERENCES phoenix."LUCI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."LUCI_CLIENTI" ADD CONSTRAINT "FK_LUCI_CLIENTI_MARCA" FOREIGN KEY ( "MARCA" ) REFERENCES phoenix."MARCHE_LUCI"( "CHIAVE" )   ;

ALTER TABLE phoenix."LUCI_CLIENTI" ADD CONSTRAINT "FK_LUCI_CLIENTI_TIPO" FOREIGN KEY ( "TIPO_LUCE" ) REFERENCES phoenix."TIPO_LUCI"( "CHIAVE" )   ;

ALTER TABLE phoenix."MANUTENZIONE_ORDINARIA" ADD CONSTRAINT "FK_MANUTENZIONE_ORDINARIA_CLIEN" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."MAN_STRAORDINARIE_CLIENTI" ADD CONSTRAINT "FK_MAN_STRAORDINARIE_ESTINTORE" FOREIGN KEY ( "CAT_ESTINTORE" ) REFERENCES phoenix."CAT_ESTINTORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."MAN_STRAORDINARIE_CLIENTI" ADD CONSTRAINT "FK_MAN_STRAORDINARIE_CLIENTE" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."MOVIMENTI" ADD CONSTRAINT "FK_MOV_AMMINISTRATORE" FOREIGN KEY ( "AMMINISTRATORE_PARTITARIO" ) REFERENCES phoenix."AMMINISTRATORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."MOVIMENTI" ADD CONSTRAINT "FK_MOVIMENTI_CONTO_PRELIEVO" FOREIGN KEY ( "CONTO_CORRENTE_PRELIEVO" ) REFERENCES phoenix."CONTI_CORRENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."MOVIMENTI" ADD CONSTRAINT "FK_MOVIMENTI_CONTO_VERSAMENTO" FOREIGN KEY ( "CONTO_CORRENTE_VERSAMENTO" ) REFERENCES phoenix."CONTI_CORRENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."MOVIMENTI" ADD CONSTRAINT "FK_MOV_FORNITORE" FOREIGN KEY ( "FORNITORE_PARTITARIO" ) REFERENCES phoenix."FORNITORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."ORDINI_DA_TABLET" ADD CONSTRAINT "FK_ORDINI_DA_TABLET_TECNICO" FOREIGN KEY ( "TECNICO" ) REFERENCES phoenix."TECNICI"( "CHIAVE" )   ;

ALTER TABLE phoenix."PORTE_CLIENTI" ADD CONSTRAINT "FK_PORTE_CLIENTI_CLIENTE" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."PORTE_CLIENTI" ADD CONSTRAINT "FK_PORTE_CLIENTI_FILIALE" FOREIGN KEY ( "FILIALE" ) REFERENCES phoenix."FILIALI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."PORTE_CLIENTI" ADD CONSTRAINT "FK_PORTE_CLIENTI_MARCA_MANIGLIO" FOREIGN KEY ( "MARCA_MANIGLIONE" ) REFERENCES phoenix."MARCHE_MANIGLIONE_PORTE"( "CHIAVE" )   ;

ALTER TABLE phoenix."PORTE_CLIENTI" ADD CONSTRAINT "FK_PORTE_CLIENTI_MARCA" FOREIGN KEY ( "MARCA" ) REFERENCES phoenix."MARCHE_PORTE"( "CHIAVE" )   ;

ALTER TABLE phoenix."PORTE_CLIENTI" ADD CONSTRAINT "FK_PORTE_CLIENTI_RINNOVO" FOREIGN KEY ( "RINNOVATO_DA" ) REFERENCES phoenix."PORTE_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."PORTE_CLIENTI" ADD CONSTRAINT "FK_PORTE_CLIENTI_TIPO_INSTALLAZ" FOREIGN KEY ( "TIPO_INSTALLAZIONE" ) REFERENCES phoenix."TIPI_INSTALLAZIONE_PORTE"( "CHIAVE" )   ;

ALTER TABLE phoenix."PORTE_CLIENTI" ADD CONSTRAINT "FK_PORTE_CLIENTI_TIPO_MANIGLION" FOREIGN KEY ( "TIPO_MANIGLIONE" ) REFERENCES phoenix."TIPI_MANIGLIONI_PORTE"( "CHIAVE" )   ;

ALTER TABLE phoenix."PORTE_CLIENTI" ADD CONSTRAINT "FK_PORTE_CLIENTI_TIPO_MANIG_EST" FOREIGN KEY ( "TIPO_MANIGLIA_ESTERNA" ) REFERENCES phoenix."TIPI_MANIGLIONI_PORTE"( "CHIAVE" )   ;

ALTER TABLE phoenix."PORTE_CLIENTI" ADD CONSTRAINT "FK_PORTE_CLIENTI_TIPO_SERR_PRIN" FOREIGN KEY ( "TIPO_SERRATURA_ANTA_PRINCIPALE" ) REFERENCES phoenix."TIPI_SERRATURE"( "CHIAVE" )   ;

ALTER TABLE phoenix."PORTE_CLIENTI" ADD CONSTRAINT "FK_PORTE_CLIENTI_TIPO_SERR_SECO" FOREIGN KEY ( "TIPO_SERRATURA_ANTA_SECONDARIA" ) REFERENCES phoenix."TIPI_SERRATURE"( "CHIAVE" )   ;

ALTER TABLE phoenix."PORTE_CLIENTI" ADD CONSTRAINT "FK_PORTE_CLIENTI_TIPO" FOREIGN KEY ( "TIPO" ) REFERENCES phoenix."TIPO_PORTE"( "CHIAVE" )   ;

ALTER TABLE phoenix."PRODOTTI" ADD CONSTRAINT "FK_PRODOTTI_SETTORE" FOREIGN KEY ( "SETTORE" ) REFERENCES phoenix."SETTORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."RATE_FATTURE_PASSIVE" ADD CONSTRAINT "FK_RATE_FATTURE_PASSIVE_FATTURA" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE_PASSIVE"( "CHIAVE" )   ;

ALTER TABLE phoenix."RATE_FATTURE_PASSIVE" ADD CONSTRAINT "FK_RATE_FATTURE_PASSIVE_MOVIMEN" FOREIGN KEY ( "MOVIMENTO" ) REFERENCES phoenix."MOVIMENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."REL_DDT_ENTRANTE_ACQUISTI" ADD CONSTRAINT "FK_REL_DDT_ENTRANTE_ACQ_ACQUIST" FOREIGN KEY ( "ACQUISTO" ) REFERENCES phoenix."ACQUISTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."REL_DDT_ENTRANTE_ACQUISTI" ADD CONSTRAINT "FK_REL_DDT_ENTRANTE_ACQ_DDT" FOREIGN KEY ( "DDT_ENTRANTE" ) REFERENCES phoenix."DDT_ENTRANTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."RIEPILOGHI_FATTURE" ADD CONSTRAINT "FK_RIEPILOGHI_FATTURA" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE_PASSIVE"( "CHIAVE" )   ;

ALTER TABLE phoenix."RINNOVI_CONTRATTI" ADD CONSTRAINT "FK_RINNOVI_CONTRATTI1" FOREIGN KEY ( "CONTRATTO" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."RINNOVI_CONTRATTI" ADD CONSTRAINT "FK_RINNOVI_CONTRATTI2" FOREIGN KEY ( "RINNOVATO_DA" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."RITENUTE_FATTURE_PASSIVE" ADD CONSTRAINT "FK_RITENUTE_FATTURE_PASSIVE_1" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE_PASSIVE"( "CHIAVE" )   ;

ALTER TABLE phoenix."SCANSIONI_CONTRATTI" ADD CONSTRAINT "FK_CONTRATTI_CLIENTE" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."SCANSIONI_FATTURE_PASSIVE" ADD CONSTRAINT "FK_SCANSIONI_FATTURE_PASSIVE_F" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE_PASSIVE"( "CHIAVE" )   ;

ALTER TABLE phoenix."SPRINKLER_CLIENTI" ADD CONSTRAINT "FK_SPRINKLER_CLIENTI_CLIENTE" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."SPRINKLER_CLIENTI" ADD CONSTRAINT "FK_SPRINKLER_CLIENTI_FILIALE" FOREIGN KEY ( "FILIALE" ) REFERENCES phoenix."FILIALI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."SPRINKLER_CLIENTI" ADD CONSTRAINT "FK_SPRINKLER_CLIENTI_MARCHE" FOREIGN KEY ( "MARCA" ) REFERENCES phoenix."MARCHE_SPRINKLER"( "CHIAVE" )   ;

ALTER TABLE phoenix."SPRINKLER_CLIENTI" ADD CONSTRAINT "FK_SPRINKLER_CLIENTI_RINNOVO" FOREIGN KEY ( "RINNOVATO_DA" ) REFERENCES phoenix."SPRINKLER_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."STATO_CHECKLIST_ATTREZZATURE" ADD CONSTRAINT "FK_STATO_CHECKLIST_ATTREZZATURE" FOREIGN KEY ( "CHECKLIST" ) REFERENCES phoenix."CHECKLIST_ATTREZZATURE"( "CHIAVE" )   ;

ALTER TABLE phoenix."ULTIMA_PROVA_DINAMICA" ADD CONSTRAINT "FK_ULTIMA_PROVA_IDRANTE" FOREIGN KEY ( "IDRANTE" ) REFERENCES phoenix."IDRANTI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_ACQUISTI" ADD CONSTRAINT "FK_VOCI_ACQUISTI" FOREIGN KEY ( "ACQUISTO" ) REFERENCES phoenix."ACQUISTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_ACQUISTI" ADD CONSTRAINT "FK_VOCI_ACQUISTI_PRODOTTO" FOREIGN KEY ( "PRODOTTO" ) REFERENCES phoenix."PRODOTTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_CARICO_MAGAZZINO" ADD CONSTRAINT "FK_VOCI_CARICO_MAGAZZINO" FOREIGN KEY ( "CARICO" ) REFERENCES phoenix."CARICO_MAGAZZINO"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_CARICO_MAGAZZINO" ADD CONSTRAINT "FK_VOCI_CARICO_MAGAZZINO_1" FOREIGN KEY ( "PRODOTTO" ) REFERENCES phoenix."PRODOTTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_DDT_ENTRANTI" ADD CONSTRAINT "FK_VOCI_DDT_ENTRANTI_1" FOREIGN KEY ( "DDT" ) REFERENCES phoenix."DDT_ENTRANTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_DDT_ENTRANTI" ADD CONSTRAINT "FK_VOCI_DDT_ENTRANTI_PRODOTTI" FOREIGN KEY ( "PRODOTTO" ) REFERENCES phoenix."PRODOTTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_DDT_USCENTI" ADD CONSTRAINT "FK_VOCI_DDT_USCENTI" FOREIGN KEY ( "DDT" ) REFERENCES phoenix."DDT_USCENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_DDT_USCENTI" ADD CONSTRAINT "FK_VOCI_DDT_USCENTI_PRODOTTI" FOREIGN KEY ( "PRODOTTO" ) REFERENCES phoenix."PRODOTTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_FATTURE_PASSIVE" ADD CONSTRAINT "FK_VOCI_PASSIVE_FATTURA" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE_PASSIVE"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_SCARICO_MAGAZZINO" ADD CONSTRAINT "FK_VOCI_SCARICO_MAGAZZINO_1" FOREIGN KEY ( "PRODOTTO" ) REFERENCES phoenix."PRODOTTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_SCARICO_MAGAZZINO" ADD CONSTRAINT "FK_VOCI_SCARICO_MAGAZZINO" FOREIGN KEY ( "SCARICO" ) REFERENCES phoenix."SCARICO_MAGAZZINO"( "CHIAVE" )   ;

ALTER TABLE phoenix."XML_FATTURE_PASSIVE" ADD CONSTRAINT "FK_XML_FATTURE_PASSIVE" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE_PASSIVE"( "CHIAVE" )   ;

ALTER TABLE phoenix."BOCCHELLI" ADD CONSTRAINT "FK_BOCCHELLI_RINNOVO" FOREIGN KEY ( "RINNOVATO_DA" ) REFERENCES phoenix."BOCCHELLI"( "CHIAVE" )   ;

ALTER TABLE phoenix."BOCCHELLI" ADD CONSTRAINT "FK_BOCCHELLI_IDRANTE" FOREIGN KEY ( "IDRANTE" ) REFERENCES phoenix."IDRANTI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."BOCCHELLI" ADD CONSTRAINT "FK_BOCCHELLI_TIPO" FOREIGN KEY ( "TIPO_BOCCHELLO" ) REFERENCES phoenix."TIPO_BOCCHELLI"( "CHIAVE" )   ;

ALTER TABLE phoenix."BOCCHELLI" ADD CONSTRAINT "FK_BOCCHELLI_TIPO_LANCIA" FOREIGN KEY ( "TIPO_LANCIA" ) REFERENCES phoenix."TIPO_LANCIA"( "CHIAVE" )   ;

ALTER TABLE phoenix."CODICI_FORNITORI_PRODOTTI" ADD CONSTRAINT "FK_CODICI_PR_FORNITORE" FOREIGN KEY ( "FORNITORE" ) REFERENCES phoenix."FORNITORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."CODICI_FORNITORI_PRODOTTI" ADD CONSTRAINT "FK_CODICI_PR_PRODOTTO" FOREIGN KEY ( "PRODOTTO" ) REFERENCES phoenix."PRODOTTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."ELEMENTI_IMPIANTI_ELETTRICI" ADD CONSTRAINT "FK_ELEMENTI_IMP_IMPIANTO" FOREIGN KEY ( "IMPIANTO" ) REFERENCES phoenix."IMPIANTI_ELETTRICI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."ELEMENTI_IMPIANTI_ELETTRICI" ADD CONSTRAINT "FK_ELEMENTI_IMP_MARCA" FOREIGN KEY ( "MARCA" ) REFERENCES phoenix."MARCHE_ELEM_IMPIANTI_ELETTRICI"( "CHIAVE" )   ;

ALTER TABLE phoenix."ELEMENTI_IMPIANTI_ELETTRICI" ADD CONSTRAINT "FK_ELEMENTI_IMPIANTI_ELETTRICI_" FOREIGN KEY ( "TIPO" ) REFERENCES phoenix."TIPI_ELEM_IMPIANTI_ELETTRICI"( "CHIAVE" )   ;

ALTER TABLE phoenix."ESTINTORI_CLIENTI" ADD CONSTRAINT "FK_ESTINTORI_CLIENTI_TIPO" FOREIGN KEY ( "TIPO_ESTINTORE" ) REFERENCES phoenix."CAT_ESTINTORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."ESTINTORI_CLIENTI" ADD CONSTRAINT "FK_ESTINTORI_CLIENTI_CLIENTE" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."ESTINTORI_CLIENTI" ADD CONSTRAINT "FK_ESTINTORI_CLIENTI_RINNOVO" FOREIGN KEY ( "RINNOVATO_DA" ) REFERENCES phoenix."ESTINTORI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."ESTINTORI_CLIENTI" ADD CONSTRAINT "FK_ESTINTORI_CLIENTI_FILIALE" FOREIGN KEY ( "FILIALE" ) REFERENCES phoenix."FILIALI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."ESTINTORI_CLIENTI" ADD CONSTRAINT "FK_ESTINTORI_CLIENTI_MARCA" FOREIGN KEY ( "MARCA" ) REFERENCES phoenix."MARCHE_ESTINTORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FATTURE" ADD CONSTRAINT "FK_FATTURE_AMMINISTRATORI" FOREIGN KEY ( "ID_AMMINISTRATORE" ) REFERENCES phoenix."AMMINISTRATORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FATTURE" ADD CONSTRAINT "FK_FATTURE_CLIENTI" FOREIGN KEY ( "ID_CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FATTURE" ADD CONSTRAINT "FK_FATTURE_COND_PAGAMENTO" FOREIGN KEY ( "COND_PAGAMENTO" ) REFERENCES phoenix."COND_PAGAMENTO"( "CHIAVE" )   ;

ALTER TABLE phoenix."FATTURE" ADD CONSTRAINT "FK_FATT_MOV_PRESENTAZIONE" FOREIGN KEY ( "MOV_PRESENTAZIONE" ) REFERENCES phoenix."MOVIMENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FATT_ELETT_COMUNICAZIONI_SDI" ADD CONSTRAINT "FK_FATT_ELETT_COM_SDI_FATT" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE"( "CHIAVE" )   ;

ALTER TABLE phoenix."INSOLUTI_MOVIMENTI" ADD CONSTRAINT "FK_INSOLUTI_MOVIMENTI_MOVIMENTO" FOREIGN KEY ( "MOVIMENTO" ) REFERENCES phoenix."MOVIMENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."LOG_STATO_LAVORAZIONI" ADD CONSTRAINT "FK_LOG_LAVOR_ESTINTORI" FOREIGN KEY ( "ESTINTORE" ) REFERENCES phoenix."ESTINTORI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."LOG_STATO_LAVORAZIONI" ADD CONSTRAINT "FK_LOG_LAVOR_TECNICO" FOREIGN KEY ( "TECNICO" ) REFERENCES phoenix."TECNICI"( "CHIAVE" )   ;

ALTER TABLE phoenix."NOTE_DI_CREDITO" ADD CONSTRAINT "FK_NOTE_AMMINISTRATORI" FOREIGN KEY ( "ID_AMMINISTRATORE" ) REFERENCES phoenix."AMMINISTRATORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."NOTE_DI_CREDITO" ADD CONSTRAINT "FK_NOTE_CLIENTI" FOREIGN KEY ( "ID_CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."NOTE_DI_CREDITO" ADD CONSTRAINT "FK_NOTE_COND_PAGAMENTO" FOREIGN KEY ( "COND_PAGAMENTO" ) REFERENCES phoenix."COND_PAGAMENTO"( "CHIAVE" )   ;

ALTER TABLE phoenix."NOTE_DI_CREDITO" ADD CONSTRAINT "FK_NOTE_DI_CREDITO_NON_RISCOSSO" FOREIGN KEY ( "FATTURA_NON_RISCOSSA" ) REFERENCES phoenix."FATTURE"( "CHIAVE" )   ;

ALTER TABLE phoenix."NOTE_ELETT_COMUNICAZIONI_SDI" ADD CONSTRAINT "FK_NOTE_ELETT_COM_NOTA" FOREIGN KEY ( "NOTA" ) REFERENCES phoenix."NOTE_DI_CREDITO"( "CHIAVE" )   ;

ALTER TABLE phoenix."PREVENTIVI" ADD CONSTRAINT "FK_PREVENT_AMMINISTRATORI" FOREIGN KEY ( "ID_AMMINISTRATORE" ) REFERENCES phoenix."AMMINISTRATORI"( "CHIAVE" )   ;

ALTER TABLE phoenix."PREVENTIVI" ADD CONSTRAINT "FK_PREVENT_CLIENTI" FOREIGN KEY ( "ID_CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."PREVENTIVI" ADD CONSTRAINT "FK_PREVENT_COND_PAGAMENTO" FOREIGN KEY ( "COND_PAGAMENTO" ) REFERENCES phoenix."COND_PAGAMENTO"( "CHIAVE" )   ;

ALTER TABLE phoenix."PREVENTIVI" ADD CONSTRAINT "FK_PREVENTIVI_FATTURA" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE"( "CHIAVE" )   ;

ALTER TABLE phoenix."PREVENTIVI_SOST_ESTINTORI" ADD CONSTRAINT "FK_PREVENTIVI_SOST_EST_ESTINT" FOREIGN KEY ( "ESTINTORE" ) REFERENCES phoenix."ESTINTORI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."PREVENTIVI_SOST_ESTINTORI" ADD CONSTRAINT "FK_PREVENTIVI_SOST_EST_PREV" FOREIGN KEY ( "PREVENTIVO" ) REFERENCES phoenix."PREVENTIVI"( "CHIAVE" )   ;

ALTER TABLE phoenix."PREZZI_X_CLIENTE" ADD CONSTRAINT "FK_PREZZI_X_CLIENTE" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."PREZZI_X_CLIENTE" ADD CONSTRAINT "FK_PREZZI_X_CLIENTE_PR" FOREIGN KEY ( "PRODOTTO" ) REFERENCES phoenix."PRODOTTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."RATE_FATTURA" ADD CONSTRAINT "FK_RATE_FATTURA_CONTO" FOREIGN KEY ( "CONTO_CORRENTE" ) REFERENCES phoenix."CONTI_CORRENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."RATE_FATTURA" ADD CONSTRAINT "FK_RATE_FATTURA" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE"( "CHIAVE" )   ;

ALTER TABLE phoenix."RATE_FATTURA" ADD CONSTRAINT "FK_RATE_FATTURA_MOVIMENTO" FOREIGN KEY ( "MOVIMENTO" ) REFERENCES phoenix."MOVIMENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."SCANSIONI_FATTURE" ADD CONSTRAINT "FK_SCANSIONI_FATTURE" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE"( "CHIAVE" )   ;

ALTER TABLE phoenix."SCANSIONI_PREVENTIVI" ADD CONSTRAINT "FK_SCANSIONI_PREVENTIVI" FOREIGN KEY ( "PREVENTIVO" ) REFERENCES phoenix."PREVENTIVI"( "CHIAVE" )   ;

ALTER TABLE phoenix."STATINI" ADD CONSTRAINT "FK_STATINI_CLIENTI" FOREIGN KEY ( "CLIENTE" ) REFERENCES phoenix."CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."STATINI" ADD CONSTRAINT "FK_STATINI_FATTURA" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE"( "CHIAVE" )   ;

ALTER TABLE phoenix."STATINI" ADD CONSTRAINT "FK_STATINI_1" FOREIGN KEY ( "FILIALE" ) REFERENCES phoenix."FILIALI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."STATINI" ADD CONSTRAINT "FK_STATINI_PREVENTIVO" FOREIGN KEY ( "PREVENTIVO" ) REFERENCES phoenix."PREVENTIVI"( "CHIAVE" )   ;

ALTER TABLE phoenix."STATINI" ADD CONSTRAINT "FK_STATINI_RESPONSABILE" FOREIGN KEY ( "RESPONSABILE" ) REFERENCES phoenix."TECNICI"( "CHIAVE" )   ;

ALTER TABLE phoenix."STATINI" ADD CONSTRAINT "FK_STATINI_TECNICO" FOREIGN KEY ( "TECNICO_INTERVENTO" ) REFERENCES phoenix."TECNICI"( "CHIAVE" )   ;

ALTER TABLE phoenix."STATINI_DA_TABLET" ADD CONSTRAINT "FK_STATINI_DA_TABLET_FATT" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE"( "CHIAVE" )   ;

ALTER TABLE phoenix."STATINI_DA_TABLET" ADD CONSTRAINT "FK_STATINI_DA_TABLET_PREV" FOREIGN KEY ( "PREVENTIVO" ) REFERENCES phoenix."PREVENTIVI"( "CHIAVE" )   ;

ALTER TABLE phoenix."STATINI_DA_TABLET" ADD CONSTRAINT "FK_STATINI_DA_TABLET_TECNICO" FOREIGN KEY ( "TECNICO" ) REFERENCES phoenix."TECNICI"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_FATTURE" ADD CONSTRAINT "FK_VOCI_FATTURE" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_FATTURE" ADD CONSTRAINT "FK_VOCI_PRODOTTI" FOREIGN KEY ( "PRODOTTO" ) REFERENCES phoenix."PRODOTTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_NOTE_CREDITO" ADD CONSTRAINT "FK_VOCI_NOTE_CREDITO" FOREIGN KEY ( "NOTA" ) REFERENCES phoenix."NOTE_DI_CREDITO"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_NOTE_CREDITO" ADD CONSTRAINT "FK_VOCI_NOTE_PRODOTTI" FOREIGN KEY ( "PRODOTTO" ) REFERENCES phoenix."PRODOTTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_PREVENTIVI" ADD CONSTRAINT "FK_VOCI_PREVENTIVI" FOREIGN KEY ( "PREVENTIVO" ) REFERENCES phoenix."PREVENTIVI"( "CHIAVE" )   ;

ALTER TABLE phoenix."VOCI_PREVENTIVI" ADD CONSTRAINT "FK_VOCI_PREV_PRODOTTI" FOREIGN KEY ( "PRODOTTO" ) REFERENCES phoenix."PRODOTTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."ANOMALIE_PREVENTIVATE" ADD CONSTRAINT "FK_ANOMALIE_PREVENTIVATE_PREV" FOREIGN KEY ( "PREVENTIVO" ) REFERENCES phoenix."PREVENTIVI"( "CHIAVE" )   ;

ALTER TABLE phoenix."FATTURE_ARRETRATE" ADD CONSTRAINT "FK_FATTURE_ARRET_FATTURA" FOREIGN KEY ( "FATTURA" ) REFERENCES phoenix."FATTURE"( "CHIAVE" )   ;

ALTER TABLE phoenix."FATTURE_ARRETRATE" ADD CONSTRAINT "FK_FATTURE_ARRET_STATINO" FOREIGN KEY ( "STATINO" ) REFERENCES phoenix."STATINI"( "CHIAVE" )   ;

ALTER TABLE phoenix."INTERVENTI_ATTREZZATURE" ADD CONSTRAINT "FK_INTERVENTI_ATTREZZATURE_STAT" FOREIGN KEY ( "STATINO" ) REFERENCES phoenix."STATINI"( "CHIAVE" )   ;

ALTER TABLE phoenix."INTERVENTI_ESTINTORI" ADD CONSTRAINT "FK_INTERVENTI_ESTINTORI" FOREIGN KEY ( "ESTINTORE" ) REFERENCES phoenix."ESTINTORI_CLIENTI"( "CHIAVE" )   ;

ALTER TABLE phoenix."INTERVENTI_ESTINTORI" ADD CONSTRAINT "FK_INTERVENTI_ESTINTORI_STATINO" FOREIGN KEY ( "STATINO" ) REFERENCES phoenix."STATINI"( "CHIAVE" )   ;

ALTER TABLE phoenix."INTERVENTI_IDRANTI" ADD CONSTRAINT "FK_INTERVENTI_IDRANTI_BOCCHELLO" FOREIGN KEY ( "BOCCHELLO" ) REFERENCES phoenix."BOCCHELLI"( "CHIAVE" )   ;

ALTER TABLE phoenix."INTERVENTI_IDRANTI" ADD CONSTRAINT "FK_INTERVENTI_IDRANTI_STATINO" FOREIGN KEY ( "STATINO" ) REFERENCES phoenix."STATINI"( "CHIAVE" )   ;

ALTER TABLE phoenix."INTERVENTI_IMPIANTI_ELETTRICI" ADD CONSTRAINT "FK_INTERVENTI_IMPIANTI_ELETTRIC" FOREIGN KEY ( "ELEMENTO_IMPIANTO_ELETTRICO" ) REFERENCES phoenix."ELEMENTI_IMPIANTI_ELETTRICI"( "CHIAVE" )   ;

ALTER TABLE phoenix."INTERVENTI_IMPIANTI_ELETTRICI" ADD CONSTRAINT "FK_INTERVENTI_ELETT_STATINI" FOREIGN KEY ( "STATINO" ) REFERENCES phoenix."STATINI"( "CHIAVE" )   ;

ALTER TABLE phoenix."PRODOTTI_STATINI" ADD CONSTRAINT "FK_PRODOTTI_STATINI_1" FOREIGN KEY ( "STATINO" ) REFERENCES phoenix."STATINI"( "CHIAVE" )   ;

ALTER TABLE phoenix."PROGRAMMAZIONE_STATINI" ADD CONSTRAINT "FK_PROGRAMMAZIONE_STATINI" FOREIGN KEY ( "STATINO" ) REFERENCES phoenix."STATINI"( "CHIAVE" )   ;

ALTER TABLE phoenix."RIENTRI_DA_MOBILE" ADD CONSTRAINT "FK_RIENTRI_DA_MOBILE_STATINO" FOREIGN KEY ( "STATINO" ) REFERENCES phoenix."STATINI"( "CHIAVE" )   ;

ALTER TABLE phoenix."SCANSIONI_STATINI" ADD CONSTRAINT "FK_SCANSIONI_STATINI" FOREIGN KEY ( "STATINO" ) REFERENCES phoenix."STATINI"( "CHIAVE" )   ;
