object UniChartsBarChart: TUniChartsBarChart
  Left = 0
  Top = 0
  Width = 379
  Height = 532
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 379
    Height = 532
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimChart1: TUnimChart
      Left = 0
      Top = 0
      Width = 379
      Height = 485
      Hint = ''
      Legend.Alignment = uaTop
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Axes.AxisA.Title = 'Label A'
      Axes.AxisB.Title = 'Label B'
      object UnimBarSeries1: TUnimBarSeries
        Title = 'Tree Population'
        Brush.Color = clRed
      end
      object UnimBarSeries2: TUnimBarSeries
        Title = 'Human Population'
        Brush.Color = clOlive
      end
    end
    object UnimButton1: TUnimButton
      Left = 0
      Top = 485
      Width = 379
      Height = 47
      Hint = ''
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Change Values'
      OnClick = UnimButton1Click
    end
  end
end
