object UniChartsPie3DChart: TUniChartsPie3DChart
  Left = 0
  Top = 0
  Width = 369
  Height = 493
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 369
    Height = 493
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimChart1: TUnimChart
      Left = 0
      Top = 0
      Width = 369
      Height = 446
      Hint = ''
      Legend.Visible = False
      Legend.Alignment = uaBottom
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object UnimPie3DSeries1: TUnimPie3DSeries
        Title = 'SmartPhoneOSSerie'
        Colors.Strings = (
          '#00FF00'
          '#E0E0E0'
          '#003366'
          '#CCFF33'
          '#990000'
          '')
      end
    end
    object UnimButton1: TUnimButton
      Left = 0
      Top = 446
      Width = 369
      Height = 47
      Hint = ''
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Change Values'
      OnClick = UnimButton1Click
    end
  end
end
