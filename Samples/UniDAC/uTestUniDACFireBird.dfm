object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 533
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object CRDBGrid1: TCRDBGrid
    Left = 0
    Top = 0
    Width = 745
    Height = 533
    Align = alClient
    DataSource = UniDataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object UniTable1: TUniTable
    TableName = 'TEST_UID'
    DataTypeMap = <
      item
        FieldName = 'JGUID'
        FieldType = ftGuid
      end>
    Connection = UniConnection1
    Active = True
    Left = 120
    Top = 144
    object UniTable1JGUID: TGuidField
      DisplayWidth = 39
      FieldName = 'JGUID'
      FixedChar = True
      Size = 38
    end
  end
  object UniConnection1: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'C:\PhoenixDB\PHOENIX.FDB'
    Username = 'SYSDBA'
    Server = 'localhost'
    Connected = True
    Left = 120
    Top = 80
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniTable1
    Left = 208
    Top = 112
  end
end
