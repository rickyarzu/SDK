object UniChartsHybridChart: TUniChartsHybridChart
  Left = 0
  Top = 0
  Width = 320
  Height = 470
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 470
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimChart1: TUnimChart
      Left = 0
      Top = 0
      Width = 320
      Height = 423
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object UnimBarSeries1: TUnimBarSeries
        Title = 'Oil Price'
        Brush.Color = clMoneyGreen
        Brush.Opacity = 0.500000000000000000
      end
      object UnimLineSeries1: TUnimLineSeries
        Title = 'Inflation'
        Pen.Color = clRed
        Pen.Width = 3
      end
    end
    object UnimButton1: TUnimButton
      Left = 0
      Top = 423
      Width = 320
      Height = 47
      Hint = ''
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Change Values'
      OnClick = UnimButton1Click
    end
  end
end
