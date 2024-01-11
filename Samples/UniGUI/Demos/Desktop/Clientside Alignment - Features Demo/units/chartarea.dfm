object UniChartArea: TUniChartArea
  Left = 0
  Top = 0
  Width = 810
  Height = 363
  OnCreate = UniFrameCreate
  Layout = 'fit'
  LayoutConfig.BodyPadding = '50'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  DesignSize = (
    810
    363)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 0
    Width = 804
    Height = 361
    Hint = ''
    ParentColor = False
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Anchors = []
    TabOrder = 0
    Layout = 'anchor'
    LayoutConfig.BodyPadding = '50'
    DesignSize = (
      804
      361)
    object UniChart1: TUniChart
      Left = 11
      Top = 3
      Width = 790
      Height = 262
      Hint = ''
      Title.Text.Strings = (
        'Area Chart')
      Legend.Font.Color = clBlack
      Legend.Font.Name = 'Arial'
      LayoutConfig.BodyPadding = '10'
      LayoutConfig.Anchor = '0 -25'
      Anchors = []
      object Series1: TUniAreaSeries
        Title = 'Area1'
      end
      object Series2: TUniAreaSeries
        Title = 'Area2'
      end
      object Series3: TUniAreaSeries
        Title = 'Area3'
      end
    end
    object UniButton1: TUniButton
      Left = 336
      Top = 291
      Width = 89
      Height = 25
      Hint = ''
      Caption = 'Change Values'
      Anchors = []
      TabOrder = 2
      OnClick = UniButton1Click
    end
  end
end
