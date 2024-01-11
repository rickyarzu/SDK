object UniChartsAreaChart: TUniChartsAreaChart
  Left = 0
  Top = 0
  Width = 810
  Height = 592
  OnCreate = UniFrameCreate
  Layout = 'fit'
  LayoutConfig.BodyPadding = '50'
  ParentAlignmentControl = False
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 810
    Height = 592
    Hint = ''
    ParentColor = False
    Align = alClient
    ParentAlignmentControl = False
    TabOrder = 0
    Layout = 'anchor'
    DesignSize = (
      810
      592)
    object UniChart1: TUniChart
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 804
      Height = 552
      Hint = ''
      Axes.AxisA.Title = 'Label A'
      Axes.AxisB.Title = 'Label B'
      Title.Text.Strings = (
        'Area Chart')
      Legend.Font.Color = clBlack
      Legend.Font.Name = 'Arial'
      LayoutConfig.BodyPadding = '10'
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      object Series1: TUniAreaSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Area1'
        Brush.Opacity = 0.899999976158142100
      end
      object Series2: TUniAreaSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Area2'
        Brush.Opacity = 0.899999976158142100
      end
      object Series3: TUniAreaSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Area3'
        Brush.Opacity = 0.899999976158142100
      end
    end
    object UniButton1: TUniButton
      Left = 3
      Top = 561
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
      Top = 561
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
