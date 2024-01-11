object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 505
  ClientWidth = 842
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'fit'
  DesignSize = (
    842
    505)
  PixelsPerInch = 96
  TextHeight = 13
  object UniContainerPanel1: TUniContainerPanel
    Left = 16
    Top = 8
    Width = 818
    Height = 497
    Hint = ''
    ParentColor = False
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Anchors = []
    TabOrder = 0
    Layout = 'table'
    LayoutAttribs.Columns = 3
    object UniPanel1: TUniPanel
      Left = 0
      Top = 0
      Width = 256
      Height = 128
      Hint = ''
      TabOrder = 1
      Caption = 'RowSpan = 2'
      LayoutConfig.Width = '100%'
      LayoutConfig.RowSpan = 2
    end
    object UniPanel2: TUniPanel
      Left = 3
      Top = 146
      Width = 254
      Height = 126
      Hint = ''
      TabOrder = 2
      Caption = 'ColSpan = 2'
      LayoutConfig.Width = '100%'
      LayoutConfig.ColSpan = 2
    end
    object UniPanel3: TUniPanel
      Left = 349
      Top = 0
      Width = 256
      Height = 128
      Hint = ''
      TabOrder = 3
      Caption = 'No ColSpan or RowSpan'
      LayoutConfig.Width = '100%'
    end
    object UniPanel4: TUniPanel
      Left = 349
      Top = 168
      Width = 256
      Height = 128
      Hint = ''
      TabOrder = 4
      Caption = 'No ColSpan or RowSpan'
      LayoutConfig.Width = '100%'
    end
  end
end
