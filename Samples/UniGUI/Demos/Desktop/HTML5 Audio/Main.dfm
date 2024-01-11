object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 625
  ClientWidth = 641
  Color = clBtnFace
  OldCreateOrder = False
  OnCreate = UniFormCreate
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniHTMLFrame1: TUniHTMLFrame
    Left = 8
    Top = 8
    Width = 105
    Height = 25
    Visible = False
    HTML.Strings = (
      '<script>  '
      '  var audio2 = document.createElement('#39'audio'#39');'
      '  audio2.setAttribute('#39'src'#39', '#39'files/tada.wav'#39');  '
      '</script>')
    AutoScroll = False
  end
  object UniButton1: TUniButton
    Left = 8
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Play (Client)'
    TabOrder = 1
    ClientEvents.ExtEvents.Strings = (
      
        'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'  audio2.load();'#13#10'  audi' +
        'o2.play();'#13#10'}')
  end
  object UniButton2: TUniButton
    Left = 89
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Play (Server)'
    TabOrder = 2
    OnClick = UniButton2Click
  end
  object UniHTMLFrame2: TUniHTMLFrame
    Left = 8
    Top = 212
    Width = 97
    Height = 27
    Visible = False
    HTML.Strings = (
      '<audio id="player2" src="files/tada.ogg"></audio>')
    AutoScroll = False
  end
  object UniButton3: TUniButton
    Left = 8
    Top = 382
    Width = 75
    Height = 25
    Caption = 'Play (Client)'
    TabOrder = 4
    ClientEvents.ExtEvents.Strings = (
      
        'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'  var ael=document.getEl' +
        'ementById("player2");'#13#10'  ael.load();'#13#10'  ael.play();'#13#10'}')
  end
  object UniButton4: TUniButton
    Left = 89
    Top = 382
    Width = 75
    Height = 25
    Caption = 'Play (Server)'
    TabOrder = 5
    OnClick = UniButton4Click
  end
  object UniSyntaxEdit1: TUniSyntaxEdit
    Left = 8
    Top = 39
    Width = 630
    Height = 131
    Language = 'HTML'
    ReadOnly = True
    Font.Height = -13
    Font.Name = 'Courier New'
  end
  object UniSyntaxEdit2: TUniSyntaxEdit
    Left = 8
    Top = 245
    Width = 630
    Height = 131
    Language = 'HTML'
    ReadOnly = True
    Font.Height = -13
    Font.Name = 'Courier New'
  end
  object UniButton5: TUniButton
    Left = 94
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Play (Server)'
    TabOrder = 8
    OnClick = UniButton5Click
  end
  object UniButton6: TUniButton
    Left = 13
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Play (Client)'
    TabOrder = 9
    ClientEvents.ExtEvents.Strings = (
      
        'OnClick=function OnClick(sender, e)'#13#10'{'#13#10'  var ael=document.getEl' +
        'ementById("player3");'#13#10'  ael.load();'#13#10'  ael.play();'#13#10'}')
  end
  object UniSyntaxEdit3: TUniSyntaxEdit
    Left = 8
    Top = 447
    Width = 630
    Height = 131
    Language = 'HTML'
    ReadOnly = True
    Font.Height = -13
    Font.Name = 'Courier New'
  end
  object UniHTMLFrame3: TUniHTMLFrame
    Left = 13
    Top = 416
    Width = 105
    Height = 25
    Visible = False
    HTML.Strings = (
      '<audio id="player3" src="files/tada.mp3"></audio>')
    AutoScroll = False
  end
end
