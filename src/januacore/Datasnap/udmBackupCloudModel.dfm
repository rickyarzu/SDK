object dmBackupCloudModel: TdmBackupCloudModel
  Height = 394
  Width = 733
  object cdsFileBackup: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 120
    object cdsFileBackupRootDirID: TSmallintField
      FieldName = 'RootDirID'
    end
    object cdsFileBackupid: TIntegerField
      FieldName = 'id'
    end
    object cdsFileBackupLocalRoot: TStringField
      FieldName = 'LocalRoot'
      Size = 1024
    end
    object cdsFileBackupParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object cdsFileBackupDir: TBooleanField
      FieldName = 'Dir'
    end
    object cdsFileBackupTreeOrder: TStringField
      FieldName = 'TreeOrder'
      Size = 1024
    end
    object cdsFileBackupName: TStringField
      FieldName = 'Name'
      Size = 512
    end
    object cdsFileBackupLocation: TStringField
      FieldName = 'Location'
      Size = 1024
    end
    object cdsFileBackupTitle: TStringField
      FieldName = 'Title'
      Size = 512
    end
    object cdsFileBackupDescription: TStringField
      FieldName = 'Description'
      Size = 2048
    end
    object cdsFileBackupPath: TStringField
      FieldName = 'Path'
      Size = 1024
    end
    object cdsFileBackupDateTime: TDateTimeField
      FieldName = 'DateTime'
    end
    object cdsFileBackupAttr: TIntegerField
      FieldName = 'Attr'
    end
    object cdsFileBackupFileExt: TStringField
      FieldName = 'FileExt'
      Size = 128
    end
    object cdsFileBackupFileNameNoExt: TStringField
      FieldName = 'FileNameNoExt'
      Size = 512
    end
  end
  object dsFileBackup: TDataSource
    DataSet = cdsFileBackup
    Left = 192
    Top = 104
  end
  object JanuaLogger1: TJanuaLogger
    Component = Owner
    LogType = jltLog
    FileName = 'ErgoBackupError.log'
    FileDir = 
      'C:\Documents and Settings\Sviluppo\Dati applicazioni\ergomercato' +
      'r\log'
    AutoFileName = True
    ShowMessage = True
    Left = 312
    Top = 232
  end
  object JanuaDirectoryBackup1: TJanuaDirectoryBackup
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    LocalDirectoryFile = 
      'C:\Documents and Settings\Sviluppo\Dati applicazioni\ErgoMercato' +
      'r\backupdir.cds'
    ConfigSet = False
    GraphicLog = True
    JanuaDirBackuIO = JanuaDirBackupIO1
    LocalFileDataset = cdsFileBackup
    LocalDirectoryDataset = cdsDirectories
    Left = 72
    Top = 176
  end
  object JanuaDirBackupIO1: TJanuaDirBackupIO
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Dataset = cdsFileBackup
    DirectoriesDataset = cdsDirectories
    DBType = jbfClientDataset
    Left = 72
    Top = 233
  end
  object cdsSchemas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUserSchemas'
    Left = 192
    Top = 48
    object cdsSchemasDB_SCHEMA_ID: TBCDField
      FieldName = 'DB_SCHEMA_ID'
      Required = True
      Precision = 10
      Size = 0
    end
    object cdsSchemasDB_SCHEMA_NAME: TStringField
      FieldName = 'DB_SCHEMA_NAME'
      Size = 30
    end
    object cdsSchemasDB_SCHEMA_DESCRIPTION: TStringField
      FieldName = 'DB_SCHEMA_DESCRIPTION'
      Size = 256
    end
    object cdsSchemasDB_OWNER_ID: TBCDField
      FieldName = 'DB_OWNER_ID'
      Precision = 10
      Size = 0
    end
    object cdsSchemasDB_SCHEMA_KEY: TFMTBCDField
      FieldName = 'DB_SCHEMA_KEY'
      Precision = 38
      Size = 38
    end
    object cdsSchemasDB_SCHEMA_ENCRYPTED_KEY: TVarBytesField
      FieldName = 'DB_SCHEMA_ENCRYPTED_KEY'
      Size = 1024
    end
  end
  object cdsDirectories: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 160
    object cdsDirectoriesdirectory_id: TLargeintField
      FieldName = 'directory_id'
      Required = True
    end
    object cdsDirectoriescomputer_id: TLargeintField
      FieldName = 'computer_id'
      Required = True
    end
    object cdsDirectoriesLocalDirID: TSmallintField
      FieldName = 'LocalDirID'
    end
    object cdsDirectoriesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object cdsDirectoriesdirectory_name: TWideStringField
      FieldName = 'directory_name'
      Required = True
      Size = 256
    end
    object cdsDirectoriesdirectory_path: TWideStringField
      FieldName = 'directory_path'
      Required = True
      Size = 512
    end
  end
end
