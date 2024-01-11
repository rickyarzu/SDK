object UniChartsHorizontalBarChart: TUniChartsHorizontalBarChart
  Left = 0
  Top = 0
  Width = 366
  Height = 504
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 366
    Height = 504
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimChart1: TUnimChart
      Left = 0
      Top = 0
      Width = 366
      Height = 457
      Hint = ''
      Legend.Alignment = uaTop
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Axes.AxisA.Title = 'Label A'
      Axes.AxisB.Title = 'Label B'
      object UnimHorizBarSeries1: TUnimHorizBarSeries
        Title = 'Last Year'
        Brush.Color = clAqua
      end
      object UnimHorizBarSeries2: TUnimHorizBarSeries
        Title = 'This Year'
        Brush.Color = clNavy
      end
    end
    object UnimButton1: TUnimButton
      Left = 0
      Top = 457
      Width = 366
      Height = 47
      Hint = ''
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Change Values'
      OnClick = UnimButton1Click
    end
  end
end
