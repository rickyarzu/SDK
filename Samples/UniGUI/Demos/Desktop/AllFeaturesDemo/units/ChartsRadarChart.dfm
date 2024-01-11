object UniChartsRadarChart: TUniChartsRadarChart
  Left = 0
  Top = 0
  Width = 911
  Height = 537
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 911
    Height = 537
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    Layout = 'anchor'
    DesignSize = (
      911
      537)
    object UniChart1: TUniChart
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 905
      Height = 500
      Hint = ''
      Axes.AxisA.Grid.Normal.Enabled = True
      Axes.AxisA.Grid.Normal.Pen.Color = 16744576
      Axes.AxisA.Grid.Normal.Pen.Opacity = 0.500000000000000000
      Axes.AxisA.Grid.Normal.Pen.Default = False
      Title.Text.Strings = (
        'Radar Chart')
      LayoutConfig.BodyPadding = '10'
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      object Series1: TUniRadarSeries
        Title = 'Radar1'
        MarkerConfig.Pen.Color = clYellow
        MarkerConfig.Pen.Default = False
        MarkerConfig.Shape = 'diamond'
      end
      object Series2: TUniRadarSeries
        Title = 'Radar2'
      end
      object Series3: TUniRadarSeries
        Title = 'Radar3'
      end
    end
    object UniButton1: TUniButton
      Left = 3
      Top = 509
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Change Values'
      Anchors = [akLeft, akBottom]
      TabOrder = 2
      OnClick = UniButton1Click
    end
  end
end
