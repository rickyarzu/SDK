object UniChartsLineChart: TUniChartsLineChart
  Left = 0
  Top = 0
  Width = 870
  Height = 545
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 870
    Height = 545
    Hint = ''
    ParentColor = False
    Align = alClient
    ParentAlignmentControl = False
    TabOrder = 0
    Layout = 'anchor'
    DesignSize = (
      870
      545)
    object UniChart1: TUniChart
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 864
      Height = 505
      Hint = ''
      Axes.AxisA.Title = 'Label A'
      Axes.AxisB.Title = 'Label B'
      Title.Text.Strings = (
        'Line Chart')
      LayoutConfig.BodyPadding = '10'
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      object Series1: TUniLineSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Line1'
      end
      object Series2: TUniLineSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Line2'
      end
      object Series3: TUniLineSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Line3'
      end
    end
    object UniButton1: TUniButton
      Left = 3
      Top = 517
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
      Top = 517
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
