unit Janua.TMLogistic.Migration;

interface

uses
  System.Classes,
  // Spring
  Spring, Spring.Collections,
  // Janua
  Janua.Core.Types, Janua.Core.TMLogistic.Types, Janua.Core.Classes;

type
  TJanuaTMMigrationEngine = class
  private
    class var FList: IList<TJanuaPageRecord>;
    class var FOriginSchema: string;
    class var FDestSchema: string;
    class procedure SetList(Value: IList<TJanuaPageRecord>); static;
  public
    class constructor Create;
  public
    class property List: IList<TJanuaPageRecord> read FList write SetList;
    class property OriginSchema: string read FOriginSchema write FOriginSchema;
    class property DestSchema: string read FDestSchema write FDestSchema;
  end;

type
  TJanuaTMMigration = class(TJanuaCoreComponent)
  end;

procedure register;

implementation

uses System.SysUtils, Janua.Core.Functions, Janua.Application.Framework;

procedure register;
begin
  RegisterComponents('Janua TMLogistic', [TJanuaTMMigration]);
end;

{ TJanuaTMMigrationEngine }

class constructor TJanuaTMMigrationEngine.Create;
begin
  try
    FList := TCollections.CreateList<TJanuaPageRecord>;
    FOriginSchema := 'dbo';
    FDestSchema := 'custom_tm_logistic';
    with FList do
    begin
      Add(TJanuaPageRecord.Create('Magazzini', 'Magazzini', 'Magazzini', ['Codice']));
      Add(TJanuaPageRecord.Create('FD', 'FD', 'fd', ['Codice']));
      Add(TJanuaPageRecord.Create('Documenti', 'Documenti', 'documenti', ['TipoDichiarazione']));
      Add(TJanuaPageRecord.Create('Uffici', 'Uffici', 'uffici', ['CodUfficio']));
      // CREATE TABLE dbo.COMPAGNIE (CodCompagnia)
      Add(TJanuaPageRecord.Create('Compagnie', 'COMPAGNIE', 'COMPAGNIE', ['CodCompagnia']));
      Add(TJanuaPageRecord.Create('CliFo', 'CLIFO', 'CLIFO', ['Codice']));
      // TIPI_DOCUMENTO
      Add(TJanuaPageRecord.Create('TipoDoc', 'TIPI_DOCUMENTO', 'TIPI_DOCUMENTO', ['TipoDocumento']));
      // IMBALLI
      Add(TJanuaPageRecord.Create('Imballi', 'IMBALLI', 'IMBALLI', ['CodImballo']));
      // MARCHE
      Add(TJanuaPageRecord.Create('Marche', 'MARCHE', 'MARCHE', ['CodMarca']));
      // MARCHE
      Add(TJanuaPageRecord.Create('Merci', 'MERCI', 'MERCI', ['Codice']));
      // Entrate
      Add(TJanuaPageRecord.Create('Entrate', 'ENTRATE', 'entrate', ['anno', 'num_entrata', 'pg']));
      Add(TJanuaPageRecord.Create('EntrateRighe', 'ENTRATE_RIGHE', 'ENTRATE_RIGHE',
        ['anno', 'num_entrata', 'pg', 'riga']));
      // CONSTRAINT DOCARCHIVIATIENTRATE_pk PRIMARY KEY anno , Num_Entrata ,pg ,contatore
      Add(TJanuaPageRecord.Create('DocArcEntrate', 'DOCUMENTIARCHIVIATI', 'DOCARCHIVIATIENTRATE',
        ['anno', 'Num_Entrata', 'pg', 'Contatore']));

      Add(TJanuaPageRecord.Create('LTAHouse', 'AEREALTAHOUSE', 'AEREALTAHOUSE',
        ['Anno', 'CodFiliale', 'Progressivo', 'ProgressivoPraticaGroupage', 'CodAttivita'], sdbPratiche));
      // AEREALTAMASTER
      Add(TJanuaPageRecord.Create('LTAMaster', 'AEREALTAMASTER', 'AEREALTAMASTER', ['Campo1C'], sdbPratiche));
      // AEREAPRENOTAZIONI
      Add(TJanuaPageRecord.Create('LTAPrenotazioni', 'AEREAPRENOTAZIONI', 'AEREAPRENOTAZIONI', ['NumAwb'],
        sdbPratiche));
      // AEREARIGHELTAHOUSE
      Add(TJanuaPageRecord.Create('LTAHouseRighe', 'AEREARIGHELTAHOUSE', 'AEREARIGHELTAHOUSE',
        ['ProgressivoLTA', 'Anno', 'CodFiliale', 'PrRiga'], sdbPratiche));
      // AEREARIGHELTAMASTER PRIMARY KEY  ( Campo1C, PrRiga )
      Add(TJanuaPageRecord.Create('LTAMasterRighe', 'AEREARIGHELTAMASTER', 'AEREARIGHELTAMASTER',
        ['Campo1C', 'PrRiga'], sdbPratiche));
      // AEREAVOCIOTHER PRIMARY KEY  ( Sigla )
      Add(TJanuaPageRecord.Create('LTAVociOther', 'AEREAVOCIOTHER', 'AEREAVOCIOTHER', ['Sigla'],
        sdbPratiche));
      // AEREAVOCIOTHERHOUSE PRIMARY KEY  ( Sigla )
      Add(TJanuaPageRecord.Create('LTAVociOtherHouse', 'AEREAVOCIOTHERHOUSE', 'AEREAVOCIOTHERHOUSE',
        ['Sigla'], sdbPratiche));
      // AGENTIIATA PRIMARY KEY  ( CodiceIATA )
      Add(TJanuaPageRecord.Create('AgentiIATA', 'AGENTIIATA', 'AGENTIIATA', ['CodiceIATA'], sdbPratiche));
      // ATTIVITAPRATICA PRIMARY KEY  ( CodAttivita )
      Add(TJanuaPageRecord.Create('AttivitaPratica', 'ATTIVITAPRATICA', 'ATTIVITAPRATICA', ['CodAttivita'],
        sdbPratiche));
      // AZIENDA PRIMARY KEY  ( CodAzienda )
      Add(TJanuaPageRecord.Create('Azienda', 'AZIENDA', 'AZIENDA', ['CodAzienda'], sdbPratiche));
      // BANCHE PRIMARY KEY  ( CODBANCA )
      Add(TJanuaPageRecord.Create('BANCHE', 'BANCHE', 'BANCHE', ['CODBANCA'], sdbPratiche));
      // PR_COMPAGNIE PRIMARY KEY  ( CodCompagnia )
      Add(TJanuaPageRecord.Create('PrCompagnie', 'COMPAGNIE', 'PR_COMPAGNIE', ['CodCompagnia'], sdbPratiche));
      // Condizioni PRIMARY KEY  ( TipoCondizione )
      Add(TJanuaPageRecord.Create('Condizioni', 'Condizioni', 'Condizioni', ['TipoCondizione'], sdbPratiche));
      // CORPOFATTOLD PRIMARY KEY  ( Anno, Contatore, ProgrRiga, CodFiliale )
      Add(TJanuaPageRecord.Create('CorpoFatt', 'CORPOFATT', 'CORPOFATT', ['Anno', 'Contatore', 'ProgrRiga',
        'CodFiliale'], sdbPratiche));
      // CORPOFATT_CAMPIONI PRIMARY KEY  ( AnnoFattura, NumRif, ProgrRiga, FlgTipoPrefFatt, CodFiliale )
      Add(TJanuaPageRecord.Create('CorpoFtCampioni', 'CORPOFATT_CAMPIONI', 'CORPOFATT_CAMPIONI',
        ['AnnoFattura', 'NumRif', 'ProgrRiga', 'FlgTipoPrefFatt', 'CodFiliale'], sdbPratiche));
      // Costi PRIMARY KEY  ( Anno, Progressivo, ProgressivoPraticaGroupage, CodAttivita, CodFiliale, NumeroRigaCosto )
      Add(TJanuaPageRecord.Create('Costi', 'Costi', 'Costi', ['Anno', 'Progressivo',
        'ProgressivoPraticaGroupage', 'CodAttivita', 'CodFiliale', 'NumeroRigaCosto'], sdbPratiche));
      // COSTI_LOG PRIMARY KEY  ( CodAttivita )
      Add(TJanuaPageRecord.Create('CostiLog', 'COSTI_LOG', 'COSTI_LOG', ['id'], sdbPratiche));
      // DatiMerce PRIMARY KEY  ( Anno, Progressivo, ProgressivoPraticaGroupage, CodAttivita, CodFiliale, ProgressivoRiga )
      Add(TJanuaPageRecord.Create('DatiMerce', 'DatiMerce', 'DatiMerce', ['Anno', 'Progressivo',
        'ProgressivoPraticaGroupage', 'CodAttivita', 'CodFiliale', 'ProgressivoRiga'], sdbPratiche));
      // DatiSpedizione PRIMARY KEY  ( Anno, Progressivo, ProgressivoPraticaGroupage, CodAttivita, CodFiliale )
      Add(TJanuaPageRecord.Create('DatiSpedizione', 'DatiSpedizione', 'DatiSpedizione',
        ['Anno', 'Progressivo', 'ProgressivoPraticaGroupage', 'CodAttivita', 'CodFiliale'], sdbPratiche));
      // DOCUMENTIARCHIVIATI PRIMARY KEY  ( Anno, Progressivo, ProgressivoPraticaGroupage, CodAttivita, CodFiliale, Contatore )
      Add(TJanuaPageRecord.Create('DocArchiviati', 'DOCUMENTIARCHIVIATI', 'DOCUMENTIARCHIVIATI',
        ['Anno', 'Progressivo', 'ProgressivoPraticaGroupage', 'CodAttivita', 'CodFiliale', 'Contatore'],
        sdbPratiche));

      // FORNITORI PRIMARY KEY  ( CodFornitore )
      Add(TJanuaPageRecord.Create('Fornitori', 'FORNITORI', 'FORNITORI', ['CodFornitore'], sdbPratiche));
      // LOCALITA PRIMARY KEY  ( DesLocalita )
      Add(TJanuaPageRecord.Create('Localita', 'LOCALITA', 'LOCALITA', ['DesLocalita'], sdbPratiche));
      // NaveAgenzia PRIMARY KEY  ( CodNave, CodAgenzia )
      Add(TJanuaPageRecord.Create('NaveAgenzia', 'NaveAgenzia', 'NaveAgenzia', ['CodNave', 'CodAgenzia'],
        sdbPratiche));
      // NaveCompagnia PRIMARY KEY  ( CodNave, CodCompagnia )
      Add(TJanuaPageRecord.Create('NaveCompagnia', 'NaveCompagnia', 'NaveCompagnia',
        ['CodNave', 'CodCompagnia'], sdbPratiche));
      // Navi PRIMARY KEY  ( CodNave )
      Add(TJanuaPageRecord.Create('Navi', 'Navi', 'Navi', ['CodNave'], sdbPratiche));
      // PORTI_1 PRIMARY KEY  ( CodPorto )
      Add(TJanuaPageRecord.Create('Porti', 'PORTI', 'PORTI', ['CodPorto'], sdbPratiche));
      // PRETESTAFATT PRIMARY KEY  ( Anno, Progressivo, ProgressivoPraticaGroupage, CodAttivita, CodFiliale, Contatore )
      Add(TJanuaPageRecord.Create('PrFattTesta', 'PRETESTAFATT', 'PRETESTAFATT',
        ['Anno', 'Progressivo', 'ProgressivoPraticaGroupage', 'CodAttivita', 'CodFiliale', 'Contatore'],
        sdbPratiche));
      // PRECORPOFATT PRIMARY KEY  ( Anno, Contatore, ProgrRiga, CodFiliale )
      Add(TJanuaPageRecord.Create('PrFattCorpo', 'PRECORPOFATT', 'PRECORPOFATT',
        ['Anno', 'Contatore', 'ProgrRiga', 'CodFiliale'], sdbPratiche));
      // LIVELLI PRIMARY KEY  ( Codice )
      Add(TJanuaPageRecord.Create('Livelli', 'LIVELLI', 'LIVELLI', ['Codice'], sdbPratiche));
      // LOCALITA PRIMARY KEY  ( DesLocalita )
      Add(TJanuaPageRecord.Create('Localita', 'LOCALITA', 'LOCALITA', ['DesLocalita'], sdbPratiche));
      // PROGRESSIVI PRIMARY KEY  ( Tipo, CodFiliale, CodAttivita, Anno )
      Add(TJanuaPageRecord.Create('Progressivi', 'PROGRESSIVI', 'PROGRESSIVI',
        ['Tipo', 'CodFiliale', 'CodAttivita', 'Anno'], sdbPratiche));
      // PROSPETTIQUOTAZIONI PRIMARY KEY  ( NProspetto )
      Add(TJanuaPageRecord.Create('ProspettiQuotazioni', 'PROSPETTIQUOTAZIONI', 'PROSPETTIQUOTAZIONI',
        ['sdbPratiche'], sdbPratiche));
      // Ricavi PRIMARY KEY  ( Anno, Progressivo, ProgressivoPraticaGroupage, CodAttivita, CodFiliale, NumeroRigaRicavo )
      Add(TJanuaPageRecord.Create('Ricavi', 'Ricavi', 'Ricavi', ['Anno', 'Progressivo',
        'ProgressivoPraticaGroupage', 'CodAttivita', 'CodFiliale', 'NumeroRigaRicavo'], sdbPratiche));
      // TIPODOC PRIMARY KEY  ( TipoDoc )
      Add(TJanuaPageRecord.Create('TipoDoc', 'TIPODOC', 'TIPODOC', ['TipoDoc'], sdbPratiche));
      // TABIVA PRIMARY KEY  ( CODICE )
      Add(TJanuaPageRecord.Create('TabIVA', 'TABIVA', 'TABIVA', ['CODICE'], sdbPratiche));
      // TESTAFATT PRIMARY KEY  ( AnnoFattura, Contatore, CodFiliale )
      Add(TJanuaPageRecord.Create('TestaFatt', 'TESTAFATT', 'TESTAFATT', ['AnnoFattura', 'Contatore',
        'CodFiliale'], sdbPratiche));
      // TESTAFATT_CAMPIONI PRIMARY KEY  ( AnnoFattura, NumRif, CodFiliale, FlgTipoPrefFatt ),
      Add(TJanuaPageRecord.Create('TestaFattCampioni', 'TESTAFATT_CAMPIONI', 'TESTAFATT_CAMPIONI',
        ['AnnoFattura', 'NumRif', 'CodFiliale', 'FlgTipoPrefFatt'], sdbPratiche));
      // TESTATAPRATICHE PRIMARY KEY  ( Anno, Progressivo, ProgressivoPraticaGroupage, CodAttivita, CodFiliale )
      Add(TJanuaPageRecord.Create('TabIVA', 'TESTATAPRATICHE', 'TESTATAPRATICHE',
        ['Anno', 'Progressivo', 'ProgressivoPraticaGroupage', 'CodAttivita', 'CodFiliale'], sdbPratiche));
      // TIDOFATT PRIMARY KEY  ( Codice )
      Add(TJanuaPageRecord.Create('TiDoFatt', 'TIDOFATT', 'TIDOFATT', ['Codice'], sdbPratiche));
      // TipiCalcolo PRIMARY KEY  ( TipoCalcolo )
      Add(TJanuaPageRecord.Create('TipiCalcolo', 'TipiCalcolo', 'TipiCalcolo', ['TipoCalcolo'], sdbPratiche));
      // TIPIDICHIARAZIONI PRIMARY KEY  ( TipoDichiarazione )
      Add(TJanuaPageRecord.Create('TipiCalcolo', 'TipiCalcolo', 'TipiCalcolo', ['TipoCalcolo'], sdbPratiche));
      // TipiPolizza PRIMARY KEY  ( CodTipo )
      Add(TJanuaPageRecord.Create('TipiPolizza', 'TipiPolizza', 'TipiPolizza', ['CodTipo'], sdbPratiche));
      // TipoCntrs PRIMARY KEY  ( CodCntr )
      Add(TJanuaPageRecord.Create('TipoCntrs', 'TipoCntrs', 'TipoCntrs', ['CodCntr'], sdbPratiche));
      // PR_TIPODOC PRIMARY KEY  ( TipoDoc )
      Add(TJanuaPageRecord.Create('PrTipoDoc', 'PR_TIPODOC', 'PR_TIPODOC', ['TipoDoc'], sdbPratiche));
      // TIPODOCARCHIVIATI PRIMARY KEY  ( TipoDoc )
      Add(TJanuaPageRecord.Create('DocArchiviati', 'TIPODOCARCHIVIATI', 'TIPODOCARCHIVIATI', ['TipoDoc'],
        sdbPratiche));
      // TestaFT PRIMARY KEY  ( CodFiliale, Anno, CodAttivita, Progressivo, ProgressivoPraticaGroupage )
      Add(TJanuaPageRecord.Create('TestaFT', 'TestaFT', 'TestaFT', ['CodFiliale', 'Anno', 'CodAttivita',
        'Progressivo', 'ProgressivoPraticaGroupage'], sdbPratiche));
      // TipiRiga PRIMARY KEY  ( TipoRiga )
      Add(TJanuaPageRecord.Create('TipiRiga', 'TipiRiga', 'TipiRiga', ['TipoRiga'], sdbPratiche));
      // TipiTariffe PRIMARY KEY  ( Descrizione )
      Add(TJanuaPageRecord.Create('TipiTariffe', 'TipiTariffe', 'TipiTariffe', ['Descrizione'], sdbPratiche));
      // UNITAMISURA PRIMARY KEY  ( UnitaMisura )
      Add(TJanuaPageRecord.Create('UnitaMisura', 'UNITAMISURA', 'UNITAMISURA', ['UnitaMisura'], sdbPratiche));

      // UTENTI PRIMARY KEY  ( CODICE )
      Add(TJanuaPageRecord.Create('Utenti', 'UTENTI', 'UTENTI', ['UTENTI'], sdbPratiche));

      // Valute PRIMARY KEY  ( CodValuta )
      Add(TJanuaPageRecord.Create('Valute', 'Valute', 'Valute', ['CodValuta'], sdbPratiche));

      // Vettori PRIMARY KEY  ( CodVettore )
      Add(TJanuaPageRecord.Create('Vettori', 'Vettori', 'Vettori', ['CodVettore'], sdbPratiche));

      // tblVIEW_CLIFO PRIMARY KEY  ( CODICE )
      Add(TJanuaPageRecord.Create('tblVIEW_CLIFO', 'tblVIEW_CLIFO', 'tblVIEW_CLIFO', ['CODICE'],
        sdbPratiche));

      // PR_CLIFO PRIMARY KEY  ( CODICE )
      Add(TJanuaPageRecord.Create('PrCliFo', 'CLIFO', 'PR_CLIFO', ['CODICE'], sdbPratiche));
    end;
  except
    on e: exception do
      RaiseException('TJanuaMigrationEngine.Create', e, nil);
  end;
end;

class procedure TJanuaTMMigrationEngine.SetList(Value: IList<TJanuaPageRecord>);
begin
  FList := Value
end;

end.
