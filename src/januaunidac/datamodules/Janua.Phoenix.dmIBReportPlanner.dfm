inherited dmPhoenixIBPlanner: TdmPhoenixIBPlanner
  OnCreate = DataModuleCreate
  Height = 354
  Width = 597
  inherited JanuaUniConnection1: TJanuaUniConnection
    Database = '/opt/firebird/db/phoenix.fdb'
    Server = 'sait.pasolutions.ru'
    Connected = True
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
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
      'AND S.CHIAVE = 2100103'
      'ORDER BY F.CAP,C.DESCRIZIONE_SCHEDA,F.SEDE DESC'
      ';')
    BeforePost = qryReportPlannerBeforePost
    Left = 112
    Top = 176
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
  end
  object spSetStatinoStato: TUniStoredProc
    StoredProcName = 'SET_STATINI_STATO'
    SQL.Strings = (
      'EXECUTE PROCEDURE SET_STATINI_STATO')
    Connection = JanuaUniConnection1
    Left = 112
    Top = 248
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
    Left = 240
    Top = 64
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
      'WHERE S.STATO > -1 AND S.STATO < 9'
      'ORDER BY T.descrizione'
      ';')
    Left = 240
    Top = 144
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
    Left = 240
    Top = 216
    object qryCAPCAP: TStringField
      FieldName = 'CAP'
      Size = 10
    end
  end
end
