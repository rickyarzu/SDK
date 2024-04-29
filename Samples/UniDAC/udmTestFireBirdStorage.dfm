inherited dmTestFireBirdStorage: TdmTestFireBirdStorage
  Height = 380
  Width = 310
  inherited pgErgoConnection: TJanuaUniConnection
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object qryMaster: TUniQuery
    Connection = pgErgoConnection
    SQL.Strings = (
      'SELECT * FROM MASTER')
    Left = 120
    Top = 176
  end
  object dsMaster: TUniDataSource
    Left = 120
    Top = 240
  end
  object qryDetail: TUniQuery
    Connection = pgErgoConnection
    MasterSource = dsMaster
    Left = 120
    Top = 312
  end
end
