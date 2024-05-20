object dmFirebirdOrmGenerator: TdmFirebirdOrmGenerator
  OnCreate = DataModuleCreate
  Height = 406
  Width = 503
  object UniConnection1: TUniConnection
    ProviderName = 'InterBase'
    Database = 'C:\PhoenixDB\PHOENIX.FDB'
    Username = 'SYSDBA'
    Server = 'localhost'
    Connected = True
    ConnectDialog = dlgConnect
    Left = 144
    Top = 40
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object dlgConnect: TUniConnectDialog
    DatabaseLabel = 'Database'
    PortLabel = 'Port'
    ProviderLabel = 'Provider'
    Caption = 'Connect'
    UsernameLabel = 'User Name'
    PasswordLabel = 'Password'
    ServerLabel = 'Server'
    ConnectButton = 'Connect'
    CancelButton = 'Cancel'
    LabelSet = lsCustom
    Left = 144
    Top = 104
  end
  object qryTables: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT  a.RDB$RELATION_NAME AS TABLE_NAME'
      'FROM RDB$RELATIONS a'
      'WHERE RDB$SYSTEM_FLAG <> 1'
      'AND  a.RDB$RELATION_NAME NOT LIKE '#39'%$%'#39
      'ORDER BY a.RDB$RELATION_NAME')
    Left = 144
    Top = 176
    object qryTablesTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      FixedChar = True
      Size = 93
    end
  end
  object dsTables: TUniDataSource
    DataSet = qryTables
    Left = 144
    Top = 248
  end
  object tbFields: TUniTable
    TableName = 'AMMINISTRATORI'
    Connection = UniConnection1
    FilterSQL = '1=2'
    Left = 232
    Top = 128
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 48
    Top = 64
  end
  object qryForeignKeys: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT rc.RDB$CONSTRAINT_NAME,'
      '          rc.RDB$RELATION_NAME AS table_name,'
      '          s.RDB$FIELD_NAME AS field_name,'
      '          rc.RDB$CONSTRAINT_NAME AS constraint_name,'
      '          rc.RDB$CONSTRAINT_TYPE AS constraint_type,'
      '          i.RDB$DESCRIPTION AS description,'
      '          rc.RDB$DEFERRABLE AS is_deferrable,'
      '          rc.RDB$INITIALLY_DEFERRED AS is_deferred,'
      '          refc.RDB$UPDATE_RULE AS on_update,'
      '          refc.RDB$DELETE_RULE AS on_delete,'
      '          refc.RDB$MATCH_OPTION AS match_type,'
      '          i2.RDB$RELATION_NAME AS references_table,'
      '          s2.RDB$FIELD_NAME AS references_field,'
      '          (s.RDB$FIELD_POSITION + 1) AS field_position'
      '     FROM RDB$INDEX_SEGMENTS s'
      'LEFT JOIN RDB$INDICES i ON i.RDB$INDEX_NAME = s.RDB$INDEX_NAME'
      
        'LEFT JOIN RDB$RELATION_CONSTRAINTS rc ON rc.RDB$INDEX_NAME = s.R' +
        'DB$INDEX_NAME'
      
        'LEFT JOIN RDB$REF_CONSTRAINTS refc ON rc.RDB$CONSTRAINT_NAME = r' +
        'efc.RDB$CONSTRAINT_NAME'
      
        'LEFT JOIN RDB$RELATION_CONSTRAINTS rc2 ON rc2.RDB$CONSTRAINT_NAM' +
        'E = refc.RDB$CONST_NAME_UQ'
      
        'LEFT JOIN RDB$INDICES i2 ON i2.RDB$INDEX_NAME = rc2.RDB$INDEX_NA' +
        'ME'
      
        'LEFT JOIN RDB$INDEX_SEGMENTS s2 ON i2.RDB$INDEX_NAME = s2.RDB$IN' +
        'DEX_NAME'
      '    WHERE i2.RDB$RELATION_NAME=:TABLE_NAME       -- table name'
      '      AND RC.RDB$CONSTRAINT_TYPE = '#39'FOREIGN KEY'#39
      ' ORDER BY s.RDB$FIELD_POSITION')
    MasterSource = dsTables
    Left = 144
    Top = 312
    ParamData = <
      item
        DataType = ftWideString
        Name = 'TABLE_NAME'
        ParamType = ptInput
        Value = 'STATINI'
      end>
    object qryForeignKeysRDBCONSTRAINT_NAME: TStringField
      FieldName = 'RDB$CONSTRAINT_NAME'
      FixedChar = True
      Size = 93
    end
    object qryForeignKeysTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      FixedChar = True
      Size = 93
    end
    object qryForeignKeysFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      ReadOnly = True
      FixedChar = True
      Size = 93
    end
    object qryForeignKeysCONSTRAINT_NAME: TStringField
      FieldName = 'CONSTRAINT_NAME'
      FixedChar = True
      Size = 93
    end
    object qryForeignKeysCONSTRAINT_TYPE: TStringField
      FieldName = 'CONSTRAINT_TYPE'
      FixedChar = True
      Size = 11
    end
    object qryForeignKeysDESCRIPTION: TBlobField
      FieldName = 'DESCRIPTION'
      ReadOnly = True
    end
    object qryForeignKeysIS_DEFERRABLE: TStringField
      FieldName = 'IS_DEFERRABLE'
      FixedChar = True
      Size = 3
    end
    object qryForeignKeysIS_DEFERRED: TStringField
      FieldName = 'IS_DEFERRED'
      FixedChar = True
      Size = 3
    end
    object qryForeignKeysON_UPDATE: TStringField
      FieldName = 'ON_UPDATE'
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
    object qryForeignKeysON_DELETE: TStringField
      FieldName = 'ON_DELETE'
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
    object qryForeignKeysMATCH_TYPE: TStringField
      FieldName = 'MATCH_TYPE'
      ReadOnly = True
      FixedChar = True
      Size = 7
    end
    object qryForeignKeysREFERENCES_TABLE: TStringField
      FieldName = 'REFERENCES_TABLE'
      ReadOnly = True
      FixedChar = True
      Size = 93
    end
    object qryForeignKeysREFERENCES_FIELD: TStringField
      FieldName = 'REFERENCES_FIELD'
      ReadOnly = True
      FixedChar = True
      Size = 93
    end
    object qryForeignKeysFIELD_POSITION: TLargeintField
      FieldName = 'FIELD_POSITION'
      ReadOnly = True
    end
  end
end
