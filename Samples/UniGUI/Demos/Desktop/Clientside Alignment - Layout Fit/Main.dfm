object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 375
  ClientWidth = 865
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'hbox'
  LayoutConfig.BodyPadding = '20'
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanelA: TUniPanel
    Left = 8
    Top = 8
    Width = 408
    Height = 208
    Hint = ''
    TabOrder = 0
    TitleVisible = True
    Title = 'Padding Panel'
    Caption = ''
    Layout = 'fit'
    LayoutConfig.Flex = 1
    LayoutConfig.BodyPadding = '15'
    LayoutConfig.Height = '100%'
    object UniPanel1: TUniPanel
      Left = 62
      Top = 38
      Width = 256
      Height = 128
      Hint = ''
      TabOrder = 1
      TitleVisible = True
      Title = 'Inner Panel'
      Caption = 'This is the inner panel content'
    end
  end
  object UniPanelB: TUniPanel
    Left = 432
    Top = 8
    Width = 408
    Height = 208
    Hint = ''
    TabOrder = 1
    TitleVisible = True
    Title = 'Non-Padding Panel'
    Caption = ''
    Layout = 'fit'
    LayoutConfig.Flex = 1
    LayoutConfig.Height = '100%'
    object UniPanel2: TUniPanel
      Left = 62
      Top = 38
      Width = 256
      Height = 128
      Hint = ''
      TabOrder = 1
      TitleVisible = True
      Title = 'Inner Panel'
      Caption = 'This is the inner panel content without padding'
    end
  end
end
