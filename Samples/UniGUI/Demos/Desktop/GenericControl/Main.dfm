object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 311
  ClientWidth = 624
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniGenericControl1: TUniGenericControl
    Left = 8
    Top = 8
    Width = 113
    Height = 41
    Hint = ''
    Color = clBtnFace
    ClientEvents.ExtEvents.Strings = (
      
        'beforerender=function beforerender(sender, eOpts)'#13#10'{'#13#10'   sender.' +
        'update('#13#10'      '#39'<button type="button" onclick="ajaxRequest('#39'+sen' +
        'der.nm+'#39',\'#39'btnclick\'#39')">Click Me!</button>'#39#13#10'   );'#13#10'}')
    OnAjaxEvent = UniGenericControl1AjaxEvent
  end
  object UniMemo1: TUniMemo
    Left = 8
    Top = 143
    Width = 601
    Height = 154
    Hint = ''
    Lines.Strings = (
      'UniMemo1')
    TabOrder = 1
  end
  object UniGenericControl2: TUniGenericControl
    Left = 168
    Top = 8
    Width = 120
    Height = 44
    Hint = ''
    Color = clSilver
    ClientEvents.ExtEvents.Strings = (
      
        'beforerender=function beforerender(sender, eOpts)'#13#10'{'#13#10'  sender.u' +
        'pdate('#39'<p><b>HTML Text!<b></p>'#39');'#13#10'}')
    OnClick = UniGenericControl2Click
  end
  object UniGenericControl3: TUniGenericControl
    Left = 336
    Top = 8
    Width = 273
    Height = 73
    Hint = ''
    Color = clBtnFace
    ClientEvents.ExtEvents.Strings = (
      
        'beforerender=function beforerender(sender, eOpts)'#13#10'{'#13#10'   sender.' +
        'update('#13#10'      '#39'<object width="100%" height="100%" data="files/b' +
        'ookmark.swf"></object>'#39#13#10'   )'#13#10'}')
  end
end
