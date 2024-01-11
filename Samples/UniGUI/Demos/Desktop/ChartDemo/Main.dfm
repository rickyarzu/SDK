object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 514
  ClientWidth = 676
  Caption = 'MainForm'
  WindowState = wsMaximized
  Position = poDesktopCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  DesignSize = (
    676
    514)
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
    Top = 3
    Width = 499
    Height = 166
    Hint = ''
    Title.Text.Strings = (
      'Line Chart')
    Legend.Font.Color = clBlack
    Legend.Font.Name = 'Arial'
    LayoutConfig.BodyPadding = '10'
    Anchors = [akLeft, akTop, akRight]
    object Series1: TUniLineSeries
      Title = 'Trend-1'
      MarkerConfig.Pen.Color = clYellow
      MarkerConfig.Pen.Default = False
      MarkerConfig.Brush.Color = clRed
      MarkerConfig.Brush.Default = False
      MarkerConfig.Shape = 'diamond'
    end
    object Series4: TUniLineSeries
      Title = 'Trend-2'
      MarkerConfig.Pen.Color = 4227327
      MarkerConfig.Pen.Default = False
      MarkerConfig.Brush.Color = clTeal
      MarkerConfig.Brush.Default = False
      MarkerConfig.Shape = 'cross'
    end
    object Series5: TUniLineSeries
      Title = 'Trend-3'
      MarkerConfig.Shape = 'arrow'
      MarkerConfig.Radius = 6
    end
  end
  object UniChart2: TUniChart
    Left = 8
    Top = 368
    Width = 499
    Height = 138
    Hint = ''
    Title.Text.Strings = (
      'Pie Chart')
    Legend.Font.Color = clBlack
    Legend.Font.Name = 'Arial'
    LayoutConfig.BodyPadding = '10'
    Anchors = [akLeft, akTop, akRight, akBottom]
    object Series2: TUniPieSeries
      Colors.Strings = (
        '#0000FF'
        '#00FF00'
        '#FF0000'
        '#00FFFF'
        '#FFFF00'
        '#FF00FF')
      SeriesLabel.Display = 'outside'
      SeriesLabel.CalloutLine.Visible = True
      SeriesLabel.Font.Color = clNavy
      SeriesLabel.Font.Height = -13
      SeriesLabel.Font.Style = [fsBold]
    end
  end
  object UniStringGrid1: TUniStringGrid
    Left = 513
    Top = 26
    Width = 155
    Height = 449
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
  end
  object UniButton1: TUniButton
    Left = 593
    Top = 481
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Apply'
    Anchors = [akRight, akBottom]
    ParentFont = False
    TabOrder = 3
    OnClick = UniButton1Click
  end
  object UniChart3: TUniChart
    Left = 8
    Top = 175
    Width = 499
    Height = 187
    Hint = ''
    Title.Text.Strings = (
      'Bar Chart')
    Legend.Font.Color = clBlack
    Legend.Font.Name = 'Arial'
    LayoutConfig.BodyPadding = '10'
    Anchors = [akLeft, akTop, akRight]
    object Series3: TUniBarSeries
      Title = 'Series3'
      SeriesLabel.Enabled = True
      SeriesLabel.Display = 'insideEnd'
      SeriesLabel.Font.Color = clSilver
      SeriesLabel.Font.Style = [fsBold]
    end
    object Series6: TUniBarSeries
      Title = 'Series6'
      SeriesLabel.Enabled = True
      SeriesLabel.Display = 'insideEnd'
      SeriesLabel.Font.Color = clMaroon
      SeriesLabel.Font.Style = [fsBold]
    end
  end
end
