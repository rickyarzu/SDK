object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 532
  ClientWidth = 806
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnAfterShow = UniFormAfterShow
  PixelsPerInch = 96
  TextHeight = 13
  object UniMemo1: TUniMemo
    Left = 96
    Top = 40
    Width = 569
    Height = 441
    Hint = ''
    Lines.Strings = (
      
        'This program demonstrates SSL protocol support in Standalone and' +
        ' Windows Service modes.'
      ''
      
        'Before running the server make sure that all pem files are in sa' +
        'me folder with your '
      
        'server executable. Also make sure that OpenSSL dlls are either i' +
        'n same folder or in Windows system path.'
      ''
      'Refer to developer'#39's guide for more details.'
      ''
      'To run web application open below link in your browser:'
      ''
      'https://localhost:8077'
      ''
      'or '
      ''
      'http://localhost:8078 (for a non-SSL session)'
      ''
      
        'You can disable the (non-secure) HTTP protocol by setting the Se' +
        'rverModule.Port to 8077 and SSL.Port to 0.')
    TabOrder = 0
    WordWrap = False
  end
end
