object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  Theme = 'gray'
  MonitoredKeys.Keys = <>
  Height = 328
  Width = 401
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\UniGUIsvn\Simple' +
      'Demo\Win32\Debug\files\SimpleDemo.mdb;Persist Security Info=Fals' +
      'e'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 184
    Top = 72
  end
  object QueryInvoices: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Invoice i'
      'left join customer c on c.id=i.CustomerId'
      'order by Company, InvoiceDate')
    Left = 209
    Top = 168
  end
  object SrcInvoices: TDataSource
    DataSet = QueryInvoices
    Left = 112
    Top = 120
  end
end
