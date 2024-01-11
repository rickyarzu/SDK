object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 424
  ClientWidth = 643
  Caption = 'MainForm'
  Color = clWhite
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Click!'
    TabOrder = 0
    ClientEvents.ExtEvents.Strings = (
      
        'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'  sender.showMask('#39'Loadi' +
        'ng, Please Wait...'#39');'#13#10'  ajaxRequest(sender, '#39'test'#39');'#13#10'}')
    OnAjaxEvent = UniButton1AjaxEvent
  end
  object UniPanel1: TUniPanel
    Left = 160
    Top = 224
    Width = 321
    Height = 177
    Hint = ''
    Caption = 'Click here!'
    TabOrder = 1
    ClientEvents.ExtEvents.Strings = (
      
        'Onclick=function Onclick(sender)'#13#10'{'#13#10'  sender.showMask('#39'Wait...'#39 +
        ', MainForm.UniPanel2);'#13#10'  ajaxRequest(sender, '#39'panel_click'#39');'#13#10'}')
    OnAjaxEvent = UniPanel1AjaxEvent
  end
  object UniPanel2: TUniPanel
    Left = 160
    Top = 8
    Width = 321
    Height = 193
    Hint = ''
    Caption = 'Mouse over here!'
    Color = clSilver
    TabOrder = 2
    ClientEvents.ExtEvents.Strings = (
      
        'Onmouseover=function Onmouseover(sender)'#13#10'{'#13#10'  sender.showMask('#39 +
        'Wait...'#39', MainForm.UniPanel1);'#13#10'}'
      
        'Onmouseout=function Onmouseout(sender)'#13#10'{'#13#10'  sender.hideMask();'#13 +
        #10'}')
  end
end
