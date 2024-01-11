object UniChartsPieChart: TUniChartsPieChart
  Left = 0
  Top = 0
  Width = 1051
  Height = 624
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1051
    Height = 624
    Hint = ''
    ParentColor = False
    Align = alClient
    ParentAlignmentControl = False
    TabOrder = 0
    Layout = 'anchor'
    DesignSize = (
      1051
      624)
    object UniChart1: TUniChart
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1045
      Height = 587
      Hint = ''
      Axes.AxisA.Title = 'Pie Label'
      Title.Text.Strings = (
        'Pie Chart')
      LayoutConfig.BodyPadding = '10'
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      object Series1: TUniPieSeries
        Colors.Strings = (
          '#0000FF'
          '#00FF00'
          '#FF0000'
          '#00FFFF'
          '#FFFF00'
          '#FF00FF')
        SeriesLabel.Display = 'outside'
        SeriesLabel.CalloutLine.Visible = True
        SeriesLabel.Font.Height = -12
        SeriesLabel.Font.Style = [fsBold, fsItalic]
      end
    end
    object UniButton1: TUniButton
      Left = 3
      Top = 596
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
      Top = 596
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
