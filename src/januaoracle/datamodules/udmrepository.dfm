object dmRepository: TdmRepository
  OldCreateOrder = False
  Height = 261
  Width = 442
  object sesRepository: TOraSession
    Options.Direct = True
    PoolingOptions.Validate = True
    PoolingOptions.ProxyUsername = 'repository'
    PoolingOptions.ProxyPassword = 'f4nkul0'
    Username = 'repository2'
    Password = 'j4nu4pr0j3ct'
    Server = 'repository.januaproject.it:1521:orcL'
    LoginPrompt = False
    BeforeConnect = sesRepositoryBeforeConnect
    Left = 32
    Top = 24
  end
  object qryGlobalVersion: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO repository_version'
      '  (VERSION_ID)'
      'VALUES'
      '  (:VERSION_ID)')
    SQLDelete.Strings = (
      'DELETE FROM repository_version'
      'WHERE'
      '  VERSION_ID = :VERSION_ID')
    SQLUpdate.Strings = (
      'UPDATE repository_version'
      'SET'
      '  VERSION_ID = :VERSION_ID'
      'WHERE'
      '  VERSION_ID = :OLD_VERSION_ID')
    SQLLock.Strings = (
      'SELECT * FROM repository_version'
      'WHERE'
      '  VERSION_ID = :VERSION_ID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  VERSION_ID = :VERSION_ID')
    Session = sesRepository
    SQL.Strings = (
      'select * from repository_version')
    Left = 192
    Top = 72
    object qryGlobalVersionVERSION_ID: TFloatField
      FieldName = 'VERSION_ID'
      Required = True
    end
  end
  object Script: TOraScript
    SQL.Strings = (
      'PACKAGE JANUA_DOC_PKG'
      '  IS'
      '--'
      '-- To modify this template, edit file PKGSPEC.TXT in TEMPLATE '
      '-- directory of SQL Navigator'
      '--'
      '-- Purpose: Briefly explain the functionality of the package'
      '--'
      '-- MODIFICATION HISTORY'
      '-- Person      Date    Comments'
      
        '-- ---------   ------  -----------------------------------------' +
        '-       '
      '   -- Enter package declarations as shown below'
      ''
      '   TYPE TCursor IS REF CURSOR;'
      '   '
      
        '    function doc_to_doc(P_DOC_ID number, P_DOC_TYPE varchar, P_A' +
        'NAGRAPH_ID number'
      '                     , P_GROUP_ID number ,p_clone in number)'
      '                      return number;'
      
        '    -- QUESTA PROCEDURA GENERA UN SECONDO DOCUMENTO PARTENDO DA ' +
        'UN DOCUMENTO BASE'
      
        '    -- PUO SERVIRE PER CONVERTIRE DOCUMETI DI TRASPORTO IN FATTU' +
        'RE DIFFERITE.'
      '    -- OPPURE RICEVUTE DI NEGOZIO IN FATTURE SU RICEVUTE'
      
        '    -- IMPORTANTE IL PARAMETRO P_CLONE CH EINDICA IL COMPORTAMEN' +
        'TO CHE TIENE LA FUNZIONE'
      '    '
      '    '
      '    '
      
        '   PROCEDURE ANAG_CHANGE ( P_ANAGRAFICA_ID IN NUMBER, P_DATE IN ' +
        'date);'
      
        '   -- QUESTA PROCEDURA CAMBIA SU UN DOCUMENTO LA SCHEDA ANGRAFIC' +
        'A DI UN CLIENTE, SERVE IN CASO DI EREDITA'#39
      '   '
      '   '
      ''
      'END; -- Package spec')
    OnError = ScriptError
    Left = 32
    Top = 120
  end
  object tabLocali: TOraScript
    SQL.Strings = (
      'create table'
      ' db_version'
      '(version_ID number(24))')
    Session = dmApplicationStart.sesDefault
    Left = 96
    Top = 96
  end
  object qryCompile: TOraQuery
    SQL.Strings = (
      
        'select '#39' ALTER '#39' || OBJECT_TYPE || '#39' '#39'  || OBJECT_NAME || '#39' COMP' +
        'ILE;'#39' as compile, STATUS'
      
        ' from user_objects where STATUS != '#39'VALID'#39' and object_name not l' +
        'ike '#39'BIN$%'#39' and object_type != '#39'SYNONYM'#39' and object_type not lik' +
        'e '#39'PACKAGE%'#39
      
        'AND OBJECT_NAME NOT LIKE '#39'EUL%'#39' AND OBJECT_NAME NOT LIKE '#39'QUEST%' +
        #39)
    Left = 192
    Top = 120
    object qryCompileCOMPILE: TWideStringField
      FieldName = 'COMPILE'
      Size = 164
    end
    object qryCompileSTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 7
    end
  end
  object qryLocalVersion: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO db_version'
      '  (VERSION_ID)'
      'VALUES'
      '  (:VERSION_ID)')
    SQLDelete.Strings = (
      'DELETE FROM db_version'
      'WHERE'
      '  VERSION_ID = :VERSION_ID')
    SQLUpdate.Strings = (
      'UPDATE db_version'
      'SET'
      '  VERSION_ID = :VERSION_ID'
      'WHERE'
      '  VERSION_ID = :OLD_VERSION_ID')
    SQLLock.Strings = (
      'SELECT * FROM db_version'
      'WHERE'
      '  VERSION_ID = :VERSION_ID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  VERSION_ID = :VERSION_ID')
    SQL.Strings = (
      'select * from db_version')
    Left = 32
    Top = 72
    object qryLocalVersionVERSION_ID: TFloatField
      FieldName = 'VERSION_ID'
      Required = True
    end
  end
  object qryRepository: TOraTable
    TableName = 'SQL_HISTORY'
    KeyFields = 'VERSION'
    KeySequence = 'SQL_HISTORY_SEQ'
    Session = sesRepository
    FilterSQL = 'VERSION > :version'
    FetchAll = True
    Left = 192
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'version'
      end>
    object qryRepositoryVERSION: TFloatField
      FieldName = 'VERSION'
      Required = True
    end
    object qryRepositoryINSERT_DATE: TOraTimeStampField
      FieldName = 'INSERT_DATE'
      DataType = 36
    end
    object qryRepositorySQL_STRING: TWideMemoField
      FieldName = 'SQL_STRING'
      BlobType = ftOraClob
    end
  end
  object qryGruppi: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO stat_01_query_groups'
      '  (GROUP_ID, GROUP_DES)'
      'VALUES'
      '  (:GROUP_ID, :GROUP_DES)')
    SQLDelete.Strings = (
      'DELETE FROM stat_01_query_groups'
      'WHERE'
      '  GROUP_ID = :GROUP_ID')
    SQLUpdate.Strings = (
      'UPDATE stat_01_query_groups'
      'SET'
      '  GROUP_ID = :GROUP_ID,'
      '  GROUP_DES = :GROUP_DES'
      'WHERE'
      '  GROUP_ID = :OLD_GROUP_ID')
    SQLLock.Strings = (
      'SELECT * FROM stat_01_query_groups'
      'WHERE'
      '  GROUP_ID = :GROUP_ID'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  GROUP_ID = :GROUP_ID')
    SQL.Strings = (
      'select * from stat_01_query_groups')
    Left = 296
    Top = 8
    object qryGruppiGROUP_ID: TIntegerField
      FieldName = 'GROUP_ID'
      Required = True
    end
    object qryGruppiGROUP_DES: TWideStringField
      FieldName = 'GROUP_DES'
      Required = True
      Size = 30
    end
  end
  object dsGruppi: TOraDataSource
    DataSet = qryGruppi
    Left = 360
    Top = 24
  end
  object dsSQL: TOraDataSource
    DataSet = qrySql
    Left = 360
    Top = 80
  end
  object qrySql: TOraTable
    TableName = 'stat_05_queries'
    OrderFields = 'QUERY_DES'
    MasterFields = 'GROUP_ID'
    DetailFields = 'GROUP_ID'
    MasterSource = dsGruppi
    KeyFields = 'group_id, query_id'
    KeySequence = 'STAT_QUERY_SEQ'
    SequenceMode = smInsert
    UniDirectional = True
    LockMode = lmNone
    IndexFieldNames = 'QUERY_DES'
    AfterOpen = qrySqlAfterOpen
    OnNewRecord = qrySqlNewRecord
    Options.AutoClose = True
    Options.AutoPrepare = True
    Left = 296
    Top = 56
    object qrySqlGROUP_ID: TIntegerField
      FieldName = 'GROUP_ID'
    end
    object qrySqlQUERY_ID: TIntegerField
      FieldName = 'QUERY_ID'
      Required = True
    end
    object qrySqlQUERY_DES: TWideStringField
      FieldName = 'QUERY_DES'
      Size = 30
    end
    object qrySqlQUERY_TEXT: TWideStringField
      FieldName = 'QUERY_TEXT'
      Size = 2048
    end
    object qrySqlUSER_INSERT: TWideStringField
      FieldName = 'USER_INSERT'
      Size = 30
    end
  end
  object qryParametri: TOraTable
    TableName = 'stat_06_queries_params'
    MasterFields = 'GROUP_ID;QUERY_ID'
    DetailFields = 'GROUP_ID;QUERY_ID'
    MasterSource = dsSQL
    KeyFields = 'group_id, param_id, query_id'
    IndexFieldNames = 'PARAM_DES'
    OnNewRecord = qryParametriNewRecord
    Left = 296
    Top = 104
    object qryParametriGROUP_ID: TIntegerField
      FieldName = 'GROUP_ID'
    end
    object qryParametriQUERY_ID: TIntegerField
      FieldName = 'QUERY_ID'
    end
    object qryParametriPARAM_ID: TIntegerField
      FieldName = 'PARAM_ID'
    end
    object qryParametriPARAM_DES: TWideStringField
      FieldName = 'PARAM_DES'
      Size = 30
    end
    object qryParametriPARAM_TYPE: TWideStringField
      FieldName = 'PARAM_TYPE'
      Size = 10
    end
    object qryParametriINT_VALUE: TIntegerField
      FieldName = 'INT_VALUE'
    end
    object qryParametriSTRING_VALUE: TWideStringField
      FieldName = 'STRING_VALUE'
      Size = 60
    end
    object qryParametriDATE_VALUE: TDateTimeField
      FieldName = 'DATE_VALUE'
    end
    object qryParametriLOV: TWideStringField
      FieldName = 'LOV'
      FixedChar = True
      Size = 1
    end
    object qryParametriLOV_TEXT: TWideStringField
      FieldName = 'LOV_TEXT'
      Size = 1024
    end
    object qryParametriLOV_FIELD: TWideStringField
      FieldName = 'LOV_FIELD'
      Size = 30
    end
    object qryParametriPARAM_TEXT: TWideStringField
      FieldName = 'PARAM_TEXT'
      Size = 60
    end
    object qryParametriROWID: TWideStringField
      FieldName = 'ROWID'
      Size = 18
    end
  end
  object JanuaLogger1: TJanuaLogger
    Component = Owner
    LogType = jltError
    FileName = 'RepositoryError.log'
    AutoFileName = True
    Left = 96
    Top = 152
  end
end
