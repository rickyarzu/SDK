object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 528
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  StyleElements = [seFont]
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BorderPanel: TscGPPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 528
    Align = alClient
    FluentUIOpaque = False
    TabOrder = 0
    BlurBackground = False
    BlurBackgroundAmount = 5
    BackgroundStyle = gppbsColor
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomImageIndex = -1
    DragForm = False
    DragTopForm = True
    DrawTextMode = scdtmGDI
    FillGradientAngle = 90
    FillGradientBeginAlpha = 255
    FillGradientEndAlpha = 255
    FillGradientBeginColorOffset = 25
    FillGradientEndColorOffset = 25
    FrameWidth = 0
    FillColor = clBtnFace
    FillColorAlpha = 100
    FillColor2 = clNone
    FrameColor = clBtnShadow
    FrameColorAlpha = 255
    FrameRadius = 0
    ScaleFrameWidth = False
    ShowCaption = False
    CaptionGlowEffect.Enabled = False
    CaptionGlowEffect.Color = clBtnShadow
    CaptionGlowEffect.AlphaValue = 255
    CaptionGlowEffect.GlowSize = 7
    CaptionGlowEffect.Offset = 0
    CaptionGlowEffect.Intensive = True
    CaptionGlowEffect.StyleColors = True
    Color = clBtnFace
    Caption = 'BorderPanel'
    TransparentBackground = True
    StorePaintBuffer = True
    Sizeable = False
    WallpaperIndex = -1
    WordWrap = False
    object scGPPanel4: TscGPPanel
      Left = 0
      Top = 0
      Width = 768
      Height = 34
      Align = alTop
      FluentUIOpaque = False
      TabOrder = 0
      BlurBackground = False
      BlurBackgroundAmount = 5
      BackgroundStyle = gppbsColor
      ContentMarginLeft = 0
      ContentMarginRight = 0
      ContentMarginTop = 0
      ContentMarginBottom = 0
      CustomImageIndex = -1
      DragForm = True
      DragTopForm = True
      DrawTextMode = scdtmGDI
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FrameWidth = 0
      FillColor = 10114859
      FillColorAlpha = 0
      FillColor2 = clNone
      FrameColor = clBtnShadow
      FrameColorAlpha = 255
      FrameRadius = 0
      ShowCaption = False
      CaptionGlowEffect.Enabled = False
      CaptionGlowEffect.Color = clBtnShadow
      CaptionGlowEffect.AlphaValue = 255
      CaptionGlowEffect.GlowSize = 7
      CaptionGlowEffect.Offset = 0
      CaptionGlowEffect.Intensive = True
      CaptionGlowEffect.StyleColors = True
      Color = clBtnFace
      Caption = 'scGPPanel2'
      TransparentBackground = True
      StorePaintBuffer = True
      Sizeable = False
      WallpaperIndex = -1
      WordWrap = False
      object CloseButton: TscGPGlyphButton
        AlignWithMargins = True
        Left = 723
        Top = 0
        Width = 45
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alRight
        FluentUIOpaque = False
        TabOrder = 0
        OnClick = CloseButtonClick
        Animation = False
        Badge.Color = clRed
        Badge.ColorAlpha = 255
        Badge.Font.Charset = DEFAULT_CHARSET
        Badge.Font.Color = clWhite
        Badge.Font.Height = -11
        Badge.Font.Name = 'Tahoma'
        Badge.Font.Style = [fsBold]
        Badge.Visible = False
        Caption = 'CloseButton'
        CaptionCenterAlignment = False
        CanFocused = False
        CustomDropDown = False
        DrawTextMode = scdtmGDI
        FluentLightEffect = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clNone
        Options.HotColor = 4210943
        Options.PressedColor = 4210943
        Options.FocusedColor = clBtnFace
        Options.DisabledColor = clBtnText
        Options.NormalColor2 = clNone
        Options.HotColor2 = clNone
        Options.PressedColor2 = clNone
        Options.FocusedColor2 = clNone
        Options.DisabledColor2 = clNone
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 220
        Options.PressedColorAlpha = 180
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
        Options.NormalColor2Alpha = 255
        Options.HotColor2Alpha = 255
        Options.PressedColor2Alpha = 255
        Options.FocusedColor2Alpha = 255
        Options.DisabledColor2Alpha = 255
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = clNone
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clNone
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 70
        Options.FrameHotColorAlpha = 100
        Options.FramePressedColorAlpha = 150
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 30
        Options.FontNormalColor = clBtnText
        Options.FontHotColor = clBtnText
        Options.FontPressedColor = clBtnText
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeFillGradientColorOffset = 25
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpRect
        Options.ShapeStyleLineSize = 0
        Options.ArrowSize = 9
        Options.ArrowAreaSize = 0
        Options.ArrowType = scgpatDefault
        Options.ArrowThickness = 2
        Options.ArrowThicknessScaled = False
        Options.ArrowNormalColor = clBtnText
        Options.ArrowHotColor = clBtnText
        Options.ArrowPressedColor = clBtnText
        Options.ArrowFocusedColor = clBtnText
        Options.ArrowDisabledColor = clBtnText
        Options.ArrowNormalColorAlpha = 200
        Options.ArrowHotColorAlpha = 255
        Options.ArrowPressedColorAlpha = 255
        Options.ArrowFocusedColorAlpha = 200
        Options.ArrowDisabledColorAlpha = 125
        Options.StyleColors = True
        Options.PressedHotColors = False
        GlyphOptions.NormalColor = clWindowText
        GlyphOptions.HotColor = clWhite
        GlyphOptions.PressedColor = clWhite
        GlyphOptions.FocusedColor = clWhite
        GlyphOptions.DisabledColor = clWhite
        GlyphOptions.NormalColorAlpha = 255
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Kind = scgpbgkClose
        GlyphOptions.Thickness = 2
        GlyphOptions.ThicknessScaled = True
        GlyphOptions.Size = 11
        GlyphOptions.StyleColors = True
        TextMargin = -1
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        SplitButton = False
        RepeatClick = False
        RepeatClickInterval = 100
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
        ToggleMode = False
      end
      object scLabel1: TscGPLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 672
        Height = 28
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 1
        DragForm = True
        DragTopForm = True
        DrawTextMode = scdtmGDIPlus
        ContentMarginLeft = 2
        ContentMarginRight = 2
        ContentMarginTop = 2
        ContentMarginBottom = 2
        DisabledFontColor = clNone
        FrameWidth = 0
        FillColor = clBtnText
        FillColorAlpha = 0
        FillColor2 = clNone
        FillColor2Alpha = 0
        FillGradientAngle = 0
        FrameColor = clBtnText
        FrameColorAlpha = 40
        FrameRadius = 5
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = False
        Alignment = taCenter
        ShowEllipsis = True
        Caption = 'Fluent UI - GP Controls - Demo'
      end
      object MinButton: TscGPGlyphButton
        AlignWithMargins = True
        Left = 678
        Top = 0
        Width = 45
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alRight
        FluentUIOpaque = False
        TabOrder = 2
        OnClick = MinButtonClick
        Animation = False
        Badge.Color = clRed
        Badge.ColorAlpha = 255
        Badge.Font.Charset = DEFAULT_CHARSET
        Badge.Font.Color = clWhite
        Badge.Font.Height = -11
        Badge.Font.Name = 'Tahoma'
        Badge.Font.Style = [fsBold]
        Badge.Visible = False
        Caption = 'scGPGlyphButton1'
        CaptionCenterAlignment = False
        CanFocused = False
        CustomDropDown = False
        DrawTextMode = scdtmGDI
        FluentLightEffect = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWindowText
        Options.PressedColor = clWindowText
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColor2 = clNone
        Options.HotColor2 = clNone
        Options.PressedColor2 = clNone
        Options.FocusedColor2 = clNone
        Options.DisabledColor2 = clNone
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
        Options.NormalColor2Alpha = 255
        Options.HotColor2Alpha = 255
        Options.PressedColor2Alpha = 255
        Options.FocusedColor2Alpha = 255
        Options.DisabledColor2Alpha = 255
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = clNone
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clNone
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 70
        Options.FrameHotColorAlpha = 100
        Options.FramePressedColorAlpha = 150
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 30
        Options.FontNormalColor = clBtnText
        Options.FontHotColor = clBtnText
        Options.FontPressedColor = clBtnText
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeFillGradientColorOffset = 25
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpRect
        Options.ShapeStyleLineSize = 0
        Options.ArrowSize = 9
        Options.ArrowAreaSize = 0
        Options.ArrowType = scgpatDefault
        Options.ArrowThickness = 2
        Options.ArrowThicknessScaled = False
        Options.ArrowNormalColor = clBtnText
        Options.ArrowHotColor = clBtnText
        Options.ArrowPressedColor = clBtnText
        Options.ArrowFocusedColor = clBtnText
        Options.ArrowDisabledColor = clBtnText
        Options.ArrowNormalColorAlpha = 200
        Options.ArrowHotColorAlpha = 255
        Options.ArrowPressedColorAlpha = 255
        Options.ArrowFocusedColorAlpha = 200
        Options.ArrowDisabledColorAlpha = 125
        Options.StyleColors = True
        Options.PressedHotColors = False
        GlyphOptions.NormalColor = clWindowText
        GlyphOptions.HotColor = clWindowText
        GlyphOptions.PressedColor = clWindowText
        GlyphOptions.FocusedColor = clWindowText
        GlyphOptions.DisabledColor = clWindowText
        GlyphOptions.NormalColorAlpha = 200
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Kind = scgpbgkMinimize
        GlyphOptions.Thickness = 2
        GlyphOptions.ThicknessScaled = True
        GlyphOptions.Size = 14
        GlyphOptions.StyleColors = True
        TextMargin = -1
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        SplitButton = False
        RepeatClick = False
        RepeatClickInterval = 100
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = True
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
        ToggleMode = False
      end
    end
    object scGPToolPager1: TscGPToolPager
      Left = 0
      Top = 34
      Width = 768
      Height = 460
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      FluentUIOpaque = False
      TabOrder = 1
      TabStop = True
      Color = clBtnFace
      DrawTextMode = scdtmGDIPlus
      EnableDragReorderTabs = False
      TabsBGFillColor = clNone
      TabsBGFillColorAlpha = 255
      TransparentBackground = True
      FrameWidth = 0
      FrameScaleWidth = True
      FrameColor = clBtnText
      FrameColorAlpha = 80
      BorderStyle = scgpbsFrame
      MouseWheelSupport = False
      ShowFocusRect = True
      ShowInActiveTab = False
      ShowCloseButtons = False
      TabsLeftOffset = 15
      TabsRightOffset = 15
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
      TabOptions.ActiveColor = clBtnFace
      TabOptions.MouseInColor = clBtnShadow
      TabOptions.FocusedColor = clBtnFace
      TabOptions.NormalColorAlpha = 0
      TabOptions.ActiveColorAlpha = 0
      TabOptions.MouseInColorAlpha = 0
      TabOptions.FocusedColorAlpha = 0
      TabOptions.FrameNormalColor = clBtnText
      TabOptions.FrameActiveColor = clHighlight
      TabOptions.FrameMouseInColor = clBtnText
      TabOptions.FrameFocusedColor = clHighlight
      TabOptions.FrameWidth = 4
      TabOptions.FrameNormalColorAlpha = 50
      TabOptions.FrameActiveColorAlpha = 200
      TabOptions.FrameMouseInColorAlpha = 60
      TabOptions.FrameFocusedColorAlpha = 254
      TabOptions.FontNormalColor = clBtnText
      TabOptions.FontActiveColor = clBtnText
      TabOptions.FontMouseInColor = clBtnText
      TabOptions.FontFocusedColor = clBtnText
      TabOptions.TabStyle = gptsBottomLine
      TabOptions.LineWidth = 0
      TabOptions.ShapeFillGradientAngle = 90
      TabOptions.GradientColorOffset = 30
      TabOptions.ShapeCornerRadius = 5
      TabOptions.StyleColors = True
      TabCloseButtonOptions.NormalColor = clBtnText
      TabCloseButtonOptions.HotColor = clRed
      TabCloseButtonOptions.PressedColor = clRed
      TabCloseButtonOptions.DisabledColor = clBtnText
      TabCloseButtonOptions.NormalColorAlpha = 0
      TabCloseButtonOptions.HotColorAlpha = 220
      TabCloseButtonOptions.PressedColorAlpha = 200
      TabCloseButtonOptions.DisabledColorAlpha = 0
      TabCloseButtonOptions.GlyphNormalColor = clBtnText
      TabCloseButtonOptions.GlyphHotColor = clWhite
      TabCloseButtonOptions.GlyphPressedColor = clWhite
      TabCloseButtonOptions.GlyphDisabledColor = clBtnText
      TabCloseButtonOptions.GlyphNormalColorAlpha = 200
      TabCloseButtonOptions.GlyphHotColorAlpha = 255
      TabCloseButtonOptions.GlyphPressedColorAlpha = 200
      TabCloseButtonOptions.GlyphDisabledColorAlpha = 100
      TabCloseButtonOptions.ShapeKind = scgptcbRounded
      TabCloseButtonOptions.StyleColros = True
      TabSpacing = 10
      TabMargin = 10
      ScrollButtonWidth = 20
      ScrollButtonArrowColor = clBtnText
      ScrollButtonArrowThickness = 2
      ScrollButtonColor = clBtnText
      ScrollButtonTransparent = False
      TabHeight = 40
      Tabs = <
        item
          Page = scGPToolPagerPage1
          Visible = True
          Enabled = True
          ImageIndex = -1
          Caption = 'Controls #1'
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
          CustomOptions.LineWidth = 0
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
          ImageIndex = -1
          Caption = 'Controls #2'
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
          CustomOptions.LineWidth = 0
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
          ImageIndex = -1
          Caption = 'Controls #3'
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
          CustomOptions.LineWidth = 0
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
      FreeOnClose = False
      StorePaintBuffer = True
      object scGPToolPagerPage3: TscGPToolPagerPage
        Left = 0
        Top = 40
        Width = 768
        Height = 420
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 2
        Visible = False
        CanScroll = False
        FillGradientAngle = 90
        FillGradientBeginAlpha = 255
        FillGradientEndAlpha = 255
        FillGradientBeginColorOffset = 25
        FillGradientEndColorOffset = 25
        FillColor = clNone
        FillColorAlpha = 0
        FillColor2 = clNone
        Color = clBtnFace
        BGStyleKind = scgspbTransparent
        ScrollButtonWidth = 17
        CustomImageIndex = -1
        WallpaperIndex = -1
        HotScroll = False
        AutoSize = False
        ScrollType = scstHorizontal
        ScrollOffset = 0
        ScrollTimerInterval = 50
        ScrollButtonArrowWidth = 2
        ScrollButtonArrowColor = clBtnText
        ScrollButtonColor = clBtnText
        ScrollButtonBGColor = clBtnFace
        HorzScrollDirection = scgspsdLeftToRight
        VertScrollDirection = scgspsdTopToBottom
        TouchScroll = False
        StorePaintBuffer = True
        object scGPMeter1: TscGPMeter
          Left = 282
          Top = 42
          Width = 200
          Height = 200
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          FluentUIOpaque = False
          ShowHint = False
          TabOrder = 0
          TransparentBackground = True
          ArrowType = scgpatArrow
          ArrowColor = clHighlight
          ArrowColorAlpha = 220
          FrameWidth = 3
          ArrowWidth = 4
          ArrowShadow = False
          CenterFrameColor = clBtnText
          CenterFrameColorAlpha = 200
          CenterFillColor = clBtnText
          CenterFillColorAlpha = 50
          CenterFillGradientAngle = 90
          CenterFrameWidth = 2
          DrawTextMode = scdtmGDIPlus
          ImageIndex = 13
          FormatStrValue = '##0.0'
          FormatStrLabel = '##0'
          FrameColor = clBtnShadow
          FrameShadow = False
          FillColor = clWindow
          FillColorAlpha = 100
          FillGradientAngle = 90
          MaxValue = 100.000000000000000000
          ValueTextColor = clHighlight
          ValueHintColor = clWindowText
          ScaleSteps = 10
          ScaleSubSteps = 5
          ScaleSections = <
            item
              StartValue = 10.000000000000000000
              EndValue = 50.000000000000000000
              Color = clYellow
              ColorAlpha = 80
            end
            item
              StartValue = 50.000000000000000000
              EndValue = 85.000000000000000000
              Color = clGreen
              ColorAlpha = 80
            end
            item
              StartValue = 85.000000000000000000
              EndValue = 100.000000000000000000
              Color = clRed
              ColorAlpha = 80
            end
            item
              EndValue = 10.000000000000000000
              Color = 16744448
              ColorAlpha = 100
            end>
          ScaleDivider = 1.000000000000000000
          TicksColor = clWindowText
          TicksColorAlpha = 200
          TicksWidth = 3
          TicksSmallWidth = 2
          ShowValue = True
          ShowScaleTicks = True
          ShowScaleLabels = True
          ShowImage = True
        end
        object scGPDial1: TscGPDial
          Left = 50
          Top = 51
          Width = 183
          Height = 183
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBtnText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          TabStop = True
          CanFocused = True
          TransparentBackground = True
          ImageIndex = -1
          DrawTextMode = scdtmGDIPlus
          KnobColor = clBtnText
          KnobColorAlpha = 255
          FrameWidth = 2
          KnobShadow = False
          FrameColor = clBtnText
          FillColor = clWindow
          FillColorAlpha = 100
          FillGradientAngle = 90
          ProgressColor = clWhite
          ProgressColorAlpha = 100
          ShowProgress = True
          FormatStrLabel = '##0'
          FormatStrValue = '##0.0'
          MaxValue = 100.000000000000000000
          ValueChangeStep = 0.100000000000000000
          ValueTextColor = clHighlight
          ScaleSteps = 10
          ScaleSubSteps = 2
          ScaleSections = <
            item
              EndValue = 50.000000000000000000
              Color = clLime
              ColorAlpha = 100
            end
            item
              StartValue = 50.000000000000000000
              EndValue = 85.000000000000000000
              Color = clYellow
              ColorAlpha = 100
            end
            item
              StartValue = 85.000000000000000000
              EndValue = 100.000000000000000000
              Color = clRed
              ColorAlpha = 100
            end>
          ScaleDivider = 1
          TicksColor = clBtnText
          TicksColorAlpha = 200
          TicksWidth = 2
          TicksSmallWidth = 2
          ShowScaleTicks = True
          ShowScaleLabels = True
          ShowValue = True
          ShowImage = True
          OnChange = scGPDial1Change
        end
        object scGPSlider1: TscGPSlider
          Left = 96
          Top = 271
          Width = 342
          Height = 82
          FluentUIOpaque = False
          TabOrder = 2
          TabStop = True
          CanFocused = True
          TransparentBackground = True
          DrawTextMode = scdtmGDIPlus
          FormatStrLabel = '##0'
          MinValue = -50.000000000000000000
          Vertical = False
          MaxValue = 50.000000000000000000
          JumpWhenClick = True
          ValueChangeStep = 0.500000000000000000
          ValueChangeWithStep = True
          SmoothTicks = True
          ScaleSteps = 10
          ScaleSubSteps = 5
          ScaleSections = <
            item
              StartValue = -50.000000000000000000
              Color = clRed
              ColorAlpha = 100
            end
            item
              EndValue = 50.000000000000000000
              Color = clGreen
              ColorAlpha = 100
            end>
          ScaleDivider = 1.000000000000000000
          ThumbColor = clBtnText
          ThumbDisbaledColor = clBtnShadow
          ThumbShadow = False
          TicksColor = clBtnText
          TicksColorAlpha = 150
          TicksWidth = 2
          TicksSmallWidth = 1
          TrackColor = clBtnText
          TrackColorAlpha = 50
          TrackProgressColor = clHighlight
          TrackProgressColorAlpha = 254
          ShowScaleTicks = True
          ShowScaleLabels = True
          ShowProgressFromValue = True
          ScalePosition = scgpspBoth
          ShowProgress = True
        end
        object scGPSlider4: TscGPSlider
          Left = 540
          Top = 26
          Width = 50
          Height = 300
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBtnText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 3
          CanFocused = False
          TransparentBackground = True
          DrawTextMode = scdtmGDIPlus
          FormatStrLabel = '##0'
          MinValue = -50.000000000000000000
          Vertical = True
          MaxValue = 50.000000000000000000
          JumpWhenClick = True
          ValueChangeStep = 1.000000000000000000
          ValueChangeWithStep = False
          SmoothTicks = True
          ScaleSteps = 2
          ScaleSubSteps = 10
          ScaleSections = <>
          ScaleDivider = 1.000000000000000000
          ThumbColor = clBtnText
          ThumbDisbaledColor = clBtnShadow
          ThumbShadow = False
          TicksColor = clBtnText
          TicksColorAlpha = 150
          TicksWidth = 2
          TicksSmallWidth = 1
          TrackColor = clBtnText
          TrackColorAlpha = 50
          TrackProgressColor = clHighlight
          TrackProgressColorAlpha = 254
          ShowScaleTicks = True
          ShowScaleLabels = False
          ShowProgressFromValue = False
          ScalePosition = scgpspBoth
          ShowProgress = True
          OnChange = scGPSlider4Change
        end
        object scGPHVMeter4: TscGPHVMeter
          Left = 641
          Top = 4
          Width = 69
          Height = 350
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 4
          TransparentBackground = True
          ArrowColor = clBtnText
          ArrowShadow = False
          DrawTextMode = scdtmGDIPlus
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
      end
      object scGPToolPagerPage2: TscGPToolPagerPage
        Left = 0
        Top = 40
        Width = 768
        Height = 420
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 1
        Visible = False
        CanScroll = False
        FillGradientAngle = 90
        FillGradientBeginAlpha = 255
        FillGradientEndAlpha = 255
        FillGradientBeginColorOffset = 25
        FillGradientEndColorOffset = 25
        FillColor = clNone
        FillColorAlpha = 0
        FillColor2 = clNone
        Color = clBtnFace
        BGStyleKind = scgspbTransparent
        ScrollButtonWidth = 17
        CustomImageIndex = -1
        WallpaperIndex = -1
        HotScroll = False
        AutoSize = False
        ScrollType = scstHorizontal
        ScrollOffset = 0
        ScrollTimerInterval = 50
        ScrollButtonArrowWidth = 2
        ScrollButtonArrowColor = clBtnText
        ScrollButtonColor = clBtnText
        ScrollButtonBGColor = clBtnFace
        HorzScrollDirection = scgspsdLeftToRight
        VertScrollDirection = scgspsdTopToBottom
        TouchScroll = False
        StorePaintBuffer = True
        object scGPListBox1: TscGPListBox
          Left = 17
          Top = 24
          Width = 212
          Height = 193
          BiDiMode = bdLeftToRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          TabStop = True
          Touch.InteractiveGestures = [igPan, igPressAndTap]
          Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoParentPassthrough]
          CustomImageIndex = -1
          Options.FillColor = clWindow
          Options.FillColor2 = clWindow
          Options.FillColorAlpha = 100
          Options.FillColor2Alpha = 100
          Options.FillGradientAngle = 90
          Options.FrameColor = clBtnText
          Options.FrameColorAlpha = 50
          Options.FrameWidth = 2
          Options.FrameScaleWidth = False
          ScrollBarOptions.BorderWidth = 0
          ScrollBarOptions.FillColor = clBtnFace
          ScrollBarOptions.FillColorAlpha = 100
          ScrollBarOptions.ThumbColor = clWindowText
          ScrollBarOptions.ThumbColorAlpha = 50
          ScrollBarOptions.ThumbColorHotAlpha = 100
          ScrollBarOptions.ThumbColorPressedAlpha = 150
          ScrollBarOptions.ThumbRounded = False
          ScrollBarOptions.Position = scgpsbDefault
          ScrollBarOptions.Size = 11
          Color = clBtnFace
          TransparentBackground = True
          WallpaperIndex = -1
          AutoComplete = True
          DrawTextMode = scdtmGDIPlus
          SelectionOptions.Color = clHighlight
          SelectionOptions.ColorAlpha = 150
          SelectionOptions.FillStyle = scgpsfColor
          SelectionOptions.GradientAngle = 90
          SelectionOptions.FocusedColor = clHighlight
          SelectionOptions.FocusedColorAlpha = 200
          SelectionOptions.FocusedFillStyle = scgpsfColor
          SelectionOptions.FocusedGradientAngle = 90
          SelectionOptions.FontColor = clHighlightText
          SelectionOptions.FocusedFontColor = clHighlightText
          ShowLines = True
          LineColor = clWindowText
          LineColorAlpha = 20
          MouseMoveChangeIndex = False
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          DetailFont.Charset = DEFAULT_CHARSET
          DetailFont.Color = clWindowText
          DetailFont.Height = -11
          DetailFont.Name = 'Tahoma'
          DetailFont.Style = []
          DetailPosition = scgplbdBottom
          DetailWordWrap = False
          Items = <
            item
              Header = True
              Enabled = True
              Caption = 'Header #1'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail1'
              ImageIndex = 0
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'TscGPListBox '
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail1'
              ImageIndex = 1
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item2'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail2'
              ImageIndex = 2
              Checked = False
            end
            item
              Header = False
              Enabled = False
              Caption = 'Disabled item'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail3'
              ImageIndex = 3
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item4'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail4'
              ImageIndex = 4
              Checked = False
            end
            item
              Header = True
              Enabled = True
              Caption = 'Header #2'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item5'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail5'
              ImageIndex = 5
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item6'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail6'
              ImageIndex = 6
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item7'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail7'
              ImageIndex = 7
              Checked = False
            end>
          ItemIndex = 1
          ItemMargin = 5
          ItemWordWrap = True
          ItemShowEllipsis = False
          IndentMargin = 10
          CheckBoxOptions.NormalColor = clWindow
          CheckBoxOptions.DisabledColor = clWindow
          CheckBoxOptions.NormalColorAlpha = 200
          CheckBoxOptions.DisabledColorAlpha = 125
          CheckBoxOptions.FrameNormalColor = clWindowText
          CheckBoxOptions.FrameDisabledColor = clWindowText
          CheckBoxOptions.FrameNormalColorAlpha = 100
          CheckBoxOptions.FrameDisabledColorAlpha = 50
          CheckBoxOptions.CheckedNormalColor = clWindow
          CheckBoxOptions.CheckedDisabledColor = clWindow
          CheckBoxOptions.CheckedNormalColorAlpha = 200
          CheckBoxOptions.CheckedDisabledColorAlpha = 125
          CheckBoxOptions.CheckedFrameNormalColor = clWindowText
          CheckBoxOptions.CheckedFrameDisabledColor = clWindowText
          CheckBoxOptions.CheckedFrameNormalColorAlpha = 100
          CheckBoxOptions.CheckedFrameDisabledColorAlpha = 50
          CheckBoxOptions.FrameWidth = 2
          CheckBoxOptions.CheckMarkNormalColor = clWindowText
          CheckBoxOptions.CheckMarkDisabledColor = clWindowText
          CheckBoxOptions.CheckMarkNormalColorAlpha = 255
          CheckBoxOptions.CheckMarkDisabledColorAlpha = 125
          CheckBoxOptions.ShapeSize = 20
          CheckBoxOptions.ShapeCornerRadius = 0
          CheckBoxOptions.CheckMarkThickness = 2
          CheckBoxOptions.ScaleCheckMarkThickness = True
          CheckBoxOptions.ScaleFrameWidth = True
          ShowCheckBoxes = True
          Images = scGPVirtualImageList1
          ShowItemDetails = True
          ItemSpacing = 10
          ItemHeight = 50
          HeaderOptions.Color = clBtnFace
          HeaderOptions.ColorAlpha = 100
          HeaderOptions.FillStyle = scgpsfColor
          HeaderOptions.GradientAngle = 90
          HeaderOptions.Margin = 5
          HeaderHeight = 30
        end
        object scGPListBox4: TscGPListBox
          Left = 260
          Top = 24
          Width = 212
          Height = 193
          BiDiMode = bdLeftToRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          TabStop = True
          Touch.InteractiveGestures = [igPan, igPressAndTap]
          Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoParentPassthrough]
          CustomImageIndex = -1
          Options.FillColor = 65408
          Options.FillColor2 = clWindow
          Options.FillColorAlpha = 90
          Options.FillColor2Alpha = 0
          Options.FillStyle = scgpsfGradient
          Options.FillGradientAngle = -90
          Options.FrameColor = clBtnText
          Options.FrameColorAlpha = 50
          Options.FrameWidth = 2
          Options.FrameScaleWidth = False
          ScrollBarOptions.BorderWidth = 2
          ScrollBarOptions.FillColor = clBtnFace
          ScrollBarOptions.FillColorAlpha = 0
          ScrollBarOptions.ThumbColor = clWindowText
          ScrollBarOptions.ThumbColorAlpha = 50
          ScrollBarOptions.ThumbColorHotAlpha = 100
          ScrollBarOptions.ThumbColorPressedAlpha = 150
          ScrollBarOptions.ThumbRounded = False
          ScrollBarOptions.Position = scgpsbOverContent
          ScrollBarOptions.Size = 10
          Color = clBtnFace
          TransparentBackground = True
          WallpaperIndex = -1
          AutoComplete = True
          DrawTextMode = scdtmGDIPlus
          SelectionOptions.Color = clHighlight
          SelectionOptions.ColorAlpha = 100
          SelectionOptions.FillStyle = scgpsfColor
          SelectionOptions.GradientAngle = 90
          SelectionOptions.FocusedColor = clHighlight
          SelectionOptions.FocusedColorAlpha = 150
          SelectionOptions.FocusedFillStyle = scgpsfColor
          SelectionOptions.FocusedGradientAngle = 90
          SelectionOptions.FontColor = clHighlightText
          SelectionOptions.FocusedFontColor = clHighlightText
          ShowLines = True
          LineColor = clWindowText
          LineColorAlpha = 20
          MouseMoveChangeIndex = False
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          DetailFont.Charset = DEFAULT_CHARSET
          DetailFont.Color = clWindowText
          DetailFont.Height = -11
          DetailFont.Name = 'Tahoma'
          DetailFont.Style = []
          DetailPosition = scgplbdBottom
          DetailWordWrap = False
          Items = <
            item
              Header = True
              Enabled = True
              Caption = 'Header #1'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail1'
              ImageIndex = 0
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item with indents'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail1'
              ImageIndex = 1
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item2'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail2'
              ImageIndex = 2
              Checked = False
              Indent = 1
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item3'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail3'
              ImageIndex = 3
              Checked = False
              Indent = 1
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item4'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail4'
              ImageIndex = 4
              Checked = False
            end
            item
              Header = True
              Enabled = True
              Caption = 'Header #2'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
              Indent = 1
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item5'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail5'
              ImageIndex = 5
              Checked = False
              Indent = 1
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item6'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail6'
              ImageIndex = 6
              Checked = False
              Indent = 2
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item7'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail7'
              ImageIndex = 7
              Checked = False
              Indent = 3
            end>
          ItemIndex = 1
          ItemMargin = 5
          ItemWordWrap = True
          ItemShowEllipsis = False
          IndentMargin = 15
          CheckBoxOptions.NormalColor = clWindow
          CheckBoxOptions.DisabledColor = clWindow
          CheckBoxOptions.NormalColorAlpha = 200
          CheckBoxOptions.DisabledColorAlpha = 125
          CheckBoxOptions.FrameNormalColor = clWindowText
          CheckBoxOptions.FrameDisabledColor = clWindowText
          CheckBoxOptions.FrameNormalColorAlpha = 100
          CheckBoxOptions.FrameDisabledColorAlpha = 50
          CheckBoxOptions.CheckedNormalColor = clWindow
          CheckBoxOptions.CheckedDisabledColor = clWindow
          CheckBoxOptions.CheckedNormalColorAlpha = 200
          CheckBoxOptions.CheckedDisabledColorAlpha = 125
          CheckBoxOptions.CheckedFrameNormalColor = clWindowText
          CheckBoxOptions.CheckedFrameDisabledColor = clWindowText
          CheckBoxOptions.CheckedFrameNormalColorAlpha = 100
          CheckBoxOptions.CheckedFrameDisabledColorAlpha = 50
          CheckBoxOptions.FrameWidth = 2
          CheckBoxOptions.CheckMarkNormalColor = clWindowText
          CheckBoxOptions.CheckMarkDisabledColor = clWindowText
          CheckBoxOptions.CheckMarkNormalColorAlpha = 255
          CheckBoxOptions.CheckMarkDisabledColorAlpha = 125
          CheckBoxOptions.ShapeSize = 20
          CheckBoxOptions.ShapeCornerRadius = 0
          CheckBoxOptions.CheckMarkThickness = 2
          CheckBoxOptions.ScaleCheckMarkThickness = True
          CheckBoxOptions.ScaleFrameWidth = True
          ShowCheckBoxes = False
          Images = scGPVirtualImageList1
          ShowItemDetails = False
          ItemSpacing = 10
          ItemHeight = 40
          HeaderOptions.Color = clBtnText
          HeaderOptions.ColorAlpha = 20
          HeaderOptions.FillStyle = scgpsfColor
          HeaderOptions.GradientAngle = 90
          HeaderOptions.Margin = 5
          HeaderHeight = 30
        end
        object scGPListBox3: TscGPListBox
          Left = 500
          Top = 24
          Width = 205
          Height = 193
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 2
          TabStop = True
          Touch.InteractiveGestures = [igPan, igPressAndTap]
          Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoParentPassthrough]
          CustomImageIndex = -1
          Options.FillColor = 8404992
          Options.FillColor2 = clAqua
          Options.FillColorAlpha = 120
          Options.FillColor2Alpha = 120
          Options.FillStyle = scgpsfGradient
          Options.FillGradientAngle = 45
          Options.FrameColor = 33023
          Options.FrameColorAlpha = 255
          Options.FrameWidth = 2
          Options.FrameScaleWidth = False
          ScrollBarOptions.BorderWidth = 2
          ScrollBarOptions.FillColor = clWhite
          ScrollBarOptions.FillColorAlpha = 0
          ScrollBarOptions.ThumbColor = clYellow
          ScrollBarOptions.ThumbColorAlpha = 179
          ScrollBarOptions.ThumbColorHotAlpha = 220
          ScrollBarOptions.ThumbColorPressedAlpha = 255
          ScrollBarOptions.ThumbRounded = True
          ScrollBarOptions.Position = scgpsbOverContent
          ScrollBarOptions.Size = 11
          Color = clBtnFace
          TransparentBackground = True
          WallpaperIndex = -1
          AutoComplete = True
          DrawTextMode = scdtmGDIPlus
          SelectionOptions.Color = 33023
          SelectionOptions.ColorAlpha = 220
          SelectionOptions.FillStyle = scgpsfColor
          SelectionOptions.GradientAngle = 90
          SelectionOptions.FocusedColor = 33023
          SelectionOptions.FocusedColorAlpha = 255
          SelectionOptions.FocusedFillStyle = scgpsfGradient
          SelectionOptions.FocusedGradientAngle = 90
          SelectionOptions.FontColor = clWhite
          SelectionOptions.FocusedFontColor = clWhite
          ShowLines = False
          LineColor = clBtnFace
          LineColorAlpha = 20
          MouseMoveChangeIndex = False
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = [fsBold]
          DetailFont.Charset = DEFAULT_CHARSET
          DetailFont.Color = clWindowText
          DetailFont.Height = -11
          DetailFont.Name = 'Tahoma'
          DetailFont.Style = []
          DetailPosition = scgplbdBottom
          DetailWordWrap = False
          Items = <
            item
              Header = False
              Enabled = True
              Caption = 'Custom adjustment'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item2'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item3'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item4'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item5'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item6'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item7'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item8'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item9'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end>
          ItemIndex = 1
          ItemMargin = 10
          ItemWordWrap = True
          ItemShowEllipsis = False
          IndentMargin = 10
          CheckBoxOptions.NormalColor = clWindow
          CheckBoxOptions.DisabledColor = clWhite
          CheckBoxOptions.NormalColorAlpha = 200
          CheckBoxOptions.DisabledColorAlpha = 125
          CheckBoxOptions.FrameNormalColor = clWhite
          CheckBoxOptions.FrameDisabledColor = clWhite
          CheckBoxOptions.FrameNormalColorAlpha = 100
          CheckBoxOptions.FrameDisabledColorAlpha = 50
          CheckBoxOptions.CheckedNormalColor = clWhite
          CheckBoxOptions.CheckedDisabledColor = clWhite
          CheckBoxOptions.CheckedNormalColorAlpha = 200
          CheckBoxOptions.CheckedDisabledColorAlpha = 125
          CheckBoxOptions.CheckedFrameNormalColor = clWhite
          CheckBoxOptions.CheckedFrameDisabledColor = clWhite
          CheckBoxOptions.CheckedFrameNormalColorAlpha = 100
          CheckBoxOptions.CheckedFrameDisabledColorAlpha = 50
          CheckBoxOptions.FrameWidth = 2
          CheckBoxOptions.CheckMarkNormalColor = clWhite
          CheckBoxOptions.CheckMarkDisabledColor = clWhite
          CheckBoxOptions.CheckMarkNormalColorAlpha = 255
          CheckBoxOptions.CheckMarkDisabledColorAlpha = 125
          CheckBoxOptions.ShapeSize = 20
          CheckBoxOptions.ShapeCornerRadius = 0
          CheckBoxOptions.CheckMarkThickness = 2
          CheckBoxOptions.ScaleCheckMarkThickness = True
          CheckBoxOptions.ScaleFrameWidth = True
          ShowCheckBoxes = False
          ShowItemDetails = False
          ItemSpacing = 5
          ItemHeight = 30
          HeaderOptions.Color = clBtnFace
          HeaderOptions.ColorAlpha = 220
          HeaderOptions.FillStyle = scgpsfColor
          HeaderOptions.GradientAngle = 90
          HeaderOptions.Margin = 5
          HeaderHeight = 20
        end
        object scGPComboBox2: TscGPComboBox
          Left = 17
          Top = 245
          Width = 212
          Height = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 3
          ContentMargin = 8
          AutoComplete = False
          Animation = False
          CheckedListMode = False
          CheckedListWrap = True
          DetailPosition = scgplbdBottom
          DetailWordWrap = False
          DrawTextMode = scdtmGDIPlus
          Images = scGPVirtualImageList1
          Items = <
            item
              Header = True
              Enabled = True
              Caption = 'Header #1'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'TscGPComboBox'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail1'
              ImageIndex = 1
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item2'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail2'
              ImageIndex = 2
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item3'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail3'
              ImageIndex = 3
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item4'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail4'
              ImageIndex = 4
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item5'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail5'
              ImageIndex = 5
              Checked = False
            end
            item
              Header = True
              Enabled = True
              Caption = 'Header #2'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item6'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail6'
              ImageIndex = 6
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item7'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail7'
              ImageIndex = 7
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item8'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail8'
              ImageIndex = 8
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item9'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail9'
              ImageIndex = 9
              Checked = False
            end>
          ItemIndex = 1
          ItemWordWrap = True
          ItemShowEllipsis = False
          DropDownCount = 5
          Options.NormalColor = clWindow
          Options.HotColor = clWindow
          Options.PressedColor = clWindow
          Options.FocusedColor = clBtnFace
          Options.DisabledColor = clBtnFace
          Options.NormalColorAlpha = 100
          Options.HotColorAlpha = 150
          Options.PressedColorAlpha = 250
          Options.FocusedColorAlpha = 250
          Options.DisabledColorAlpha = 250
          Options.FrameNormalColor = clBtnText
          Options.FrameHotColor = clHighlight
          Options.FramePressedColor = clHighlight
          Options.FrameFocusedColor = clHighlight
          Options.FrameDisabledColor = clBtnText
          Options.FrameWidth = 2
          Options.FrameNormalColorAlpha = 50
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 30
          Options.FontNormalColor = clBtnText
          Options.FontHotColor = clBtnText
          Options.FontPressedColor = clBtnText
          Options.FontFocusedColor = clBtnText
          Options.FontDisabledColor = clBtnShadow
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpcssRect
          Options.ScaleFrameWidth = False
          Options.ArrowSize = 12
          Options.ArrowAreaWidth = 35
          Options.StyleColors = True
          ShowItemImage = True
          ShowItemText = True
          ShowItemDetail = True
          ListBoxHeaderFont.Charset = DEFAULT_CHARSET
          ListBoxHeaderFont.Color = clWindowText
          ListBoxHeaderFont.Height = -11
          ListBoxHeaderFont.Name = 'Tahoma'
          ListBoxHeaderFont.Style = [fsBold]
          ListBoxHeaderOptions.Color = clBtnFace
          ListBoxHeaderOptions.ColorAlpha = 220
          ListBoxHeaderOptions.FillStyle = scgpsfColor
          ListBoxHeaderOptions.GradientAngle = 90
          ListBoxHeaderOptions.Margin = 5
          DetailFont.Charset = DEFAULT_CHARSET
          DetailFont.Color = clWindowText
          DetailFont.Height = -11
          DetailFont.Name = 'Tahoma'
          DetailFont.Style = []
          ListBoxLineColor = clWindowText
          ListBoxWidth = 0
          ListBoxHeight = 0
          ListBoxShowItemDetails = True
          ListBoxShowLines = True
          ListBoxItemHeight = 50
          ListBoxHeaderHeight = 25
          ListBoxItemSpacing = 5
          ListBoxItemMargin = 5
          ListBoxItemTextAlignment = taLeftJustify
          ListBoxIndentMargin = 10
          ListBoxScrollBarOptions.BorderWidth = 0
          ListBoxScrollBarOptions.FillColor = clBtnFace
          ListBoxScrollBarOptions.FillColorAlpha = 100
          ListBoxScrollBarOptions.ThumbColor = clWindowText
          ListBoxScrollBarOptions.ThumbColorAlpha = 50
          ListBoxScrollBarOptions.ThumbColorHotAlpha = 100
          ListBoxScrollBarOptions.ThumbColorPressedAlpha = 150
          ListBoxScrollBarOptions.ThumbRounded = False
          ListBoxScrollBarOptions.Position = scgpsbDefault
          ListBoxScrollBarOptions.Size = 11
          ListBoxOptions.FillColor = clWindow
          ListBoxOptions.FillColor2 = clWindow
          ListBoxOptions.FillColorAlpha = 255
          ListBoxOptions.FillColor2Alpha = 255
          ListBoxOptions.FillGradientAngle = 90
          ListBoxOptions.FrameColor = clBtnShadow
          ListBoxOptions.FrameColorAlpha = 255
          ListBoxOptions.FrameWidth = 2
          ListBoxOptions.FrameScaleWidth = False
          MouseWheelSupport = True
        end
        object scGPComboBox1: TscGPComboBox
          Left = 260
          Top = 245
          Width = 245
          Height = 41
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 4
          ContentMargin = 10
          AutoComplete = False
          Animation = False
          CheckedListMode = False
          CheckedListWrap = True
          DetailPosition = scgplbdBottom
          DetailWordWrap = False
          DrawTextMode = scdtmGDIPlus
          Images = scGPVirtualImageList1
          Items = <
            item
              Header = True
              Enabled = True
              Caption = 'Header #1'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Items with indents'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail1'
              ImageIndex = 1
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item2'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail2'
              ImageIndex = 2
              Checked = False
              Indent = 1
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item3'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail3'
              ImageIndex = 3
              Checked = False
              Indent = 2
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item4'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail4'
              ImageIndex = 4
              Checked = False
              Indent = 2
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item5'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail5'
              ImageIndex = 5
              Checked = False
            end
            item
              Header = True
              Enabled = True
              Caption = 'Header #2'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item6'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail6'
              ImageIndex = 6
              Checked = False
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item7'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail7'
              ImageIndex = 7
              Checked = False
              Indent = 1
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item8'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail8'
              ImageIndex = 8
              Checked = False
              Indent = 2
            end
            item
              Header = False
              Enabled = True
              Caption = 'Item9'
              CustomColor = clNone
              CustomColorAlpha = 255
              CustomTextColor = clNone
              CustomDetailTextColor = clNone
              Detail = 'Detail9'
              ImageIndex = 9
              Checked = False
              Indent = 3
            end>
          ItemIndex = 5
          ItemWordWrap = True
          ItemShowEllipsis = False
          DropDownCount = 5
          Options.NormalColor = clBtnFace
          Options.HotColor = clBtnFace
          Options.PressedColor = clBtnFace
          Options.FocusedColor = clBtnFace
          Options.DisabledColor = clBtnFace
          Options.NormalColorAlpha = 50
          Options.HotColorAlpha = 100
          Options.PressedColorAlpha = 150
          Options.FocusedColorAlpha = 100
          Options.DisabledColorAlpha = 255
          Options.FrameNormalColor = clBtnText
          Options.FrameHotColor = clHighlight
          Options.FramePressedColor = clHighlight
          Options.FrameFocusedColor = clHighlight
          Options.FrameDisabledColor = clBtnText
          Options.FrameWidth = 2
          Options.FrameNormalColorAlpha = 100
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 50
          Options.FontNormalColor = clBtnText
          Options.FontHotColor = clBtnText
          Options.FontPressedColor = clBtnText
          Options.FontFocusedColor = clBtnText
          Options.FontDisabledColor = clBtnShadow
          Options.ShapeFillStyle = scgpsfGradient
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpcssRoundedLeftRight
          Options.ScaleFrameWidth = False
          Options.ArrowSize = 12
          Options.ArrowAreaWidth = 0
          Options.StyleColors = True
          ShowItemImage = True
          ShowItemText = True
          ShowItemDetail = False
          ListBoxHeaderFont.Charset = DEFAULT_CHARSET
          ListBoxHeaderFont.Color = clWindowText
          ListBoxHeaderFont.Height = -11
          ListBoxHeaderFont.Name = 'Tahoma'
          ListBoxHeaderFont.Style = [fsBold]
          ListBoxHeaderOptions.Color = clBtnFace
          ListBoxHeaderOptions.ColorAlpha = 220
          ListBoxHeaderOptions.FillStyle = scgpsfColor
          ListBoxHeaderOptions.GradientAngle = 90
          ListBoxHeaderOptions.Margin = 5
          DetailFont.Charset = DEFAULT_CHARSET
          DetailFont.Color = clWindowText
          DetailFont.Height = -11
          DetailFont.Name = 'Tahoma'
          DetailFont.Style = []
          ListBoxLineColor = clWindowText
          ListBoxWidth = 0
          ListBoxHeight = 0
          ListBoxShowItemDetails = False
          ListBoxShowLines = True
          ListBoxItemHeight = 50
          ListBoxHeaderHeight = 25
          ListBoxItemSpacing = 5
          ListBoxItemMargin = 5
          ListBoxItemTextAlignment = taLeftJustify
          ListBoxIndentMargin = 15
          ListBoxScrollBarOptions.BorderWidth = 2
          ListBoxScrollBarOptions.FillColor = clBtnFace
          ListBoxScrollBarOptions.FillColorAlpha = 100
          ListBoxScrollBarOptions.ThumbColor = clWindowText
          ListBoxScrollBarOptions.ThumbColorAlpha = 50
          ListBoxScrollBarOptions.ThumbColorHotAlpha = 100
          ListBoxScrollBarOptions.ThumbColorPressedAlpha = 150
          ListBoxScrollBarOptions.ThumbRounded = True
          ListBoxScrollBarOptions.Position = scgpsbOverContent
          ListBoxScrollBarOptions.Size = 11
          ListBoxOptions.FillColor = clWindow
          ListBoxOptions.FillColor2 = clWindow
          ListBoxOptions.FillColorAlpha = 255
          ListBoxOptions.FillColor2Alpha = 255
          ListBoxOptions.FillGradientAngle = 90
          ListBoxOptions.FrameColor = clBtnShadow
          ListBoxOptions.FrameColorAlpha = 255
          ListBoxOptions.FrameWidth = 2
          ListBoxOptions.FrameScaleWidth = False
          MouseWheelSupport = True
        end
      end
      object scGPToolPagerPage1: TscGPToolPagerPage
        Left = 0
        Top = 40
        Width = 768
        Height = 420
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 0
        CanScroll = False
        FillGradientAngle = 90
        FillGradientBeginAlpha = 255
        FillGradientEndAlpha = 255
        FillGradientBeginColorOffset = 25
        FillGradientEndColorOffset = 25
        FillColor = clNone
        FillColorAlpha = 0
        FillColor2 = clNone
        Color = clBtnFace
        BGStyleKind = scgspbTransparent
        ScrollButtonWidth = 17
        CustomImageIndex = -1
        WallpaperIndex = -1
        HotScroll = False
        AutoSize = False
        ScrollType = scstHorizontal
        ScrollOffset = 0
        ScrollTimerInterval = 50
        ScrollButtonArrowWidth = 2
        ScrollButtonArrowColor = clBtnText
        ScrollButtonColor = clBtnText
        ScrollButtonBGColor = clBtnFace
        HorzScrollDirection = scgspsdLeftToRight
        VertScrollDirection = scgspsdTopToBottom
        TouchScroll = False
        StorePaintBuffer = True
        object scGPSwitch1: TscGPSwitch
          Left = 30
          Top = 44
          Width = 68
          Height = 40
          FluentUIOpaque = False
          TabOrder = 0
          Animation = True
          FrameColor = clBtnText
          FrameOnColor = clHighlight
          FramePressedColor = clNone
          ParentColor = True
          State = scswOn
          StyleKind = scswsStyled
          ThumbColor = clGray
          ThumbOnColor = clHighlight
          ThumbPressedColor = clWhite
          FrameColorAlpha = 50
          FrameOnColorAlpha = 100
          FramePressedColorAlpha = 150
          ThumbColorAlpha = 255
          ThumbOnColorAlpha = 255
          ThumbPressedColorAlpha = 200
          ThumbShadow = True
          ThumbMargin = 0
          ThumbMarginHot = 0
          ThumbMarginPressed = 0
          FrameSolid = True
          FrameOnSolid = True
          FrameInside = True
          FrameWidth = 2
        end
        object scGPSwitch3: TscGPSwitch
          Left = 35
          Top = 93
          Width = 64
          Height = 41
          FluentUIOpaque = False
          TabOrder = 1
          Animation = True
          FrameColor = clBtnText
          FrameOnColor = clHighlight
          FramePressedColor = clNone
          ParentColor = True
          State = scswOff
          StyleKind = scswsStyled
          ThumbColor = clWhite
          ThumbOnColor = clWhite
          ThumbPressedColor = clBtnText
          FrameColorAlpha = 50
          FrameOnColorAlpha = 255
          FramePressedColorAlpha = 200
          ThumbColorAlpha = 255
          ThumbOnColorAlpha = 255
          ThumbPressedColorAlpha = 255
          ThumbShadow = True
          ThumbMargin = 0
          ThumbMarginHot = 0
          ThumbMarginPressed = 0
          FrameSolid = True
          FrameOnSolid = True
          FrameInside = False
          FrameWidth = 2
          OnChangeState = scGPSwitch3ChangeState
        end
        object scGPTrackBar1: TscGPTrackBar
          Left = 27
          Top = 153
          Width = 153
          Height = 42
          FluentUIOpaque = False
          TabOrder = 2
          TabStop = True
          TransparentBackground = True
          ShowFocusRect = True
          JumpWhenClick = False
          MouseWheelSupport = True
          MouseWheelOpposite = False
          CanFocused = True
          MouseSupport = True
          MinValue = 0
          MaxValue = 100
          Value = 50
          Vertical = False
          ReadOnly = False
          OnChange = scGPTrackBar1Change
          DrawTextMode = scdtmGDIPlus
          FocusFrameColor = clNone
          TrackColor = clBtnText
          TrackProgressColor = clHighlight
          TrackSize = 2
          TrackAlpha = 50
          TrackRounded = False
          TrackProgressAlpha = 250
          ThumbBorderInColor = clWindow
          ThumbBorderOutColor = clBtnShadow
          ThumbColor = clHighlight
          ThumbHotColor = clHighlight
          ThumbPressedColor = clHighlight
          ThumbDisabledColor = clGray
          ThumbShapeStyle = scgptssRoundRect
          ThumbCursor = crDefault
          ThumbUseCursor = False
        end
        object scGPProgressBar1: TscGPProgressBar
          Left = 30
          Top = 304
          Width = 150
          Height = 5
          FluentUIOpaque = False
          TabOrder = 3
          Vertical = False
          AnimationMode = False
          Active = False
          TransparentBackground = True
          FrameAlpha = 30
          ProgressAlpha = 250
          FrameColor = clBtnText
          ProgressColor = clHighlight
          MinValue = 0
          MaxValue = 100
          Value = 50
        end
        object scGPCircledProgressBar1: TscGPCircledProgressBar
          Left = 148
          Top = 15
          Width = 114
          Height = 114
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBtnText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 4
          AnimationMode = False
          AnimationAcceleration = False
          AnimationLineAngle = 135
          Active = False
          ImageIndex = 13
          Caption = 'Description of process...'
          DrawTextMode = scdtmGDIPlus
          TransparentBackground = True
          ProgressFont.Charset = DEFAULT_CHARSET
          ProgressFont.Color = clHighlight
          ProgressFont.Height = -16
          ProgressFont.Name = 'Tahoma'
          ProgressFont.Style = [fsBold]
          FrameSize = 8
          FrameAlpha = 50
          ProgressAlpha = 255
          FrameColor = clBtnText
          ProgressColor = clHighlight
          MinValue = 0
          MaxValue = 100
          Value = 50
          ShowCaption = True
          ShowProgressText = True
          ShowImage = True
        end
        object scGPGearActivityIndicator1: TscGPGearActivityIndicator
          Left = 312
          Top = 32
          Width = 78
          Height = 78
          FluentUIOpaque = False
          TabOrder = 5
          Active = False
          AnimationAcceleration = False
          GlyphColor = clBtnText
          GlyphColorAlpha = 170
          GlyphThickness = 2
          Kind = scgpgkTwoGears
          TransparentBackground = True
        end
        object scGPRadioButton1: TscGPRadioButton
          Left = 218
          Top = 153
          Width = 184
          Height = 35
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 6
          TabStop = True
          Animation = False
          Caption = 'scGPRadioButton1'
          CanFocused = True
          DrawTextMode = scdtmGDIPlus
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
          DisabledFontColor = clNone
          Options.NormalColor = clWindow
          Options.HotColor = clWindow
          Options.PressedColor = clWindow
          Options.DisabledColor = clWindow
          Options.NormalColorAlpha = 100
          Options.HotColorAlpha = 200
          Options.PressedColorAlpha = 200
          Options.DisabledColorAlpha = 125
          Options.FrameNormalColor = clBtnText
          Options.FrameHotColor = clBtnText
          Options.FramePressedColor = clBtnText
          Options.FrameDisabledColor = clBtnText
          Options.FrameWidth = 2
          Options.FrameNormalColorAlpha = 200
          Options.FrameHotColorAlpha = 200
          Options.FramePressedColorAlpha = 200
          Options.FrameDisabledColorAlpha = 200
          Options.CheckMarkNormalColor = clWindowText
          Options.CheckMarkHotColor = clWindowText
          Options.CheckMarkPressedColor = clWindowText
          Options.CheckMarkDisabledColor = clWindowText
          Options.CheckMarkNormalColorAlpha = 255
          Options.CheckMarkHotColorAlpha = 255
          Options.CheckMarkPressedColorAlpha = 255
          Options.CheckMarkDisabledColorAlpha = 125
          Options.ShapeSize = 31
          Options.ShapeCornerRadius = 0
          Options.CheckMarkThickness = 2
          Options.StyleColors = True
          OptionsChecked.NormalColor = clWindow
          OptionsChecked.HotColor = clWindow
          OptionsChecked.PressedColor = clWindow
          OptionsChecked.DisabledColor = clWindow
          OptionsChecked.NormalColorAlpha = 100
          OptionsChecked.HotColorAlpha = 200
          OptionsChecked.PressedColorAlpha = 200
          OptionsChecked.DisabledColorAlpha = 125
          OptionsChecked.FrameNormalColor = clHighlight
          OptionsChecked.FrameHotColor = clHighlight
          OptionsChecked.FramePressedColor = clHighlight
          OptionsChecked.FrameDisabledColor = clBtnShadow
          OptionsChecked.FrameWidth = 2
          OptionsChecked.FrameNormalColorAlpha = 255
          OptionsChecked.FrameHotColorAlpha = 255
          OptionsChecked.FramePressedColorAlpha = 255
          OptionsChecked.FrameDisabledColorAlpha = 255
          OptionsChecked.CheckMarkNormalColor = clWindowText
          OptionsChecked.CheckMarkHotColor = clWindowText
          OptionsChecked.CheckMarkPressedColor = clWindowText
          OptionsChecked.CheckMarkDisabledColor = clWindowText
          OptionsChecked.CheckMarkNormalColorAlpha = 255
          OptionsChecked.CheckMarkHotColorAlpha = 255
          OptionsChecked.CheckMarkPressedColorAlpha = 255
          OptionsChecked.CheckMarkDisabledColorAlpha = 125
          OptionsChecked.ShapeSize = 31
          OptionsChecked.ShapeCornerRadius = 0
          OptionsChecked.CheckMarkThickness = 2
          OptionsChecked.StyleColors = True
          ImageGlow = True
          Checked = False
          ScaleFrameWidth = True
          ShowFocusRect = True
          UseFontColorToStyleColor = False
        end
        object scGPRadioButton2: TscGPRadioButton
          Left = 221
          Top = 216
          Width = 184
          Height = 35
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 7
          TabStop = True
          Animation = False
          Caption = 'scGPRadioButton2'
          CanFocused = True
          DrawTextMode = scdtmGDIPlus
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
          DisabledFontColor = clNone
          Options.NormalColor = clRed
          Options.HotColor = clRed
          Options.PressedColor = clRed
          Options.DisabledColor = clWindow
          Options.NormalColorAlpha = 0
          Options.HotColorAlpha = 80
          Options.PressedColorAlpha = 0
          Options.DisabledColorAlpha = 125
          Options.FrameNormalColor = clRed
          Options.FrameHotColor = clRed
          Options.FramePressedColor = clRed
          Options.FrameDisabledColor = clBtnShadow
          Options.FrameWidth = 2
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 200
          Options.FrameDisabledColorAlpha = 255
          Options.CheckMarkNormalColor = clRed
          Options.CheckMarkHotColor = clRed
          Options.CheckMarkPressedColor = clRed
          Options.CheckMarkDisabledColor = clSilver
          Options.CheckMarkNormalColorAlpha = 255
          Options.CheckMarkHotColorAlpha = 255
          Options.CheckMarkPressedColorAlpha = 200
          Options.CheckMarkDisabledColorAlpha = 125
          Options.ShapeSize = 25
          Options.ShapeCornerRadius = 0
          Options.CheckMarkThickness = 2
          Options.StyleColors = True
          OptionsChecked.NormalColor = clRed
          OptionsChecked.HotColor = clRed
          OptionsChecked.PressedColor = clRed
          OptionsChecked.DisabledColor = clWindow
          OptionsChecked.NormalColorAlpha = 40
          OptionsChecked.HotColorAlpha = 80
          OptionsChecked.PressedColorAlpha = 20
          OptionsChecked.DisabledColorAlpha = 125
          OptionsChecked.FrameNormalColor = clRed
          OptionsChecked.FrameHotColor = clRed
          OptionsChecked.FramePressedColor = clRed
          OptionsChecked.FrameDisabledColor = clRed
          OptionsChecked.FrameWidth = 2
          OptionsChecked.FrameNormalColorAlpha = 255
          OptionsChecked.FrameHotColorAlpha = 255
          OptionsChecked.FramePressedColorAlpha = 255
          OptionsChecked.FrameDisabledColorAlpha = 255
          OptionsChecked.CheckMarkNormalColor = clRed
          OptionsChecked.CheckMarkHotColor = clRed
          OptionsChecked.CheckMarkPressedColor = clRed
          OptionsChecked.CheckMarkDisabledColor = clRed
          OptionsChecked.CheckMarkNormalColorAlpha = 255
          OptionsChecked.CheckMarkHotColorAlpha = 255
          OptionsChecked.CheckMarkPressedColorAlpha = 255
          OptionsChecked.CheckMarkDisabledColorAlpha = 125
          OptionsChecked.ShapeSize = 25
          OptionsChecked.ShapeCornerRadius = 0
          OptionsChecked.CheckMarkThickness = 2
          OptionsChecked.StyleColors = True
          ImageGlow = True
          Checked = True
          ScaleFrameWidth = True
          ShowFocusRect = True
          UseFontColorToStyleColor = False
        end
        object scGPCheckBox2: TscGPCheckBox
          Left = 456
          Top = 146
          Width = 169
          Height = 46
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 8
          TabStop = True
          Animation = False
          Caption = 'scGPCheckBox2'
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
          DrawTextMode = scdtmGDIPlus
          DisabledFontColor = clNone
          Options.NormalColor = clAqua
          Options.HotColor = clAqua
          Options.PressedColor = clAqua
          Options.DisabledColor = clWindow
          Options.NormalColorAlpha = 50
          Options.HotColorAlpha = 70
          Options.PressedColorAlpha = 50
          Options.DisabledColorAlpha = 125
          Options.FrameNormalColor = 16744448
          Options.FrameHotColor = 16744448
          Options.FramePressedColor = 16744448
          Options.FrameDisabledColor = clBtnShadow
          Options.FrameWidth = 4
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 200
          Options.FrameDisabledColorAlpha = 255
          Options.CheckMarkNormalColor = 33023
          Options.CheckMarkHotColor = 33023
          Options.CheckMarkPressedColor = 33023
          Options.CheckMarkDisabledColor = 33023
          Options.CheckMarkNormalColorAlpha = 255
          Options.CheckMarkHotColorAlpha = 255
          Options.CheckMarkPressedColorAlpha = 255
          Options.CheckMarkDisabledColorAlpha = 125
          Options.ShapeSize = 35
          Options.ShapeCornerRadius = 0
          Options.CheckMarkThickness = 3
          Options.StyleColors = True
          OptionsChecked.NormalColor = clAqua
          OptionsChecked.HotColor = clAqua
          OptionsChecked.PressedColor = clAqua
          OptionsChecked.DisabledColor = clWindow
          OptionsChecked.NormalColorAlpha = 255
          OptionsChecked.HotColorAlpha = 255
          OptionsChecked.PressedColorAlpha = 200
          OptionsChecked.DisabledColorAlpha = 125
          OptionsChecked.FrameNormalColor = 16744448
          OptionsChecked.FrameHotColor = 16744448
          OptionsChecked.FramePressedColor = 16744448
          OptionsChecked.FrameDisabledColor = clBtnShadow
          OptionsChecked.FrameWidth = 4
          OptionsChecked.FrameNormalColorAlpha = 255
          OptionsChecked.FrameHotColorAlpha = 255
          OptionsChecked.FramePressedColorAlpha = 255
          OptionsChecked.FrameDisabledColorAlpha = 255
          OptionsChecked.CheckMarkNormalColor = clBlack
          OptionsChecked.CheckMarkHotColor = clBlack
          OptionsChecked.CheckMarkPressedColor = clBlack
          OptionsChecked.CheckMarkDisabledColor = clBlack
          OptionsChecked.CheckMarkNormalColorAlpha = 255
          OptionsChecked.CheckMarkHotColorAlpha = 255
          OptionsChecked.CheckMarkPressedColorAlpha = 255
          OptionsChecked.CheckMarkDisabledColorAlpha = 125
          OptionsChecked.ShapeSize = 35
          OptionsChecked.ShapeCornerRadius = 0
          OptionsChecked.CheckMarkThickness = 3
          OptionsChecked.StyleColors = True
          Checked = True
          State = cbChecked
          AllowGrayed = True
          ScaleFrameWidth = True
          ScaleCheckMarkThickness = True
          ShowFocusRect = True
          UseFontColorToStyleColor = False
        end
        object scGPCheckBox3: TscGPCheckBox
          Left = 462
          Top = 217
          Width = 128
          Height = 35
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 9
          TabStop = True
          Animation = False
          Caption = 'scGPCheckBox3'
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
          DrawTextMode = scdtmGDIPlus
          DisabledFontColor = clNone
          Options.NormalColor = clWindow
          Options.HotColor = clWindow
          Options.PressedColor = clWindow
          Options.DisabledColor = clWindow
          Options.NormalColorAlpha = 100
          Options.HotColorAlpha = 200
          Options.PressedColorAlpha = 200
          Options.DisabledColorAlpha = 125
          Options.FrameNormalColor = clBtnText
          Options.FrameHotColor = clBtnText
          Options.FramePressedColor = clBtnText
          Options.FrameDisabledColor = clBtnText
          Options.FrameWidth = 2
          Options.FrameNormalColorAlpha = 200
          Options.FrameHotColorAlpha = 200
          Options.FramePressedColorAlpha = 200
          Options.FrameDisabledColorAlpha = 200
          Options.CheckMarkNormalColor = clWindowText
          Options.CheckMarkHotColor = clWindowText
          Options.CheckMarkPressedColor = clWindowText
          Options.CheckMarkDisabledColor = clWindowText
          Options.CheckMarkNormalColorAlpha = 255
          Options.CheckMarkHotColorAlpha = 255
          Options.CheckMarkPressedColorAlpha = 255
          Options.CheckMarkDisabledColorAlpha = 125
          Options.ShapeSize = 20
          Options.ShapeCornerRadius = 4
          Options.CheckMarkThickness = 2
          Options.StyleColors = True
          OptionsChecked.NormalColor = clWindow
          OptionsChecked.HotColor = clWindow
          OptionsChecked.PressedColor = clWindow
          OptionsChecked.DisabledColor = clWindow
          OptionsChecked.NormalColorAlpha = 100
          OptionsChecked.HotColorAlpha = 200
          OptionsChecked.PressedColorAlpha = 200
          OptionsChecked.DisabledColorAlpha = 125
          OptionsChecked.FrameNormalColor = clBtnShadow
          OptionsChecked.FrameHotColor = clHighlight
          OptionsChecked.FramePressedColor = clHighlight
          OptionsChecked.FrameDisabledColor = clBtnShadow
          OptionsChecked.FrameWidth = 2
          OptionsChecked.FrameNormalColorAlpha = 255
          OptionsChecked.FrameHotColorAlpha = 255
          OptionsChecked.FramePressedColorAlpha = 255
          OptionsChecked.FrameDisabledColorAlpha = 255
          OptionsChecked.CheckMarkNormalColor = clWindowText
          OptionsChecked.CheckMarkHotColor = clWindowText
          OptionsChecked.CheckMarkPressedColor = clWindowText
          OptionsChecked.CheckMarkDisabledColor = clWindowText
          OptionsChecked.CheckMarkNormalColorAlpha = 255
          OptionsChecked.CheckMarkHotColorAlpha = 255
          OptionsChecked.CheckMarkPressedColorAlpha = 255
          OptionsChecked.CheckMarkDisabledColorAlpha = 125
          OptionsChecked.ShapeSize = 20
          OptionsChecked.ShapeCornerRadius = 4
          OptionsChecked.CheckMarkThickness = 2
          OptionsChecked.StyleColors = True
          Checked = False
          ScaleFrameWidth = True
          ScaleCheckMarkThickness = True
          ShowFocusRect = True
          UseFontColorToStyleColor = False
        end
        object scGPPanel2: TscGPPanel
          Left = 453
          Top = 21
          Width = 181
          Height = 98
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 10
          BlurBackground = False
          BlurBackgroundAmount = 5
          BackgroundStyle = gppbsColor
          ContentMarginLeft = 0
          ContentMarginRight = 0
          ContentMarginTop = 0
          ContentMarginBottom = 0
          CustomImageIndex = -1
          DragForm = False
          DragTopForm = True
          DrawTextMode = scdtmGDIPlus
          FillGradientAngle = 90
          FillGradientBeginAlpha = 255
          FillGradientEndAlpha = 255
          FillGradientBeginColorOffset = 25
          FillGradientEndColorOffset = 25
          FrameWidth = 2
          FillColor = clWindow
          FillColorAlpha = 100
          FillColor2 = clNone
          FrameColor = clBtnText
          FrameColorAlpha = 50
          FrameRadius = 10
          ShowCaption = True
          CaptionGlowEffect.Enabled = False
          CaptionGlowEffect.Color = clHighlight
          CaptionGlowEffect.AlphaValue = 255
          CaptionGlowEffect.GlowSize = 7
          CaptionGlowEffect.Offset = 0
          CaptionGlowEffect.Intensive = True
          CaptionGlowEffect.StyleColors = True
          Color = clBtnFace
          Caption = 'scGPPanel2'
          TransparentBackground = True
          StorePaintBuffer = True
          Sizeable = False
          WallpaperIndex = -1
          WordWrap = False
        end
        object scGPTrackBar4: TscGPTrackBar
          Left = 27
          Top = 210
          Width = 153
          Height = 26
          FluentUIOpaque = False
          TabOrder = 11
          TransparentBackground = True
          ShowFocusRect = True
          JumpWhenClick = False
          MouseWheelSupport = True
          MouseWheelOpposite = False
          CanFocused = False
          MouseSupport = True
          MinValue = 0
          MaxValue = 100
          Value = 50
          Vertical = False
          ReadOnly = False
          DrawTextMode = scdtmGDIPlus
          FocusFrameColor = clNone
          TrackColor = clBtnText
          TrackProgressColor = clHighlight
          TrackSize = 2
          TrackAlpha = 50
          TrackRounded = False
          TrackProgressAlpha = 255
          ThumbBorderInColor = clWindow
          ThumbBorderOutColor = clBtnShadow
          ThumbColor = clHighlight
          ThumbHotColor = clHighlight
          ThumbPressedColor = clHighlight
          ThumbDisabledColor = clGray
          ThumbShapeStyle = scgptssRoundedFrame
          ThumbCursor = crDefault
          ThumbUseCursor = False
        end
        object scGPLabel3: TscGPLabel
          AlignWithMargins = True
          Left = 362
          Top = 330
          Width = 333
          Height = 45
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 12
          DragForm = True
          DragTopForm = True
          DrawTextMode = scdtmGDIPlus
          ContentMarginLeft = 10
          ContentMarginRight = 2
          ContentMarginTop = 2
          ContentMarginBottom = 2
          DisabledFontColor = clNone
          FrameWidth = 0
          FillColor = clBtnText
          FillColorAlpha = 0
          FillColor2 = clNone
          FillColor2Alpha = 0
          FillGradientAngle = 0
          FrameColor = clBlack
          FrameColorAlpha = 40
          FrameRadius = 5
          GlowEffect.Enabled = False
          GlowEffect.Color = clBtnShadow
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          AutoSize = False
          WordWrap = True
          ShowEllipsis = True
          Caption = 'Note, you must set DrawTextMode = scdtmGDIPlus for all controls!'
        end
        object scGPLabel2: TscGPLabel
          Left = 208
          Top = 330
          Width = 91
          Height = 37
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBtnText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 13
          DragForm = False
          DragTopForm = True
          DrawTextMode = scdtmGDIPlus
          ContentMarginLeft = 10
          ContentMarginRight = 10
          ContentMarginTop = 10
          ContentMarginBottom = 10
          DisabledFontColor = clNone
          FrameWidth = 1
          FillColor = clBtnText
          FillColorAlpha = 20
          FillColor2 = clNone
          FillColor2Alpha = 255
          FillGradientAngle = 0
          FrameColor = clBtnText
          FrameColorAlpha = 40
          FrameRadius = 5
          GlowEffect.Enabled = False
          GlowEffect.Color = clBtnShadow
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          AutoSize = True
          Caption = 'scGPLabel1'
        end
        object scGPButton1: TscGPButton
          Left = 27
          Top = 330
          Width = 150
          Height = 37
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 14
          TabStop = True
          Animation = False
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -11
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          Caption = 'scGPButton1'
          CaptionCenterAlignment = False
          CanFocused = True
          CustomDropDown = False
          DrawTextMode = scdtmGDIPlus
          Margin = -1
          Spacing = 1
          Layout = blGlyphLeft
          ImageIndex = -1
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clBtnFace
          Options.HotColor = clBtnFace
          Options.PressedColor = clBtnShadow
          Options.FocusedColor = clBtnFace
          Options.DisabledColor = clBtnFace
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 50
          Options.HotColorAlpha = 100
          Options.PressedColorAlpha = 220
          Options.FocusedColorAlpha = 150
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 50
          Options.HotColor2Alpha = 100
          Options.PressedColor2Alpha = 255
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clBtnShadow
          Options.FrameHotColor = clHighlight
          Options.FramePressedColor = clHighlight
          Options.FrameFocusedColor = clHighlight
          Options.FrameDisabledColor = clBtnShadow
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clBtnText
          Options.FontHotColor = clBtnText
          Options.FontPressedColor = clBtnText
          Options.FontFocusedColor = clBtnText
          Options.FontDisabledColor = clBtnShadow
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = -90
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpRect
          Options.ShapeStyleLineSize = 0
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clBtnText
          Options.ArrowHotColor = clBtnText
          Options.ArrowPressedColor = clBtnText
          Options.ArrowFocusedColor = clBtnText
          Options.ArrowDisabledColor = clBtnText
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = False
          HotImageIndex = -1
          FluentLightEffect = False
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
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 0
          AllowAllUp = False
          ToggleMode = False
        end
        object scGPTrackBar2: TscGPTrackBar
          Left = 27
          Top = 250
          Width = 153
          Height = 28
          FluentUIOpaque = False
          TabOrder = 15
          TransparentBackground = True
          ShowFocusRect = True
          JumpWhenClick = False
          MouseWheelSupport = True
          MouseWheelOpposite = False
          CanFocused = False
          MouseSupport = True
          MinValue = 0
          MaxValue = 100
          Value = 50
          Vertical = False
          ReadOnly = False
          DrawTextMode = scdtmGDIPlus
          FocusFrameColor = clNone
          TrackColor = clBtnText
          TrackProgressColor = clHighlight
          TrackSize = 4
          TrackAlpha = 50
          TrackRounded = True
          TrackProgressAlpha = 255
          ThumbBorderInColor = clWindow
          ThumbBorderOutColor = clBtnShadow
          ThumbColor = clHighlight
          ThumbHotColor = clHighlight
          ThumbPressedColor = clHighlight
          ThumbDisabledColor = clGray
          ThumbShapeStyle = scgptssRoundedBorder
          ThumbCursor = crDefault
          ThumbUseCursor = False
        end
        object scGPToggleSwitch1: TscGPToggleSwitch
          Left = 40
          Top = 5
          Width = 80
          Height = 35
          FluentUIOpaque = False
          TabOrder = 16
          TabStop = True
          Animation = True
          CanFocused = True
          CaptionOn = 'On'
          CaptionOff = 'Off'
          DrawTextMode = scdtmGDIPlus
          FrameColor = clBtnText
          FrameOnColor = clHighlight
          FramePressedColor = clBtnText
          ParentColor = True
          State = scswOff
          StyleKind = scswsStyled
          SwitchWidth = 40
          SwitchHeight = 20
          ShowCaption = True
          ThumbColor = clBtnText
          ThumbOnColor = clHighlightText
          ThumbPressedColor = clBtnText
          UseFontColorToStyleColor = False
          FrameColorAlpha = 255
          FrameOnColorAlpha = 255
          FramePressedColorAlpha = 30
          ThumbColorAlpha = 255
          ThumbOnColorAlpha = 255
          ThumbPressedColorAlpha = 255
          ThumbShadow = False
          ThumbMargin = 4
          ThumbMarginHot = 3
          ThumbMarginPressed = 5
          FrameSolid = False
          FrameOnSolid = True
          FrameInside = False
          FrameWidth = 1
          OnChangeState = scGPToggleSwitch1ChangeState
        end
      end
    end
    object scGPPanel1: TscGPPanel
      Left = 0
      Top = 494
      Width = 768
      Height = 34
      Align = alBottom
      FluentUIOpaque = False
      TabOrder = 2
      BlurBackground = False
      BlurBackgroundAmount = 5
      BackgroundStyle = gppbsColor
      ContentMarginLeft = 0
      ContentMarginRight = 0
      ContentMarginTop = 0
      ContentMarginBottom = 0
      CustomImageIndex = -1
      DragForm = False
      DragTopForm = True
      DrawTextMode = scdtmGDI
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FrameWidth = 0
      FillColor = 10114859
      FillColorAlpha = 0
      FillColor2 = clNone
      FrameColor = clBtnShadow
      FrameColorAlpha = 255
      FrameRadius = 0
      ShowCaption = False
      CaptionGlowEffect.Enabled = False
      CaptionGlowEffect.Color = clBtnShadow
      CaptionGlowEffect.AlphaValue = 255
      CaptionGlowEffect.GlowSize = 7
      CaptionGlowEffect.Offset = 0
      CaptionGlowEffect.Intensive = True
      CaptionGlowEffect.StyleColors = True
      Color = clBtnFace
      Caption = 'scGPPanel1'
      TransparentBackground = True
      StorePaintBuffer = True
      Sizeable = False
      WallpaperIndex = -1
      WordWrap = False
      object scGPCheckBox1: TscGPCheckBox
        AlignWithMargins = True
        Left = 10
        Top = 3
        Width = 231
        Height = 28
        Margins.Left = 10
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 0
        TabStop = True
        OnClick = scGPCheckBox1Click
        Animation = False
        Caption = 'Fluent UI Acrylic Background'
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
        DrawTextMode = scdtmGDIPlus
        DisabledFontColor = clNone
        Options.NormalColor = clWindow
        Options.HotColor = clWindow
        Options.PressedColor = clWindow
        Options.DisabledColor = clWindow
        Options.NormalColorAlpha = 255
        Options.HotColorAlpha = 255
        Options.PressedColorAlpha = 200
        Options.DisabledColorAlpha = 125
        Options.FrameNormalColor = clBtnShadow
        Options.FrameHotColor = clHighlight
        Options.FramePressedColor = clHighlight
        Options.FrameDisabledColor = clBtnShadow
        Options.FrameWidth = 2
        Options.FrameNormalColorAlpha = 255
        Options.FrameHotColorAlpha = 255
        Options.FramePressedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 255
        Options.CheckMarkNormalColor = clWindowText
        Options.CheckMarkHotColor = clWindowText
        Options.CheckMarkPressedColor = clWindowText
        Options.CheckMarkDisabledColor = clWindowText
        Options.CheckMarkNormalColorAlpha = 255
        Options.CheckMarkHotColorAlpha = 255
        Options.CheckMarkPressedColorAlpha = 255
        Options.CheckMarkDisabledColorAlpha = 125
        Options.ShapeSize = 20
        Options.ShapeCornerRadius = 2
        Options.CheckMarkThickness = 2
        Options.StyleColors = True
        OptionsChecked.NormalColor = clWindow
        OptionsChecked.HotColor = clWindow
        OptionsChecked.PressedColor = clWindow
        OptionsChecked.DisabledColor = clWindow
        OptionsChecked.NormalColorAlpha = 255
        OptionsChecked.HotColorAlpha = 255
        OptionsChecked.PressedColorAlpha = 200
        OptionsChecked.DisabledColorAlpha = 125
        OptionsChecked.FrameNormalColor = clHighlight
        OptionsChecked.FrameHotColor = clHighlight
        OptionsChecked.FramePressedColor = clHighlight
        OptionsChecked.FrameDisabledColor = clBtnShadow
        OptionsChecked.FrameWidth = 2
        OptionsChecked.FrameNormalColorAlpha = 255
        OptionsChecked.FrameHotColorAlpha = 255
        OptionsChecked.FramePressedColorAlpha = 255
        OptionsChecked.FrameDisabledColorAlpha = 255
        OptionsChecked.CheckMarkNormalColor = clWindowText
        OptionsChecked.CheckMarkHotColor = clWindowText
        OptionsChecked.CheckMarkPressedColor = clWindowText
        OptionsChecked.CheckMarkDisabledColor = clWindowText
        OptionsChecked.CheckMarkNormalColorAlpha = 255
        OptionsChecked.CheckMarkHotColorAlpha = 255
        OptionsChecked.CheckMarkPressedColorAlpha = 255
        OptionsChecked.CheckMarkDisabledColorAlpha = 125
        OptionsChecked.ShapeSize = 20
        OptionsChecked.ShapeCornerRadius = 2
        OptionsChecked.CheckMarkThickness = 2
        OptionsChecked.StyleColors = True
        Checked = True
        State = cbChecked
        ScaleFrameWidth = True
        ScaleCheckMarkThickness = True
        ShowFocusRect = True
        UseFontColorToStyleColor = False
      end
      object scGPComboBox4: TscGPComboBox
        AlignWithMargins = True
        Left = 558
        Top = 4
        Width = 206
        Height = 26
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 1
        ContentMargin = 10
        AutoComplete = False
        Animation = False
        CheckedListMode = False
        CheckedListWrap = True
        DetailPosition = scgplbdBottom
        DetailWordWrap = False
        DrawTextMode = scdtmGDIPlus
        Items = <>
        ItemIndex = -1
        ItemWordWrap = True
        ItemShowEllipsis = False
        DropDownCount = 7
        Options.NormalColor = clBtnFace
        Options.HotColor = clBtnFace
        Options.PressedColor = clBtnFace
        Options.FocusedColor = clBtnFace
        Options.DisabledColor = clBtnFace
        Options.NormalColorAlpha = 100
        Options.HotColorAlpha = 120
        Options.PressedColorAlpha = 150
        Options.FocusedColorAlpha = 150
        Options.DisabledColorAlpha = 255
        Options.FrameNormalColor = clHighlight
        Options.FrameHotColor = clHighlight
        Options.FramePressedColor = clHighlight
        Options.FrameFocusedColor = clHighlight
        Options.FrameDisabledColor = clBtnText
        Options.FrameWidth = 1
        Options.FrameNormalColorAlpha = 100
        Options.FrameHotColorAlpha = 200
        Options.FramePressedColorAlpha = 255
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 50
        Options.FontNormalColor = clBtnText
        Options.FontHotColor = clBtnText
        Options.FontPressedColor = clBtnText
        Options.FontFocusedColor = clBtnText
        Options.FontDisabledColor = clBtnShadow
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeCornerRadius = 1
        Options.ShapeStyle = scgpcssRect
        Options.ScaleFrameWidth = False
        Options.ArrowSize = 9
        Options.ArrowAreaWidth = 0
        Options.StyleColors = True
        ShowItemImage = True
        ShowItemText = True
        ShowItemDetail = False
        ListBoxHeaderFont.Charset = DEFAULT_CHARSET
        ListBoxHeaderFont.Color = clWindowText
        ListBoxHeaderFont.Height = -11
        ListBoxHeaderFont.Name = 'Tahoma'
        ListBoxHeaderFont.Style = [fsBold]
        ListBoxHeaderOptions.Color = clBtnFace
        ListBoxHeaderOptions.ColorAlpha = 220
        ListBoxHeaderOptions.FillStyle = scgpsfColor
        ListBoxHeaderOptions.GradientAngle = 90
        ListBoxHeaderOptions.Margin = 5
        DetailFont.Charset = DEFAULT_CHARSET
        DetailFont.Color = clWindowText
        DetailFont.Height = -11
        DetailFont.Name = 'Tahoma'
        DetailFont.Style = []
        ListBoxLineColor = clWindowText
        ListBoxWidth = 0
        ListBoxHeight = 0
        ListBoxShowItemDetails = False
        ListBoxShowLines = False
        ListBoxItemHeight = 25
        ListBoxHeaderHeight = 25
        ListBoxItemSpacing = 5
        ListBoxItemMargin = 5
        ListBoxItemTextAlignment = taLeftJustify
        ListBoxIndentMargin = 15
        ListBoxScrollBarOptions.BorderWidth = 0
        ListBoxScrollBarOptions.FillColor = clBtnFace
        ListBoxScrollBarOptions.FillColorAlpha = 100
        ListBoxScrollBarOptions.ThumbColor = clWindowText
        ListBoxScrollBarOptions.ThumbColorAlpha = 50
        ListBoxScrollBarOptions.ThumbColorHotAlpha = 100
        ListBoxScrollBarOptions.ThumbColorPressedAlpha = 150
        ListBoxScrollBarOptions.ThumbRounded = False
        ListBoxScrollBarOptions.Position = scgpsbOverContent
        ListBoxScrollBarOptions.Size = 11
        ListBoxOptions.FillColor = clWindow
        ListBoxOptions.FillColor2 = clWindow
        ListBoxOptions.FillColorAlpha = 255
        ListBoxOptions.FillColor2Alpha = 255
        ListBoxOptions.FillGradientAngle = 90
        ListBoxOptions.FrameColor = clBtnShadow
        ListBoxOptions.FrameColorAlpha = 255
        ListBoxOptions.FrameWidth = 2
        ListBoxOptions.FrameScaleWidth = False
        MouseWheelSupport = True
        OnChange = scGPComboBox4Change
      end
    end
  end
  object scStyledForm1: TscStyledForm
    FluentUIBackground = scfuibAcrylic
    FluentUIAcrylicColor = clBtnFace
    FluentUIAcrylicColorAlpha = 100
    FluentUIBorder = True
    FluentUIInactiveAcrylicColorOpaque = False
    DWMClientShadow = True
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
    CaptionWallpaperIndex = -1
    CaptionWallpaperInActiveIndex = -1
    CaptionWallpaperLeftMargin = 1
    CaptionWallpaperTopMargin = 1
    CaptionWallpaperRightMargin = 1
    CaptionWallpaperBottomMargin = 1
    OnChangeScale = scStyledForm1ChangeScale
    Left = 384
    Top = 48
  end
  object scGPImageCollection2: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00000F
          C34944415478DAED5D09705D55193E69D23669D394B6A47461AD504076140459
          0651CA320A28024A69A120944D59651B285210A514441064A76CE232302CAEA0
          2002823882EC429152A06DDA34294DD3A4B449EAF7BDF7023121E1DE7BFEFFFE
          EFDD9C6FE69FF366F2EEB9E73FF9DED9FEE594AD5DBBD605042445592050800F
          028102BC100814E08540A0002F04020578211028C00B8140015E08040AF04220
          508017028102BC100814E0857E41A069336657A238187210A42A8557BE0DB9E5
          F69967BD66ADBB36324F209067008A57205B1ABCFE2890E84EEB3ED0447F20D0
          B751FCC2E8F5EF41268244ABACFB410BFD814077A138D2B009BB83404F5BF783
          16FA03811E41B18F61130E0181EEB7EE072DF40702BD84621BC3269C0C025D6F
          DD0F5AE80F045A8C62B461136682401759F78316324D2090A71CC56AC800C366
          DC08029D60DD175AC83A81C6A05864DC8C0740A0AF5BF78516B24EA0ED50FCDB
          B819CF8240BB5AF78516B24EA04928FE64DC8C7920D004EBBED042D609340585
          F549700B0834D4BA2FB49075027D1FC52CEB76003520D10AEB466820EB049A8D
          E24CEB76009B81406F59374203592790B519A313993567649D40D6668C4E64D6
          9C917502599B313A91597346D609646DC6E84466CD199925509198313A919A39
          037A0F44C173A7F969F821A54220284577D2CB211D907AC80D905F43C136C577
          1ECA77A82B170D2F400E86BEEF2AEA3B0EC5699063212321AF43F6C73BE76B2A
          A64E2028C65F1EE7FFB26E7FA26257416E85922B85DEC577D0EF7906640755C5
          E283A3E1ED90CB2489049DE9AACBF3AEC99041DDFE5C07F91CDEB7504B295502
          158C996F4286F5F1B546C875906BA1687DC2F7903887402E846CABA6900C4488
          049D77477136E4ABAEE78FB32BEEC57B8ED052469B40ECA8A3237EBD15320772
          2514FE6F8C77ECCB67205BA929A20312E916C8F9D07779445DB99E3BD0E58913
          C740BB17DEF18486126A0482B23BA378D6F5FDEBF824709DC433935950FA9F7D
          D4CF518DC4394E4581F4B000723C74FD7D1FBA0E463115721664628277BC0CD9
          01EF68976EBC0A810A53CA33902F7856F5579727D21FBAD5BF378ADB201B8937
          DE0E77404E83AE1F74D1731D142742BE0719E359FFA9A8FB1AE9466B11686AA1
          43A4C05FD01590872197424E72F147B6520017BBD3212FBAFC8EEA7848B550DD
          9C261962B444B2C1E2040279A83017CE63452BCE83DBFE0A857A8B0D9C6ACA15
          EA9D03024D93AC5083403F46718E82F22A685BB3DAAD59FDA16B6F6B731D90F6
          F6B6DCE7F6C267A2BCBCC2955714049F07143E0F1C34D8550C1CE4D98254C17F
          F61741A267A52A142510C8B3298A575DCFF388A2C2EA55ADAE7565B35B052181
          7C4002550EAD76559041956984DD7BE379C84E2051874465D2047A08C5D78C3A
          A67740C7552D2B5D6B4B9E341DEDE29B911C069497E7C934A4DA550E198ADE2D
          DA65DA0920D08D12158911A8701EF347CB5EF924B4AE5CE19A1A967A8F3471C1
          91A966E4BAAEAA7A987F65F26870F90575A36F4522040279B8B0E54E690BEB9E
          E9C487AD2DAEA9B11ED3956D5E834195952052AD1B5C35C4BA4BBA43C4C02B45
          206E397F62DD230417C44D0DF5B929AB98C029AD66546D6EE15D24E01A886BA1
          E77D2AF12610C8538B622E64B8758F34352E752B96355837A34F0C1B312A37B5
          150978D8BB1B489498041204BAC9199B13D67674B8654BEA72EB9D5240D5D061
          6EC4E831AE6C4031B82AB96920D09CA40F7B1108E4D91105ED55663DD1DEB6C6
          352C5A909BBA4A099CCA468D1DEFCA2B065A378527D313A31A74BBC397404FA2
          D8DD4A739EE734D42D50DB966B83DBFE5163C617C3F9D14F41A0D3923C989840
          C6A9E35C6B73536EDA2A7597DCB2B2B2DC7456555D63D90C1EB9EF0812BD1CBB
          FD49FE01200FF7A46F40D6B7D09623CFD285EF953C793A4112AD3B6E03EB91E8
          091068AFD86D4F48A04B505C60A125D73C4BDE9F5FB2D3566FE074367AFD8DAC
          D744478044F7C679203681409E8D5DDE61BB326DEDB8DBAA5FF06EC92D98A382
          0BEBDAF11B5AEECEE8DCB60548D41CF5812404BA0FC5372CB46BAC5B58325BF5
          A4E0167FE49871964DA0035F646F8A58040279F640F1370BAD4AE190500AC687
          8D6B5C7E147A3BCA97E312886EA4A20E499134C294B5E4BD77D27EAD29466FB0
          B1A5D9E322106866942FC625D02F511C9EB6360D8BDE2F3ADB9636683B1B35D6
          64934B5C0502454A8B1397405F46F1E73435A1559D5BF6FE086EED0DACF89CC2
          68647D31CA97932CA219963C3D2D6DEA17CC3777C9B0025D416AC7A71E787231
          C8F383A85F4E4220BAD97178FBA153765D6D6D5EE11A17AB45E59604B823E3CE
          2C05708DC0D09F5BE33CE463CA60ECF93D4EEB1A25B46B3116CE297A12F2389F
          B63D860E3135F0C28210E30AB2BDCBBBEC72379A4A74083D1BD7C3825AD93D96
          06F1C920CFDCB80FFA1A5379F6CEE8D013A535A2EF320DA52980074B8C39BBF6
          917B6EFE20CA0393261FC780BFEFBA7C5203F5E1810657FA5A2B804E658CA2B9
          2869A614298F44FE2A39F4D54A69B6ACBECEB53425F2308803C6A69F07E22C4D
          F23088C4C39A1F41BEA3D9C82135C3DD885ADFC0D41E60628729208ED7B99EA4
          533D35643285FD24EA5BF4CE5B9AF62EEE344E01716E92A80C446204E9CF202A
          862CDAC9C66EBCA964953C8E39B16B1875524887F570A2E6D0CE6452896D65B4
          B6D3E6A50492677F90E72F929582443CE2600CBF0A89682313B0D637414E0171
          EE926A97566CFCD62EEF2B9428C1E5F2867AD7FC8177C4496F982E35F2744761
          241289B7EA8EEA7546BAE1A3BC56087F871C09F2CC936C97667A179EC3732462
          6689585B88C5EFCED3DA7DDD02F2A8FA6F8344373B8535516E37B6E126491EE5
          3A80EE3797964C7A97AE28041CCE7111D3939038249002B8DB9A9074C11C1585
          85350D91E2BB331228662C3EDB31593216BE3BD24AB2C94E654EC44F3D97A7BB
          06DD36143003E4B9445D5997231153ED453246C641CC43459E816CA97D47475A
          048A9C72B779F932B77CA9680A1B82671CB551CF797C51382762BE47D1C3C6E1
          EB8E76D5C34744FDFA1290673D6D5DD32250E49B031955BA427E01FD38C8B3B7
          BAA25D00123D86E24B92750EC342BA26FA429A87848334D63D5D91168122DF1C
          B86CC922D7B2A249BA09678040A9865E8340A7BB7C1A63310C1956E3468C8E95
          B76B0C08B45853CFB40814F9E640BA6ED08543187B83408FAB2BDA052010479F
          C724EBA46B075D3C62603B10E8254D3DD32250E49B0395B6F05B80406FA82BDA
          0520D0E628FE23596782ADFC2410E8514D3DD32210D3D35E11E5BB0BE7CDCD45
          5F08A306044AD51B1F04E27649742E66B4C6B84D368BF3086D5D776BEA1908A4
          8440204184294C06FD790A0B8B6801F4E74574D8C60BA03F6FE3C341A200FAF3
          4162306508A03F9B32786F294DECC198EA8104C6D4CDA52EF3EB0D69B8733011
          0363C9228DBDC19DA3772470E76016956F8244AF69E9ABE950C6619C7EC293E3
          3E1B1CCA7AC2C3A18C23D07490E81E0D7DB55C5AE958CF8887F1499E0F2EAD3D
          21E0D2CA7631705034B992B4533D8397182776BC4F3DC1A9BE27849CEA9954FC
          D0A8A95BA24032AC674F97775D4D34CE764708EBF918C2613D0CB63B1A247A40
          A2328944E30CDFB90C72AA13CC171D020B3F86526021678A739346A476C237B4
          792797B771895FB212429B3F866268F3D390C341A2C41D9D344B2B87EA1990F3
          9CCED58C21B94201292457E08127E3C51E49F27092F42E0C16E4A8B3BD96469D
          08E95D524BEF42B3070F5967C6BDC9306E86B25D50F002FBD4AEB40C09A6524D
          30751308142B795864021516CB2FB8942F950B29EE524F71F7159028F211471C
          02ED8322D13CE98B90643355FC0A04FA56D42FC721D0CE28FE61A15148F39B2A
          6E07818E89FAE5B86BA057506C65A15548349E1AF604819E8CFAE5B804329BC6
          8870D5813AEE07790E89F340926D3C8FC00FB2D02E5CB6A20A6E75998CE19D38
          0F2521D00414F42F3199A0C3754F6A60FEA00BE33E94F4249AB6AFF3AC340D17
          CE89E37D97F75E8C1D0E93944034CC30CECA6CB20E575E8A22F645731FB5DF23
          D1F89128C492352641B87457044F813C7B247DD88740B4EED19ABBABA5F6E1DA
          6F2FD0EEC58B559E4F5A81AF3BC7E7513CE76226D1940677679CCE4A658BCFAD
          3AA72DC3AB2D3B7133C8E3E53D2AE150C60CF5914F2E35510A878DC687845D41
          6FBDCD40A07A9F4A2408C4E0B53721A6ABC04E702A63746BB1D9CE68DB6254A9
          E12D84DD713AC873B56F25527765444EDF921668C56F6AAC377705A14B46CDC8
          5A0BAB7A5F60D6906D7CDD590929027125483BD944EB9EE90EAE8B9A1A96A6E9
          D998033D0939555555A772D7575CEC07F244CA96F269908CCA3800C5EF2C7BA5
          5740474E69AD2DCD395F6BAD6D3FB7E5F45DAE1A529D9BB294EFF84A8A87419E
          03A52A938E0B23810EB0E89538E0F951EBCA3C997C47268E3439D2408CCF7322
          A90ED90A047A4BAA426902710AE354667AB81107241017DEED6D6DAE03D2DEDE
          96FBDC5EF84C949757B8F28A82E0F380C2672E8863C6AA5BE37290E75CC90AC5
          439B41222EA6CF52509EF38E4E04487181ACD588F8607EA6892050B364A51A04
          E2769EDB7AA9DC34549811A4DC7232D31963BCCD6C708AE03FE27AC8052E1F3A
          C498B344D765F582A3409E48792AE3402BB9C23414B779565307B906F2F3AE37
          EB15B27E904C478937DC0EBC88E618E8F97F3915A1EBFE28CE86ECE5593F5D91
          7745FDE2FF6C2D0295151ABD5382C7397ACD86DCD9572689C2AE8F2353A20C20
          4504A68339B3AF5B750A11C02412732DC5B57FF01FBC0BEA7F4EA3F19AF98118
          43C65BF2A2EE659F81CC823C1435B80DEF18EEF271F98C4D2FA9D52CF0AACB13
          27F2790CF4FD0C9F811C0D89BAE59B83774CD3524235431914E69C3BA58FAFF0
          E5BF85CC82924F79BC674314E7F3A32B7E2231ED2EA340EF4B3AA5405F260A62
          6CFEC990917D7C95A31A17CE755ACA6813888BDD7FB99EB715F23C8219B3AE80
          72AF0BBEAF9889C4A04CE64D7C506A2D027D87A238167206A47B082BDF7112DE
          7583A65269E448A4624CBCB4256499CBA754B91A8AA905BD178844E7FF1D5495
          8B8EC3A0EF6F14F5E5B6FF30C8092E9F8B92EBA473A47200F585B4B2B472BEE6
          FCFD26944AC5288577F297172BCE5B09A9E46BB6422A04B2000874B1CBA7A0B1
          462AF99AAD9065029D84E23AEB76002F8340DB5A37420B592610CF4CEEB36E07
          F0280834C9BA115AC83281764391F868401077834053FCAB294E6499404C6B3A
          D7BA1DC09520908671B92890650289DF18981067834045E5EE2B89CC12880089
          E8596FED8C3C1504320DC0D444D609C48CEC2289CF3DB06FD20CA8A580AC1388
          06DA5D8C9BB13D08F4A2755F6821EB0432CB65D405EAD74E5A22EB04B2366764
          DA8C41649D40D6E68C4C9B3188AC13C8DA9C91693306917502599B33326DC620
          B24E206B7346A6CD1844D609C4EB19E8A4BF81511312A78E2B15649A40044834
          15C51D06AFA6ABEED6716FBF2935649E400448F459978FDC9890C2EB5A210F42
          1E0079327FCD50BF2050801E028102BC100814E08540A0002F04020578211028
          C00BFF036F34EE4ADF4CD45E0000000049454E44AE426082}
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
        Description = 'settings'
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000007
          074944415478DAED9A5D68544714C7CFDD6CD46ED2345651226291405B7DE887
          8906E383460D7D50E363A10505699552107C291551A32296BE084229DA2228B4
          D047A33E94A8D1072331D17E3C685B0852092E11AD699AA431D9ECED99EDC406
          2176F79E5967E6EEFF07C3DC84CCC99C99DF9D3BB37783300C0980A804100848
          804040040402222010100181800808044440202002020111BE0814B45DEAFC80
          EB9630A0BA7F3B4E37B86A6B59DBF835D75E2411C7BC9C17A8ADFDEA823099F8
          86C772CD34295C0E32D9F75B9A57DDB3DDD752CCCB758182331DD72E4D3FC84F
          FEECF2E6A6956BC9833B366E79392D102FEF1FF2D27E22BF44683B2FFB5FD9EE
          73A9E5E5BA406779A037E697089DE381DE64BBCFA59697D3029DE9E854CFFF9A
          3CFF3CBDB9A97181ED3E975A5EAE0B5450E778A003DB7D2EB5BC2010F2120181
          909788A20934F4CEAA79896C663965A95E7F48564FF93FF7735CD873B4A0FFB9
          FEF0AE628D93519E435E692E3DB90F2513D4934D24BB2BBFBF7ABF18B99817A8
          A929395236BC3BA4602FFF542E0905818CE5351E507828355171843A3A322673
          312AD050F3CA2541983DC597CB4DC48340C6F3EA0E83C4D6CAF66BB74D053426
          D07073C3160AE9385FCE32D539085494BC4629A01D15ED5DA74D043322905E79
          6E9241791410A868798DF24AB4CCC44A241788F73CC365239D64E8B135C9E0C8
          185D3FFC45416D56ECF998AA52334C76C3380EE5D55D31916A94EE89C4028DAC
          5FB19737CC074D663691E5E3C39DFB3478F2DB82DA556D7B8FEA16CFA3B2849B
          A75ED7F2E28DF5BED485EB8744312402A9A37A3091E923E169EB697E4B0F50FF
          E0083D3EFD5D41ED666E7997E657A5E8D59A6A93DD89735EE3615972A1E4882F
          1268A4B96103373F6732A3C1BFC7E8A7BB0F72D751065AF1E6A2B954F5825B8F
          3257F30A02DA986AEF3A1FB9BD48A0750DFBC3805A4D2674F7E110FDFE603077
          1D75A05F995B458BE6549AEC566CF30A426A4D5DEC3A10BDBD40A0E1F50D6D5C
          19FDAAC1ADBE3FE8E1F068EE3AEA40CFA998454B17BE6CB25B71CEEB6CC585AE
          96A88DA50215F2B584BCE8EAEDA7B1CC44EE3AEA40CF48965143ED7C93DD8A73
          5E691628F2D745A402197F913675A0C78E1DA7B03ABF8D633030403376EEC85D
          BB2E906B79B140918F77CE093475A9CFECFA8426DEAECBAB5DD90F372879F4F3
          DCB5EB8F30D7F28A954053379BD935EB687CDBF6BCDA959F3C4189CB1773D7AE
          6FA25DCB2B56024D3DEEAA33E6F8A7FB28BB64E933DB246EDFA2F2CF0E12E95C
          5C3FC6BB9657AC04524C7EE0A608AB6753E6A39DD30EB61AE4E497C778AFF028
          F7B30F1F24BA9657EC049AFCC8FFB1DE74AA3B36BB7A2D6579DF905D5C9BFB55
          E24E2F25787F90B872E9C91D3A9337993EBCCA702DAFD809A4502F1D7F493FFA
          6FB0FF0735C8AFD7CCF6E265AA6B79C5522085BA637BFBFF7CB2EC4F875ADE6B
          E7BFE4ECCAE37A5EB1156812B5011DE03B7788EBBF1E8FE77EF7E2CC72AAE40D
          6535DF99AE6D987DCB2BF60281E2028180080804444020200202011110088880
          404004040222201010614DA01F7FED854031E0ADD76A2110880E040222201010
          018180080804444020200202011110088880404004040222201010115B81AEF4
          FC5CD0DFAFAE7FA3A4E2980202697C997808A4814076E3980202697C997808A4
          814076E3980202697C997808A4814076E3980202697C997808A4814076E39802
          02697C997808A4814076E3980202697C997808A4C1CBD4780081800808044440
          20200202011110088888AD40AE1D9B5D8B630A08A4F165E221900602D98D630A
          08A4F165E221900602D98D630A08A4F165E221900602D98D630A08A4F165E221
          900602D98D630A08A4F165E221900602D98D630A08A4F165E22190062F53E301
          0402222010100181800808044440202022B602B9766C762D8E292090C6978987
          401A0864378E292090C6978987401A0864378E292090C6978987401A0864378E
          292090C6978987401A0864378E292090C6978987401A0864378E292090C69789
          87401ABC4C8D0710088880404004040222201010018180089B02DDE3AAC6F600
          001169166841D4C65281DAB8DA647B048088B32C504BD4C65281F673D56A7B04
          80885616E840D4C65281367075CEF60800111B59A0F3511B4B059AC7551F9772
          DBA3002231CE65210B743F6A0091400A96682F57076D8F0488C43E96E7902480
          0981925C7572596E7B34404174736964813292206281142CD112AE6E7299657B
          54405E8C7259C6F2DC96063222908225DAC2D5718244AEA3E4D9C1F29C3611CC
          98400ABD129D223CCE5C453DB6B69A587926312A9042EF897673519B6B9CCEDC
          409DB6D466F98874CFF334C6059A441FF1D54A54CFA54ED778EDF17C4873E9E1
          7243D7DD92A3FAB3289A40A03480404004040222201010018180080804444020
          2002020111100888804040040402222010100181800808044440202002020111
          100888804040C43F1D37474A613CFD5F0000000049454E44AE426082}
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
        Description = 'calendar'
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000006
          544944415478DAEDDC4F6814571CC0F1B771D7E420B5A1A028F6505BA1B949A2
          452CA5F8AFA1443D97220AE9417BEBA9E04193E841E8A9B7EAA101454ACF6A28
          5BFF514A451A13BCA5606B0F1545A1A4160F49768DFD0D8CA564EC7BD9F9F9DE
          CEDBF97E6098A88F379BCD37B33BF3162BCF9E3D33405E1502820601418580A0
          4240502120A810105408082A04041502820A01418580A0D2D680060707D7341A
          8DAD954A658BFC7120D9CBE359D7EE27A5C8E4397A20CFD12DF9722AD9D76AB5
          C97ABDFEA86D8FA71D01EDD8B1A32A4FC451D98EC91F6BEDFAE63B44437E8627
          653B75FDFAF566E883070F68CF9E3D7D8B8B8B67E5CBADA1BFD90E37D9D5D575
          E8F2E5CB33210F1A34A09D3B771E94B3CE19F9B227E437592273F2F33C7CEDDA
          B573A10E182CA0F4CC336D88C7B7393913F5873A1305092879CF23DFD40DC3CB
          562893F2CBBA3DC47BA22001C94BD73179E93AE1FD40F897FC5C8FCB4BD949DF
          C7F11E5072A9DE6C36EF19AEB6426B54ABD50DBE2FF1BD0724679F2139FB5CF2
          7A10BC90FC6CF7CA5968C2E731BC07B46BD7AE11D98DDAC654BBBBCC5BEFBC62
          DE1858657AD7777B7D3CB19BBD3F6F7E9F7A627EFDF96FD39C5F740D1FBD7AF5
          EA98CFC71322A00BB2DB671BF3F67BAF9AFE7DAF797D1C9D66FAE29FE6971FFF
          720DBB2801EDF7F938BC07B47BF7EEFBAEE5890F3FDBC099A745C999E8BB2FEF
          59C724CB1E57AE5C59EFF371843803390FF0F1176F7A7D0C9DEA9BCF7F738E91
          3350C5E76320A08811508A80F221A01401E543402902CA87805204940F01A53A
          35A0AFBEAEBFF0EF3FFD64F0A58C27A01401E51B4F402902CA379E805204946F
          3C01A50828DF78024A1150BEF10494EAD4807C23A01401E543402902CA878052
          7C1EA875CBF93C50A21401F189C4D62DF31389E50888CF442F5F8B9F892E4740
          F08780A04240502120A810105408082A04041502820A014125FA8086878709A8
          8DC6C7C70908F911105408082A04041502824A29025AB972A5E9EFEF379B376F
          366BD7AE75CEF9F0E14373FBF66D333D3D6D161616A29EB35B9EFFF7E5DFDE6D
          34CCEB4F9F3AE7FC63C50AF353AD667E90C7325F71B7518A80B66DDB96FC77C0
          2DCF5DAFD7CDCD9B37A39EF383F979F3D1DC5CCB737EDBD363BEEF767FF8AE14
          011D39726459BFD14B25BFE1A74F9F8E7ACEB1274F9675E6592A39138DAC5AE5
          1C578A8046464672CF3F36F6E2FFC5369639C71F3FCE3DE7F0EAD5CE3104E440
          407604E440407604E440407604E440407604E4404076A50828964B6E2EE3B30A
          11502C37FDB89198558880625976602923AB1001C11F02820A01418580A04240
          502120A89422A0582EB97DCC59AD56CDA64D9BCCC68D1B4D6F6FAF73CED9D959
          73F7EE5D73E7CE1DD36C369DE34B11502C37FD7CCCD9D7D7670606065A9E736A
          6ACACCCCCC38C79522A058961D7CCC393434B4AC33CF52C999686262C239AE14
          01C5B2F0E963CE03070EE49EF3FCF9F3CE3104E440407604E440407604E44040
          7604E440407604E4404076A50828964B6E2EE3B30A11502C37FDB89198558880
          625976602923AB1001C11F02820A01418580A04240502120A89422A0582EB9B9
          8CCF2A4440B1DCF4E346625621028A65D981A58CAC420414CBC2278BA95904D4
          E63909C88180EC7312900301D9E724200702B2CF49400E04649F93801CB88CE7
          325E851B89DC4854612983A50C151653DB8B80A04240502120A810105408082A
          A50828964B6E2EE3B30A11502C37FDB89198558880625976602923AB1001C5B2
          F0C9626A1601B5794E02722020FB9C04E44040F63909C88180EC7312900301D9
          E724200709E8BEECD6D9C6C472C91DE165FC0309687DCB93B72044401764B7CF
          3626969B7E11DE48BC2801ED6F79F21684082839EF8FDAC6C4B2EC10E152C6A8
          0434E69C5421444043B2BBE4F520F83F7B2520F7ED6A851001AD91DD3DD96A5E
          0F84A51AB26D90801EF93C88F7801212D131D99DF07E20FCD77189E7A4EF8384
          0AA82ABB1BB26DF57E30242665DB2E01B93FEFA11424A08444D427BB69D97A82
          1CB0BCE664EB9778DC9FF5780982059490880ECAEE8C21225F92780E4B3CE742
          1D30684089F44C74D6F072F6B2252F5B87429D799E0B1E50227D4F7454B6E4CD
          3557673AC9D556F266F95488F73C4BB525A0E7D24BFCE44CB445B68174BF4E35
          69E77B20DB2DD9A6D2FDA4EF4B759BB60684F811105408082A04041502820A01
          418580A04240502120A810105408082A0404957F0019B2885971BD88E1000000
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
        Description = 'calculatror'
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000009
          604944415478DAED9B7F6C95D519C79F9BF6962EC5E842D1025D9A2D4ED64E51
          A126520D2635590CA2C9326662881AB32C84C5C4FDC5244CEC44A2312EDB9265
          1BD18520E2A2B26CA3C8D8A26532292C6D19BAD90EB268EA4A0BB4E5C7DADBDE
          F6FEF23977F712A9E33CF77DCF7BEEFB9EEBF7939C9C72F3BCBDE7BC7C78DE73
          DEF310CBE57204805F6210089800818011100818018180111008180181801110
          0818018180111008180181801110081811A840DF58F7DD6BB9BB8D5B2BB71585
          7E51D8939CC308B75E6E7D85BEE7CFBB5F3C1BF6A05C251081589C6AEE36717B
          925B3CEC497924C56D2BB76759A474D883710D6381589E66EE76D2FF328FCBF4
          707B84251A087B202E612410CBF33077DBB9D5863D918048725BCF12BD1CF640
          5CC1B74085CC738C2A479E224AA2E5C844A5E14BA0C29AA79BDC7F6C5D09F538
          6BC39A48C6AF406AB1FC74D883B7CC1616686BD883883A9E052A6CD587C8BDDD
          9657D4EEAC115B7C3D7E04BA97BB7D610FBC4CAC6181DE0C7B1051C68F404F71
          D7A18BA9A99947CB5AEFA49B96DF4E0B1B1AC39EE3658C9E1EA27F1C3B4AEFF7
          BE4BB3B3335278070BF4A3B0C71C65FC08B497BBFB7431AD6D7753FBEAB561CF
          4D4BD7FE3DD4DBFDB614D6C902DD1FF658A38C1F818649389E78F4B1CD91CB3C
          73519968C7CFB74961232CD0E2B0C71A65FC08245EB0F1995F863DAF9278FE87
          1BC418162816F638A30C041280407A20900004D25311024D4F2568F4CC296EC3
          347A7638DF4F2526CA3A8612F84C19C91B3FDBE6FC3B26A705CA66B374BCE7AF
          D4F7B777F8E74C59BE33402E9591B048CE1E99382BD0F973A374F04FBFCB671E
          C7C99791B0444E1EDE3A29D0C981E374E8ED4ECAA49DFD873B977C19094BE45C
          19897302A9CCF3DB577F5549F214C99791B896899C1248AD797EFFDA4B95F0D8
          BA12F9321297D6444E09748C17CB3D47BACA7367C2630B0BE44C19893302A9AD
          FA2B2FFDD8C5DD9657F26524AE6CF19D11E8E38F4ED21FFFB0BB7C77265CD6B0
          404E9491382350DFD1BF50EFD183DA9878BC869A6F5C4137B4DC420B1636043E
          0613C6474FD3C9FEE334F0CF3E4AA566A5F00E16C889321267043AB0F7551AFC
          F0843666D9AD2B69E55DF704FEDD4172E49D03F4FEDF8F48619D2C90136524CE
          08B4EBC517C4E389B5EB36442EF3CC4565A23DBBC5FB33C202395146E28C40DB
          7FFA9418B3FEFB4E64FD92E6C2023971880B81420002094020F3B940A08089A2
          405533E7E90BE7FE45B5E7553B49B5FC737572BCAC632881CF9491346EEC0EEC
          1D1304F2412C97A10503AF70DB49B1AC33A70E452E9591B048C68387401EA9F9
          EF202DEED996CF368E932F2361898C0E6F219007AE1E3C400D7D2F502C23BE08
          74857C19094BE4BB8C04029588CA3C5F7EEB3B95244F917C1989DF4C04814A40
          AD799ABA3654C263EB4AE4CB48FCAC89205009D4F7EFA4FA0F7E6DE57747882D
          2C90E732120824A0B6EAD7EFFB968BBB2DAFE4CB48BC6EF12190C0FC9123D4F8
          EE0F02FFBD11650D0BE4A98C040209D4F7EFE0C7D70E6D4C2C5E4B752DED54B7
          7415C5EB9B021F8309A9B1414A9C384489FE2ECAA5925278070BE4E926422081
          C6C39B68FEF0616DCCFC9B57D335773C14F87707C985C3BB68F2BDFD5258270B
          E4A98C0402095CDFF94DF178E2BA079E8B5CE6998BCA44675E7F420A1B61813C
          9591402081AFBDB14A8C69FCDE6F02FF5E1B0CFDE241792E1BBB3D1DE2422001
          08A407020940203D10480002E981400210480F041280407A20900004D2038104
          20901E08240081F440200108A407020940203D10480002E981400210480F0412
          80407A20900004D203810420901E08240081F440200108A407020940203D1048
          0002E981400210480F041280407A20900004D203810420901E08240081F44020
          0108A407020940203D10480002E981400210480F041280407A20900004D20381
          0420901E08240081F45811E8D1C736D3C286C640270F81CC7146A0D6B6BBA97D
          F5DA40270F81CC7146A09A9A79B4ACF54EBA69F9ED81652208648E3302D9E0EA
          FA6BC51808A407020940203D10480002E9898A40C3DC2D2AC784B3993425A7A6
          289B4ED192AF368BF110484F5404DACBDD7DB6279B9A9DA5E4C4452A8EEE4B4B
          BF2E5E0381F4444520B51DEAB039D15C36479317CF719FBDF4190432272A02DD
          CBDD3E9B134D73F699E2ECF369209039511148AD6687B8C56D4D74767A9AD73E
          93977D0681CC8984400A96E849EE9EB6355164203B4449A06AEEBAB9DD6663A2
          5803D9213202295822B5AF3EC6ADD6C664B10B0B9E4809A460891EE66E3B5992
          08EF8182257202290A996827597A9C1529E54DF4DA751B68C1C28640BF1702E9
          3116485158136DE2A616D7567667A508B4ECD695B4F2AE7B02FD5E08A4271081
          8A14B6F82A13B5725B51E80339F62845A078BC869A6F5C4137B4DC1258268240
          7A0215C826DF7E7C732803FDC99283620C04720008640E040A0108A4C72581CA
          5646929A49D2C5B1B3349B9CA6D7560D8BF110C80158A0B294914C4F4ED0F8F0
          7FA8785FF6B49F15AF81400EC002592F23C9663374FAA37F53269DBEF41904D2
          E39240D6CB4854F6193BF5F1659F41203D2E0964BD8C64E2DC385D183D7DD967
          10488F3302295822AB6524C840952F90D53212BF6BA0EB1E788EE2F54D61DF1E
          2DA9B1413AF3FA13625C450BA46089AC9691F8D985CDBF79355D73C74361DF1A
          2D170EEFA2C9F7F68B71152F908225B25A46E2F53D502C5E4B752DED54B77455
          E43291CA3C89138728D1DF45B954528CFF5C08A4286422EB6524A5BC89AE243E
          3702290A6B22AB652410488FD30215296CF1AD949140203D1521904D869E6F2B
          DB195C6236438363333491CCE4FF7C556D1535D5CFA3BA9AAA724D7784055AEC
          E5020824C00295E50C6E3C91A6819104CDFDEB88713E685E54470BEAAACB31DD
          4E16E87E2F1740200116C8FA195C3A93A3DEC1094A65FEFFDF45BC2A46AD4D57
          517595A7A78B1F3A58204FFF33010209B040D6CFE054F6E91F4E68635A169725
          0BAD6181DEF4720104126081AC9FC19D3A3F431F8EE9DFD17CA5BE96967C719E
          CDA9A6B835B240F29BD34F01814A8025B27A0617910CB485E5D9EAF522085402
          2C90D533B808AC817AB8B5B14069AF1742A0126189AC9EC185B80B53CFCEE52C
          CF809F8B2190075822AB677021BC0752F2AC67795EF6FB0B2090470A99C8FA19
          5C19508FAD47FC669E2210C807853591D533388BA8DD965A2C3FEB67CD331708
          6440618B6FE50C2E4046B8F572EB2BF43D5EB7EA3A2010300202012320103002
          020123201030020201232010300202012320103002020123201030020201233E
          015240A04A6ED477980000000049454E44AE426082}
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
        Description = 'gadgets'
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000004
          594944415478DAEDDB3F6F14471C87F1DF89231C12882206810504A2509CE800
          17491345162860489B0E4A5E0305E14C0A5E03E92E529A486908A4B492861497
          50E282268531FF0456CE40301896DF786D89204134F3DDCDDC9D9F8F34B33473
          DED13DDA3F3AD1288AC280540D02828280202120480808120282848020212048
          0808120282848020212048080812028284802021204808081202828480202120
          480808120282848020212048AA0DA8DBD8E1F3848F233E0EAF1E7765DADBB49D
          293A99FEF6BA514D40DD46D3E7733ECEFBD8987B536F20A29AE901751BED305B
          79E519444454232DA06EE3B4CF977DB4726FE43F10514DD2032AAF3C376CF0E3
          59434435480BA87CE6B96E837BDB7A1722AA586A40E161F962EE934F4444158A
          0FA87C559FB3C17ADB8A454415490968CAE7ABB94FBC0244548194802EF8DCC9
          7DE2152122514A40577C3E95FBC42B4444829480E62DDFCF137521A2442901BD
          7B417383596BB3D9E6961F5BE5B1D9CCBDC7F56D79F9953D7FF1C08FB3F672F9
          377BF9EA473B7EFF66551F5F4D408D86D9D887E508FFC6E00ADFF7E2E28C2D3D
          9FB2130F9EA91FA707B4E903B3F1F1F26A83E1B1B4F4C41E3FF9DABEBC774DF9
          182DA06DDB3C9E9D5C758655F8EEFFEE7F6747E7CFA67E447A40E1CAF3F17EE2
          1976E1FB7FB47032F54A9416508866DF47DCB64645B89DF517C7529E89D202DA
          3E662B03A3A3DF9FB1C9DB93B1CBE203FAA159D8814FB8758D9AD0C1C3470763
          5FF1E303FA696B617B77E7DE2EEAB0B0306DC7EE766296C407F4CBF682DBD788
          EA2FFE6A93735FC42C890F68664F615BB7E4DE2AEAF0F49F7BF6F95F3B6396C4
          07F4FB81829F274654F8D9E3D35B1B6296C407D46BF33F1147D9C46CD4DB1101
          E1DF080812028284802021204808081202828480202120480808120282848020
          2120480808120282848020212048080812028284802021204808081202828480
          2021204808081202828480202120480808120282848020212048080812028284
          8020212048080812028284802021204808081202828480202120480808120282
          8480202120480808120282848020212048080812028284802021204808081202
          82E47F0868DEE75DB9F7895ADCF180C66316A40474C5E753B9778A5AFCEC017D
          15B32025A00B3E7772EF14B5E87840D3310B52029AF2F96AEE9DA216273DA06B
          310B5202DAE1F39C8F8DB9778B4ABDF0B1DB03BA1FB3283EA0A0D73EEFF3C5DC
          3B46A5BEF178BE8D5D941A50D3E7EB3E2672EF1A95E8F9F8CC035A8E5D9816D0
          CA9F6CB77DBEE1A3957BF7903CF371C8E3994D599C1E50D06B9FF6F9B211D1B0
          0AF19CF578BE4FFD002DA0A0BC12758DDBD9B009B7AD33A9579E357A402BA7B2
          F24C74CE4778B8E6ED6CB085B7ADF0B07C29E599E76DD504B4A67CC50F57A223
          3E0EAF1EF9D923AF3B3EFEF0F1E7EAB117FBAAFE3ED506847587802021204808
          0812028284802021204808081202828480202120480808120282848020212048
          08081202828480202120480808120282848020212048080892D72CED330E87DE
          698B0000000049454E44AE426082}
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
        Description = 'folder'
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00000C
          414944415478DAED9D597014C71980FFBDB48796DB80B101C709A482392D448C
          45E1C218C71873D821802B55368FE625798D49950D3695E0BCE5210FF8210F38
          A98A2D1787110612138AB2839023218344822B3887B9140E21402B69EFCDFFEF
          AEEC44D1EEF44CCF4CCFCCFE9FAA6B563033DB3BFBA9FFFEBB7B677D85420118
          C6283E168891810562A4608118295820460A168891820562A460811829582046
          0A168891820562A4608118295820460A168891820562A4608118295820460A16
          8891C2D3026D98F7FEAC4020DF040568C25FEFB7F5C97D90C3E73DEFF7FB5AFD
          415F5B73C7A6BBAAAF87252FD38B02F97CE07B6141F32FA150F8B1EABA94B903
          7EFFBAFD6737FD497545CCC673023DF9E4C9E0845BD77F8D2DC0CBAAEB3282A1
          BCCFB7E5E0B9CD2DAA2B62269E13E8FBF39B7F86AFEAA7AAEB51813486B545FB
          BBB75C505D11B3F094403F98FF6E23FE959FC68741D575A9840FA07541F7E7CB
          771476E455D7C594D7E3158136CF7BBF2EEBCF77E2C3B9AAEBA2055EF11F1DE8
          DAF22BD5F530035B04FAC5B6D60D0528BC8ACFB4087F8D081E96C4BFD6B3D81F
          7EEB277B9A3ED0DAD9E1A16B248960DE3FB7F9FCA64BAA2B228BE502913C7928
          1C9439871F7CCF5793A81CBADAF061C0D217632E47F7776D59A3BA12B2582ED0
          5BDB4E9DC667582A554980B657F72C7B7CB4FF5B33FB683812BD77065C10BA46
          5228F85E3AD0BDF9B7AAEB2183E502EDDE766A08C4C3562592DBF72C8B8EF61F
          1B17BEFB737C23B65BFA22ACA200B78221FF23CD9D9B6EAAAE8A51EC10C89427
          40817C23FF6DE3BCF79614FC4059979B42D7080ABFDBDFF5E20F55D7C228AE15
          C8CDA16B24F826ACDDD7FDE287AAEB61B0EEE609B4F5BB87A6E0660996462C8B
          CBDB69AA5F648DD383A503CB99F2B67DEF9FD7DF30EBE4A60884E2D0C01DF543
          5EC31252739D184132587661D98D2265654F262D10CA3307377BA1D4F230EEA1
          1DCB5694486A5A454A209487262CDF06F92C8B514312CB2B28D13B464F6058A0
          72CB4353072C8FBB21891A8CB64486042AF7795A81C39657A070D664A44F6454
          20EA2CBF69B4B6C13A3F4C9A1C81683C0475117FF1DFD2C93C0C2532D07B3309
          D9B42726AADDC6EB28D02EBD07E916A89CAA5F0183D9D6F8FB223075463DAD1A
          1C15AACEF5CB0370E756D2F22BC6FC0F949D4DD79BE21B11E839DC1C3652C3F8
          B8104CFFE618A868CF3058A72BFFE887C4DD8CA5578CF93FD6A240BA06348D08
          B403373B8DD46EC6ECB1503F46ACE11AE8CFC0E58BF7ACB94C4C2576A2406FE8
          39C088408770B3CE48ED662F9C0881804F68DF5CAE0017CFDDB6E83A31156841
          81D6EB39C08840D7C0E0F404B7408EA707057A40CF014604323CF2E8C43E502E
          9F873C3E1F5D07FAF9EA71B9142F127D4EA85CFCB485AF1F07FC7ECBEB682728
          9058882863AB408413B23092269BCB41269F03D9A91C1229E40F403010F0844C
          8E178850310E44C264F354F2D2D25482640AA244C1B2506EC41502D9098993CA
          668AA1C94E28BC858321D789C40295A13045E2D0562514D64824B784B79A1728
          5F14275B0C574E82C25A381804BFC345AA6981A8C54967A5D748594A1D4A442D
          9253A94981A842C974DA71AD4E25A8358AD4D581AE77CA266A4E20EA1C0FA553
          B6779265A14E76B42E5CDC3A899A128852F264262D9D96D7C76230E38169101F
          530FB1680C7F8F14B7B168E9A368834343580661603059DC26FA07E0F2B51EFC
          7D50EA7929ED8F84EA8AA9BF53A8198132B92CCA637CA47AE284F13073FA83F0
          1096491327183A47EFED3EF8F2CA55B884E576DF1DC375898442100A38E38622
          352110B53C14B68CF08D993360F1C2F9306EEC1853EB74F75E3F9C39D70DFFBA
          74D9D0F114CE9CD012795E20EAEB0CA23C7AEB7DFF94C9D0D8B010A64C9A6469
          FD6EF4F64247E739F8F70D7D9F56A6701673409FC8D302D1130FA692BA3ACCF1
          783D2C6D6C80990FEA9A6496E6D2D56BD0D6D10989C480F031244F2C1C519A9D
          795AA0219DA93AB53A2B9F5806917058497D93A9149CF8F894AED68852FC28A6
          F8AAF0AC407A0709BF33EB5BB0744983F2915F1A196F6BEF84CFBFF8BBF0312A
          071B3D2910BD0903829D660A038F353E0A73BE3DDBEE6A56E5C2DF2EC2A71D9F
          0987DF7AEA0F2990DF9302E9095D8F63ABE334798621894EB7770AEDAB2A9479
          4E209A4D1F146C7D286C353DD66867F574D3FA69877038A3ACCCEE597CCF0944
          F2882CC9A00EF3EAA75628EFF36841E1F8D81F4F0A75AC491E92C84E3C25102D
          061BCAA435F7A3547DFDEAA74DC9B66840980A4610F0054A5BBA4479ECBFE7B0
          5024CD492ED5A6ECECD0B18F8452FC284D75D8B828CD53020D088EF9AC5AB15C
          6A9CC78FC244EA31FB89D1725BEDFD49A614BEF7A941945CDBEF51A171A2E327
          3FD1AE1B2605F561FBEE5FE11981445B1F0A5D6B9E5E69E83902284B7C024048
          E2FDC9611507FA684DB7FE638F7C74422894D9D90A7946209A65CFE4B433AFB5
          AB57E99E9EA0D982188A138D039835EC4BADD1605F29CC8942D31E878F1DD7DC
          2F84F2D0ACBD1D7846A004862FADBAD1C4E8CAE54DBACE4B216AEC9452DFC674
          B0BAFDBDA5F026CA894F5A352760699E2C6E5318F38440A2A9FBC6756B74CDAA
          53A81A3B195FB485891A5D9C81DBD882F68BED4FB3F8FB5A8E68EE67574AEF09
          8152990CA4356201ADE7797ECD33C2E7AC8B96E4B16BA672F00E16C1EF283C78
          E4F79AEB89EA30350C87AC9FDEF0844022E16BD1FCB9D0B0609ED0F90278DD27
          D0A7F96D9EE6EEBF59EA1B69D1D9751ECE76FFA5EA3E768531D70B241ABE363C
          FB3DE1958471EC6347E2E275A0B11E4ACFB3580D9ABFA50488FA4E54023A1A01
          1A2FEABBA6BD1FAD6CFCE0E81F34F7B3238CB95E20CABC921AE93BAD61DEF282
          F81D66C64DD54ED50BF952C8A10E70B56937EA3F51388C8D2F0D38563D275EA9
          5EC12F747AEF408BE61A6BCAC44216A7F3AE1788966CD0D28D6AE89DF3AAA794
          7D6C95E7446912B7699A414745F132D78FC3F38EABBC0B75E3FAAE8A9D4E648E
          8C9678D0520F2B71BD4022EB7E1A1F5D000B1E99237C4E0A3BE3A78D7E5719CA
          961212F7B1A2D0189F08A3F6AF86EE95061945E8FAEB05E8F8ACABEA3E76AC13
          72BD4034FA9CD518407CA26929CC7AF8215DE70DC7F08DBEEF6B892864D19B9B
          4CC8D799C2E39849A529118242601AA3D1C09DD2F388F0C53FBF848F5BDBAAEE
          43A3D1518B07145D2F90C8ECFBB3AB56C0B4A953759F9BFA9FC1F27C6B2625FE
          E60AE12BB57424682E551A0FD243CFF5EB70F4F8C9AAFBD8313BEF7A81442650
          F50E20BA019101453B26565D2F502239A4F9D7FBD2E68D100A39E383786691C9
          64E137CDFBAAEE43EF6C3C12153BA141582097C202990487B0CA700813C0CA4E
          B493E14EB4495895C63B1D4EE34DC28A814437C003892661C554861BE0A90C93
          B06232D50DF064AA4958B19CC3E9F0720E93317B4199D3E105652663C5925627
          C34B5A4DC6AA45F54E8417D55B84551FEB711AFCB11E8BB0F283854E813F5868
          21767CB45935FCD1668BB1EBE60A2AE09B2BD8808ADBBBD801DFDEC546F80653
          7C832929F816777C8B3B69F8269BF6E14981F836BFF6E1498108BED1B83D7856
          2082BFEAC07A3C2D107FD98AF5785A2082BFEEC95A3C2F10C15F38671D352110
          C15F79690D352310C15FBA6B3E352510C15FFB6D2E35271041154AEA4CF15542
          A97A04537567A953A226051A46EF60A30A540E128A50D3021134F29B42899CD6
          1A51AB134679548F8C6B51F3020D932B8A94115A0A6225349B4E2D8EDDB3EA46
          618146408BD24824BB3BD9D4392671EC5C0C66062C500548240A6B94FACBA6FD
          95A0B49C52720A576E1367181648000A6B24540685929589A4099585714B98AA
          060BA4139289C21B5D07FAF9EA71B9142F124A325C2834157FCA8FBD20CD7F63
          8740F4ED0FD354BF50C6127A50205DCB168C08740837DEBAB70A334C0B0AB45E
          CF014604DA819B9DAA5F2963093B51A037F41C6044A0E7707358F52B652C612D
          0AF4A19E038C0834053757B038773C9E3102AD8D998E02DDD073906E810894E8
          35DCBCA9FA1533A6F23ACAB34BEF414605A2D54FAD5896A87ED58C29B4636942
          8174CF441B12884089E83EBBF42939FB3EF9CF5841124B03CA73C1C8C1860522
          50A29771F336B0446E85E47905E579C7E809A40422CA2DD15EE070E636286C6D
          35DAF20C232D1051EE136DC7429D6BCECE9C0D655BD459DE6DA4CF331253041A
          A69CE2534B44B7C8585CDEF2B4875A7AB074603953DEB6EB4DD5AB61AA404CED
          C1023152B0408C142C1023050BC448C1023152B0408C142C1023050BC448C102
          3152B0408C142C1023050BC448C1023152B0408C142C1023050BC448C1023152
          FC07BA194959D24636A80000000049454E44AE426082}
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
        Description = 'camera'
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00000C
          164944415478DAED9D0B70545719C7BFCD3B9B40201892581E113215018741C4
          76A89442AD4D29501C154A690504E5591E02A1B1E591BE784B53DE5AC48ADAD2
          56A52D626BB5B5AD32AD889DCE204507303C34A4B13C34BC03F87D675786A49B
          7BCFD97BF7DECDEEFF3773E624BBF7DB3D77F7377BEF3DDF39E706AE5CB94200
          444B000201274020E00808041C018180232010700404028E8040C01110083802
          0201474020E00808041C01812C78A563C780D465478EE0436A0608D40C2C4F2A
          574F85FF9DC0125DF2BB4DF108048A00CB93C9D5B35C86871FDAC6E56E96E8BC
          DF6D8B37205013589E5CAE5EE432A8C953AF73B98B25AAF7BB8DF10404BA0696
          A71D57BFE6D2B7994D7671B98325FAC8EFB6C60B10280CCB731D57BFE1D2DD66
          D3BD5CBECC12FDD3EF36C7031088943CA55CBDC6A54433A49ACB6D2CD17EBFDB
          EE37492F10CBD38BAB57B9141A86D672B99D257ADFEF7DF093A41688E5B989AB
          ED5CDA44F91227B90C6189FEE8F7BEF845D20AC4F29471F5732E41872F7586CB
          5759A257FCDE273F484A81589E915C6DE192EED24B5EE4721F4BB4D5EF7DF39A
          A41388E599C8D53A2E292EBFF4652E5358A28D7EEFA3972495402C4F05578FC7
          F86D2A58A2257EEFAB57248D402CCF32AEE69AC4B41D3C4CD52776BC64FA76CB
          59A272BFF7D90B125EA07052540E2BE34DE20A468CA60EF316A8BF8F2E7D98EA
          9EFBA9E95B6FE23231D193B0092D10CB93C1957CF35F33892BFAD6542A9E3CA3
          D16335EBABE8D80FD69A36E1052EA359A20BA6813B777D18F517D3AF6FFB40B4
          B1A624AC402C4F0E57BFE4729BFEA711A00EB3BF4B05F78C89F874DDCF9EA6A3
          2BF914CAEC33931EEEAFB044A74D8220908FB03C6DB9DAC1E546ED0F2235953A
          2D5C4CF943865B6E777CFB363A5C5941572E191D99DEE13298253AA11B00817C
          82E529A65052B4A76E4C4A4626952C594579B77C496BFB53BFFF2D553F308B2E
          5F301A1EB4874249D81A9D8D21900FB03C5D2874C8E8A21B939293435D576DA0
          DCCFDF60F45EF57F7E970ECC9A44974F1B1D990E5228097BD06E4308E4312C8F
          FCE2C82F4FB16E4C5A9BB6D475ED260A7E46FBC7AA11673ED84307A68EA78693
          DA4726417E81E497688FD54610C843581E39D791739EB6BA31E9854554BAFE47
          9455A2FD63159173D50769FFE4B174B1F69849981827E744EF34B70104F20896
          47AEB2E46A2B473726B373899227A3E893AEB4E1C2B17F2989CE1FAA36099363
          9F5C9DBD16E94908E4012C8FF4EF483F4F866E4C76B7EE54BAF68794D636DFD5
          B6349C384EFBA77E93CEEEDB6B1226FD43D24FF442D32720508C6179A467597A
          98537563723FD797BA546DA4D49CDC98B4E9D2E97A3A386322D5FF6597511885
          7AAC375DFB20048A212C8FE4B49699C4E4F51F4825CB9F5497ECB1442EEDABE7
          4EA7536FBF611A5ACE122DFFFF3F102846B03C924DAF3089C91F7C1775AA5CA2
          3A0BBD403A190F2F7C808EEF78D13474094BA4F60D02B90C8B23E377641CCF44
          93B88291F75287F2F92A4DE129FCB91E5DF608D56DFD8969A41C96A7B4FEC5EE
          A893B010A8092C8F8C1C941184234DE28A26DE4FC55CFCA466E36A3AC6C590AD
          AD9F7F7724A5A645F59E10E81A581E19B32C6397CBF4F72A401DE63C4805A3BE
          E177F31575CFFC988EAE78CC28099BD6BB1F65972FA7406696F1FB41A0302C8F
          CC969059133769EF902445172DA6FC3B87EB8678C2F15F6DA3C38BCC92B0A9DD
          7A51F0C12A0AE4B4327A2F08444A1E99A725F3B57AE9C6A8A4E8D227286FC0AD
          7E373F22A7DEFC1D55CF9B6994844D2DB99E820BD652A08D7EBF55D20BC4F294
          5028295AAA1B237D3B5D9ED840B97DBEE077F32DA9DFFD273A387392EA33D225
          A5B8230517AEA394F67A3DE7492D10CB2373D325297A9D6E8CF42A775DF354D4
          4951AF5149D8691354EFB52E81FCF694B3702DA574B4CFDD25AD402C8FAC8A21
          AB63B4D38DC9282C5679ADCC924FF9DD7C23CE57FF43E5CF2ED46A0D0F52045A
          E55170FE6A4A2DED61B95D520AC4F2C87A3CD2F3A69D6710695452B4507B0447
          5C21F2A8242CCBA44B202B48D915DFA3B4CFF66D769BA41388E5914B2659114C
          3BCF10ECD6438DE5713B29EA35721893314567F6FD553F283D8382DF594C6937
          DC12F1E9A41288E5194BA1B508F593A27CA22C27CCB14A8A7A8D4AC2F289B59C
          606B939242D9531650FAA0A11F7B2A690462796671B552DAA11B9377F3202A59
          5615F3A4A8D7A8246CF90C3AF5D6EBFA418100658D9D45194347377A38290462
          791EE1EA219318E91C944E42B792A2C5F71B4F168C48CDEAD1CE5F84C249D845
          15AAD3D184CCAF4FA0CC5193AFFE9FD00285D75E96E4D0549338494B487AC2CD
          A468BC09A49024EC8AC754FAC3848C3B4650D68472F5F924AC402C8F64079FE6
          728F499C24448B6290148D4B81C24802B6C630099BDEBF8CB2A73F4CFD6E2C4E
          3C81589E6CAE9EE772A77EEB02D461EE435470F77D3169533C0B24D43DBB858E
          2E7FD42C09DBE78BD4B0FB0FC1B22347CEC6A4514DF0442096A735572F73B959
          BB619214AD5CA20683C58A7817489041693238CD7026EC5B5C86B244FF8959C3
          C2C45C2096A7804249D1DEBA312A29CA575A72C5154B5A8240825C99C9159AE1
          4CD8F728B408685D2CDB165381589E4E144A8A5EAF1BE36552B4A50824449384
          65FE4EA199B08763D5AE9809C4F274A35052B4A36E8C4A8ACA4CD16E3D74431C
          D1920412A4B75ACD843548C23247283413765F2CDA141381589E3E144A8A16E8
          C6C824BFD2759B3D4D8AB634810495849D324E4D6634400E63728B86DD6EB7C7
          7581589E015CC99A70AD7563647A71D7F59B3D4F8AB644810449C21E983C4E4D
          AB36404EA887B1446FBAD916570562792431F31C17ED81BC3286472545DB684F
          6B778D962A90200B3AA824EC077B4CC2CE7119C112BDEC563B5C1388E5B997AB
          CD5CB4A712C8922AB2B48A2CB1E2072D592041969691256664A919031AB88C63
          898CE71B45C21581581EE926AE2293A4E8805BD5F8653F93A22D5D20412561E7
          CD54E3AD0D902F7D064B643CDFA8298E0562796429D34A931859464E9693F36A
          A66873248240824AC25656A8E5F70C59C412197D774D895AA070527415971926
          71B280A52C64E9F94CD108248A400A49C2AE7C5C2D046A881C3966457B63E1A8
          040A2745653509A3997BC593A653D1B7A7B9F381B940420914E6D8F7D750CD86
          274DC324F53F9E256A300D341688E5912B2C197EAA9FA492A468F97C354F3D9E
          48448104998F2FF3F20D972396F1E87263E1732641D10824978043B4DF80CF73
          3A572EBD7ADB807822510512E4F60C8716CE334DC26E6781869A04442390CC51
          978E42DB5B25A564668592A2FD077AF09181A6C81A452A097B5EEB47456E5935
          CCF4BE67D19E03C9001D395B6BF64C582545AB36AA55C1807FC86A69B26A9A4D
          12562418C3F26C317D7D275761B3B95A11E9B9B4FC7654BA66935A8F10F88FAC
          DBB87FDA786A38DEECDDCAE7B03C2BA3796D47FD402C910834FBDAC754525466
          8A762EF1E9E30291901564D54CD88F276157B23C73A27D5DA702C9214C0E656A
          CCA92445451E598319C41FB296B548744D12560E5963A2ED0312DCE8899693E9
          9782DD7B96755DE34F5214E8A392B07C383BB3778F9C2CCB49F34527AFE7562E
          2CA7D7DBEFD5FB951405664812F6FDFEBD734D6F411509D7B2F1B57567FD9F64
          0FB4292CC87625970481921408041C018180232010700404028E8040C0111008
          380202D970725467BF9BD08836CF1CF2BB098D80403640206B20900D10C81A08
          640304B20602D90081AC81403640206B20900D10C81A08640304B20602D90081
          AC81403640206B20900D10C81A08640304B20602D90081AC81403640206B2090
          0D10C81A08640304B20602D90081AC81403640206B20900D10C81A08640304B2
          0602D90081AC81403640206B20900D5E0A949E1DA49C4F14D2E97FD7D2C5B367
          226E03816C4866814AFA0DA4CC567974FEBFA7A87AE71B11B781403624B3409F
          BE7DF8D5BFFFF66AE4FB5540201B205008081425102804048A12081402024509
          040A0181A204028580405192CC02E132DE059259207424BA40320BA40304B261
          E7AE0FE34AA076153DFD6E42233E5A6C747FF798D3AF6F7B08640504B20602D9
          0081AC81403640206B20900D10C81A08640304B20602D90081AC81403640206B
          20900D10C81A08640304B20602D90081AC81403640206B20900D10C81A086403
          04B20602D90081AC893B814072028180232010700404028E8040C01110083802
          0201474020E00808041C018180232010700404028EF81F55CFB63B71AD615D00
          00000049454E44AE426082}
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
        Description = 'home'
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000007
          B04944415478DAED9D4F6C54451CC76777DB6E5B9188911A4A49A02608061284
          62143518FF1D8412120F9E84783070F1E04D0E40A107BC79F002F160C0930713
          42C183FF2251D1D8822410410E6042A5B11A3588D0EDD2ADBFDF764B4A53F6ED
          9BDFCC9B99F7BE9F64320DEC7BBCD97C32F39DCE6F97DCE4E4A40240971C0402
          1220101001818008080444402020020201111008888040400404022220101001
          8180080804444020200202011110088880404004040222201010018180080804
          441815E8E6EE5C0775EBA9F5505B57EB17B91E64C619A13644ED74AD1F6CEF9F
          1C357573230291384DD4EDA2B69B5AB39BF7093448995A3FB50324D26DE9CDC4
          02913C2BA93BACA6661E100E83D4B69344172437110944F26CA3EE10B556D7EF
          06D0628CDA0E92E888EE0DB405AACD3C6714E4091D9668ADEE4CA425502DF39C
          5258B6D2022F671B743291AE401C96F7BB1E3530CA1E12A83FEE45B105AA6DD5
          8715765B698377675D71B7F83A026DA2EEB8EBD1022B6C26814EC4B94047A0BD
          D4F5B91E29B0421F09B42FCE053A021DA3AED7F54881150648A02D712ED011E8
          9AC2F1445A1921813AE35CA023104E5F530C09948BF37A0804EE020201111008
          888040400404022220500AC877AD528565EB54BE7325B515D53FAB5CBB48ED82
          9AB8725A5586CF5BFBB72150C0E45AE7A9E697DE524D6B36D57DDDEDB32754F9
          F3F7D5E4D80DE3CF00810225BF64B52ABEBA5FE5EE5FD8D0EB27FFFD43953ED9
          A32A57CF197D0E0814203CF3B4EEFCA86179A66189C60EBE6E7426824001D2D2
          BB2B72D9BA17BC9C8D0F1C30F62C1028303830B7BE7150748FB10F771A0BD610
          28309A9FDDAE9A9F7B53748FF2D71FA8F237878D3C0F040A8CE26BEFAAC2F267
          44F798B8F4AD2A7DFC8E91E7814081D1F6F651959BF790E81E9337FE54B7DEDB
          6AE47920501D2E5F2D54FBEE2513AE1FE50E1028106EDECAA9A35F16AB3F6F7D
          A1A4DADBFC180696B040F8ECBB16F5DBEF5333D0E28727D4CB4F8FBB7EA42A08
          D10170F17293FAFEECDD9F427A6A4D59ADE8167FB780186CE33DE7FA7F3975EC
          8B56559E157B9A6932DAF2E2989A7F9FFBE1E017899EC243FBF464518DFE959F
          F3EF3B1EACA8573696542ED65B661E1C6578CAB94B4D6AE87CFD0FD0F6AC2AAB
          D5CB3D58CA7098EA177F5FCFAB81AF8A6AA252FF75059A9C7A9F2FA905F32B8D
          DDD82228E7F0049686E561891A81E561890A8DBDDC3A2828730C2F5BBC7CC581
          97315ECEB24EE605E2C0CCC139EEB7D67090E640CDC13ACB645A20DEAAF3969D
          B7EE3AF0969EB7F6CD05D7237147A6053AF553B3FAE54ABCA56B368F2EBBAD36
          3C9EDDA52CB302F131051F5798808F39F8B8238B6452A0D2F8D441291F989A80
          0F5AF9C0B5D8E2DD50AD9349814EFED8A22E0F9B0D2EDD5D136AE3137E1CB826
          49E604E21A9F93836696AED96C5C3FEE55ED5012644AA0E91A1F5EC26CC04B98
          4FB5434990298166D6F8D8C274EDD0E8F0D4D95C47979F3BBDCC0834578D8F2D
          4CD50EDDF8A7A02E0EB5557F5ED1734BCD7BC0BFE5311302DDABC6C716266A87
          CAA59C3AFF437BB5AFDEB338A9563D79B3DAFB44EA058AAAF1B185A476A85251
          D5998767A099F00CC43351DE93435C26F5023552E3630BDDDAA15F7F2EDEC93E
          B3E12CB4F4B19293F1CC45AA056AB4C6C7163AB5432C0E0B540F16C897509D5A
          81E2D6F8D8224EEDD07468AE44F8C64B982FA13AB502E9D4F8D8A291DAA1D9A1
          390A5F42752A05D2ADF1B14554EDD0BD4273143E84EAD40924ADF1B145BDDAA1
          7AA1390AD7A13A750299A8F1B1C55CB5438D84E6285C86EA540964B2C6C71633
          6B871A0DCD51B80CD5A911C8748D8F2DA66B87F2F4AEC409CD51B80AD5A911C8
          468D8F2DBA174FA885B942ECD01C858B509D0A816CD6F8D8A0B398570B9AEDCC
          944987EAE005B25DE3631A168705B24992A13A788192A8F131457B21A796B6E5
          956DD5930CD5410B94648D8F94267A9B1F692F54FB24482A54072B50D2353E12
          F81DE6998767A024492254072990AB1A1F5D6C86E6286C87EA20057259E31397
          244273143643757002B9AEF1894352A1390A9BA13A28817CA9F16984A4437314
          B642755002F954E3530F57A1390A1BA13A18817CABF1A987CBD01C85E9501D84
          40BED6F8CC850FA1390A93A13A08817CAEF199892FA1390A93A1DA7B8142A8F1
          617C0BCD51980AD55E0B144A8D8FAFA1390A13A1DA6B8142A9F1F1393447210D
          D55E0B04FC070201111008888040400404022220101001818008080444402020
          0202011110088880404004040222201010018180882404BA46DD22D703055618
          21813AE35CA023D031EA7A5D8F1458618004DA12E7021D81F652D7E77AA4C00A
          7D24D0BE3817E808B489BAE3AE470AACB099043A11E7021D813AA81BA616C6B7
          218046E10F96759140A3712E8A2D104312EDA66EBFEB1103A3EC2179FAE35EA4
          2B107F2AF014B5F5AE470D8C30486D030914FBFFB2D212882189565277865AAB
          EBD1031163D4D6923C17742ED616882189B651774841A250617976903C47746F
          201288A9CD44871596B3D0E0656BBBEECC338D5820A696897651E3708DDD99DF
          F06E8BC3F2019DCC331B23024D53DBE2F34CD4436D5DADC7B1875B46A80D513B
          5DEB07E36ED5EB615420903D2010100181800808044440202002020111100888
          8040400404022220101001818008080444402020020201111008888040400404
          022220101001818008080444402020E27F6BDCAD2CFA3A371A0000000049454E
          44AE426082}
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
        Description = 'picture'
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000009
          BD4944415478DAED9D5B88555518C7971249A0940551205684E62544C1BCA058
          6681A082C2988A43FA560F0EF6E0252D7BC8D2747C48F4A1DE3446BC82032A08
          6596286A0E28927742132109B2424112D1FE9F7B9D618E73CEECCBBA7C6BAFF3
          FDE063CDC39E7DF65AE7C7597BDD7B3D7CF8500942517A894082092290608408
          24182102094688408211229060840824182102094634A44033DA673D8DE435C4
          109D0E42F447F443F4D551F99BB883B8ADD3CADF7F23AE202E212E52BA6FE6DE
          7FB9F3E69BE805822C7D908C434C414C440C45BCE0E8E36E222E208E220E214E
          40AAFFB8CBC025D10904617A2119AD12612826209E627A9CBB88632A9189A203
          424555E0D1080471A82A6A46CC47BCC2FD3C75B88AD88668834897B81FC606A5
          1608D23C8F649E4AC419CDFD3C39E940B421B643A63FB91FA628A51408E2D02F
          CC72C442441FEEE73184DE91B620D641A4ABDC0F93975209A4ABA9152AA9A69E
          E07E1ECBDC5749F5B6B64CD55B290482388391AC4634217A733F8F631E20F620
          5641A4CBDC0F9346D002411C6A3DAD442C55E5AFAAF242555B2B620D44BACBFD
          30F5085620C8330DC926156E8BCA17F45ED402890E703F482D821308E20C5089
          3833B99F2530DA5522D20DEE07E94A5002E95F9DAD88E7B89F2550FE422C08E9
          D7280881200EB5A8D62096D033713F4FE0D017B601B11222DDE77E18768120CF
          40243B10E3B90BA3641C47CC8544D7391F825520C83359254DD667390BA1C4DC
          423441A2C35C0FC02610E499AD92AEFC27B9321F09F710CD906837C787B30804
          791621D9A8E2EF14F405753E2E86449B7D7FB0778120CF972AE91C14EC439D8E
          9FF8FC40AF02419E6F907CE033830DC8B790E8435F1FE64D20F9E5F18AB75F22
          2F02E9779E4D3E322474D2E2E39DC8B940BAB545FD3CF2C2EC177AB19EEBBA75
          E65420DDCF735049539D0B6AE24F75D94FE44C20DDC37C5A49272137D4D938CA
          558FB51381F4D8D61125C313A140C31E935C8C9DB91268BD4A268109E1D00A81
          96D9BEA97581F4948C7D4A46D54383BEE819B6A7825815484F063BA3643E4FA8
          D07CA2913627A5D91668AF929984A1D30E8166D9BA99358174D5B59FAB54845C
          4CB75595591148AF9E38A764027C59A089FAC36DACF6B02510ADD9FA94BB5484
          5C7C01815699DEC45820BDE8EFAC6ABC755B6587D69D8D305DBC6843A09D48DE
          E32E8D22A0F0ACDC0765C09D95A2EC4219CC31B98191407AADFA7955D2815211
          E8D180EB3093B5F8A6026D41B280BB148A22023D622BCA6161D17F2E2C90DE62
          85EACFD2EE9221023D82C6C70617DD5AC644A0D24F4F15813A293C0DB690407A
          67309A1E50EA969708D409B5C80616D929ADA8408B917CCD9D6B5344A02A3E42
          796CCCFB4F45053AA5CAB727613744A02A6807D937F2FE536E8174D3FD22776E
          6D2002756348DE267D1181A219B61081BA917B782397407A13EFDF542483A622
          5037A829FF6A9ECDD0F30A4475E42FDCB9B48508549331289753592FCE2BD0C7
          48D672E7D01622504D56A05CBECA7A715E81BE47F20E770E6D2102D5E40794CB
          BB592FCE2C903EF5868E38E23AB8C43A22504D689259FFACA70CE511E84D243F
          71E7CE2622505DDE42D9FC9CE5C23C027D8EC478065B48884075598DB2F92CCB
          857904FA11C964EE9CD94404AACB6194CDDB592ECC23D01FCADD497F2C884075
          B989B27931CB859904D2678CFEC39D2BDB88403DF24C963360B30A3406C949EE
          1CD94604EA91B1289FD44EE3AC02BDAF922308D8B0F565978500A4A42315BE4B
          BB28AB40ECFB1B8A40DEC9B4CF625681762199CD991B11C83BBB51E6A9CBB5B2
          0AC43E8421027927D3904656814E2019CB991B11C83B2751E6E3D22ECA2AD0AF
          488673E64604F2CE3994F9EB69176515E81A92973873230279E77794F9CB6917
          65158876B662DD6D5504F2CE2D9479EA4E735905A2A17DD6BD9E4520EFDC4399
          A7AEFB138102253681A40AF34C000259ADC2AE297989F64A0002597D899666BC
          670210C86A335E3A123D138040563B126528C33301086475284306533D138040
          560753653A87670210C8EA740E9950E6990004B23AA14CA6B4F640005FB60BAC
          4E699549F53D10A940F626D513B2ACA73E110A6477590F210B0BEB13A1404E16
          16CAD2E63A44289093A5CDB2B9421D2214C8C9E60AB2BD4B1D2213C8CDF62E44
          08431A3611816AE266832942B6B8AB4D640239DDE24E36D9AC41640239DD6453
          B6F9AD414402B9DDE697908DC6BB1391406E371A27E4A883EE442490FBA30E08
          396CA59A4804F273D80A21C73D551389405E8F7B9203E7AACB833B2BA6F83D70
          8E90232FABCA823B2BA6F83DF292904377ABCA823B2B26F01CBA4BC8B1DF9DE5
          C09D1513788EFD267493FE3CA2377729144104520F10C3F236DDBB62241081C2
          DB892475F9478888406A17CA608EC90D6C083418C95955F2165903422DAF1110
          E8B2C94D8C0522621ADE6820720F5BD4C2964034C9EC9C8A6490B501A016D770
          0874D7F44656042220D13424FB990B46C8C674C873C0C68DAC094440227A2B9D
          C9552A4226DA218FB5B77EDB020D40720691BAB395C002ED34371202DDB07543
          AB0211BA2ADB47F7F65B36420AF445CFB0557555B02E100189D62359EAA96084
          6CB4429E65B66FEA4A201A1F3B8218EFA16084748E232641A0FBB66FEC442002
          120D44725A31EFEE2AA85B885190E7BA8B9B3B13888044B496FEA062DE63BA81
          B987980A790EBBFA00A702119088B6C6DBA14A3AE05A6268A0742EE4D9EDF243
          9C0B4440A245483639FF20A12B2D9067B3EB0FF1221011C23E8B0D44A6FD0D6D
          E04D20228669B025A0F0F4D422781588905F22A778FBE5A9E05D2042BF13D112
          1279B1B603BD302FF6F1CEF3382C0211BA75D6A6A4896F0A35D59B5DB7B6EAC1
          2610A1FB89F628E96C2C0A751236B9ECE74983552042F758533F910C7BE48386
          27E6BAEA61CE0ABB40841E3B5B8358A264143F0DFAC2362056BA18DBCA4B1002
          55D05341E84805994F541B9ACFB3C0F6940C13821288D093D2A8D75A663656D3
          AE92DE656B93C16C109C4015F4AF1189D4E813F569027C4B48BF3A5D09562042
          AFF6A04E479A9CD668EBCE68DD56AB4A3A078D574FB82268812AE8C58BB4F6AC
          49C5DFF9489D82D4B5B1CA74D19F0F4A215005BD167F0562BE2AF1AE2075A016
          D536C45A93B5EABE29954015F4D632CB110B55F9AB36AAAAB620D615DD628593
          520A5441EF94360FD1ACCAB76763874A8672B617D9192C144A2D505774F54622
          51F5166ACB8D7E61A89A6A2B5335D513D10854416F864EBF4653744C507C07C4
          50EBE918E2908E8E3C9B789781E8047A1C7DCAD03895C834113154B93B79F126
          E202E2A84A843991F5D49BB212BD40B5D067C052953744A78310FD11FD107D75
          54FE26EE206EEBB4F2371D7D75054155116DBC7E29CB19A3B1D1900209F61081
          04234420C1081148304204128C108104234420C1081148304204128CF81F6F51
          3F2CA1D958C50000000049454E44AE426082}
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
        Description = 'plus'
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000005
          604944415478DAEDDC4D685C551887F13369125C8A8B6243178A28285A6B9BD0
          1A5C48C536603EDC742518046BC18D4B11694C0D525CBA11FC0069C155372669
          21AD58BA90DA3289D62A2D28A20B694A16E2B22469C6F7CA0486A1F3FE677A5A
          CEB99DE707871BC230BC8B2777EEB9974CA556AB05E04E550808310808510808
          51080851080851B20DA862F61E187FD37E1CAF85CAEEFF7F176A4B7698BB7866
          EECB5AAE8377992C037A61FFC4C07A4FE56BFBF1C5162F39DFBB517BEDFBB3B3
          D753CFDAEDB20BA838F3EC3930712EB48E67D3F94B6766F771264A2BBB809E1F
          9938641F599FB7357CA8BDF5C3C2EC17A967EE663906346F018DB6357CA89DB2
          80C652CFDCCDB20B68EFC8ABC575CDB6365FBE7C71E19B81D43377B31C03EA68
          200BA8927AE66E46408842408842408842408842408842408842408842408842
          4088424088424088424088424088424088424088424088424088925D4007DF79
          3FAF81EEBD655B8BB696EAC7EAC94F3E5A493D54BB08283F6BB6666C1DB390D6
          530FA31050BEAAB6262DA26BA907F11050DE6EDA3A6C119D483D482B0494BF22
          A25DB99E8908A81C8A8FB3E11CAF8908A83CA62CA099D4433423A0F2287667DB
          73DBE21350B98C5A40A7530FD1A89C01F5F6878D479F0BB71ED911C2830FA71E
          39CEBF37C296BFAE849E3F7F0A617D55BD7ADA023A9A7AE446A50C68E3F13DE1
          D6CEFDA947BDABB65C3E1B7A7EBFA45E366F018DA79EB55129035A7BF950F9CF
          3CCDEC4CD4F7ADFCAAA3650B28AB6F23296740078FA41EF39EE83BA937591650
          560F8F09282304741710908F800402F2119040403E021208C847400201F90848
          20201F010904E4232081807C042410908F800402F2119040403E021208C84740
          0201F9084820201F010904E4232081807C042410908F800402F2119040403E02
          1208C847400201F9084820201F0109FC63A18F8004FEB5D94740025FAEE02320
          81AF77F1119040403E021208C847400201F9084820201F010904E4232081807C
          042410908F800402F2119040403E021208C847400201F90848E834A0DEFEFEF0
          C48EC1F0D8333BC3435B6FFF60F59F951BE18F5F2E87DFAE2C86F5D5D552BC4F
          2B0424741AD05383C361E8A591B65E5BFD6E215C5DBC508AF7698580844E031A
          7BE3ED967FE9CD8ABFFCF9AF3E2DC5FBB4424042A7014DBEFB6147EF7FFCE3A9
          52BC4F2B042410908F800402F21190C035908F800476613E0212B80FE4232081
          3BD13E021208C847400201F9084820201F010904E4232081807C0424B08DF711
          90C08D441F01093CCAF01190C0C3541F010904E4232081807C0424700DE42320
          815D988F8004EE03F90848E04EB48F800402F2119040403E021208C847400201
          F9084820201F010977B48D7FD6B6CD4F8B6DF3AFB66DFE596CBF337A9F560848
          E8F846E2D07018DAD7E68DBB730BE16AF54229DEA71502127894E123208187A9
          3E021208C847400201F90848E01AC8474002BB301F0109DC07F2119060015DB7
          C3B6D473646AD9021A483D44A31C039AB3C358EA3932356F018DA71EA2518E01
          7D6087E9D473646ADA023A9A7A88463906F48A1D4EA59E2353A316D0E9D44334
          CA31A0AD76F8DB565FEA5932B3666BBB05B4927A9046D90554B0888ED8A1B33B
          72F7BF298B6726F510CD720DA8D70EC50D92A1D4B364A26A6BD8025A4F3D48B3
          2C032A58444FDAE1475B0FA49E25B19BB676593CD7520F723BD90654B0885EB7
          C367A17B232AE2396CF19C483D482B590754A89F898E87EEFB382B3EB626733D
          F36CCA3EA042FD9AE83D5BC5C5F5FDBE3B2B765BC5C5F2B11CAF799A9522A04D
          F52D7E71261AB4B5BB7E2CFB638F655B8BB696EAC76A6E5B754FA902427E0808
          51080851080851080851080851080851080851080851080851080851080851FE
          03F332613B0647D0A00000000049454E44AE426082}
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
        Description = 'phone'
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
          B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300002986000029860122ECDF8C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00000A
          014944415478DAED9D7F8C14E519C7DFDDE38E0B48B15C50A108A227701A698B
          EC1DAD5A1730F514D11CA9AD72504A04ACCD1E475BB1B155416A9BB6260DB447
          DA0869B40D344D6AD3500B6D53E9356A0352FA33F1509B469B06A816FF3048A3
          C84DBFCFED6CBB1CBB773BFBCEB3EFECCCF7933C79EF7667DE79DFDD4FDE9D99
          F77DE74D799E6708A99614052236502062050522565020620505225650206205
          0522565020620505225650206205052256502062050522565020620505225650
          20620505225650A03A65F1EE5329246B10B722AEF65F3E8CD883D8F9F4F27135
          F96229501D0279A622D985C896D9A41FD10D898E6A978502D5197ECBB3DF9497
          A7403F6291764B4481EA0C08B416C963156EBE0E02EDD02C0F05AA3320D0CF90
          DC52E1E64F41A0A59AE5A14075060492F39A29156E7E0C024DD52C0F05AA3320
          50A02F0C02A534CB4381EA886D87DE99BEE7E5775F0DB20F052222CEF948BE88
          E88140CD41F6A5400906E29C872487D8889824AF41A0407950A0045224CEBD88
          96E2F72810298B2F4E0FE2F366983805281039078833C1E45B9CB2E214A040E4
          7FF8E2488BF339338A380528102916475A9C4941F6A54009C61767BDC9B73881
          C42940811208C4998CE41E44AFA9529C02142841409CB9262FCD7244A01B80E5
          A0403107D2A44DBEB75CC4591476FE1428A6F8E737AB4DFE1CE732ADE350A098
          0171E699BC389F44BC47FB78142806F827C5DD262FCEDC5A1E9B02D52990660C
          929B4D5E9A25884617E5A0407504A4910F5FA6CCDC895881B8C075992850C481
          3422C947119D7E3AD975998AA14011C3FF69FA90C90B7323424E8A553F741B28
          900320C944249714C58CA2BF5B11135C97B1521225502A6552D777ED5B638C57
          987E5BE96C8250E9BAFF061787552131025D7BDB9EA9631A1A77419EAC66052A
          8102E9A12290DFF2EC8F823C0205D24345A0ECB27D6B214FA5D36FD5A1407A28
          09B437C8F45B7528901E5A0205997EAB0E05D2434BA048DD1BA0407A842AD0CC
          858F3737BF753277E1B44B1FD52C745028901EA1097445C7F62EE4B5157F4E87
          409A650E0C05D2C35A20B9649FD3DEB7C978E621E3770150203D622590C833BB
          FDDB4FA4BCD4CAE2D729901EB112A8ADA36F335A9E4DC35FA7407AC44620FF9C
          E74953A2E79A02E91154A0A35BBF77DC4B993FA407CD1FBDB47966E060EE9761
          96A72A81FCABAD17F1E7F452EF53203DAA10E8ACFFF175FFB4B1E1CCA7FF7AA0
          F75F6194A72A81DADAFBE4B123652FD529901EB602F99C30696FF9C0819E5FD9
          9627B040A9D4C3E9399916B9D37C61B96D28901E2109249C18933E73A56D4B14
          58A03999BE6B70F5F5EC48DB50203D421468E8E7ECC8A15C974D79020B8493E7
          6F609F8D236D4381F40853A02152A6D3E6C43AB0406D99EDFBB1D7C291B6A140
          7A842D50CA335F79E150EE816ACB135CA0F6ED47D0F8CD1E691B0AA447D802E1
          127FEF9183B925D596A71A81DEC461471C844E81F408FD27CC98E303CFE7AA1E
          7A4381EA8C3808C49F3087D4FF4F184FA29D52F727D1BC8C774BDD5FC6F346A2
          5BEAFE4622BB32DC52F75D19023B53DD51F79DA9028773B82316C339040E2873
          432C069415E090D6DA139B21AD433B73507DCD8995404319705A4F4D899D4005
          38B1B036C4562081539BF589B54005F870053D9222101FEFA2445204E203A694
          4888407CC49D168910880FD9D4231102097CCCAF0E8911682873FF41E3EF9E7E
          FBDE743A3D2BDD3046B32E65A1407AD464A983B6F63E5953EBCFDAC759BBF52E
          D3D0D870CEEB69CF7BFF602A251595D10333FCB410331153D53F849048A44002
          247AD9E4D7A55063E5575798F113C795AAE6BADE4CE38E72FB6D3BF48E2C5129
          2BF3C8622BB2CE6964D7CE48B2405F47729FE6313EFEC0ED66D294F7967AEB47
          BD99A63B2AC9A368F59E8250B2C647BA261F52052459A00E2407348F71DB676F
          35535A2F2AF18EF77A6F66AC0CC10D5C5908D562F22B14AE42C86C14A74B4125
          5920A9C83F10D3B48ED179F78DE692B933CAD5744EEFFCB12FDAE40F9924F355
          7E38E9314EAC400224FA16921EADFC17AECC9AD90B66957CCF33A90F6EC834FE
          298CE3F84B615E67F2EBA77E0C719E569D86937481B2487EA395FF87972D3073
          17975E44394C818A814CE34D5EA2B5886BB4EA5620E902C935F631A3B40EE9D5
          9DF34C66E9FC526F9D6E34A7A77F2633FEB866FD205306C906C4ED466955E744
          0B2440A29D48EED2C8FBCA8F5C61AEFBC4B5E7BCEE19EFB10D99B177D7AA8E10
          E97D48728875884961E64D81DAFB6E42B25723EFD6F9ADE686D58BCE7ED13327
          BDC1C1AB362C687EA5A615354322C94D2939E1EE45CCB6CC6E080AD4DED784E4
          35C4C4B0F3BEB86D9A5992BBF9FF9533E6A5D4A0E9EAE9687AA1A6951C867FD2
          2D05BBDF589E27255E200112ED42B23CEC7C27B44C30DD5BEE3C814FEC77A8D6
          7369AFE93B3D1DE6CD9A5770042093DC9C7C18D151CDFE14C80C09B40CC9934A
          D95F30F07CEEF59A572A2010495AA42D267FA7BB622890191248CE0DE44B1E67
          9B57096E81403FAF79A5AA0422C992E8D2227DA092ED29900F24FA0912AB478B
          94610B04DA649F4DEDF0CF91E4B3D88CB86AA46D29900F045A81E4070A59FF02
          02DDE4A45296F822C93DA4CD88B652DB50201F082457617235D61472D66F40A0
          1627950A098824BDFF327A405AD2B3FA6628501190681F924E85AC2F87447F73
          56B190804872E7BEDBE45B2419F846818A8140D27FA4317BA31B02ED7656B190
          81486391AC477C090205BA7F167781A44F4CFAC61A6CF31AC6E31068B5B38A29
          01912643A0D782EC136B810448D48FE4FA90B33D89B80812BDE5B4720A2CDE7D
          2AD017960481A469DEA690F5A720D0134E2BA700040A326DFC1804529D301005
          812E46F2AA097FA8E86F2150D669E514804041A68D3F0581966A96C7B9400224
          3A88A43DE46CA562AD90E8EFAEEB17261028C885C73A08B4A3C26DAB222A027D
          01C9D714B2FE32047AC875FDC20402494BBD1F911D65D37EC42208A4FA054745
          A0CB91BCA490F5BF119741A248F5C8DB0289E4BC46463464CB6CD28FE8863C47
          B5CB1209810448F417334A3F50953C02811E745DBFB0F15BA23508E98C2DF4E8
          1F46EC41ECD46E790A4449A0CDC6188D4E50B994977321D5F1D049254A0269CE
          9FFF2E04BAC7751DE34864041214E7CF9F46CC8244AFB8AE63DC889A409AF3E7
          1F84408FB8AE63DC889A409AF3E77F0881421F879D74A22690E6FCF9EF43A055
          AEEB1837222590A0387FFE3E0814A907A0C781280A9435E1CF9F3F8598098102
          0D8520A3134581C29E3FFF36623DE489CC6387E344E4041220917400AE0921AB
          5F237A218FD399A97126AA02D9CC9F3F83F831E2518873D8755DE24E54059259
          090366D88C8451F80F421608FD66DC86704499480A24F827D3326BA3B9CC26B2
          68ACB430BFF7D36721CE1BAECB9D34222B900089E621D98890C7F0CAD08C822C
          8721CB3F5D978F445C20127D2810B18202112B2810B18202112B2810B1820211
          2B2810B18202112B2810B18202112B2810B18202112B2810B18202112B2810B1
          E2BF1B3DCB2C2A8A606C0000000049454E44AE426082}
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
        Description = 'adversting'
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end>
    Left = 601
    Top = 41
  end
  object scGPVirtualImageList1: TscGPVirtualImageList
    Tag = 1
    ColorDepth = cdDefault
    DirectDraw = True
    PixelOffsetMode = scgppomDefault
    InterpolationMode = scgppimHighQualityBilinear
    Width = 24
    Height = 24
    DefaultWidth = 24
    DefaultHeight = 24
    SourceImageCollection = scGPImageCollection2
    Left = 488
    Top = 45
    Bitmap = {}
  end
  object scStyleManager1: TscStyleManager
    ArrowsType = scsatModern
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
    RTLMode = False
    Left = 704
    Top = 44
  end
end
