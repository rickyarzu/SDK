object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'IP location demo'
  ClientHeight = 350
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 24
    Width = 234
    Height = 25
    Caption = 'Get location of machine'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 24
    Width = 233
    Height = 25
    Caption = 'Get location of IP address'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 304
    Top = 55
    Width = 233
    Height = 21
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 24
    Top = 104
    Width = 233
    Height = 225
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 304
    Top = 104
    Width = 233
    Height = 225
    TabOrder = 4
  end
  object Button3: TButton
    Left = 584
    Top = 24
    Width = 233
    Height = 25
    Caption = 'Get location of server'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Edit2: TEdit
    Left = 584
    Top = 55
    Width = 233
    Height = 21
    TabOrder = 6
    Text = 'www.google.com'
  end
  object Memo3: TMemo
    Left = 584
    Top = 104
    Width = 233
    Height = 225
    TabOrder = 7
  end
  object AdvIPLocation1: TAdvIPLocation
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    Left = 264
    Top = 64
  end
end
