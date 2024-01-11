object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 552
  ClientWidth = 676
  Caption = 'MainForm'
  WindowState = wsMaximized
  Position = poDesktopCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  DesignSize = (
    676
    552)
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 556
    Top = 8
    Width = 61
    Height = 13
    Hint = ''
    Caption = 'Chart Data'
    Anchors = [akTop, akRight]
    ParentFont = False
    Font.Color = clNavy
    Font.Style = [fsBold]
    Transparent = False
    TabOrder = 0
  end
  object UniChart1: TUniChart
    Left = 8
    Top = 8
    Width = 499
    Height = 263
    Hint = ''
    Axes.AxisA.Grid.Normal.Enabled = True
    Axes.AxisA.Grid.Even.Enabled = True
    Axes.AxisB.Grid.Normal.Enabled = True
    Axes.AxisB.Grid.Even.Enabled = True
    Title.Text.Strings = (
      'Line Chart')
    Legend.Font.Color = clBlack
    Legend.Font.Name = 'Arial'
    LayoutConfig.BodyPadding = '10'
    Anchors = [akLeft, akTop, akRight]
    object Series1: TUniHorizBar3DSeries
      Colors.Strings = (
        '#0000FF'
        '#00FF00'
        '#FF0000'
        '#00FFFF'
        '#FFFF00'
        '#FF00FF')
      Title = 'Trend-1'
    end
    object Series2: TUniHorizBar3DSeries
      Colors.Strings = (
        '#0000FF'
        '#00FF00'
        '#FF0000'
        '#00FFFF'
        '#FFFF00'
        '#FF00FF')
      Title = 'Trend-2'
    end
    object Series3: TUniHorizBar3DSeries
      Colors.Strings = (
        '#0000FF'
        '#00FF00'
        '#FF0000'
        '#00FFFF'
        '#FFFF00'
        '#FF00FF')
      Title = 'Trend-3'
    end
  end
  object UniStringGrid1: TUniStringGrid
    Left = 513
    Top = 26
    Width = 155
    Height = 487
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    RowCount = 30
    ColCount = 2
    DefaultRowHeight = 18
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    Columns = <>
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 2
    ParentFont = False
    ExplicitHeight = 475
  end
  object UniButton1: TUniButton
    Left = 593
    Top = 519
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Apply'
    Anchors = [akRight, akBottom]
    ParentFont = False
    TabOrder = 3
    OnClick = UniButton1Click
    ExplicitTop = 507
  end
  object UniChart2: TUniChart
    Left = 8
    Top = 281
    Width = 499
    Height = 232
    Hint = ''
    Axes.AxisA.Grid.Normal.Enabled = True
    Axes.AxisA.Grid.Even.Enabled = True
    Axes.AxisB.Grid.Normal.Enabled = True
    Axes.AxisB.Grid.Even.Enabled = True
    Title.Text.Strings = (
      'Bar Chart')
    Legend.Font.Color = clBlack
    Legend.Font.Name = 'Arial'
    LayoutConfig.BodyPadding = '10'
    Anchors = [akLeft, akTop, akRight, akBottom]
    object Series4: TUniBar3DSeries
      Colors.Strings = (
        '#0000FF'
        '#00FF00'
        '#FF0000'
        '#00FFFF'
        '#FFFF00'
        '#FF00FF')
      Title = 'Series3'
      SeriesLabel.Enabled = True
      SeriesLabel.Display = 'insideEnd'
      SeriesLabel.Font.Color = clSilver
      SeriesLabel.Font.Style = [fsBold]
    end
    object Series5: TUniBar3DSeries
      Colors.Strings = (
        '#0000FF'
        '#00FF00'
        '#FF0000'
        '#00FFFF'
        '#FFFF00'
        '#FF00FF')
      Title = 'Series6'
      SeriesLabel.Enabled = True
      SeriesLabel.Display = 'insideEnd'
      SeriesLabel.Font.Color = clMaroon
      SeriesLabel.Font.Style = [fsBold]
    end
  end
end
