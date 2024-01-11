object UniChartsPieChartDefaultColor: TUniChartsPieChartDefaultColor
  Left = 0
  Top = 0
  Width = 320
  Height = 440
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 440
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimChart1: TUnimChart
      Left = 0
      Top = 0
      Width = 320
      Height = 393
      Hint = ''
      Legend.Alignment = uaTop
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
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
      Top = 393
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
