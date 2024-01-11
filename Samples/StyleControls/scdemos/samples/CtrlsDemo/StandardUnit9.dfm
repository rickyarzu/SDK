object StandardFrame9: TStandardFrame9
  Left = 0
  Top = 0
  Width = 594
  Height = 546
  TabOrder = 0
  object scStringGrid1: TscStringGrid
    Left = 15
    Top = 56
    Width = 480
    Height = 177
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    SelectionStyle = scstStyled
    TransparentEditor = True
    Wallpapers = MainForm.scImageCollection1
    WallpaperIndex = 7
    BackgroundStyle = scgbColor
    ShowFocusRect = True
    LinesColor = clNone
    CustomBackgroundImageIndex = 2
    CustomOverContentImageIndex = -1
    ColCount = 30
    RowCount = 30
    Options = [scgoFixedVertLine, scgoFixedHorzLine, scgoVertLine, scgoHorzLine, scgoRangeSelect, scgoDrawFocusSelected, scgoRowSizing, scgoColSizing, scgoRowMoving, scgoColMoving, scgoEditing, scgoTabs, scgoFixedColClick, scgoFixedRowClick, scgoFixedHotTrack]
  end
  object scCheckBox2: TscCheckBox
    Left = 296
    Top = 19
    Width = 129
    Height = 31
    TabOrder = 1
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
    Caption = 'Transparent editor'
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
  object scLabel1: TscLabel
    Left = 16
    Top = 3
    Width = 86
    Height = 13
    TabOrder = 2
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    UseFontColorToStyleColor = False
    Caption = 'Background style:'
  end
  object scComboBox1: TscComboBox
    Left = 15
    Top = 24
    Width = 145
    Height = 22
    Style = csDropDownList
    ItemIndex = 0
    Items.Strings = (
      'scgbColor'
      'scbgbFormBackground'
      'scgbTransparent')
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ImageIndex = -1
    ItemHeight = 16
    TabOrder = 3
    Text = 'scgbColor'
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnClick = scComboBox1Click
  end
  object scDrawGrid1: TscDrawGrid
    Left = 15
    Top = 248
    Width = 480
    Height = 185
    TabOrder = 4
    SelectionStyle = scstStyled
    TransparentEditor = False
    Wallpapers = MainForm.scImageCollection1
    WallpaperIndex = 7
    BackgroundStyle = scgbColor
    ShowFocusRect = True
    LinesColor = clNone
    CustomImages = MainForm.scImageCollection1
    CustomBackgroundImageIndex = -1
    CustomOverContentImageIndex = 3
    ColCount = 20
    RowCount = 20
    Options = [scgoFixedVertLine, scgoFixedHorzLine, scgoVertLine, scgoHorzLine, scgoRangeSelect, scgoDrawFocusSelected]
    OnDrawCell = scDrawGrid1DrawCell
    ColWidths = (
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64
      64)
  end
  object scLabel3: TscLabel
    Left = 179
    Top = 5
    Width = 71
    Height = 13
    TabOrder = 5
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
    Left = 179
    Top = 24
    Width = 94
    Height = 23
    Style = csDropDownList
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
    TabOrder = 6
    Text = 'scstStyled'
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnClick = scComboBox2Click
  end
  object scCheckBox1: TscCheckBox
    Left = 448
    Top = 19
    Width = 105
    Height = 31
    TabOrder = 7
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
    Checked = True
    State = cbChecked
    ShowFocusRect = True
  end
end
