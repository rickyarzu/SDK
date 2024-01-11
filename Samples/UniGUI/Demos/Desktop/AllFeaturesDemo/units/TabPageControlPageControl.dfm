object UniTabPageControlPageControl: TUniTabPageControlPageControl
  Left = 0
  Top = 0
  Width = 587
  Height = 375
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    587
    375)
  object UniPageControl1: TUniPageControl
    Left = 20
    Top = 14
    Width = 550
    Height = 345
    Hint = ''
    ActivePage = UniTabSheet3
    Anchors = []
    TabOrder = 0
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'UniTabSheet1'
      object UniEdit1: TUniEdit
        Left = 168
        Top = 40
        Width = 121
        Hint = ''
        Text = 'UniEdit1'
        TabOrder = 0
      end
      object UniLabel1: TUniLabel
        Left = 168
        Top = 96
        Width = 46
        Height = 13
        Hint = ''
        Caption = 'UniLabel1'
        TabOrder = 1
      end
      object UniMemo1: TUniMemo
        Left = 168
        Top = 152
        Width = 185
        Height = 89
        Hint = ''
        Lines.Strings = (
          'UniMemo1')
        TabOrder = 2
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Closable = True
      OnClose = UniTabSheet2Close
      Caption = 'UniTabSheet2'
      object UniCheckBox1: TUniCheckBox
        Left = 104
        Top = 45
        Width = 97
        Height = 17
        Hint = ''
        Caption = 'UniCheckBox1'
        TabOrder = 0
      end
      object UniRadioGroup1: TUniRadioGroup
        Left = 104
        Top = 96
        Width = 185
        Height = 105
        Hint = ''
        Items.Strings = (
          'Radio1'
          'Radio2'
          'Radio3'
          'Radio4')
        Caption = 'UniRadioGroup1'
        TabOrder = 1
        Columns = 1
      end
    end
    object UniTabSheet3: TUniTabSheet
      Hint = ''
      Caption = 'UniTabSheet3'
      object UniStringGrid1: TUniStringGrid
        Left = 80
        Top = 27
        Width = 377
        Height = 230
        Hint = ''
        Options = [goVertLine, goHorzLine]
        Columns = <>
        HeaderTitle = 'StringGrid in TabSheet3'
        TabOrder = 0
      end
    end
    object UniTabSheet4: TUniTabSheet
      Hint = ''
      Closable = True
      OnClose = UniTabSheet4Close
      Caption = 'UniTabSheet4'
      object UniListBox1: TUniListBox
        Left = 48
        Top = 27
        Width = 153
        Height = 230
        Hint = ''
        TabOrder = 0
      end
      object UniCalendar1: TUniCalendar
        Left = 272
        Top = 40
        Width = 232
        Height = 160
        Hint = ''
        Date = 42034.000000000000000000
        FirstDayOfWeek = dowMonday
        TabStop = False
        TabOrder = 1
      end
    end
    object UniTabSheet5: TUniTabSheet
      Hint = ''
      Closable = True
      OnClose = UniTabSheet5Close
      Caption = 'UniTabSheet5'
      object UniHTMLMemo1: TUniHTMLMemo
        Left = 81
        Top = 27
        Width = 392
        Height = 230
        Hint = ''
        Lines.Strings = (
          'UniHTMLMemo1')
        Color = clWindow
        TabOrder = 0
      end
    end
  end
end
