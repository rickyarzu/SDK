object UniServerModule: TUniServerModule
  TempFolder = 'temp\'
  Title = 'New Application'
  SuppressErrors = []
  Bindings = <>
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  OnServerStartup = UniGUIServerModuleServerStartup
  Height = 150
  Width = 215
  PixelsPerInch = 96
  object UniMapKeys1: TUniMapKeys
    GoogleAPIKey = 'AIzaSyDeYKXcfD28sxs_LCI4J5d6uQKIA8FZkPU '
    YandexAPIKey = ' '
    Left = 96
    Top = 48
  end
end
