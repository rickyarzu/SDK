object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Title = 'Google Maps Demo'
  SuppressErrors = []
  Bindings = <>
  CustomFiles.Strings = (

      'https://maps.googleapis.com/maps/api/js?sensor=false&key=AIzaSyD' +
      '51syplucTDbub0ZcsZSJT8IixGAnkuxM'
    )
  CustomCSS.Strings = (
    '  html { height: 100% }'
    '  body { height: 100%; margin: 0; padding: 0 }'
    '  #map-canvas { height: 100% }'
    '')
  CustomMeta.Strings = (
    
      '<meta name="viewport" content="initial-scale=1.0, user-scalable=' +
      'no" />')
  ServerMessages.UnavailableErrMsg = 'Server unavailable, please try later'
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvSSLv3
  SSL.SSLOptions.SSLVersions = [sslvSSLv3]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 150
  Width = 215
end
