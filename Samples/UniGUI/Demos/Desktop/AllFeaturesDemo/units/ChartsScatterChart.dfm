object UniChartsScatterChart: TUniChartsScatterChart
  Left = 0
  Top = 0
  Width = 865
  Height = 509
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 865
    Height = 509
    Hint = ''
    ParentColor = False
    Align = alClient
    ParentAlignmentControl = False
    TabOrder = 0
    Layout = 'anchor'
    DesignSize = (
      865
      509)
    object UniChart1: TUniChart
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 859
      Height = 472
      Hint = ''
      Axes.AxisA.Title = 'Label A'
      Axes.AxisA.Grid.Normal.Enabled = True
      Axes.AxisB.Title = 'Label B'
      Title.Text.Strings = (
        'Scatter Chart')
      LayoutConfig.BodyPadding = '10'
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      InnerPadding = '20'
      object Series1: TUniScatterSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Scatter1'
      end
      object Series2: TUniScatterSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Scatter2'
      end
      object Series3: TUniScatterSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Scatter3'
      end
    end
    object UniButton1: TUniButton
      Left = 3
      Top = 481
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Change Values'
      Anchors = [akLeft, akBottom]
      TabOrder = 2
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 109
      Top = 481
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Clear'
      Anchors = [akLeft, akBottom]
      TabOrder = 3
      OnClick = UniButton2Click
    end
  end
end
