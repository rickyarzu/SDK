object UniServerModule: TUniServerModule
  TempFolder = 'temp\'
  Title = 'New Application'
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomCSS.Strings = (
    '.card {'
    '    box-shadow: 0 4px 8px 0 rgba(0,0,0,.2)'
    '}'
    '.card-radius {'
    '    border-radius: 16px'
    '}'
    '.x-panel-default-outer-border-trbl {'
    '    border-width: 0px !important;'
    '}'
    '.x-grid-td {'
    '    vertical-align: inherit !important;'
    '}'
    '.x-grid-cell-inner {'
    '    text-overflow: ellipsis !important;'
    '}'
    
      '.x-keyboard-mode .x-grid-item-focused .x-grid-cell-inner:before ' +
      ' {'
    '    border: 0px !important;'
    '}'
    ''
    '.grad {'
    
      #9'background: linear-gradient(265deg, #ee7752, #e73c7e, #23a6d5, ' +
      '#23d5ab);'
    #9'background-size: 400% 400%;'
    #9'animation: gradient 5s ease infinite;'
    #9'height: 100vh;'
    '}'
    ''
    '@keyframes gradient {'
    #9'0% {'
    #9#9'background-position: 0% 50% !important;'
    #9'}'
    #9'50% {'
    #9#9'background-position: 100% 50% !important;'
    #9'}'
    #9'100% {'
    #9#9'background-position: 0% 50% !important;'
    #9'}'
    '}')
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
  Height = 150
  Width = 215
end
