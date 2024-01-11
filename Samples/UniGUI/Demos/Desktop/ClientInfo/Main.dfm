object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 309
  ClientWidth = 470
  Caption = 'MainForm'
  Position = poDesktopCenter
  OldCreateOrder = False
  OnActivate = UniFormActivate
  BorderIcons = [biSystemMenu, biMinimize]
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 48
    Top = 56
    Width = 138
    Height = 23
    Hint = ''
    Caption = 'Browser Type:'
    ParentFont = False
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 0
  end
  object UniLabel2: TUniLabel
    Left = 48
    Top = 104
    Width = 164
    Height = 23
    Hint = ''
    Caption = 'Browser Version:'
    ParentFont = False
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 1
  end
  object UniLabel3: TUniLabel
    Left = 48
    Top = 152
    Width = 34
    Height = 23
    Hint = ''
    Caption = 'OS:'
    ParentFont = False
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 2
  end
  object UniLabel4: TUniLabel
    Left = 240
    Top = 104
    Width = 8
    Height = 23
    Hint = ''
    Caption = '-'
    ParentFont = False
    Font.Color = clNavy
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 3
  end
  object UniLabel5: TUniLabel
    Left = 240
    Top = 152
    Width = 8
    Height = 23
    Hint = ''
    Caption = '-'
    ParentFont = False
    Font.Color = clNavy
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 4
  end
  object UniLabel6: TUniLabel
    Left = 240
    Top = 56
    Width = 8
    Height = 23
    Hint = ''
    Caption = '-'
    ParentFont = False
    Font.Color = clNavy
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 5
  end
  object UniLabel7: TUniLabel
    Left = 240
    Top = 208
    Width = 8
    Height = 23
    Hint = ''
    Caption = '-'
    ParentFont = False
    Font.Color = clNavy
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 6
  end
  object UniLabel8: TUniLabel
    Left = 48
    Top = 208
    Width = 28
    Height = 23
    Hint = ''
    Caption = 'IP:'
    ParentFont = False
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 7
  end
end
