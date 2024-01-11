object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'StyleControls VCL - TscGPToolPager - Demo - 100%'
  ClientHeight = 401
  ClientWidth = 755
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 530
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object scGPToolPager1: TscGPToolPager
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 749
    Height = 133
    Align = alTop
    TabOrder = 0
    OnResize = scGPToolPager1Resize
    Color = clBtnFace
    TabsBGFillColor = clNone
    TabsBGFillColorAlpha = 255
    TransparentBackground = True
    FrameWidth = 1
    FrameScaleWidth = False
    FrameColor = clBtnText
    FrameColorAlpha = 80
    BorderStyle = scgpbsFrame
    MouseWheelSupport = True
    ShowFocusRect = True
    ShowInActiveTab = False
    ShowCloseButtons = False
    TabsLeftOffset = 100
    TabsRightOffset = 180
    TabsTopOffset = 0
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
    TabGlowEffect.States = [scsFocused]
    TabOptions.NormalColor = clBtnShadow
    TabOptions.ActiveColor = clBtnHighlight
    TabOptions.MouseInColor = clBtnShadow
    TabOptions.FocusedColor = clBtnHighlight
    TabOptions.NormalColorAlpha = 70
    TabOptions.ActiveColorAlpha = 95
    TabOptions.MouseInColorAlpha = 40
    TabOptions.FocusedColorAlpha = 95
    TabOptions.FrameNormalColor = clBtnText
    TabOptions.FrameActiveColor = clBtnText
    TabOptions.FrameMouseInColor = clBtnText
    TabOptions.FrameFocusedColor = clBtnText
    TabOptions.FrameWidth = 1
    TabOptions.FrameNormalColorAlpha = 50
    TabOptions.FrameActiveColorAlpha = 80
    TabOptions.FrameMouseInColorAlpha = 60
    TabOptions.FrameFocusedColorAlpha = 80
    TabOptions.FontNormalColor = clBtnText
    TabOptions.FontActiveColor = clBtnText
    TabOptions.FontMouseInColor = clBtnText
    TabOptions.FontFocusedColor = clBtnText
    TabOptions.TabStyle = gptsShape
    TabOptions.ShapeFillStyle = scgpsfGradient
    TabOptions.ShapeFillGradientAngle = 90
    TabOptions.GradientColorOffset = 10
    TabOptions.ShapeCornerRadius = 3
    TabOptions.StyleColors = True
    TabSpacing = 10
    TabMargin = 10
    ScrollButtonWidth = 20
    TabHeight = 40
    Tabs = <
      item
        Page = scGPToolPagerPage1
        Visible = True
        Enabled = True
        ImageIndex = 0
        Caption = 'TscGPToolPagerTab1'
        CustomOptions.NormalColor = clBtnShadow
        CustomOptions.ActiveColor = clBtnFace
        CustomOptions.MouseInColor = clBtnShadow
        CustomOptions.FocusedColor = clBtnFace
        CustomOptions.NormalColorAlpha = 70
        CustomOptions.ActiveColorAlpha = 230
        CustomOptions.MouseInColorAlpha = 40
        CustomOptions.FocusedColorAlpha = 255
        CustomOptions.FrameNormalColor = clBtnText
        CustomOptions.FrameActiveColor = clBtnText
        CustomOptions.FrameMouseInColor = clBtnText
        CustomOptions.FrameFocusedColor = clBtnText
        CustomOptions.FrameWidth = 2
        CustomOptions.FrameNormalColorAlpha = 50
        CustomOptions.FrameActiveColorAlpha = 80
        CustomOptions.FrameMouseInColorAlpha = 60
        CustomOptions.FrameFocusedColorAlpha = 80
        CustomOptions.FontNormalColor = clBtnText
        CustomOptions.FontActiveColor = clBtnText
        CustomOptions.FontMouseInColor = clBtnText
        CustomOptions.FontFocusedColor = clBtnText
        CustomOptions.TabStyle = gptsShape
        CustomOptions.ShapeFillGradientAngle = 90
        CustomOptions.GradientColorOffset = 30
        CustomOptions.ShapeCornerRadius = 5
        CustomOptions.StyleColors = True
        CustomGlowEffect.Enabled = False
        CustomGlowEffect.Color = clHighlight
        CustomGlowEffect.AlphaValue = 255
        CustomGlowEffect.GlowSize = 7
        CustomGlowEffect.Offset = 0
        CustomGlowEffect.Intensive = True
        CustomGlowEffect.StyleColors = True
        CustomGlowEffect.HotColor = clNone
        CustomGlowEffect.PressedColor = clNone
        CustomGlowEffect.FocusedColor = clNone
        CustomGlowEffect.PressedGlowSize = 7
        CustomGlowEffect.PressedAlphaValue = 255
        CustomGlowEffect.States = [scsFocused]
        CustomFrameColor = clNone
        CustomFrameColorAlpha = 255
        ShowCloseButton = True
        UseCustomOptions = False
      end
      item
        Page = scGPToolPagerPage2
        Visible = True
        Enabled = True
        ImageIndex = 1
        Caption = 'Settings'
        CustomOptions.NormalColor = clBtnShadow
        CustomOptions.ActiveColor = clBtnFace
        CustomOptions.MouseInColor = clBtnShadow
        CustomOptions.FocusedColor = clBtnFace
        CustomOptions.NormalColorAlpha = 70
        CustomOptions.ActiveColorAlpha = 230
        CustomOptions.MouseInColorAlpha = 40
        CustomOptions.FocusedColorAlpha = 255
        CustomOptions.FrameNormalColor = clBtnText
        CustomOptions.FrameActiveColor = clBtnText
        CustomOptions.FrameMouseInColor = clBtnText
        CustomOptions.FrameFocusedColor = clBtnText
        CustomOptions.FrameWidth = 2
        CustomOptions.FrameNormalColorAlpha = 50
        CustomOptions.FrameActiveColorAlpha = 80
        CustomOptions.FrameMouseInColorAlpha = 60
        CustomOptions.FrameFocusedColorAlpha = 80
        CustomOptions.FontNormalColor = clBtnText
        CustomOptions.FontActiveColor = clBtnText
        CustomOptions.FontMouseInColor = clBtnText
        CustomOptions.FontFocusedColor = clBtnText
        CustomOptions.TabStyle = gptsShape
        CustomOptions.ShapeFillGradientAngle = 90
        CustomOptions.GradientColorOffset = 30
        CustomOptions.ShapeCornerRadius = 5
        CustomOptions.StyleColors = True
        CustomGlowEffect.Enabled = False
        CustomGlowEffect.Color = clHighlight
        CustomGlowEffect.AlphaValue = 255
        CustomGlowEffect.GlowSize = 7
        CustomGlowEffect.Offset = 0
        CustomGlowEffect.Intensive = True
        CustomGlowEffect.StyleColors = True
        CustomGlowEffect.HotColor = clNone
        CustomGlowEffect.PressedColor = clNone
        CustomGlowEffect.FocusedColor = clNone
        CustomGlowEffect.PressedGlowSize = 7
        CustomGlowEffect.PressedAlphaValue = 255
        CustomGlowEffect.States = [scsFocused]
        CustomFrameColor = clNone
        CustomFrameColorAlpha = 255
        ShowCloseButton = True
        UseCustomOptions = False
      end
      item
        Page = scGPToolPagerPage3
        Visible = True
        Enabled = True
        ImageIndex = 2
        Caption = 'About'
        CustomOptions.NormalColor = clBtnShadow
        CustomOptions.ActiveColor = clBtnFace
        CustomOptions.MouseInColor = clBtnShadow
        CustomOptions.FocusedColor = clBtnFace
        CustomOptions.NormalColorAlpha = 70
        CustomOptions.ActiveColorAlpha = 230
        CustomOptions.MouseInColorAlpha = 40
        CustomOptions.FocusedColorAlpha = 255
        CustomOptions.FrameNormalColor = clBtnText
        CustomOptions.FrameActiveColor = clBtnText
        CustomOptions.FrameMouseInColor = clBtnText
        CustomOptions.FrameFocusedColor = clBtnText
        CustomOptions.FrameWidth = 2
        CustomOptions.FrameNormalColorAlpha = 50
        CustomOptions.FrameActiveColorAlpha = 80
        CustomOptions.FrameMouseInColorAlpha = 60
        CustomOptions.FrameFocusedColorAlpha = 80
        CustomOptions.FontNormalColor = clBtnText
        CustomOptions.FontActiveColor = clBtnText
        CustomOptions.FontMouseInColor = clBtnText
        CustomOptions.FontFocusedColor = clBtnText
        CustomOptions.TabStyle = gptsShape
        CustomOptions.ShapeFillGradientAngle = 90
        CustomOptions.GradientColorOffset = 30
        CustomOptions.ShapeCornerRadius = 5
        CustomOptions.StyleColors = True
        CustomGlowEffect.Enabled = False
        CustomGlowEffect.Color = clHighlight
        CustomGlowEffect.AlphaValue = 255
        CustomGlowEffect.GlowSize = 7
        CustomGlowEffect.Offset = 0
        CustomGlowEffect.Intensive = True
        CustomGlowEffect.StyleColors = True
        CustomGlowEffect.HotColor = clNone
        CustomGlowEffect.PressedColor = clNone
        CustomGlowEffect.FocusedColor = clNone
        CustomGlowEffect.PressedGlowSize = 7
        CustomGlowEffect.PressedAlphaValue = 255
        CustomGlowEffect.States = [scsFocused]
        CustomFrameColor = clNone
        CustomFrameColorAlpha = 255
        ShowCloseButton = True
        UseCustomOptions = False
      end>
    TabIndex = 0
    ActivePage = scGPToolPagerPage1
    TabImages = scGPVirtualImageList1
    FreeOnClose = False
    StorePaintBuffer = False
    DesignSize = (
      749
      133)
    object scGPButton1: TscGPButton
      Left = 7
      Top = 4
      Width = 87
      Height = 36
      TabOrder = 3
      TabStop = True
      Animation = False
      Caption = 'Menu'
      CanFocused = True
      CustomDropDown = True
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
      ImageMargin = 0
      TransparentBackground = True
      Options.NormalColor = 13792793
      Options.HotColor = 14580763
      Options.PressedColor = 13792793
      Options.FocusedColor = 13792793
      Options.DisabledColor = clBtnFace
      Options.NormalColor2 = clNone
      Options.HotColor2 = clNone
      Options.PressedColor2 = clNone
      Options.FocusedColor2 = clNone
      Options.DisabledColor2 = clNone
      Options.NormalColorAlpha = 255
      Options.HotColorAlpha = 255
      Options.PressedColorAlpha = 255
      Options.FocusedColorAlpha = 255
      Options.DisabledColorAlpha = 255
      Options.NormalColor2Alpha = 255
      Options.HotColor2Alpha = 255
      Options.PressedColor2Alpha = 255
      Options.FocusedColor2Alpha = 255
      Options.DisabledColor2Alpha = 255
      Options.FrameNormalColor = 12478998
      Options.FrameHotColor = 12478998
      Options.FramePressedColor = 12478998
      Options.FrameFocusedColor = 12478998
      Options.FrameDisabledColor = 12478998
      Options.FrameWidth = 1
      Options.FrameNormalColorAlpha = 255
      Options.FrameHotColorAlpha = 255
      Options.FramePressedColorAlpha = 255
      Options.FrameFocusedColorAlpha = 255
      Options.FrameDisabledColorAlpha = 255
      Options.FontNormalColor = clWhite
      Options.FontHotColor = clWhite
      Options.FontPressedColor = clWhite
      Options.FontFocusedColor = clWhite
      Options.FontDisabledColor = clGray
      Options.ShapeFillStyle = scgpsfGradient
      Options.ShapeFillGradientAngle = 90
      Options.ShapeFillGradientPressedAngle = -90
      Options.ShapeFillGradientColorOffset = 8
      Options.ShapeCornerRadius = 3
      Options.ShapeStyle = scgpTabTop
      Options.ArrowSize = 9
      Options.ArrowAreaSize = 0
      Options.ArrowType = scgpatDefault
      Options.ArrowThickness = 2
      Options.ArrowThicknessScaled = False
      Options.StyleColors = True
      HotImageIndex = -1
      FocusedImageIndex = -1
      PressedImageIndex = -1
      UseGalleryMenuImage = False
      UseGalleryMenuCaption = False
      ScaleMarginAndSpacing = False
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      SplitButton = False
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
      ShowGalleryMenuFromTop = False
      ShowGalleryMenuFromRight = False
      ShowMenuArrow = False
      ShowFocusRect = True
      Down = False
      GroupIndex = 0
      AllowAllUp = False
      OnDropDown = scGPButton1DropDown
    end
    object scComboBox1: TscComboBox
      Left = 579
      Top = 7
      Width = 170
      Height = 24
      Style = csDropDownList
      ItemIndex = -1
      WordBreak = False
      SelectionStyle = scstStyled
      SelectionColor = clNone
      SelectionTextColor = clHighlightText
      ImageIndex = -1
      ItemHeight = 18
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 4
      StyleKind = scscbDefault
      ShowFocusRect = False
      OnClick = scComboBox1Click
    end
    object scGPToolPagerPage2: TscGPToolPagerPage
      Left = 1
      Top = 41
      Width = 753
      Height = 91
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      CanScroll = True
      FillStyle = scgpsfGradient
      FillGradientAngle = 90
      FillGradientBeginAlpha = 100
      FillGradientEndAlpha = 0
      FillGradientBeginColorOffset = 0
      FillGradientEndColorOffset = 50
      FillColor = clBtnHighlight
      FillColorAlpha = 100
      FillColor2 = clBtnHighlight
      Color = clBtnFace
      BGStyleKind = scgspbFormBackground
      ScrollButtonWidth = 17
      CustomImageIndex = -1
      WallpaperIndex = -1
      HotScroll = False
      AutoSize = False
      ScrollType = scstHorizontal
      ScrollOffset = 0
      ScrollTimerInterval = 50
      ScrollButtonArrowWidth = 2
      TouchScroll = False
      StorePaintBuffer = False
      object scLabel2: TscLabel
        Left = 24
        Top = 19
        Width = 238
        Height = 13
        TabOrder = 0
        DragForm = False
        DragTopForm = True
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
        Left = 308
        Top = 19
        Width = 304
        Height = 13
        TabOrder = 1
        DragForm = False
        DragTopForm = True
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
      object scLabel6: TscLabel
        Left = 308
        Top = 62
        Width = 347
        Height = 13
        TabOrder = 2
        DragForm = False
        DragTopForm = True
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = True
        UseFontColorToStyleColor = False
        Caption = 
          'Use TscGPToolPagerPage.CanScroll property to enable / disable sc' +
          'rolling'
      end
      object scLabel3: TscLabel
        Left = 24
        Top = 63
        Width = 250
        Height = 13
        TabOrder = 3
        DragForm = False
        DragTopForm = True
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
    object scGPToolPagerPage3: TscGPToolPagerPage
      Left = 1
      Top = 41
      Width = 753
      Height = 91
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      CanScroll = True
      FillStyle = scgpsfGradient
      FillGradientAngle = 90
      FillGradientBeginAlpha = 100
      FillGradientEndAlpha = 0
      FillGradientBeginColorOffset = 0
      FillGradientEndColorOffset = 50
      FillColor = clBtnHighlight
      FillColorAlpha = 100
      FillColor2 = clBtnHighlight
      Color = clBtnFace
      BGStyleKind = scgspbFormBackground
      ScrollButtonWidth = 17
      CustomImageIndex = -1
      WallpaperIndex = -1
      HotScroll = False
      AutoSize = False
      ScrollType = scstHorizontal
      ScrollOffset = 0
      ScrollTimerInterval = 50
      ScrollButtonArrowWidth = 2
      TouchScroll = False
      StorePaintBuffer = False
      object scLabel28: TscLabel
        Left = 11
        Top = 5
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
        DragForm = False
        DragTopForm = True
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
        Left = 18
        Top = 56
        Width = 41
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        DragForm = False
        DragTopForm = True
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
        Left = 66
        Top = 46
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
        OnClick = scButton10Click
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
    object scGPToolPagerPage1: TscGPToolPagerPage
      Left = 1
      Top = 41
      Width = 747
      Height = 91
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      CanScroll = True
      FillStyle = scgpsfGradient
      FillGradientAngle = 90
      FillGradientBeginAlpha = 100
      FillGradientEndAlpha = 0
      FillGradientBeginColorOffset = 0
      FillGradientEndColorOffset = 50
      FillColor = clBtnHighlight
      FillColorAlpha = 100
      FillColor2 = clBtnHighlight
      Color = clBtnFace
      BGStyleKind = scgspbFormBackground
      ScrollButtonWidth = 17
      CustomImageIndex = -1
      WallpaperIndex = -1
      HotScroll = False
      AutoSize = False
      ScrollType = scstHorizontal
      ScrollOffset = 0
      ScrollTimerInterval = 50
      ScrollButtonArrowWidth = 1
      TouchScroll = False
      StorePaintBuffer = False
      object scToolGroupPanel3: TscToolGroupPanel
        Left = 361
        Top = 0
        Width = 280
        Height = 91
        Align = alLeft
        TabOrder = 0
        Caption = 'scToolGroupPanel3'
        CaptionHeight = 17
        ShowDialogButton = False
        StorePaintBuffer = True
        object scButton3: TscButton
          AlignWithMargins = True
          Left = 15
          Top = 6
          Width = 74
          Height = 60
          TabOrder = 0
          Animation = True
          CanFocused = False
          CustomDropDown = False
          Margin = -1
          Spacing = 1
          Layout = blGlyphLeft
          Images = scGPVirtualImageList2
          ImageIndex = 4
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
          StyleKind = scbsToolButtonTransparent
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
          DropDownMenu = PopupMenu2
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          SplitButton = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object scButton9: TscButton
          AlignWithMargins = True
          Left = 109
          Top = 6
          Width = 60
          Height = 60
          TabOrder = 1
          Animation = True
          CanFocused = False
          CustomDropDown = False
          Margin = -1
          Spacing = 1
          Layout = blGlyphLeft
          Images = scGPVirtualImageList2
          ImageIndex = 5
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
          StyleKind = scbsToolButtonTransparent
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
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          SplitButton = False
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object scButton2: TscButton
          AlignWithMargins = True
          Left = 201
          Top = 6
          Width = 60
          Height = 60
          TabOrder = 2
          OnClick = scButton2Click
          Animation = True
          CanFocused = False
          CustomDropDown = False
          Margin = -1
          Spacing = 1
          Layout = blGlyphLeft
          Images = scGPVirtualImageList2
          ImageIndex = 6
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
          StyleKind = scbsToolButtonTransparent
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
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          SplitButton = False
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
      object scToolGroupPanel2: TscToolGroupPanel
        Left = 184
        Top = 0
        Width = 177
        Height = 91
        Align = alLeft
        TabOrder = 1
        Caption = 'scToolGroupPanel2'
        CaptionHeight = 17
        ShowDialogButton = False
        StorePaintBuffer = True
        object scButton7: TscButton
          AlignWithMargins = True
          Left = 16
          Top = 6
          Width = 60
          Height = 60
          TabOrder = 0
          Animation = True
          CanFocused = False
          CustomDropDown = False
          Margin = -1
          Spacing = 1
          Layout = blGlyphLeft
          Images = scGPVirtualImageList2
          ImageIndex = 2
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
          StyleKind = scbsToolButtonTransparent
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
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          SplitButton = False
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object scButton8: TscButton
          AlignWithMargins = True
          Left = 95
          Top = 6
          Width = 60
          Height = 60
          TabOrder = 1
          Animation = True
          CanFocused = False
          CustomDropDown = False
          Margin = -1
          Spacing = 1
          Layout = blGlyphLeft
          Images = scGPVirtualImageList2
          ImageIndex = 3
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
          StyleKind = scbsToolButtonTransparent
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
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          SplitButton = False
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
      object scToolGroupPanel1: TscToolGroupPanel
        Left = 0
        Top = 0
        Width = 184
        Height = 91
        Align = alLeft
        TabOrder = 2
        Caption = 'scToolGroupPanel1'
        CaptionHeight = 17
        ShowDialogButton = True
        StorePaintBuffer = True
        object scButton5: TscButton
          AlignWithMargins = True
          Left = 17
          Top = 6
          Width = 60
          Height = 60
          TabOrder = 0
          Animation = True
          CanFocused = False
          CustomDropDown = False
          Margin = -1
          Spacing = 1
          Layout = blGlyphLeft
          Images = scGPVirtualImageList2
          ImageIndex = 0
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
          StyleKind = scbsToolButtonTransparent
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
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          SplitButton = False
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object scButton6: TscButton
          AlignWithMargins = True
          Left = 99
          Top = 6
          Width = 60
          Height = 60
          TabOrder = 1
          Animation = True
          CanFocused = False
          CustomDropDown = False
          Margin = -1
          Spacing = 1
          Layout = blGlyphLeft
          Images = scGPVirtualImageList2
          ImageIndex = 1
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
          StyleKind = scbsToolButtonTransparent
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
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          SplitButton = False
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 160
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
  object scStyledForm1: TscStyledForm
    DWMClientShadow = False
    DWMClientShadowHitTest = False
    DropDownForm = False
    DropDownAnimation = False
    DropDownBorderColor = clBtnShadow
    StylesMenuSorted = False
    ShowStylesMenu = False
    StylesMenuCaption = 'Styles'
    ClientWidth = 0
    ClientHeight = 0
    ShowHints = True
    Buttons = <
      item
        AllowAllUp = False
        ImageIndex = 0
        Down = False
        Enabled = True
        GroupIndex = 0
        Visible = True
        SplitButton = False
        Style = scncToolButtonTransparent
        Width = 0
        Height = 0
        MarginLeft = 0
        MarginTop = 2
        MarginRight = 0
        MarginBottom = 2
        Position = scbpLeft
        Spacing = 5
        Margin = -1
        ContentMargin = 0
        CustomDropDown = False
      end
      item
        AllowAllUp = False
        ImageIndex = 1
        Down = False
        Enabled = True
        GroupIndex = 0
        Visible = True
        SplitButton = False
        Style = scncToolButtonTransparent
        Width = 0
        Height = 0
        MarginLeft = 0
        MarginTop = 2
        MarginRight = 0
        MarginBottom = 2
        Position = scbpLeft
        Spacing = 5
        Margin = -1
        ContentMargin = 0
        CustomDropDown = False
      end
      item
        AllowAllUp = False
        ImageIndex = 2
        Down = False
        Enabled = True
        GroupIndex = 0
        Visible = True
        SplitButton = False
        Style = scncToolButtonTransparent
        Width = 0
        Height = 0
        MarginLeft = 0
        MarginTop = 2
        MarginRight = 0
        MarginBottom = 2
        Position = scbpLeft
        Spacing = 5
        Margin = -1
        ContentMargin = 0
        CustomDropDown = False
      end>
    ButtonImages = scGPVirtualImageList3
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
    CaptionAlignment = taCenter
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
    CaptionWallpaperIndex = -1
    CaptionWallpaperInActiveIndex = -1
    CaptionWallpaperLeftMargin = 1
    CaptionWallpaperTopMargin = 1
    CaptionWallpaperRightMargin = 1
    CaptionWallpaperBottomMargin = 1
    OnChangeScale = scStyledForm1ChangeScale
    Left = 312
    Top = 232
  end
  object scStyleManager1: TscStyleManager
    ArrowsType = scsatDefault
    MenuHookEnabled = True
    MenuAlphaBlendValue = 255
    MenuWallpaperIndex = -1
    MenuBackgroundIndex = -1
    MenuBackgroundOverContentIndex = -1
    MenuHeadersSupport = True
    MenuSelectionStyle = scmssStyled
    ScaleStyles = True
    ScaleThemes = False
    ScaleResources = True
    ScaleFormBorder = True
    Left = 312
    Top = 168
  end
  object scGPVirtualImageList1: TscGPVirtualImageList
    ColorDepth = cdDefault
    DirectDraw = True
    PixelOffsetMode = scgppomDefault
    InterpolationMode = scgppimDefault
    Width = 24
    Height = 24
    DefaultWidth = 24
    DefaultHeight = 24
    SourceImageCollection = scGPImageCollection2
    Left = 187
    Top = 296
    Bitmap = {}
  end
  object scGPVirtualImageList2: TscGPVirtualImageList
    DirectDraw = True
    PixelOffsetMode = scgppomHighQuality
    InterpolationMode = scgppimDefault
    Width = 48
    Height = 48
    DefaultWidth = 48
    DefaultHeight = 48
    SourceImageCollection = scGPImageCollection1
    Left = 184
    Top = 232
    Bitmap = {}
  end
  object PopupMenu2: TPopupMenu
    Left = 424
    Top = 232
    object Item11: TMenuItem
      Caption = 'Item1'
    end
    object Item21: TMenuItem
      Caption = 'Item2'
    end
    object Item31: TMenuItem
      Caption = 'Item3'
    end
  end
  object scGPVirtualImageList3: TscGPVirtualImageList
    DirectDraw = True
    PixelOffsetMode = scgppomHighQuality
    InterpolationMode = scgppimDefault
    SourceImageCollection = scGPImageCollection3
    Left = 184
    Top = 168
    Bitmap = {}
  end
  object scGPImageCollection1: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300000DD700000DD70142289B780000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000000
          C64944415478DAEDD4B10DC2400C85E13B89A4C820A4A00E2BA48E943DA04B0B
          2565F6600B4A26A0CA162912A10B505220E5CE967DC7FB17B03FC9B275CE9998
          B3006807F4F78945F81A7B3EEEF353948022B3669C1D094204506F37E6363C49
          10228066977D96A7408801DE51204401140871402842052004A106E08B5005F0
          41A8037C230E556ED501D604000000009038E0727D042FD9B52500DE00EE00E0
          38A15F2703C05A00770024FF46A307700740F26F347A007700000000000000F0
          DF00ED0120DD02D1ADBEB0EFB2A7080000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          380000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300001BAF00001BAF015E1A911C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000002
          D24944415478DAEDDDBF6B13611CC7F1EFD552AB544531DAFA0B91386472B183
          93A00507D1455C9CFC07D4D945AD20CEEA5F5028BA75B0E8A68E0E7571B1830E
          0E6AA95D6AAB29B431E773A68B82F73C1793BCF3249F373CD7409FC0DDBDCA73
          81C0D3244D53535C8900D8040027003801C009004E0070028013009C00E00400
          27003801C009004E007002802B0E309D94EDA75D71AF4E6E8EB1969E516A9376
          35BD43DF984E550020496CCAAEB917F7DDD8DED6B3EA23844080DF377FD6BD38
          DFB133EB13843080A9E4BA3B3EE8F8D9F501821FA0B1E6BFB5762F3BFFAAC711
          FC0053C92D779C44CFB2871142009EBAE305FA447B152104E08BB5FAA366B3F5
          204208C09F138686CC76ED341B1E36DBE6C6E0207D0D6CB55ADDD63796DCCF77
          56DBB867E7165F14797B31803DBBCDF695CC0606E8CBEECEEA75B3D5EF335659
          BF6C0797EA216F09073872C86C6484BEC438AAAE7DB5F28FB110843080EC2F7F
          743F7D5971F56D65C6263E5FF24DF3033CD99ADAB1A35A768A962D47CBCB13BE
          67821FE07929B5D25EFA72E26C65F5959DFD74266F8A1FE0E5E1D47668ED6FAA
          EADAA29DFE389A37C50FF0FA78DAF71F359B2DFB887AEAFD96BC297E80B98ABE
          B1F99FC6E793BC5F0BA0DD09004E0070028013009C00E0040027003801C00900
          4E0070028013009C00E0040027003801C009004E0070028013009C00E0040027
          003801C009004E0070028013009C00E0040027003801C009004E007002801300
          9C00E00400D70280EED9B029BE161CC081BC092100DDB165599CCD3A808B7913
          4200F84DFBE2EDB603B89B372104A0EC8EDCB695F15675E38403F89037296CE3
          D6B90AB3716BDCDD7037FFA16F522840F624EFECD6C571F7CCB2E7E6F8BCF7E6
          866FDEDD40E8CCE6DDF1962D3B37DD781472F3B38A6F5FDF7826B46FFBFAF85A
          70E3CDE678EC5BF3FF4EFFC0014E0070028013009C00E0040027003801C00900
          4E0070028013009C00E0040027003801C0FD02F752295F3DD46E6D0000000049
          454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          380000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300001BAF00001BAF015E1A911C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000008
          A04944415478DAED9D096C544518C7BFD9EE422D422B5150048C274231A014AD
          2686430476ABC513E3818846C578A1962A1A284814453CE37D4410305A750B08
          D4B6A15B500E432126CAE581415BA01CA5504AB7EDF63DBF69B7A4455A66DE9B
          635FFBFEC997D9B433F366BEDFEECCBC9979F388699AE04A9F880B40AF5C009A
          E502D02C178066B90034CB05A0592E00CD720168960B40B3621A0059B5C587C1
          10B4BE68BD4E66A33627D3A8BB8F1B69F6D9807F0E25C1A6E287A04E775D5AAD
          63AC0140A777C5C08F360E2D8096D456FC2880B65481B612C12CAD3620F7A74C
          A8D45DC716F58D0500E874FA6D4E8746A78F44EBC49A96014073D5A215121396
          62B82C3FB3E197A2B7EE3A01A0E3FB60301B6D029AC74A1E9C009ACB20041612
          0F4CCF7B1AFED5E6031D00D0F1B4599986F6045ABC9DBC6C0068529800BC53E7
          8339A1290DCD955A5FA804808EEF8CC16368CFA3751791A700004D2AC7A6E965
          EF69F0EECAC7A146994F540140E7A761F01EDA7922F31508A049BBB0C37EB420
          035628F18B0A00E8FCE73078092CB6F36D4902002A03ED8582A9F08A64D7C805
          808EA7EDFB676877C9BA8624004DFA32720C1E08654158D605A40140E79F8BC1
          12B4145985A7920C80AAD8F0C24DAB9E825219994B0180CEBF0A831CB473243B
          4705000013F6783C70735E06FC2C3A6BE100A2CE2F029BC34B562901D0A8B087
          C070D110840288363B1B41C137BF490A0134FC120C1F0C15D91C090310ED707F
          04C96DFE89520AA051C5D8315F2BAA6316096031481CEDB4260D00A8BEC421EA
          DD22321202203ACE9FA3C3139A00504D13719F601B40F40E771948B8C9629146
          0006DE31A7DBBD63B605203AB7B303044F2FF0482300AA5DBE78E86767EEC82E
          80673098A7D3039A01A00321233F135EB79EDE2280E894F25F206856D3AA7403
          4095477C70A1D5A96C3B005EC5205377ED630000760530377F2A3C6B29AD1500
          D195ACDF41D1DD6E5B8A050040EF92E3E0122B2B6B5601CCC760A2EE5A53C508
          00200416E467C07DDCE978014417D029692DC3CE13152B0080AE319BD08777A1
          DF0A80C9187CA0BBB64D8A21007444F40802F8902F0D3F805C0CC6EAAE6C9362
          0900EA07BC3BF6F324E00210DD34750038F6ED08D63E689C6D2D46DB44C331BF
          2683198114C368D84197824392A118F6D054BEDA6A13CEE4D9FCC50B603C065F
          6BA858041AE79A669BD725B7B9CD30E563F075AF80E92669D8F6E2555E520277
          1464403673744E003A663CB7A14D44C76FE44934EA75184A0C58801FFB2B2E2F
          D74C293380E84659DA0424312510A32FD01E46E75B9A7B1F310BE2BD09F0117E
          BC5761992B0E25420FD60DC13C00523158AFB022F49B7F8555E737290A6133A8
          FC2598707541266C6089CA034065FB4FDBFC6B789B9DD6146D8ED681AA3E81A3
          1FE001300583379554A0B1B39D2132C3D173E145EC98A72B293D81A710C05B4C
          513900CCC560AA82E2D37EA6F7A9463BBCA2A3A3330E4309A818A212780D0130
          4D54F2005884819075D05368053AFF0619195F3F1796A373D214D461318E84EE
          6189C803A01083110A0A3F0B01CC94913102988900B214D421840046B244E401
          B01D837E0A0A9F8E00BE9791F1987970A36136AC5FCBD60E0470294B441E0047
          30E8AAA0F0BD10C01E19198F7D0BCEA9AF53F258522502E8C612B14301480DE4
          768B8F370F2BA8434D5130C0B458D5A19AA091B7E5251B46FD6F0AEAB01F0130
          8DB63A54273CECB61F02C430E43FF942CC3F8BBE4BBB982D6A071A860EBF75C5
          FB609247E457816C2E0AFA8730C5EC28376203C77FD3E9CC4817DAB7A8D84653
          804DD06896881D662A62D82DB9F713303F53517802F076281898C214B7434CC6
          8D5BD63312E7DD0A8A369111020F86BE0B7CCA14B7BD4F478F1FFF4DDCBEC8E9
          4100335D55C13D06A4162E09303D49D3BE176446147921E9D82293C01D0ACB6C
          106F4262287BF85196C8ED764912CBDAFDE2D0C179BDB61E9DA4B8BCF9D8018F
          612E677B5B94C7322660F02434EC5B3593AE5CBCFBF7D32A2297A82A283A7442
          28276D11477C676F4B81463803A3463709D1B6FEF84382BE707D24757EE9414F
          BDD9537EF1CCA3472366CFE265371C634DE1F88D592CEA5656537EF9B77BBBE0
          C7CE32AF43802C0805FDF771A571FAD64456F5FEA572E7856BCB2F90790D8FE9
          1955983376154F1AC76FCEE5D165CBF76DEDBEAB7A80A4EC4B560FDA789E9995
          65F02472FCF6741E613F00A95F94EEF41DAB17FE4B402FBEB23A1898C69BCEF1
          0F68F0AA73657DF8AA8525D5C4843304668B5E34935707D3B6F12674FC234A56
          84CDD05E6C8ECEC28F7122F223001F858281C996D23AFD213DABBA60EDA11D7D
          7E39226281A9341C260336ACF41FB192D8F18FA9DAD190EC3DDB4FDF5FCBB478
          DEAA0C925EB4C46F7905CFF10F6ADB515CAD615E3DBFB434AECEE86DD1035F15
          05FD77DA2983E38F2AB0AB2EE57595295FED8EC3614C0267CD0F1A5EE8BF26DB
          BFDFCEF51D7F5887089DBDBD6A57BF5507B87EC526907B5607FD8BED5EDBF1C7
          D58852FFFC03DB7AFC51C5B685DD345716E5A409D9E2E8F8039B4409EF0BE0CA
          85A57FC457464EB19B81AC0F8761ACD551CFFFAFEBF023CB44CA576DD4A52E28
          398477CCADEDE9F991781302AC8B2D2C72FCA17DA295B8BBE6C0E09CBD89F8D1
          77C2BF429DABBC37E6E58DAE12793DC71F5B29437D371DFEF3FC0D151735FB53
          41ADB76ADCBAECDBAB455FCBF107B7CAD2A0A5655B934AC274E634972426DC12
          FA7CB894D3731D7F74B12CD199D3C13965C19A83E577FE967D7BADACEB38FEF0
          6E49AA477B036D86DD6D31A792E38FAF97203AA53C091D2FFC98E293C9F12F70
          1028FAADA7138B59E8FCF6F70287161715F80A1301A28EA723B639E8F8CDCA7D
          E1F497F8D8103DD1840E10DE41C7FFADCD074E7F8D9505D145247AA8D227E878
          158F2BB55DF75800D0A2409C2F726350195A088D6E172944A7EFD45DC716F58D
          35002D0AC7F02A43686CBAF635B3B268489F8A5F830EDFA2BB1E6DD631960174
          04B90034CB05A0592E00CD720168960B40B35C009AE502D02C178066B90034EB
          3F04FE3C7D4A41219F0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          380000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300001BAF00001BAF015E1A911C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000003
          7F4944415478DAED9CBD4F53511887CF6DB54989696282118DD185C49105FE00
          3E1651989C98286171808ECA42838B3AA2834B533A313951D1A51F7F005D184D
          5C34066A6C6242CC6D526DEB7B1B62A440EFB9BDB7F777DBFE9EA4B98770EE21
          E77D7A3E4ACF7B8D66B3A9080E8302B05000180A0043016028000C0580A10030
          3D13B07D501B28B389A988D18B762940130A0043016028000C0580A100301400
          8602C05000180A0043016028000C058009BC80D9D9D9330D2DBEFCE84358FC63
          EFD983333FE7F3794F8450802614008602C05000180A00131801ABABABE38D46
          63498A9372EFA46118B7D0C141223138961894A4580A8542BBA954EAB393FBB5
          05C81F31E2F1F89A145FC86B04DDF18062CA6B636767E74D5333B05A02ACE02F
          2F2F67E5F210DDC37E4062BA9FC96416742468095859595997CB36BA637D4622
          9D4EBFB6AB642BE074CE3F549C769C62CA9A3061B726D80A9077FFA65CB6D0BD
          E95392320A9E77AAA023604F2E0BE89E048DEFF7AEAA83F96BADF2D4875FEAE6
          97DF1755CB8A80C54EEDD80A909DCFD1B06F352FE2FD93EBEAC79D2BADF28D6F
          7FD4A3B73FCFD5B1B6A8B223BADDA91D9D113050FF56F60A1D011632023A7E60
          A3802ED19C8228000D0580A1003014008602C05000180A0043016028000C0580
          712DA0FDCB76E20CBB2FEF29A0C75000180A0043016028000C0580A10030BE09
          B0DAA956ABEAE4E444D56A3574BF7B42241251B1584C45A351EBB4A0D63DBE09
          304D53552A15748C7C617474548D8CE89D53F34D40B95C3EF3CEBFBB75888E93
          A77C4D4EFC2B5B23616C6C4CEB3E0AF088C00B689F8206594020A7A0F6457810
          05047A116E67D0539474A1008F8009989B9B3B923A8E0FE752402BB3E83897CB
          B93B9C2B23A0ABE3E914D0222B23C0DDF17419019B52C7718286AE8057EF3E79
          1725173C7D7CBFE3EFBB1C01491901EE1234A6A7A7C743A190E314250A5066A3
          D19828168BEE52942C666666D6C5A6A324BD611720714D140A05F7497AAD4A82
          AC0559A9AB9DA63ACC02245CFB32F77B97A67ADAA821D3D19A5CB412B5877411
          36259E1B32ED789BA8FD3FD69A100E87974E1F533079D916755804585B4D8941
          C97A5C41BD5EDFB59BF3CFDDCF4796E911F84796B543017AC005F8B508DB2DB2
          7650804B28E012288002B4185801FD020580A1003014008602C0500098BE1340
          F4A0003014008602C05000180A0043016028000C0580A1003014008602C0FC05
          8496456EC6C0B6D40000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          380000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300001BAF00001BAF015E1A911C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000004
          C24944415478DAED9C4F6C54451CC77F336FDF62A1BBD4464D7683B410018336
          2662C2C9062E848389D184C40B21C201EE4AB65C2078E9D6EAC583B7AD26062E
          441BAE46A5812BB58926C662026DB15B0E50688B9476F7BDF1B7084D53DBF776
          DFBE99DFB0EFF7499AFDD379F3EF3B3BBF99F9CD8C504A014387600168610188
          6101886101886101886101886101886101886101886101886101886101886101
          886101D6A17B70E66DE5ABF715885E092A8F3594AF7D2F00CA3E88B200755548
          7179E274EED766D3620156D15D9CF94009D58F6FF7D4F9C8B850E2CC445F6E38
          6A9A2C00B2F3CB992EAFA2BEC326FE6EA408145C735C71F4E627B9C9461F4DBC
          003B8A7F1FF085BC846F5F6A32AABB52F9476EF56D1B69E4A1440BF05FE53B3F
          621376E3895154A4F20E352242620578D2ED54D57568BEE5AFE5AE9312EFD4DB
          1D255680AE62F96AE43E3F0CB409937DF9DE7A82265280A7A39D1F74A681A3A3
          0FEB191D255280AE81F29F50FF50332AE39385FCEB61811227C0D349D6A889B4
          70B2B62F6CB2963801B0F59FC797B38692FB0C7F05E78202244E80ED03335704
          A80326D2522046A60AB9834161122740D7C0F41416FB55136909801B13857CA0
          AD498400DB0B63F92AB8C7F0EDC76EE78BBB9E548D191E621794090AD0B20288
          93A36E2EBBE93D21D5092CE161FCCAA97DEF7676020BA091DCA77FEC954EF538
          F6BF47F1E32B6BFFEF76740048C7485E12D305BD5C18CFB862F9232CF0092CCE
          FEA0B04E762BC854CA48BE5ADE08E7FB7EEF150AB0B5C311FCB8B99E6764DB66
          70DADA4C65B1F586A1AB0D2AB6B15D8D3E2FB0F5A7F05760829699886D6450A3
          92DADA01C2D16E07CC2D45E8F2A18619D4A8C8741A9CF64CF311056064314E87
          0FB51183DA0CA94C16841B931F662DBA97A375F850A318D466108E4411D01648
          1977D47A1D3271FA504565E9D4F2C23FBB21A2416D96DA7054A20822B6799966
          9764DC3ED45AD2FEC21CF8D56A5C35D00837310743E94CF68672D35F83ED4E79
          6D3E54DF872A8AA03C3FD668376011BBBFEF959043773E7F63048BAE56CA66FB
          B6149D3E5455A9A008F33AA27EC6280E164A4B50B9385BDC37B751206B376699
          F0A17A0F17C05F5E8E33CA7B28ED05C797A5DB836FFED6C883D66D4D34E14355
          9E07D5B907CD4683F5033F61C595DA1FBD70F9AFAF5E5BD299E7380815C0A40F
          B53A8FB6209A419EC0627C23A5F3ED7471EF9489BCC645A800267DA8DEE222F8
          8B8FEA0DFE18FF86850F43E52F7A7E7E66509F37420530E943AD0D47BDF9B9B0
          6063D8170FA5245C98ECEFB96FA69AF411DE050D94C731C46E23B9F13DA83C58
          D70EDCC759F24570FCD274FF5B63E6AB491FF574410BF8D26E263B0A2AB3B32B
          1F3067BF48A54AE92DD9E15BE7BA1F5356942E580062B80B22868D30313C0C25
          862762C4F0520431BC18B75E796D5B8CABC1CBD1EB62EE9C303B640230754E98
          5D9281983927CC4EF9200C9D13E66D2981983B27CC1BB336C0F43961DE9AF87F
          5AEA9C306FCEB508DE9E6E117C40C312F8889245F0213D4BE063AA16C107B52D
          82AF2A20862FEB2086AFAB21862F6CB200BEB28C18BEB4CF02F8DA4A62F8E256
          0BE0AB8B2D802FEFB680E7665B4AAB63F5C6AC2461E5D644460F2C00312C0031
          2C00312C00312C00312C00312C00312C00312C00312C00312C00312C00312C00
          31FF02A5CC977DE91974B00000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          380000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300001BAF00001BAF015E1A911C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00000A
          7A4944415478DAED5D79705557193FEF2521640392860061B3582B96C58E3075
          5FEA54E00FE874642A0E4B952AE0D64A2B6DED58D92C8EDD2B5D2C60ED5816AD
          4B3B421D2175EC4C5D0769072DD6A508436843083194242F212479CFDF2FEFA1
          6FDEBC77EF59736FF2DE6FE69B0F78E79CFB9DF3BBF72CDFF9CE219248244401
          C121522020581408081805020246818080512020601408081805020246680958
          B9FEFE65509F83D4181615871C806C796AF3BACEA0EB9589501280C69F01F52A
          EDB358EC3D20E0EB41D72D136125E06B50F75B2EF628087847D075CB445809B8
          17EA36CBC57680805141D72D136125E069A8150E8AAE00095D41D72F1D612580
          83E63C07454F0301C783AE5F3AC24AC061A8773B28FAFD20E04F41D72F1D6125
          A0196A9C83A2AF0301BF08BA7EE9081D0168FC28D405489183E2BF0002B6055D
          C7748491803AA8D38E8ADF000236075DC77484918059507F7554FCE320E0CB41
          D7311D6124E013500D8E8A7F16042C0EBA8EE9B042001AED0AA80AC81154B0DB
          B0ACE5503B1DD5F7F7B0EF4316EACBAF9475DE67BAAE302600C6DC04F5308483
          672BE451C86330AC55B19C4A28760FB742EA4C1B2907E898FB296433EC7B4DD1
          3EFAA5AE85DC0EF940EA9F0F41AE3671F2191100A3E85B39021991F113DF8AA7
          200FC2B8633E658C86BA19B256987B3E65214D04EC2B15C955F93AC83BB324B9
          0F65DCAE6B882901FBA0167A24E987FC1C722F8C7C394B7EBE51DB859B39BF0C
          68DF7D908DB0AF27C3B631505F14C99763BC4719BD90D9C8FF0F1D03B4098081
          F3A1F62B6479512489D88FBC748AB1DB5A69A9214DC1AF60256C3B08DB26E3CF
          B74056412A25F3BF80BC5AAE132D026064B148FAEBA76B3C93F9D8ED4CB1D070
          36C1AFE13790AB21C51AF9178384675533E912C0FEFAA1416B1AD878BEBB4B5C
          38DF25FAFBFA21BD90BE01218A8A8B5352022912A523CB456959396A67733FC7
          178D9077A9CE8A940940E38F85FA17648CCBDA241271D1DDD929CE774162B181
          BF2B552C1215232B2A445945D580E6DF07017783806F2AD9A941007D29AB5DD5
          80F6C4DACF8A8EB36D22DEDF6FA5CC685191A8AAAE1115A3AA4184D3AF8203F9
          0C90F06FD90C4A04A0F1AF84E26CC6C9EBD4D5714E74B4FD47F4F5F53A699D62
          745155359788F2AAD14ECA4FE1972060A16C6255025E82FAB06D8BF9A6B735BF
          297ACE1B2DA2A5513AB24CD48C9F38F06538C22290F0BC4C426902D0F84BA07E
          6CDBD2DE9E9E81C677F5D6E702BF069250525AEAA27876413332D716D9204500
          1ABF0C8A0B0DAB53C7EE58A778ABE59488C7D506585B8846A3624CDD040CD4B2
          D37D25AC0701DFF24B244BC046A80D36AD63E3F3CD0F03F825382081FD29A7A5
          27BC12F91280C6E75BCFB7BFCC9665EC765A9B1A037BF333C12FA1B67E8A8BEE
          C8D7FD2D43C033509FB2651107DC336F9C18F43EDF0F1C13C64E9AEA62609E0F
          1272EE6F7812900A113C62D39AD6371B076DB6A30ACE8E6A275AF7901C0401EF
          CDF5A31F0174C33E6DCB12CEF3CFB634DBAEA05554D78DB7BD4EE0DBC680B0AC
          0DED47003D83FC028C43FAF89C96C6E3A1EB7A32C1AEA86ECAA53657CC3F42E3
          2FCDF5A3CC18F051A8DD90892656749E6B13E75ACF586E2E37185D3B56548EB6
          B23744EFE88D20E05CAE04B2D3505AB303F2491D2BE8486B3E71CC866F879FCF
          7E147828128DBE82B7F4E564F989398978FC3D786DE7E2AF0B2025260FE1403C
          7EEA3413075E0CF25534FC937E09555D113C30F15D91DC80974657473BFAFE53
          266D421C8E27C4677EBD678767C8CA354B57CD8E46C40FF1C72B4D1E568D055A
          799556CFFB67C83234FEEB328975BCA1DC07DE03992B9BA7ED7493E8EEECD06D
          8B7EBC8A5BDA2A22771FDAB64D6A0099BB664D494D2C71173E8D6F08CD08BBB2
          CA2A5133AE5E250B1735F78864F097F440A7BB21C34F7C13E40EE1E71945F94D
          C78F2AFBF3FF6F616473C3AEED5AABF079CB576FC283D7EB3D362AEA2FBD4C76
          53E72464391AFE25E5E7186ECA7380660CCFE45C697ABA62A2F5D41BBA8F38DC
          5619BD4AF6CDCFC4C097D0193F2834BBA3DA09934469B96F6FCB852A634EDFD2
          79868DB820EE8C71733EEB62A3BDEDCCC0E68A067AD1E7CFF5EBF3FD901A1318
          BFA33C3073136754CD58AF24B7A2E18DB6666D45C631F424EB0C890B2F2EC034
          B0AF61F78E6B8D8D03E62D5BB5176A916A3E2EC8B830F32A1A04BC60629B2D02
          7E07F5C16CBFB5369D143DDD1AD17B89C486863DDFB712C93C6FE9E7D7A32FDF
          A49A8F1BFBB5F593BD92AC0001BB4C6CB345C051A8B767FBED3457BFBD17D40D
          8B44161DD8B55D6A57C90FF397AF5E887AEE53CD575C32428CC3AAD803B78100
          A3D39CB608606C64D6D1AAE9D8EB5A33A068345ABF7FE736E3C503B160C59A09
          F178BC49B97138139AE679B2F50110B0CEC4B602015E8D3384082874419A280C
          C21E184A8370611AAA091B0B317A4A7F05B92ADBEFC37C2176330878C4C43E53
          570423C0E8A6CEF99AE4812BE209C85A9918A06CD075C6D14FCB25F88DBE89F3
          C319F70AE47ABFD340599FA3E18EFE38D40F205365F3E4893B9ACEB8CFAA9EC4
          57094D2C87FA0EE42B42F122A53CDB90E1B4F44E10D1279358764BF27D50ACD4
          E53A16E5E19624A7E59F0609BEA17F7E5111B4608B485E9E6414B194879BF2AC
          EC1290F0A257223F027866F7011B95CAD3B09476C84C90703257023F02C8DEC7
          6C552E4F03B36E0001394FFEFB11B015EA269BD6E4616822BF80BFE5FAD18F80
          4950FF8494DBB226CF82737F82C65FE295402632EE2E28DF83062AC893F0747E
          E6D34140A3572219024642FD1DF236ABD60DFF031A9BD0F81BFD12C9AE0378C8
          E067B62D1CC64794F8D64F97B9BA4765257CF118BF550CD3437A5C843D239350
          8580D922E974B27E8464981D53FD2D1AFF23B2895583731F17C92B5C9C60181C
          D4665F3A07041C96CDA04AC025508CFAAD765583217E55C17634FE1A950C3AEE
          682ECCB6BAAC0531042FEBA03BFA7210A0E4F0D2218077E9F0139BE1BA46FFC3
          D0B8AEE61634FEC3AA997477C4AE81D2D98C668BD1BFC44D1D67173568825347
          460FCCD2C8CB73D4B364F700D2617265D97350D7492667E016F78E1FA2671079
          B981CF4BFDAEB0D07036405BB8AFDB0EDBB89FC04BF854A6DC0B90F780CE834D
          0898269277AD794DA4E9FAE478F1BDCCF8F9D46D848CD5616459505F03AF485E
          0DDBF666A9DF1C912462B18F7DCF23BF72C8CB459846457C1BEACE2C3FD181C7
          ADB99D7ED102A94B5FB9717EBD70740F5116304E86FDF556AF138C29FBF8A271
          5F84170C663A2519F23753F63C58369812C0353CFBF48BE7C5FE00E17F3FB237
          D7C1648FB206838816C8832279B1ACD265ABB0AF56242F96E59E38FFCC69D9DA
          40E3825286F1ADE027F81A8C79D5B485BCC21C2DC03894307575CF4C484CF5F6
          DD6C08E3E5DD39C31C2DC03894D036C248C063505F7254FC6C1B5FA94D849100
          8E03CA91CC921807025A82AE633AC248007D294F38289A8EA51120201CDB7029
          8491002EEE9E735074331A7F42D0F5CB4418096014DE1F1D14FD17106014AEE8
          02612480678294A38C25D00002E6075DBF4C849100AE2B620E8AE6AAFC86A0EB
          9789D01140800486F455592ED6E87FBA7085B01240DFCA65968B5D0702ACC4B9
          DA445809E039843B2C16C94ACEF20A110C0A6125804E3E9E6EE1A069EA98A3E7
          F34934FEEEA0EB950DA124209F5020206014080818050202C67F015CCBA38CD1
          D3EDD50000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          380000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300001BAF00001BAF015E1A911C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000008
          6A4944415478DAED9C0B6C14451880FFDDEBF5AE2DADC8B3F46EAF2D2D020135
          268882C6A8D01731804282444128A2282F01E5113160C4A03CC35394F05063D4
          880804E883A8C4282688313E082A54CADDB5500AA494574B7BBBFEFF815AB0B3
          737BBDEBEED1F99266A777FFCDCEEE773BBB33F3B792A66920300F4908301721
          C06484009311024C4608301921C064840093896901A5A9A95D689B7BEAD469B3
          DB122E312B606F5A5ABA64B3EDA3B21608E40CA9AC3C61769BC221260594BA5C
          BD5459A693EFBEFE925F56D59CDC8A8ADFCD6E9B51624EC05E8FA79FAC694558
          EC74D35B6754492A18E2F51E32BB8D46882901C58AF2306E76E14F3223E402FE
          0CCDF7F9F69BDDD650891901C51ECF50D0B44FB1E8E484D681248DCAF77A7799
          DDE650880901256EF7184D923663312EC48F34E28115E6F9FD1F9ADD761E9617
          50A42853258055D456831FA5239B5EE0F3AD31FB18F4B0B400ECF317E06621B3
          F171D72E08ADB151AF9A85784F78DDEC63611E832505489254E476AFC4AFFC74
          5688EC7042E692D5C1F2F1D9D340ADAF63568747B8AAC0EF9F01163C58CB09D8
          2F4971F58AB209DB359615636BD70EB256BD0749F7F40BFE7EE9A7435036FD39
          085CBCC83E5049FAC0E1F34D7858D3742F97033F9C0EE9840CBCB78BD12EB1F9
          76594940518F1E0EA9AE8E9E7486B162E23A7484AC759B21B167EF1B5EBFFCC7
          11289B5C088DE7CEEAED62A7E6748E2A387AB49E15D06605ECEADC3939DEE9DC
          89C5475831F1DD5C90FDCE167078329A7DBFDE5B0EC75E180F574F56E8EDEAEB
          AB7575C38656575F68EECD3629E04BB7BB6383241563B11F2BC6D93D1BB2D66F
          81F82E5D75EBBA7ABA0ACA5E1C0F757F1DD30B3B64D7B4FC417EFFFF2E973627
          60B7A2B8F064ECC3E7FCDEAC98C43E7742F6DA4D60BBAD7D487506CED7C0B129
          13E0F2E15FF50EFC084ACF79CCE7BBE172695302F6294A8F006EB098CE8A49EE
          3F10BAAF5807726292A1BAD5CB97E0AF9993E1C2C1037A61276C0039393EDFD1
          7F5E68330270747BB78A1B7C3A61F629ED1FCD858CC52B40B2C787B50FADE12A
          94CF9B09355F95B26334AD4A06C8C351F3CFF47B9B1050E4723D20CBF26EDC33
          B34FE9386C2428F3DF00C9666BD1BEB440007C8B5E83B33BB7B14F02408DAAAA
          8F1554547C77CB0B2851947CDCE3E7584C64C5741D3301D266CC89E87E2B57BE
          0D551F6ED20BB98C677444F2F61F8B42A92F260514793CA3708734416667C5A4
          4D99095D0B274565FF559B3740E5DA157A210D09B3DEB2DB1FC8E1D61573028A
          DDEEE77138BA1E8B72B30D916570CF5D089D463E19D5769CD9F609F8DF5A089A
          AA367F42B01D8E8973213E6F846E3D3125A05851E6E26631B311717190B16819
          B4CF1D12F5B61035A57BA17CFECBBA93788EA7A780E389F1CCF76346009EFC25
          B87985F5BEEC4C80CCE5EB2065C083516DC7CDD47EFF2D1C9F3519D4BA2BCC98
          F8E163C139B6F9F940CB0B785D92E4FBDCEE77B1F82C2BC696920259AB3742D2
          5DF744A50D3C2EFDF213944D9B0881DA5A668C7DF070704E7A35D83535C5D202
          3EEBDB373EF9FCF98FB0389279609D3A07A71612B2EF88F8FE8D70E5D89FC1A9
          8B8633D5CC18FBC0C1E07CE9CD7FD71F08CB0A284D4D4D52EDF6ED58CC65C538
          5C0A646DD81ADC5A81FA0A1F944D1A17DCB288BBFB7E489CB30C00BB4CC29202
          F6A4A7DF6E53D53D581CC08AA16F3C7DF3E90A3042B7A91F198A3FB9E62943F1
          7405D0954057040B5BCFBB2071FE2A909252AC27606F6666AADCD84863FE3B59
          31D4D7539F4F7DBF51A22D80A07B01DD13E8DEC0C2969E0D090BD6C38339BDAD
          23A0342323530D0468522D8B15434F39F4B4235FBF848DD21A02087A2AA2A723
          7A4A6221A7BA01AA4F76CF2D2F3FDED273D7620125E9E97D705043DFFC34560C
          3DDFD3737ED39B98515A4B0041E3031A27D07841874A7C32CACD3B71E270D83B
          82160A285194FEF8699A3BE9C08AA1912D8D706F7E8C334A6B0A2068A44C2366
          1A39EB700EFBA1823C9FEF60B8FB095B40B1DB3D0824690716DBB162684E87E6
          7622416B0BF8079A3BA239241D2E82A60DCFF7FBBF0CA7FEB004E0E8F671DC7C
          8C3F0E560CCD66D2AC66A4304B0041B3A8349BAA032DF28FCEF7F9BE305AB761
          01251ECF78FCCC462C363B514FF3F7348F4FF3F991C44C0104AD27D0BA02AD2F
          300848923431CFEBDD62A45E4302B0DB9981DDCE7260A409D2CA15AD60D14A56
          A4315B00412B6BB4C2462B6D0C34EC8E666177B432D43A43168027FF0D3CF9F3
          59EFD39A2DADDDD21A6E34B0820082D69869AD99D69C9968DA2294F05A28F5F1
          05E07585279F125C27B342285B81B216287B215A58450041D916947541D9173A
          AC43095379E9905C01D8E7BFAF972648793A34B540793BD1C44A0208CA3BA2A9
          0BCA436241E990784F7846AF1EAE80628F671C5AA4DCFCFFF5FB94A146996A94
          B1D616A10C3CCAC4A38CBC66D0D04061BED7BB55AF8E90EE01F8D8490B2A4B9A
          BE46B99994A349B99A6D19CA45A59C54CA4DBD89D9F858BA94F7F9D06FC24D56
          B6282B99B293294B5900C1AC6CCACEA62CEDEB2CC5933F3B94CF86FE184A3763
          976B73CA438F8CA3BC7CCACF17FC07FD7D02FD9D42ED375F6FCDAFA8280CF56F
          110C8D032877BF57656D434B26D56E656812EFF7B4143BEF6F109A6278245C55
          7DC5FC746A0BD3B57382A175022120C20801262304988C106032312FA066747A
          CB2BD1A1FDC7D1FDAF3642000721808310C04108D04708E02004701002380801
          FA08011C84000E42000721401F21808310C04108E02004E82304701002380801
          1C624580BBDFB51C55FFA11BFF5F9010C02152027AE60D0F6EFF28D971C3EB42
          000721808310A08F10701D21204CC44D9843AC086011F30242FDA776E1D2715E
          DF68560F6717FF16D5FA8DFE0F092120C208011C84000E42000721401F218083
          10C04108E02004E8230470100238080182564508301921C06484009311024C46
          08301921C064840093F91B8037C87D6853FA730000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end>
    Left = 48
    Top = 296
  end
  object scGPImageCollection2: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300000DD700000DD70142289B780000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000005
          344944415478DAED586B4CDB55143FF7DF17F8E731C66332914A701B2A618687
          C89685168D480B435AC42F66D3C4C9CC62B26431D932618CC5CCC4477C7D90F9
          C18CC52F1B948DB565734A79F88850889B46B745C760BA290C9057297DFCAFA7
          40CBBFB50C0B85D284F3A5FF73CEBD27F777CFE39E534229856026B206600DC0
          1A00FF01C87D4EB78D19613B0C06992D3801A8751F0B08689BEB94178312804C
          A5BF863F6D2D1AC59EA003202FB9F010255C0F9A1C24C3A1F7AF5418F90D80AC
          44F72A105233CB3E835EB814540072D5FA3A42413D63959C68A92F280F1A0065
          656704FD36F62E7EAE9B150DC40927E24F9F7EDE1E1400642A6D0E00F31D5FC6
          50E6E9E68667BFE6CB54577E8FB373C22C8E2199E8AD0C1465CEAA8C944017C3
          51A380B1756AD292FB5714805CADAF423347DC0C03D418348ABDD3FA16104644
          F51EA2402A90152D60CE4A801E1B1D961E37C860C142E0270F34E1EDD31C0F71
          3F86D146D3C1273633027212F92C1FCD767276BA5B9B2EFD755901C84BCEAEA3
          44EC887F81A74E92B7E16DC98ED8FDF819B248F3660CADF2F36989B5CB0620AF
          44AFE608D479D38933A2EC21850FB8018B1032F070A81862C5428811CDA8EE5A
          ED3060B1C16F931618B571FF01819E489FCF134B062053E94EA019AF2F2F6185
          107E20653A211C941A2681AC88501012E2D5960DCFD2393A093F8F4F79AA3AC7
          8613B779CB093F00D0DFC41FE97C7AF6A524104859C88F0E83C49085F27786FA
          CC56B83838EE7E50A095E7B64A8FF915405EF1852D9C80BBCA13598998D1530B
          57EC1488B3D643665912E444DEE793EDEF474C9E9EB00A8935C1B3C42E09804C
          AD7B1D28F988276A9364AFBF34F5C390EBA604E122D8F74E368898B9B0191D9C
          82764D0FDCBA3E32CD3FB8391276A89220225AE25AE308A7FAFE51B79CC0C316
          9E7B5CAAF31B805C955E8BC752CE19830AB6F251D1C47BD72BA9692E5C5F7823
          0D123645BA0E5F5BDD0D5393EEE12C0915C2AECA7437105D980FDD6366178F15
          A90A2BD2D17B02C0989E1F11AFC7492D3B238EB1B343408175AA190E9E0C3B9A
          7AD8ACBB5D64310EF97C212959B1A0DC93E2E2BDE4C2F9C6AD893B170F002F70
          DCC6C51B1B0B4DF212AD8C12C6C0D3FD830F578CF970F62DDBCD8978D3C91E9F
          01B09162D88BE1E624939D832FFE1AE12FB98300362E05005E38D9DDAA29A8C5
          F0398EE17390A7D2600BADDE79B9EF362E8A1F7BFF2AD071DF4682150200ADAD
          1A850CDB872EE4D25D86005EC3DEE75304D0886C91B9E90E583A067D02E09710
          F22479A93E9372D0E98E81DB8E11FF2DB89E28003B4393DBEB94378AAEF41DC1
          64AE72CAD3C34320031F2F272D7B127B23F48A117F327822C7ECBB85C7DFC0F0
          49767C14FFD8ABA484689D0A47EBA08E8B707B7D57BC8C62BBFC0A2EFB6C3E3D
          BF7576F4FC362AFA03786DB3A38508E843969FFF253BC5DAFEC4CF486F7A8642
          697383A2DEC9175FEEADC064AF76B311E85642AED27F822BF7795171760B8D69
          D72A875D6B7180098FEA734C686E3340409B39B94A978AB7FA93175507C67FB6
          A7B0B0BBF7111C64BAC1631608683B8DB5FF1BBCBBED6E0680BC65D014BCE96D
          3D56A45D58916A60B50C34F212DD8B58614EF1650C1059B3A6A075BE3DB39E58
          1D23A542D12431850026338D9ED90D13E3311BA28C3519D67B025F4D433D7AE1
          5DF4C201C737EED4E1AB5CF87FF7AE8ABF55724BB59B08C75C9BD90BFB5B1B14
          1FFA64C0CFB4A8792057A5FB0A93F7298E238FB59D2DF825E800C8D54DA5B8EF
          032C9F09813CFCA20164967789D881BFAB31FE0F05250007C95F6E09317C2E33
          2F6AF36A00B05A680D40A0690D40A0690D40A0E95F5025FCBFA0E5DB3C000000
          0049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300000DD700000DD70142289B780000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000004
          FC4944415478DAED987F6C136518C7DFF7AEEB4A47278898184D88266A3018D1
          28FE40C0904848341815A7D3B97565B01881B0B41DD4D1BB5D3B27AED7092322
          0E6937888188F10741C30063341893A944E3BF4682992CFE012E6C63B2F6EEF5
          5BD9EAD6DFD7F55D47C29B5CEEB9F77DEFB9EFE7BDBBE77DDE9732C6C8B55CE8
          758029947A45B18E12EB5D4423365134F58F0E69FD0702AEE1190B50ED56CB44
          2B799930B216970B71DC16D330B10F63D4D5E577066714C03A6FDBDD3A1536C3
          ACC2519E5E0D51C28AABD9886FEE007629B88112B60BA625B312E3E2B902ACDB
          DA66D34B854E982F6557919F786E00158A622ED3CABE85F9304FF1DC006AE560
          07FEC64DBCC57301A895820F2196F44E87783E00B2BA1761B27E3AC4F30190D4
          3E9C6E4DDF83B5867DEEA67C7CFF17182C8273223C0F808B38CDCD30641561C5
          7DC4A8DF2A6577B959BB721CE69C90CF750F4F80219CCA3274D913F6B95E37E2
          B37EDBDB378C960AC709A38FE07200F7C7078807C0284E2519BA0CEBD1C882EE
          56CF859CFC293BE7105DEB41545B325E671B28B574746CBAC20B6084649B7519
          3918F6BBAAB3F97AC5B3636E89D9748232F2E084EA41BC81783A527000BBACFE
          90F0C0D40C8C6DECF2BBDF4DD75EA7BC73A316D54E22623D90D0F41300E2FE0B
          FF06BC6A271EBA3E87AE1ADE84076F2290D850F3C65BF304B1E414FC2C4E41FE
          61D8EFAEE206E0F0065E6394EEC9B53F72E94F05516CFC406EF82D765DAF046F
          1AD5D82998F7A5BE83791086777003C044B61E23DB69F0361D203D8C925E8CF0
          7390756F9A7E9A2E6A7774CB5BFFE00680F45942FAAC14D4E9B858C28E867CEE
          6726D515120049DC9318C1CF605AB90050BA3AA4387BB800D4C8EAB302238761
          9A798847F9AECBEF5A06B993041704C02E05AA29A121982227F1174CA2BE789F
          DCD897D830650087A46E84870E92B0382F606110B926E4771F4BD5382500BB57
          6DA294B470121E2B11FC534EC4FDDDE93AE40D8070D986AFD1CD51FC399D90CA
          6E9FEBFB4C9D0C03288A229CD3ACEF3142371814F48559A4F6BFC9D0A55991F2
          F982187D0C754B31088B62F1855D9D0BA0995C644C3874BB69F04B5996A3D99C
          1A028078D3D9A8F500C259A511E598A04E5F1E14577DD4DE3062103A6BC919A0
          56512C4C9B7D0493C9D3C61EC17E2562C9F2B0BC65A0D0E2730618DBE3390AF3
          0983FECF4635D3D2836F6EE9E7213E2780BAEDC10551CA8E21DA2C32E69AFD25
          8AA6C7C793B4A200D448EAA30221B1D4E066837E2F1191AD08CBEE9F798ACF08
          E0908395688BCDAE16632EC93FF84F5623E9FA86B7F8B40088F1CD086F721EFE
          347C6ACF8714D7E7D3213E25805D5237231EEFCACB19250E880F4F97F824805A
          6FE04EA8F805E6ACAB35EC77C4FC164D134F0882F6022AB6E39897D213238DA9
          9687D30A8005792BA644CF84D6499B5058EFCA48D99A93B513B5CBE7E29956E4
          06502BA95FE1B472EC32621B28B58DEFBFC44A8DD47EBF40F433093E3E419EBE
          36314F2F16402CECFDBF98A6745558719E8CB77B552FDE802FDECEC819B36978
          D9FBB27CB918E29301BCC1C3A87971A24022D06DC383C2E9B2D951E43F34B61B
          307FACF5BCAE8B4BBA5B1AFE2C96F8640029E040D5FE14FD2264F276E188A0EB
          CBF7B734FE584CF149000883148B94AF61AEC8700F5648B422E4777E5C6CF149
          00B1F26AD3CE5B4C62741FCCA7929413D227505A97B83330A300C68BDDDBBE86
          0ADA4A8CF742743B4F99DECB4C258778A5C50507B856CA758062977F014AC94B
          BF57256F7C0000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          380000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300001BAF00001BAF015E1A911C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000005
          784944415478DAED9D4B8C144518C76B79055C397800856810301AE180100831
          1E5C1F31DE80101E6234F16216050F403CC82BB2E8C120075F6CBC98687CB084
          00376200978331048372000251914040E0C0411608AFF5FF3935643274D774D7
          54D557D57CBFE44B8574D35355BFD9E9EE7A760C0E0E2A818F0E11C08B086046
          04302302981101CC442D60D296CB13904C448C478CCB4989B3887339E9C9BF96
          DE7F8ABB2C79442700953E13C95CC43CC41447973D8AD881D80919BF7297B111
          7601A8F061489E55B50A9F8378D8F3479E41EC523521FB21E42667F9D904A0E2
          E927642D6231E201A6F25F42FC80E88188731C19082E00153F1AC9BB881588FB
          380A9DC115C466C44710F16FC80F0E2600153F1C49B7AA7DEBC7842C64092E22
          7A10BD107123C4077A17808AEF40B200F1216272884239E04FC47B886D10E1B5
          82BC0A40E5D3377D9BAADD6453643F6201245CF4F501DE04A0F2A7A9DAD3C604
          5F990F04BD43CC8184C33E2EEE45002A9F1E29BF4174FAAD9B600C205E83841D
          AE2FEC5C002A9F6EB2EFD3B5C3D44D30A8A2D643428FCB8B3A13808AA747CAAF
          100BC3D74D50FA106F40C415171773224057FE3EC46CDEBA09C601C4F32E24B8
          12B05555FF9BDF4C1F042C6AF7226D0BD0BFF91BB86B838975EDDE13DA12A09F
          76B6ABEADD708B429537BF9DA7236B01FA39FF67559D474D5BE811F519DBF704
          2B01FA0DF7A04AFF25CB15F4B236CBE68DB9B400DDB6F3934AB779C117D46CF1
          5CD9B6231B01F4B4B395BBB491B20802FACAFC8752027493F231954EAB6668A8
          15F5C9324DD965052C47F209772923E71D08F8B4E8C98505E89E2C32CCDE9932
          E3A1A1EACDA786AB696387FEFFEFC3176EA92F7FBFA10EFD738B3B6B04DD8827
          17ED592B23805E38D67097AE7BFA08B56AF60835A4E9CDE3368AB1E9C075D5FB
          DB75EE2C121B21606D91130B09D01DE87F28E63E5CFAE6F7CD1D7557E5D72109
          0B775E8DE12F81DA881E2BD2D15F54C01748967297AAF7E591EAA589C38CE7FC
          78F2A6EADE7D8D3BABC4160878ABD5492D05E8713B1714DFD0913BFCF27AA77A
          B0D3DCEA717E60503DFDF5007756091AF232B6D5B8A322025E40B287BB344462
          0288172160AFE98422023E43F236774988C47E8288CF216099E98422024E2BFF
          C3050B91D04DB8CE190878C4748251801E287B90BB148D24F218DAC82CD380E0
          5602362259CD5D8266227F116BE60308C87D7F6A25E088723744FC5EE528044C
          CD3B982B404F8EF89B3BF715E1D1BC492226015DAAD6EE2FB40FF513F4671D30
          095882E45BEE9C57845721E0BBAC0326012B916CE2CE79455805011F671D3009
          A0FFB0823BE715613304ACCC3A6012407F32AF70E7BC1914C4781CF9E6CE6216
          DF23DF4BB20E9804F4AB083BDE1315409301BBB20E98041C47F23877CE9B4954
          C009E4FB89AC032601D4A5662E2D03890AB88C7C8FCE3A2002C26025407E82DC
          61F513D4AFE426EC0AAB9BB03C86BAC3EA3134CA17B1440558BD8845D91491A8
          00ABA688281BE3121560D518D7A5226C8E4E5480557374941D32890A28DF21A3
          0B135D97648202ECBA247561A2EB944F50405B9DF2D10D4B495080FDB0145DA0
          680666118909686F60962E5034431389C40438199A18CDE05C2231014E06E746
          333C9D4848809BE1E9BA50514CD0201212E06682862E54145394884404B89DA2
          A40B16C524BD44703B498F88699A6AE4F899A64AC844ED42F899A84DC852052D
          F1BB5401218B7518F1BB580721CBD5E41266B91A42166CBA8B700B36D59125CB
          EE107EC9B23AB2681FE3A27D7564D94AC6652BEBC8C2ADF6C8D2C576C4B57431
          218B77DB21CBD71727EEE5EB1B910D1C8A235B98B426BD2D4CEAC8263EAD916D
          ACB2A9C636568DC8466ED9C8568635AABF956133B299670DD9CEF65EDDCE360F
          D9D03922644B73C13B22801911C08C0860460430230298F90FC2F6936EBFFBCC
          170000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end>
    Left = 48
    Top = 232
  end
  object scGPImageCollection3: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000000473424954080808087C08648800000009704859730000109C000010
          9C0126CD3A340000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A0000016C4944415478DAEDD6BB4BC35014C7F19356
          D05A1011090E5245A738885B0CB8B82838F92F28145C5C84A2C159B08BB3A083
          82BB15456C2B3849ECE413455D4A141AB4148B8F564873BD4167695EDC1B38DF
          F907F77CB62B40C813581F10286032ADADD2C9809F0F1280B840C8B005829A5F
          1ADD091430BD56B81D14E352A23BE61BA0FA65C2E943052251CA30C9EC91AA6C
          050A488EF74B5323A26F8047E313E6B7AF614C1241BB7F05AB4166BC209801D6
          E764D83DD3217F65D888645655364307B0F38A600EF8453C5144C915820B8017
          043700BB4C81222E4BD07080E00AE006C11DC06E8F22724D22B8043841300388
          1DADFFEE08FD7394DFBFA1251AA91DA4E4766E001F7513CE8BD5A6B6F6EEF8A6
          ACEFA7E43E6E004E3ABC78818D93E25D66411E42000210800004200001084000
          021080000420000108400002108000043800F476C5A49ECE362600E3AD0ECF95
          9A7BC0445A5B8E004930B9FE2F0B043DB7A8ACB80284A1D0037E0089473B4FDB
          0965130000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000000473424954080808087C086488000000097048597300000DD700000D
          D70142289B780000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A000002744944415478DAED984F68134114C6BFB749
          69A0A66D4CB5AD3135151B050F42695741A478E94DFC7328140AF65A7A9742C1
          63C18BE045BC28D693207A90E24D10113DEAA136DBD28A458F22A4206849B37D
          9364ADD810771ABA6F16F783B0B39BDDC9F7DB79F3E64D082117491B8800A40D
          4400D20622006903FB02E03E421FCAB8CDCD11FE74F9EC6986AEE3963880FB00
          5958F8C0CD837BE82D7088DD00F3780A17D79AE8315088DD000FB1C1876493BD
          0606510FC00DE2877DE81BBB7BCD6E6ED024D6C208E0E93BE2384313F81A5600
          E5F20987E458780180228751679801C00075D7ACFF1080F891AE34D0D10EB4B4
          54CF83914AEF8B807593ECA5977B04E0DBB3195E250E0465BA9E4AFCD22ED370
          E1853E403BAF6F473392E66B26B10ADBC9F3E0BB7A00995E0E9D0E69FB55C529
          478385753D80E3FD40A255DABA47D047F6E217FF0016DF7A2A0F43B6101B1876
          3AF5422891E011C8491BF7F4966CE7BC6AF80750B1AFE6800922BAC759684A0F
          A0E7306F71F4F738FB44304D76E1AE1EC0B12CD0D626EDBC2AAB7C818656DEE8
          01E40778E2C7A4AD572CC2DA4CD1D0A7A27F80789C014E481BF7ECAFD35927E7
          9DFA0350A1A342C80C2D7006BAA40790E6E2ADFB90B4F19A41CCF108CCEA0164
          8E54AB4F134434CE29F4B11E8049254439769ACE7D5CF20F40B51222B8BABF91
          7EE2474F922EBE2AF907506F5E8D80197ACF1378F0CF0BF500547EDD097815FB
          6A0E98A1790698FC17C0333E5CFD7DA19B4B88B4212504B9BC135B7EDE18E03E
          4E228677DC4C552E9853422CE0B37385C6B0D510A002B1F3F7FA28AFC0C9CA4A
          2CA5F2561156EC0E52A5391A58FDF5F7D746A496661401482B0290560420ADD0
          036C030B47B1315AB84C140000000049454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          870000000473424954080808087C086488000000097048597300000DD700000D
          D70142289B780000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A000001454944415478DA636418E28071A01D30EA81
          8176C0A80706DA0134F3C01767B3FF30F6A5A79FB0AA79356D2ED51CE2D25A88
          E0FC67A8E0D977AA73E87A00E407468646DE3DA71A068D07CA4A8A51F85D3DBD
          783D40AC2706B50788F1C4A0F700214F0C090F8000CFDE5358DD3AEA81510F8C
          7A80080F5C7FF185E1F7DF7F186ADEB4F530FC131024DA13B800C7A70F0C3693
          1B69E7814F3FFE303CFDF003C3133F75F5193E47C531FCE31720DBF1EC9F3F32
          686E5BC92072E73AED3C3018C0A807061A8C7A60A0C1C8F60047EF7406667D23
          BA3AF8EFF9330C3F4AB3A9E301EE3D27E9EA7818F8EA623EEA01AC1EB870F32E
          4D1C6CA0AE3CEA01A23C402F30EA015C1E18F24968C87B805E60D403B83C30E4
          93D090F700BDC0A807606C8E09B3189875F4E9EAF8BF97CE33FC28CAA08E0706
          0318791E182A60D403030D463D30D060C87B0000DA9A54407FC78C3100000000
          49454E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 0
        Options.TopMargin = 0
        Options.RightMargin = 0
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
      end>
    Left = 48
    Top = 168
  end
end
