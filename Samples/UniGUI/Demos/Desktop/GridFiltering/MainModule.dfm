object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  MonitoredKeys.Keys = <>
  Height = 350
  Width = 486
  object DataSource: TDataSource
    DataSet = ADOQuery1
    Left = 296
    Top = 144
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 112
    Top = 168
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'companyname'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%%'
      end
      item
        Name = 'contactname'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%%'
      end
      item
        Name = 'contacttitle'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%%'
      end
      item
        Name = 'address'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%%'
      end
      item
        Name = 'city'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%%'
      end
      item
        Name = 'country'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%%'
      end
      item
        Name = 'phone'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%%'
      end
      item
        Name = 'postalcode'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '%%'
      end>
    SQL.Strings = (
      'select * from [Customers]'
      'where '
      'companyname like :companyname'
      'and '
      'contactname like :contactname'
      'and '
      'contacttitle like :contacttitle'
      'and '
      'address like :address'
      'and '
      'city like :city'
      'and '
      'country like :country'
      'and '
      'phone like :phone'
      'and '
      'postalcode like :postalcode'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 216
    Top = 144
    object ADOQuery1CustomerID: TWideStringField
      FieldName = 'CustomerID'
      Size = 5
    end
    object ADOQuery1CompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 40
    end
    object ADOQuery1ContactName: TWideStringField
      FieldName = 'ContactName'
      Size = 30
    end
    object ADOQuery1ContactTitle: TWideStringField
      FieldName = 'ContactTitle'
      Size = 30
    end
    object ADOQuery1Address: TWideStringField
      FieldName = 'Address'
      Size = 60
    end
    object ADOQuery1City: TWideStringField
      FieldName = 'City'
      Size = 15
    end
    object ADOQuery1Region: TWideStringField
      FieldName = 'Region'
      Size = 15
    end
    object ADOQuery1PostalCode: TWideStringField
      FieldName = 'PostalCode'
      Size = 10
    end
    object ADOQuery1Country: TWideStringField
      FieldName = 'Country'
      Size = 15
    end
    object ADOQuery1Phone: TWideStringField
      FieldName = 'Phone'
      Size = 24
    end
    object ADOQuery1Fax: TWideStringField
      FieldName = 'Fax'
      Size = 24
    end
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct Country from [Customers]'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 208
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 296
    Top = 208
  end
end
