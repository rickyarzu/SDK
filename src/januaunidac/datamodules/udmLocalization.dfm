object dmLocalization: TdmLocalization
  OldCreateOrder = False
  Height = 180
  Width = 168
  object qryFormLanguage: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO DB_210_FORM_ISO_LANGUAGE'
      '  (APPLICATIONNAME, ISOLANGUAGE, FORMNAME, OBJECTNAME, TEXT)'
      'VALUES'
      
        '  (:APPLICATIONNAME, :ISOLANGUAGE, :FORMNAME, :OBJECTNAME, :TEXT' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM DB_210_FORM_ISO_LANGUAGE'
      'WHERE'
      
        '  APPLICATIONNAME = :Old_APPLICATIONNAME AND ISOLANGUAGE = :Old_' +
        'ISOLANGUAGE AND FORMNAME = :Old_FORMNAME AND OBJECTNAME = :Old_O' +
        'BJECTNAME')
    SQLUpdate.Strings = (
      'UPDATE DB_210_FORM_ISO_LANGUAGE'
      'SET'
      
        '  APPLICATIONNAME = :APPLICATIONNAME, ISOLANGUAGE = :ISOLANGUAGE' +
        ', FORMNAME = :FORMNAME, OBJECTNAME = :OBJECTNAME, TEXT = :TEXT'
      'WHERE'
      
        '  APPLICATIONNAME = :Old_APPLICATIONNAME AND ISOLANGUAGE = :Old_' +
        'ISOLANGUAGE AND FORMNAME = :Old_FORMNAME AND OBJECTNAME = :Old_O' +
        'BJECTNAME')
    SQLLock.Strings = (
      'SELECT * FROM DB_210_FORM_ISO_LANGUAGE'
      'WHERE'
      
        '  APPLICATIONNAME = :Old_APPLICATIONNAME AND ISOLANGUAGE = :Old_' +
        'ISOLANGUAGE AND FORMNAME = :Old_FORMNAME AND OBJECTNAME = :Old_O' +
        'BJECTNAME'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT DB_210_FORM_ISO_LANGUAGE.APPLICATIONNAME, DB_210_FORM_ISO' +
        '_LANGUAGE.ISOLANGUAGE, DB_210_FORM_ISO_LANGUAGE.FORMNAME, DB_210' +
        '_FORM_ISO_LANGUAGE.OBJECTNAME, DB_210_FORM_ISO_LANGUAGE.TEXT FRO' +
        'M DB_210_FORM_ISO_LANGUAGE'
      'WHERE'
      
        '  APPLICATIONNAME = :APPLICATIONNAME AND ISOLANGUAGE = :ISOLANGU' +
        'AGE AND FORMNAME = :FORMNAME AND OBJECTNAME = :OBJECTNAME')
    SQL.Strings = (
      
        'select * from DB_210_FORM_ISO_LANGUAGE where APPLICATIONNAME = '#39 +
        'JANUAPROJECT'#39' '
      'and ISOLANGUAGE = :ISOLANGUAGE'
      'and FORMNAME = :FORMNAME')
    Options.AutoPrepare = True
    Filter = 'ISOLANGUAGE = '#39'ITA'#39
    Left = 56
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'ISOLANGUAGE'
        ParamType = ptInput
        Size = 3
        Value = 'ITA'
      end
      item
        DataType = ftUnknown
        Name = 'FORMNAME'
        Value = nil
      end>
    object qryFormLanguageAPPLICATIONNAME: TWideStringField
      FieldName = 'APPLICATIONNAME'
      Required = True
      Size = 30
    end
    object qryFormLanguageISOLANGUAGE: TWideStringField
      FieldName = 'ISOLANGUAGE'
      Required = True
      Size = 3
    end
    object qryFormLanguageFORMNAME: TWideStringField
      FieldName = 'FORMNAME'
      Required = True
      Size = 60
    end
    object qryFormLanguageOBJECTNAME: TWideStringField
      FieldName = 'OBJECTNAME'
      Required = True
      Size = 256
    end
    object qryFormLanguageTEXT: TWideStringField
      FieldName = 'TEXT'
      Required = True
      Size = 4000
    end
  end
  object cdsFormLanguage: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 120
    object cdsFormLanguageAPPLICATIONNAME: TWideStringField
      FieldName = 'APPLICATIONNAME'
      Required = True
      Size = 30
    end
    object cdsFormLanguageISOLANGUAGE: TWideStringField
      FieldName = 'ISOLANGUAGE'
      Required = True
      Size = 3
    end
    object cdsFormLanguageFORMNAME: TWideStringField
      FieldName = 'FORMNAME'
      Required = True
      Size = 60
    end
    object cdsFormLanguageOBJECTNAME: TWideStringField
      FieldName = 'OBJECTNAME'
      Required = True
      Size = 256
    end
    object cdsFormLanguageTEXT: TWideStringField
      FieldName = 'TEXT'
      Required = True
      Size = 4000
    end
    object cdsFormLanguageISNEW: TBooleanField
      FieldName = 'ISNEW'
    end
  end
end
