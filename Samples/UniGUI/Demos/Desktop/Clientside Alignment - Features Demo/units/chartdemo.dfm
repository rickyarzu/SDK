object UniChartDemo: TUniChartDemo
  Left = 0
  Top = 0
  Width = 734
  Height = 512
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  ParentRTL = False
  object UniSimplePanel1: TUniSimplePanel
    Left = 0
    Top = 0
    Width = 734
    Height = 512
    Hint = ''
    ParentColor = False
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Layout = 'fit'
    object UniSimplePanel2: TUniSimplePanel
      Left = 0
      Top = 0
      Width = 536
      Height = 512
      Hint = ''
      ParentColor = False
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      Layout = 'accordion'
      LayoutConfig.Height = '100%'
      DesignSize = (
        536
        512)
      object UniChart1: TUniChart
        Left = -19
        Top = 3
        Width = 555
        Height = 166
        Hint = ''
        Title.Text.Strings = (
          'Line Chart')
        Legend.Font.Color = clBlack
        Legend.Font.Name = 'Arial'
        LayoutConfig.Flex = 1
        LayoutConfig.Height = '100%'
        LayoutConfig.Width = '100%'
        Anchors = [akLeft, akTop, akRight]
        object Series1: TUniLineSeries
          Title = 'Trend-1'
        end
        object Series4: TUniLineSeries
          Title = 'Trend-2'
        end
        object Series5: TUniLineSeries
          Title = 'Trend-3'
        end
      end
      object UniChart2: TUniChart
        Left = -19
        Top = 330
        Width = 555
        Height = 173
        Hint = ''
        Title.Text.Strings = (
          'Pie Chart')
        Legend.Font.Color = clBlack
        Legend.Font.Name = 'Arial'
        LayoutConfig.Flex = 2
        LayoutConfig.Width = '100%'
        Anchors = [akLeft, akTop, akRight, akBottom]
        object Series2: TUniPieSeries
          Colors.Strings = (
            '#0000FF'
            '#00FF00'
            '#FF0000'
            '#00FFFF'
            '#FFFF00'
            '#FF00FF')
        end
      end
      object UniChart3: TUniChart
        Left = -19
        Top = 344
        Width = 555
        Height = 149
        Hint = ''
        Title.Text.Strings = (
          'Bar Chart')
        Legend.Font.Color = clBlack
        Legend.Font.Name = 'Arial'
        LayoutConfig.Flex = 1
        LayoutConfig.Height = '100%'
        LayoutConfig.Width = '100%'
        Anchors = [akLeft, akTop, akRight]
        object Series3: TUniBarSeries
          Title = 'Series3'
        end
        object Series6: TUniBarSeries
          Title = 'Series6'
        end
      end
    end
    object UniSimplePanel3: TUniSimplePanel
      Left = 536
      Top = 0
      Width = 198
      Height = 512
      Hint = ''
      ParentColor = False
      Align = alRight
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 2
      Layout = 'fit'
      object UniStringGrid1: TUniStringGrid
        Left = 0
        Top = 13
        Width = 198
        Height = 474
        Hint = ''
        FixedCols = 0
        FixedRows = 0
        RowCount = 30
        ColCount = 2
        DefaultRowHeight = 18
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        ParentFont = False
        ExplicitLeft = 27
        ExplicitTop = 34
        ExplicitWidth = 155
        ExplicitHeight = 446
      end
      object UniButton1: TUniButton
        Left = 0
        Top = 487
        Width = 198
        Height = 25
        Hint = ''
        Caption = 'Apply'
        Anchors = [akLeft, akRight, akBottom]
        Align = alBottom
        ParentFont = False
        TabOrder = 2
        OnClick = UniButton1Click
        ExplicitLeft = 91
        ExplicitTop = 484
        ExplicitWidth = 75
      end
      object UniLabel1: TUniLabel
        Left = 0
        Top = 0
        Width = 61
        Height = 13
        Hint = ''
        Caption = 'Chart Data'
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        ParentFont = False
        Font.Color = clNavy
        Font.Style = [fsBold]
        Transparent = False
        TabOrder = 3
        ExplicitLeft = 113
        ExplicitTop = 15
      end
    end
  end
end
