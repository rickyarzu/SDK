object dmMain: TdmMain
  Height = 200
  Width = 285
  object Connection: TFDConnection
    Params.Strings = (
      'Database=C:\Januaproject\Data\ORDERSMANAGER_FB30.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    ConnectedStoredUsage = []
    Connected = True
    LoginPrompt = False
    BeforeConnect = ConnectionBeforeConnect
    Left = 72
    Top = 80
  end
  object dsArticles: TFDQuery
    Connection = Connection
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ARTICOLI_ID'
    UpdateOptions.UpdateTableName = 'ARTICOLI'
    UpdateOptions.KeyFields = 'ID'
    UpdateObject = updArticles
    SQL.Strings = (
      'SELECT * FROM ARTICOLI')
    Left = 144
    Top = 48
  end
  object updArticles: TFDUpdateSQL
    Connection = Connection
    InsertSQL.Strings = (
      'INSERT INTO ARTICOLI'
      '(ID, CODICE, DESCRIZIONE, PREZZO)'
      'VALUES (:NEW_ID, :NEW_CODICE, :NEW_DESCRIZIONE, :NEW_PREZZO)'
      'RETURNING ID {INTO :ID}')
    ModifySQL.Strings = (
      'UPDATE ARTICOLI'
      
        'SET ID = :NEW_ID, CODICE = :NEW_CODICE, DESCRIZIONE = :NEW_DESCR' +
        'IZIONE, '
      '  PREZZO = :NEW_PREZZO'
      'WHERE ID = :OLD_ID'
      'RETURNING ID')
    DeleteSQL.Strings = (
      'DELETE FROM ARTICOLI'
      'WHERE ID = :OLD_ID')
    FetchRowSQL.Strings = (
      'SELECT ID, CODICE, DESCRIZIONE, PREZZO'
      'FROM ARTICOLI'
      'WHERE ID = :ID')
    Left = 144
    Top = 112
  end
end
