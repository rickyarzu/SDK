inherited dmVCLPhoenixPlannerController: TdmVCLPhoenixPlannerController
  Height = 569
  Width = 996
  inherited SVGIconImageList48: TSVGIconImageList
    Top = 280
  end
  inherited MainToolBarActions: TActionList
    inherited ActionAddUser: TAction
      Caption = 'Gestione Tecnici    e Calendari'
    end
    inherited ActionExport: TAction
      Caption = 'Esporta (Excel,    Pdf, Csv)'
    end
  end
  inherited SVGIconImageList16: TSVGIconImageList
    Left = 64
    Top = 344
  end
  inherited PictureContainer1: TPictureContainer
    Top = 384
  end
  inherited SVGIconImageListIt: TSVGIconImageList
    Top = 416
  end
  inherited ColorDialog1: TColorDialog
    Top = 314
  end
  inherited JanuaUniConnection1: TJanuaUniConnection
    Left = 576
    Top = 80
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  inherited InterBaseUniProvider1: TInterBaseUniProvider
    Left = 576
    Top = 144
  end
  inherited PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 576
    Top = 16
  end
  inherited vtGoogleEvents: TVirtualTable
    Left = 792
    Data = {
      0400170002004944010080000000000004004554414701008000000000000700
      53554D4D41525901000001000000000B004445534352495054494F4E27000000
      000000000900535441525454494D450B000000000000000700454E4454494D45
      0B000000000000000700435245415445440B0000000000000007005550444154
      45440B0000000000000008004953414C4C444159050000000000000008004C4F
      434154494F4E0100800000000000060053544154555302000000000000000A00
      5649534942494C49545903000000000000000A00524543555252454E43450100
      3C00000000000B00524543555252494E47494401003C00000000000800534551
      55454E434503000000000000000500434F4C4F52020000000000000013005553
      4544454641554C5452454D494E444552530500000000000000110053454E444E
      4F54494649434154494F4E5305000000000000000A0043414C454E4441524944
      01008000000000000900417474656E646565731000000000000000090052656D
      696E64657273100000000000000005004A475549442300260000000000090043
      616C63436F6C6F720300000000000000000000000000}
    inherited vtGoogleEventsAlias: TWideStringField
      LookupResultField = 'ALIAS'
    end
  end
  inherited dsGoogleEvents: TUniDataSource
    Top = 344
  end
  inherited dsCalendars: TUniDataSource
    DataSet = qryPlannerEvents
  end
  inherited DBDaySourceGCalendar: TDBDaySource
    Mode = dmMultiDay
    NumberOfResources = 1
  end
  inherited DBDaySourceCalendar: TDBDaySource
    DataSource = dsCalendarEvents
    ResourceDataSource.ResourceNameField = ''
    NotesField = 'NOTE'
    Day = 45457.000000000000000000
    Mode = dmMultiResDay
    NumberOfDays = 5
    NumberOfResources = 1
    MinTimeField = 'DALLE_ORE'
    MaxTimeField = 'ALLE_ORE'
  end
  inherited dsCalendarEvents: TUniDataSource
    DataSet = qryPlannerEvents
  end
  inherited lkpGCalendarAlias: TVirtualTable
    Data = {
      04000B0002004944010080000000000008004C4F434154494F4E010080000000
      0000070053554D4D415259010000010000000007005052494D41525905000000
      00000000080054494D455A4F4E4501003C00000000000500434F4C4F52020000
      00000000000A00464F52455F434F4C4F5203000000000000000B004445534352
      495054494F4E27000000000000000A004241434B5F434F4C4F52030000000000
      00000500414C494153010014000000000005004A475549442300260000000000
      000000000000}
  end
  inherited vtGoogleCalendars: TVirtualTable
    Left = 791
    Top = 16
    Data = {
      04000B0002004944010080000000000008004C4F434154494F4E010080000000
      0000070053554D4D415259010000010000000007005052494D41525905000000
      00000000080054494D455A4F4E4501003C00000000000500434F4C4F52020000
      00000000000A00464F52455F434F4C4F5203000000000000000B004445534352
      495054494F4E27000000000000000A004241434B5F434F4C4F52030000000000
      00000500414C494153010014000000000005004A475549442300260000000000
      000000000000}
  end
  object qryReportPlanner: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO STATINI'
      
        '  (NOTE_PER_IL_TECNICO, APPUNTAMENTO_DATA, APPUNTAMENTO_ORA, STA' +
        'TO)'
      'VALUES'
      
        '  (:NOTE_PER_IL_TECNICO, :APPUNTAMENTO_DATA, :APPUNTAMENTO_ORA, ' +
        ':STATO)')
    SQLDelete.Strings = (
      'DELETE FROM STATINI'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLUpdate.Strings = (
      'UPDATE STATINI'
      'SET'
      
        '  NOTE_PER_IL_TECNICO = :NOTE_PER_IL_TECNICO, APPUNTAMENTO_DATA ' +
        '= :APPUNTAMENTO_DATA, APPUNTAMENTO_ORA = :APPUNTAMENTO_ORA, STAT' +
        'O = :STATO'
      'WHERE'
      '  CHIAVE = :Old_CHIAVE')
    SQLLock.Strings = (
      'SELECT NULL FROM STATINI'
      'WHERE'
      'CHIAVE = :Old_CHIAVE'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT NOTE_PER_IL_TECNICO, APPUNTAMENTO_DATA, APPUNTAMENTO_ORA,' +
        ' STATO FROM STATINI'
      'WHERE'
      '  CHIAVE = :CHIAVE')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM STATINI'
      ''
      ') q')
    DataTypeMap = <
      item
        DBType = 416
        FieldType = ftWideString
        FieldLength = 2048
      end
      item
        FieldName = 'NOTE_PER_IL_TECNICO'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT S.chiave, C.descrizione_scheda, C.AMMINISTRATORE, '
      
        '       S.CLIENTE, F.NOME, F.PROVINCIA, F.CAP, F.INDIRIZZO, F.TEL' +
        'EFONO, F.NOTE, F.ORARIO_APERTURA_DAL1, F.ORARIO_APERTURA_DAL2,'
      
        '       F.ORARIO_APERTURA_AL1, F.ORARIO_APERTURA_AL2, F.CHIUSURA,' +
        ' F.CELLULARE, F.EMAIL, F.ESCLUDI_DA_GENERAZIONE, F.SEDE, F.ID,'
      '       F.REF_TELEFONO, F.REF_CELLULARE, F.COMUNE, S.FATTURA,'
      
        '       S.DATA_INTERVENTO , S.GENERAZIONE_AUTOMATICA , S.TECNICO_' +
        'INTERVENTO , S.SCANSIONE , S.REGISTRO , S.NOTE_PER_IL_TECNICO , ' +
        'S.SOSPESO,'
      
        '       S.DA_ESPORTARE_SUL_WEB , S.RESPONSABILE , S.ESPORTATO_SU_' +
        'MOBILE , S.NOTE_DAL_TECNICO ,'
      
        '       S.VERBALE_PROVA_DINAMICA , S.VERBALE_MANICHETTE , S.PREVE' +
        'NTIVO , S.IGNORA_EVIDENZIAZIONE,'
      
        '       S.ANNULLATO_DA_TABLET , S.MOBILEWARN_NUOVA_ATTREZZATURA ,' +
        ' S.MOBILEWARN_ORDINARIA_RITIRATA,'
      
        '       S.MOBILEWARN_N_ORDIN_CONTROLLATA , S.MOBILEWARN_SMALTIMEN' +
        'TO , S.STATO_LAVORAZIONE , S.DATA_CHIUSURA_DA_SERVER , S.CHIUSUR' +
        'A_EXT,'
      
        '       S.CHIUSURA_STATINO , S.MOBILEWARN_NON_ESEGUITI , S.PRESA_' +
        'IN_CARICO , S.FORNITURA,'
      
        '       V.ordinari, V.straordinari, V.interventi, T.descrizione a' +
        's NOME_TECNICO, '
      
        '       S.APPUNTAMENTO_DATA, S.APPUNTAMENTO_ORA, S.STATO,I.STATIN' +
        'O, '
      '       COALESCE(I.ESTINTORI_ORDINARIO, 0) ESTINTORI_ORDINARIO,'
      
        '       COALESCE(I.ESTINTORI_STRAORDINARIO, 0) ESTINTORI_STRAORDI' +
        'NARIO,'
      '       COALESCE(I.GRUPPI_ELETTR, 0) GRUPPI_ELETTR,'
      '       COALESCE(I.FUMI, 0) FUMI,'
      '       COALESCE(I.LUCI, 0) LUCI,'
      '       COALESCE(I.IDRANTI, 0) IDRANTI,'
      '       COALESCE(I.SPRINKLER, 0) SPRINKLER,'
      '       COALESCE(I.IMPIANTI_EL, 0) IMPIANTI_EL'
      'FROM FILIALI_CLIENTI F '
      'JOIN CLIENTI C ON  F.CLIENTE = C.CHIAVE'
      'JOIN STATINI S ON F.chiave = S.filiale'
      
        'LEFT OUTER JOIN INTERVENTI_STRAORDINARI_VIEW V ON S.chiave = V.s' +
        'tatino'
      'JOIN TECNICI T ON T.chiave = S.responsabile'
      
        'LEFT OUTER JOIN INTERVENTI_STATINI_SINTESI_VIEW I ON S.chiave = ' +
        'I.statino'
      'WHERE S.STATO > -1 AND S.STATO < 9'
      '--AND S.CHIAVE = 2100103'
      'ORDER BY F.CAP,C.DESCRIZIONE_SCHEDA,F.SEDE DESC'
      ';')
    FetchRows = 100
    BeforePost = qryReportPlannerBeforePost
    OnCalcFields = qryReportPlannerCalcFields
    Left = 584
    Top = 216
    object qryReportPlannerCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryReportPlannerDESCRIZIONE_SCHEDA: TStringField
      FieldName = 'DESCRIZIONE_SCHEDA'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object qryReportPlannerNOME: TStringField
      FieldName = 'NOME'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object qryReportPlannerPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object qryReportPlannerCAP: TStringField
      FieldName = 'CAP'
      ReadOnly = True
      Size = 10
    end
    object qryReportPlannerINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerTELEFONO: TStringField
      FieldName = 'TELEFONO'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerNOTE: TBlobField
      FieldName = 'NOTE'
      ReadOnly = True
    end
    object qryReportPlannerORARIO_APERTURA_DAL1: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL1'
      ReadOnly = True
    end
    object qryReportPlannerORARIO_APERTURA_DAL2: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL2'
      ReadOnly = True
    end
    object qryReportPlannerORARIO_APERTURA_AL1: TTimeField
      FieldName = 'ORARIO_APERTURA_AL1'
      ReadOnly = True
    end
    object qryReportPlannerORARIO_APERTURA_AL2: TTimeField
      FieldName = 'ORARIO_APERTURA_AL2'
      ReadOnly = True
    end
    object qryReportPlannerCHIUSURA: TStringField
      FieldName = 'CHIUSURA'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerCELLULARE: TStringField
      FieldName = 'CELLULARE'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerEMAIL: TStringField
      FieldName = 'EMAIL'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerESCLUDI_DA_GENERAZIONE: TStringField
      FieldName = 'ESCLUDI_DA_GENERAZIONE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerSEDE: TStringField
      FieldName = 'SEDE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerID: TStringField
      FieldName = 'ID'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerREF_TELEFONO: TStringField
      FieldName = 'REF_TELEFONO'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerREF_CELLULARE: TStringField
      FieldName = 'REF_CELLULARE'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerCOMUNE: TStringField
      FieldName = 'COMUNE'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerFATTURA: TIntegerField
      FieldName = 'FATTURA'
    end
    object qryReportPlannerDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
    end
    object qryReportPlannerGENERAZIONE_AUTOMATICA: TIntegerField
      FieldName = 'GENERAZIONE_AUTOMATICA'
    end
    object qryReportPlannerTECNICO_INTERVENTO: TIntegerField
      FieldName = 'TECNICO_INTERVENTO'
    end
    object qryReportPlannerSCANSIONE: TWideStringField
      FieldName = 'SCANSIONE'
      Size = 2048
    end
    object qryReportPlannerREGISTRO: TWideStringField
      FieldName = 'REGISTRO'
      Size = 2048
    end
    object qryReportPlannerNOTE_PER_IL_TECNICO: TWideStringField
      FieldName = 'NOTE_PER_IL_TECNICO'
      Size = 1024
    end
    object qryReportPlannerSOSPESO: TStringField
      FieldName = 'SOSPESO'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerDA_ESPORTARE_SUL_WEB: TStringField
      FieldName = 'DA_ESPORTARE_SUL_WEB'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object qryReportPlannerESPORTATO_SU_MOBILE: TStringField
      FieldName = 'ESPORTATO_SU_MOBILE'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerNOTE_DAL_TECNICO: TBlobField
      FieldName = 'NOTE_DAL_TECNICO'
    end
    object qryReportPlannerVERBALE_PROVA_DINAMICA: TBlobField
      FieldName = 'VERBALE_PROVA_DINAMICA'
    end
    object qryReportPlannerVERBALE_MANICHETTE: TBlobField
      FieldName = 'VERBALE_MANICHETTE'
    end
    object qryReportPlannerPREVENTIVO: TIntegerField
      FieldName = 'PREVENTIVO'
    end
    object qryReportPlannerIGNORA_EVIDENZIAZIONE: TStringField
      FieldName = 'IGNORA_EVIDENZIAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerANNULLATO_DA_TABLET: TStringField
      FieldName = 'ANNULLATO_DA_TABLET'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerMOBILEWARN_NUOVA_ATTREZZATURA: TStringField
      FieldName = 'MOBILEWARN_NUOVA_ATTREZZATURA'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerMOBILEWARN_ORDINARIA_RITIRATA: TStringField
      FieldName = 'MOBILEWARN_ORDINARIA_RITIRATA'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField
      FieldName = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerMOBILEWARN_SMALTIMENTO: TStringField
      FieldName = 'MOBILEWARN_SMALTIMENTO'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerSTATO_LAVORAZIONE: TStringField
      FieldName = 'STATO_LAVORAZIONE'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerDATA_CHIUSURA_DA_SERVER: TDateField
      FieldName = 'DATA_CHIUSURA_DA_SERVER'
    end
    object qryReportPlannerCHIUSURA_EXT: TStringField
      FieldName = 'CHIUSURA_EXT'
      Size = 50
    end
    object qryReportPlannerCHIUSURA_STATINO: TWideStringField
      FieldName = 'CHIUSURA_STATINO'
      Size = 2048
    end
    object qryReportPlannerMOBILEWARN_NON_ESEGUITI: TStringField
      FieldName = 'MOBILEWARN_NON_ESEGUITI'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerPRESA_IN_CARICO: TStringField
      FieldName = 'PRESA_IN_CARICO'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerFORNITURA: TStringField
      FieldName = 'FORNITURA'
      FixedChar = True
      Size = 1
    end
    object qryReportPlannerORDINARI: TLargeintField
      FieldName = 'ORDINARI'
      ReadOnly = True
    end
    object qryReportPlannerSTRAORDINARI: TLargeintField
      FieldName = 'STRAORDINARI'
      ReadOnly = True
    end
    object qryReportPlannerINTERVENTI: TLargeintField
      FieldName = 'INTERVENTI'
      ReadOnly = True
    end
    object qryReportPlannerNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      ReadOnly = True
      Size = 255
    end
    object qryReportPlannerAPPUNTAMENTO_DATA: TDateField
      FieldName = 'APPUNTAMENTO_DATA'
    end
    object qryReportPlannerAPPUNTAMENTO_ORA: TTimeField
      FieldName = 'APPUNTAMENTO_ORA'
    end
    object qryReportPlannerSTATO: TSmallintField
      FieldName = 'STATO'
    end
    object qryReportPlannerSTATINO: TIntegerField
      FieldName = 'STATINO'
      ReadOnly = True
    end
    object qryReportPlannerESTINTORI_ORDINARIO: TLargeintField
      FieldName = 'ESTINTORI_ORDINARIO'
      ReadOnly = True
    end
    object qryReportPlannerESTINTORI_STRAORDINARIO: TLargeintField
      FieldName = 'ESTINTORI_STRAORDINARIO'
      ReadOnly = True
    end
    object qryReportPlannerGRUPPI_ELETTR: TLargeintField
      FieldName = 'GRUPPI_ELETTR'
      ReadOnly = True
    end
    object qryReportPlannerFUMI: TLargeintField
      FieldName = 'FUMI'
      ReadOnly = True
    end
    object qryReportPlannerLUCI: TLargeintField
      FieldName = 'LUCI'
      ReadOnly = True
    end
    object qryReportPlannerIDRANTI: TLargeintField
      FieldName = 'IDRANTI'
      ReadOnly = True
    end
    object qryReportPlannerSPRINKLER: TLargeintField
      FieldName = 'SPRINKLER'
      ReadOnly = True
    end
    object qryReportPlannerIMPIANTI_EL: TLargeintField
      FieldName = 'IMPIANTI_EL'
      ReadOnly = True
    end
    object qryReportPlannerAMMINISTRATORE: TIntegerField
      FieldName = 'AMMINISTRATORE'
      ReadOnly = True
    end
    object qryReportPlannercalcAppuntamentoDataOra: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'calcAppuntamentoDataOra'
      Calculated = True
    end
  end
  object spSetStatinoStato: TUniStoredProc
    StoredProcName = 'SET_STATINI_STATO'
    SQL.Strings = (
      'EXECUTE PROCEDURE SET_STATINI_STATO')
    Connection = JanuaUniConnection1
    Left = 584
    Top = 280
    CommandStoredProcName = 'SET_STATINI_STATO'
  end
  object qryCustomers: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT DISTINCT C.chiave, C.descrizione_scheda'
      'FROM FILIALI_CLIENTI F '
      'JOIN CLIENTI C ON  F.CLIENTE = C.CHIAVE'
      'JOIN STATINI S ON F.chiave = S.filiale'
      'WHERE S.STATO > -1 AND S.STATO < 9'
      'ORDER BY TRIM(C.DESCRIZIONE_SCHEDA)'
      ';')
    Left = 688
    Top = 184
    object qryCustomersCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryCustomersDESCRIZIONE_SCHEDA: TStringField
      FieldName = 'DESCRIZIONE_SCHEDA'
      Size = 255
    end
  end
  object qryTech: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT DISTINCT S.responsabile, T.descrizione as NOME_TECNICO'
      'FROM STATINI s'
      'JOIN TECNICI T ON T.chiave = S.responsabile'
      'ORDER BY T.descrizione'
      ';')
    Left = 688
    Top = 248
    object qryTechRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object qryTechNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      ReadOnly = True
      Size = 255
    end
  end
  object qryCAP: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT DISTINCT S.CAP'
      'FROM STATINI s'
      'WHERE S.STATO > -1 AND S.STATO < 9'
      'ORDER BY  S.CAP'
      ';')
    Left = 688
    Top = 312
    object qryCAPCAP: TStringField
      FieldName = 'CAP'
      Size = 10
    end
  end
  object qryPlannerEvents: TUniQuery
    KeyFields = 'JGUID'
    SQLInsert.Strings = (
      'INSERT INTO CALENDARIO_EVENTI'
      
        '  (CHIAVE, STATINO, TECNICO, DALLE_ORE, ALLE_ORE, NOTE, SUBJECT,' +
        ' TECNICO_SIGLA, COLORE, JGUID, ICONA, GOOGLE_JSON, GFORECOLOR, G' +
        'BACKCOLOR, CALENDARIO, GOOGLEID)'
      'VALUES'
      
        '  (:CHIAVE, :STATINO, :TECNICO, :DALLE_ORE, :ALLE_ORE, :NOTE, :S' +
        'UBJECT, :TECNICO_SIGLA, :COLORE, :JGUID, :ICONA, :GOOGLE_JSON, :' +
        'GFORECOLOR, :GBACKCOLOR, :CALENDARIO, :GOOGLEID)')
    SQLDelete.Strings = (
      'DELETE FROM CALENDARIO_EVENTI'
      'WHERE'
      '  JGUID = :Old_JGUID')
    SQLUpdate.Strings = (
      'UPDATE CALENDARIO_EVENTI'
      'SET'
      
        '  CHIAVE = :CHIAVE, STATINO = :STATINO, TECNICO = :TECNICO, DALL' +
        'E_ORE = :DALLE_ORE, ALLE_ORE = :ALLE_ORE, NOTE = :NOTE, SUBJECT ' +
        '= :SUBJECT, TECNICO_SIGLA = :TECNICO_SIGLA, COLORE = :COLORE, JG' +
        'UID = :JGUID, ICONA = :ICONA, GOOGLE_JSON = :GOOGLE_JSON, GFOREC' +
        'OLOR = :GFORECOLOR, GBACKCOLOR = :GBACKCOLOR, CALENDARIO = :CALE' +
        'NDARIO, GOOGLEID = :GOOGLEID'
      'WHERE'
      '  JGUID = :Old_JGUID')
    SQLLock.Strings = (
      'SELECT NULL FROM CALENDARIO_EVENTI'
      'WHERE'
      'JGUID = :Old_JGUID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT CHIAVE, STATINO, TECNICO, DALLE_ORE, ALLE_ORE, NOTE, SUBJ' +
        'ECT, TECNICO_SIGLA, COLORE, JGUID, ICONA, GOOGLE_JSON, GFORECOLO' +
        'R, GBACKCOLOR, CALENDARIO, GOOGLEID FROM CALENDARIO_EVENTI'
      'WHERE'
      '  JGUID = :JGUID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CALENDARIO_EVENTI'
      ''
      ') q')
    DataTypeMap = <
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT * FROM CALENDARIO_EVENTI '
      'where '
      'DALLE_ORE >= :DATA_DAL'
      'AND'
      'DALLE_ORE <= :DATA_AL'
      ';')
    FetchRows = 100
    Filtered = True
    IndexFieldNames = 'JGUID'
    Left = 792
    Top = 280
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA_DAL'
        ParamType = ptInput
        Value = 45437d
      end
      item
        DataType = ftDate
        Name = 'DATA_AL'
        ParamType = ptInput
        Value = 45503d
      end>
    object qryPlannerEventsCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryPlannerEventsSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object qryPlannerEventsTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Required = True
    end
    object qryPlannerEventsDALLE_ORE: TDateTimeField
      FieldName = 'DALLE_ORE'
      Required = True
    end
    object qryPlannerEventsALLE_ORE: TDateTimeField
      FieldName = 'ALLE_ORE'
      Required = True
    end
    object qryPlannerEventsNOTE: TBlobField
      FieldName = 'NOTE'
    end
    object qryPlannerEventsSUBJECT: TStringField
      FieldName = 'SUBJECT'
      Size = 128
    end
    object qryPlannerEventsTECNICO_SIGLA: TStringField
      FieldName = 'TECNICO_SIGLA'
      Size = 12
    end
    object qryPlannerEventsCOLORE: TIntegerField
      FieldName = 'COLORE'
    end
    object qryPlannerEventsICONA: TSmallintField
      FieldName = 'ICONA'
    end
    object qryPlannerEventsGOOGLE_JSON: TBlobField
      FieldName = 'GOOGLE_JSON'
    end
    object qryPlannerEventsGFORECOLOR: TIntegerField
      FieldName = 'GFORECOLOR'
    end
    object qryPlannerEventsGBACKCOLOR: TIntegerField
      FieldName = 'GBACKCOLOR'
    end
    object qryPlannerEventsCALENDARIO: TIntegerField
      FieldName = 'CALENDARIO'
    end
    object qryPlannerEventsGOOGLEID: TStringField
      FieldName = 'GOOGLEID'
      Size = 128
    end
    object qryPlannerEventsJGUID: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
  end
  object qryTechPlanned: TUniQuery
    Connection = JanuaUniConnection1
    SQL.Strings = (
      
        'SELECT DISTINCT S.responsabile, T.descrizione as NOME_TECNICO, T' +
        '.SIGLA'
      'FROM STATINI s'
      'JOIN TECNICI T ON T.chiave = S.responsabile'
      'WHERE S.STATO > -1 -- AND S.STATO < 9'
      '        AND S.APPUNTAMENTO_DATA >= :DATA_DAL'
      '        AND S.APPUNTAMENTO_DATA <= :DATA_AL'
      'ORDER BY T.descrizione'
      ';')
    AfterScroll = qryTechPlannedAfterScroll
    Left = 584
    Top = 344
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA_DAL'
        ParamType = ptInput
        Value = 45413d
      end
      item
        DataType = ftDate
        Name = 'DATA_AL'
        ParamType = ptInput
        Value = 45503d
      end>
    object qryTechPlannedRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object qryTechPlannedNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      ReadOnly = True
      Size = 255
    end
    object qryTechPlannedSIGLA: TStringField
      FieldName = 'SIGLA'
      ReadOnly = True
      Size = 12
    end
  end
  object tabGoogleCalendars: TUniTable
    TableName = 'GOOGLE_CALENDARS'
    DataTypeMap = <
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end
      item
        FieldName = 'DESCRIPTION'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = JanuaUniConnection1
    Left = 688
    Top = 40
    object tabGoogleCalendarsID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 128
    end
    object tabGoogleCalendarsLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 128
    end
    object tabGoogleCalendarsSUMMARY: TStringField
      FieldName = 'SUMMARY'
      Size = 256
    end
    object tabGoogleCalendarsTIMEZONE: TStringField
      FieldName = 'TIMEZONE'
      Size = 60
    end
    object tabGoogleCalendarsCOLOR: TSmallintField
      FieldName = 'COLOR'
    end
    object tabGoogleCalendarsBACK_COLOR: TIntegerField
      FieldName = 'BACK_COLOR'
    end
    object tabGoogleCalendarsFORE_COLOR: TIntegerField
      FieldName = 'FORE_COLOR'
    end
    object tabGoogleCalendarsISPRIMARY: TStringField
      FieldName = 'ISPRIMARY'
      FixedChar = True
      Size = 1
    end
    object tabGoogleCalendarsALIAS: TStringField
      FieldName = 'ALIAS'
    end
    object tabGoogleCalendarsDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 1024
    end
    object tabGoogleCalendarsJGUID: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
  end
  object tabGoogleEvents: TUniTable
    TableName = 'GOOGLE_CALENDAR_EVENTS'
    DataTypeMap = <
      item
        FieldName = 'DESCRIPTION'
        FieldType = ftWideMemo
      end
      item
        FieldName = 'ATTENDEES'
        FieldType = ftWideMemo
      end
      item
        FieldName = 'REMINDERS'
        FieldType = ftWideMemo
      end
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end>
    Connection = JanuaUniConnection1
    IndexFieldNames = 'ID'
    Left = 688
    Top = 104
    object tabGoogleEventsID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 128
    end
    object tabGoogleEventsETAG: TStringField
      FieldName = 'ETAG'
      Size = 128
    end
    object tabGoogleEventsSUMMARY: TStringField
      FieldName = 'SUMMARY'
      Size = 256
    end
    object tabGoogleEventsDESCRIPTION: TWideMemoField
      FieldName = 'DESCRIPTION'
      BlobType = ftWideMemo
    end
    object tabGoogleEventsSTARTTIME: TDateTimeField
      FieldName = 'STARTTIME'
    end
    object tabGoogleEventsENDTIME: TDateTimeField
      FieldName = 'ENDTIME'
    end
    object tabGoogleEventsCREATED: TDateTimeField
      FieldName = 'CREATED'
    end
    object tabGoogleEventsUPDATED: TDateTimeField
      FieldName = 'UPDATED'
    end
    object tabGoogleEventsLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 128
    end
    object tabGoogleEventsSTATUS: TSmallintField
      FieldName = 'STATUS'
    end
    object tabGoogleEventsSENDNOTIFICATIONS: TStringField
      FieldName = 'SENDNOTIFICATIONS'
      FixedChar = True
      Size = 1
    end
    object tabGoogleEventsVISIBILITY: TIntegerField
      FieldName = 'VISIBILITY'
    end
    object tabGoogleEventsRECURRENCE: TStringField
      FieldName = 'RECURRENCE'
      Size = 60
    end
    object tabGoogleEventsRECURRINGID: TStringField
      FieldName = 'RECURRINGID'
      Size = 60
    end
    object tabGoogleEventsSEQUENCE: TIntegerField
      FieldName = 'SEQUENCE'
    end
    object tabGoogleEventsCOLOR: TSmallintField
      FieldName = 'COLOR'
    end
    object tabGoogleEventsCALENDARID: TStringField
      FieldName = 'CALENDARID'
      Required = True
      Size = 128
    end
    object tabGoogleEventsATTENDEES: TWideMemoField
      FieldName = 'ATTENDEES'
      BlobType = ftWideMemo
    end
    object tabGoogleEventsREMINDERS: TWideMemoField
      FieldName = 'REMINDERS'
      BlobType = ftWideMemo
    end
    object tabGoogleEventsUSEDEFAULTREMINDERS: TStringField
      FieldName = 'USEDEFAULTREMINDERS'
      FixedChar = True
      Size = 1
    end
    object tabGoogleEventsISALLDAY: TStringField
      FieldName = 'ISALLDAY'
      FixedChar = True
      Size = 1
    end
    object tabGoogleEventsJGUID: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
  end
  object dsTecnici: TUniDataSource
    DataSet = qryPlannerEvents
    Left = 792
    Top = 144
  end
  object dsTecniciPlanned: TUniDataSource
    DataSet = qryTechPlanned
    Left = 792
    Top = 344
  end
  object qryPlannerCalendars: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end>
    Connection = JanuaUniConnection1
    SQL.Strings = (
      'SELECT * FROM CALENDARIO'
      'order by TECNICO_SIGLA'
      ';')
    Left = 792
    Top = 216
    object qryPlannerCalendarsCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryPlannerCalendarsTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Required = True
    end
    object qryPlannerCalendarsSUMMARY: TBlobField
      FieldName = 'SUMMARY'
    end
    object qryPlannerCalendarsDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 128
    end
    object qryPlannerCalendarsTECNICO_SIGLA: TStringField
      FieldName = 'TECNICO_SIGLA'
      Size = 12
    end
    object qryPlannerCalendarsCOLORE: TIntegerField
      FieldName = 'COLORE'
    end
    object qryPlannerCalendarsJGUID: TGuidField
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
    object qryPlannerCalendarsGOOGLE_JSON: TBlobField
      FieldName = 'GOOGLE_JSON'
    end
    object qryPlannerCalendarsGFORECOLOR: TIntegerField
      FieldName = 'GFORECOLOR'
    end
    object qryPlannerCalendarsGBACKCOLOR: TIntegerField
      FieldName = 'GBACKCOLOR'
    end
    object qryPlannerCalendarsDEFAULTCOLOR: TIntegerField
      FieldName = 'DEFAULTCOLOR'
    end
    object qryPlannerCalendarsGOOGLEID: TStringField
      FieldName = 'GOOGLEID'
      Size = 128
    end
    object qryPlannerCalendarsGOOGLE_SUMMARY: TStringField
      FieldName = 'GOOGLE_SUMMARY'
      Size = 128
    end
  end
  object vtReportPlanner: TVirtualTable
    FieldDefs = <
      item
        Name = 'CHIAVE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRIZIONE_SCHEDA'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PROVINCIA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CAP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INDIRIZZO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'TELEFONO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'NOTE'
        DataType = ftBlob
      end
      item
        Name = 'ORARIO_APERTURA_DAL1'
        DataType = ftTime
      end
      item
        Name = 'ORARIO_APERTURA_DAL2'
        DataType = ftTime
      end
      item
        Name = 'ORARIO_APERTURA_AL1'
        DataType = ftTime
      end
      item
        Name = 'ORARIO_APERTURA_AL2'
        DataType = ftTime
      end
      item
        Name = 'CHIUSURA'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'CELLULARE'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'ESCLUDI_DA_GENERAZIONE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SEDE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'REF_TELEFONO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'REF_CELLULARE'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'COMUNE'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'FATTURA'
        DataType = ftInteger
      end
      item
        Name = 'DATA_INTERVENTO'
        DataType = ftDate
      end
      item
        Name = 'GENERAZIONE_AUTOMATICA'
        DataType = ftInteger
      end
      item
        Name = 'TECNICO_INTERVENTO'
        DataType = ftInteger
      end
      item
        Name = 'SCANSIONE'
        DataType = ftWideString
        Size = 2048
      end
      item
        Name = 'REGISTRO'
        DataType = ftWideString
        Size = 2048
      end
      item
        Name = 'NOTE_PER_IL_TECNICO'
        DataType = ftWideString
        Size = 1024
      end
      item
        Name = 'SOSPESO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DA_ESPORTARE_SUL_WEB'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RESPONSABILE'
        DataType = ftInteger
      end
      item
        Name = 'ESPORTATO_SU_MOBILE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOTE_DAL_TECNICO'
        DataType = ftBlob
      end
      item
        Name = 'VERBALE_PROVA_DINAMICA'
        DataType = ftBlob
      end
      item
        Name = 'VERBALE_MANICHETTE'
        DataType = ftBlob
      end
      item
        Name = 'PREVENTIVO'
        DataType = ftInteger
      end
      item
        Name = 'IGNORA_EVIDENZIAZIONE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ANNULLATO_DA_TABLET'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MOBILEWARN_NUOVA_ATTREZZATURA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MOBILEWARN_ORDINARIA_RITIRATA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MOBILEWARN_SMALTIMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'STATO_LAVORAZIONE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DATA_CHIUSURA_DA_SERVER'
        DataType = ftDate
      end
      item
        Name = 'CHIUSURA_EXT'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CHIUSURA_STATINO'
        DataType = ftWideString
        Size = 2048
      end
      item
        Name = 'MOBILEWARN_NON_ESEGUITI'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PRESA_IN_CARICO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FORNITURA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ORDINARI'
        DataType = ftLargeint
      end
      item
        Name = 'STRAORDINARI'
        DataType = ftLargeint
      end
      item
        Name = 'INTERVENTI'
        DataType = ftLargeint
      end
      item
        Name = 'NOME_TECNICO'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'APPUNTAMENTO_DATA'
        DataType = ftDate
      end
      item
        Name = 'APPUNTAMENTO_ORA'
        DataType = ftTime
      end
      item
        Name = 'STATO'
        DataType = ftSmallint
      end
      item
        Name = 'STATINO'
        DataType = ftInteger
      end
      item
        Name = 'ESTINTORI_ORDINARIO'
        DataType = ftLargeint
      end
      item
        Name = 'ESTINTORI_STRAORDINARIO'
        DataType = ftLargeint
      end
      item
        Name = 'GRUPPI_ELETTR'
        DataType = ftLargeint
      end
      item
        Name = 'FUMI'
        DataType = ftLargeint
      end
      item
        Name = 'LUCI'
        DataType = ftLargeint
      end
      item
        Name = 'IDRANTI'
        DataType = ftLargeint
      end
      item
        Name = 'SPRINKLER'
        DataType = ftLargeint
      end
      item
        Name = 'IMPIANTI_EL'
        DataType = ftLargeint
      end
      item
        Name = 'AMMINISTRATORE'
        DataType = ftInteger
      end
      item
        Name = 'calcAppuntamentoDataOra'
        DataType = ftDateTime
      end>
    Left = 688
    Top = 384
    Data = {
      040044000600434849415645030000000000000012004445534352495A494F4E
      455F5343484544410100FF00000000000700434C49454E544503000000000000
      0004004E4F4D450100640000000000090050524F56494E434941010002000000
      0000030043415001000A00000000000900494E444952495A5A4F0100FF000000
      0000080054454C45464F4E4F0100FF000000000004004E4F54450F0000000000
      000014004F524152494F5F41504552545552415F44414C310A00000000000000
      14004F524152494F5F41504552545552415F44414C320A000000000000001300
      4F524152494F5F41504552545552415F414C310A0000000000000013004F5241
      52494F5F41504552545552415F414C320A000000000000000800434849555355
      52410100FF0000000000090043454C4C554C4152450100FF0000000000050045
      4D41494C0100FF000000000016004553434C5544495F44415F47454E4552415A
      494F4E4501000100000000000400534544450100010000000000020049440100
      FF00000000000C005245465F54454C45464F4E4F0100FF00000000000D005245
      465F43454C4C554C4152450100FF00000000000600434F4D554E450100FF0000
      00000007004641545455524103000000000000000F00444154415F494E544552
      56454E544F0900000000000000160047454E4552415A494F4E455F4155544F4D
      4154494341030000000000000012005445434E49434F5F494E54455256454E54
      4F030000000000000009005343414E53494F4E45180000080000000008005245
      47495354524F180000080000000013004E4F54455F5045525F494C5F5445434E
      49434F18000004000000000700534F535045534F010001000000000014004441
      5F4553504F52544152455F53554C5F57454201000100000000000C0052455350
      4F4E534142494C45030000000000000013004553504F525441544F5F53555F4D
      4F42494C45010001000000000010004E4F54455F44414C5F5445434E49434F0F
      00000000000000160056455242414C455F50524F56415F44494E414D4943410F
      00000000000000120056455242414C455F4D414E494348455454450F00000000
      0000000A0050524556454E5449564F0300000000000000150049474E4F52415F
      45564944454E5A49415A494F4E4501000100000000001300414E4E554C4C4154
      4F5F44415F5441424C455401000100000000001D004D4F42494C455741524E5F
      4E554F56415F41545452455A5A415455524101000100000000001D004D4F4249
      4C455741524E5F4F5244494E415249415F524954495241544101000100000000
      001E004D4F42494C455741524E5F4E5F4F5244494E5F434F4E54524F4C4C4154
      41010001000000000016004D4F42494C455741524E5F534D414C54494D454E54
      4F01000100000000001100535441544F5F4C41564F52415A494F4E4501000100
      000000001700444154415F43484955535552415F44415F534552564552090000
      00000000000C0043484955535552415F45585401003200000000001000434849
      55535552415F53544154494E4F180000080000000017004D4F42494C45574152
      4E5F4E4F4E5F455345475549544901000100000000000F0050524553415F494E
      5F43415249434F01000100000000000900464F524E4954555241010001000000
      000008004F5244494E41524919000000000000000C00535452414F5244494E41
      524919000000000000000A00494E54455256454E544919000000000000000C00
      4E4F4D455F5445434E49434F0100FF00000000001100415050554E54414D454E
      544F5F4441544109000000000000001000415050554E54414D454E544F5F4F52
      410A000000000000000500535441544F0200000000000000070053544154494E
      4F03000000000000001300455354494E544F52495F4F5244494E4152494F1900
      0000000000001700455354494E544F52495F535452414F5244494E4152494F19
      000000000000000D004752555050495F454C4554545219000000000000000400
      46554D49190000000000000004004C5543491900000000000000070049445241
      4E544919000000000000000900535052494E4B4C455219000000000000000B00
      494D5049414E54495F454C19000000000000000E00414D4D494E495354524154
      4F52450300000000000000170063616C63417070756E74616D656E746F446174
      614F72610B00000000000000000000000000}
    object vtReportPlannerCHIAVE: TIntegerField
      FieldName = 'CHIAVE'
      Required = True
    end
    object vtReportPlannerDESCRIZIONE_SCHEDA: TStringField
      FieldName = 'DESCRIZIONE_SCHEDA'
      Size = 255
    end
    object vtReportPlannerCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object vtReportPlannerNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object vtReportPlannerPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      Size = 2
    end
    object vtReportPlannerCAP: TStringField
      FieldName = 'CAP'
      Size = 10
    end
    object vtReportPlannerINDIRIZZO: TStringField
      FieldName = 'INDIRIZZO'
      Size = 255
    end
    object vtReportPlannerTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 255
    end
    object vtReportPlannerNOTE: TBlobField
      FieldName = 'NOTE'
    end
    object vtReportPlannerORARIO_APERTURA_DAL1: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL1'
    end
    object vtReportPlannerORARIO_APERTURA_DAL2: TTimeField
      FieldName = 'ORARIO_APERTURA_DAL2'
    end
    object vtReportPlannerORARIO_APERTURA_AL1: TTimeField
      FieldName = 'ORARIO_APERTURA_AL1'
    end
    object vtReportPlannerORARIO_APERTURA_AL2: TTimeField
      FieldName = 'ORARIO_APERTURA_AL2'
    end
    object vtReportPlannerCHIUSURA: TStringField
      FieldName = 'CHIUSURA'
      Size = 255
    end
    object vtReportPlannerCELLULARE: TStringField
      FieldName = 'CELLULARE'
      Size = 255
    end
    object vtReportPlannerEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 255
    end
    object vtReportPlannerESCLUDI_DA_GENERAZIONE: TStringField
      FieldName = 'ESCLUDI_DA_GENERAZIONE'
      Size = 1
    end
    object vtReportPlannerSEDE: TStringField
      FieldName = 'SEDE'
      Size = 1
    end
    object vtReportPlannerID: TStringField
      FieldName = 'ID'
      Size = 255
    end
    object vtReportPlannerREF_TELEFONO: TStringField
      FieldName = 'REF_TELEFONO'
      Size = 255
    end
    object vtReportPlannerREF_CELLULARE: TStringField
      FieldName = 'REF_CELLULARE'
      Size = 255
    end
    object vtReportPlannerCOMUNE: TStringField
      FieldName = 'COMUNE'
      Size = 255
    end
    object vtReportPlannerFATTURA: TIntegerField
      FieldName = 'FATTURA'
    end
    object vtReportPlannerDATA_INTERVENTO: TDateField
      FieldName = 'DATA_INTERVENTO'
    end
    object vtReportPlannerGENERAZIONE_AUTOMATICA: TIntegerField
      FieldName = 'GENERAZIONE_AUTOMATICA'
    end
    object vtReportPlannerTECNICO_INTERVENTO: TIntegerField
      FieldName = 'TECNICO_INTERVENTO'
    end
    object vtReportPlannerSCANSIONE: TWideStringField
      FieldName = 'SCANSIONE'
      Size = 2048
    end
    object vtReportPlannerREGISTRO: TWideStringField
      FieldName = 'REGISTRO'
      Size = 2048
    end
    object vtReportPlannerNOTE_PER_IL_TECNICO: TWideStringField
      FieldName = 'NOTE_PER_IL_TECNICO'
      Size = 1024
    end
    object vtReportPlannerSOSPESO: TStringField
      FieldName = 'SOSPESO'
      Size = 1
    end
    object vtReportPlannerDA_ESPORTARE_SUL_WEB: TStringField
      FieldName = 'DA_ESPORTARE_SUL_WEB'
      Size = 1
    end
    object vtReportPlannerRESPONSABILE: TIntegerField
      FieldName = 'RESPONSABILE'
    end
    object vtReportPlannerESPORTATO_SU_MOBILE: TStringField
      FieldName = 'ESPORTATO_SU_MOBILE'
      Size = 1
    end
    object vtReportPlannerNOTE_DAL_TECNICO: TBlobField
      FieldName = 'NOTE_DAL_TECNICO'
    end
    object vtReportPlannerVERBALE_PROVA_DINAMICA: TBlobField
      FieldName = 'VERBALE_PROVA_DINAMICA'
    end
    object vtReportPlannerVERBALE_MANICHETTE: TBlobField
      FieldName = 'VERBALE_MANICHETTE'
    end
    object vtReportPlannerPREVENTIVO: TIntegerField
      FieldName = 'PREVENTIVO'
    end
    object vtReportPlannerIGNORA_EVIDENZIAZIONE: TStringField
      FieldName = 'IGNORA_EVIDENZIAZIONE'
      Size = 1
    end
    object vtReportPlannerANNULLATO_DA_TABLET: TStringField
      FieldName = 'ANNULLATO_DA_TABLET'
      Size = 1
    end
    object vtReportPlannerMOBILEWARN_NUOVA_ATTREZZATURA: TStringField
      FieldName = 'MOBILEWARN_NUOVA_ATTREZZATURA'
      Size = 1
    end
    object vtReportPlannerMOBILEWARN_ORDINARIA_RITIRATA: TStringField
      FieldName = 'MOBILEWARN_ORDINARIA_RITIRATA'
      Size = 1
    end
    object vtReportPlannerMOBILEWARN_N_ORDIN_CONTROLLATA: TStringField
      FieldName = 'MOBILEWARN_N_ORDIN_CONTROLLATA'
      Size = 1
    end
    object vtReportPlannerMOBILEWARN_SMALTIMENTO: TStringField
      FieldName = 'MOBILEWARN_SMALTIMENTO'
      Size = 1
    end
    object vtReportPlannerSTATO_LAVORAZIONE: TStringField
      FieldName = 'STATO_LAVORAZIONE'
      Size = 1
    end
    object vtReportPlannerDATA_CHIUSURA_DA_SERVER: TDateField
      FieldName = 'DATA_CHIUSURA_DA_SERVER'
    end
    object vtReportPlannerCHIUSURA_EXT: TStringField
      FieldName = 'CHIUSURA_EXT'
      Size = 50
    end
    object vtReportPlannerCHIUSURA_STATINO: TWideStringField
      FieldName = 'CHIUSURA_STATINO'
      Size = 2048
    end
    object vtReportPlannerMOBILEWARN_NON_ESEGUITI: TStringField
      FieldName = 'MOBILEWARN_NON_ESEGUITI'
      Size = 1
    end
    object vtReportPlannerPRESA_IN_CARICO: TStringField
      FieldName = 'PRESA_IN_CARICO'
      Size = 1
    end
    object vtReportPlannerFORNITURA: TStringField
      FieldName = 'FORNITURA'
      Size = 1
    end
    object vtReportPlannerORDINARI: TLargeintField
      FieldName = 'ORDINARI'
    end
    object vtReportPlannerSTRAORDINARI: TLargeintField
      FieldName = 'STRAORDINARI'
    end
    object vtReportPlannerINTERVENTI: TLargeintField
      FieldName = 'INTERVENTI'
    end
    object vtReportPlannerNOME_TECNICO: TStringField
      FieldName = 'NOME_TECNICO'
      Size = 255
    end
    object vtReportPlannerAPPUNTAMENTO_DATA: TDateField
      FieldName = 'APPUNTAMENTO_DATA'
    end
    object vtReportPlannerAPPUNTAMENTO_ORA: TTimeField
      FieldName = 'APPUNTAMENTO_ORA'
    end
    object vtReportPlannerSTATO: TSmallintField
      FieldName = 'STATO'
    end
    object vtReportPlannerSTATINO: TIntegerField
      FieldName = 'STATINO'
    end
    object vtReportPlannerESTINTORI_ORDINARIO: TLargeintField
      FieldName = 'ESTINTORI_ORDINARIO'
    end
    object vtReportPlannerESTINTORI_STRAORDINARIO: TLargeintField
      FieldName = 'ESTINTORI_STRAORDINARIO'
    end
    object vtReportPlannerGRUPPI_ELETTR: TLargeintField
      FieldName = 'GRUPPI_ELETTR'
    end
    object vtReportPlannerFUMI: TLargeintField
      FieldName = 'FUMI'
    end
    object vtReportPlannerLUCI: TLargeintField
      FieldName = 'LUCI'
    end
    object vtReportPlannerIDRANTI: TLargeintField
      FieldName = 'IDRANTI'
    end
    object vtReportPlannerSPRINKLER: TLargeintField
      FieldName = 'SPRINKLER'
    end
    object vtReportPlannerIMPIANTI_EL: TLargeintField
      FieldName = 'IMPIANTI_EL'
    end
    object vtReportPlannerAMMINISTRATORE: TIntegerField
      FieldName = 'AMMINISTRATORE'
    end
  end
end
