object UniChartsBar3DChart: TUniChartsBar3DChart
  Left = 0
  Top = 0
  Width = 975
  Height = 608
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 975
    Height = 608
    Hint = ''
    ParentColor = False
    Align = alClient
    ParentAlignmentControl = False
    TabOrder = 0
    Layout = 'anchor'
    ExplicitHeight = 606
    DesignSize = (
      975
      608)
    object UniChart1: TUniChart
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 969
      Height = 571
      Hint = ''
      Axes.AxisA.Title = 'Label A'
      Axes.AxisA.Grid.Normal.Enabled = True
      Axes.AxisA.Grid.Even.Enabled = True
      Axes.AxisB.Title = 'Label B'
      Axes.AxisB.Grid.Normal.Enabled = True
      Axes.AxisB.Grid.Even.Enabled = True
      Title.Text.Strings = (
        'Bar Chart')
      LayoutConfig.BodyPadding = '10'
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      ExplicitHeight = 569
      object Series1: TUniBar3DSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Bar1'
        Brush.MaxBarWidth = 40
      end
      object Series2: TUniBar3DSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Bar2'
      end
      object Series3: TUniBar3DSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Bar3'
      end
    end
    object UniButton1: TUniButton
      Left = 3
      Top = 580
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Change Values'
      Anchors = [akLeft, akBottom]
      TabOrder = 2
      OnClick = UniButton1Click
      ExplicitTop = 578
    end
    object UniButton2: TUniButton
      Left = 109
      Top = 580
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Clear'
      Anchors = [akLeft, akBottom]
      TabOrder = 3
      OnClick = UniButton2Click
      ExplicitTop = 578
    end
  end
end
