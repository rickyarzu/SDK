inherited dmPgCloudStorage: TdmPgCloudStorage
  Height = 539
  Width = 745
  inherited PgErgoConnection: TJanuaUniConnection
    Database = 'lnd'
    Left = 80
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited PgUniProv: TPostgreSQLUniProvider
    Left = 160
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
      '           (isresource = :isresource or :isresource = false)'
      '        and'
      '           (blob_id = :id or :id = 0)'
      '        and'
      '           (cblb_jguid= :guid or :guid = '#39#39' or :guid is null); ')
    BeforeOpen = qryBlobFileBeforeOpen
    Left = 464
    Top = 64
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'isresource'
        ParamType = ptInput
        Value = False
      end
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 301
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
    object qryBlobFilefile_ext: TWideStringField
      FieldName = 'file_ext'
      Size = 12
    end
    object qryBlobFilefilename: TWideStringField
      FieldName = 'filename'
      Size = 256
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
      '  FROM cloud.text_files b, system.db_user_sessions s '
      
        '  where s.db_schema_id = b.db_schema_id and s.db_session_key = :' +
        'session_key'
      '        and b.text_file_key = :text_file_key'
      '        '
      
        '/*SELECT text_file_id, text_file_name, text_file_des, text_file,' +
        ' db_schema_id, '
      '       db_owner_id, system_file, text_file_key'
      '  FROM cloud.text_files*/')
    Left = 80
    Top = 96
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
    Left = 80
    Top = 288
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
    Left = 552
    Top = 176
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
    Left = 464
    Top = 200
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
    SQLInsert.Strings = (
      'INSERT INTO cloud.images'
      '  (external_file_id, cimg_jguid)'
      'VALUES'
      '  (:external_file_id, :cimg_jguid)')
    SQLDelete.Strings = (
      'DELETE FROM cloud.images'
      'WHERE'
      '  external_file_id = :Old_external_file_id')
    SQLUpdate.Strings = (
      'UPDATE cloud.images'
      'SET'
      '  external_file_id = :external_file_id, cimg_jguid = :cimg_jguid'
      'WHERE'
      '  external_file_id = :Old_external_file_id')
    SQLLock.Strings = (
      'SELECT * FROM cloud.images'
      'WHERE'
      '  external_file_id = :Old_external_file_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT external_file_id, cimg_jguid FROM cloud.images'
      'WHERE'
      '  external_file_id = :external_file_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cloud.images'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  external_file_id, cimg_jguid'
      #9'FROM cloud.images '
      '        order by external_file_id desc'
      '        limit :limit')
    Left = 80
    Top = 220
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
    Left = 544
    Top = 88
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
    Left = 80
    Top = 160
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
    Left = 544
    Top = 40
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
    Left = 552
    Top = 232
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
  object qryImages: TUniQuery
    KeyFields = 'external_file_id'
    SQLInsert.Strings = (
      'INSERT INTO cloud.images'
      
        '  (db_schema_id, db_owner_id, filename, file_ext, filename_noext' +
        ', external_file_id, ext_file_key, cover_image_id, cimg_jguid, ci' +
        'mg_deleted, image_file)'
      'VALUES'
      
        '  (:db_schema_id, :db_owner_id, :filename, :file_ext, :filename_' +
        'noext, :external_file_id, :ext_file_key, :cover_image_id, :cimg_' +
        'jguid, :cimg_deleted, :image_file)')
    SQLDelete.Strings = (
      'DELETE FROM cloud.images'
      'WHERE'
      '  external_file_id = :Old_external_file_id')
    SQLUpdate.Strings = (
      'UPDATE cloud.images'
      'SET'
      
        '  db_schema_id = :db_schema_id, db_owner_id = :db_owner_id, file' +
        'name = :filename, file_ext = :file_ext, filename_noext = :filena' +
        'me_noext, external_file_id = :external_file_id, ext_file_key = :' +
        'ext_file_key, cover_image_id = :cover_image_id, cimg_jguid = :ci' +
        'mg_jguid, cimg_deleted = :cimg_deleted, image_file = :image_file'
      'WHERE'
      '  external_file_id = :Old_external_file_id')
    SQLLock.Strings = (
      'SELECT * FROM cloud.images'
      'WHERE'
      '  external_file_id = :Old_external_file_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, db_owner_id, filename, file_ext, filename_n' +
        'oext, external_file_id, ext_file_key, cover_image_id, cimg_jguid' +
        ', cimg_deleted, image_file FROM cloud.images'
      'WHERE'
      '  external_file_id = :external_file_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cloud.images'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT  i.*'
      #9'FROM cloud.images i'
      '        where '
      '        lower(i.filename) like lower(:filename)'
      '        order by external_file_id desc'
      '        limit :limit')
    BeforePost = qryImagesBeforePost
    Left = 80
    Top = 356
    ParamData = <
      item
        DataType = ftString
        Name = 'filename'
        ParamType = ptInput
        Value = '%'
      end
      item
        DataType = ftLargeint
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 1000
      end>
    object LargeintField1: TLargeintField
      FieldName = 'external_file_id'
    end
    object WideStringField1: TWideStringField
      FieldName = 'cimg_jguid'
      Required = True
      Size = 40
    end
    object qryImagesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryImagesdb_owner_id: TIntegerField
      FieldName = 'db_owner_id'
    end
    object qryImagesfilename: TWideStringField
      FieldName = 'filename'
      Size = 512
    end
    object qryImagesfile_ext: TWideStringField
      FieldName = 'file_ext'
    end
    object qryImagesfilename_noext: TWideStringField
      FieldName = 'filename_noext'
      Size = 512
    end
    object qryImagesext_file_key: TWideStringField
      FieldName = 'ext_file_key'
      Size = 64
    end
    object qryImagescover_image_id: TLargeintField
      FieldName = 'cover_image_id'
    end
    object qryImagescimg_deleted: TBooleanField
      FieldName = 'cimg_deleted'
    end
    object qryImagesimage_file: TBlobField
      FieldName = 'image_file'
      Required = True
    end
  end
  object qrySearchBlobFiles: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :Old_blob_id')
    SQLUpdate.Strings = (
      'UPDATE cloud.blob_files'
      'SET'
      
        '  blob_id = :blob_id, blob_size = :blob_size, db_schema_id = :db' +
        '_schema_id, blob_key = :blob_key, db_user_id = :db_user_id, ispu' +
        'blic = :ispublic, cblb_jguid = :cblb_jguid, cblb_deleted = :cblb' +
        '_deleted, file_ext = :file_ext, filename = :filename, isresource' +
        ' = :isresource, file_name = :file_name'
      'WHERE'
      '  blob_id = :Old_blob_id')
    SQLLock.Strings = (
      'SELECT * FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :Old_blob_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT blob_id, blob_size, db_schema_id, blob_key, db_user_id, i' +
        'spublic, cblb_jguid, cblb_deleted, file_ext, filename, isresourc' +
        'e, file_name FROM cloud.blob_files'
      'WHERE'
      '  blob_id = :blob_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM cloud.blob_files'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT blob_id,  blob_size, db_schema_id, blob_key, db_user_id, ' +
        'ispublic, cblb_jguid, cblb_deleted, file_ext, filename, isresour' +
        'ce, file_name'
      #9'FROM cloud.blob_files b'
      '        where '
      '           (lower(filename) like :filename or :filename = '#39'%'#39')'
      '        and'
      '                 (blob_id = :id or :id = 0)'
      'order by filename'
      'limit 100')
    Left = 464
    Top = 320
    ParamData = <
      item
        DataType = ftWideString
        Name = 'filename'
        ParamType = ptInput
        Value = '%'
      end
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = -1
      end>
    object qrySearchBlobFilesblob_id: TLargeintField
      FieldName = 'blob_id'
      Required = True
    end
    object qrySearchBlobFilesblob_size: TLargeintField
      FieldName = 'blob_size'
    end
    object qrySearchBlobFilesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qrySearchBlobFilesblob_key: TWideStringField
      FieldName = 'blob_key'
      Required = True
      Size = 64
    end
    object qrySearchBlobFilesdb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qrySearchBlobFilesispublic: TBooleanField
      FieldName = 'ispublic'
    end
    object qrySearchBlobFilescblb_jguid: TWideStringField
      FieldName = 'cblb_jguid'
      Required = True
      Size = 40
    end
    object qrySearchBlobFilescblb_deleted: TBooleanField
      FieldName = 'cblb_deleted'
    end
    object qrySearchBlobFilesfile_ext: TWideStringField
      FieldName = 'file_ext'
      Size = 12
    end
    object qrySearchBlobFilesfilename: TWideStringField
      FieldName = 'filename'
      Size = 256
    end
    object qrySearchBlobFilesisresource: TBooleanField
      FieldName = 'isresource'
    end
    object qrySearchBlobFilesfile_name: TWideStringField
      FieldName = 'file_name'
      Size = 256
    end
  end
  object dsImages: TDataSource
    DataSet = qryImages
    Enabled = False
    Left = 80
    Top = 424
  end
end
