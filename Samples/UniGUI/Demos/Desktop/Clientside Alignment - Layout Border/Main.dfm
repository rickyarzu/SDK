object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 579
  ClientWidth = 911
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'fit'
  LayoutConfig.BodyPadding = '15'
  PixelsPerInch = 96
  TextHeight = 13
  object UniContainerPanel1: TUniContainerPanel
    Left = 24
    Top = 8
    Width = 729
    Height = 457
    Hint = ''
    ParentColor = False
    TabOrder = 0
    Layout = 'border'
    object UniPanel1: TUniPanel
      Left = 22
      Top = 16
      Width = 256
      Height = 128
      Hint = ''
      TabOrder = 1
      TitleVisible = True
      Title = 'UniPanel1'
      Caption = 'Region: West; Split: True'
      Collapsible = True
      LayoutConfig.Split = True
      LayoutConfig.Region = 'west'
    end
    object UniPanel2: TUniPanel
      Left = 200
      Top = 88
      Width = 256
      Height = 128
      Hint = ''
      TabOrder = 2
      TitleVisible = True
      Title = 'UniPanel2'
      Caption = 'Region: Center; Split: False'
      LayoutConfig.Region = 'center'
    end
    object UniPanel3: TUniPanel
      Left = 416
      Top = 190
      Width = 256
      Height = 128
      Hint = ''
      TabOrder = 3
      TitleVisible = True
      Title = 'UniPanel3'
      Caption = 'Region: South; Split: True'
      LayoutConfig.Split = True
      LayoutConfig.Region = 'south'
    end
  end
end
