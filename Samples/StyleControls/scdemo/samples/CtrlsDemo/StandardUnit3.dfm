object StandardFrame3: TStandardFrame3
  Left = 0
  Top = 0
  Width = 483
  Height = 376
  TabOrder = 0
  object scPageControl1: TscPageControl
    Left = 9
    Top = 67
    Width = 331
    Height = 129
    ActivePage = scTabSheet1
    TabHeight = 30
    TabOrder = 0
    TabGlowEffect.Enabled = False
    TabGlowEffect.Color = clHighlight
    TabGlowEffect.AlphaValue = 255
    TabGlowEffect.GlowSize = 7
    TabGlowEffect.Offset = 0
    TabGlowEffect.Intensive = True
    TabGlowEffect.StyleColors = True
    TabGlowEffect.HotColor = clNone
    TabGlowEffect.PressedColor = clNone
    TabGlowEffect.FocusedColor = clNone
    TabGlowEffect.PressedGlowSize = 7
    TabGlowEffect.PressedAlphaValue = 255
    TabGlowEffect.States = [scsHot, scsPressed, scsFocused]
    TabImageGlow = True
    Wallpapers = MainForm.scImageCollection1
    HideBorder = False
    HideTabs = False
    TabsOffset = 0
    TabsInCenter = False
    ShowButtonsDivider = True
    TabsWallpaperIndex = -1
    ShowInActiveTab = True
    ShowFocusRect = True
    MouseWheelSupport = False
    TabExtededDraw = False
    TabSpacing = 1
    FreeOnClose = False
    ShowCloseButtons = True
    OnClose = scPageControl1Close
    object scTabSheet1: TscTabSheet
      Caption = 'scTabSheet1'
      StyleKind = sctsTabSheet
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      DrawTabsWallpaper = False
      object scComboBox2: TscComboBox
        Left = 70
        Top = 30
        Width = 145
        Height = 23
        Style = csOwnerDrawFixed
        ItemIndex = 0
        Items.Strings = (
          'sctsTabSheet'
          'sctsPanel'
          'sctsToolBar'
          'sctsFormBackground')
        WordBreak = False
        SelectionStyle = scstStyled
        SelectionColor = clNone
        SelectionTextColor = clHighlightText
        ImageIndex = -1
        ItemHeight = 17
        TabOrder = 0
        Text = 'sctsTabSheet'
        StyleKind = scscbDefault
        ShowFocusRect = True
        OnClick = scComboBox2Click
      end
      object scLabel4: TscLabel
        Left = 16
        Top = 32
        Width = 48
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
        Caption = 'StyleKind:'
      end
    end
    object scTabSheet2: TscTabSheet
      Caption = 'scTabSheet2'
      StyleKind = sctsTabSheet
      WallpaperIndex = 2
      CustomBackgroundImageIndex = -1
      DrawTabsWallpaper = False
      DesignSize = (
        323
        89)
      object scMemo1: TscMemo
        AlignWithMargins = True
        Left = 15
        Top = 15
        Width = 293
        Height = 59
        Margins.Left = 15
        Margins.Top = 15
        Margins.Right = 15
        Margins.Bottom = 15
        Anchors = [akLeft, akTop, akRight, akBottom]
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'To draw Wallpaper controls uses TscImageCollection '
          'component!'
          'Set any image to TscImageCollection.Item.Picture '
          'and TscImageCollection.DrawStyle = '
          '(idsTile, idsStretch, idsCenter, idsTopLeft, idsTopRight, '
          'idsBottomLeft, idsBottomRight, idsTopTile, idsLeftTile, '
          'idsRightTile, idsBottomTile,  idsTopStretch, '
          'idsLeftStretch,  dsRightStretch, idsBottomStretch,  '
          'idsHorzStretchTile,  idsVertStretchTile, '
          'idsHorzCenterStretch, idsVertCenterStretch, '
          'idsLeftCenter, idsTopCenter,  idsRightCenter,  '
          'idsBottomCenter)')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        StyleElements = [seClient, seBorder]
        WallpaperIndex = -1
        Transparent = True
        CustomBackgroundImageNormalIndex = -1
        CustomBackgroundImageHotIndex = -1
        CustomBackgroundImageDisabledIndex = -1
        UseFontColorToStyleColor = False
      end
    end
    object scTabSheet3: TscTabSheet
      Caption = 'scTabSheet3'
      StyleKind = sctsTabSheet
      WallpaperIndex = 0
      CustomBackgroundImageIndex = -1
      DrawTabsWallpaper = False
    end
    object scTabSheet4: TscTabSheet
      Caption = 'scTabSheet4'
      StyleKind = sctsTabSheet
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      DrawTabsWallpaper = False
    end
    object scTabSheet5: TscTabSheet
      Caption = 'scTabSheet5'
      StyleKind = sctsTabSheet
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      DrawTabsWallpaper = False
    end
  end
  object scLabel1: TscLabel
    Left = 14
    Top = 7
    Width = 348
    Height = 39
    TabOrder = 1
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
      'You can set StyleKind and Wallpaper for pages! All controls have' +
      ' special algoritms to draw different wallpapers with alpha-chann' +
      'el and update child-controls on parent!'
  end
  object scCheckBox1: TscCheckBox
    Left = 368
    Top = 105
    Width = 73
    Height = 25
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
    Caption = 'HideTabs'
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
  object scCheckBox2: TscCheckBox
    Left = 368
    Top = 145
    Width = 100
    Height = 25
    TabOrder = 3
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
    Caption = 'Hide border'
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
  object scComboBox3: TscComboBox
    Left = 296
    Top = 210
    Width = 145
    Height = 23
    Style = csOwnerDrawFixed
    ItemIndex = 1
    Items.Strings = (
      'scbsNone'
      'scbsFlat'
      'scbsRaised'
      'scbsLowered'
      'scbsLoweredBevel'
      'scbsRaisedBevel'
      'scbsTopBevel'
      'scbsBottomBevel'
      'scpbsTopLightLine'
      'scpbsBottomLightLine'
      'scpbsTopShadowLine'
      'scpbsBottomShadowLine'
      'scpbsLeftBevel'
      'scpbsRightBevel'
      'scpbsLeftLightLine'
      'scpbsRightLightLine'
      'scpbsLeftShadowLine'
      'scpbsRightShadowLine'
      'scpbsHorzCenterBevel'
      'scpbsVertCenterBevel')
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ImageIndex = -1
    ItemHeight = 17
    TabOrder = 4
    Text = 'scbsFlat'
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnClick = scComboBox3Click
  end
  object scLabel3: TscLabel
    Left = 229
    Top = 215
    Width = 60
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
    Caption = 'BorderStyle:'
  end
  object scComboBox1: TscComboBox
    Left = 67
    Top = 210
    Width = 145
    Height = 23
    Style = csOwnerDrawFixed
    ItemIndex = 0
    Items.Strings = (
      'scpsPanel'
      'scpsToolBar'
      'scpsHeader'
      'scpsFormBackground'
      'scpsTransparent')
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ImageIndex = -1
    ItemHeight = 17
    TabOrder = 6
    Text = 'scpsPanel'
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnClick = scComboBox1Click
  end
  object scLabel2: TscLabel
    Left = 13
    Top = 213
    Width = 48
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
    Caption = 'StyleKind:'
  end
  object scCheckBox3: TscCheckBox
    Left = 13
    Top = 240
    Width = 92
    Height = 24
    TabOrder = 8
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
    Caption = 'ShowCaption'
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
  object scCheckBox4: TscCheckBox
    Left = 127
    Top = 240
    Width = 107
    Height = 24
    TabOrder = 9
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
    Caption = 'Use wallpaper'
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
  object scPanel1: TscPanel
    Left = 14
    Top = 278
    Width = 331
    Height = 64
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    CustomImageIndex = -1
    StyleKind = scpsPanel
    ShowCaption = True
    BorderStyle = scpbsFlat
    WallpaperIndex = -1
    LightBorderColor = clBtnHighlight
    ShadowBorderColor = clBtnShadow
    CaptionGlowEffect.Enabled = True
    CaptionGlowEffect.Color = clBtnShadow
    CaptionGlowEffect.AlphaValue = 255
    CaptionGlowEffect.GlowSize = 5
    CaptionGlowEffect.Offset = 2
    CaptionGlowEffect.Intensive = True
    CaptionGlowEffect.StyleColors = True
    Color = clBtnFace
    Caption = 'scPanel1'
  end
end
