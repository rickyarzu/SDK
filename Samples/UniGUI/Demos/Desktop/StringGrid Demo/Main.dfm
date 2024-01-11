object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 572
  ClientWidth = 796
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniStringGrid1: TUniStringGrid
    Left = 0
    Top = 0
    Width = 796
    Height = 285
    Hint = ''
    FixedRows = 0
    RowCount = 21
    ColCount = 13
    Options = [goVertLine, goHorzLine, goColSizing, goEditing]
    LockFixedCols = True
    ShowColumnTitles = True
    Columns = <
      item
        Title.Caption = 'Year \ Month'
        Title.Color = clBlack
        Title.Font.Color = clMaroon
        Title.Font.Style = [fsBold]
        Width = 100
      end
      item
        Title.Caption = 'January'
        Title.Color = clBlack
        Color = 13816530
        ReadOnly = True
      end
      item
        Title.Caption = 'February'
        Title.Color = clBlack
      end
      item
        Title.Caption = 'March'
        Title.Color = clBlack
      end
      item
        Title.Caption = 'April'
        Title.Color = clBlack
      end
      item
        Title.Caption = 'May'
        Title.Color = clBlack
      end
      item
        Title.Caption = 'June'
        Title.Color = clBlack
      end
      item
        Title.Caption = 'July'
        Title.Color = clBlack
      end
      item
        Title.Caption = 'Agust'
        Title.Color = clBlack
      end
      item
        Title.Caption = 'September'
        Title.Color = clBlack
      end
      item
        Title.Caption = 'October'
        Title.Color = clBlack
      end
      item
        Title.Caption = 'November'
        Title.Color = clBlack
      end
      item
        Title.Caption = 'December'
        Title.Color = clBlack
      end>
    OnDrawCell = UniStringGrid1DrawCell
    Align = alClient
    TabOrder = 0
  end
  object UniSplitter1: TUniSplitter
    Left = 0
    Top = 285
    Width = 796
    Height = 6
    Cursor = crVSplit
    Hint = ''
    Align = alBottom
    ParentColor = False
    Color = clBtnFace
  end
  object UniMemo1: TUniMemo
    Left = 0
    Top = 291
    Width = 796
    Height = 221
    Hint = ''
    Align = alBottom
    TabOrder = 1
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 512
    Width = 796
    Height = 60
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      796
      60)
    object UniButton1: TUniButton
      Left = 40
      Top = 16
      Width = 145
      Height = 25
      Hint = ''
      Caption = 'Show in UniMemo'
      TabOrder = 1
      LayoutConfig.BodyPadding = '5'
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 628
      Top = 16
      Width = 145
      Height = 25
      Hint = ''
      Caption = 'Change Values'
      Anchors = [akTop, akRight]
      TabOrder = 2
      ScreenMask.Enabled = True
      OnClick = UniButton2Click
    end
  end
end
