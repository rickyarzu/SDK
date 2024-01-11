object UniServerModule: TUniServerModule
  OldCreateOrder = False
  OnCreate = UniGUIServerModuleCreate
  AutoCoInitialize = True
  FilesFolder = 'files\'
  TempFolder = 'temp\'
  SessionTimeout = 2400000
  Title = 'uniGUI Desktop Demo Application'
  BGColor = 8404992
  CharSet = 'utf-8'
  Favicon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000040040000000000000000000000000000000000000000
    0000727272FF727272FF727272FF727272FF7272729F00000000B17D4A50B17D
    4ADFB17D4AFFB17D4AFFB17D4AFFB17D4AFFB17D4AFFB17D4AEFB17D4A600000
    0000727272FFFFFFFFFFFFFFFFFFFFFFFFFF00000000B17D4AEFB17D4AFFB17D
    4AFFB17D4AFFB17D4AFFB17D4AFFB17D4AFFB17D4AFFB17D4AFFB17D4AFF0000
    0000727272FFFFFFFFFF97A776FFFFFFFFFF00000000B17D4AFFB17D4AFFB17D
    4AFFB17D4AFFB17D4AFFB17D4AFFB17D4AFFB17D4AFFB17D4AFFB17D4ABF0000
    0000727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40B17D4A70B17D4AFFB17D
    4AFFB17D4AFFB17D4AFFB17D4AFFB17D4AFFB17D4AFFB17D4A80000000000000
    0000727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFF40B17D4A10B17D
    4ACFB17D4AFFB17D4AFFB17D4AFFB17D4AFFB17D4AFFB17D4ABF000000000000
    0000727272FF727272FF727272FF727272FF727272FF727272FF72727280B17D
    4A60B17D4AFFB17D4AFFB17D4ACFB17D4A30B17D4A9FB17D4A40000000000000
    0000727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272EF0000
    0000B17D4A30B17D4A40B17D4A10000000000000000000000000000000000000
    0000727272FF727272FF727272FF727272FF727272FF727272FF727272FF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000727272FF727272FF727272FF727272FF727272FF727272FF727272FF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000727272FFFFFFFFFF727272FF727272FF727272FFFFFFFFFF727272FF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000727272FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF727272FF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000727272FF727272FF727272FF727272FF727272FF727272FF727272FF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  FaviconOptions = [foVisible, foLocalCache]
  AjaxTimeout = 60000
  DefaultImageFormat = cfJpeg
  SuppressErrors = []
  UnavailableErrMsg = 'Communication Error'
  LoadingMessage = 'Loading...'
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomFiles.Strings = (
    'http://maps.googleapis.com/maps/api/js?sensor=false'
    ''
    '')
  CustomCSS.Strings = (
    '<style type="text/css">'
    '  html { height: 100% }'
    '  body { height: 100%; margin: 0; padding: 0 }'
    '  #uni_map_canvas { height: 100% }'
    '</style>'
    '')
  CustomMeta.Strings = (
    
      '<meta name="viewport" content="initial-scale=1.0, user-scalable=' +
      'no" />')
  ServerMessages.ExceptionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    
      '<p style="text-align:center;color:#A05050">An Exception has occu' +
      'red in application:</p>'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Restart application</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Restart application</a></p>'
    '</body>'
    '</html>')
  ServerMessages.TerminateTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Restart application</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionMessage = 'Invalid session or session Timeout.'
  ServerMessages.TerminateMessage = 'Web session terminated.'
  ExtLocale = '[Auto]'
  Compression.MinTextSize = 512
  ServerLimits.MaxSessions = 100000
  ServerLimits.MaxRequests = 500
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  Options = [soShowLicenseInfo, soAutoPlatformSwitch, soAllowSessionRecording]
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 150
  Width = 215
end
