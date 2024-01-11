object UniChartsRadarChart: TUniChartsRadarChart
  Left = 0
  Top = 0
  Width = 338
  Height = 430
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 338
    Height = 430
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimChart1: TUnimChart
      Left = 0
      Top = 0
      Width = 338
      Height = 383
      Hint = ''
      Legend.Alignment = uaBottom
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object UnimRadarSeries1: TUnimRadarSeries
        Title = 'Internet Sales'
        Brush.Color = clSilver
        Brush.Opacity = 0.500000000000000000
        Pen.Color = clGreen
        Pen.Width = 2
      end
      object UnimRadarSeries2: TUnimRadarSeries
        Title = 'Direct Sales'
        Brush.Color = 16744448
        Brush.Opacity = 0.500000000000000000
        Pen.Color = clRed
        Pen.Width = 2
      end
    end
    object UnimButton1: TUnimButton
      Left = 0
      Top = 383
      Width = 338
      Height = 47
      Hint = ''
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Change Values'
      OnClick = UnimButton1Click
    end
  end
end
