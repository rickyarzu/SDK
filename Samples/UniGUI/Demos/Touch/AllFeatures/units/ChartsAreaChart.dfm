object UniChartsAreaChart: TUniChartsAreaChart
  Left = 0
  Top = 0
  Width = 347
  Height = 426
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 347
    Height = 426
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimChart1: TUnimChart
      Left = 0
      Top = 0
      Width = 347
      Height = 379
      Hint = ''
      Legend.Alignment = uaBottom
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Axes.AxisA.Title = 'AxisA Label'
      Axes.AxisB.Title = 'AxisB Label'
      object UnimAreaSeries1: TUnimAreaSeries
        Title = 'Watchers'
        Brush.Opacity = 0.500000000000000000
        Pen.Color = clBlue
      end
      object UnimAreaSeries2: TUnimAreaSeries
        Title = 'Readers'
        Brush.Color = clYellow
        Brush.Opacity = 0.500000000000000000
        Pen.Color = clYellow
      end
    end
    object UnimButton1: TUnimButton
      Left = 0
      Top = 379
      Width = 347
      Height = 47
      Hint = ''
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Change Values'
      OnClick = UnimButton1Click
    end
  end
end
