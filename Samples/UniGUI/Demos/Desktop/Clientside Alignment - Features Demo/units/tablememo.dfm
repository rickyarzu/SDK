object UniTableMemo: TUniTableMemo
  Left = 0
  Top = 0
  Width = 693
  Height = 552
  Layout = 'fit'
  LayoutConfig.BodyPadding = '50'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  AutoScroll = True
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 693
    Height = 552
    Hint = ''
    ParentColor = False
    Align = alClient
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Layout = 'table'
    LayoutAttribs.Padding = '10'
    LayoutAttribs.Columns = 3
    LayoutConfig.Margin = '20'
    ExplicitLeft = 225
    ExplicitWidth = 468
    object UniListBox1: TUniListBox
      Left = 0
      Top = 0
      Width = 225
      Height = 552
      Hint = ''
      CreateOrder = 1
      Items.Strings = (
        'Octupus'
        'Cat'
        'Crocodile')
      TabOrder = 6
      LayoutConfig.BodyPadding = '0'
      LayoutConfig.RowSpan = 3
      OnClick = UniListBox1Click
    end
    object UniMemo1: TUniMemo
      Left = 16
      Top = 16
      Width = 185
      Height = 200
      Hint = ''
      CreateOrder = 2
      Lines.Strings = (
        'Information')
      ParentFont = False
      Font.Height = -17
      TabOrder = 1
      LayoutConfig.Width = '100%'
      LayoutConfig.ColSpan = 2
    end
    object UniMemo2: TUniMemo
      Left = 88
      Top = 80
      Width = 185
      Height = 200
      Hint = ''
      CreateOrder = 3
      Lines.Strings = (
        'Fact #1')
      ParentFont = False
      Font.Height = -17
      TabOrder = 2
      LayoutConfig.Width = '100%'
    end
    object UniMemo3: TUniMemo
      Left = 192
      Top = 128
      Width = 185
      Height = 200
      Hint = ''
      CreateOrder = 4
      Lines.Strings = (
        'Fact #2')
      ParentFont = False
      Font.Height = -17
      TabOrder = 3
      LayoutConfig.Width = '100%'
    end
    object UniMemo4: TUniMemo
      Left = 279
      Top = 222
      Width = 185
      Height = 200
      Hint = ''
      CreateOrder = 5
      Lines.Strings = (
        'Fact #3')
      ParentFont = False
      Font.Height = -17
      TabOrder = 4
      LayoutConfig.Width = '100%'
    end
    object UniMemo5: TUniMemo
      Left = 360
      Top = 310
      Width = 185
      Height = 200
      Hint = ''
      CreateOrder = 6
      Lines.Strings = (
        'Fact #4')
      ParentFont = False
      Font.Height = -17
      TabOrder = 5
      LayoutConfig.Width = '100%'
    end
  end
end
