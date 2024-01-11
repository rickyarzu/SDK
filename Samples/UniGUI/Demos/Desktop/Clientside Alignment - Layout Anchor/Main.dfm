object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 482
  ClientWidth = 831
  Caption = 'MainForm'
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
    Width = 721
    Height = 441
    Hint = ''
    ParentColor = False
    TabOrder = 0
    Layout = 'anchor'
    LayoutConfig.BodyPadding = '10'
    object UniPanel1: TUniPanel
      Left = 0
      Top = 40
      Width = 256
      Height = 100
      Hint = ''
      CreateOrder = 1
      TabOrder = 1
      TitleVisible = True
      Title = 'UniPanel1'
      Caption = '50% Width '
      LayoutConfig.Anchor = '50%'
      LayoutConfig.Margin = '0 0 10 0'
    end
    object UniPanel3: TUniPanel
      Left = 136
      Top = 126
      Width = 256
      Height = 100
      Hint = ''
      CreateOrder = 2
      TabOrder = 3
      TitleVisible = True
      Title = 'UniPanel2'
      Caption = 'Offset -100 Width'
      LayoutConfig.Anchor = '-100'
      LayoutConfig.Margin = '0 0 10 0'
    end
    object UniPanel2: TUniPanel
      Left = 265
      Top = 209
      Width = 256
      Height = 128
      Hint = ''
      CreateOrder = 3
      TabOrder = 2
      TitleVisible = True
      Title = 'UniPanel3'
      Caption = 'Offset -20 Width , -250 Height'
      LayoutConfig.Anchor = '-20 -250'
    end
  end
end
