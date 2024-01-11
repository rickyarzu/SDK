object UniChartsGaugeChart: TUniChartsGaugeChart
  Left = 0
  Top = 0
  Width = 810
  Height = 476
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 810
    Height = 476
    Hint = ''
    ParentColor = False
    Align = alClient
    ParentAlignmentControl = False
    TabOrder = 0
    Layout = 'anchor'
    DesignSize = (
      810
      476)
    object UniChart1: TUniChart
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 804
      Height = 439
      Hint = ''
      Axes.AxisA.Title = 'Gauge Label'
      Title.Text.Strings = (
        'Gauge Chart')
      LayoutConfig.BodyPadding = '10'
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      object Series1: TUniGaugeSeries
        Title = 'Gauge1'
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
      end
    end
    object UniButton1: TUniButton
      Left = 3
      Top = 448
      Width = 89
      Height = 25
      Hint = ''
      Caption = 'Change Values'
      Anchors = [akLeft, akBottom]
      TabOrder = 2
      OnClick = UniButton1Click
    end
  end
end
