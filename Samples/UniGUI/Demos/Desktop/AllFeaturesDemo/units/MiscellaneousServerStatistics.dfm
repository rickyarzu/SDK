object UniMiscellaneousServerStatistics: TUniMiscellaneousServerStatistics
  Left = 0
  Top = 0
  Width = 700
  Height = 508
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    700
    508)
  object UniPageControl1: TUniPageControl
    Left = 98
    Top = 110
    Width = 489
    Height = 241
    Hint = ''
    ActivePage = UniTabSheet1
    Anchors = []
    TabOrder = 0
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Status'
      object UniGroupBox1: TUniGroupBox
        Left = 0
        Top = 0
        Width = 481
        Height = 213
        Hint = ''
        Caption = 'Server Statistics'
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        ExplicitWidth = 347
        ExplicitHeight = 143
        object UniStringGrid1: TUniStringGrid
          Left = 2
          Top = 15
          Width = 477
          Height = 196
          Hint = ''
          FixedCols = 0
          FixedRows = 0
          RowCount = 8
          ColCount = 4
          DefaultColWidth = 100
          DefaultRowHeight = 18
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          Columns = <>
          OnDrawCell = UniStringGrid1DrawCell
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Resources'
      object UniGroupBox2: TUniGroupBox
        Left = 0
        Top = 0
        Width = 481
        Height = 213
        Hint = ''
        Caption = 'System Resources'
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        ExplicitWidth = 185
        ExplicitHeight = 163
        object UniStringGrid2: TUniStringGrid
          Left = 2
          Top = 15
          Width = 477
          Height = 196
          Hint = ''
          FixedCols = 0
          FixedRows = 0
          RowCount = 8
          ColCount = 4
          DefaultColWidth = 100
          DefaultRowHeight = 18
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect]
          Columns = <>
          OnDrawCell = UniStringGrid2DrawCell
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
        end
      end
    end
  end
  object StatTimer: TUniTimer
    OnTimer = StatTimerTimer
    Interval = 5000
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      '   '
      '}')
    Left = 304
    Top = 216
  end
end
