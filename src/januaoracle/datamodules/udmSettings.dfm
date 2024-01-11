object dmSettings: TdmSettings
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 258
  Width = 348
  object cdsImpostazioneParametri: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 96
    object cdsImpostazioneParametriGRUPPO: TWideStringField
      FieldName = 'GRUPPO'
      Required = True
    end
    object cdsImpostazioneParametriCHIAVE: TWideStringField
      FieldName = 'CHIAVE'
      Required = True
    end
    object cdsImpostazioneParametriVALORE: TWideStringField
      FieldName = 'VALORE'
      Size = 4000
    end
    object cdsImpostazioneParametriINSERT_DATE: TDateTimeField
      FieldName = 'INSERT_DATE'
    end
    object cdsImpostazioneParametriUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object cdsImpostazioneParametriINS_ID: TFloatField
      FieldName = 'INS_ID'
    end
    object cdsImpostazioneParametriUPD_ID: TFloatField
      FieldName = 'UPD_ID'
    end
    object cdsImpostazioneParametriUSERGROUP: TWideStringField
      FieldName = 'USERGROUP'
      Required = True
      Size = 30
    end
    object cdsImpostazioneParametriLANG: TWideStringField
      FieldName = 'LANG'
      Required = True
      Size = 3
    end
    object cdsImpostazioneParametriADMINONLY: TWideStringField
      FieldName = 'ADMINONLY'
      FixedChar = True
      Size = 1
    end
    object cdsImpostazioneParametriISGROUP: TWideStringField
      FieldName = 'ISGROUP'
      FixedChar = True
      Size = 1
    end
    object cdsImpostazioneParametriUSER_INSERT: TWideStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object cdsImpostazioneParametriUSER_UPDATE: TWideStringField
      FieldName = 'USER_UPDATE'
      Size = 30
    end
    object cdsImpostazioneParametriLOCAL: TWideStringField
      FieldName = 'LOCAL'
      FixedChar = True
      Size = 1
    end
  end
  object qryImpostazioniParametri: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO IMPOSTAZIONE_PARAMETRI'
      '  (GRUPPO, CHIAVE, VALORE, USERGROUP, LANG, ADMINONLY, ISGROUP)'
      'VALUES'
      
        '  (:GRUPPO, :CHIAVE, :VALORE, :USERGROUP, :LANG, :ADMINONLY, :IS' +
        'GROUP)')
    SQLDelete.Strings = (
      'DELETE FROM IMPOSTAZIONE_PARAMETRI'
      'WHERE'
      
        '  GRUPPO = :Old_GRUPPO AND CHIAVE = :Old_CHIAVE  AND USERGROUP =' +
        ' :Old_USERGROUP')
    SQLUpdate.Strings = (
      'UPDATE IMPOSTAZIONE_PARAMETRI'
      'SET'
      
        '  GRUPPO = :GRUPPO, CHIAVE = :CHIAVE, VALORE = :VALORE, USERGROU' +
        'P = :USERGROUP, LANG = :LANG, ADMINONLY = :ADMINONLY, ISGROUP = ' +
        ':ISGROUP'
      'WHERE'
      
        '  GRUPPO = :Old_GRUPPO AND CHIAVE = :Old_CHIAVE  AND USERGROUP =' +
        ' :Old_USERGROUP')
    SQLLock.Strings = (
      'SELECT * FROM IMPOSTAZIONE_PARAMETRI'
      'WHERE'
      
        '  GRUPPO = :Old_GRUPPO AND CHIAVE = :Old_CHIAVE AND USERGROUP = ' +
        ':Old_USERGROUP'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT GRUPPO, CHIAVE, VALORE, USERGROUP, LANG, ADMINONLY, ISGRO' +
        'UP FROM IMPOSTAZIONE_PARAMETRI'
      'WHERE'
      
        '  GRUPPO = :GRUPPO AND CHIAVE = :CHIAVE AND USERGROUP = :USERGRO' +
        'UP')
    SQL.Strings = (
      'select * from impostazione_parametri'
      'where USERGROUP = :USERGROUP'
      'and'
      'Chiave like :chiave'
      'and'
      'gruppo like :gruppo'
      '--or USERGROUP = '#39'ALL'#39)
    FetchAll = True
    LockMode = lmLockDelayed
    Options.AutoClose = True
    Options.AutoPrepare = True
    Options.PrefetchRows = 1000
    Options.CacheCalcFields = True
    Options.ExtendedFieldsInfo = True
    Left = 64
    Top = 152
    ParamData = <
      item
        DataType = ftWideString
        Name = 'USERGROUP'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'chiave'
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'gruppo'
        ParamType = ptInput
        Value = nil
      end>
    object qryImpostazioniParametriGRUPPO: TWideStringField
      FieldName = 'GRUPPO'
      Required = True
    end
    object qryImpostazioniParametriCHIAVE: TWideStringField
      FieldName = 'CHIAVE'
      Required = True
    end
    object qryImpostazioniParametriVALORE: TWideStringField
      FieldName = 'VALORE'
      Size = 4000
    end
    object qryImpostazioniParametriINSERT_DATE: TDateTimeField
      FieldName = 'INSERT_DATE'
    end
    object qryImpostazioniParametriUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object qryImpostazioniParametriINS_ID: TFloatField
      FieldName = 'INS_ID'
    end
    object qryImpostazioniParametriUPD_ID: TFloatField
      FieldName = 'UPD_ID'
    end
    object qryImpostazioniParametriUSERGROUP: TWideStringField
      FieldName = 'USERGROUP'
      Required = True
      Size = 30
    end
    object qryImpostazioniParametriLANG: TWideStringField
      FieldName = 'LANG'
      Required = True
      Size = 3
    end
    object qryImpostazioniParametriADMINONLY: TWideStringField
      FieldName = 'ADMINONLY'
      FixedChar = True
      Size = 1
    end
    object qryImpostazioniParametriISGROUP: TWideStringField
      FieldName = 'ISGROUP'
      FixedChar = True
      Size = 1
    end
    object qryImpostazioniParametriUSER_INSERT: TWideStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
    object qryImpostazioniParametriUSER_UPDATE: TWideStringField
      FieldName = 'USER_UPDATE'
      Size = 30
    end
    object qryImpostazioniParametriLOCAL: TWideStringField
      FieldName = 'LOCAL'
      FixedChar = True
      Size = 1
    end
  end
  object sesTest: TOraSession
    Options.Direct = True
    Username = 'buttega'
    Password = 'entra'
    Server = 'janua'
    Left = 64
    Top = 48
  end
end
