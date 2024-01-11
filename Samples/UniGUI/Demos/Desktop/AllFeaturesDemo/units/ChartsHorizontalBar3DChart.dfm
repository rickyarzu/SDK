object UniChartsHorizontalBar3DChart: TUniChartsHorizontalBar3DChart
  Left = 0
  Top = 0
  Width = 850
  Height = 476
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 850
    Height = 476
    Hint = ''
    ParentColor = False
    Align = alClient
    ParentAlignmentControl = False
    TabOrder = 0
    Layout = 'anchor'
    ExplicitHeight = 465
    DesignSize = (
      850
      476)
    object UniChart1: TUniChart
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 844
      Height = 439
      Hint = ''
      Axes.AxisA.Title = 'Label A'
      Axes.AxisA.Grid.Normal.Enabled = True
      Axes.AxisA.Grid.Even.Enabled = True
      Axes.AxisB.Title = 'Label B'
      Axes.AxisB.Grid.Normal.Enabled = True
      Axes.AxisB.Grid.Even.Enabled = True
      Title.Text.Strings = (
        'Horizontal Bar Chart')
      LayoutConfig.BodyPadding = '10'
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      ExplicitHeight = 428
      object Series1: TUniHorizBar3DSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Horizontal Bar1'
        Brush.MaxBarWidth = 50
      end
      object Series2: TUniHorizBar3DSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Horizontal Bar2'
      end
      object Series3: TUniHorizBar3DSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        Title = 'Horizontal Bar3'
      end
    end
    object UniButton1: TUniButton
      Left = 3
      Top = 448
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Change Values'
      Anchors = [akLeft, akBottom]
      TabOrder = 2
      OnClick = UniButton1Click
      ExplicitTop = 437
    end
    object UniButton2: TUniButton
      Left = 109
      Top = 448
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Clear'
      Anchors = [akLeft, akBottom]
      TabOrder = 3
      OnClick = UniButton2Click
      ExplicitTop = 437
    end
  end
end
