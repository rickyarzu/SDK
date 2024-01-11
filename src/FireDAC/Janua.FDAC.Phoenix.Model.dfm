object dmFDACPhoenixModel: TdmFDACPhoenixModel
  Height = 301
  Width = 344
  object FDConnectionPhoenix: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=192.168.1.200'
      'Port=3050'
      'Database=C:\PhoenixDB\Phoenix.fdb'
      'DriverID=FB')
    LoginDialog = FDGUIxLoginDialog1
    BeforeConnect = FDConnectionPhoenixBeforeConnect
    Left = 80
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 80
    Top = 80
  end
  object FDGUIxLoginDialog1: TFDGUIxLoginDialog
    Provider = 'Forms'
    HistoryEnabled = True
    VisibleItems.Strings = (
      'User_Name'
      'Password'
      'Database'
      'Server'
      'Port')
    Left = 80
    Top = 144
  end
end
