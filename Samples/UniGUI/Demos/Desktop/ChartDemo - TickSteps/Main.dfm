object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 531
  ClientWidth = 938
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  DesignSize = (
    938
    531)
  PixelsPerInch = 96
  TextHeight = 13
  object UniChart1: TUniChart
    Left = 8
    Top = 8
    Width = 921
    Height = 481
    Hint = ''
    Axes.AxisA.Title = 'MajorTick = 10, MinorTick = 2'
    Axes.AxisA.Min = 1.000000000000000000
    Axes.AxisA.Max = 100.000000000000000000
    Axes.AxisA.MinorTickSteps = 2.000000000000000000
    Axes.AxisA.MajorTickSteps = 10.000000000000000000
    Axes.AxisB.Title = 'MajorTick = 5, MinorTick = 2'
    Axes.AxisB.Min = 1.000000000000000000
    Axes.AxisB.Max = 50.000000000000000000
    Axes.AxisB.MinorTickSteps = 2.000000000000000000
    Axes.AxisB.MajorTickSteps = 5.000000000000000000
    Axes.LabelAxisType = axNumeric
    LayoutConfig.BodyPadding = '10'
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderOutline = False
    object UniBarSeries1: TUniBarSeries
      Title = 'UniBarSeries1'
      Brush.Color = clSilver
      Brush.Opacity = 0.500000000000000000
      Brush.Default = False
    end
    object UniLineSeries1: TUniLineSeries
      Title = 'UniLineSeries1'
      Pen.Color = 10485760
      Pen.Default = False
      MarkerConfig.Brush.Color = clGray
      MarkerConfig.Brush.Default = False
      MarkerConfig.Shape = 'plus'
      MarkerConfig.Size = 3
      MarkerConfig.Height = 2
    end
  end
end
