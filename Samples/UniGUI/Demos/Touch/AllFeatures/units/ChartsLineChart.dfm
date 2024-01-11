object UniChartsLineChart: TUniChartsLineChart
  Left = 0
  Top = 0
  Width = 366
  Height = 515
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 366
    Height = 515
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimChart1: TUnimChart
      Left = 0
      Top = 0
      Width = 366
      Height = 468
      Hint = ''
      Legend.Alignment = uaBottom
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Axes.AxisA.Title = 'Label A'
      Axes.AxisB.Title = 'Label B'
      object UnimLineSeries1: TUnimLineSeries
        Title = 'Unemployment!'
        Pen.Color = clGreen
        Pen.Width = 2
      end
      object UnimLineSeries2: TUnimLineSeries
        Title = 'Inflation'
        Pen.Color = clBlue
        Pen.Width = 3
      end
    end
    object UnimButton1: TUnimButton
      Left = 0
      Top = 468
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
