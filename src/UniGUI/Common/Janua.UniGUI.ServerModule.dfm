object UniServerModule: TUniServerModule
  AutoCoInitialize = True
  TempFolder = 'temp\'
  SessionTimeout = 1200000
  Title = 'New Application'
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  Options = [soShowLicenseInfo, soAutoPlatformSwitch, soRestartSessionOnTimeout, soWipeShadowSessions, soLogSessionCreate, soLogSessionTerminate, soDontCompressDownloads]
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  OnServerStartup = UniGUIServerModuleServerStartup
  Height = 150
  Width = 215
  object UniMapKeys1: TUniMapKeys
    GoogleAPIKey = 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
    YandexAPIKey = ' '
    Left = 96
    Top = 48
  end
end
