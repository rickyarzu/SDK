object UniChartsGaugeChart: TUniChartsGaugeChart
  Left = 0
  Top = 0
  Width = 320
  Height = 499
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 499
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimChart1: TUnimChart
      Left = 0
      Top = 0
      Width = 320
      Height = 452
      Hint = ''
      Legend.Alignment = uaBottom
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object UnimGaugeSeries1: TUnimGaugeSeries
        Donut = 1
        Title = 'Completed Part'
        Highlight.Enabled = False
        Colors.Strings = (
          '#000033'
          '#006699'
          '')
      end
    end
    object UnimButton1: TUnimButton
      Left = 0
      Top = 452
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
