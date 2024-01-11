object UniServerModule: TUniServerModule
  OldCreateOrder = False
  OnCreate = UniGUIServerModuleCreate
  TempFolder = 'temp\'
  Title = 'uniGUI Touch Demo'
  SuppressErrors = []
  Bindings = <>
  CustomFiles.Strings = (
    
      'https://maps.googleapis.com/maps/api/js?sensor=false&key=AIzaSyD' +
      '51syplucTDbub0ZcsZSJT8IixGAnkuxM')
  CustomCSS.Strings = (
    '  html { height: 100% }'
    '  body { height: 100%; margin: 0; padding: 0 }'
    '  #map-canvas { height: 100% }'
    '')
  CustomMeta.Strings = (
    
      '<meta name="viewport" content="initial-scale=1.0, user-scalable=' +
      'no" />')
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  Options = [soShowLicenseInfo, soAutoPlatformSwitch, soRestartSessionOnTimeout]
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 150
  Width = 215
end
