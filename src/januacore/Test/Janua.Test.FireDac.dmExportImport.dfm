object dmTestFireDACImportExport: TdmTestFireDACImportExport
  Height = 322
  Width = 603
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Januaproject\Data\ORDERSMANAGER_FB30.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 120
  end
  object FDCommand1: TFDCommand
    Connection = FDConnection1
    Left = 216
    Top = 176
  end
  object mtbArticoli: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 472
    Top = 88
  end
  object qryArticoli: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from articoli')
    Left = 208
    Top = 88
    object qryArticoliID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryArticoliCODICE: TWideStringField
      FieldName = 'CODICE'
      Origin = 'CODICE'
      Required = True
      Size = 5
    end
    object qryArticoliDESCRIZIONE: TWideStringField
      FieldName = 'DESCRIZIONE'
      Origin = 'DESCRIZIONE'
      Size = 200
    end
    object qryArticoliPREZZO: TFMTBCDField
      FieldName = 'PREZZO'
      Origin = 'PREZZO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryArticoliUPDATED_AT: TSQLTimeStampField
      FieldName = 'UPDATED_AT'
      Origin = 'UPDATED_AT'
    end
    object qryArticoliCREATED_AT: TSQLTimeStampField
      FieldName = 'CREATED_AT'
      Origin = 'CREATED_AT'
    end
  end
  object tbArticoli: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'ARTICOLI'
    Left = 320
    Top = 56
    object tbArticoliID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbArticoliCODICE: TWideStringField
      FieldName = 'CODICE'
      Origin = 'CODICE'
      Required = True
      Size = 5
    end
    object tbArticoliDESCRIZIONE: TWideStringField
      FieldName = 'DESCRIZIONE'
      Origin = 'DESCRIZIONE'
      Size = 200
    end
    object tbArticoliPREZZO: TFMTBCDField
      FieldName = 'PREZZO'
      Origin = 'PREZZO'
      Required = True
      Precision = 18
      Size = 2
    end
    object tbArticoliUPDATED_AT: TSQLTimeStampField
      FieldName = 'UPDATED_AT'
      Origin = 'UPDATED_AT'
    end
    object tbArticoliCREATED_AT: TSQLTimeStampField
      FieldName = 'CREATED_AT'
      Origin = 'CREATED_AT'
    end
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = FDConnection1
    Left = 328
    Top = 136
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 192
    Top = 256
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 72
    Top = 224
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 320
    Top = 216
  end
  object FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink
    Left = 456
    Top = 256
  end
end
