object dmTestWebBrokerService: TdmTestWebBrokerService
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object JanuaWebBrokerServerManager1: TJanuaWebBrokerServerManager
    Enabled = False
    Port = 8180
    Left = 320
    Top = 144
  end
end
