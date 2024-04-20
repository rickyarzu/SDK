object dmOracleVisualCall: TdmOracleVisualCall
  Height = 519
  Width = 675
  object UniConnection1: TUniConnection
    AutoCommit = False
    ProviderName = 'Oracle'
    SpecificOptions.Strings = (
      'Oracle.UseUnicode=True'
      'Oracle.HomeName=OraHome'
      'Oracle.Direct=True')
    Username = 'SVG_DEV'
    Server = 'dbCSDK100.generali.it:1807:sn=CSDK1.generali.it'
    Left = 56
    Top = 32
    EncryptedPassword = 'ACFFA9FFB8FFA0FFBBFFBAFFA9FF'
  end
  object OracleUniProvider1: TOracleUniProvider
    Left = 144
    Top = 64
  end
  object qrySchemas: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'select username as schema_name'
      'from sys.all_users'
      'order by username;')
    Left = 232
    Top = 112
    object qrySchemasSCHEMA_NAME: TWideStringField
      FieldName = 'SCHEMA_NAME'
      Required = True
      Size = 128
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=Ora')
    Left = 248
    Top = 32
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 336
    Top = 64
  end
  object vtSchemas: TVirtualTable
    FieldDefs = <
      item
        Name = 'SCHEMA_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 128
      end>
    Left = 48
    Top = 116
    Data = {040001000B00534348454D415F4E414D451800800000000000000000000000}
  end
  object qryScripts: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO VIS.PVANDYQ'
      
        '  (MODULEIDQ, PROGQ, DESCQ, DYQUERY, ID_OPERATORE, ID_TIMESTAMP_' +
        'INIZIO_VAL, ID_FUNZIONE, ID_OPERAZIONE, ID_STATO_ELAB, ID_LOCK, ' +
        'ID_COMMENTO)'
      'VALUES'
      
        '  (:MODULEIDQ, :PROGQ, :DESCQ, :DYQUERY, :ID_OPERATORE, :ID_TIME' +
        'STAMP_INIZIO_VAL, :ID_FUNZIONE, :ID_OPERAZIONE, :ID_STATO_ELAB, ' +
        ':ID_LOCK, :ID_COMMENTO)')
    SQLDelete.Strings = (
      'DELETE FROM VIS.PVANDYQ'
      'WHERE'
      '  MODULEIDQ = :Old_MODULEIDQ AND PROGQ = :Old_PROGQ')
    SQLUpdate.Strings = (
      'UPDATE VIS.PVANDYQ'
      'SET'
      
        '  MODULEIDQ = :MODULEIDQ, PROGQ = :PROGQ, DESCQ = :DESCQ, DYQUER' +
        'Y = :DYQUERY, ID_OPERATORE = :ID_OPERATORE, ID_TIMESTAMP_INIZIO_' +
        'VAL = :ID_TIMESTAMP_INIZIO_VAL, ID_FUNZIONE = :ID_FUNZIONE, ID_O' +
        'PERAZIONE = :ID_OPERAZIONE, ID_STATO_ELAB = :ID_STATO_ELAB, ID_L' +
        'OCK = :ID_LOCK, ID_COMMENTO = :ID_COMMENTO'
      'WHERE'
      '  MODULEIDQ = :Old_MODULEIDQ AND PROGQ = :Old_PROGQ')
    SQLLock.Strings = (
      
        'SELECT MODULEIDQ, PROGQ, DESCQ, DYQUERY, ID_OPERATORE, ID_TIMEST' +
        'AMP_INIZIO_VAL, ID_FUNZIONE, ID_OPERAZIONE, ID_STATO_ELAB, ID_LO' +
        'CK, ID_COMMENTO FROM VIS.PVANDYQ'
      'WHERE'
      '  MODULEIDQ = :Old_MODULEIDQ AND PROGQ = :Old_PROGQ'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT MODULEIDQ, PROGQ, DESCQ, DYQUERY, ID_OPERATORE, ID_TIMEST' +
        'AMP_INIZIO_VAL, ID_FUNZIONE, ID_OPERAZIONE, ID_STATO_ELAB, ID_LO' +
        'CK, ID_COMMENTO FROM VIS.PVANDYQ'
      'WHERE'
      '  MODULEIDQ = :MODULEIDQ AND PROGQ = :PROGQ')
    SQLRecCount.Strings = (
      'SELECT Count(*) FROM ('
      'SELECT * FROM VIS.PVANDYQ'
      ''
      ')')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from vis.pvandyq;')
    Left = 144
    Top = 152
    object qryScriptsMODULEIDQ: TWideStringField
      FieldName = 'MODULEIDQ'
      Required = True
      Size = 8
    end
    object qryScriptsPROGQ: TSmallintField
      FieldName = 'PROGQ'
      Required = True
    end
    object qryScriptsDESCQ: TWideStringField
      FieldName = 'DESCQ'
      Size = 50
    end
    object qryScriptsDYQUERY: TWideMemoField
      FieldName = 'DYQUERY'
      Required = True
      BlobType = ftOraClob
    end
    object qryScriptsID_OPERATORE: TWideStringField
      FieldName = 'ID_OPERATORE'
      Required = True
      Size = 10
    end
    object qryScriptsID_TIMESTAMP_INIZIO_VAL: TLargeintField
      FieldName = 'ID_TIMESTAMP_INIZIO_VAL'
      Required = True
    end
    object qryScriptsID_FUNZIONE: TWideStringField
      FieldName = 'ID_FUNZIONE'
      Required = True
      Size = 10
    end
    object qryScriptsID_OPERAZIONE: TWideStringField
      FieldName = 'ID_OPERAZIONE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryScriptsID_STATO_ELAB: TWideStringField
      FieldName = 'ID_STATO_ELAB'
      FixedChar = True
      Size = 1
    end
    object qryScriptsID_LOCK: TLargeintField
      FieldName = 'ID_LOCK'
      Required = True
    end
    object qryScriptsID_COMMENTO: TWideStringField
      FieldName = 'ID_COMMENTO'
    end
  end
end
