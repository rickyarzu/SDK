object dmPgUploadImage: TdmPgUploadImage
  OldCreateOrder = False
  Height = 380
  Width = 581
  object PgConnection1: TJanuaUniConnection
    Pooling = True
    Username = 'ergo'
    Server = '151.1.24.135'
    LoginPrompt = False
    Database = 'ergomercator'
    Options.DisconnectedMode = True
    Options.LocalFailover = True
    Options.UseUnicode = True
    Schema = 'cloud'
    Left = 152
    Top = 96
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qrySession: TUniQuery
    Connection = PgConnection1
    SQL.Strings = (
      'select * from system.db_user_sessions'
      'where db_session_key = :p_session_key')
    Left = 152
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'p_session_key'
        Value = '7cd4fc3537ee0c9a43e883f9fbf71832'
      end>
    object qrySessiondb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qrySessiondb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qrySessiondb_session_id: TLargeintField
      FieldName = 'db_session_id'
      Required = True
    end
    object qrySessionlanguage_id: TSmallintField
      FieldName = 'language_id'
      Required = True
    end
    object qrySessionstart_time: TDateTimeField
      FieldName = 'start_time'
    end
    object qrySessiondb_session_key: TWideStringField
      FieldName = 'db_session_key'
      Required = True
      Size = 256
    end
  end
  object PgTable1: TUniQuery
    KeyFields = 'external_file_id'
    KeySequence = 'cloud.file_seq'
    SequenceMode = smInsert
    SQLInsert.Strings = (
      'INSERT INTO cloud.external_files'
      
        '  (external_file_id, external_name, location_id, db_schema_id, b' +
        'lob_id, ext_file_key, db_user_id)'
      'VALUES'
      
        '  (:external_file_id, :external_name, :location_id, :db_schema_i' +
        'd, :blob_id, :ext_file_key, :db_user_id)')
    SQLDelete.Strings = (
      'DELETE FROM cloud.external_files'
      'WHERE'
      '  external_file_id = :Old_external_file_id')
    SQLUpdate.Strings = (
      'UPDATE cloud.external_files'
      'SET'
      
        '  external_file_id = :external_file_id, external_name = :externa' +
        'l_name, location_id = :location_id, db_schema_id = :db_schema_id' +
        ', blob_id = :blob_id, ext_file_key = :ext_file_key, db_user_id =' +
        ' :db_user_id'
      'WHERE'
      '  external_file_id = :Old_external_file_id')
    SQLRefresh.Strings = (
      
        'SELECT external_file_id, external_name, location_id, db_schema_i' +
        'd, blob_id, ext_file_key, db_user_id FROM cloud.external_files'
      'WHERE'
      '  external_file_id = :external_file_id')
    SQLLock.Strings = (
      'SELECT * FROM cloud.external_files'
      'WHERE'
      '  external_file_id = :Old_external_file_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cloud.external_files'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT e.* '
      'FROM cloud.external_files e, system.db_user_sessions s'
      'where s.db_session_key = :p_session_key'
      'and e.db_schema_id = s.db_schema_id')
    Left = 152
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_session_key'
        Value = nil
      end>
    object PgTable1external_file_id: TLargeintField
      FieldName = 'external_file_id'
      Required = True
    end
    object PgTable1external_name: TStringField
      FieldName = 'external_name'
      Size = 100
    end
    object PgTable1location_id: TSmallintField
      FieldName = 'location_id'
    end
    object PgTable1db_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object PgTable1blob_id: TLargeintField
      FieldName = 'blob_id'
      Required = True
    end
    object PgTable1ext_file_key: TStringField
      FieldName = 'ext_file_key'
      Size = 64
    end
    object PgTable1db_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
  end
  object qryBlob: TUniQuery
    KeyFields = 'blob_id'
    KeySequence = 'cloud.file_seq'
    SQLInsert.Strings = (
      'INSERT INTO cloud.blob_files'
      
        '  (blob_id, blob_file, blob_size, db_schema_id, blob_key, db_use' +
        'r_id)'
      'VALUES'
      
        '  (:blob_id, :blob_file, :blob_size, :db_schema_id, :blob_key, :' +
        'db_user_id)')
    SQLDelete.Strings = (
      'DELETE FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :Old_blob_id')
    SQLUpdate.Strings = (
      'UPDATE cloud.blob_files'
      'SET'
      
        '  blob_id = :blob_id, blob_file = :blob_file, blob_size = :blob_' +
        'size, db_schema_id = :db_schema_id, blob_key = :blob_key, db_use' +
        'r_id = :db_user_id'
      'WHERE'
      '  blob_id = :Old_blob_id')
    SQLRefresh.Strings = (
      
        'SELECT blob_id, blob_file, blob_size, db_schema_id, blob_key, db' +
        '_user_id FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :blob_id')
    SQLLock.Strings = (
      'SELECT * FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :Old_blob_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cloud.blob_files'
      ''
      ') t')
    Connection = PgConnection1
    SQL.Strings = (
      'SELECT b.*'
      '  FROM cloud.blob_files b, system.db_user_sessions s'
      '  where'
      '  s.db_schema_id = b.db_schema_id'
      '  and'
      '  s.db_session_key = :p_session_key')
    IndexFieldNames = 'blob_id'
    Left = 152
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'p_session_key'
        Value = nil
      end>
    object qryBlobblob_id: TLargeintField
      FieldName = 'blob_id'
      Required = True
    end
    object qryBlobblob_file: TBlobField
      FieldName = 'blob_file'
    end
    object qryBlobblob_size: TLargeintField
      FieldName = 'blob_size'
    end
    object qryBlobdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryBlobblob_key: TStringField
      FieldName = 'blob_key'
      Size = 64
    end
    object qryBlobdb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
  end
end
