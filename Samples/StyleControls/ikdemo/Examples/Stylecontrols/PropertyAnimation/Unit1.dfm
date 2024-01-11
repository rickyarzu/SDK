object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'StyleControls + ImageKit  - Demo'
  ClientHeight = 464
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object IKPageView1: TIKPageView
    Left = 0
    Top = 0
    Width = 664
    Height = 464
    Align = alClient
    TransitionEnabled = True
    TransitionKind = ikpv3DYRotation
    TransitionDuration = 1.000000000000000000
    FillColor = clBtnFace
    PageIndex = 0
    Pages = <
      item
        Page = IKPageViewPage1
      end
      item
        Page = IKPageViewPage2
      end>
    Transparent = True
    ActivePage = IKPageViewPage1
    OnChangePage = IKPageView1ChangePage
    TabOrder = 0
    object IKPageViewPage2: TIKPageViewPage
      Left = 0
      Top = 0
      Width = 664
      Height = 464
      BackgroundStyle = ikpbColor
      FillColor = clBtnFace
      Align = alClient
      TabOrder = 1
      Visible = False
      object scPanel1: TscPanel
        Left = 0
        Top = 0
        Width = 664
        Height = 464
        Align = alClient
        TabOrder = 0
        CustomImageIndex = -1
        StyleKind = scpsPanel
        ShowCaption = False
        BorderStyle = scpbsNone
        Wallpapers = scImageCollection1
        WallpaperIndex = 0
        LightBorderColor = clBtnHighlight
        ShadowBorderColor = clBtnShadow
        CaptionGlowEffect.Enabled = False
        CaptionGlowEffect.Color = clBtnShadow
        CaptionGlowEffect.AlphaValue = 255
        CaptionGlowEffect.GlowSize = 7
        CaptionGlowEffect.Offset = 0
        CaptionGlowEffect.Intensive = True
        CaptionGlowEffect.StyleColors = True
        Color = clBtnFace
        Caption = 'scPanel1'
        StorePaintBuffer = False
        object scLabel28: TscLabel
          Left = 85
          Top = 21
          Width = 467
          Height = 47
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
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
          Caption = 'StyleControls + ImageKit - Demo'
        end
        object scGPButton2: TscGPButton
          Left = 276
          Top = 289
          Width = 91
          Height = 91
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          TabStop = True
          StyleElements = [seClient, seBorder]
          OnClick = scGPButton2Click
          Animation = True
          Caption = 'Ok'
          CanFocused = True
          CustomDropDown = False
          Margin = -1
          Spacing = 1
          Layout = blGlyphLeft
          ImageIndex = -1
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clGreen
          Options.HotColor = clGreen
          Options.PressedColor = clGreen
          Options.FocusedColor = clGreen
          Options.DisabledColor = clBtnFace
          Options.NormalColorAlpha = 20
          Options.HotColorAlpha = 50
          Options.PressedColorAlpha = 100
          Options.FocusedColorAlpha = 20
          Options.DisabledColorAlpha = 255
          Options.FrameNormalColor = clGreen
          Options.FrameHotColor = clGreen
          Options.FramePressedColor = clGreen
          Options.FrameFocusedColor = clGreen
          Options.FrameDisabledColor = clBtnShadow
          Options.FrameWidth = 2
          Options.FrameNormalColorAlpha = 100
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clBlack
          Options.FontHotColor = clBlack
          Options.FontPressedColor = clBlack
          Options.FontFocusedColor = clBlack
          Options.FontDisabledColor = clBtnShadow
          Options.ShapeFillStyle = scgpsfGradient
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRounded
          Options.ArrowSize = 9
          Options.StyleColors = True
          HotImageIndex = -1
          FocusedImageIndex = -1
          PressedImageIndex = -1
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = False
          WidthWithCaption = 0
          WidthWithoutCaption = 0
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
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
        end
        object scLabel1: TscLabel
          Left = 94
          Top = 98
          Width = 472
          Height = 69
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 33023
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          StyleElements = [seClient, seBorder]
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
            'Use TIKPageView control to show pages with 3D effects! You can p' +
            'lace any controls from StyleControls VCL to the page for transit' +
            'ion! '
        end
        object scLabel4: TscLabel
          Left = 183
          Top = 216
          Width = 47
          Height = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          StyleElements = [seClient, seBorder]
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
          Left = 247
          Top = 208
          Width = 146
          Height = 36
          Cursor = crHandPoint
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          StyleElements = [seClient, seBorder]
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
    end
    object IKPageViewPage1: TIKPageViewPage
      Left = 0
      Top = 0
      Width = 664
      Height = 464
      BackgroundStyle = ikpbForm
      FillColor = clBtnFace
      Align = alClient
      TabOrder = 0
      object scGPMeter1201: TscGPMeter120
        Left = 426
        Top = 20
        Width = 200
        Height = 116
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TransparentBackground = True
        AutoSizeFont = False
        ArrowColor = clBtnText
        ArrowColorAlpha = 255
        ArrowType = scgpatLine
        ArrowWidth = 2
        ArrowShadow = True
        CenterFrameColor = clBtnText
        CenterFrameColorAlpha = 255
        CenterFillColor = clBtnText
        CenterFillColorAlpha = 50
        CenterFillStyle = scgpsfGradient
        CenterFrameWidth = 2
        ImageIndex = -1
        FormatStrLabel = '##0'
        MaxValue = 100.000000000000000000
        ValueHint = '%'
        ValueHintColor = clBtnText
        ScaleSteps = 5
        ScaleSubSteps = 2
        ScaleSections = <
          item
            Color = clBtnText
            ColorAlpha = 30
          end>
        ScaleDivider = 1.000000000000000000
        TicksColor = clWindowText
        TicksColorAlpha = 200
        TicksWidth = 2
        TicksSmallWidth = 2
        ShowScaleTicks = True
        ShowScaleLabels = True
        ShowImage = True
        OnGetArrowColor = scGPMeter1201GetArrowColor
      end
      object scGPHVMeter2: TscGPHVMeter
        Left = 349
        Top = 23
        Width = 66
        Height = 358
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        TransparentBackground = True
        ArrowColor = clBtnText
        ArrowShadow = True
        FormatStrLabel = '##0.0'
        MinValue = -1.000000000000000000
        Vertical = True
        MaxValue = 1.000000000000000000
        SmoothTicks = True
        ScaleSteps = 10
        ScaleSubSteps = 4
        ScaleSections = <
          item
            StartValue = -1.000000000000000000
            EndValue = -0.500000000000000000
            Color = clRed
            ColorAlpha = 100
          end
          item
            StartValue = -0.500000000000000000
            Color = clGreen
            ColorAlpha = 100
          end
          item
            EndValue = 0.320000000000000000
            Color = clYellow
            ColorAlpha = 100
          end
          item
            StartValue = 0.320000000000000000
            EndValue = 1.000000000000000000
            Color = 16744448
            ColorAlpha = 100
          end>
        ScaleDivider = 1.000000000000000000
        TicksColor = clBtnText
        TicksColorAlpha = 150
        TicksWidth = 2
        TicksSmallWidth = 2
        TrackColor = clBtnText
        TrackColorAlpha = 100
        TrackProgressColor = clHighlight
        TrackProgressColorAlpha = 255
        ShowScaleTicks = True
        ShowScaleLabels = True
        ShowProgressFromValue = False
        ScalePosition = scgpspBeforeTrack
        ShowArrow = True
        ShowProgress = False
      end
      object scGPHVMeter1: TscGPHVMeter
        Left = 26
        Top = 394
        Width = 592
        Height = 47
        TabOrder = 3
        TransparentBackground = True
        ArrowColor = 33023
        ArrowShadow = True
        FormatStrLabel = '##0'
        MinValue = -50.000000000000000000
        Vertical = False
        MaxValue = 50.000000000000000000
        SmoothTicks = True
        ScaleSteps = 4
        ScaleSubSteps = 5
        ScaleSections = <>
        ScaleDivider = 1.000000000000000000
        TicksColor = clBtnText
        TicksColorAlpha = 150
        TicksWidth = 2
        TicksSmallWidth = 2
        TrackColor = 33023
        TrackColorAlpha = 50
        TrackProgressColor = 33023
        TrackProgressColorAlpha = 150
        ShowScaleTicks = True
        ShowScaleLabels = True
        ShowProgressFromValue = True
        ScalePosition = scgpspBeforeTrack
        ShowArrow = True
        ShowProgress = True
        OnGetProgressColor = scGPHVMeter1GetProgressColor
        OnGetArrowColor = scGPHVMeter1GetArrowColor
      end
      object scGPButton5: TscGPButton
        Left = 13
        Top = 97
        Width = 134
        Height = 40
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = scGPButton5Click
        Animation = True
        Caption = 'Change values'
        CanFocused = True
        CustomDropDown = False
        Margin = -1
        Spacing = 1
        Layout = blGlyphLeft
        ImageIndex = -1
        ImageMargin = 0
        TransparentBackground = True
        Options.NormalColor = clRed
        Options.HotColor = clRed
        Options.PressedColor = clRed
        Options.FocusedColor = clRed
        Options.DisabledColor = clBtnFace
        Options.NormalColorAlpha = 20
        Options.HotColorAlpha = 50
        Options.PressedColorAlpha = 100
        Options.FocusedColorAlpha = 20
        Options.DisabledColorAlpha = 255
        Options.FrameNormalColor = clRed
        Options.FrameHotColor = clRed
        Options.FramePressedColor = clRed
        Options.FrameFocusedColor = clRed
        Options.FrameDisabledColor = clBtnShadow
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 100
        Options.FrameHotColorAlpha = 255
        Options.FramePressedColorAlpha = 255
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 255
        Options.FontNormalColor = clBtnText
        Options.FontHotColor = clBtnText
        Options.FontPressedColor = clBtnText
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillStyle = scgpsfGradient
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpRoundedLeftRight
        Options.ArrowSize = 9
        Options.StyleColors = True
        HotImageIndex = -1
        FocusedImageIndex = -1
        PressedImageIndex = -1
        UseGalleryMenuImage = False
        UseGalleryMenuCaption = False
        ScaleMarginAndSpacing = False
        WidthWithCaption = 0
        WidthWithoutCaption = 0
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
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
      end
      object Duration: TscGPSlider
        Left = 6
        Top = 43
        Width = 256
        Height = 32
        TabOrder = 4
        CanFocused = False
        TransparentBackground = True
        FormatStrLabel = '##0'
        Vertical = False
        MaxValue = 1000.000000000000000000
        JumpWhenClick = False
        Value = 500.000000000000000000
        ValueChangeStep = 1.000000000000000000
        ValueChangeWithStep = False
        SmoothTicks = True
        ScaleSteps = 10
        ScaleSubSteps = 5
        ScaleSections = <>
        ScaleDivider = 1.000000000000000000
        ThumbColor = clHighlight
        ThumbDisbaledColor = clBtnShadow
        ThumbShadow = True
        TicksColor = clBtnText
        TicksColorAlpha = 150
        TicksWidth = 2
        TicksSmallWidth = 1
        TrackColor = clBtnText
        TrackColorAlpha = 50
        TrackProgressColor = clHighlight
        TrackProgressColorAlpha = 255
        ShowScaleTicks = False
        ShowScaleLabels = False
        ShowProgressFromValue = False
        ScalePosition = scgpspBoth
        ShowProgress = True
        OnChange = DurationChange
      end
      object DurationLabel: TscLabel
        Left = 20
        Top = 15
        Width = 87
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
        Caption = 'Duration (500ms):'
      end
      object scGPMeter1: TscGPMeter
        Left = 436
        Top = 178
        Width = 192
        Height = 192
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        TransparentBackground = True
        ArrowType = scgpatArrow
        ArrowColor = 33023
        ArrowColorAlpha = 255
        FrameWidth = 3
        ArrowWidth = 5
        ArrowShadow = True
        CenterFrameColor = 33023
        CenterFrameColorAlpha = 255
        CenterFillColor = 12642
        CenterFillColorAlpha = 255
        CenterFillStyle = scgpsfGradient
        CenterFillGradientAngle = 90
        CenterFrameWidth = 4
        ImageIndex = -1
        FormatStrValue = '##0'
        FormatStrLabel = '##0'
        FrameColor = 13986304
        FrameShadow = True
        FillColor = clLime
        FillColorAlpha = 50
        FillStyle = scgpsfGradient
        FillGradientAngle = 90
        MaxValue = 8000.000000000000000000
        ValueTextColor = 33023
        ValueHint = 'rpm'
        ValueHintColor = clWindowText
        ScaleSteps = 8
        ScaleSubSteps = 4
        ScaleSections = <
          item
            StartValue = 6500.000000000000000000
            EndValue = 8000.000000000000000000
            Color = clRed
            ColorAlpha = 150
          end>
        ScaleDivider = 1000.000000000000000000
        TicksColor = clWindowText
        TicksColorAlpha = 150
        TicksWidth = 5
        TicksSmallWidth = 2
        ShowValue = True
        ShowScaleTicks = True
        ShowScaleLabels = True
        ShowImage = True
      end
      object scGPButton1: TscGPButton
        Left = 168
        Top = 96
        Width = 134
        Height = 40
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        TabStop = True
        OnClick = scGPButton1Click
        Animation = True
        Caption = 'Flip page'
        CanFocused = True
        CustomDropDown = False
        Margin = -1
        Spacing = 1
        Layout = blGlyphLeft
        ImageIndex = -1
        ImageMargin = 0
        TransparentBackground = True
        Options.NormalColor = clGreen
        Options.HotColor = clGreen
        Options.PressedColor = clGreen
        Options.FocusedColor = clGreen
        Options.DisabledColor = clBtnFace
        Options.NormalColorAlpha = 20
        Options.HotColorAlpha = 50
        Options.PressedColorAlpha = 100
        Options.FocusedColorAlpha = 20
        Options.DisabledColorAlpha = 255
        Options.FrameNormalColor = clGreen
        Options.FrameHotColor = clGreen
        Options.FramePressedColor = clGreen
        Options.FrameFocusedColor = clGreen
        Options.FrameDisabledColor = clBtnShadow
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 100
        Options.FrameHotColorAlpha = 255
        Options.FramePressedColorAlpha = 255
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 255
        Options.FontNormalColor = clBtnText
        Options.FontHotColor = clBtnText
        Options.FontPressedColor = clBtnText
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillStyle = scgpsfGradient
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpRoundedLeftRight
        Options.ArrowSize = 9
        Options.StyleColors = True
        HotImageIndex = -1
        FocusedImageIndex = -1
        PressedImageIndex = -1
        UseGalleryMenuImage = False
        UseGalleryMenuCaption = False
        ScaleMarginAndSpacing = False
        WidthWithCaption = 0
        WidthWithoutCaption = 0
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
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
      end
      object scGPMemo2: TscGPMemo
        Left = 9
        Top = 167
        Width = 328
        Height = 177
        Options.NormalColor = clYellow
        Options.HotColor = clYellow
        Options.FocusedColor = clYellow
        Options.DisabledColor = clYellow
        Options.NormalColorAlpha = 80
        Options.HotColorAlpha = 100
        Options.FocusedColorAlpha = 100
        Options.DisabledColorAlpha = 100
        Options.FrameNormalColor = clBtnText
        Options.FrameHotColor = clHighlight
        Options.FrameFocusedColor = clHighlight
        Options.FrameDisabledColor = clBtnText
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 100
        Options.FrameHotColorAlpha = 255
        Options.FrameFocusedColorAlpha = 230
        Options.FrameDisabledColorAlpha = 50
        Options.FontNormalColor = clWindowText
        Options.FontHotColor = clWindowText
        Options.FontFocusedColor = clWindowText
        Options.FontDisabledColor = clGrayText
        Options.ShapeFillStyle = scgpsfGradient
        Options.ShapeFillGradientAngle = -90
        Options.ShapeFillGradientBeginColorOffset = 25
        Options.ShapeFillGradientEndColorOffset = 40
        Options.ShapeCornerRadius = 10
        Options.ScaleFrameWidth = False
        Options.StyleColors = True
        ScrollBarOptions.BorderWidth = 2
        ScrollBarOptions.FillColor = clNone
        ScrollBarOptions.FillColorAlpha = 0
        ScrollBarOptions.ThumbColor = clWindowText
        ScrollBarOptions.ThumbColorAlpha = 50
        ScrollBarOptions.ThumbColorHotAlpha = 100
        ScrollBarOptions.ThumbColorPressedAlpha = 150
        ScrollBarOptions.ThumbRounded = True
        ScrollBarOptions.Position = scgpsbDefault
        ScrollBarOptions.Size = 11
        Color = clBtnFace
        ContentMarginLeft = 10
        ContentMarginRight = 8
        ContentMarginTop = 8
        ContentMarginBottom = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'You can use TIKPropertyAnimation class from ImageKit!'
          'Just link it to property, which you want to animate!'
          ''
          'Code example:'
          ''
          '  D := Random(8000);'
          '  A := TIKPropertyAnimation.Create(scGPMeter1, '#39'Value'#39', D); '
          '  A.Duration := Round(Duration.Value) / 1000;'
          '  A.Start;'
          '')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 8
        Transparent = True
        WordWrap = False
      end
    end
  end
  object scImageCollection1: TscImageCollection
    Images = <
      item
        BitmapOptions.LeftMargin = 0
        BitmapOptions.TopMargin = 0
        BitmapOptions.RightMargin = 0
        BitmapOptions.BottomMargin = 0
        BitmapOptions.AlphaBlend = False
        BitmapOptions.AlphaBlendBorder = False
        BitmapOptions.AlphaBlendCorners = False
        BitmapOptions.Stretch = True
        BitmapOptions.StretchBorder = False
        BitmapOptions.DrawOnlyBorder = False
        BitmapOptions.DrawInClipRect = False
        BitmapOptions.ContentLeftMargin = 0
        BitmapOptions.ContentRightMargin = 0
        BitmapOptions.ContentTopMargin = 0
        BitmapOptions.ContentBottomMargin = 0
        Picture.Data = {
          07544269746D6170068A0000424D068A00000000000036000000280000007800
          0000620000000100180000000000D08900000000000000000000000000000000
          0000D6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCE
          D6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7
          D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6
          D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6
          D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7
          D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6
          D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6
          D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7
          D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CE
          CFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCE
          D6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3
          D6CECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECE
          CFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCE
          CECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECF
          CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECE
          CFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCE
          D6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7
          D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6
          D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6
          D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7
          D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6
          D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6
          D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6DED7DED6D7D6D6D7
          D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECE
          CFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCE
          D6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3
          D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CE
          CFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCE
          D6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3
          D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CE
          CFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCE
          DED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7
          D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6
          D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCECED3CED6D7D6
          D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3
          CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6
          D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6
          D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3
          CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6
          D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6
          CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECF
          CED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6
          D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6
          CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECF
          CED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6
          D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6
          D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CE
          CFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCE
          D6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3
          D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CE
          CFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCE
          D6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3
          D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CE
          D3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6
          D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3
          D6D6D3D6D6D3D6CED3CECECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6
          D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6
          CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3
          D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6
          D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6
          CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECF
          CECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECE
          CFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCE
          CECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECF
          CECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECE
          CFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCE
          CECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3
          D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6
          D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6
          DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7
          D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6
          D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6
          DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7
          D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6
          D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6
          D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CE
          CFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6CECFCECED3CE
          CECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECF
          CECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6
          D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CE
          CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECF
          CED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6
          D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6
          D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7
          D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6
          D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6
          D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7
          D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6
          D7D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6
          D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3
          D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CE
          D3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CE
          D6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3
          D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CE
          D3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CE
          D6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3
          D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6
          D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6
          D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7
          D6D6D3D6D6D7D6D6D3D6CED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECE
          CFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCE
          CECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECF
          CECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECE
          CFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCE
          CED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3
          CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6
          D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6
          CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3
          CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6
          D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6
          CED3CECECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7
          D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CE
          CFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCE
          D6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3
          D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CE
          CFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCE
          D6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3
          D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CE
          CFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCE
          D6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7
          D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6
          D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6
          D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7
          D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6
          D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6
          D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7
          D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CE
          CFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCE
          CECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECF
          CECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECE
          CFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCE
          CECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECF
          CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECE
          CFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCE
          D6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7
          DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6
          D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6
          D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7
          DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6
          D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6
          D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7
          DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CE
          CFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCE
          D6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6
          D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6
          CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECF
          CED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6
          D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6
          CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3
          D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6
          D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6
          CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3
          D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6
          D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6
          CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6CECFCED6D3D6CECFCED6D3
          D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6
          D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CE
          D6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3
          D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6
          D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CE
          D6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3
          D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6
          D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CE
          D6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3
          D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CE
          CFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6CECFCECECFCE
          CECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECF
          CECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECE
          CFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCE
          CECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECF
          CED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6
          D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6
          D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3
          CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6
          D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6
          D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3
          CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6
          D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6
          D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CE
          CFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCE
          D6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3
          D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CE
          CFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCE
          D6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3
          D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6
          D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6
          D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7
          DED6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6
          D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6
          D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7
          D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6
          D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6
          CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECF
          CED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECE
          D3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6
          CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECF
          CED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECE
          D3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6
          CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6D6D3D6CED3CED6D3D6CED3CED6D3
          D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6
          D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6
          D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7
          D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6
          D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6
          D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7
          D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6
          D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6
          D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3
          D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CE
          D3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6CED3CED6D3D6
          CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3
          CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6
          D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6
          CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3
          CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECE
          CFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCE
          CECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECF
          CECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECE
          CFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCE
          CECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECF
          CECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECE
          CFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCE
          D6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7
          D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6
          D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6
          D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7
          D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6
          D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6
          D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7
          D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CE
          CFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCE
          D6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3
          D6CECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECE
          CFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCE
          CECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECF
          CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECE
          CFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCE
          D6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7
          D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6
          D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6
          D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7
          D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6
          D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6
          D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6DED7DED6D7D6D6D7
          D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECE
          CFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCE
          D6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3
          D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CE
          CFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCE
          D6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3
          D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CE
          CFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCE
          DED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7
          D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6
          D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCECED3CED6D7D6
          D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3
          CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6
          D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6
          D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3
          CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6
          D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6
          CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECF
          CED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6
          D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6
          CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECF
          CED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6
          D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6
          D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CE
          CFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCE
          D6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3
          D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CE
          CFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCE
          D6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3
          D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CE
          D3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6
          D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3
          D6D6D3D6D6D3D6CED3CECECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6
          D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6
          CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3
          D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6
          D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6
          CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECF
          CECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECE
          CFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCE
          CECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECF
          CECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECE
          CFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCE
          CECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3
          D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6
          D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6
          DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7
          D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6
          D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6
          DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7
          D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6
          D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6
          D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CE
          CFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6CECFCECED3CE
          CECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECF
          CECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6
          D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CE
          CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECF
          CED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6
          D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6
          D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7
          D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6
          D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6
          D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7
          D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6
          D7D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6
          D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3
          D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CE
          D3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CE
          D6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3
          D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CE
          D3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CE
          D6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3
          D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6
          D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6
          D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7
          D6D6D3D6D6D7D6D6D3D6CED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECE
          CFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCE
          CECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECF
          CECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECE
          CFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCE
          CED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3
          CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6
          D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6
          CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3
          CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6
          D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6
          CED3CECECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7
          D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CE
          CFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCE
          D6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3
          D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CE
          CFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCE
          D6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3
          D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CE
          CFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCE
          D6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7
          D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6
          D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6
          D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7
          D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6
          D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6
          D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7
          D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CE
          CFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCE
          CECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECF
          CECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECE
          CFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCE
          CECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECF
          CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECE
          CFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCE
          D6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7
          DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6
          D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6
          D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7
          DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6
          D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6
          D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7
          DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CE
          CFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCE
          D6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6
          D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6
          CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECF
          CED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6
          D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6
          CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3
          D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6
          D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6
          CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3
          D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6
          D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6
          CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6CECFCED6D3D6CECFCED6D3
          D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6
          D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CE
          D6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3
          D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6
          D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CE
          D6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3
          D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6
          D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CE
          D6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3
          D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CE
          CFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6CECFCECECFCE
          CECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECF
          CECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECE
          CFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCE
          CECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECF
          CED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6
          D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6
          D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3
          CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6
          D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6
          D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3
          CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6
          D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6
          D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CE
          CFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCE
          D6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3
          D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CE
          CFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCE
          D6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3
          D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6
          D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6
          D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7
          DED6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6
          D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6
          D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7
          D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6
          D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6
          CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECF
          CED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECE
          D3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6
          CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECF
          CED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECE
          D3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6
          CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6D6D3D6CED3CED6D3D6CED3CED6D3
          D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6
          D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6
          D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7
          D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6
          D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6
          D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7
          D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6
          D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6
          D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3
          D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CE
          D3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6CED3CED6D3D6
          CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3
          CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6
          D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6
          CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3
          CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECE
          CFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCE
          CECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECF
          CECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECE
          CFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCE
          CECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECF
          CECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECE
          CFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCE
          D6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7
          D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6
          D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6
          D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7
          D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6
          D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6
          D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7
          D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CE
          CFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCE
          D6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3
          D6CECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECE
          CFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCE
          CECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECF
          CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECE
          CFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCE
          D6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7
          D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6
          D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6
          D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7
          D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6
          D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6
          D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6DED7DED6D7D6D6D7
          D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECE
          CFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCE
          D6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3
          D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CE
          CFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCE
          D6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3
          D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CE
          CFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCE
          DED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7
          D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6
          D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCECED3CED6D7D6
          D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3
          CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6
          D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6
          D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3
          CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6
          D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6
          CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECF
          CED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6
          D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6
          CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECF
          CED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6
          D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6
          D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CE
          CFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCE
          D6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3
          D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CE
          CFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCE
          D6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3
          D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CE
          D3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6
          D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3
          D6D6D3D6D6D3D6CED3CECECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6
          D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6
          CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3
          D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6
          D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6
          CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECF
          CECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECE
          CFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCE
          CECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECF
          CECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECE
          CFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCE
          CECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3
          D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6
          D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6
          DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7
          D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6
          D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6
          DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7
          D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6
          D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6
          D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CE
          CFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6CECFCECED3CE
          CECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECF
          CECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6
          D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CE
          CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECF
          CED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6
          D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6
          D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7
          D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6
          D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6
          D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7
          D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6
          D7D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6
          D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3
          D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CE
          D3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CE
          D6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3
          D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CE
          D3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CE
          D6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3
          D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6
          D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6
          D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7
          D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CE
          CFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCE
          D6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3
          D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CE
          CFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCE
          D6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7
          D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6
          D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6
          D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7
          D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6
          D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6
          D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7
          D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CE
          CFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCE
          CECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECF
          CECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECE
          CFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCE
          CECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECF
          CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECE
          CFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCE
          D6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7
          D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6
          D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6
          DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7
          D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6
          D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6
          DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7
          D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECE
          CFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCE
          D6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3
          D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CE
          CFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCE
          D6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3
          D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CE
          CFCECED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6
          D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3
          CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6
          D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6
          D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3
          CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6
          D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6
          D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3
          CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6
          D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6
          CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECF
          CED6D3D6CECFCED6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CE
          D3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6
          D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3
          D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CE
          D3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6
          D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CE
          CFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCE
          D6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3
          D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CE
          CFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCE
          D6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CECECFCECECFCECECFCECECFCECECF
          CED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6
          D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6
          CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3
          D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6
          D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6
          CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3
          D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6
          D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6
          CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECF
          CECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECE
          CFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6CECFCE
          D6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3
          D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CE
          CFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCE
          D6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3
          D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6
          D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6
          DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7
          D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6
          D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6
          DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7
          D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6
          D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6
          CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECF
          CECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6
          D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CE
          CECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECF
          CECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6
          D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CE
          CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECF
          CED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6
          D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6
          D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7
          D6D6D7D6D6D7D6D6D7D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6
          D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6
          D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7
          D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6
          D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6
          D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3
          D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CE
          D3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CE
          D6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3
          D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CE
          D3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CE
          D6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6CED3CED6D3D6CED3CED6D3D6CED3
          CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECE
          CFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCE
          CECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECF
          CECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECE
          CFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCE
          CECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECF
          CECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECE
          CFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCE
          CED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3
          CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6
          D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6
          D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7
          D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6
          D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6
          D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7
          D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CE
          CFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCE
          D6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3
          D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CE
          CFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCE
          D6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3
          D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CE
          CFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCE
          D6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7
          D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6
          D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6
          D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7
          D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6
          D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6
          D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7
          D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CE
          CFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCE
          CECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECF
          CECECFCECECFCECECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CE
          CFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCE
          D6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3
          D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CE
          CFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCE
          D6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7
          DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6
          D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6
          D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7
          DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6
          D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6
          D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6CED3CED6D7D6D6D3
          D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6
          D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6
          CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECF
          CED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6
          D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6
          CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECF
          CED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6
          D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6
          CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3
          D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6
          D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6CECFCE
          D6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3
          D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CE
          CFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCE
          D6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3
          D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6
          D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CE
          D6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3
          D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6
          D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CE
          D6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3
          D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6
          D3D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6
          CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECF
          CECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECE
          CFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCE
          CECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECF
          CECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECE
          CFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCE
          CECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECF
          CED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6
          D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6
          D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3
          CED6D7D6D6D3D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6
          D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6
          D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7
          DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6
          D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6
          D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CE
          CFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCE
          D6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3
          D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CE
          CFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCE
          D6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECF
          CED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6
          D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6
          D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7
          D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6
          D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6
          D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7
          D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6
          D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6
          CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECF
          CED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECE
          D3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6D6D3D6CED3CE
          D6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3
          D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CE
          D3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CE
          D6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3
          D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6
          D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6
          D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7
          D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6
          D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6
          D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7
          D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6
          D3D6CED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCE
          CED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3
          CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6
          D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6
          CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3
          CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6
          D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6
          CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3
          CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECE
          CFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCE
          CECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECF
          CECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CE
          CFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCE
          D6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3
          D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CE
          CFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCE
          D6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7
          D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6
          D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6
          D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7
          D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6
          D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6
          D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7
          D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CE
          CFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCE
          CECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECF
          CECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECE
          CFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCE
          CECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECF
          CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECE
          CFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCE
          D6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7
          D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6
          D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6
          DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7
          D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6
          D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6
          DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7
          D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECE
          CFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCE
          D6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3
          D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CE
          CFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCE
          D6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3
          D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CE
          CFCECED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6
          D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3
          CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6
          D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6
          D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3
          CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6
          D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6
          D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3
          CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6
          D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6
          CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECF
          CED6D3D6CECFCED6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CE
          D3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6
          D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3
          D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CE
          D3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6
          D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CE
          CFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCE
          D6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3
          D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CE
          CFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCE
          D6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CECECFCECECFCECECFCECECFCECECF
          CED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6
          D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6
          CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3
          D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6
          D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6
          CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3
          D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6
          D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6
          CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECF
          CECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECE
          CFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6CECFCE
          D6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3
          D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CE
          CFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCE
          D6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3
          D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6
          D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6
          DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7
          D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6
          D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6
          DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7
          D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6
          D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6
          CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECF
          CECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6
          D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CE
          CECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECF
          CECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6
          D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CE
          CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECF
          CED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6
          D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6
          D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7
          D6D6D7D6D6D7D6D6D7D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6
          D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6
          D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7
          D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6
          D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6
          D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3
          D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CE
          D3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CE
          D6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3
          D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CE
          D3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CE
          D6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6CED3CED6D3D6CED3CED6D3D6CED3
          CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECE
          CFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCE
          CECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECF
          CECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECE
          CFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCE
          CECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECF
          CECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECE
          CFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCE
          CED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3
          CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6
          D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6
          D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7
          D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6
          D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6
          D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7
          D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CE
          CFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCE
          D6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3
          D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CE
          CFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCE
          D6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3
          D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CE
          CFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCE
          D6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7
          D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6
          D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6
          D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7
          D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6
          D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6
          D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7
          D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CE
          CFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCE
          CECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECF
          CECECFCECECFCECECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CE
          CFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCE
          D6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3
          D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CE
          CFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCE
          D6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7
          DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6
          D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6
          D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7
          DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6
          D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6
          D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6CED3CED6D7D6D6D3
          D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6
          D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6
          CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECF
          CED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6
          D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6
          CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECF
          CED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6
          D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6
          CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3
          D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6
          D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6CECFCE
          D6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3
          D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CE
          CFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCE
          D6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3
          D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6
          D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CE
          D6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3
          D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6
          D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CE
          D6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3
          D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6
          D3D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6
          CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECF
          CECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECE
          CFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCE
          CECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECF
          CECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECE
          CFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCE
          CECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECF
          CED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6
          D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6
          D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3
          CED6D7D6D6D3D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6
          D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6
          D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7
          DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6
          D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6
          D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CE
          CFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCE
          D6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3
          D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CE
          CFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCE
          D6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECF
          CED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6
          D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6
          D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7
          D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6
          D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6
          D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7
          D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6
          D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6
          CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECF
          CED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECE
          D3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6D6D3D6CED3CE
          D6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3
          D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CE
          D3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CE
          D6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3
          D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6
          D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6
          D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7
          D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6
          D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6
          D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7
          D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6
          D3D6CED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCE
          CED3CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3
          CED6D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6
          D3D6CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6
          CED3CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3
          CED6D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6
          D3D6CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6
          CED3CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3
          CECECFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECE
          CFCECECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCE
          CECFCECECFCECECFCECECFCECED3CED6D3D6CED3CED6D3D6CED3CECECFCECECF
          CECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CE
          CFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCE
          D6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3
          D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CE
          CFCED6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCE
          D6D7D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7
          D6D6D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6
          D3D6D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6
          D6D7D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7
          D6D6D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6
          D3D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D3D6D6D7D6D6D3D6
          D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7
          D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CE
          CFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCE
          CECFCECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECF
          CECECFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECE
          CFCECECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCE
          CECFCECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECF
          CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECE
          CFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCE
          D6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7
          D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6
          D7D6D6D7D6D6D7D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D7D6
          DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7
          D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6
          D7D6D6D7D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6
          DED7DECECFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7
          D6CECFCED6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECE
          CFCED6D3D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCE
          D6D3D6CECFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3
          D6CECFCED6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CE
          CFCED6D3D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCE
          D6D3D6CECFCED6D7D6D6D7D6DED7DED6D7D6D6D7D6CECFCED6D3D6CECFCED6D3
          D6CECFCEDED7DED6D7D6D6D7D6D6D7D6DED7DECECFCED6D3D6CECFCED6D3D6CE
          CFCECED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6
          D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3
          CED6D7D6D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6
          D7D6CED3CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6
          D6D3D6D6D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3
          CED6D7D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6
          D7D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6
          D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3
          CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6
          D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D7D6D6D3D6D6D7D6CED3CED6D3D6
          CECFCED6D3D6CECFCED6D3D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6D6D3D6CECF
          CED6D3D6CECFCED6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CE
          D3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6
          D6D3D6CED3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3
          D6D6D3D6D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CE
          D3CED6D3D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6
          D6D3D6CECFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3
          D6CECFCED6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CE
          CFCED6D3D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCE
          D6D3D6CECFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3
          D6CECFCED6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CED6D3D6CECFCED6D3D6CE
          CFCED6D3D6D6D3D6D6D3D6CED3CED6D3D6D6D3D6D6D3D6CECFCED6D3D6CECFCE
          D6D3D6CED3CED6D3D6D6D3D6D6D3D6CED3CECECFCECECFCECECFCECECFCECECF
          CED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6
          D7D6D6D3D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6
          CED3CED6D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3
          D6D6D7D6CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6
          D7D6D6D3D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6
          CED3CED6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3
          D6D6D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6
          D7D6CECFCECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6
          CECFCECECFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6CECF
          CECECFCECECFCECECFCECECFCED6D7D6CED3CED6D7D6D6D3D6D6D7D6CECFCECE
          CFCECECFCECECFCECECFCED6D7D6D6D3D6D6D7D6CED3CED6D7D6D6D3D6CECFCE
          D6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3
          D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CE
          CFCED6D3D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCE
          D6D3D6D6D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3
          D6D6D7D6DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6
          D7D6D6D7D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6
          DED7DED6D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7
          D6D6D7D6DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6
          D7D6D6D7D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6
          DED7DED6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6DED7DED6D7D6D6D7
          D6D6D7D6D6D3D6CECFCED6D3D6CECFCED6D3D6D6D7D6D6D7D6D6D7D6DED7DED6
          D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6
          CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECF
          CECED3CECECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6
          D3D6CECFCECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CE
          CECFCED6D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECF
          CECED3CECECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6
          D3D6CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CE
          CECFCED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECF
          CED6D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6
          D7D6D6D7D6D6D7D6D6D7D6D6D7D6CECFCECED3CECECFCED6D3D6CECFCED6D7D6
          D6D7D6D6D7D6D6D7D6D6D7D6CECFCED6D3D6CECFCECED3CECECFCED6D7D6D6D7
          D6D6D7D6D6D7D6D6D7D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6
          D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6
          D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7
          D6D6D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6
          D3D6D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6
          D6D3D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3
          D6CED3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CE
          D3CED6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CE
          D6D3D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3
          D6CED3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CE
          D3CED6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6D6D3D6CED3CED6D3D6CED3CE
          D6D3D6D6D3D6D6D7D6D6D3D6D6D7D6D6D3D6}
        DrawStyle = idsTile
        TileOffsetX = 0
        TileOffsetY = 0
      end>
    Left = 56
    Top = 344
  end
end
