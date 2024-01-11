object dmPgTestExportImport: TdmPgTestExportImport
  Height = 305
  Width = 575
  object PgConnections: TUniConnection
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'ergomercator'
    SpecificOptions.Strings = (
      'PostgreSQL.Schema=jpublic')
    Username = 'ergo'
    Server = 'pg.januaservers.com'
    Left = 112
    Top = 64
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 112
    Top = 136
  end
  object vtCountries: TVirtualTable
    Left = 432
    Top = 96
    Data = {04000000000000000000}
  end
  object tbCountries: TUniTable
    TableName = 'countries'
    Connection = PgConnections
    Left = 256
    Top = 96
  end
end
