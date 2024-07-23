object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Title = 'New Application'
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomCSS.Strings = (
    
      '.fs-btn .x-btn-default-large .x-btn-wrap, .x-btn-default-medium ' +
      '.x-btn-wrap, .x-btn-default-small .x-btn-wrap {'
    '    background-color: transparent;'
    '    background-image: none;'
    '}'
    ''
    
      '.fs-btn .x-btn-default-large.x-btn-pressed .x-btn-wrap, .x-btn-d' +
      'efault-medium.x-btn-pressed .x-btn-wrap, .x-btn-default-small.x-' +
      'btn-pressed .x-btn-wrap, .x-btn-default-large.x-btn-pressed.x-bt' +
      'n-over .x-btn-wrap, .x-btn-default-medium.x-btn-pressed.x-btn-ov' +
      'er .x-btn-wrap, .x-btn-default-small.x-btn-pressed.x-btn-over .x' +
      '-btn-wrap, .x-btn-default-large.x-btn-pressed.x-btn-focus .x-btn' +
      '-wrap, .x-btn-default-medium.x-btn-pressed.x-btn-focus .x-btn-wr' +
      'ap, .x-btn-default-small.x-btn-pressed.x-btn-focus .x-btn-wrap, ' +
      '.x-btn-default-large.x-btn-pressed.x-btn-focus.x-btn-over .x-btn' +
      '-wrap, .x-btn-default-medium.x-btn-pressed.x-btn-focus.x-btn-ove' +
      'r .x-btn-wrap, .x-btn-default-small.x-btn-pressed.x-btn-focus.x-' +
      'btn-over .x-btn-wrap {'
    '    background-color: transparent;'
    '    background-image: none;'
    '}'
    ''
    
      '.fs-btn .x-btn-default-large.x-btn-focus, .x-btn-default-medium.' +
      'x-btn-focus, .x-btn-default-small.x-btn-focus, .x-btn-default-la' +
      'rge.x-btn-focus.x-btn-over, .x-btn-default-medium.x-btn-focus.x-' +
      'btn-over, .x-btn-default-small.x-btn-focus.x-btn-over {'
    '    border-color: transparent !important;'
    '}'
    ''
    '.x-keyboard-mode .x-btn-focus.x-btn-default-large .x-btn-wrap {'
    '    outline: none;'
    '}'
    ''
    '.x-keyboard-mode .x-btn-focus.x-btn-default-medium .x-btn-wrap {'
    '    outline: none;'
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
  OnBeforeInit = UniGUIServerModuleBeforeInit
  Height = 150
  Width = 215
end
