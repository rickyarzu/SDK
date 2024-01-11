object UniChartsMultiDataChart: TUniChartsMultiDataChart
  Left = 0
  Top = 0
  Width = 865
  Height = 554
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 865
    Height = 554
    Hint = ''
    ParentColor = False
    Align = alClient
    ParentAlignmentControl = False
    TabOrder = 0
    Layout = 'anchor'
    object UniChart1: TUniChart
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 859
      Height = 305
      Hint = ''
      Axes.AxisA.Grid.Normal.Enabled = True
      Axes.AxisB.Grid.Normal.Enabled = True
      Title.Text.Strings = (
        'CandleStick Chart')
      LayoutConfig.BodyPadding = '10'
      Align = alTop
      TitleAlign = taCenter
      InsetPadding = '20'
      InnerPadding = '0 20 0 20'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 865
      object UniCandleStickSeries1: TUniCandleStickSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
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
      AlignWithMargins = True
      Left = 3
      Top = 314
      Width = 859
      Height = 237
      Hint = ''
      Axes.AxisA.Min = 10.000000000000000000
      Axes.AxisA.Max = 100.000000000000000000
      Axes.AxisA.MajorTickSteps = 8.000000000000000000
      Axes.AxisA.Grid.Normal.Enabled = True
      Axes.AxisA.Grid.Normal.Pen.Color = 14869218
      Axes.AxisA.Grid.Normal.Pen.Opacity = 0.500000000000000000
      Axes.AxisA.Grid.Normal.Pen.Default = False
      Axes.AxisA.Grid.Even.Enabled = True
      Axes.AxisA.Grid.Even.Pen.Color = clSilver
      Axes.AxisA.Grid.Even.Pen.Opacity = 0.500000000000000000
      Axes.AxisA.Grid.Even.Pen.Default = False
      Title.Text.Strings = (
        'BoxPlot Chart')
      LayoutConfig.BodyPadding = '10'
      Align = alClient
      TitleAlign = taCenter
      ExplicitLeft = 0
      ExplicitTop = 305
      ExplicitWidth = 865
      ExplicitHeight = 249
      object UniBoxPlotSeries1: TUniBoxPlotSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Nobel Prize Winners'
        Pen.Color = clGreen
        Pen.Width = 3
        Pen.Default = False
      end
    end
  end
end
