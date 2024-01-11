object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  MonitoredKeys.Keys = <>
  OnNewComponent = UniGUIMainModuleNewComponent
  Height = 364
  Width = 400
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 144
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 96
    Top = 112
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 192
    Top = 184
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblInv')
    Left = 184
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 96
    Top = 184
  end
end
