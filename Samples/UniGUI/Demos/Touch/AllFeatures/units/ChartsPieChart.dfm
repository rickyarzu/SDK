object UniChartsPieChart: TUniChartsPieChart
  Left = 0
  Top = 0
  Width = 338
  Height = 522
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 338
    Height = 522
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimChart1: TUnimChart
      Left = 0
      Top = 0
      Width = 338
      Height = 475
      Hint = ''
      Legend.Alignment = uaTop
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Axes.AxisA.Title = 'Label Pie'
      object UnimPieSeries1: TUnimPieSeries
        Title = 'UnimPieSeries1'
        Colors.Strings = (
          '#660000'
          '#660033'
          '#660066'
          '#660099'
          '#6600CC'
          '#6600FF')
      end
    end
    object UnimButton1: TUnimButton
      Left = 0
      Top = 475
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
