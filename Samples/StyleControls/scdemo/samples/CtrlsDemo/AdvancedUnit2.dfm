object AdvancedFrame2: TAdvancedFrame2
  Left = 0
  Top = 0
  Width = 586
  Height = 384
  TabOrder = 0
  object scLabel1: TscLabel
    Left = 6
    Top = 12
    Width = 73
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
    Caption = 'Selection style:'
  end
  object scLabel2: TscLabel
    Left = 3
    Top = 48
    Width = 65
    Height = 13
    TabOrder = 1
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    UseFontColorToStyleColor = False
    Caption = 'Header style:'
  end
  object scComboBox1: TscComboBox
    Left = 85
    Top = 8
    Width = 175
    Height = 23
    Style = csOwnerDrawFixed
    ItemIndex = 0
    Items.Strings = (
      'scastStyled'
      'scastColor'
      'scastGlow'
      'scastCustomImage'
      'scastCustomImageWithGlow')
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ImageIndex = -1
    ItemHeight = 17
    TabOrder = 2
    Text = 'scastStyled'
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnClick = scComboBox1Click
  end
  object scComboBox2: TscComboBox
    Left = 85
    Top = 45
    Width = 175
    Height = 23
    Style = csOwnerDrawFixed
    ItemIndex = 0
    Items.Strings = (
      'scahsDefault'
      'scahsBottomLine'
      'scahsCustomImage')
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ImageIndex = -1
    ItemHeight = 17
    TabOrder = 3
    Text = 'scahsDefault'
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnClick = scComboBox2Click
  end
  object scLabel3: TscLabel
    Left = 273
    Top = 15
    Width = 86
    Height = 13
    TabOrder = 4
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
  object scCheckBox1: TscCheckBox
    Left = 268
    Top = 48
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
  object scCheckBox2: TscCheckBox
    Left = 376
    Top = 48
    Width = 101
    Height = 17
    TabOrder = 6
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
    Caption = 'Use Wallpaper'
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
    Left = 491
    Top = 48
    Width = 85
    Height = 17
    TabOrder = 7
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
    Caption = 'Show border'
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
  object scComboBox4: TscComboBox
    Left = 368
    Top = 11
    Width = 128
    Height = 23
    Style = csOwnerDrawFixed
    ItemIndex = 0
    Items.Strings = (
      'scbgsColor'
      'scbgsFormBackground'
      'scbgsTransparent')
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ImageIndex = -1
    ItemHeight = 17
    TabOrder = 8
    Text = 'scbgsColor'
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnClick = scComboBox4Click
  end
  object scGallery1: TscGallery
    Left = 248
    Top = 88
    Width = 273
    Height = 79
    TabOrder = 9
    TabStop = True
    Touch.InteractiveGestures = [igPan, igPressAndTap]
    Touch.InteractiveGestureOptions = [igoPanSingleFingerVertical, igoPanInertia, igoParentPassthrough]
    CustomImages = MainForm.scImageCollection1
    CustomBackgroundImageIndex = -1
    CustomOverContentImageIndex = -1
    CustomSelectionImageIndex = 26
    CustomFocusedSelectionImageIndex = 26
    BorderStyle = scbsSingle
    BackgroundStyle = scbgsColor
    Wallpapers = MainForm.scImageCollection1
    WallpaperIndex = 1
    BalloonHint = MainForm.scBalloonHint1
    SelectionStyle = scastStyled
    SelectionColor = clNone
    SelectionTextColor = clWindowText
    ShowFocusRect = True
    SelectionGlow.Enabled = True
    SelectionGlow.Color = clHighlight
    SelectionGlow.AlphaValue = 255
    SelectionGlow.GlowSize = 7
    SelectionGlow.Offset = 0
    SelectionGlow.Intensive = True
    SelectionGlow.StyleColors = True
    PopupMaxRowCount = 3
    ItemLayout = blGlyphTop
    ItemMargin = 5
    ItemSpacing = 1
    Items = <
      item
        Caption = 'Item1'
        ImageIndex = 0
      end
      item
        Caption = 'Item2'
        ImageIndex = 2
      end
      item
        Caption = 'Item3'
        ImageIndex = 1
      end
      item
        Caption = 'Item4'
        ImageIndex = 4
      end
      item
        Caption = 'Item5 with long text'
        ImageIndex = 5
      end
      item
        Caption = 'Item6'
        ImageIndex = 6
      end
      item
        Caption = 'Item7'
        ImageIndex = 7
      end
      item
        Caption = 'Item8'
        ImageIndex = 8
      end
      item
        Caption = 'Item9'
        ImageIndex = 9
      end>
    Images = MainForm.ImageList1
    ItemWidth = 75
    ItemHeight = 75
    ItemIndex = 0
  end
  object scGridView1: TscGridView
    Left = 6
    Top = 88
    Width = 235
    Height = 225
    TabOrder = 10
    TabStop = True
    Touch.InteractiveGestures = [igPan, igPressAndTap]
    Touch.InteractiveGestureOptions = [igoPanSingleFingerVertical, igoPanInertia, igoParentPassthrough]
    CustomImages = MainForm.scImageCollection1
    CustomBackgroundImageIndex = -1
    CustomOverContentImageIndex = -1
    CustomSelectionImageIndex = 26
    CustomFocusedSelectionImageIndex = 26
    BorderStyle = scbsSingle
    BackgroundStyle = scbgsColor
    Wallpapers = MainForm.scImageCollection1
    WallpaperIndex = 1
    AutoComplete = True
    BalloonHint = MainForm.scBalloonHint1
    SelectionStyle = scastStyled
    SelectionGlow.Enabled = True
    SelectionGlow.Color = clHighlight
    SelectionGlow.AlphaValue = 255
    SelectionGlow.GlowSize = 7
    SelectionGlow.Offset = 0
    SelectionGlow.Intensive = True
    SelectionGlow.StyleColors = True
    SelectionColor = clNone
    SelectionTextColor = clWindowText
    ShowFocusRect = True
    ItemLayout = blGlyphTop
    ItemMargin = 4
    ItemSpacing = 1
    Items = <
      item
        Header = True
        Enabled = True
        Caption = 'TscGridView'
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item1 with big very caption'
        ImageIndex = 0
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item2'
        ImageIndex = 1
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item3'
        ImageIndex = 2
      end
      item
        Header = True
        Enabled = True
        Caption = 'Header #2'
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item4'
        ImageIndex = 3
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item5'
        ImageIndex = 4
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item6'
        ImageIndex = 5
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item7'
        ImageIndex = 6
      end
      item
        Header = True
        Enabled = True
        Caption = 'Header #3'
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item8'
        ImageIndex = 7
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item9'
        ImageIndex = 8
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item10'
        ImageIndex = 9
      end>
    Images = MainForm.ImageList3
    ItemHeight = 70
    ItemWidth = 70
    HeaderHeight = 20
    ItemIndex = 1
    MouseMoveChangeIndex = False
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    HeaderStyle = scahsDefault
    HeaderUseStyleColor = True
    CustomHeaderImageIndex = 21
  end
  object scGridViewComboBox1: TscGridViewComboBox
    Left = 247
    Top = 192
    Width = 161
    Height = 49
    TabOrder = 11
    UseFontColorToStyleColor = False
    AutoComplete = False
    Animation = False
    Images = MainForm.ImageList3
    Items = <
      item
        Header = True
        Enabled = True
        Caption = 'Header #1'
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item1'
        ImageIndex = 1
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item2'
        ImageIndex = 2
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item3'
        ImageIndex = 3
      end
      item
        Header = True
        Enabled = True
        Caption = 'Header #2'
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item4'
        ImageIndex = 4
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item5 with long text'
        ImageIndex = 5
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item6'
        ImageIndex = 6
      end
      item
        Header = False
        Enabled = True
        Caption = 'Item7'
        ImageIndex = 7
      end>
    ItemIndex = 1
    Style = sccbCombo
    HideSelection = False
    SelectionStyle = scastStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    SelectionGlow.Enabled = False
    SelectionGlow.Color = clHighlight
    SelectionGlow.AlphaValue = 255
    SelectionGlow.GlowSize = 7
    SelectionGlow.Offset = 0
    SelectionGlow.Intensive = True
    SelectionGlow.StyleColors = True
    ShowFocusRect = True
    ShowItemImage = True
    ShowItemText = True
    ColorOptions.NormalColor = clBtnFace
    ColorOptions.HotColor = clBtnFace
    ColorOptions.PressedColor = clBtnShadow
    ColorOptions.FocusedColor = clBtnFace
    ColorOptions.DisabledColor = clBtnFace
    ColorOptions.FrameNormalColor = clBtnShadow
    ColorOptions.FrameHotColor = clHighlight
    ColorOptions.FramePressedColor = clHighlight
    ColorOptions.FrameFocusedColor = clHighlight
    ColorOptions.FrameDisabledColor = clBtnShadow
    ColorOptions.FrameWidth = 1
    ColorOptions.FontNormalColor = clBtnText
    ColorOptions.FontHotColor = clBtnText
    ColorOptions.FontPressedColor = clBtnText
    ColorOptions.FontFocusedColor = clBtnText
    ColorOptions.FontDisabledColor = clBtnShadow
    ColorOptions.TitleFontNormalColor = clBtnText
    ColorOptions.TitleFontHotColor = clBtnText
    ColorOptions.TitleFontPressedColor = clBtnText
    ColorOptions.TitleFontFocusedColor = clBtnText
    ColorOptions.TitleFontDisabledColor = clBtnShadow
    ColorOptions.StyleColors = True
    CustomImages = MainForm.scImageCollection1
    CustomImageNormalIndex = 4
    CustomImageHotIndex = 5
    CustomImagePressedIndex = 6
    CustomImageDisabledIndex = 4
    CustomImageFocusedIndex = 5
    CustomArrowImageNormalIndex = -1
    CustomArrowImageHotIndex = -1
    CustomArrowImagePressedIndex = -1
    CustomArrowImageDisabledIndex = -1
    CustomArrowImageFocusedIndex = -1
    GridViewHintComponent = MainForm.scHint1
    GridViewHeaderUseStyleColor = True
    GridViewWallpaperIndex = 1
    GridViewHeaderStyle = scahsDefault
    GridViewWidth = 220
    GridViewHeight = 180
    GridViewItemHeight = 60
    GridViewItemWidth = 60
    GridViewHeaderHeight = 20
    GridViewSelectionStyle = scastStyled
    GridViewSelectionColor = clNone
    GridViewSelectionTextColor = clHighlightText
  end
  object scComboBox3: TscComboBox
    Left = 310
    Top = 271
    Width = 211
    Height = 23
    Style = csOwnerDrawFixed
    ItemIndex = 0
    Items.Strings = (
      'sccbCombo'
      'sccbPushButton'
      'sccbToolButton'
      'sccbPushButtonTransparent'
      'sccbToolButtonTransparent'
      'sccbTransparent'
      'sccbTransparentBottomLine'
      'sccbTransparentBottomActiveLine'
      ' sccbColorCombo'
      'sccbCustomImage'
      'sccbCustomImageOverContent')
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ImageIndex = -1
    ItemHeight = 17
    TabOrder = 12
    Text = 'sccbCombo'
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnClick = scComboBox3Click
  end
  object scLabel4: TscLabel
    Left = 256
    Top = 274
    Width = 48
    Height = 13
    TabOrder = 13
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 4
    GlowEffect.Offset = 2
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    UseFontColorToStyleColor = False
    Caption = 'StyleKind:'
  end
  object scCheckBox4: TscCheckBox
    Left = 448
    Top = 206
    Width = 81
    Height = 17
    TabOrder = 14
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
    Caption = 'Animation'
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
end
