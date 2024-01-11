object StandardFrame4: TStandardFrame4
  Left = 0
  Top = 0
  Width = 642
  Height = 466
  TabOrder = 0
  object scComboBoxEx1: TscComboBoxEx
    Left = 152
    Top = 59
    Width = 146
    Height = 22
    StyleKind = scscbPushButton
    SelectionStyle = scstStyled
    SelectionColor = clHighlight
    SelectionTextColor = clHighlightText
    DrawSelectionWithStyles = False
    ShowFocusRect = True
    ItemsEx = <
      item
        Caption = 'Item1'
        ImageIndex = 0
        SelectedImageIndex = 0
      end
      item
        Caption = 'Item2'
        ImageIndex = 1
        Indent = 1
        SelectedImageIndex = 1
      end
      item
        Caption = 'Item3'
        ImageIndex = 2
        Indent = 1
        SelectedImageIndex = 2
      end
      item
        Caption = 'Item4'
        ImageIndex = 3
        Indent = 2
        SelectedImageIndex = 3
      end
      item
        Caption = 'Item5'
        ImageIndex = 4
        Indent = 2
        SelectedImageIndex = 4
      end>
    Style = csExDropDownList
    TabOrder = 0
    Images = MainForm.ImageList2
  end
  object scComboBox1: TscComboBox
    Left = 11
    Top = 57
    Width = 134
    Height = 27
    Style = csOwnerDrawFixed
    ItemIndex = 0
    Items.Strings = (
      'Item1'
      'Item2'
      'Item3'
      'Item4'
      'Item5'
      'Item6'
      'Item7'
      'Item8'
      'Item9'
      'Item10')
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    Images = MainForm.ImageList2
    ImageIndex = -1
    ItemHeight = 21
    AutoComplete = False
    TabOrder = 1
    Text = 'Item1'
    StyleKind = scscbDefault
    ShowFocusRect = True
  end
  object scListBox1: TscListBox
    Left = 11
    Top = 128
    Width = 134
    Height = 114
    Items.Strings = (
      'Item1'
      'Item2'
      'Item3'
      'Item4'
      'Item5'
      'Item6'
      'Item7'
      'Item8'
      'Item9'
      'Item10')
    ItemIndex = 0
    Images = MainForm.ImageList2
    ImageIndex = -1
    WordBreak = False
    LineColor = clBtnFace
    ShowLines = False
    SelectionStyle = scstStyled
    ShowFocusRect = True
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ItemHeight = 21
    TabOrder = 2
  end
  object scCheckListBox1: TscCheckListBox
    Left = 151
    Top = 89
    Width = 146
    Height = 154
    ItemHeight = 21
    Items.Strings = (
      'Item1'
      'Item2'
      'Item3'
      'Item4'
      'Item5'
      'Item6'
      'Item7'
      'Item8'
      'Item9'
      'Item10')
    Style = lbOwnerDrawFixed
    TabOrder = 3
    ItemIndex = 0
    Images = MainForm.ImageList2
    ImageIndex = -1
    WordBreak = False
    LineColor = clBtnFace
    ShowLines = False
    SelectionStyle = scstStyled
    ShowFocusRect = True
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
  end
  object scListBox2: TscListBox
    Left = 11
    Top = 268
    Width = 225
    Height = 195
    Items.Strings = (
      
        'Title1@Item1 - Use TitleDivider property to select title from it' +
        'em text'
      
        'Title2@Use SelectionColor property to set your selection color i' +
        'n all controls!'
      'Title3@Item3'
      'Title4@Item4'
      'Title5@Item5'
      'Title6@Item6'
      'Title7@Item7'
      'Title8@Item8'
      'Title9@Item9'
      'Title10@Item10')
    ItemIndex = -1
    Images = MainForm.ImageList3
    ImageIndex = -1
    WordBreak = True
    TitleDivider = '@'
    LineColor = 12039936
    ShowLines = True
    SelectionStyle = scstColor
    ShowFocusRect = True
    SelectionColor = 33023
    SelectionTextColor = 16777181
    Color = 15989200
    ItemHeight = 80
    TabOrder = 4
    StyleElements = [seBorder]
  end
  object scCheckBox1: TscCheckBox
    Left = 311
    Top = 62
    Width = 100
    Height = 17
    TabOrder = 5
    TabStop = True
    OnClick = scCheckBox1Click
    CustomCheckedImageIndex = -1
    CustomCheckedImageHotIndex = -1
    CustomCheckedImagePressedIndex = -1
    CustomCheckedImageDisabledIndex = -1
    CustomUnCheckedImageIndex = -1
    CustomUnCheckedImageHotIndex = -1
    CustomUnCheckedImagePressedIndex = -1
    CustomUnCheckedImageDisabledIndex = -1
    CustomGrayedImageIndex = -1
    CustomGrayedImageHotIndex = -1
    CustomGrayedImagePressedIndex = -1
    CustomGrayedImageDisabledIndex = -1
    UseFontColorToStyleColor = False
    Animation = False
    Caption = 'ShowFocusRect'
    CanFocused = True
    Spacing = 1
    Layout = blGlyphLeft
    ImageIndex = -1
    GlowEffect.Enabled = False
    GlowEffect.Color = clHighlight
    GlowEffect.AlphaValue = 175
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    GlowEffect.HotColor = clNone
    GlowEffect.PressedColor = clNone
    GlowEffect.FocusedColor = clNone
    GlowEffect.PressedGlowSize = 7
    GlowEffect.PressedAlphaValue = 255
    GlowEffect.States = [scsHot, scsPressed, scsFocused]
    ImageGlow = True
    Checked = True
    State = cbChecked
    ShowFocusRect = True
  end
  object scLabel2: TscLabel
    Left = 355
    Top = 8
    Width = 262
    Height = 26
    TabOrder = 6
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    WordWrap = True
    UseFontColorToStyleColor = False
    Caption = 
      'You can  use OnGetDrawItemParams event to adjust item font and i' +
      'mage for each  item! '
  end
  object scLabel1: TscLabel
    Left = 11
    Top = 8
    Width = 302
    Height = 39
    TabOrder = 7
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    WordWrap = True
    UseFontColorToStyleColor = False
    Caption = 
      'TscListBox, TscComboBox, TscCheckListBox, TscComboBoxEx inherite' +
      'd from standard controls, but have additional features!'
  end
  object scLabel3: TscLabel
    Left = 459
    Top = 64
    Width = 71
    Height = 13
    TabOrder = 8
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    UseFontColorToStyleColor = False
    Caption = 'SelectionStyle:'
  end
  object scComboBox2: TscComboBox
    Left = 538
    Top = 61
    Width = 94
    Height = 23
    Style = csOwnerDrawFixed
    ItemIndex = 0
    Items.Strings = (
      'scstStyled'
      'scstColor')
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ImageIndex = -1
    ItemHeight = 17
    TabOrder = 9
    Text = 'scstStyled'
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnClick = scComboBox2Click
  end
  object scColorBox1: TscColorBox
    Left = 303
    Top = 90
    Width = 161
    Height = 22
    TabOrder = 10
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    StyleKind = scscbPushButton
    ShowFocusRect = True
  end
  object scFontListBox1: TscFontListBox
    Left = 470
    Top = 118
    Width = 162
    Height = 124
    ItemIndex = 0
    Sorted = True
    FontName = '@Malgun Gothic'
    LineColor = clBtnFace
    ShowLines = False
    SelectionStyle = scstStyled
    ShowFocusRect = True
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    TabOrder = 11
  end
  object scColorListBox1: TscColorListBox
    Left = 303
    Top = 118
    Width = 161
    Height = 125
    TabOrder = 12
    SelectionStyle = scstStyled
    ShowFocusRect = True
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
  end
  object scFontComboBox1: TscFontComboBox
    Left = 470
    Top = 90
    Width = 162
    Height = 22
    ItemIndex = 0
    Sorted = True
    FontName = '@Malgun Gothic'
    Options = [foTrueTypeOnly]
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    StyleKind = scscbDefault
    ShowFocusRect = True
    ItemHeight = 16
    TabOrder = 13
  end
  object scListBox3: TscListBox
    Left = 250
    Top = 268
    Width = 299
    Height = 147
    Items.Strings = (
      'item1'#9'item11 '#9'item12'
      'item2'#9'item21 '#9'item22'
      'item3'#9'item31 '#9'item32'
      'item4'#9'item41 '#9'item42'
      'item5'#9'item51 '#9'item52'
      'item6'#9'item61 '#9'item62'
      'item7'#9'item71 '#9'item72'
      'item8'#9'item81 '#9'item82'
      'item9'#9'item91 '#9'item92'
      'item10'#9'item101 '#9'item102'
      'item11'#9'item111 '#9'item112'
      'item12'#9'item121 '#9'item122'
      'item13'#9'item131 '#9'item132'
      'item14'#9'item141 '#9'item142'
      'item15'#9'item151 '#9'item152')
    ItemIndex = 3
    ImageIndex = -1
    WordBreak = False
    LineColor = clBtnFace
    ShowLines = False
    SelectionStyle = scstStyled
    ShowFocusRect = True
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    TabWidths.Strings = (
      '70'
      '200')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object scLabel4: TscLabel
    Left = 250
    Top = 249
    Width = 110
    Height = 13
    TabOrder = 15
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    UseFontColorToStyleColor = False
    Caption = 'Tabbed string support:'
  end
  object scLabel5: TscLabel
    Left = 13
    Top = 248
    Width = 71
    Height = 13
    TabOrder = 16
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    UseFontColorToStyleColor = False
    Caption = 'Custom colors:'
  end
  object scComboBox3: TscComboBox
    Left = 11
    Top = 90
    Width = 134
    Height = 27
    Style = csDropDownList
    ItemIndex = 0
    Items.Strings = (
      'Item1'
      'Item2'
      'Item3'
      'Item4'
      'Item5'
      'Item6'
      'Item7'
      'Item8'
      'Item9'
      'Item10')
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    Images = MainForm.ImageList2
    ImageIndex = -1
    ItemHeight = 21
    AutoComplete = False
    TabOrder = 17
    Text = 'Item1'
    StyleKind = scscbDefault
    ShowFocusRect = True
  end
end
