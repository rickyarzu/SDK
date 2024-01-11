object UniChartsVariousCharts: TUniChartsVariousCharts
  Left = 0
  Top = 0
  Width = 1036
  Height = 697
  OnCreate = UniFrameCreate
  Layout = 'fit'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel4: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1036
    Height = 697
    Hint = ''
    ParentColor = False
    Color = clWhite
    Align = alClient
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    TabOrder = 0
    Layout = 'border'
    object UniSimplePanel2: TUniSimplePanel
      Left = 35
      Top = 53
      Width = 670
      Height = 554
      Hint = ''
      CreateOrder = 1
      ParentColor = False
      Color = clWhite
      Border = True
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      TabOrder = 1
      Layout = 'accordion'
      LayoutConfig.Region = 'center'
      object UniChart1: TUniChart
        Left = 34
        Top = 11
        Width = 555
        Height = 166
        Hint = ''
        CreateOrder = 1
        Title.Text.Strings = (
          'Line Chart')
        Legend.Font.Color = clBlack
        Legend.Font.Name = 'Arial'
        LayoutConfig.Flex = 1
        LayoutConfig.BodyPadding = '10'
        LayoutConfig.Width = '100%'
        object Series1: TUniLineSeries
          Colors.Strings = (
            '#0000FF'
            '#00FF00'
            '#FF0000'
            '#00FFFF'
            '#FFFF00'
            '#FF00FF')
          Title = 'Trend-1'
        end
        object Series4: TUniLineSeries
          Colors.Strings = (
            '#0000FF'
            '#00FF00'
            '#FF0000'
            '#00FFFF'
            '#FFFF00'
            '#FF00FF')
          Title = 'Trend-2'
        end
        object Series5: TUniLineSeries
          Colors.Strings = (
            '#0000FF'
            '#00FF00'
            '#FF0000'
            '#00FFFF'
            '#FFFF00'
            '#FF00FF')
          Title = 'Trend-3'
        end
      end
      object UniChart2: TUniChart
        Left = 34
        Top = 183
        Width = 555
        Height = 173
        Hint = ''
        CreateOrder = 2
        Title.Text.Strings = (
          'Pie Chart')
        Legend.Font.Color = clBlack
        Legend.Font.Name = 'Arial'
        LayoutConfig.Flex = 1
        LayoutConfig.BodyPadding = '10'
        LayoutConfig.Width = '100%'
        object Series2: TUniPieSeries
          Colors.Strings = (
            '#0000FF'
            '#00FF00'
            '#FF0000'
            '#00FFFF'
            '#FFFF00'
            '#FF00FF')
          SeriesLabel.Display = 'outside'
          SeriesLabel.CalloutLine.Visible = True
          SeriesLabel.Font.Color = clGray
          SeriesLabel.Font.Height = -13
          SeriesLabel.Font.Style = [fsBold, fsItalic]
        end
      end
      object UniChart3: TUniChart
        Left = 34
        Top = 362
        Width = 555
        Height = 175
        Hint = ''
        CreateOrder = 2
        Title.Text.Strings = (
          'Bar Chart')
        Legend.Font.Color = clBlack
        Legend.Font.Name = 'Arial'
        LayoutConfig.Flex = 1
        LayoutConfig.BodyPadding = '10'
        LayoutConfig.Width = '100%'
        object Series3: TUniBarSeries
          Colors.Strings = (
            '#0000FF'
            '#00FF00'
            '#FF0000'
            '#00FFFF'
            '#FFFF00'
            '#FF00FF')
          Title = 'Series3'
        end
        object Series6: TUniBarSeries
          Colors.Strings = (
            '#0000FF'
            '#00FF00'
            '#FF0000'
            '#00FFFF'
            '#FFFF00'
            '#FF00FF')
          Title = 'Series6'
        end
      end
    end
    object UniSimplePanel3: TUniSimplePanel
      Left = 773
      Top = 53
      Width = 188
      Height = 609
      Hint = ''
      CreateOrder = 2
      ParentColor = False
      Color = clWhite
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      TabOrder = 2
      Layout = 'border'
      LayoutConfig.Region = 'east'
      object UniStringGrid1: TUniStringGrid
        Left = 19
        Top = 80
        Width = 155
        Height = 298
        Hint = ''
        CreateOrder = 2
        FixedCols = 0
        FixedRows = 0
        RowCount = 20
        ColCount = 2
        DefaultRowHeight = 18
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        Columns = <>
        HeaderTitle = 'Chart Data'
        LayoutConfig.Region = 'center'
        ForceFit = True
        TabOrder = 2
        ParentFont = False
      end
      object UniButton1: TUniButton
        Left = 0
        Top = 584
        Width = 188
        Height = 25
        Hint = ''
        CreateOrder = 3
        Caption = 'Apply'
        Align = alBottom
        ParentFont = False
        TabOrder = 1
        LayoutConfig.Region = 'south'
        OnClick = UniButton1Click
      end
    end
  end
end
