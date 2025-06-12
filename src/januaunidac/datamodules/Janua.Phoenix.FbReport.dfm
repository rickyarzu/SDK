inherited dmPhoenixFbReport: TdmPhoenixFbReport
  Height = 617
  Width = 1121
  inherited JanuaUniConnection1: TJanuaUniConnection
    Options.DisconnectedMode = True
    Pooling = True
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object qryStatini: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select * from  VISTA_RAPPORTINI_STAMPA where chiave = :statino')
    Active = True
    Left = 400
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'statino'
        Value = 2248427
      end>
    object qryStatiniAMMINISTRATORE: TStringField
      FieldName = 'AMMINISTRATORE'
      Size = 255
    end
    object qryStatiniCONTRATTO: TStringField
      FieldName = 'CONTRATTO'
      Size = 255
    end
    object qryStatiniLOCAZIONE: TStringField
      FieldName = 'LOCAZIONE'
      Size = 100
    end
    object qryStatiniNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      Size = 255
    end
    object qryStatiniINDIRIZZO_FILIALE: TStringField
      FieldName = 'INDIRIZZO_FILIALE'
      Size = 533
    end
    object qryStatiniCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
    end
    object qryStatiniCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object qryStatiniFILIALE: TIntegerField
      FieldName = 'FILIALE'
    end
    object qryStatiniTITOLO: TStringField
      FieldName = 'TITOLO'
      Size = 10
    end
    object qryStatiniRAGIONE_SOCIALE: TStringField
      FieldName = 'RAGIONE_SOCIALE'
      Size = 255
    end
    object qryStatiniINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      Size = 255
    end
    object qryStatiniCOMUNE: TStringField
      FieldName = 'COMUNE'
      Size = 255
    end
    object qryStatiniPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      FixedChar = True
      Size = 2
    end
    object qryStatiniCAP: TStringField
      FieldName = 'CAP'
      Size = 10
    end
    object qryStatiniTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 255
    end
    object qryStatiniCELLULARE: TStringField
      FieldName = 'CELLULARE'
      Size = 255
    end
    object qryStatiniNOTE: TBlobField
      FieldName = 'NOTE'
    end
    object qryStatiniORARIO_APERTURA_DAL1: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL1'
    end
    object qryStatiniORARIO_APERTURA_DAL2: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL2'
    end
    object qryStatiniORARIO_APERTURA_AL1: TTimeField
      FieldName = 'ORARIO_APERTURA_AL1'
    end
    object qryStatiniORARIO_APERTURA_AL2: TTimeField
      FieldName = 'ORARIO_APERTURA_AL2'
    end
    object qryStatiniCHIUSURA: TStringField
      FieldName = 'CHIUSURA'
      Size = 255
    end
    object qryStatiniFATTURA: TIntegerField
      FieldName = 'FATTURA'
    end
    object qryStatiniDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
    end
    object qryStatiniGENERAZIONE_AUTOMATICA: TIntegerField
      FieldName = 'GENERAZIONE_AUTOMATICA'
    end
    object qryStatiniTECNICO_INTERVENTO: TIntegerField
      FieldName = 'TECNICO_INTERVENTO'
    end
    object qryStatiniSCANSIONE: TBlobField
      FieldName = 'SCANSIONE'
    end
    object qryStatiniREGISTRO: TBlobField
      FieldName = 'REGISTRO'
    end
    object qryStatiniNOTE_PER_IL_TECNICO: TBlobField
      FieldName = 'NOTE_PER_IL_TECNICO'
    end
    object qryStatiniSOSPESO: TStringField
      FieldName = 'SOSPESO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniDA_ESPORTARE_SUL_WEB: TStringField
      FieldName = 'DA_ESPORTARE_SUL_WEB'
      FixedChar = True
      Size = 1
    end
    object qryStatiniRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object qryStatiniESPORTATO_SU_MOBILE: TStringField
      FieldName = 'ESPORTATO_SU_MOBILE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniNOTE_DAL_TECNICO: TBlobField
      FieldName = 'NOTE_DAL_TECNICO'
    end
    object qryStatiniJSON_DA_MOBILE: TBlobField
      FieldName = 'JSON_DA_MOBILE'
    end
    object qryStatiniPDF_STATINO: TBlobField
      FieldName = 'PDF_STATINO'
    end
    object qryStatiniREGISTRO_IS_PDF: TStringField
      FieldName = 'REGISTRO_IS_PDF'
      FixedChar = True
      Size = 1
    end
    object qryStatiniVERBALE_PROVA_DINAMICA: TBlobField
      FieldName = 'VERBALE_PROVA_DINAMICA'
    end
    object qryStatiniVERBALE_MANICHETTE: TBlobField
      FieldName = 'VERBALE_MANICHETTE'
    end
    object qryStatiniPREVENTIVO: TIntegerField
      FieldName = 'PREVENTIVO'
    end
    object qryStatiniIGNORA_EVIDENZIAZIONE: TStringField
      FieldName = 'IGNORA_EVIDENZIAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniANNULLATO_DA_TABLET: TStringField
      FieldName = 'ANNULLATO_DA_TABLET'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_NUOVA_ATTREZZATURA: TStringField
      FieldName = 'MOBILEWARN_NUOVA_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_ORDINARIA_RITIRATA: TStringField
      FieldName = 'MOBILEWARN_ORDINARIA_RITIRATA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField
      FieldName = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniMOBILEWARN_SMALTIMENTO: TStringField
      FieldName = 'MOBILEWARN_SMALTIMENTO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniSTATO_LAVORAZIONE: TStringField
      FieldName = 'STATO_LAVORAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryStatiniDATA_CHIUSURA_DA_SERVER: TDateField
      FieldName = 'DATA_CHIUSURA_DA_SERVER'
    end
    object qryStatiniCHIUSURA_EXT: TStringField
      FieldName = 'CHIUSURA_EXT'
      Size = 50
    end
    object qryStatiniCHIUSURA_STATINO: TBlobField
      FieldName = 'CHIUSURA_STATINO'
    end
    object qryStatiniMOBILEWARN_NON_ESEGUITI: TStringField
      FieldName = 'MOBILEWARN_NON_ESEGUITI'
      FixedChar = True
      Size = 1
    end
    object qryStatiniPRESA_IN_CARICO: TStringField
      FieldName = 'PRESA_IN_CARICO'
      FixedChar = True
      Size = 1
    end
    object qryStatiniFORNITURA: TStringField
      FieldName = 'FORNITURA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniAPPUNTAMENTO_DATA: TDateField
      FieldName = 'APPUNTAMENTO_DATA'
    end
    object qryStatiniAPPUNTAMENTO_ORA: TTimeField
      FieldName = 'APPUNTAMENTO_ORA'
    end
    object qryStatiniSTATO: TSmallintField
      FieldName = 'STATO'
    end
    object qryStatiniJGUID: TBytesField
      FieldName = 'JGUID'
    end
    object qryStatiniGCAL: TStringField
      FieldName = 'GCAL'
      FixedChar = True
      Size = 1
    end
    object qryStatiniWANUMBER: TStringField
      FieldName = 'WANUMBER'
    end
    object qryStatiniWA: TStringField
      FieldName = 'WA'
      FixedChar = True
      Size = 1
    end
    object qryStatiniSTATO_IMMAGINE: TBlobField
      FieldName = 'STATO_IMMAGINE'
    end
    object qryStatiniWA_ID: TStringField
      FieldName = 'WA_ID'
      Size = 128
    end
    object qryStatiniWA_IMAGE: TBlobField
      FieldName = 'WA_IMAGE'
    end
    object qryStatiniWA_STATE: TSmallintField
      FieldName = 'WA_STATE'
    end
    object qryStatiniMESE_INTERVENTO: TSmallintField
      FieldName = 'MESE_INTERVENTO'
    end
    object qryStatiniNOME_MESE: TStringField
      FieldName = 'NOME_MESE'
      Size = 19
    end
  end
  object dsStatini: TUniDataSource
    DataSet = qryStatini
    Left = 400
    Top = 120
  end
  object qrySintesiInterventi: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'WITH numbered_rows AS ('
      '    SELECT '
      '        ROW_NUMBER() OVER (ORDER BY INTERVENTO) AS rownum,'
      '        STATINO,'
      '        INTERVENTO,'
      '        NUMERO'
      '    FROM  statino_sintesi_interventi '
      '    where statino = :CHIAVE'
      ')'
      ''
      'SELECT '
      '    dispari.rownum AS rownum_dispari,'
      '    dispari.STATINO AS STATINO_dispari,'
      '    dispari.INTERVENTO AS INTERVENTO_dispari,'
      '    dispari.NUMERO AS NUMERO_DISPARI,'
      '    pari.rownum AS rownum_dispari,'
      '    pari.STATINO AS STATINO_dispari,'
      '    pari.INTERVENTO AS INTERVENTO_dispari,'
      '    pari.NUMERO AS NUMERO_DISPARI'
      'FROM numbered_rows dispari'
      'left outer JOIN numbered_rows pari'
      '    ON pari.rownum = dispari.rownum + 1'
      'WHERE MOD(dispari.rownum, 2) = 1  -- solo righe dispari'
      'ORDER BY dispari.rownum;')
    MasterSource = dsStatini
    Active = True
    Left = 400
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2248427
      end>
    object qrySintesiInterventiROWNUM_DISPARI: TLargeintField
      FieldName = 'ROWNUM_DISPARI'
      ReadOnly = True
    end
    object qrySintesiInterventiSTATINO_DISPARI: TIntegerField
      FieldName = 'STATINO_DISPARI'
      ReadOnly = True
    end
    object qrySintesiInterventiINTERVENTO_DISPARI: TStringField
      FieldName = 'INTERVENTO_DISPARI'
      ReadOnly = True
      Size = 277
    end
    object qrySintesiInterventiNUMERO_DISPARI: TLargeintField
      FieldName = 'NUMERO_DISPARI'
      ReadOnly = True
    end
    object qrySintesiInterventiROWNUM_DISPARI_1: TLargeintField
      FieldName = 'ROWNUM_DISPARI_1'
      ReadOnly = True
    end
    object qrySintesiInterventiSTATINO_DISPARI_1: TIntegerField
      FieldName = 'STATINO_DISPARI_1'
      ReadOnly = True
    end
    object qrySintesiInterventiINTERVENTO_DISPARI_1: TStringField
      FieldName = 'INTERVENTO_DISPARI_1'
      ReadOnly = True
      Size = 277
    end
    object qrySintesiInterventiNUMERO_DISPARI_1: TLargeintField
      FieldName = 'NUMERO_DISPARI_1'
      ReadOnly = True
    end
  end
  object qryTipoInterventi: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT * FROM  INTERVENTI_STATINI_DETTAGLIO '
      'WHERE STATINO = :CHIAVE'
      'ORDER BY  POS, DESCRIZIONE')
    MasterSource = dsStatini
    Active = True
    Left = 400
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2248427
      end>
    object qryTipoInterventiPOS: TIntegerField
      FieldName = 'POS'
    end
    object qryTipoInterventiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryTipoInterventiDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 256
    end
    object qryTipoInterventiCONTROLLI: TLargeintField
      FieldName = 'CONTROLLI'
      DisplayFormat = '###'
    end
    object qryTipoInterventiORDINARIO: TLargeintField
      FieldName = 'ORDINARIO'
      DisplayFormat = '###'
    end
    object qryTipoInterventiREVISIONE: TLargeintField
      FieldName = 'REVISIONE'
      DisplayFormat = '###'
    end
    object qryTipoInterventiCOLLAUDO: TLargeintField
      FieldName = 'COLLAUDO'
      DisplayFormat = '###'
    end
    object qryTipoInterventiSOSTITUZIONE: TLargeintField
      FieldName = 'SOSTITUZIONE'
      DisplayFormat = '###'
    end
    object qryTipoInterventiRICARICA: TLargeintField
      FieldName = 'RICARICA'
      DisplayFormat = '###'
    end
    object qryTipoInterventiRIPARAZIONE: TLargeintField
      FieldName = 'RIPARAZIONE'
      DisplayFormat = '###'
    end
    object qryTipoInterventiNON_ESEGUITE: TLargeintField
      FieldName = 'NON_ESEGUITE'
      DisplayFormat = '###'
    end
    object qryTipoInterventiPRESSATURA: TLargeintField
      FieldName = 'PRESSATURA'
      DisplayFormat = '###'
    end
    object qryTipoInterventiNUOVI: TLargeintField
      FieldName = 'NUOVI'
      DisplayFormat = '###'
    end
  end
  object qryAnomalieEstintori: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftWideString
        FieldLength = 255
      end
      item
        FieldName = 'UBICAZIONE'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      
        'select IE.anomalia, ec.progressivo, ec.ubicazione, cate.descr_co' +
        'mpatta, ec.matricola'
      
        'from INTERVENTI_ESTINTORI IE  JOIN estintori_clienti EC ON IE.es' +
        'tintore = EC.chiave'
      '      JOIN cat_estintori CATE ON CATE.chiave = EC.tipo_estintore'
      'where STATINO = :CHIAVE'
      'AND IE.ANOMALIA IS NOT NULL '
      'AND CHAR_LENGTH(IE.ANOMALIA) > 0;')
    Active = True
    Left = 400
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2225863
      end>
    object qryAnomalieEstintoriANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object qryAnomalieEstintoriPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
      ReadOnly = True
      Required = True
    end
    object qryAnomalieEstintoriUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      ReadOnly = True
      Size = 255
    end
    object qryAnomalieEstintoriDESCR_COMPATTA: TStringField
      FieldName = 'DESCR_COMPATTA'
      ReadOnly = True
      Size = 255
    end
    object qryAnomalieEstintoriMATRICOLA: TStringField
      FieldName = 'MATRICOLA'
      ReadOnly = True
      Size = 255
    end
  end
  object qryDateInterventi: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT * FROM statini_date_interventi WHERE STATINO = :CHIAVE')
    MasterSource = dsStatini
    MasterFields = 'CHIAVE'
    DetailFields = 'STATINO'
    Active = True
    Left = 528
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2248427
      end>
    object qryDateInterventiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryDateInterventiDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object qryDateInterventiDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
    end
    object qryDateInterventiTECNICO_CONTROLLO: TIntegerField
      FieldName = 'TECNICO_CONTROLLO'
    end
  end
  object qryEstitoriRitirati: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT * FROM STATINO_ESTINTORI_RITIRATI'
      'WHERE STATINO = :CHIAVE '
      'ORDER BY PROGRESSIVO')
    Active = True
    Left = 400
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2248427
      end>
    object qryEstitoriRitiratiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryEstitoriRitiratiTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryEstitoriRitiratiPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
    end
    object qryEstitoriRitiratiMATRICOLA: TStringField
      FieldName = 'MATRICOLA'
      Size = 255
    end
    object qryEstitoriRitiratiDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object qryEstitoriRitiratiMOTIVO: TStringField
      FieldName = 'MOTIVO'
      FixedChar = True
      Size = 36
    end
  end
  object qryAnomaliePorte: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftWideString
        FieldLength = 255
      end
      item
        FieldName = 'UBICAZIONE'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select IE.*'
      'from ANOMALIE_PORTE IE'
      'where IE.STATINO = :CHIAVE')
    Active = True
    Left = 552
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2225863
      end>
    object qryAnomaliePorteSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryAnomaliePortePROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
    end
    object qryAnomaliePorteMATRICOLA: TStringField
      FieldName = 'MATRICOLA'
      Size = 255
    end
    object qryAnomaliePorteUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
    object qryAnomaliePorteDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object qryAnomaliePorteANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object qryAnomaliePorteANOMALIA_ANAGRAFICA: TBlobField
      FieldName = 'ANOMALIA_ANAGRAFICA'
    end
  end
  object qryAnomalieLuci: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftWideString
        FieldLength = 255
      end
      item
        FieldName = 'UBICAZIONE'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select IE.*'
      'from ANOMALIE_LUCI IE'
      'where IE.STATINO = :CHIAVE')
    Active = True
    Left = 688
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2225863
      end>
    object qryAnomalieLuciSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryAnomalieLuciPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
    end
    object qryAnomalieLuciUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
    object qryAnomalieLuciDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object qryAnomalieLuciDES_MARCA_LUCE: TStringField
      FieldName = 'DES_MARCA_LUCE'
      Size = 255
    end
    object qryAnomalieLuciANOMALIA_ON_DOWNLOAD: TStringField
      FieldName = 'ANOMALIA_ON_DOWNLOAD'
      Size = 256
    end
  end
  object qryAnomalieRilevatori: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftWideString
        FieldLength = 255
      end
      item
        FieldName = 'UBICAZIONE'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select IE.*'
      'from ANOMALIE_FUMI IE'
      'where IE.STATINO = :CHIAVE')
    Left = 248
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2225863
      end>
    object qryAnomalieRilevatoriSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryAnomalieRilevatoriUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
    object qryAnomalieRilevatoriATTREZZATURA: TIntegerField
      FieldName = 'ATTREZZATURA'
    end
    object qryAnomalieRilevatoriDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object qryAnomalieRilevatoriANOMALIA_ON_DOWNLOAD: TStringField
      FieldName = 'ANOMALIA_ON_DOWNLOAD'
      Size = 256
    end
  end
  object qryAnomalieSprinkler: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftWideString
        FieldLength = 255
      end
      item
        FieldName = 'UBICAZIONE'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select IE.*'
      'from ANOMALIE_SPRINKLER IE'
      'where IE.STATINO = :CHIAVE')
    Left = 88
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2225863
      end>
    object qryAnomalieSprinklerSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryAnomalieSprinklerUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
    object qryAnomalieSprinklerDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object qryAnomalieSprinklerMODELLO: TStringField
      FieldName = 'MODELLO'
      Size = 255
    end
    object qryAnomalieSprinklerANOMALIA_ON_DOWNLOAD: TStringField
      FieldName = 'ANOMALIA_ON_DOWNLOAD'
      Size = 256
    end
    object qryAnomalieSprinklerANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object qryAnomalieSprinklerANOMALIA_INTERVENTO: TBlobField
      FieldName = 'ANOMALIA_INTERVENTO'
    end
  end
  object qryAnomalieGruppi: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftWideString
        FieldLength = 255
      end
      item
        FieldName = 'UBICAZIONE'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select IE.*'
      'from ANOMALIE_GRUPPI IE'
      'where IE.STATINO = :CHIAVE')
    Left = 824
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2225863
      end>
    object qryAnomalieGruppiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryAnomalieGruppiDESCRIZIONE: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object qryAnomalieGruppiANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
    object qryAnomalieGruppiANOMALIA_ON_DOWNLOAD: TStringField
      FieldName = 'ANOMALIA_ON_DOWNLOAD'
      Size = 256
    end
  end
  object qryAnomalieIdranti: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftWideString
        FieldLength = 255
      end
      item
        FieldName = 'UBICAZIONE'
        FieldType = ftWideString
        FieldLength = 255
      end
      item
        FieldName = 'UBICAZIONE_IDRANTE'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'select IE.*'
      'from ANOMALIE_IDRANTI IE'
      'where IE.STATINO = :CHIAVE')
    Left = 952
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2225863
      end>
    object qryAnomalieIdrantiSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryAnomalieIdrantiID_BOCCHELLO: TIntegerField
      FieldName = 'ID_BOCCHELLO'
    end
    object qryAnomalieIdrantiUBICAZIONE: TWideStringField
      FieldName = 'UBICAZIONE'
      Size = 255
    end
    object qryAnomalieIdrantiUBICAZIONE_IDRANTE: TWideStringField
      FieldName = 'UBICAZIONE_IDRANTE'
      Size = 255
    end
    object qryAnomalieIdrantiDES_BOCCHELLO: TStringField
      FieldName = 'DES_BOCCHELLO'
      Size = 255
    end
    object qryAnomalieIdrantiANOMALIA: TWideStringField
      FieldName = 'ANOMALIA'
      Size = 255
    end
  end
  object qrpCheckList: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'DESCRIZIONE_ATTREZZATURA'
        FieldType = ftWideString
        FieldLength = 255
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      
        'SELECT * FROM INTERVENTI_ATTREZZATTURE_CK where STATINO = :CHIAV' +
        'E')
    Active = True
    Left = 448
    Top = 480
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2225863
      end>
    object qrpCheckListCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
    end
    object qrpCheckListSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qrpCheckListDESCRIZIONE_ATTREZZATURA: TWideStringField
      FieldName = 'DESCRIZIONE_ATTREZZATURA'
      Size = 255
    end
    object qrpCheckListTIPOLOGIA_DESCRIZIONE: TStringField
      FieldName = 'TIPOLOGIA_DESCRIZIONE'
      Size = 256
    end
  end
  object qrpCheckListDetails: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'DESCRIZIONE_ATTREZZATURA'
        FieldType = ftWideString
        FieldLength = 255
      end
      item
        FieldName = 'ANOMALIE_CORRELATE'
        FieldType = ftWideMemo
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT * FROM INTERVENTI_CHECKLIST where CHIAVE = :CHIAVE')
    MasterSource = dsChecklist
    MasterFields = 'CHIAVE'
    DetailFields = 'CHIAVE'
    Active = True
    Left = 656
    Top = 480
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2225961
      end>
    object IntegerField1: TIntegerField
      FieldName = 'STATINO'
    end
    object WideStringField1: TWideStringField
      FieldName = 'DESCRIZIONE_ATTREZZATURA'
      Size = 255
    end
    object StringField1: TStringField
      FieldName = 'TIPOLOGIA_DESCRIZIONE'
      Size = 256
    end
    object IntegerField2: TIntegerField
      FieldName = 'CHIAVE'
    end
    object StringField2: TStringField
      FieldName = 'DESCRIZIONE'
      Size = 255
    end
    object StringField3: TStringField
      FieldName = 'TIPOLOGIA'
      FixedChar = True
      Size = 1
    end
    object SmallintField1: TSmallintField
      FieldName = 'ORDINAMENTO'
    end
    object WideMemoField1: TWideMemoField
      FieldName = 'ANOMALIE_CORRELATE'
      BlobType = ftWideMemo
    end
    object IntegerField3: TIntegerField
      FieldName = 'SOTTOCATEGORIA'
    end
  end
  object dsChecklist: TUniDataSource
    DataSet = qrpCheckList
    Left = 544
    Top = 480
  end
end
