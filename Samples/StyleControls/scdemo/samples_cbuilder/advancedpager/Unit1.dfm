object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'StyleControls VCL - TscAdvancedPager - Demo'
  ClientHeight = 392
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object scAdvancedPager1: TscAdvancedPager
    Left = 0
    Top = 0
    Width = 707
    Height = 392
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alClient
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    TransparentBackground = True
    BorderStyle = scapbsFrame
    MouseWheelSupport = True
    ShowFocusRect = True
    ShowInActiveTab = True
    ShowCloseButtons = False
    TabsLeftOffset = 120
    TabsRightOffset = 200
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
    WallpaperIndex = -1
    CustomBackgroundImageIndex = -1
    TabSpacing = 10
    TabMargin = 10
    ScrollButtonWidth = 15
    CustomOverContentImageIndex = -1
    TabHeight = 40
    Tabs = <
      item
        Page = scAdvancedPagerPage1
        Visible = True
        Enabled = True
        ImageIndex = 0
        Caption = 'TscAdvancedPagerTab1'
      end
      item
        Page = scAdvancedPagerPage2
        Visible = True
        Enabled = True
        ImageIndex = 1
        Caption = 'TscAdvancedPagerTab2'
      end
      item
        Page = scAdvancedPagerPage3
        Visible = True
        Enabled = True
        ImageIndex = 2
        Caption = 'TscAdvancedPagerTab3'
      end>
    TabIndex = 0
    ActivePage = scAdvancedPagerPage1
    TabImages = ImageList1
    StorePaintBuffer = False
    FreeOnClose = False
    DesignSize = (
      707
      392)
    object scButton1: TscButton
      Left = 5
      Top = 5
      Width = 110
      Height = 30
      TabOrder = 3
      TabStop = True
      Animation = True
      Caption = 'scButton1'
      CanFocused = True
      CustomDropDown = False
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
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
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      HotImageIndex = -1
      FocusedImageIndex = -1
      PressedImageIndex = -1
      StyleKind = scbsPushButton
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      CustomImageNormalIndex = -1
      CustomImageHotIndex = -1
      CustomImagePressedIndex = -1
      CustomImageDisabledIndex = -1
      CustomImageFocusedIndex = -1
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      UseFontColorToStyleColor = False
      RepeatClick = False
      RepeatClickInterval = 100
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
      DropDownMenu = PopupMenu1
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = True
      SplitButton = False
      ShowFocusRect = False
      Down = False
      GroupIndex = 0
      AllowAllUp = False
    end
    object scComboBox1: TscComboBox
      Left = 517
      Top = 8
      Width = 183
      Height = 24
      Style = csDropDownList
      ItemIndex = -1
      WordBreak = False
      SelectionStyle = scstStyled
      SelectionColor = clNone
      SelectionTextColor = clHighlightText
      ImageIndex = -1
      ItemHeight = 18
      Anchors = [akTop, akRight]
      TabOrder = 4
      StyleKind = scscbDefault
      ShowFocusRect = True
      OnClick = scComboBox1Click
    end
    object scAdvancedPagerPage2: TscAdvancedPagerPage
      Left = 2
      Top = 42
      Width = 774
      Height = 368
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      Visible = False
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FullUpdate = True
      BackgroundStyle = scsbsTabSheet
      object scLabel2: TscLabel
        Left = 24
        Top = 21
        Width = 238
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
        Caption = 'Set TabsLeftOffset and put any controls from left'
      end
      object scLabel5: TscLabel
        Left = 24
        Top = 93
        Width = 304
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
        Caption = 'Adjust wallpapers, custom backgrounds for tab area and pages'
      end
      object scLabel3: TscLabel
        Left = 24
        Top = 56
        Width = 250
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
        Caption = 'Set TabsRightOffset and put any controls from right'
      end
    end
    object scAdvancedPagerPage3: TscAdvancedPagerPage
      Left = 2
      Top = 42
      Width = 702
      Height = 347
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      Visible = False
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FullUpdate = True
      BackgroundStyle = scsbsTabSheet
      object scLabel28: TscLabel
        Left = 12
        Top = 13
        Width = 186
        Height = 37
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        StyleElements = [seClient, seBorder]
        GlowEffect.Enabled = True
        GlowEffect.Color = clWhite
        GlowEffect.AlphaValue = 200
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = True
        UseFontColorToStyleColor = False
        Caption = 'StyleControls VCL'
      end
      object scLabel4: TscLabel
        Left = 20
        Top = 69
        Width = 41
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        GlowEffect.Enabled = False
        GlowEffect.Color = clWhite
        GlowEffect.AlphaValue = 200
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = True
        UseFontColorToStyleColor = False
        Caption = 'Home:'
      end
      object scButton10: TscButton
        Left = 68
        Top = 58
        Width = 146
        Height = 36
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Animation = True
        Caption = 'www.almdev.com'
        CanFocused = False
        CustomDropDown = False
        Margin = -1
        Spacing = 1
        Layout = blGlyphLeft
        ImageIndex = -1
        ImageMargin = 0
        TransparentBackground = True
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
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        HotImageIndex = -1
        FocusedImageIndex = -1
        PressedImageIndex = -1
        StyleKind = scbsLink
        UseGalleryMenuImage = False
        UseGalleryMenuCaption = False
        CustomImageNormalIndex = -1
        CustomImageHotIndex = -1
        CustomImagePressedIndex = -1
        CustomImageDisabledIndex = -1
        CustomImageFocusedIndex = -1
        ScaleMarginAndSpacing = False
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        UseFontColorToStyleColor = False
        RepeatClick = False
        RepeatClickInterval = 100
        GlowEffect.Enabled = True
        GlowEffect.Color = clHighlight
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        GlowEffect.HotColor = clNone
        GlowEffect.PressedColor = clNone
        GlowEffect.FocusedColor = clNone
        GlowEffect.PressedGlowSize = 10
        GlowEffect.PressedAlphaValue = 255
        GlowEffect.States = [scsHot, scsPressed, scsFocused]
        ImageGlow = True
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        SplitButton = False
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = True
      end
    end
    object scAdvancedPagerPage1: TscAdvancedPagerPage
      Left = 2
      Top = 42
      Width = 702
      Height = 347
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FullUpdate = True
      BackgroundStyle = scsbsTabSheet
      object scCheckBox1: TscCheckBox
        Left = 22
        Top = 219
        Width = 117
        Height = 25
        TabOrder = 0
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
        Left = 21
        Top = 177
        Width = 244
        Height = 25
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
        Caption = 'Use glow effect for tabs for different states'
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
      object scLabel7: TscLabel
        Left = 21
        Top = 22
        Width = 60
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
        Caption = 'BorderStyle:'
      end
      object scCheckBox3: TscCheckBox
        Left = 21
        Top = 98
        Width = 117
        Height = 25
        TabOrder = 3
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
        Caption = 'ShowInActiveTab'
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
        Left = 21
        Top = 138
        Width = 118
        Height = 25
        TabOrder = 4
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
        Caption = 'ShowCloseButtons'
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
      object scLabel1: TscLabel
        Left = 237
        Top = 22
        Width = 135
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
        Caption = 'This page background style:'
      end
      object scComboBox3: TscComboBox
        Left = 237
        Top = 41
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 2
        Items.Strings = (
          'scsbsFormBackground'
          'scsbsPanel'
          'scsbsTabSheet')
        WordBreak = False
        SelectionStyle = scstStyled
        SelectionColor = clNone
        SelectionTextColor = clHighlightText
        ImageIndex = -1
        ItemHeight = 15
        TabOrder = 6
        Text = 'scsbsTabSheet'
        StyleKind = scscbDefault
        ShowFocusRect = True
        OnClick = scComboBox3Click
      end
      object scCheckBox5: TscCheckBox
        Left = 21
        Top = 258
        Width = 135
        Height = 25
        TabOrder = 7
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
        Caption = 'MouseWheelSupport'
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
      object scComboBox2: TscComboBox
        Left = 21
        Top = 41
        Width = 145
        Height = 23
        Style = csDropDownList
        ItemIndex = 0
        Items.Strings = (
          'scapbsFrame'
          'scapbsLine'
          'scapbsLine2'
          'scapbsNone')
        WordBreak = False
        SelectionStyle = scstStyled
        SelectionColor = clNone
        SelectionTextColor = clHighlightText
        ImageIndex = -1
        ItemHeight = 17
        TabOrder = 8
        Text = 'scapbsFrame'
        StyleKind = scscbDefault
        ShowFocusRect = True
        OnClick = scComboBox2Click
      end
    end
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    Left = 248
    Top = 136
    Bitmap = {
      494C010103004000A80010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000012313131B6313131B600000011000000000000
      0000000000000000000000000000000000000101015B090909A60303033C0B0B
      0B400A0A0A430A0A0A430A0A0A430A0A0A430909094309090943090909430909
      094309090943090909430B0B0B46070707380000000000000000000000000000
      0000000000040805003A2115056E3B290E8C3B290F8C2216056F0805003B0000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006F6F6FD9E4E4E4FFE3E3E3FF373737C1000000000000
      0000000000000000000000000000000000000B0B0C6F707071F35B5B5BF3AAAB
      ABFEB4B4B4FFA6A6A6FFA6A6A6FFA6A6A6FFA7A7A7FFAAAAAAFFA9A9A9FFAAAA
      AAFFA4A4A4FFA1A1A1FF9B9B9BFF717171DC0000000000000000000000000603
      0134502D0EA8B96C32F1E08C5AFFF09C72FFF29F75FFE4905FFFBB6F37F3532F
      0EAD080401390000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000F2626
      26AD030303610505056ECFCFCEF8E2E1DFFFE1E0DFFFC9C9C8F3040404670404
      0466242424AD0000000F00000000000000000000000D505050ADC4C2C2FF8C8C
      8BFFEBEBEBFFF7F7F7FFF1F1F1FFF2F2F2FFF3F3F3FFF8F8F8FFF8F8F8FFFAFA
      FAFFFAFAFAFFFFFFFFFFFDFDFDFF676767D300000000000000000E07024BA159
      22E5AD4818FF913310FFA74C28FFBD5E39FFC0623DFFAE522FFF963916FFA341
      13FFA1551EEA1008025300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000464646C5FFFF
      FFFFECECEBFEEBEBEAFEE7E7E6FFD6D5D3FFD7D6D4FFE3E2E0FFE0DFDDFEDFDE
      DDFDE9E8E6FF3D3D3DC10000000000000000000000000101011D717171C9B3B0
      B0FF8A8A8AFFE8E8E8FFF0F0F0FFEEEEEEFFF0F0F0FFF1F1F1FFF2F2F2FFF3F3
      F3FFF4F4F4FFFFFFFFFFFDFDFDFF646464D300000000050200349A5221E49136
      0DFF741B00FF791B00FF934026FFD7B19FFFDEBCABFF9E5135FF791B00FF761D
      00FF872C09FF974E1EE90703003A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C6C6CE7F9F9
      F7FFEFEFEEFFDBDBDAFFCAC9C9FFC9C8C6FFC9C8C7FFC9C8C7FFCBCBC9FFE6E5
      E4FFE5E4E2FF646464E5000000000000000000000000000000000506063BD0D0
      D0FFB2B2B1FF898889FFEAEAEAFFF3F3F3FFF1F1F1FFF3F3F3FFF3F3F3FFF5F5
      F5FFF6F6F6FFFFFFFFFFFDFDFDFF656565D3000000074A2510A9903F16FF5C14
      00FF732100FF751800FF923F2CFFF9F4F1FFFFFFFEFF9D523BFF751600FF7622
      00FF611600FF7D320DFF4F260EB30000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1B1B95F6F5
      F4FFE6E5E4FFBFBEBDFFEBEBEAFFD4D3D2FFD6D5D4FFE2E1E1FFB4B4B3FFD7D6
      D4FFE2E1DFFF1616168D000000000000000000000000000000000101011AB1B1
      B3FFDFDEDFFFA4A1A1FF858585FFEDEDEDFFF6F6F6FFF3F3F3FFF4F4F4FFF6F6
      F6FFF6F6F6FFFFFFFFFFFDFDFDFF656565D305010037964C21F24F1702FF5617
      00FF661E00FF651300FF863A29FFF4ECE6FFFCF7F4FF934D37FF651100FF661D
      00FF5A1A00FF4C1400FF883F19F8080201420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000F303030B58C8B8BE7E4E3
      E2FFD1D0CFFFF0F0EFFFAEAEAEFF969595F1999999F2ACACABFFE8E8E7FFCBCB
      CAFFE0DFDDFF828280E4303030B50000000F00000000000000000101011ABFBF
      BFFFEFEFEFFFE0E0E0FF9E9B9BFF8B8B8BFFF3F3F3FFF5F5F5FFF6F6F6FFF7F7
      F7FFF8F8F8FFFFFFFFFFFDFDFDFF676767D31A0A056E7C3C19FF320A00FF4513
      00FF531700FF550E00FF7C3829FFF4ECE6FFFDF7F4FF8E4B37FF5B0E00FF5B19
      00FF4C1600FF320A00FF5F290FFF1E0B05780000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000909096DE4E4E3FFD8D6D5FFD2D1
      D0FFC5C4C3FFEDECEBFF4A4A4ABA0000000000000000676765CDE8E7E6FFB6B5
      B4FFD6D5D3FFE2E1E0FFE0E0DFFF0707076600000000000000000101011AB6B6
      B6FFFAFAFAFFE9E9EAFFDFDEDEFF9F9C9CFF999898FFFAFAFAFFF8F8F8FFF8F8
      F8FFF9F9F9FFFFFFFFFFFDFDFDFF676767D32B11098D5C2B10FF350C00FF5F1F
      05FF732909FF7D2605FF9B4B2FFFF6EEEAFFFCF8F6FFA85E40FF862A07FF8631
      0FFF792B0BFF5D1D04FF64290CFF2E1108960000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0D0D76ECEBE8FFDAD9D7FFD4D3
      D1FFC6C5C4FFDEDCDCFF1313137E00000000000000002525249ADDDCDBFFC8C6
      C5FFE2E2E1FFE1E1DFFFEEEDECFF0B0B0B6F00000000000000000101011AB5B5
      B5FFF9F9F9FFF4F4F4FFEBEBEBFFD8D7D7FFA5A3A3FFB8B8B8FFF9F9F9FFFAFA
      FAFFFAFAFAFFFFFFFFFFFDFDFDFF676767D32B10098E9B471CFF8A3210FF9D40
      18FFA2451EFF9F3E15FFAF5B37FFF7EFECFFFBF8F7FFB76C4CFFA03E15FFA347
      21FFA1441DFF9A3C16FFA7491BFF311209960000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808084A7B7B7BEBD4D4D3FCDEDD
      DCFFCBCACAFFE6E5E5FF80807FE1010101500202025C9C9C9CEBEEEEECFFCCCB
      CBFFE7E6E5FFD6D6D5FC7C7C7CEB0303034300000000000000000101011AB0B0
      B0FFFBFBFBFFF4F4F4FFF9F9F9FFE6E6E6FFC1C1C1FF89898AFFEDEDEEFFFFFF
      FFFFFDFDFDFFFFFFFFFFFDFDFDFF656565D319070570C46532FFA64A24FFAC51
      2BFFB0552FFFB1552FFFB65B35FFB65B35FFB65B35FFB65B35FFB65B35FFB65B
      35FFAF542EFFA94E29FFB95E30FF1D0805780000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005E5E5ECEE1E0
      DEFFD9D7D6FFB8B7B7FFE1E0DFFFD0CFCFFDE0DFDEFDF6F6F5FFC0C0BFFFEAE9
      E8FFF3F3F2FF585857C9000000000000000000000000000000000101011AABAB
      ABFFFCFCFCFFF5F5F5FFF7F7F7FFFDFDFDFFE9E9E9FFDCDCDCFFFAFAFAFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFDFF646464D30500003ABA6B43F3CF734BFFC86D
      47FFCC724CFFCF744DFFD07650FFD6967AFFD89E84FFD37B56FFD1744EFFCF75
      4FFFCC714BFFD0754DFFC06A44F9070101440000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000018181891E3E2
      E0FFDEDEDCFFE1E0DFFFCCCBCBFFC4C3C2FFCFCFCEFFDEDEDDFFF0F0EFFFF0F0
      EFFFF6F6F5FF14141487000000000000000000000000000000000101011AAAAA
      AAFFFDFDFDFFF6F6F6FFF8F8F8FFFAFAFAFFFEFEFEFFFFFFFFFFFDFDFDFFFEFE
      FEFFFFFFFFFFFFFFFFFFFDFDFDFF626262D3000000084A2419ACF7A475FFEA8D
      67FFEC9068FFED8E65FFE9936DFFFBF5F3FFFCF7F5FFED9B78FFEF8F65FFED92
      6AFFED916AFFF8A274FF54271BB60000000C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002858483E3E5E4
      E1FFEEEEEDFFEEEEEDFFEBEBEAFFE3E2E1FFE8E8E7FFEAEAE9FFF3F3F2FFF5F5
      F4FFFAF9F8FF818181DF000000000000000000000000000000000101011AABAB
      ABFFFDFDFDFFF8F8F8FFFBFBFBFFFBFBFBFFFCFCFCFFFEFEFEFFFFFFFFFFFFFF
      FFFFFDFDFDFFFFFFFFFFFDFDFDFF626262D30000000004000036AF7051E7FFBF
      97FFFFAB89FFFFA784FFFCAA88FFFEDCCFFFFDE1D6FFFCAF90FFFFA883FFFFAC
      8BFFFFC09AFFB97355ED06000040000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1E6FB0B0
      AEFE838382E79B9A9AF3E8E7E6FFE7E6E5FFEDEDECFFFBFBFAFF9F9F9FF28787
      86E7BCBCBCFE19191968000000000000000000000000000000000202021AA9A9
      A9FFFFFFFFFFFAFAFAFFFBFBFBFFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFDFD
      FDFFFAFAFAFFFFFFFFFFFDFDFDFF646464D300000000000000000B020251AF79
      5DE9FFD4B4FFFFD0B8FFFFC7AEFFFFC3AAFFFFC4ACFFFFC7AFFFFFD2B9FFFFD4
      B7FFB87F63EE0D02025800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000140000000E343434AAEFEEEDFFF4F4F3FF323232A40000000B0101
      01170000000000000000000000000000000000000000000000000202021AB2B2
      B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFCFCFFFFFFFFFFFDFDFDFF707070D50000000000000000000000000501
      00394D2A21AFCEA48CF6F9D4BCFFFFDCC6FFFFDDC6FFFAD4BDFFD3A690F8532E
      25B40600003E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000606064A8D8D8DF08C8C8CEF03030343000000000000
      0000000000000000000000000000000000000000000000000000010101147676
      76DC8A8A8AE58B8B8BE48B8B8BE48B8B8BE48B8B8BE48A8A8AE4898989E48989
      89E4868686E4888888E5858585EC525252BC0000000000000000000000000000
      0000000000070601003E1C0B097634191696361A17981E0B0979070101410000
      0009000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object scStyleManager1: TscStyleManager
    MenuHookEnabled = True
    MenuAlphaBlendValue = 255
    MenuWallpaperIndex = -1
    MenuBackgroundIndex = -1
    MenuBackgroundOverContentIndex = -1
    MenuHeadersSupport = True
    ScaleStyles = True
    ScaleThemes = False
    ScaleResources = True
    ScaleFormBorder = True
    Left = 456
    Top = 96
  end
  object scStyledForm1: TscStyledForm
    DropDownForm = False
    DropDownAnimation = False
    StylesMenuSorted = False
    ShowStylesMenu = False
    StylesMenuCaption = 'Styles'
    ClientWidth = 0
    ClientHeight = 0
    ShowHints = True
    Buttons = <>
    ButtonFont.Charset = DEFAULT_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -11
    ButtonFont.Name = 'Tahoma'
    ButtonFont.Style = []
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    CaptionAlignment = taLeftJustify
    InActiveClientColor = clWindow
    InActiveClientColorAlpha = 100
    InActiveClientBlurAmount = 5
    Tabs = <>
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clWindowText
    TabFont.Height = -11
    TabFont.Name = 'Tahoma'
    TabFont.Style = []
    ShowButtons = True
    ShowTabs = True
    TabIndex = 0
    TabsPosition = sctpLeft
    ShowInactiveTab = True
    Left = 562
    Top = 96
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 136
    object Open1: TMenuItem
      Caption = '&Open...'
    end
    object New1: TMenuItem
      Caption = '&New'
    end
    object Save1: TMenuItem
      Caption = '&Save'
    end
    object SaveAs1: TMenuItem
      Caption = 'Save &As...'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Print1: TMenuItem
      Caption = '&Print...'
    end
    object PrintSetup1: TMenuItem
      Caption = 'P&rint Setup...'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Exit1: TMenuItem
      Caption = 'E&xit'
      OnClick = Exit1Click
    end
  end
end
