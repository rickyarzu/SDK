object UniChartsTwoCharts: TUniChartsTwoCharts
  Left = 0
  Top = 0
  Width = 402
  Height = 514
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 402
    Height = 514
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimChart1: TUnimChart
      Left = 0
      Top = 0
      Width = 402
      Height = 194
      Hint = ''
      Legend.Visible = False
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object UnimLineSeries1: TUnimLineSeries
        Title = 'UnimLineSeries1'
      end
      object UnimLineSeries2: TUnimLineSeries
        Title = 'UnimLineSeries2'
        Pen.Color = clGreen
      end
    end
    object UnimChart2: TUnimChart
      Left = 0
      Top = 194
      Width = 402
      Height = 273
      Hint = ''
      Legend.Visible = False
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      object UnimPieSeries1: TUnimPieSeries
        Title = 'UnimPieSeries1'
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
      end
    end
    object UnimButton1: TUnimButton
      Left = 0
      Top = 467
      Width = 402
      Height = 47
      Hint = ''
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Change Values'
      OnClick = UnimButton1Click
    end
  end
end
