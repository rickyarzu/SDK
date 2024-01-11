inherited dmPostgresCloud: TdmPostgresCloud
  Height = 649
  Width = 504
  inherited PgErgoConnection: TJanuaUniConnection
    Server = 'pg.januaservers.com'
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryBlobFile: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cloud.blob_files'
      '  (blob_id, blob_file, blob_size, db_schema_id, blob_key)'
      'VALUES'
      '  (:blob_id, :blob_file, :blob_size, :db_schema_id, :blob_key)')
    SQLDelete.Strings = (
      'DELETE FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :Old_blob_id')
    SQLUpdate.Strings = (
      'UPDATE cloud.blob_files'
      'SET'
      
        '  blob_id = :blob_id, blob_file = :blob_file, blob_size = :blob_' +
        'size, db_schema_id = :db_schema_id, blob_key = :blob_key'
      'WHERE'
      '  blob_id = :Old_blob_id')
    SQLLock.Strings = (
      'SELECT * FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :Old_blob_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT blob_id, blob_file, blob_size, db_schema_id, blob_key FRO' +
        'M cloud.blob_files'
      'WHERE'
      '  blob_id = :blob_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cloud.blob_files'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT b.*'
      '  FROM cloud.blob_files b'
      '        where '
      '           (blob_id = :id or :id = 0)'
      '        and'
      '           (cblb_jguid= :guid or :guid = '#39#39'); ')
    BeforeOpen = qryBlobFileBeforeOpen
    OnNewRecord = qryBlobFileNewRecord
    Left = 224
    Top = 88
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'guid'
        ParamType = ptInput
        Value = nil
      end>
    object qryBlobFileblob_id: TLargeintField
      FieldName = 'blob_id'
      Required = True
    end
    object qryBlobFileblob_file: TBlobField
      FieldName = 'blob_file'
    end
    object qryBlobFileblob_size: TLargeintField
      FieldName = 'blob_size'
    end
    object qryBlobFiledb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryBlobFileblob_key: TWideStringField
      FieldName = 'blob_key'
      Size = 64
    end
    object qryBlobFiledb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qryBlobFileispublic: TBooleanField
      FieldName = 'ispublic'
    end
    object qryBlobFilecblb_jguid: TWideStringField
      FieldName = 'cblb_jguid'
      Required = True
      Size = 40
    end
    object qryBlobFilecblb_deleted: TBooleanField
      FieldName = 'cblb_deleted'
    end
    object qryBlobFilefile_name: TWideStringField
      FieldName = 'file_name'
      Size = 256
    end
    object qryBlobFilefile_ext: TWideStringField
      FieldName = 'file_ext'
      Size = 12
    end
  end
  object qryTextFile: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cloud.blob_files'
      '  (blob_id, blob_file, blob_size, db_schema_id, blob_key)'
      'VALUES'
      '  (:blob_id, :blob_file, :blob_size, :db_schema_id, :blob_key)')
    SQLDelete.Strings = (
      'DELETE FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :Old_blob_id')
    SQLUpdate.Strings = (
      'UPDATE cloud.blob_files'
      'SET'
      
        '  blob_id = :blob_id, blob_file = :blob_file, blob_size = :blob_' +
        'size, db_schema_id = :db_schema_id, blob_key = :blob_key'
      'WHERE'
      '  blob_id = :Old_blob_id')
    SQLLock.Strings = (
      'SELECT * FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :Old_blob_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT blob_id, blob_file, blob_size, db_schema_id, blob_key FRO' +
        'M cloud.blob_files'
      'WHERE'
      '  blob_id = :blob_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cloud.blob_files'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT b.*'
      '  FROM cloud.text_files b, db_user_sessions s '
      
        '  where s.db_schema_id = b.db_schema_id and s.db_session_key = :' +
        'session_key'
      '        and b.text_file_key = :text_file_key'
      '        '
      
        '/*SELECT text_file_id, text_file_name, text_file_des, text_file,' +
        ' db_schema_id, '
      '       db_owner_id, system_file, text_file_key'
      '  FROM cloud.text_files*/')
    Left = 224
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'session_key'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'text_file_key'
        Value = nil
      end>
    object qryTextFiletext_file_id: TLargeintField
      FieldName = 'text_file_id'
    end
    object qryTextFiletext_file_name: TWideStringField
      FieldName = 'text_file_name'
      Size = 512
    end
    object qryTextFiletext_file_des: TWideStringField
      FieldName = 'text_file_des'
      Size = 2048
    end
    object qryTextFiletext_file: TWideMemoField
      FieldName = 'text_file'
      BlobType = ftWideMemo
    end
    object qryTextFiledb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryTextFiledb_owner_id: TIntegerField
      FieldName = 'db_owner_id'
    end
    object qryTextFilesystem_file: TBooleanField
      FieldName = 'system_file'
    end
    object qryTextFiletext_file_key: TWideStringField
      FieldName = 'text_file_key'
      Size = 128
    end
  end
  object qryBlobSequence: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select nextval('#39'cloud.file_seq'#39') as nextval')
    Left = 376
    Top = 408
    object qryBlobSequencenextval: TLargeintField
      FieldName = 'nextval'
      ReadOnly = True
    end
  end
  object spSaveImage: TUniStoredProc
    StoredProcName = 'cloud.insert_image'
    SQL.Strings = (
      
        'SELECT cloud.insert_image(:p_guid, :p_filename, :p_file_ext, :p_' +
        'filename_noext, :p_image_file, :p_db_schema, :p_db_owner_id)')
    Connection = PgErgoConnection
    Left = 224
    Top = 392
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_guid'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_filename'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_file_ext'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_filename_noext'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBlob
        Name = 'p_image_file'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'p_db_schema'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_db_owner_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'cloud.insert_image:0'
  end
  object qryImage: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      #9'FROM '
      '            cloud.images '
      '        where '
      '           (external_file_id = :id or :id = 0)'
      '        and'
      '           (cimg_jguid = :guid or :guid = '#39#39'); '
      '        '
      '         ')
    Left = 224
    Top = 448
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'guid'
        ParamType = ptInput
        Value = nil
      end>
    object qryImagedb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryImagedb_owner_id: TIntegerField
      FieldName = 'db_owner_id'
    end
    object qryImagefilename: TWideStringField
      FieldName = 'filename'
      Size = 512
    end
    object qryImagefile_ext: TWideStringField
      FieldName = 'file_ext'
    end
    object qryImagefilename_noext: TWideStringField
      FieldName = 'filename_noext'
      Size = 512
    end
    object qryImageexternal_file_id: TLargeintField
      FieldName = 'external_file_id'
      Required = True
    end
    object qryImageext_file_key: TWideStringField
      FieldName = 'ext_file_key'
      Size = 64
    end
    object qryImagecover_image_id: TLargeintField
      FieldName = 'cover_image_id'
    end
    object qryImageimage_file: TBlobField
      FieldName = 'image_file'
    end
    object qryImagecimg_jguid: TWideStringField
      FieldName = 'cimg_jguid'
      Required = True
      Size = 40
    end
    object qryImagecimg_deleted: TBooleanField
      FieldName = 'cimg_deleted'
    end
  end
  object qryImageList: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  external_file_id, cimg_jguid'
      #9'FROM cloud.images '
      '        order by external_file_id desc'
      '        limit :limit')
    Left = 224
    Top = 504
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 1000
      end>
    object qryImageListexternal_file_id: TLargeintField
      FieldName = 'external_file_id'
      Required = True
    end
    object qryImageListcimg_jguid: TWideStringField
      FieldName = 'cimg_jguid'
      Required = True
      Size = 40
    end
  end
  object spSaveFile: TUniStoredProc
    StoredProcName = 'cloud.insert_file'
    SQL.Strings = (
      
        'SELECT cloud.insert_file(:p_guid, :p_filename, :p_file_ext, :p_b' +
        'lob_file, :p_db_schema, :p_db_owner_id)')
    Connection = PgErgoConnection
    Left = 224
    Top = 32
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_guid'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_filename'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_file_ext'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBlob
        Name = 'p_blob_file'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'p_db_schema'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_db_owner_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'cloud.insert_file:0'
  end
  object qryFilesList: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT blob_id, cblb_jguid'
      #9'FROM cloud.blob_files'
      '        order by blob_id desc'
      '        limit  :limit')
    Left = 224
    Top = 200
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 1000
      end>
    object qryFilesListblob_id: TLargeintField
      FieldName = 'blob_id'
      Required = True
    end
    object qryFilesListcblb_jguid: TWideStringField
      FieldName = 'cblb_jguid'
      Required = True
      Size = 40
    end
  end
  object scDeleteBlobFile: TUniSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'DELETE'
      '  FROM cloud.blob_files b'
      '        where '
      '           (blob_id = :id or :id = 0)'
      '        and'
      '           (cblb_jguid= :guid or :guid = '#39#39'); ')
    Left = 224
    Top = 264
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'guid'
        ParamType = ptInput
        Value = nil
      end>
  end
  object scDeleteImage: TUniSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      #9'FROM '
      '            cloud.images '
      '        where '
      '           (external_file_id = :id or :id = 0)'
      '        and'
      '           (cimg_jguid = :guid or :guid = '#39#39'); '
      '        ')
    Left = 224
    Top = 328
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'guid'
        ParamType = ptInput
        Value = nil
      end>
  end
end
