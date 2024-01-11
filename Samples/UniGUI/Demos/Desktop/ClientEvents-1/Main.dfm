object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 393
  ClientWidth = 699
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ClientEvents.ExtEvents.Strings = (
    
      'form.mousemove=function form.Onmousemove(sender, x, y)'#13#10'{'#13#10'  Mai' +
      'nForm.UniEdit1.setValue(x+'#39' : '#39'+y);'#13#10'}')
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 256
    Top = 144
    Width = 104
    Height = 25
    Hint = ''
    Caption = 'UniLabel1'
    ParentFont = False
    Font.Height = -21
    Font.Style = [fsBold]
    ClientEvents.ExtEvents.Strings = (
      
        'Onmouseover=function Onmouseover(sender)'#13#10'{'#13#10'  sender.setText('#39'M' +
        'ouse Over'#39');'#13#10'}'
      
        'Onmouseout=function Onmouseout(sender)'#13#10'{'#13#10'  sender.setText('#39'Mou' +
        'se Out'#39');'#13#10'}')
    TabOrder = 0
  end
  object UniEdit1: TUniEdit
    Left = 272
    Top = 8
    Width = 121
    Hint = ''
    Text = 'UniEdit1'
    TabOrder = 1
  end
  object UniPanel1: TUniPanel
    Left = 24
    Top = 200
    Width = 129
    Height = 113
    Cursor = crCross
    Hint = ''
    Caption = 'UniPanel1'
    TabOrder = 2
    ClientEvents.ExtEvents.Strings = (
      
        'Onmousemove=function Onmousemove(sender, x, y)'#13#10'{'#13#10'  MainForm.Un' +
        'iLabel1.setPosition(x, y);'#13#10'}')
  end
  object UniButton1: TUniButton
    Left = 504
    Top = 312
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'UniButton1'
    TabOrder = 3
    ClientEvents.ExtEvents.Strings = (
      
        'OnMouseover=function OnMouseover(sender, e)'#13#10'{'#13#10'   sender.setTex' +
        't('#39'Over'#39');'#13#10'}'
      
        'OnMouseout=function OnMouseout(sender, e)'#13#10'{'#13#10'   sender.setText(' +
        #39'Out'#39');'#13#10'}')
  end
  object UniButton2: TUniButton
    Left = 504
    Top = 64
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'UniButton2'
    TabOrder = 4
    ClientEvents.ExtEvents.Strings = (
      
        'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'  MainForm.UniLabel1.set' +
        'Text('#39'Click!'#39');'#13#10'}')
  end
end
