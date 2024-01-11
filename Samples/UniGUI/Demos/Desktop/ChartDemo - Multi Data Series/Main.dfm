object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 719
  ClientWidth = 1062
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniChart1: TUniChart
    Left = 0
    Top = 0
    Width = 1062
    Height = 369
    Hint = ''
    Axes.AxisA.Grid.Normal.Enabled = True
    Axes.AxisB.Grid.Normal.Enabled = True
    Title.Text.Strings = (
      'CandleStick Chart')
    Legend.Alignment = uaBottom
    LayoutConfig.BodyPadding = '10'
    Align = alTop
    TitleAlign = taCenter
    InsetPadding = '20'
    InnerPadding = '0 20 0 20'
    object UniCandleStickSeries1: TUniCandleStickSeries
      Title = 'UniCandleStickSeries1'
      DropStyle.Pen.Color = 2849773
      DropStyle.Pen.Width = 2
      DropStyle.Brush.Color = 2849773
      RaiseStyle.Pen.Color = 1284407
      RaiseStyle.Pen.Width = 2
      RaiseStyle.Brush.Color = 1284407
    end
  end
  object UniChart2: TUniChart
    Left = 0
    Top = 369
    Width = 1062
    Height = 350
    Hint = ''
    Axes.AxisA.Min = 10.000000000000000000
    Axes.AxisA.Max = 100.000000000000000000
    Axes.AxisA.MajorTickSteps = 8.000000000000000000
    Axes.AxisA.Grid.Normal.Enabled = True
    Axes.AxisA.Grid.Normal.Pen.Color = 16744576
    Axes.AxisA.Grid.Normal.Pen.Opacity = 0.500000000000000000
    Axes.AxisA.Grid.Normal.Pen.Default = False
    Axes.AxisA.Grid.Even.Enabled = True
    Axes.AxisA.Grid.Even.Pen.Color = clRed
    Axes.AxisA.Grid.Even.Pen.Opacity = 0.500000000000000000
    Axes.AxisA.Grid.Even.Pen.Default = False
    Title.Text.Strings = (
      'BoxPlot Chart')
    Legend.Alignment = uaBottom
    LayoutConfig.BodyPadding = '10'
    Align = alClient
    TitleAlign = taCenter
    object UniBoxPlotSeries1: TUniBoxPlotSeries
      Title = 'Nobel Prize Winners'
      Pen.Color = clGreen
      Pen.Width = 3
      Pen.Default = False
    end
  end
end
