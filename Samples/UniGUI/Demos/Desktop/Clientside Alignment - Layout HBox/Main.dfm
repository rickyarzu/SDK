object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 299
  ClientWidth = 635
  Caption = 'HBox Layout'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'fit'
  LayoutConfig.BodyPadding = '15'
  PixelsPerInch = 96
  TextHeight = 13
  object UniContainerPanel1: TUniContainerPanel
    Left = 48
    Top = 8
    Width = 521
    Height = 273
    Hint = ''
    ParentColor = False
    TabOrder = 0
    Layout = 'hbox'
    object UniPanel1: TUniPanel
      Left = 3
      Top = 16
      Width = 256
      Height = 128
      Hint = ''
      TabOrder = 1
      TitleVisible = True
      Title = 'Inner Panel One'
      Caption = 'Flex: 2, Height: 100%'
      LayoutConfig.Flex = 2
      LayoutConfig.Height = '100%'
    end
    object UniPanel2: TUniPanel
      Left = 24
      Top = 128
      Width = 256
      Height = 128
      Hint = ''
      TabOrder = 2
      TitleVisible = True
      Title = 'Inner Panel Two'
      Caption = 'Flex: 1, Height: 60%'
      LayoutConfig.Flex = 1
      LayoutConfig.Height = '60%'
    end
    object UniPanel3: TUniPanel
      Left = 262
      Top = 32
      Width = 256
      Height = 128
      Hint = ''
      TabOrder = 3
      TitleVisible = True
      Title = 'Inner Panel Three'
      Caption = 'Flex: 1, Height: 35%'
      LayoutConfig.Flex = 1
      LayoutConfig.Height = '35%'
    end
  end
end
