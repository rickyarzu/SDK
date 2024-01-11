object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 319
  ClientWidth = 643
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniMemo1: TUniMemo
    Left = 392
    Top = 0
    Width = 251
    Height = 319
    Hint = ''
    Lines.Strings = (
      'UniMemo1')
    ParentFont = False
    Font.Charset = TURKISH_CHARSET
    Font.Height = -13
    Font.Name = 'Courier New'
    Align = alRight
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitHeight = 304
  end
  object UniPanel1: TUniPanel
    Left = 40
    Top = 40
    Width = 281
    Height = 209
    Hint = ''
    TabOrder = 1
    ClientEvents.ExtEvents.Strings = (
      
        'Onmousedown=function Onmousedown(sender, x, y)'#13#10'{'#13#10'  ajaxRequest' +
        '(sender, '#39'myAjaxEvent'#39', ['#39'param0=MyParam'#39', '#39'X='#39'+x, '#39'Y='#39'+y] );'#13#10'}')
    BorderStyle = ubsFrameLowered
    Caption = 'Click Here!'
    OnAjaxEvent = UniPanel1AjaxEvent
  end
end
