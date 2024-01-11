object StandardFrame6: TStandardFrame6
  Left = 0
  Top = 0
  Width = 597
  Height = 404
  TabOrder = 0
  object scLabel1: TscLabel
    Left = 10
    Top = 20
    Width = 71
    Height = 13
    TabOrder = 0
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
  object scComboBox1: TscComboBox
    Left = 88
    Top = 16
    Width = 102
    Height = 21
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
    ItemHeight = 15
    TabOrder = 1
    Text = 'scstStyled'
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnClick = scComboBox1Click
  end
  object scCheckBox1: TscCheckBox
    Left = 205
    Top = 16
    Width = 100
    Height = 20
    TabOrder = 2
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
    GlowEffect.AlphaValue = 255
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
    Checked = False
    ShowFocusRect = True
  end
  object scLabel2: TscLabel
    Left = 10
    Top = 52
    Width = 60
    Height = 13
    TabOrder = 3
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    UseFontColorToStyleColor = False
    Caption = 'ButtonStyle:'
  end
  object scComboBox2: TscComboBox
    Left = 72
    Top = 49
    Width = 118
    Height = 21
    Style = csOwnerDrawFixed
    ItemIndex = 0
    Items.Strings = (
      'scebsArrow'
      'scebsButton'
      'scebsModernArrow')
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ImageIndex = -1
    ItemHeight = 15
    TabOrder = 4
    Text = 'scebsArrow'
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnClick = scComboBox2Click
  end
  object scCheckBox2: TscCheckBox
    Left = 17
    Top = 347
    Width = 100
    Height = 20
    TabOrder = 5
    TabStop = True
    OnClick = scCheckBox2Click
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
    Caption = 'ShowLines'
    CanFocused = True
    Spacing = 1
    Layout = blGlyphLeft
    ImageIndex = -1
    GlowEffect.Enabled = False
    GlowEffect.Color = clHighlight
    GlowEffect.AlphaValue = 255
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
  object scCheckBox3: TscCheckBox
    Left = 17
    Top = 88
    Width = 156
    Height = 20
    TabOrder = 6
    TabStop = True
    OnClick = scCheckBox3Click
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
    Caption = 'Use custom button images'
    CanFocused = True
    Spacing = 1
    Layout = blGlyphLeft
    ImageIndex = -1
    GlowEffect.Enabled = False
    GlowEffect.Color = clHighlight
    GlowEffect.AlphaValue = 255
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
    Checked = False
    ShowFocusRect = True
  end
  object scLabel3: TscLabel
    Left = 411
    Top = 91
    Width = 50
    Height = 13
    TabOrder = 7
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    UseFontColorToStyleColor = False
    Caption = 'ViewStyle:'
  end
  object scComboBox3: TscComboBox
    Left = 470
    Top = 86
    Width = 94
    Height = 21
    Style = csOwnerDrawFixed
    ItemIndex = 0
    Items.Strings = (
      'vsIcon'
      'vsSmallIcon'
      'vsList'
      'vsReport')
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ImageIndex = -1
    ItemHeight = 15
    TabOrder = 8
    Text = 'vsIcon'
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnClick = scComboBox3Click
  end
  object scListView1: TscListView
    Left = 205
    Top = 120
    Width = 359
    Height = 185
    Columns = <
      item
        Caption = 'Column1'
        Width = 100
      end
      item
        Caption = 'Column2'
        Tag = 1
        Width = 70
      end
      item
        Caption = 'Column3'
        Tag = 2
      end>
    DoubleBuffered = True
    ExtendedColumnDraw = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.ItemData = {
      05E00200000D00000000000000FFFFFFFFFFFFFFFF02000000FFFFFFFF000000
      00054900740065006D0031000235003000A84F0218013100004F021801000000
      FFFFFFFFFFFFFFFF02000000FFFFFFFF00000000054900740065006D00320002
      3200350028140218013000385D021802000000FFFFFFFFFFFFFFFF02000000FF
      FFFFFF00000000054900740065006D0033000331003000300090320218013100
      7010021803000000FFFFFFFFFFFFFFFF02000000FFFFFFFF0000000005490074
      0065006D003400013000300B02180130003020021804000000FFFFFFFFFFFFFF
      FF02000000FFFFFFFF00000000054900740065006D0035000237003500682E02
      18013100A856021805000000FFFFFFFFFFFFFFFF02000000FFFFFFFF00000000
      054900740065006D0036000233003500D8580218013100E854021806000000FF
      FFFFFFFFFFFFFF02000000FFFFFFFF00000000054900740065006D0037000239
      003500001E02180130005816021807000000FFFFFFFFFFFFFFFF02000000FFFF
      FFFF00000000054900740065006D0038000238003500C81D0218013000505002
      1808000000FFFFFFFFFFFFFFFF02000000FFFFFFFF0000000005490074006500
      6D0039000232003700005D02180131000033021809000000FFFFFFFFFFFFFFFF
      02000000FFFFFFFF00000000054900740065006D0039000236003500F8500218
      013100181F02180A000000FFFFFFFFFFFFFFFF02000000FFFFFFFF0000000006
      4900740065006D00310030000232003800900F0218013100F82602180B000000
      FFFFFFFFFFFFFFFF02000000FFFFFFFF00000000064900740065006D00310031
      000232003900784D0218013100901D02180C000000FFFFFFFFFFFFFFFF020000
      00FFFFFFFF00000000064900740065006D003100320003310030003000301902
      18013000985A0218FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    LargeImages = MainForm.ImageList1
    ParentDoubleBuffered = False
    ParentFont = False
    SmallImages = MainForm.ImageList2
    TabOrder = 9
    SelectionStyle = scstStyled
    ShowFocusRect = False
    AlternateRow = False
    GridLines = False
    DefaultDraw = False
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
  end
  object scTreeView1: TscTreeView
    Left = 17
    Top = 120
    Width = 182
    Height = 185
    CheckBoxes = False
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    HideSelection = False
    Indent = 19
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 10
    Items.NodeData = {
      0309000000280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000000000001054900740065006D003100280000000000000000000000FFFFFF
      FFFFFFFFFF00000000000000000100000001054900740065006D0032002A0000
      000000000000000000FFFFFFFFFFFFFFFF000000000000000003000000010649
      00740065006D00320031002C0000000000000000000000FFFFFFFFFFFFFFFF00
      000000000000000000000001074900740065006D003200310031002C00000000
      00000000000000FFFFFFFFFFFFFFFF0000000000000000030000000107490074
      0065006D003200310032002E0000000000000000000000FFFFFFFFFFFFFFFF00
      000000000000000000000001084900740065006D0032003100320031002E0000
      000000000000000000FFFFFFFFFFFFFFFF000000000000000003000000010849
      00740065006D003200310032003200300000000000000000000000FFFFFFFFFF
      FFFFFF00000000000000000000000001094900740065006D0032003100320032
      003100300000000000000000000000FFFFFFFFFFFFFFFF000000000000000002
      00000001094900740065006D0032003100320032003200320000000000000000
      000000FFFFFFFFFFFFFFFF000000000000000000000000010A4900740065006D
      00320031003200320032003100320000000000000000000000FFFFFFFFFFFFFF
      FF000000000000000000000000010A4900740065006D00320031003200320032
      003200300000000000000000000000FFFFFFFFFFFFFFFF000000000000000000
      00000001094900740065006D00320031003200320033002E0000000000000000
      000000FFFFFFFFFFFFFFFF00000000000000000000000001084900740065006D
      0032003100320033002C0000000000000000000000FFFFFFFFFFFFFFFF000000
      00000000000000000001074900740065006D0032003100330028000000000000
      0000000000FFFFFFFFFFFFFFFF00000000000000000000000001054900740065
      006D003300280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000200000001054900740065006D0034002A0000000000000000000000FFFFFF
      FFFFFFFFFF00000000000000000000000001064900740065006D00340031002A
      0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000000001
      064900740065006D0034003200280000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001054900740065006D00350028000000000000
      0000000000FFFFFFFFFFFFFFFF00000000000000000000000001054900740065
      006D003600280000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000300000001054900740065006D0037002A0000000000000000000000FFFFFF
      FFFFFFFFFF00000000000000000000000001064900740065006D00370031002A
      0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000200000001
      064900740065006D00370032002C0000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001074900740065006D003700320031002C0000
      000000000000000000FFFFFFFFFFFFFFFF000000000000000001000000010749
      00740065006D003700320032002E0000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001084900740065006D0037003200320031002A
      0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000000000001
      064900740065006D0037003300280000000000000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001054900740065006D00380028000000000000
      0000000000FFFFFFFFFFFFFFFF00000000000000000000000001054900740065
      006D003900}
    ButtonCollapseImageIndex = 0
    ButtonExpandImageIndex = 1
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ButtonColor = clNone
    ButtonGlyphColor = clBtnFace
    ShowFocusRect = False
    DefaultDraw = False
    ButtonStyle = scebsArrow
  end
  object scCheckBox5: TscCheckBox
    Left = 317
    Top = 88
    Width = 79
    Height = 20
    TabOrder = 11
    TabStop = True
    OnClick = scCheckBox5Click
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
    Caption = 'Grid lines'
    CanFocused = True
    Spacing = 1
    Layout = blGlyphLeft
    ImageIndex = -1
    GlowEffect.Enabled = False
    GlowEffect.Color = clHighlight
    GlowEffect.AlphaValue = 255
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
    Checked = False
    ShowFocusRect = True
  end
  object scCheckBox6: TscCheckBox
    Left = 205
    Top = 51
    Width = 100
    Height = 20
    TabOrder = 12
    TabStop = True
    OnClick = scCheckBox6Click
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
    Caption = 'Alternate Row'
    CanFocused = True
    Spacing = 1
    Layout = blGlyphLeft
    ImageIndex = -1
    GlowEffect.Enabled = False
    GlowEffect.Color = clHighlight
    GlowEffect.AlphaValue = 255
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
    Checked = False
    ShowFocusRect = True
  end
  object scCheckBox7: TscCheckBox
    Left = 316
    Top = 51
    Width = 88
    Height = 20
    TabOrder = 13
    TabStop = True
    OnClick = scCheckBox7Click
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
    Caption = 'Row select'
    CanFocused = True
    Spacing = 1
    Layout = blGlyphLeft
    ImageIndex = -1
    GlowEffect.Enabled = False
    GlowEffect.Color = clHighlight
    GlowEffect.AlphaValue = 255
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
    Checked = False
    ShowFocusRect = True
  end
  object scCheckBox8: TscCheckBox
    Left = 316
    Top = 16
    Width = 115
    Height = 20
    TabOrder = 14
    TabStop = True
    OnClick = scCheckBox8Click
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
    Caption = 'Default draw'
    CanFocused = True
    Spacing = 1
    Layout = blGlyphLeft
    ImageIndex = -1
    GlowEffect.Enabled = False
    GlowEffect.Color = clHighlight
    GlowEffect.AlphaValue = 255
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
    Checked = False
    ShowFocusRect = True
  end
  object scCheckBox9: TscCheckBox
    Left = 206
    Top = 323
    Width = 104
    Height = 20
    TabOrder = 15
    TabStop = True
    OnClick = scCheckBox9Click
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
    Caption = 'Custom colors'
    CanFocused = True
    Spacing = 1
    Layout = blGlyphLeft
    ImageIndex = -1
    GlowEffect.Enabled = False
    GlowEffect.Color = clHighlight
    GlowEffect.AlphaValue = 255
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
    Checked = False
    ShowFocusRect = True
  end
  object scCheckBox4: TscCheckBox
    Left = 206
    Top = 88
    Width = 93
    Height = 20
    TabOrder = 16
    TabStop = True
    OnClick = scCheckBox4Click
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
    Caption = 'Checkboxes'
    CanFocused = True
    Spacing = 1
    Layout = blGlyphLeft
    ImageIndex = -1
    GlowEffect.Enabled = False
    GlowEffect.Color = clHighlight
    GlowEffect.AlphaValue = 255
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
    Checked = False
    ShowFocusRect = True
  end
  object scCheckBox10: TscCheckBox
    Left = 17
    Top = 315
    Width = 100
    Height = 20
    TabOrder = 17
    TabStop = True
    OnClick = scCheckBox10Click
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
    Caption = 'Check Hierarchy'
    CanFocused = True
    Spacing = 1
    Layout = blGlyphLeft
    ImageIndex = -1
    GlowEffect.Enabled = False
    GlowEffect.Color = clHighlight
    GlowEffect.AlphaValue = 255
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
  object scCheckBox11: TscCheckBox
    Left = 342
    Top = 323
    Width = 147
    Height = 20
    TabOrder = 18
    TabStop = True
    OnClick = scCheckBox11Click
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
    Caption = 'ExtendedColumnDraw'
    CanFocused = True
    Spacing = 1
    Layout = blGlyphLeft
    ImageIndex = -1
    GlowEffect.Enabled = False
    GlowEffect.Color = clHighlight
    GlowEffect.AlphaValue = 255
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
    Checked = False
    ShowFocusRect = True
  end
  object scLabel4: TscLabel
    Left = 342
    Top = 354
    Width = 197
    Height = 13
    TabOrder = 19
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    UseFontColorToStyleColor = False
    Caption = 'Set Column.Tag = 1 to draw progressbar'
  end
  object scLabel5: TscLabel
    Left = 342
    Top = 376
    Width = 184
    Height = 13
    TabOrder = 20
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    UseFontColorToStyleColor = False
    Caption = 'Set Column.Tag = 2 to draw checkbox'
  end
end
