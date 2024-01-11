object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 304
  ClientWidth = 643
  Caption = 'MainForm'
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  RTL = False
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 224
    Top = 56
    Width = 185
    Height = 50
    Hint = ''
    Caption = 'UniButton1'
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'AjaxRequest=function OnAjaxRequest(sender, url, data)'#13#10'{'#13#10'  send' +
        'er.setText('#39'Ajax request in progress...'#39');'#13#10'  sender.setDisabled' +
        '(true);'#13#10'}'
      
        'AjaxCallback=function OnAjaxCallback(sender, response)'#13#10'{'#13#10'  sen' +
        'der.setDisabled(false);'#13#10'  sender.setText('#39'UniButton1'#39');'#13#10'}')
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 224
    Top = 136
    Width = 185
    Height = 50
    Hint = ''
    Caption = 'UniButton2'
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'AjaxCallback=function OnAjaxCallback(sender, response)'#13#10'{'#13#10'  sen' +
        'der.setText(response);'#13#10'}')
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 224
    Top = 216
    Width = 185
    Height = 50
    Hint = ''
    Caption = 'UniButton3'
    TabOrder = 2
    OnClick = UniButton3Click
  end
end
