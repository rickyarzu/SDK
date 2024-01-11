object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 465
  ClientWidth = 823
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniHTMLMemo1: TUniHTMLMemo
    Left = 112
    Top = 48
    Width = 569
    Height = 353
    Hint = ''
    Lines.Strings = (
      
        '<div>To test this application point your browser to the URL <a h' +
        'ref="http://localhost:8077/server"  target="_blank">http://local' +
        'host:8077/server</a>. <br></div><div><br></div>'
      
        '<ul><li>You can enter any user name to loging or enter <b>admin<' +
        '/b> user name to enable session termination function in the Cont' +
        'rol Panel. </li><li>'
      
        'You can access <b>sessions</b> from top menu in the Control Pane' +
        'l.'
      ''
      '</li></ul>')
    ReadOnly = True
    Color = clWindow
    TabOrder = 0
    ShowToolbar = False
  end
end
