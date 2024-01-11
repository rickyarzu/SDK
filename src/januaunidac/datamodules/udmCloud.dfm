inherited dmCloud: TdmCloud
  OldCreateOrder = False
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited PgUni: TPostgreSQLUniProvider
    Left = 136
    Top = 40
  end
  object qryTextFiles: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT f.*'
      '  FROM cloud.text_files f,  system.db_user_sessions s'
      '  where (text_file_key = :file_key) or (text_file_id = :id) '
      '        and (s.db_schema_id = f.db_schema_id)'
      '        and   s.db_session_key = :db_session_key')
    Left = 136
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'file_key'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'db_session_key'
        ParamType = ptInput
        Value = nil
      end>
    object qryTextFilestext_file_id: TLargeintField
      FieldName = 'text_file_id'
      Required = True
    end
    object qryTextFilestext_file_name: TWideStringField
      FieldName = 'text_file_name'
      Size = 512
    end
    object qryTextFilestext_file_des: TWideStringField
      FieldName = 'text_file_des'
      Size = 2048
    end
    object qryTextFilestext_file: TWideMemoField
      FieldName = 'text_file'
      BlobType = ftWideMemo
    end
    object qryTextFilesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryTextFilesdb_owner_id: TIntegerField
      FieldName = 'db_owner_id'
    end
    object qryTextFilessystem_file: TBooleanField
      FieldName = 'system_file'
    end
    object qryTextFilestext_file_key: TWideStringField
      FieldName = 'text_file_key'
      Size = 128
    end
  end
end
