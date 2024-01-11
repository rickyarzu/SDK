object dmFBPhonixMantReport: TdmFBPhonixMantReport
  Height = 399
  Width = 610
  object uprInterbase: TInterBaseUniProvider
    Left = 72
    Top = 40
  end
  object uconPhoenix: TJanuaUniConnection
    ProviderName = 'InterBase'
    Database = '/Users/riccardoarduino/db/firebird.fdb'
    Username = 'SYSDBA'
    Server = '192.168.2.2'
    Connected = True
    SchemaParamKey = 'system.db_schema_id'
    SchemaParams = <>
    Left = 72
    Top = 104
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object qryAnomalie: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftString
        FieldLength = 1024
      end>
    Connection = uconPhoenix
    SQL.Strings = (
      'SELECT '
      '  CHIAVE,'
      '  STATINO,'
      '  ATTREZZATURA,'
      '  TIPO_ATTREZZATURA,'
      '  ANOMALIA,'
      '  TIPO,'
      '  DATA_CONTROLLO,'
      '  DATA_CONSEGNA,'
      '  PERIODI_NON_ORDINARI,'
      '  DATA_CONTROLLO_NEGATO,'
      '  OCTET_LENGTH(ANOMALIA) AS B_ANOMALIA'
      'FROM '
      '  INTERVENTI_ATTREZZATURE '
      'WHERE '
      '  STATINO = :CHIAVE'
      'AND '
      '  OCTET_LENGTH(ANOMALIA) > 0')
    MasterSource = dsStatini
    Left = 312
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2056002
      end>
    object qryAnomalieCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryAnomalieSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryAnomalieATTREZZATURA: TIntegerField
      FieldName = 'ATTREZZATURA'
    end
    object qryAnomalieTIPO_ATTREZZATURA: TStringField
      FieldName = 'TIPO_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryAnomalieANOMALIA: TStringField
      FieldName = 'ANOMALIA'
      Size = 1024
    end
    object qryAnomalieTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryAnomalieDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
    end
    object qryAnomalieDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
    end
    object qryAnomaliePERIODI_NON_ORDINARI: TStringField
      FieldName = 'PERIODI_NON_ORDINARI'
      FixedChar = True
      Size = 1
    end
    object qryAnomalieDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
    end
    object qryAnomalieB_ANOMALIA: TLargeintField
      FieldName = 'B_ANOMALIA'
      ReadOnly = True
    end
  end
  object qryEstintori: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftString
        FieldLength = 1024
      end>
    Connection = uconPhoenix
    SQL.Strings = (
      
        'SELECT ie.CHIAVE, ie.STATINO, ie.ESTINTORE, ie.TIPO, ie.DESCRIZI' +
        'ONE_ALTERNATIVA, ie.RESET_DATA_COLLAUDO, ie.RESET_DATA_REVISIONE' +
        ', '
      
        'ie.ANOMALIA, ie.DATA_CONTROLLO, ie.DATA_RITIRO, ie.DATA_SMALTIME' +
        'NTO, ie.DATA_RESTITUZIONE, ie.DATA_CONSEGNA, ie.DATA_CONTROLLO_N' +
        'EGATO, '
      
        'ec.DATA_STARTUP_REV, ec.TIPO_ESTINTORE, ec.PROGRESSIVO, ec.MATRI' +
        'COLA, ec.ANNO_COSTRUZIONE, ec.DATA_STARTUP_COL, ec.STATO, ec.RIN' +
        'NOVATO_DA, '
      
        'ec.ANOMALIA_APPROVATA, ec.ANOMALIA AS ANOMALIA_ESTINTORE, ec.UBI' +
        'CAZIONE, ec.PREC_ANOMALIA, ec.NOTE_TECNICO, ec.ID_NFC, ec.MARCA ' +
        'ID_MARCA, '
      
        'me.DESCRIZIONE DESCRIZIONE_MARCA, ce.DESCRIZIONE CATEGORIA, ce.C' +
        'LASSE_FUOCO, ce.CO2 CO2_CATEGORIA'
      'FROM INTERVENTI_ESTINTORI ie '
      
        #9'INNER JOIN ESTINTORI_CLIENTI ec ON ( ie.ESTINTORE = ec.CHIAVE  ' +
        ')  '
      #9#9'INNER JOIN MARCHE_ESTINTORI me ON ( ec.MARCA = me.CHIAVE  )  '
      
        #9#9'INNER JOIN CAT_ESTINTORI ce ON ( ec.TIPO_ESTINTORE = ce.CHIAVE' +
        '  )  '
      'WHERE '
      '  STATINO = :CHIAVE'
      '')
    MasterSource = dsStatini
    Left = 208
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2051270
      end>
    object qryEstintoriCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryEstintoriSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryEstintoriESTINTORE: TIntegerField
      FieldName = 'ESTINTORE'
    end
    object qryEstintoriTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryEstintoriDESCRIZIONE_ALTERNATIVA: TStringField
      FieldName = 'DESCRIZIONE_ALTERNATIVA'
      Size = 255
    end
    object qryEstintoriRESET_DATA_COLLAUDO: TStringField
      FieldName = 'RESET_DATA_COLLAUDO'
      FixedChar = True
      Size = 1
    end
    object qryEstintoriRESET_DATA_REVISIONE: TStringField
      FieldName = 'RESET_DATA_REVISIONE'
      FixedChar = True
      Size = 1
    end
    object qryEstintoriANOMALIA: TStringField
      FieldName = 'ANOMALIA'
      Size = 1024
    end
    object qryEstintoriDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
    end
    object qryEstintoriDATA_RITIRO: TDateField
      FieldName = 'DATA_RITIRO'
    end
    object qryEstintoriDATA_SMALTIMENTO: TDateField
      FieldName = 'DATA_SMALTIMENTO'
    end
    object qryEstintoriDATA_RESTITUZIONE: TDateField
      FieldName = 'DATA_RESTITUZIONE'
    end
    object qryEstintoriDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
    end
    object qryEstintoriDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
    end
    object qryEstintoriDATA_STARTUP_REV: TDateField
      FieldName = 'DATA_STARTUP_REV'
      ReadOnly = True
    end
    object qryEstintoriTIPO_ESTINTORE: TIntegerField
      FieldName = 'TIPO_ESTINTORE'
      ReadOnly = True
    end
    object qryEstintoriPROGRESSIVO: TIntegerField
      FieldName = 'PROGRESSIVO'
      ReadOnly = True
      Required = True
    end
    object qryEstintoriMATRICOLA: TStringField
      FieldName = 'MATRICOLA'
      ReadOnly = True
      Size = 255
    end
    object qryEstintoriANNO_COSTRUZIONE: TSmallintField
      FieldName = 'ANNO_COSTRUZIONE'
      ReadOnly = True
    end
    object qryEstintoriDATA_STARTUP_COL: TDateField
      FieldName = 'DATA_STARTUP_COL'
      ReadOnly = True
    end
    object qryEstintoriSTATO: TStringField
      FieldName = 'STATO'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryEstintoriRINNOVATO_DA: TIntegerField
      FieldName = 'RINNOVATO_DA'
      ReadOnly = True
    end
    object qryEstintoriANOMALIA_APPROVATA: TStringField
      FieldName = 'ANOMALIA_APPROVATA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryEstintoriUBICAZIONE: TBlobField
      FieldName = 'UBICAZIONE'
      ReadOnly = True
    end
    object qryEstintoriPREC_ANOMALIA: TBlobField
      FieldName = 'PREC_ANOMALIA'
      ReadOnly = True
    end
    object qryEstintoriNOTE_TECNICO: TBlobField
      FieldName = 'NOTE_TECNICO'
      ReadOnly = True
    end
    object qryEstintoriID_NFC: TStringField
      FieldName = 'ID_NFC'
      ReadOnly = True
      Size = 100
    end
    object qryEstintoriMARCA: TIntegerField
      FieldName = 'MARCA'
      ReadOnly = True
    end
    object qryEstintoriDESCRIZIONE_MARCA: TStringField
      FieldName = 'DESCRIZIONE_MARCA'
      ReadOnly = True
      Size = 255
    end
    object qryEstintoriANOMALIA_ESTINTORE: TBlobField
      FieldName = 'ANOMALIA_ESTINTORE'
      ReadOnly = True
    end
  end
  object qryIdranti: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO INTERVENTI_IDRANTI'
      
        '  (CHIAVE, STATINO, BOCCHELLO, TIPO, DESCRIZIONE_ALTERNATIVA, RE' +
        'SET_DATA_COLLAUDO, ANOMALIA, DATA_CONTROLLO, DATA_RITIRO, DATA_S' +
        'MALTIMENTO, DATA_RESTITUZIONE, DATA_CONSEGNA, DATA_PRESSATURA, D' +
        'ATA_CONTROLLO_NEGATO)'
      'VALUES'
      
        '  (:CHIAVE, :STATINO, :BOCCHELLO, :TIPO, :DESCRIZIONE_ALTERNATIV' +
        'A, :RESET_DATA_COLLAUDO, :ANOMALIA, :DATA_CONTROLLO, :DATA_RITIR' +
        'O, :DATA_SMALTIMENTO, :DATA_RESTITUZIONE, :DATA_CONSEGNA, :DATA_' +
        'PRESSATURA, :DATA_CONTROLLO_NEGATO)')
    SQLDelete.Strings = (
      'DELETE FROM INTERVENTI_IDRANTI'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLUpdate.Strings = (
      'UPDATE INTERVENTI_IDRANTI'
      'SET'
      
        '  CHIAVE = :CHIAVE, STATINO = :STATINO, BOCCHELLO = :BOCCHELLO, ' +
        'TIPO = :TIPO, DESCRIZIONE_ALTERNATIVA = :DESCRIZIONE_ALTERNATIVA' +
        ', RESET_DATA_COLLAUDO = :RESET_DATA_COLLAUDO, ANOMALIA = :ANOMAL' +
        'IA, DATA_CONTROLLO = :DATA_CONTROLLO, DATA_RITIRO = :DATA_RITIRO' +
        ', DATA_SMALTIMENTO = :DATA_SMALTIMENTO, DATA_RESTITUZIONE = :DAT' +
        'A_RESTITUZIONE, DATA_CONSEGNA = :DATA_CONSEGNA, DATA_PRESSATURA ' +
        '= :DATA_PRESSATURA, DATA_CONTROLLO_NEGATO = :DATA_CONTROLLO_NEGA' +
        'TO'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLLock.Strings = (
      'SELECT NULL FROM INTERVENTI_IDRANTI'
      'WHERE'
      'CHIAVE = :Old_CHIAVE'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT CHIAVE, STATINO, BOCCHELLO, TIPO, DESCRIZIONE_ALTERNATIVA' +
        ', RESET_DATA_COLLAUDO, ANOMALIA, DATA_CONTROLLO, DATA_RITIRO, DA' +
        'TA_SMALTIMENTO, DATA_RESTITUZIONE, DATA_CONSEGNA, DATA_PRESSATUR' +
        'A, DATA_CONTROLLO_NEGATO FROM INTERVENTI_IDRANTI'
      'WHERE'
      '  CHIAVE = :CHIAVE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INTERVENTI_IDRANTI'
      ''
      ') q')
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftString
        FieldLength = 1024
      end>
    Connection = uconPhoenix
    SQL.Strings = (
      'SELECT '
      '  CHIAVE,'
      '  STATINO,'
      '  BOCCHELLO,'
      '  TIPO,'
      '  DESCRIZIONE_ALTERNATIVA,'
      '  RESET_DATA_COLLAUDO,'
      '  ANOMALIA,'
      '  DATA_CONTROLLO,'
      '  DATA_RITIRO,'
      '  DATA_SMALTIMENTO,'
      '  DATA_RESTITUZIONE,'
      '  DATA_CONSEGNA,'
      '  DATA_PRESSATURA,'
      '  DATA_CONTROLLO_NEGATO'
      'FROM '
      '  INTERVENTI_IDRANTI '
      'WHERE '
      '  STATINO = :CHIAVE'
      '')
    MasterSource = dsStatini
    Left = 408
    Top = 248
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2051270
      end>
  end
  object qryImpiantiElettrici: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO INTERVENTI_IDRANTI'
      
        '  (CHIAVE, STATINO, BOCCHELLO, TIPO, DESCRIZIONE_ALTERNATIVA, RE' +
        'SET_DATA_COLLAUDO, ANOMALIA, DATA_CONTROLLO, DATA_RITIRO, DATA_S' +
        'MALTIMENTO, DATA_RESTITUZIONE, DATA_CONSEGNA, DATA_PRESSATURA, D' +
        'ATA_CONTROLLO_NEGATO)'
      'VALUES'
      
        '  (:CHIAVE, :STATINO, :BOCCHELLO, :TIPO, :DESCRIZIONE_ALTERNATIV' +
        'A, :RESET_DATA_COLLAUDO, :ANOMALIA, :DATA_CONTROLLO, :DATA_RITIR' +
        'O, :DATA_SMALTIMENTO, :DATA_RESTITUZIONE, :DATA_CONSEGNA, :DATA_' +
        'PRESSATURA, :DATA_CONTROLLO_NEGATO)')
    SQLDelete.Strings = (
      'DELETE FROM INTERVENTI_IDRANTI'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLUpdate.Strings = (
      'UPDATE INTERVENTI_IDRANTI'
      'SET'
      
        '  CHIAVE = :CHIAVE, STATINO = :STATINO, BOCCHELLO = :BOCCHELLO, ' +
        'TIPO = :TIPO, DESCRIZIONE_ALTERNATIVA = :DESCRIZIONE_ALTERNATIVA' +
        ', RESET_DATA_COLLAUDO = :RESET_DATA_COLLAUDO, ANOMALIA = :ANOMAL' +
        'IA, DATA_CONTROLLO = :DATA_CONTROLLO, DATA_RITIRO = :DATA_RITIRO' +
        ', DATA_SMALTIMENTO = :DATA_SMALTIMENTO, DATA_RESTITUZIONE = :DAT' +
        'A_RESTITUZIONE, DATA_CONSEGNA = :DATA_CONSEGNA, DATA_PRESSATURA ' +
        '= :DATA_PRESSATURA, DATA_CONTROLLO_NEGATO = :DATA_CONTROLLO_NEGA' +
        'TO'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLLock.Strings = (
      'SELECT NULL FROM INTERVENTI_IDRANTI'
      'WHERE'
      'CHIAVE = :Old_CHIAVE'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT CHIAVE, STATINO, BOCCHELLO, TIPO, DESCRIZIONE_ALTERNATIVA' +
        ', RESET_DATA_COLLAUDO, ANOMALIA, DATA_CONTROLLO, DATA_RITIRO, DA' +
        'TA_SMALTIMENTO, DATA_RESTITUZIONE, DATA_CONSEGNA, DATA_PRESSATUR' +
        'A, DATA_CONTROLLO_NEGATO FROM INTERVENTI_IDRANTI'
      'WHERE'
      '  CHIAVE = :CHIAVE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INTERVENTI_IDRANTI'
      ''
      ') q')
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftString
        FieldLength = 1024
      end>
    Connection = uconPhoenix
    SQL.Strings = (
      'SELECT '
      '  CHIAVE,'
      '  STATINO,'
      '  ELEMENTO_IMPIANTO_ELETTRICO,'
      '  ANOMALIA,'
      '  DATA_CONTROLLO,'
      '  TIPO,'
      '  DATA_CONSEGNA,'
      '  DESCRIZIONE_ALTERNATIVA,'
      '  DATA_CONTROLLO_NEGATO'
      'FROM '
      '  INTERVENTI_IMPIANTI_ELETTRICI '
      'WHERE '
      '  STATINO = :CHIAVE'
      '')
    MasterSource = dsStatini
    Left = 312
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2051270
      end>
    object qryImpiantiElettriciCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryImpiantiElettriciSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryImpiantiElettriciELEMENTO_IMPIANTO_ELETTRICO: TIntegerField
      FieldName = 'ELEMENTO_IMPIANTO_ELETTRICO'
    end
    object qryImpiantiElettriciANOMALIA: TStringField
      FieldName = 'ANOMALIA'
      Size = 1024
    end
    object qryImpiantiElettriciDATA_CONTROLLO: TDateField
      FieldName = 'DATA_CONTROLLO'
    end
    object qryImpiantiElettriciTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qryImpiantiElettriciDATA_CONSEGNA: TDateField
      FieldName = 'DATA_CONSEGNA'
    end
    object qryImpiantiElettriciDESCRIZIONE_ALTERNATIVA: TStringField
      FieldName = 'DESCRIZIONE_ALTERNATIVA'
      Size = 255
    end
    object qryImpiantiElettriciDATA_CONTROLLO_NEGATO: TDateField
      FieldName = 'DATA_CONTROLLO_NEGATO'
    end
  end
  object qryStatini: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftString
        FieldLength = 1024
      end>
    Connection = uconPhoenix
    SQL.Strings = (
      
        'SELECT CHIAVE, CLIENTE, FILIALE, TITOLO, RAGIONE_SOCIALE, INDIRI' +
        'ZZO, COMUNE, PROVINCIA, CAP, TELEFONO, CELLULARE, NOTE, ORARIO_A' +
        'PERTURA_DAL1, '
      
        #9'ORARIO_APERTURA_DAL2, ORARIO_APERTURA_AL1, ORARIO_APERTURA_AL2,' +
        ' CHIUSURA, FATTURA, DATA_INTERVENTO, GENERAZIONE_AUTOMATICA, '
      
        #9'TECNICO_INTERVENTO, SCANSIONE, REGISTRO, NOTE_PER_IL_TECNICO, S' +
        'OSPESO, DA_ESPORTARE_SUL_WEB, RESPONSABILE, ESPORTATO_SU_MOBILE,' +
        ' '
      
        #9'NOTE_DAL_TECNICO, JSON_DA_MOBILE, PDF_STATINO, REGISTRO_IS_PDF,' +
        ' VERBALE_PROVA_DINAMICA, VERBALE_MANICHETTE, PREVENTIVO, IGNORA_' +
        'EVIDENZIAZIONE, '
      
        #9'ANNULLATO_DA_TABLET, MOBILEWARN_NUOVA_ATTREZZATURA, MOBILEWARN_' +
        'ORDINARIA_RITIRATA, MOBILEWARN_N_ORDIN_CONTROLLATA, MOBILEWARN_S' +
        'MALTIMENTO, '
      
        #9'STATO_LAVORAZIONE, DATA_CHIUSURA_DA_SERVER, CHIUSURA_EXT, CHIUS' +
        'URA_STATINO, MOBILEWARN_NON_ESEGUITI, PRESA_IN_CARICO, FORNITURA'
      'FROM'
      #9'STATINI I'
      'WHERE '
      '  CHIAVE = :CHIAVE')
    Left = 312
    Top = 88
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2051600
      end>
    object qryStatiniCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
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
    object fldStatiniORARIO_APERTURA_DAL1: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL1'
    end
    object fldStatiniORARIO_APERTURA_DAL2: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL2'
    end
    object fldStatiniORARIO_APERTURA_AL1: TTimeField
      FieldName = 'ORARIO_APERTURA_AL1'
    end
    object fldStatiniORARIO_APERTURA_AL2: TTimeField
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
    object qryStatiniJSON_DA_MOBILE: TBlobField
      FieldName = 'JSON_DA_MOBILE'
    end
  end
  object dsStatini: TUniDataSource
    DataSet = qryStatini
    Left = 312
    Top = 152
  end
  object qryProgrammazioneStatini: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftString
        FieldLength = 1024
      end>
    Connection = uconPhoenix
    SQL.Strings = (
      'SELECT '
      '  STATINO,'
      '  DATA_PROGRAMMAZIONE,'
      '  ORA,'
      '  INVIATO,'
      '  NOTE,'
      '  ELIMINATO,'
      '  FISSATO_DAL_TECNICO'
      'FROM '
      '  PROGRAMMAZIONE_STATINI'
      'WHERE '
      '  STATINO = :CHIAVE; ')
    MasterSource = dsStatini
    Left = 208
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHIAVE'
        ParamType = ptInput
        Value = 2023316
      end>
    object qryProgrammazioneStatiniSTATINO: TIntegerField
      FieldName = 'STATINO'
      Required = True
    end
    object qryProgrammazioneStatiniDATA_PROGRAMMAZIONE: TDateField
      FieldName = 'DATA_PROGRAMMAZIONE'
    end
    object fldProgrammazioneStatiniORA: TTimeField
      FieldName = 'ORA'
    end
    object qryProgrammazioneStatiniINVIATO: TStringField
      FieldName = 'INVIATO'
      FixedChar = True
      Size = 1
    end
    object qryProgrammazioneStatiniNOTE: TBlobField
      FieldName = 'NOTE'
    end
    object qryProgrammazioneStatiniELIMINATO: TStringField
      FieldName = 'ELIMINATO'
      FixedChar = True
      Size = 1
    end
    object qryProgrammazioneStatiniFISSATO_DAL_TECNICO: TStringField
      FieldName = 'FISSATO_DAL_TECNICO'
      FixedChar = True
      Size = 1
    end
  end
  object qryClienti: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftString
        FieldLength = 1024
      end>
    Connection = uconPhoenix
    SQL.Strings = (
      'SELECT '
      '  CHIAVE,'
      '  VISITA_FATTURAZIONE_ORDINARIA,'
      '  PARTITA_IVA,'
      '  CODICE_FISCALE,'
      '  EMAIL,'
      '  INDIRIZZO_FATTURAZIONE,'
      '  PROVINCIA_FATTURAZIONE,'
      '  CAP_FATTURAZIONE,'
      '  INDIRIZZO_SPEDIZIONE,'
      '  CAP_SPEDIZIONE,'
      '  PROVINCIA_SPEDIZIONE,'
      '  NOTE,'
      '  PRESSO,'
      '  TITOLO,'
      '  PREZZO_ORDINARIE_SPRINKLER,'
      '  PREZZO_ORDINARIE_FUMI,'
      '  PREZZO_ORDINARIE_LUCI,'
      '  PREZZO_ORDINARIE_PORTE,'
      '  PREZZO_ORDINARIE_IDRANTI,'
      '  PREZZO_COLLAUDI_IDRANTI,'
      '  NOTE_NASCOSTE,'
      '  AMMINISTRATORE,'
      '  DESCRIZIONE_SCHEDA,'
      '  COND_PAGAMENTO,'
      '  ISTAT,'
      '  ESENTE_IVA,'
      '  NOTE_IN_FATTURA,'
      '  RITENUTA,'
      '  DISDETTATO,'
      '  MANUALE,'
      '  DATA_CONTRATTO,'
      '  ORDINA_X_UBICAZIONE,'
      '  NON_CONFERMATO,'
      '  SOSPESO,'
      '  DATA_DIFFERITA,'
      '  DA_ESPORTARE_SUL_WEB,'
      '  COSTO_SOSTITUZIONE_VALVOLA,'
      '  RESPONSABILE,'
      '  ESTINTORI_VISIBILI,'
      '  SPRINKLER_VISIBILI,'
      '  LUCI_VISIBILI,'
      '  RIL_FUMO_VISIBILI,'
      '  PORTE_VISIBILI,'
      '  GRUPPO_PRESS_VISIBILE,'
      '  IMPIANTO_IDRANTI_VISIBILE,'
      '  GRUPPO_PREZZO_VISITA_SEMESTRALE,'
      '  GRUPPO_PREZZO_VISITA_TRIMEST,'
      '  GRUPPO_PREZZO_VISITA_MENSILE,'
      '  GRUPPO_TIPO_VISITE,'
      '  PREZZO_SEMESTRALE_SPRINKLER,'
      '  SPRINKLER_TIPO_VISITE,'
      '  IVA,'
      '  FATTURA_ANTICIPATA,'
      '  NATURA_IVA,'
      '  RAGIONE_SOCIALE,'
      '  COMUNE_FATTURAZIONE,'
      '  COMUNE_SPEDIZIONE,'
      '  TELEFONO1,'
      '  CELLULARE,'
      '  TELEFONO2,'
      '  FAX,'
      '  BANCA_APPOGGIO,'
      '  ABI,'
      '  CAB,'
      '  NR_CIVICO,'
      '  IMPIANTI_ELETTRICI_VISIBILI,'
      '  SOSPENSIONE_TEMPORANEA,'
      '  INIZIO_SOSP_TEMPORANEA,'
      '  MOTIV_SOSP_TEMPORANEA'
      'FROM '
      '  CLIENTI '
      'WHERE '
      '  CHIAVE = :CLIENTE; ')
    MasterSource = dsStatini
    MasterFields = 'CLIENTE'
    DetailFields = 'CHIAVE'
    Left = 408
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = 2054332
      end>
    object qryClientiCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryClientiVISITA_FATTURAZIONE_ORDINARIA: TSmallintField
      FieldName = 'VISITA_FATTURAZIONE_ORDINARIA'
    end
    object qryClientiPARTITA_IVA: TStringField
      FieldName = 'PARTITA_IVA'
      Required = True
      FixedChar = True
      Size = 16
    end
    object qryClientiCODICE_FISCALE: TStringField
      FieldName = 'CODICE_FISCALE'
      FixedChar = True
      Size = 16
    end
    object qryClientiEMAIL: TStringField
      FieldName = 'EMAIL'
      Required = True
      Size = 255
    end
    object qryClientiINDIRIZZO_FATTURAZIONE: TStringField
      FieldName = 'INDIRIZZO_FATTURAZIONE'
      Size = 255
    end
    object qryClientiPROVINCIA_FATTURAZIONE: TStringField
      FieldName = 'PROVINCIA_FATTURAZIONE'
      FixedChar = True
      Size = 2
    end
    object qryClientiCAP_FATTURAZIONE: TStringField
      FieldName = 'CAP_FATTURAZIONE'
      Size = 10
    end
    object qryClientiINDIRIZZO_SPEDIZIONE: TStringField
      FieldName = 'INDIRIZZO_SPEDIZIONE'
      Size = 255
    end
    object qryClientiCAP_SPEDIZIONE: TStringField
      FieldName = 'CAP_SPEDIZIONE'
      Size = 10
    end
    object qryClientiPROVINCIA_SPEDIZIONE: TStringField
      FieldName = 'PROVINCIA_SPEDIZIONE'
      FixedChar = True
      Size = 2
    end
    object qryClientiNOTE: TBlobField
      FieldName = 'NOTE'
    end
    object qryClientiPRESSO: TStringField
      FieldName = 'PRESSO'
      Size = 255
    end
    object qryClientiTITOLO: TStringField
      FieldName = 'TITOLO'
      Size = 10
    end
    object qryClientiPREZZO_ORDINARIE_SPRINKLER: TIntegerField
      FieldName = 'PREZZO_ORDINARIE_SPRINKLER'
    end
    object qryClientiPREZZO_ORDINARIE_FUMI: TIntegerField
      FieldName = 'PREZZO_ORDINARIE_FUMI'
    end
    object qryClientiPREZZO_ORDINARIE_LUCI: TIntegerField
      FieldName = 'PREZZO_ORDINARIE_LUCI'
    end
    object qryClientiPREZZO_ORDINARIE_PORTE: TIntegerField
      FieldName = 'PREZZO_ORDINARIE_PORTE'
    end
    object qryClientiPREZZO_ORDINARIE_IDRANTI: TIntegerField
      FieldName = 'PREZZO_ORDINARIE_IDRANTI'
    end
    object qryClientiPREZZO_COLLAUDI_IDRANTI: TIntegerField
      FieldName = 'PREZZO_COLLAUDI_IDRANTI'
    end
    object qryClientiNOTE_NASCOSTE: TBlobField
      FieldName = 'NOTE_NASCOSTE'
    end
    object qryClientiAMMINISTRATORE: TIntegerField
      FieldName = 'AMMINISTRATORE'
    end
    object qryClientiDESCRIZIONE_SCHEDA: TStringField
      FieldName = 'DESCRIZIONE_SCHEDA'
      Size = 255
    end
    object qryClientiCOND_PAGAMENTO: TIntegerField
      FieldName = 'COND_PAGAMENTO'
    end
    object qryClientiISTAT: TStringField
      FieldName = 'ISTAT'
      FixedChar = True
      Size = 1
    end
    object qryClientiESENTE_IVA: TStringField
      FieldName = 'ESENTE_IVA'
      FixedChar = True
      Size = 1
    end
    object qryClientiNOTE_IN_FATTURA: TStringField
      FieldName = 'NOTE_IN_FATTURA'
      Size = 255
    end
    object qryClientiRITENUTA: TSmallintField
      FieldName = 'RITENUTA'
    end
    object qryClientiDISDETTATO: TStringField
      FieldName = 'DISDETTATO'
      FixedChar = True
      Size = 1
    end
    object qryClientiMANUALE: TStringField
      FieldName = 'MANUALE'
      FixedChar = True
      Size = 1
    end
    object qryClientiDATA_CONTRATTO: TDateField
      FieldName = 'DATA_CONTRATTO'
    end
    object qryClientiORDINA_X_UBICAZIONE: TStringField
      FieldName = 'ORDINA_X_UBICAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryClientiNON_CONFERMATO: TStringField
      FieldName = 'NON_CONFERMATO'
      FixedChar = True
      Size = 1
    end
    object qryClientiSOSPESO: TStringField
      FieldName = 'SOSPESO'
      FixedChar = True
      Size = 1
    end
    object qryClientiDATA_DIFFERITA: TDateField
      FieldName = 'DATA_DIFFERITA'
    end
    object qryClientiDA_ESPORTARE_SUL_WEB: TStringField
      FieldName = 'DA_ESPORTARE_SUL_WEB'
      FixedChar = True
      Size = 1
    end
    object qryClientiCOSTO_SOSTITUZIONE_VALVOLA: TIntegerField
      FieldName = 'COSTO_SOSTITUZIONE_VALVOLA'
    end
    object qryClientiRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object qryClientiESTINTORI_VISIBILI: TStringField
      FieldName = 'ESTINTORI_VISIBILI'
      FixedChar = True
      Size = 1
    end
    object qryClientiSPRINKLER_VISIBILI: TStringField
      FieldName = 'SPRINKLER_VISIBILI'
      FixedChar = True
      Size = 1
    end
    object qryClientiLUCI_VISIBILI: TStringField
      FieldName = 'LUCI_VISIBILI'
      FixedChar = True
      Size = 1
    end
    object qryClientiRIL_FUMO_VISIBILI: TStringField
      FieldName = 'RIL_FUMO_VISIBILI'
      FixedChar = True
      Size = 1
    end
    object qryClientiPORTE_VISIBILI: TStringField
      FieldName = 'PORTE_VISIBILI'
      FixedChar = True
      Size = 1
    end
    object qryClientiGRUPPO_PRESS_VISIBILE: TStringField
      FieldName = 'GRUPPO_PRESS_VISIBILE'
      FixedChar = True
      Size = 1
    end
    object qryClientiIMPIANTO_IDRANTI_VISIBILE: TStringField
      FieldName = 'IMPIANTO_IDRANTI_VISIBILE'
      FixedChar = True
      Size = 1
    end
    object qryClientiGRUPPO_PREZZO_VISITA_SEMESTRALE: TIntegerField
      FieldName = 'GRUPPO_PREZZO_VISITA_SEMESTRALE'
    end
    object qryClientiGRUPPO_PREZZO_VISITA_TRIMEST: TIntegerField
      FieldName = 'GRUPPO_PREZZO_VISITA_TRIMEST'
    end
    object qryClientiGRUPPO_PREZZO_VISITA_MENSILE: TIntegerField
      FieldName = 'GRUPPO_PREZZO_VISITA_MENSILE'
    end
    object qryClientiGRUPPO_TIPO_VISITE: TStringField
      FieldName = 'GRUPPO_TIPO_VISITE'
      FixedChar = True
      Size = 1
    end
    object qryClientiPREZZO_SEMESTRALE_SPRINKLER: TIntegerField
      FieldName = 'PREZZO_SEMESTRALE_SPRINKLER'
    end
    object qryClientiSPRINKLER_TIPO_VISITE: TStringField
      FieldName = 'SPRINKLER_TIPO_VISITE'
      FixedChar = True
      Size = 1
    end
    object qryClientiIVA: TSmallintField
      FieldName = 'IVA'
    end
    object qryClientiFATTURA_ANTICIPATA: TStringField
      FieldName = 'FATTURA_ANTICIPATA'
      FixedChar = True
      Size = 1
    end
    object qryClientiNATURA_IVA: TSmallintField
      FieldName = 'NATURA_IVA'
    end
    object qryClientiRAGIONE_SOCIALE: TStringField
      FieldName = 'RAGIONE_SOCIALE'
      Required = True
      Size = 255
    end
    object qryClientiCOMUNE_FATTURAZIONE: TStringField
      FieldName = 'COMUNE_FATTURAZIONE'
      Size = 255
    end
    object qryClientiCOMUNE_SPEDIZIONE: TStringField
      FieldName = 'COMUNE_SPEDIZIONE'
      Size = 255
    end
    object qryClientiTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 255
    end
    object qryClientiCELLULARE: TStringField
      FieldName = 'CELLULARE'
      Size = 255
    end
    object qryClientiTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 255
    end
    object qryClientiFAX: TStringField
      FieldName = 'FAX'
      Size = 255
    end
    object qryClientiBANCA_APPOGGIO: TStringField
      FieldName = 'BANCA_APPOGGIO'
      Size = 255
    end
    object qryClientiABI: TStringField
      FieldName = 'ABI'
      Size = 5
    end
    object qryClientiCAB: TStringField
      FieldName = 'CAB'
      Size = 5
    end
    object qryClientiNR_CIVICO: TStringField
      FieldName = 'NR_CIVICO'
    end
    object qryClientiIMPIANTI_ELETTRICI_VISIBILI: TStringField
      FieldName = 'IMPIANTI_ELETTRICI_VISIBILI'
      FixedChar = True
      Size = 1
    end
    object qryClientiSOSPENSIONE_TEMPORANEA: TStringField
      FieldName = 'SOSPENSIONE_TEMPORANEA'
      FixedChar = True
      Size = 1
    end
    object qryClientiINIZIO_SOSP_TEMPORANEA: TDateField
      FieldName = 'INIZIO_SOSP_TEMPORANEA'
    end
    object qryClientiMOTIV_SOSP_TEMPORANEA: TStringField
      FieldName = 'MOTIV_SOSP_TEMPORANEA'
      Size = 255
    end
  end
  object UniQuery1: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftString
        FieldLength = 1024
      end>
    Connection = uconPhoenix
    SQL.Strings = (
      'SELECT '
      '  CHIAVE,'
      '  VISITA_FATTURAZIONE_ORDINARIA,'
      '  PARTITA_IVA,'
      '  CODICE_FISCALE,'
      '  EMAIL,'
      '  INDIRIZZO_FATTURAZIONE,'
      '  PROVINCIA_FATTURAZIONE,'
      '  CAP_FATTURAZIONE,'
      '  INDIRIZZO_SPEDIZIONE,'
      '  CAP_SPEDIZIONE,'
      '  PROVINCIA_SPEDIZIONE,'
      '  NOTE,'
      '  PRESSO,'
      '  TITOLO,'
      '  PREZZO_ORDINARIE_SPRINKLER,'
      '  PREZZO_ORDINARIE_FUMI,'
      '  PREZZO_ORDINARIE_LUCI,'
      '  PREZZO_ORDINARIE_PORTE,'
      '  PREZZO_ORDINARIE_IDRANTI,'
      '  PREZZO_COLLAUDI_IDRANTI,'
      '  NOTE_NASCOSTE,'
      '  AMMINISTRATORE,'
      '  DESCRIZIONE_SCHEDA,'
      '  COND_PAGAMENTO,'
      '  ISTAT,'
      '  ESENTE_IVA,'
      '  NOTE_IN_FATTURA,'
      '  RITENUTA,'
      '  DISDETTATO,'
      '  MANUALE,'
      '  DATA_CONTRATTO,'
      '  ORDINA_X_UBICAZIONE,'
      '  NON_CONFERMATO,'
      '  SOSPESO,'
      '  DATA_DIFFERITA,'
      '  DA_ESPORTARE_SUL_WEB,'
      '  COSTO_SOSTITUZIONE_VALVOLA,'
      '  RESPONSABILE,'
      '  ESTINTORI_VISIBILI,'
      '  SPRINKLER_VISIBILI,'
      '  LUCI_VISIBILI,'
      '  RIL_FUMO_VISIBILI,'
      '  PORTE_VISIBILI,'
      '  GRUPPO_PRESS_VISIBILE,'
      '  IMPIANTO_IDRANTI_VISIBILE,'
      '  GRUPPO_PREZZO_VISITA_SEMESTRALE,'
      '  GRUPPO_PREZZO_VISITA_TRIMEST,'
      '  GRUPPO_PREZZO_VISITA_MENSILE,'
      '  GRUPPO_TIPO_VISITE,'
      '  PREZZO_SEMESTRALE_SPRINKLER,'
      '  SPRINKLER_TIPO_VISITE,'
      '  IVA,'
      '  FATTURA_ANTICIPATA,'
      '  NATURA_IVA,'
      '  RAGIONE_SOCIALE,'
      '  COMUNE_FATTURAZIONE,'
      '  COMUNE_SPEDIZIONE,'
      '  TELEFONO1,'
      '  CELLULARE,'
      '  TELEFONO2,'
      '  FAX,'
      '  BANCA_APPOGGIO,'
      '  ABI,'
      '  CAB,'
      '  NR_CIVICO,'
      '  IMPIANTI_ELETTRICI_VISIBILI,'
      '  SOSPENSIONE_TEMPORANEA,'
      '  INIZIO_SOSP_TEMPORANEA,'
      '  MOTIV_SOSP_TEMPORANEA'
      'FROM '
      '  CLIENTI '
      'WHERE '
      '  CHIAVE = :CLIENTE; ')
    Left = 512
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLIENTE'
        Value = nil
      end>
  end
  object UniQuery2: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'ANOMALIA'
        FieldType = ftString
        FieldLength = 1024
      end>
    Connection = uconPhoenix
    SQL.Strings = (
      'SELECT '
      '  CHIAVE,'
      '  VISITA_FATTURAZIONE_ORDINARIA,'
      '  PARTITA_IVA,'
      '  CODICE_FISCALE,'
      '  EMAIL,'
      '  INDIRIZZO_FATTURAZIONE,'
      '  PROVINCIA_FATTURAZIONE,'
      '  CAP_FATTURAZIONE,'
      '  INDIRIZZO_SPEDIZIONE,'
      '  CAP_SPEDIZIONE,'
      '  PROVINCIA_SPEDIZIONE,'
      '  NOTE,'
      '  PRESSO,'
      '  TITOLO,'
      '  PREZZO_ORDINARIE_SPRINKLER,'
      '  PREZZO_ORDINARIE_FUMI,'
      '  PREZZO_ORDINARIE_LUCI,'
      '  PREZZO_ORDINARIE_PORTE,'
      '  PREZZO_ORDINARIE_IDRANTI,'
      '  PREZZO_COLLAUDI_IDRANTI,'
      '  NOTE_NASCOSTE,'
      '  AMMINISTRATORE,'
      '  DESCRIZIONE_SCHEDA,'
      '  COND_PAGAMENTO,'
      '  ISTAT,'
      '  ESENTE_IVA,'
      '  NOTE_IN_FATTURA,'
      '  RITENUTA,'
      '  DISDETTATO,'
      '  MANUALE,'
      '  DATA_CONTRATTO,'
      '  ORDINA_X_UBICAZIONE,'
      '  NON_CONFERMATO,'
      '  SOSPESO,'
      '  DATA_DIFFERITA,'
      '  DA_ESPORTARE_SUL_WEB,'
      '  COSTO_SOSTITUZIONE_VALVOLA,'
      '  RESPONSABILE,'
      '  ESTINTORI_VISIBILI,'
      '  SPRINKLER_VISIBILI,'
      '  LUCI_VISIBILI,'
      '  RIL_FUMO_VISIBILI,'
      '  PORTE_VISIBILI,'
      '  GRUPPO_PRESS_VISIBILE,'
      '  IMPIANTO_IDRANTI_VISIBILE,'
      '  GRUPPO_PREZZO_VISITA_SEMESTRALE,'
      '  GRUPPO_PREZZO_VISITA_TRIMEST,'
      '  GRUPPO_PREZZO_VISITA_MENSILE,'
      '  GRUPPO_TIPO_VISITE,'
      '  PREZZO_SEMESTRALE_SPRINKLER,'
      '  SPRINKLER_TIPO_VISITE,'
      '  IVA,'
      '  FATTURA_ANTICIPATA,'
      '  NATURA_IVA,'
      '  RAGIONE_SOCIALE,'
      '  COMUNE_FATTURAZIONE,'
      '  COMUNE_SPEDIZIONE,'
      '  TELEFONO1,'
      '  CELLULARE,'
      '  TELEFONO2,'
      '  FAX,'
      '  BANCA_APPOGGIO,'
      '  ABI,'
      '  CAB,'
      '  NR_CIVICO,'
      '  IMPIANTI_ELETTRICI_VISIBILI,'
      '  SOSPENSIONE_TEMPORANEA,'
      '  INIZIO_SOSP_TEMPORANEA,'
      '  MOTIV_SOSP_TEMPORANEA'
      'FROM '
      '  CLIENTI '
      'WHERE '
      '  CHIAVE = :CLIENTE; ')
    Left = 408
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLIENTE'
        Value = nil
      end>
  end
  object tblPreventivi: TUniTable
    TableName = 'PREVENTIVI'
    Connection = uconPhoenix
    Left = 208
    Top = 56
  end
end
