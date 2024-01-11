object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Modern Application Demo'
  ClientHeight = 446
  ClientWidth = 884
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  StyleElements = [seFont, seClient]
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BorderPanel: TscGPPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 446
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
    FillColor = clBlack
    FillColorAlpha = 255
    FillColor2 = clNone
    FrameColor = clWindow
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
    Color = clBlack
    Caption = 'BorderPanel'
    TransparentBackground = False
    StorePaintBuffer = True
    Sizeable = True
    WallpaperIndex = -1
    WordWrap = False
    object scGPPanel2: TscGPPanel
      Left = 0
      Top = 0
      Width = 884
      Height = 68
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
      CustomImages = scGPImageCollection1
      CustomImageIndex = 0
      DragForm = False
      DragTopForm = True
      DrawTextMode = scdtmGDI
      FrameSides = [gppfsBottom]
      FillGradientAngle = 90
      FillGradientBeginAlpha = 150
      FillGradientEndAlpha = 20
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FrameWidth = 1
      FillColor = clWindow
      FillColorAlpha = 255
      FillColor2 = clHighlight
      FrameColor = clHighlight
      FrameColorAlpha = 100
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
      Color = clBlack
      Caption = 'scGPPanel2'
      TransparentBackground = False
      StorePaintBuffer = True
      Sizeable = False
      WallpaperIndex = -1
      WordWrap = False
      DesignSize = (
        884
        68)
      object MenuButton: TscGPCharGlyphButton
        AlignWithMargins = True
        Left = 2
        Top = 2
        Width = 65
        Height = 63
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 0
        Animation = False
        Badge.Color = clRed
        Badge.ColorAlpha = 255
        Badge.Font.Charset = DEFAULT_CHARSET
        Badge.Font.Color = clWhite
        Badge.Font.Height = -11
        Badge.Font.Name = 'Tahoma'
        Badge.Font.Style = [fsBold]
        Badge.Visible = False
        Caption = 'Menu'
        CaptionCenterAlignment = False
        CanFocused = False
        CustomDropDown = False
        DrawTextMode = scdtmGDI
        FluentLightEffect = True
        Layout = blGlyphTop
        TransparentBackground = True
        Options.NormalColor = clBtnText
        Options.HotColor = clWindowText
        Options.PressedColor = clWindowText
        Options.FocusedColor = clWindowText
        Options.DisabledColor = clWindowText
        Options.NormalColor2 = clNone
        Options.HotColor2 = clNone
        Options.PressedColor2 = clNone
        Options.FocusedColor2 = clNone
        Options.DisabledColor2 = clNone
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 20
        Options.DisabledColorAlpha = 255
        Options.NormalColor2Alpha = 100
        Options.HotColor2Alpha = 100
        Options.PressedColor2Alpha = 255
        Options.FocusedColor2Alpha = 255
        Options.DisabledColor2Alpha = 255
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = clNone
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clNone
        Options.FrameWidth = 1
        Options.FrameNormalColorAlpha = 255
        Options.FrameHotColorAlpha = 255
        Options.FramePressedColorAlpha = 255
        Options.FrameFocusedColorAlpha = 255
        Options.FrameDisabledColorAlpha = 30
        Options.FontNormalColor = clWindowText
        Options.FontHotColor = clWindowText
        Options.FontPressedColor = clWindowText
        Options.FontFocusedColor = clWindowText
        Options.FontDisabledColor = clGray
        Options.ShapeFillGradientAngle = 90
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeFillGradientColorOffset = 25
        Options.ShapeCornerRadius = 4
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
        Options.ArrowDisabledColor = 5851714
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
        GlyphOptions.Index = 276
        GlyphOptions.Margin = 0
        GlyphOptions.Size = 24
        GlyphOptions.StyleColors = True
        TextMargin = -1
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ShowCaption = True
        SplitButton = False
        RepeatClick = False
        RepeatClickInterval = 100
        DropDownMenu = PopupMenu1
        ShowGalleryMenuFromTop = False
        ShowGalleryMenuFromRight = False
        ShowMenuArrow = False
        ShowFocusRect = True
        Down = False
        GroupIndex = 0
        AllowAllUp = False
        ToggleMode = False
      end
      object scGPPanel6: TscGPPanel
        Left = 300
        Top = 3
        Width = 301
        Height = 62
        Anchors = [akTop]
        FluentUIOpaque = False
        TabOrder = 1
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
        Caption = 'scGPPanel6'
        TransparentBackground = True
        StorePaintBuffer = True
        Sizeable = False
        WallpaperIndex = -1
        WordWrap = False
        object scGPButton1: TscGPButton
          Left = 210
          Top = 0
          Width = 70
          Height = 62
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
          OnClick = scGPButton1Click
          Animation = False
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -11
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          Caption = 'Settings'
          CaptionCenterAlignment = False
          CanFocused = True
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 4
          Layout = blGlyphTop
          Images = VirtualImageList1
          ImageIndex = 3
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clBtnText
          Options.HotColor = clBtnText
          Options.PressedColor = clNone
          Options.FocusedColor = clHighlight
          Options.DisabledColor = clBtnFace
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clHighlight
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 0
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 150
          Options.FocusedColorAlpha = 20
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 100
          Options.HotColor2Alpha = 10
          Options.PressedColor2Alpha = 200
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clHighlight
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 5
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 30
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = 0
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 4
          Options.ShapeStyle = scgpBottomLine
          Options.ShapeStyleLineSize = 40
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clBtnText
          Options.ArrowHotColor = clBtnText
          Options.ArrowPressedColor = clBtnText
          Options.ArrowFocusedColor = clBtnText
          Options.ArrowDisabledColor = 5851714
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = True
          HotImageIndex = -1
          FluentLightEffect = True
          FocusedImageIndex = -1
          PressedImageIndex = -1
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = True
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
          Down = True
          GroupIndex = 1
          AllowAllUp = False
          WordWrap = False
          ToggleMode = False
        end
        object scGPButton2: TscGPButton
          Left = 140
          Top = 0
          Width = 70
          Height = 62
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          TabStop = True
          OnClick = scGPButton2Click
          Animation = False
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -11
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          Caption = 'Users'
          CaptionCenterAlignment = False
          CanFocused = True
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 4
          Layout = blGlyphTop
          Images = VirtualImageList1
          ImageIndex = 2
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clBtnText
          Options.HotColor = clBtnText
          Options.PressedColor = clNone
          Options.FocusedColor = clHighlight
          Options.DisabledColor = clBtnFace
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clHighlight
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 0
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 150
          Options.FocusedColorAlpha = 20
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 100
          Options.HotColor2Alpha = 10
          Options.PressedColor2Alpha = 200
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clHighlight
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 5
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 30
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = 0
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 4
          Options.ShapeStyle = scgpBottomLine
          Options.ShapeStyleLineSize = 40
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clBtnText
          Options.ArrowHotColor = clBtnText
          Options.ArrowPressedColor = clBtnText
          Options.ArrowFocusedColor = clBtnText
          Options.ArrowDisabledColor = 5851714
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = True
          HotImageIndex = -1
          FluentLightEffect = True
          FocusedImageIndex = -1
          PressedImageIndex = -1
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = True
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
          GroupIndex = 1
          AllowAllUp = False
          WordWrap = False
          ToggleMode = False
        end
        object scGPButton3: TscGPButton
          Left = 70
          Top = 0
          Width = 70
          Height = 62
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 2
          TabStop = True
          OnClick = scGPButton3Click
          Animation = False
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -11
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          Caption = 'Reports'
          CaptionCenterAlignment = False
          CanFocused = True
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 4
          Layout = blGlyphTop
          Images = VirtualImageList1
          ImageIndex = 1
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clBtnText
          Options.HotColor = clBtnText
          Options.PressedColor = clNone
          Options.FocusedColor = clHighlight
          Options.DisabledColor = clBtnFace
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clHighlight
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 0
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 150
          Options.FocusedColorAlpha = 20
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 100
          Options.HotColor2Alpha = 10
          Options.PressedColor2Alpha = 200
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clHighlight
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 5
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 30
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = 0
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 4
          Options.ShapeStyle = scgpBottomLine
          Options.ShapeStyleLineSize = 40
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clBtnText
          Options.ArrowHotColor = clBtnText
          Options.ArrowPressedColor = clBtnText
          Options.ArrowFocusedColor = clBtnText
          Options.ArrowDisabledColor = 5851714
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = True
          HotImageIndex = -1
          FluentLightEffect = True
          FocusedImageIndex = -1
          PressedImageIndex = -1
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = True
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
          GroupIndex = 1
          AllowAllUp = False
          WordWrap = False
          ToggleMode = False
        end
        object scGPButton4: TscGPButton
          Left = 0
          Top = 0
          Width = 70
          Height = 62
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 3
          TabStop = True
          OnClick = scGPButton4Click
          Animation = False
          Badge.Color = clRed
          Badge.ColorAlpha = 255
          Badge.Font.Charset = DEFAULT_CHARSET
          Badge.Font.Color = clWhite
          Badge.Font.Height = -11
          Badge.Font.Name = 'Tahoma'
          Badge.Font.Style = [fsBold]
          Badge.Visible = False
          Caption = 'Data'
          CaptionCenterAlignment = False
          CanFocused = True
          CustomDropDown = False
          DrawTextMode = scdtmGDI
          Margin = -1
          Spacing = 4
          Layout = blGlyphTop
          Images = VirtualImageList1
          ImageIndex = 0
          ImageMargin = 0
          TransparentBackground = True
          Options.NormalColor = clBtnText
          Options.HotColor = clBtnText
          Options.PressedColor = clNone
          Options.FocusedColor = clHighlight
          Options.DisabledColor = clBtnFace
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clHighlight
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 0
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 150
          Options.FocusedColorAlpha = 20
          Options.DisabledColorAlpha = 255
          Options.NormalColor2Alpha = 100
          Options.HotColor2Alpha = 10
          Options.PressedColor2Alpha = 200
          Options.FocusedColor2Alpha = 255
          Options.DisabledColor2Alpha = 255
          Options.FrameNormalColor = clNone
          Options.FrameHotColor = clNone
          Options.FramePressedColor = clHighlight
          Options.FrameFocusedColor = clNone
          Options.FrameDisabledColor = clNone
          Options.FrameWidth = 5
          Options.FrameNormalColorAlpha = 255
          Options.FrameHotColorAlpha = 255
          Options.FramePressedColorAlpha = 255
          Options.FrameFocusedColorAlpha = 255
          Options.FrameDisabledColorAlpha = 30
          Options.FontNormalColor = clWindowText
          Options.FontHotColor = clWindowText
          Options.FontPressedColor = clWindowText
          Options.FontFocusedColor = clWindowText
          Options.FontDisabledColor = clGray
          Options.ShapeFillGradientAngle = 90
          Options.ShapeFillGradientPressedAngle = 0
          Options.ShapeFillGradientColorOffset = 25
          Options.ShapeCornerRadius = 4
          Options.ShapeStyle = scgpBottomLine
          Options.ShapeStyleLineSize = 40
          Options.ArrowSize = 9
          Options.ArrowAreaSize = 0
          Options.ArrowType = scgpatDefault
          Options.ArrowThickness = 2
          Options.ArrowThicknessScaled = False
          Options.ArrowNormalColor = clBtnText
          Options.ArrowHotColor = clBtnText
          Options.ArrowPressedColor = clBtnText
          Options.ArrowFocusedColor = clBtnText
          Options.ArrowDisabledColor = 5851714
          Options.ArrowNormalColorAlpha = 200
          Options.ArrowHotColorAlpha = 255
          Options.ArrowPressedColorAlpha = 255
          Options.ArrowFocusedColorAlpha = 200
          Options.ArrowDisabledColorAlpha = 125
          Options.StyleColors = True
          Options.PressedHotColors = True
          HotImageIndex = -1
          FluentLightEffect = True
          FocusedImageIndex = -1
          PressedImageIndex = -1
          UseGalleryMenuImage = False
          UseGalleryMenuCaption = False
          ScaleMarginAndSpacing = True
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
          GroupIndex = 1
          AllowAllUp = False
          WordWrap = False
          ToggleMode = False
        end
      end
    end
    object scGPPanel3: TscGPPanel
      Left = 0
      Top = 420
      Width = 884
      Height = 26
      Align = alBottom
      FluentUIOpaque = False
      TabOrder = 1
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
      FrameSides = [gppfsTop]
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FrameWidth = 1
      FillColor = clWindow
      FillColorAlpha = 255
      FillColor2 = clNone
      FrameColor = clWindowText
      FrameColorAlpha = 40
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
      Color = clWhite
      Caption = 'scGPPanel3'
      TransparentBackground = False
      StorePaintBuffer = True
      Sizeable = False
      WallpaperIndex = 1
      WordWrap = False
      object scGPLabel1: TscGPLabel
        AlignWithMargins = True
        Left = 3
        Top = 4
        Width = 878
        Height = 19
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 0
        DragForm = False
        DragTopForm = True
        DrawTextMode = scdtmGDI
        ContentMarginLeft = 10
        ContentMarginRight = 2
        ContentMarginTop = 0
        ContentMarginBottom = 0
        DisabledFontColor = clNone
        FrameWidth = 0
        FillColor = clBtnText
        FillColorAlpha = 0
        FillColor2 = clNone
        FillColor2Alpha = 0
        FillGradientAngle = 0
        FrameColor = clBlack
        FrameColorAlpha = 20
        FrameRadius = 5
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = False
        ShowEllipsis = True
        Caption = 'Status text...'
      end
    end
    object scPageViewer3: TscPageViewer
      Left = 0
      Top = 68
      Width = 884
      Height = 352
      Align = alClient
      FluentUIOpaque = False
      TabOrder = 2
      PageIndex = 3
      Pages = <
        item
          Page = scPageViewerPage6
        end
        item
          Page = scPageViewerPage7
        end
        item
          Page = scPageViewerPage8
        end
        item
          Page = scPageViewerPage9
        end>
      ActivePage = scPageViewerPage9
      object scPageViewerPage7: TscPageViewerPage
        Left = 0
        Top = 0
        Width = 884
        Height = 352
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        AutoScroll = False
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
        FluentUIOpaque = False
        StorePaintBuffer = True
        MouseWheelSupport = False
        BackgroundStyle = scsbsFormBackground
      end
      object scPageViewerPage8: TscPageViewerPage
        Left = 0
        Top = 0
        Width = 884
        Height = 352
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        AutoScroll = False
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
        FluentUIOpaque = False
        StorePaintBuffer = True
        MouseWheelSupport = False
        BackgroundStyle = scsbsFormBackground
      end
      object scPageViewerPage6: TscPageViewerPage
        Left = 0
        Top = 0
        Width = 884
        Height = 352
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        AutoScroll = False
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
        Visible = False
        WallpaperIndex = -1
        CustomBackgroundImageIndex = -1
        FullUpdate = True
        FluentUIOpaque = False
        StorePaintBuffer = True
        MouseWheelSupport = False
        BackgroundStyle = scsbsPanel
      end
      object scPageViewerPage9: TscPageViewerPage
        Left = 0
        Top = 0
        Width = 884
        Height = 352
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        WallpaperIndex = -1
        CustomBackgroundImageIndex = -1
        FullUpdate = True
        FluentUIOpaque = False
        StorePaintBuffer = True
        MouseWheelSupport = False
        BackgroundStyle = scsbsFormBackground
        object scLabel4: TscLabel
          Left = 27
          Top = 81
          Width = 28
          Height = 13
          FluentUIOpaque = False
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
          Caption = 'Style:'
        end
        object scComboBox1: TscComboBox
          Left = 27
          Top = 100
          Width = 226
          Height = 28
          FluentUIOpaque = False
          Style = csDropDownList
          ItemIndex = -1
          WordBreak = False
          SelectionStyle = scstStyled
          SelectionColor = clNone
          SelectionTextColor = clHighlightText
          ImageIndex = -1
          ItemHeight = 22
          TabOrder = 1
          StyleKind = scscbDefault
          ShowFocusRect = True
          OnClick = scComboBox1Click
        end
        object scCheckBox4: TscCheckBox
          Left = 27
          Top = 28
          Width = 184
          Height = 35
          FluentUIOpaque = False
          TabOrder = 2
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
          Caption = 'FluentLightEffect on buttons'
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
        object scGPToggleSwitch1: TscGPToggleSwitch
          Left = 27
          Top = 161
          Width = 150
          Height = 35
          FluentUIOpaque = False
          TabOrder = 3
          TabStop = True
          Animation = True
          CanFocused = True
          CaptionOn = 'Windows11 UI'
          CaptionOff = 'Windows11 UI'
          DrawTextMode = scdtmGDI
          FrameColor = clBtnText
          FrameOnColor = clHighlight
          FramePressedColor = clBtnShadow
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
          FramePressedColorAlpha = 255
          ThumbColorAlpha = 255
          ThumbOnColorAlpha = 255
          ThumbPressedColorAlpha = 255
          ThumbShadow = False
          ThumbMargin = 4
          ThumbMarginHot = 3
          ThumbMarginPressed = 4
          FrameSolid = False
          FrameOnSolid = True
          FrameInside = False
          FrameWidth = 1
          OnChangeState = scGPToggleSwitch1ChangeState
        end
      end
    end
  end
  object scStyledForm1: TscStyledForm
    FluentUIBackground = scfuibAcrylic
    FluentUIAcrylicColor = clWindow
    FluentUIAcrylicColorAlpha = 50
    FluentUIBorder = True
    FluentUIInactiveAcrylicColorOpaque = True
    DWMClientRoundedCornersType = scDWMRoundedCornersDefault
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
    Left = 56
    Top = 376
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
    Left = 144
    Top = 376
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 376
    object New1: TMenuItem
      Caption = 'New...'
    end
    object OpenMediaFile1: TMenuItem
      Caption = 'Open...'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Open1: TMenuItem
      Caption = 'Save'
    end
    object SaveAs1: TMenuItem
      Caption = 'Save as...'
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Preview1: TMenuItem
      Caption = 'Preview...'
    end
    object Print2: TMenuItem
      Caption = 'Print...'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Print1: TMenuItem
      Caption = 'Settings...'
    end
    object PrintSetup1: TMenuItem
      Caption = 'Check Updates...'
    end
    object About1: TMenuItem
      Caption = 'About...'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
  object ImageCollection1: TImageCollection
    Images = <
      item
        Name = 'database'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
              B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
              BDA793000000097048597300002986000029860122ECDF8C0000001974455874
              536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000003
              8E4944415478DAEDDCB16E5B551CC7F15FD2548A4A54269AA442B44848A8034B
              930C646366E90320AA4C7D812C19F0E00C59FC0E56241EA00B331B0C89B3560C
              91688392A49D4005554A8359AE2A885045A87D7CEFF5E7B378A91AFB9CAFFF37
              27B6EECC70380CFC5FB3960001212004848040400808013115E626F9C3373ABD
              5B49D692AC2659A91E976DCB5B9D24D94F32A81EF7FADDCDE7937A323393F84B
              F446A73797642BC93749AE6BE29D9C27D94EB2D3EF6EBE6E7D401B9DDEBD24BB
              D5E46174F6923CEC77379FB4F677A08D4EEFEB2407E2198BB52407D51AB76F02
              5593E720C9BCBD1EAB5749EE979A44B385E299AB2E5BE219BFF924BBD59AB7E6
              12B6E5B255FC72B6D58A4B587554FFC5696B22A7B30FC77DC49F2DF46E104F79
              D74B4CFD1201ADDACB89596D43402BF6716256DA109009D4E20954E2A877A5CF
              B6AE5D9BCDDDDB8BB9B3B4989B0B372490E4B7977FE4E9E9597E3E3ECBC5C59F
              635BFBBA067425776F2FE6B34F3E56CDDFDC5CB8F1664D0E8F4E6AF5DC6AF775
              8E3B4B8B8A69D0DACCD6F1DD4673D6C617CA101002424008080484801010D361
              6EDA5EF0B78FBF1BEBFFFFD5832F4D20101002424008089CC2A6F69464022120
              0404024240080801818010100242404CB1DA7D16F6F8FB1FEC8A098480404008
              0801E11456CC832FD6ED4A834EA9261002424008080181801010024240202004
              448DB947E288B94722080801212004044E61D37C4A3281101002020121200484
              8040400808012120A6987B246202212004848040404CF529CC3D129B754A3581
              10100242400808048480101002020121206ACC3D1247CC3D1241400808012120
              700A9BE6539209848010100808012120040402A29501FDFAF277BBD2A0B5A95D
              40CF4E5F28A5416B53BB8F329E1E9F25493E5AFA20EF2FBCA79A6AF23C3B7DF1
              666DA62DA09324CBFFF51FBFBEB8C8E1D1710E8F8E95339AB56FFC256CDF3E4E
              CC7E1B021AD8C78919B4212013C8047A277B49CEED6571E7D5DA373BA07E77F3
              79926DFB59DC76B5F68D9F4049B253E2DDC03FA6FE4E891F34331C0E8BBCA28D
              4EEF5E928324F3F677AC5E25B9DFEF6E3E29F1C38AFD25BA7A418FAA17C8F8E2
              79542A9EA213E8D224DA4DB266BF477ED97A58329EA213E8D2245A4FD2713A1B
              D969AB9364BD743C13994097A6D1AD6A12AD2659A91E9735F1562749F6930CAA
              C7BD12A7AD5A06F46F3E5DF9FC4A4FE8A7C18F334DAEA1E9AFD717CA10109353
              BB4B18261002020121200444ABFD052122D3C3BA3E61940000000049454E44AE
              426082}
          end>
      end
      item
        Name = 'combo_chart'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
              B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
              BDA793000000097048597300002986000029860122ECDF8C0000001974455874
              536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000006
              5E4944415478DAED9D416C145518C7FFDF74664B295A092AC4268693518B9820
              2440956EB785A64B03B0A6DBE8C99218D418132E2AD1830907021E3C6822AAA1
              47C36EBA0DA4DD0D0874DB481B439BA84ABC7020D112041540B7D0763B9F07AA
              2151D376E7EDEEECEEFF776C3AEFCD7BF39BEFBD6FE69B56541584E48AC52920
              1488502042810805228402110A442810A14084502042810805221488100A4428
              10A140840211020036A7A0BC0846FA37895A2D2AB201C0FAB91F8F89EA7915F7
              4C3AD1316AB23F61496B79B0357ABA6E263BFD0180EE797EB5C7B103FBBE8CB5
              DEA4400400107A3ED5E8AA1E0350BFC043262C91AEB3BDEDE72810234FDD4C76
              FAC222E4F94722C70E34788D44DC44973873CB567D0E87D6CF1DCB0854C91B66
              C01AF1D68ABBD9CBC69A595891B3985C696B3B558BA5D67B10AF11C46A01309A
              FBF18C4045CD6216CBE668BCC6995DF69AA8BE09E0610379D48974A27D27052A
              D12C66A13477A797B83726F78AE06D00ABCCB52C97D389F67A0A54A259CC7C84
              C3A9EADBD5785905FB017DC47C0FDE04AAF82CCC631693688DF4ADC8C779AD89
              C603C1DDA9572797E84515FD303FF20000C6BC1C5CD19BE8B92CA6DB4313A12C
              AAAF0523C9EF01A4456570CAB18647626DBFE7DAE0FABDE3CEB2AB57BA1F44ED
              3B107D34DF7320AAE72990870C44C57B3300D60258ABA26F04B2B36E3092FC4E
              55D2B0DC41CB9D191EECDB7563DE2CCFD571B550BD0C781122AB0B35072AEE19
              8F026A0547A0D4714077E4B91B17906F447544058F0368F5D114F4A413E13D8C
              40B9DF7FC102746201BA4E05EB7C36F809C70EECF3DA48450A148DC6AB7EC9D6
              7E24C0FD157AE74C58225D2632C88A5BC2DADA4ED5DEA9CD1E13607B85CAC372
              8E5C698E26576916FD009E29D3215E5368DC52EB37153C8D02BC8AA99825AC29
              32F0844092005697E1F0AE0AF4FD40C6F9F8E4C96D9942765C11028522A92681
              F401585E6643BB02E0F09F59F793B1131D93C53881B21728B83BF902043D00AA
              CB67547259550FCF38994F47629DB78B7926C605F25339445364E02D11390840
              CAC49C9F45E5101EA8F93CDD13BCE30B954D6DA2FD540E714F9AFE4A1E9A4F0B
              E4A2C2DD04C8930592F327A81C5C3A85A3C964FB94AF62A10981FC540E61304D
              7701DC04E4F6FF45D02DD1D443F68C6E99B534282A4D00D618174AF5F8AFCE64
              F48758E7B42F1753AF02F9A91CC2609A7E5D05BB867AC3C38B39A835D2B7222B
              CE1651AB49812080A7E0B9E2C15BC9A9EF050A46924717B06CFD77E7C0C0353B
              13317177194CD32F29343C94D8FEA3D7737AAE6360795540E2005A726CC2F3BB
              2A5F0B64A6A81B53808C0218B654866FCD6647179B928622A926176A224D1F17
              1B1D83B1F0155313ECF782B5A20AD4BC3BF9AE0A0E183EA71940C60418762D19
              0E58F6B97B27F1DF599ED600A8F3BA542830B0246377E5E3415C2994CC162902
              15A81C42F1AD58F85A158F010899EE4081232BEDCCEBB158E76CBE06512A45FB
              851668228FA596854015BA7F28B1FD50A13A2C95CF8628D0FC4C43F152BA2FFC
              0548CE782DAA1F2BD1715FB720DB284F9105F25A905D242E29B4F16CA27D8897
              BFC802792DC82E02E362639389673CC48040731BBE9E92D82D0303D519BBC9E4
              331E62E0C3C2B9C2EC099FCB7364A59DD959E862AB4AA0582F530BC9AD74225C
              579617EFCC0523A514DAD290F30B60239F369FED6D3FE7D88186052E67FD1039
              00C569000528869234E344FE30565036F7E4744F30D2FFD9421F94AD89C6032B
              666B375A404815CD00360208180EB1E779997DBE84996273345E53ED2E6D5495
              10EE0AB5014095B756FD5D0E51EA4B98AF3FEB7976E789FB6CDBE985EAD61C9B
              F07D3904F74079E4ABE33BFE70AA9CCE1CB33C239FEE921216E8EFBD9525D2B5
              48898C7DBA4B4A5CA01CB2BC1EC70E3494422D0D37D145A0DCCA21B88926DC44
              1342814851A8ECBF91E883258011887009238402110A442810A1408450204281
              0805221488100A44F206FF6B731EA984776D8C408402110A442810A140841432
              0B63451F6104221488502042810805228402110A442810A1408450204281888F
              F1754522DFB53102110A4408052214885020428108A1408402110A442810A140
              84502042810805221488100A442810A140840211428108052214885020422810
              A1408402110A44080522148814155155CE0261042214885020428108A1408402
              110A442810211488502042810805228402110A442810A140845020E28DBF001A
              BCFD21A33DCEE40000000049454E44AE426082}
          end>
      end
      item
        Name = 'conference_call'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
              B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
              BDA793000000097048597300002986000029860122ECDF8C0000001974455874
              536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000006
              094944415478DAED9CCD6B1D551887F3D5165AAA0AA505B2B105135C9602DDB9
              336DAD0D462D88B169B546DA520B225512140A144DEBAE6B21D04AA2DD585053
              31841637414037825C90FE075248A060BCE41EDF77EEB921A6C9EDFD9A33EF99
              79806773331FE7FCCE9399F331335DCEB92E8056210440204020402040200004
              0204020402040240204020402040200004020402040204024020402040204020
              40200004020402040204024020402040204020000402040204B2CB0FC79F7573
              AF8CBABB27A68505A1242C7B4AFEB7E9641BDD96CC1028E1EEF06B22C63DA12C
              B8062957F7917D11A8A095FF71F8459160B10969B662313916021584DB277BA5
              D16F74409C8DDC488E8D403966FEE4D372DBF92905793C726C3D0702E5549EB9
              137FA4278F47CF5120890A74DB4AF3CAB3C995A820B7B3828CB452E9F33CB94F
              8440B9196DB94C28C0E8AC08579FC5CC04D2732350F493842E5BF23DD998F7AB
              CFBDEC0592322050A46B5BCD2D4FA44539CF6B67F915A8BA30EA4CA06541A0E8
              6E5FD36604D2B2205087B9D2D5E7BE1D3CE766067F7533030F8515A1E259A9FE
              267FD36D74DBE6055A3024D082B97CA21568FAB967DCECF3DFBBD98155C135C8
              6AB28FEEDBB84025430295CCE513A540B303536E76B0DC44301B48F69D6A50A0
              6543022D9BCB272E81BA7AA462F75B0FE631EE27C7CC8D4019E4138F4049380F
              3A184E8D0775438AE61696513ED108D4D9FFAC4DFED322EF4467954F140225F7
              F4D4C2A93115ED303ECB7CCC0B948C26DAE91036D171DC6CF4617D2231EB7CCC
              0B541D8ABA30C8B9625BCAC83A1FD302E9C45673F318EDB2BAE9649AD5C5542B
              F99815486747C3855345CF19CBE31C56F2312B904EB1870E48CF19CB036596F2
              B129D0C0C3F001C9396379A4D5523E46055AC920A095681EAAB7968F41812A19
              045489E6B51E6BF920500301597AB1108122BB85597BB5995B58449D688B1F57
              A0131DD130DEE2E75D18C647329168F503534C2446B29461F513772C6544B098
              6A1D16538D3FCE611D1EE730FE40591457211E28B3FB486B3C12F148ABC987EA
              A38187EA6DBED6139F44BCD693C717E7C8A7A8AF36C70AAF36E7EBE301E4C357
              5A0181C271E6B32FBB85A7847EE1054FBFFFAD9B8C10A826CA1E615898106E09
              BF0B4B4245705B50F1DBE8B65FFB7DF5187B10A838D28C0B3F0BE53AA2344BD9
              1F73BC6832214DE729944C7916E7A03017489A7A3269190E22503CE2EC13BE12
              5633146723ABBE4CFB10A84D5E7AEBBD5EA15F382CBC2E5C12AE0B33C22F9E19
              FFDB25BFCD61BF4F6F1D71B60B977D27D71965C997717BE87CA216482AB64318
              11BE111E09AE451EF963E8B176AC934747427F191667235AD6E150F944299054
              609BF0B27053586A2394ADD063DE1AFDE4EA9D88C4F91F5A76AD438AF9DCF46D
              B02D1A81A4B07DC287C2DF2984B2C6D0DBEFBB373FBAE26295A786D641EB9266
              56BE2DB44DFA4C0B24051C12FE4C390C7774ECBCFEF7462FCFBA2B5152A7B473
              F36D33644E2029D401E14E8000DCF1772EBA53935FE4469E1A5A27AD5B880C7D
              5B1D30219014E4ACF04F1079DEBDE84E7F7A2D77F2D4D0BA691D0349A46D7636
              3381E4E43D7E2819A4C2C74E5F70639353B995A786D651EB1A2A57DF863D4105
              9213EE12BE0B55C9A363E7DCA989CF732FCFDAED4CEAAA750E2891B6E5AE2002
              C989F60ABF85AADC1119A1E4A9C3DC4CC7FA48FAA3B3F5689BEE4D552039C1EE
              90F2287918AAB733C40F99B56FDBDDA908E42706E74356E8D5F3970B2B4F0DCD
              20B044F3CD4C3C362A4FB75F7F09569163672EC8A8E47AE105D20C348BC01269
              5B777752A0C99015181A1D77A31F5F2DBC3C6BFD21C94233092CD16447049203
              1D12FE0D59F8116E5D8F3112FE56A66D7EA82D81E4003B8552C882EBC8A308F3
              3DADCC0F051E9539DFF63BDB11E85AE002BB373E9840982DD06C42B7873AD092
              40B2E3FE504B14EBA1E35CBF439D8140EAC0FE5604BA9D416111E50964D126EA
              422B02390442A01A088440080408844008844008844008844008844008844008
              84400884409D1708800F4C010201020102012010201020102010000201020102
              0102010201201020102010201000020102010201020120102010201020100002
              01020102010241E1F90F93FE23ADDFC52E6A0000000049454E44AE426082}
          end>
      end
      item
        Name = 'settings'
        SourceImages = <
          item
            Image.Data = {
              89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2
              B80000000473424954080808087C08648800000006624B474400FF00FF00FFA0
              BDA793000000097048597300002986000029860122ECDF8C0000001974455874
              536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000009
              C74944415478DAED9D61908D5518C777832D2CDBEC6D8A10766A279890999029
              3B30102999D5280691FA805522982618A53145D330540C4D7D486A9B10B40355
              9A8154A6C298D018015A16AC757BCE7596BB7BF7DEFB9EF73CE77DEF7DCFFFC3
              EF8BD9733DF73EBFDD7BDE739EF39C8C70389C01805BF0210008042010804000
              020100815294151923897F88B04BCE132F43203BE5A9459CD590A7922F21909D
              02DDC3208F600704B253A00E4C021D8640760AD48F49A02B442604B24FA0D14C
              02097221907D02CD6014A82D04B24FA00F1805EA0581EC13680DA340C321907D
              02FDC428D01408945EC96F43748C2C06BA1B5F8738CA28D0628DF7D290184474
              8340DEC8F36E54E20E111388060EC7D6278A98E5A9E433A2A9C2FB6849BC4794
              CAF1D788C110C8AC3C8FC649DE39623ED12CCEB84C621271DA8038D15C20A611
              5909DE435762B514A6FAF8638E7F192090B23CB711BB9224B09CF894E81435AE
              09B1D9B038D539480C888AA1365118D9F6483E761E043223D00B8A49DC464C26
              4E792C4F34EB89A991ED0EE7632E13791088579E46C4BF3E8AE035C5108857A0
              0516C9A3BD380961AACA934F5CB550A07D91B91304D21668BD85F254320102E9
              C9F384C5F28465C5640802B993A72EB1DF7281044B20903B81267B9C28B18654
              2257AA0BE4DC2B5B922FFFAD48FE4CB987715510ED21907ABD72A9470912FFCF
              4C224721BE1C39C6AB18B742203581967B9498656EE618517186E46B78116B21
              04729694FB88EB8693219605C632C63CD683A586DD10C859327A7B204F0F0371
              F7302CD12108941A5F61630DC63DD6A0F40321905A32C61117D9E73CE6E3E69E
              13EDAF525D00819492D19AD8CBF8B415F220E610E3D3D97237F54110A76A42B2
              88450CC998E961CC33356315057243B199CA9B94FEC4098D45C21C0F63CDD158
              6CFC816881720E730B8C1B5D24A5C487584B14631425AEB35C1F1480408E1393
              E942A0221FE22C528C71034E6578971C55810A7C88B14031C69D10287505CAF7
              A910CE97363110845FA06C1F62CC568CB10C0279979C32080481749273185F61
              104827393B318986403AC9D910C0C7F88D10C89BD6BCB3E29C2B4FF785C40AB9
              6583B3F18612D2422EF3077D2B43CCEFFA4220DE840C951B8CB66CA60A3E715B
              3D00616E25A2016371593A96739C248641207789E864E05C583A169409D611CD
              2190F3240C34585F9C8E25AD9517BBF48040CE12710845F5EE0BEB219038C282
              633D35B11602394B48210E16C620CECA758640CE93B315479BABB01293683581
              DACBD559DB9B2B544EA09B4020758996A0BD4B84A95807723FC7386BB93C0713
              F69D4E37818E3D95D19018400CD2204F41A209960BF4646056A229F10F10E788
              B02615C44B0E05AA2D1B4EDA28CFC640ED8551D21730C853C94185BF42BD2C94
              A73C72B43B6002AD6514E81A719B8244C59609B43070E51C94F0DF180512DCA5
              20509EBC0640A5AE666A0AB409DE44BC411C57DC85CF09A240FF310BD456F1A9
              6C9EA37BDC6FAC64D78E1A37403ECD78298EB8CDF9959B373ADF68123192F8D5
              C1D817035750269FBEC2CCF45014A881BC12A9A673E5AB23572925EEF2314D5E
              C9645A9E1D917BE913CFE9D6C769E5B72772335100056A6B40A0675DAC0D0D8E
              AA892E9517D0B55418DF545E0E67429C6F89EE8AFD8F961297E4F833449740D6
              4453B2FB191068A2CB05C66EF29AC8861A8B948B99E579532396DCC8462953C5
              64AA0A34CE8040F37C5CE59EC22CD08854C955AA0A34D780401FFB28D0706681
              7A43A0C402AD3220D0373E0AC4BD38D90E02251668AB0181FE201A68C4F430B1
              90788BA8AF28505B6681428113883ED4BEC445E22AB19278C8659256CBFDABB0
              014E11D3C53281424CDD88F5D55E673B91A93871E52C91CD0C9440F461DE1D67
              E16FB3142B33C9F8AEC40643D2D4C45962065127414C3D892D095E63B462ABBC
              2B4C021D49A56F0B2E81562449D8EFC42822ABDAB82CB9697ADD4379A2D94DB4
              AE1693281FD9E160EC0942A534F53093403F074A20FA103B2B08705CFEE6E78A
              AF3803FB5D6EB824D6888821C42F8A63172A08B48349A0AF022390D8E12676BA
              485A19712505E4D1A5DCF11E9B2854E711687E90041A130009742951D84AD8A5
              79D446740CB9371002D10777277112024518626B2DB98E40EF439C9B1C21EA41
              20E7F2B493557E90E716B321907381B64098182E13AD205072790A214B5C8A21
              506279EA1347214A42FA40206FCB2C54D65C4A8822A280C827B225F9F2DF8AE4
              CF94FB18E75F445D08142B4F9EFC9EF73A21A5C44C956D03F1B3724CA94F12BD
              06816293B2C687442C23421A4B0D21F91A5EC77D1802C526C3CBDF665112C2D6
              D54BBC967C4DAFE2BF40D48240FA7B5E6EE561EF2B285ED34389C6E02F506C02
              EE27F67BF0E11BEB6C2AFF12998C5D6CED0CC45358E2C7F88F4CCE793C289735
              3527DA4434C63A90B32488DA9933069EB6421E0814629ECF89B29457954A5CB1
              991A494433E6E277CFEE97908FF81C31FF4974B0B9B31B4741D9748685BB72A5
              F2507D817218625E6AEB0EBC899AE847441327E34559BC1295683CA23F8DBE92
              FCC77AB235F6C98A7C10A8C865AC07208EA18385B2B0CA4D520A7C10A8C065AC
              A7218E39812EB84C4ABE0F02E56BB4CBCB843CFC5F617534E640D93E0894AD11
              6F23C8C32F502E0482403A09B95D2321F80AC31C2892944B984443209DA41CC3
              633C04D249CA010B1612CF9B2837B17D255A6C50165BB49521E641E321104F77
              8E9E1A5F5DE9BE99FAA14D05F4DCBBF1758977187BFBA46B39C7F7A2C1160452
              7F04DE8D82B22A67E33B4220E72D5DCA50D21A83E80F590881E27FF88D882F50
              549F943910C8FF7361E97EAC672404AA9A805A3E9D4A4DD783859F43A0D8646C
              F3E998703A1E6D9E04816AEEE5EC573BDE746AAEF037710704AA59A29568DF92
              94C19844C717A8B18F5F0BE9C077788C4F2ED16488A2D933DA7281EAC8264A90
              C66DD77A6C6564F48130314D157220909A44C510C7BE762E9C02B5F2697131D5
              D8258E7843207712CD814009EE8F87404905AA6779DBDF55A848D4DFA854693C
              5E21AFB4EC22C79D4E0109F610ED89E715EF0B13B5D14D2010CF6E77B2AB0FC4
              91E745D5AF02900B936B7D1247C8FC76F5925459F6B1CEC1B6CD14D444F30914
              EFF215512BFDBAB81A2AC9F8E73CEABF58C98FC46349626A23DBF9D5F4A070C0
              F65A681327532746DDB6BC9718A1F221CB929161F27A6E53E288DB971F577C5F
              E242E1D9F2C6E7B0BC5CB82BE431732E2CAFFA25B62EBB9EED3120CF2C860786
              F63636D2F44C204611BF3620D02824DC1E814C5411F647C2ED11C8C402652724
              DC1E81C61B10A839126E8F40266E45CC42C2ED11A83BB33CE7906CBB047A90FB
              164124DB2E81729905DA8E64DB255026F3D19CD548B645024989F6310A3417C9
              B64FA067988E10898DCFA648B6650249891ACAFD27B7B4B3B9DCD47A81000402
              10080008040CF13FF62171AEFE673C190000000049454E44AE426082}
          end>
      end>
    Left = 535
    Top = 224
  end
  object VirtualImageList1: TVirtualImageList
    AutoFill = True
    DisabledGrayscale = False
    DisabledSuffix = '_Disabled'
    Images = <
      item
        CollectionIndex = 0
        CollectionName = 'database'
        Disabled = False
        Name = 'database'
      end
      item
        CollectionIndex = 1
        CollectionName = 'combo_chart'
        Disabled = False
        Name = 'combo_chart'
      end
      item
        CollectionIndex = 2
        CollectionName = 'conference_call'
        Disabled = False
        Name = 'conference_call'
      end
      item
        CollectionIndex = 3
        CollectionName = 'settings'
        Disabled = False
        Name = 'settings'
      end>
    ImageCollection = ImageCollection1
    Width = 24
    Height = 24
    Left = 651
    Top = 227
  end
  object scGPImageCollection1: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000023D0000010908060000007F9296
          27000000097048597300002E2300002E230178A53F7600000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB00006CC24944415478DAED9D05B82C
          C599B0ABAFC0BD5C24101CC20E215812E2EEEEEEEEEE9ED57F7DA3BB1B77978D
          BBBBBB2341134E082458428040F0F39F97E92FA76F9FAAEEEA9AEEAEAA99EF7D
          9E79E69C99E999EAEAEAAAAF3E2D9697978DA22C32471C7144EC262853B65B79
          5C61E5C1A454AC3C2E5D799C16BB51A972D86187C56E82A26447A1428FB2E8A8
          D09304EB561E87AC3C36D75E3F61E57176ECC6A5880A3D8AD29DE217BFF845EC
          362899738D6B5C23761366E2F0C30F8FDD04C598DD571E57B2BCFE9795C7312B
          8FCB6237303572BFEF142506C5CF7FFEF3D86D5032E79AD7BC66EC26CC840AFE
          D1D9B0F2B8EACA63A3E3FDDFAD3C7E1FBB9111D879E5B197999AFB7860EEFBCD
          CAE3A21E7F030D1B026751F91D799CB5F2B8C4715C513EABA9408942E8BA53FC
          EC673F8BDD762573AE75AD6BC56EC24CA8E01F1D849E43571EDB38DE3FD90CE7
          DBC3E2FD37651B449B74C6CAE3DCC87D82308220B86DED7504915FF7F83B0855
          7B3BDEFBC3CA63C9D2AE03CCF45A15E5671651209D95F52B8F9DCCAAB0F927A3
          DACC4E84AE3B2AF42833A3428FD203BB9AA9F051E7BC95C7B166388D82CDAC76
          C1CAE378335D84E477ABBF5F6FCB106DDB67E5B1A7E5757E0B73DFF93DFC0682
          0BC2E606C7FBFCD62FCBFE10F62CDB56FD0CD7E7BC01FA609E61CCED5EF97F48
          C1BECE15CD3468002E1AF1777B2558E8F9E94F7F1ABBEDCA0273ED6B5F3B7613
          8C0AFE49C08EF7C095C70EB5D78F33C3695D3699E9A2BFCEF21E669D8B2B6D5B
          AE3C0B5581A830CD0292ED33CB96CF2C97EDD9B9A1DD7D697BD0D85CA1E533D5
          DF4248BA9AA5BFD052FCAA87F62C0A38EBE3B45FED474C97A79A6104E8EA5863
          0CEE6B56CD9380807F4EEC4EE94AE8DA51FCE4273F89DD766581B9CE75AE13BB
          094605FF64408BC062FFC7F27F16823307FCBDFD571EBB38DEE3B78F2D9FAB0B
          4451792E6AFF9B96D7DA3E5BFD1FE16F4747DB4EACF45128BB94E7EF832C8A98
          640E32AB5A0261517DAE4271693519EB7D68F0AA2058550529EEB1BAEF1C9A3C
          B48797C6EE982E84AE1DC58F7FFCE3D86D571698EB5EF7BAB19B6054F04F0271
          6646ABF0E7917E73B795C77E8EF7881A3BDAC473D4656142ABB2BEF63A5AAFE3
          7AF87EB46A3B7A7E16D3D531E5DF5BCC544B21A0113B3C623FE508822D1AC66A
          7A86BEAE6B1B8CF7DD6AAF9D5FFE7656424FE8DA51FCE8473F8ADD766581B9DE
          F5AE17BB094605FF24C0C781057E69C4DFC45C7375B3B5260758C05904C612BE
          5CE0642C915592AC91765D30CB9796A051BBB2E767EBFE2698C4445B8046EAAC
          F2A1F8831373D5378AA8BC31FCA26C264A9BC37AF284AE1D2AF4285151A14731
          D30825340F68132E99F1BBBA30297F1B734D7511387DE5F1DBD89D52224EC6E2
          0FD467FF60AADAA1E533087EC736BC8FF083A9060D9D461FE5018ECC5BCABF2F
          2CFF46F0C92A0968B0D0F3C31FFE3076DB9505E6FAD7BF7EEC261815FCA383C0
          C3E23AA65F088B3DDA2516741C9AD132894605FF954558C011F60E3676476EF0
          8DCCC25C8206E194D827A404C1F847EB84E09A8D993274ED287EF0831FC46EBB
          B2C0DCE0063788DD04A3827F543095207C1C65C61334106CF01FC20177D1CD32
          68697675BCE76BF690C83BFA33B649304518E37B947F33C671441F4BA389402B
          7E61971AF73DB657F9FEE991FAA833A16B47F1FDEF7F3F76DB95A98ABDA83D70
          2ECB46EA0EE58637BC61EC261815FCA3C13847D340A8EE9F46FC5D76B5A8F4C7
          701C4D1D9C991158D06E61EA90F987B907CD8DEFE24C7FB2B0F79938711EC0FC
          77A8D93A628A282D5FF3E92C6B00C2CE55CC549303AC29C73BBE13332A3E5EF8
          165D18B1BFBC095D3B8AEF7DEF7BB1DBBEE8103ACA6EAB1AAE0A27996966D8B9
          E64637BA51EC26AC413702A381932E0E9DC78FF89B986110B410789A26773179
          91BCED628FEF852DE5F9701CCEC64D651CAA70DF4B240F6D1A338A865C3DDBAF
          3CA8BA3BABA66DDFF2BC874C33901BAE249308996DD779D6521F8CE17A015F84
          2D973687B508B3EF6FC6EFA6EE84AE1D2AF4C485C9915DC0B696F7986C71ECF4
          9D70639FC77E66D52F625DF9CCEEFDD4A60355E8595864074C52BB31B3F9B2F3
          C504E31A972C1498DB98FC19C3082D987930DD340905FB94C7CA62C6DFDB9B76
          930F42126520AA19725994C6C892BB53D91F5C833E346D5C5372FF64A32D1801
          5B4E1EC614BE526D737B61C2E158520BD44BBB20949265DB2548D156C67BF266
          CA60A1E7BBDFFD6EECB62F324C767B35BC9F4B28A1EB3CB8B1C875F217D78137
          BEF18D63B77D0DBA111805B402A8D49746FC4DC2B4114E98F46D020C423B0BC5
          26CB7B685D4F727C2F8EBC084975D30E820C9B01840ADB02C7EFE05B645BDCE8
          973F0CD8179C2BA1CBE7997EB32967A52D1809348BDB57FE1F4B8B5F2F750108
          FB4D0EE78C59EE91134CE2EE15A16B47F19DEF7C2776DB1715247026BCF52D9F
          63222594B06B4657D77BBE0F58577976BD073B197704086D3FC1757237B9C94D
          46EEF67674233038A8DC31AB8C19A2CEF844A041BDEF2A6B814FCABE8EF71092
          70B6BEC8F2BDF8C42C19BB76830D018B872D32ADC98998EF7209677D200BE291
          A67FAD0CE785692FBBD2060381261FD327E380EB3966683882AD08F18C5DC6FE
          52CB31083D5216235942D78EE2DBDFFE76ECB62F2A5DD2C0B34BACEF06DBFEAF
          BEDE54EFC7187B0D20B8AC769CEDC1AECE55B050E8236D7E9D6D6E7AD39B5E34
          FBD7AC45370283437E18D4E7BF1BF137116630BF9CD8F099A6B21460AB03C682
          8636C7E59784A3F0151DBF8B10B6C5711CF71642D6106622164116C3A1CA47A0
          2DA0BFD9EC2C42E8BF0FDB995513A66C2287867583F1BAB1F23F822E0ECD4D51
          8B6CC42766AAAD1B336F562756E6FFA0E38A6F7DEB5BB1DBBEA830F0F169D8D4
          F019263C54A16D450A4DC7CFB4BDE70BC20E196DDBB455DC64C704FE86939BDD
          EC667D7EDD5FD18DC0A048265AC6C3580B22A6852B97BFD92428B350EFD1F03E
          9A97BAA9967B00AD955465AF2389E06CA6B1A6829F2C364799FE171D89982BCC
          00F764853DCBEFCEB28277CFF86AF587A0BEE114BF2B2C084D630B5330027BB2
          66CAD0F9BFF8E637BF19BBED8B8C3812BA5832C3DAF567655DD9FEB6ACAEDC38
          BD4774DCFCE6371FE4A474233018B2E0A25D1853C58F660947DDB61C24ECC40F
          31F65D38BE2F389FDA84842B97E763BB570F2C7FD776BE4DA520B85F86587044
          C33C7465ED75E5B9614E5C74A766D1201E3B625F308619F7085A9830AB916268
          7BD050B685CD33B723B49E6B122474FE57A1A71F909E1160EAA61F9FCCAE2EBB
          7EB5C85FCA342D14C04D7EE4103FAC424F76B0FB67F738667E1C9C8C77EEF09B
          686624858440C40B3B6397433E3B7916360415CC069795AFA1D1C2A47072C3EF
          D99C4DCF297FAFEFD07516C0AB97DF7FE28CDFE5035AAC5DCC62E7EE913C4808
          0F27CFF85D5D914D75DD8CC9D866BCE2B3D354D51DDF3BEED92593A05373B0D0
          F38D6F7C2376DBE70197E0B264DA35354C8E13331D884C96E2ECC6049A8B23A0
          6DE216381F26BDDE93CFDDE216B718E464742330086C0C50F1E3E7315688BAFC
          26D1495D427011E41194305D21E8700FB7092098A9715A46B0582E9FD921FBF8
          2DB1304A3000C79C65865964F03D42A82327CF58BE1A1333BDF7C74C3E991268
          36111E3055C6483F82D0C3F862E35935ED62F265CE6E134899DBB90792CBBD14
          3AFF175FFFFAD763B73D7718500C2C9BA6032D0721DBD609F396B7BC65ECB69B
          9E845E267854A9A84CEB9A2E6E34FC247ABFE987EA3FDD080C020B2E6362CC42
          9EEC662F19F937D9C420BC30EE5372E265913BD83427A71B02044FAEFD921937
          E9620A488E9E41CCFB9E301E45BB578FA2A56DE7B5B44D7CD6D00C0E1238124A
          E8FC5F7CED6B5F8BDDF69C9130D8CD0D9F41AD68DDEDDDEA56B78ADD7ED3A3D0
          BBBEEC8FAAD0C3A48F3048A40837DD49C1DF6E61A8FED38D40EFA039C1BFC3B9
          011800167916DB311DA65386798AFB936B30B6A9824D0FC2CFD8E69D98202C30
          EFB1F18DEDA6209A78DA51D5B2724D107CD0F634DD23680759E392BA7EA1F37F
          F1D5AF7E3576DB7386847C7BB77CC699A0EFD6B7BE75ECF69B91845EA2579874
          71E4EB2DD3E750FDA71B81DEE1DA63B2192B9287C51DB3D629460B8A82E41FB2
          459F8D011B1FB405F890249FE9B7272461AB2DCDC1D848224AB49E75A1179F37
          B441A7B47C079B163484C95CBFD0F9BF585EEE47E85F50E1C947E881E36F739B
          DB24E99F33E2759B98A9F0D39402BD132B7D9A7B9F2C02987F25447D2C0D038B
          3C3E325A5074D5BC815F52CCF063EE7D16D8A5D81D320298F9113288D8EB33DB
          F52CA0AD9998B5D9A02502172D4E9353339AD33DCBF349C2A93974FE57A16736
          90A0D9516ED3F01972249C38D4023D2B235E37D4BD8799E98EA2179F02157A92
          871D3EB9A89850C712FA5970889641E049CA072112F8352100E2C81A3BD11C66
          16CC3D63FA14C580F18790409FA7523B51EE45D62A1CD9AB66665FA766B4855C
          BF240A6147177ABEF295AFC4EE83581092393176476651275E74DBDBDE36763B
          ADAC5C37ECBA9799D5C8B12161B7819F852D9D7F6786EAD3051ECB7D8326144D
          CFB123FE260B0E269CA4FC0F2241FE2C020C86C8881E82F89010C945B41B7326
          8B2F7E8F63690FF02F93C2C8179AFEF3E6489FC70851F76D9BADFE16022966B8
          A6283B36AEE2981D5B800E9EFF7B137ABEFCE52FC7EE83588806C3567BEAAFAA
          C4DBDDEE76B1DB6925D275E3C69BD9F430549F2EF058EE13EE0BB4A024C11BCB
          8F843073CCCDBD99503386F908B3167D7FFC8CDFD52792B7A6CA921927096BBD
          C06BDF99E2459BC2D867639762B49AA45739DA6C6DCE925C5327B4B49B633155
          9E519E2FC24F94E493A1F37F6F42CF97BEF4A518E79D020C14760FECA4AA4539
          A5C8E0E55EF1B7BFFDED63B7D34AA4EB765D33BDB966CACA3B549F2EF058EE13
          768EDC0363ED7659E409C966079BA4FFDCC888F3727D718B8DADA82B26204C41
          4347D94DCC54DB5C85F1D257614D4C448CFB54346B36C4C70B87E4FAC6936BB3
          C1B43B351F66565D3A107A101C47177C42E7FFDE849E2F7EF18B639F730AC8AE
          A51E0AB8863BDCE10EB1DB6A25D275C3EC8153E34C13DD507DBAA063B94FD809
          12AD33E66E17B32913F62267FF15F06B626173A6CB88084EED7B5A5E47F01093
          896C1C4DC37397D700A17867CBEFF695F91ED31D7D8E8039A6393704892CAB97
          22914CCD8C990B1CC7DA32968BC3F6A8DAD5D0F9BF37A1E70B5FF8C298E79B02
          A2CAE4A6698D8AB8E31DEF18BBBD56225D37FA8E09829B253877CF507DBA8063
          B96FD0B8E01B3056883A9A562250DA0A8A2E0A988F31E58CA13DE98A844F6FAC
          BCC638114D416821659F42CC94C5D8A7D69EBE42CA25174EAF69390642523A48
          3A95EA1861238F09CBB5797015C9C5397AD47B2F74FE57A1271C548148CB754F
          782B2AF4AC41EAC204ABDF55E84912264476F26326646391C79C905CAAFC08D0
          FF2C4CECBC532DFDC0BD4F00088B0F73E75819B359EC192BDB94BF3DD3A6AB02
          42371BE0A18AC40E81AB2E174CCC5410FC43C37155F8DCD2D827105DE8F9FCE7
          3F3FF639C7845D0A764D6E56AFF0BD3BDDE94EB1DB6C25F27523E1157D19A40E
          1EAA4F176C2CCFC286CADFB2DB261121F7C55809D93093A2728F9DF536052485
          069B8854F2C3A4065A66C91CDF97164CEA6BA59016A06BBBD1081E556B3742A1
          F826D9FA686256B53D1C17253D44E8FCDF9BD0F3B9CF7D6EEC738E09364D49B4
          E7C3C63BDFF9CEA9E46BD88AC8D78D49FA9A66EAECDA3977C74A9FCE639FE402
          2AF0AA432A931F8B2D0BCA0941DFD81D891063811FAB8869CAE0D7841078B849
          273FCCBC239A8F3E1DA2C702418DFBC7A6A9C154C7FD65F3092BCCEA8607A128
          4A945AE8FCDF9BD0F3D9CF7E36C679C7400AF77532CBDCE52E7789DD6E2B095C
          37CC8438D675AEFC3C549F26D027A98376EE50B3B55F86C06E77AC480E167926
          DDD4F2A1C44016309BB92217D0D8B198B2A8126A3F5374E70834F9C6E48208CA
          755F2436A4984931FF5D10F0BD83133AFFF726F47CE6339F89DD076320C533D9
          559ED8E5C0BBDEF5AEB1DB6E2591EBC602CA8D95449F26D22702DA14D95531FE
          A82515DB574326CA3A4C26279A71EA5D91680D8D2BDAD61C179BBE6123C638C9
          354791F8C508680FBCFC257B008191312D114998677D3487AE28A89C688A3AC3
          9AC1FC23420FCF630527B4123AFFF726F47CFAD39F8EDD0763804A1F5B67E7F4
          E277BBDBDD62B7DD4A22D74D26BC4E93C7507D9A489F0082C57EB5D7B09D6383
          8FB9D033496EEB780F5F9E216A5EB1204DCCAA132A0B1563A593A03CA7C838C9
          2172C8061A13B40A3BD65E3FA7E3F9302E8A8E9F074C54DB575E971C364D8B63
          4E21EA6D48EE2422B6AA1B16EE713459D5C4BBC98CB1D0F9BF37A1E7539FFA54
          EC3E181AC9BCCC2EA07394C8DDEF7EF7D8EDB792D07563D7CEE4C3EECE6B500E
          D5A789F4892DB457C077803158581EC6F335DF636DEFED54B6CFC65051434484
          D5C38DD10220002EB2FF0AD7E11A666A0ACA354711E7C0A6A72E48A36DF1355D
          761176AAA031DCCBF27ABD30679D89999AE36255AEEF135B26695EC357A92E88
          FA0884A3103AFFF726F47CF2939F8CDD074343A4119EEEBECECB5B718F7BDC23
          76FBAD2474DD24F284C5DCCB2761A83E4DA44F9888F76E789F05A1AAFAEF92CF
          64B9E1733EB950D0322180D40BED5E5E5C7780BEE0776452AE935398F010B059
          20E95EEEC29F84DA0B8C35E6DAA1FD4910B48838AC8E2DC637CEF8AE08C4A61A
          56B9228976E59C5C420F7D82463EBAD0133AFFABD0E307B64D6E8C60D59E0A3D
          5E4824041378EB6437E7420F794CF677BC47DF10A21DB3B60F0B2D2695AA00C5
          6438841333AAF73D1ADE9F87DD7608B2F82E99716A570D0D029C687B9867C7CA
          262DBE3902420F63CA3596D99CD9AA95E70E420F630AF70DCCE8F55A65D05732
          C799892EF47CE2139F88DD0743C10547E0C1761BBCA3BCE73DEF19FB3CAC2478
          DDB8F1D0FAB4E65D19AA4F13EA1316B41D2CAFA7E238C975AA4E2043F919E1F3
          85A3AEADA82FF72513F13C2D3E3E302FB120D1E77D16CD5C4418C76C32A46622
          6309A1FED7666DBF62D29A9876F3578E880F0F738BE479C28F75BBF26F84C064
          1C9943E7FFDE849E8F7FFCE3B1FB6028C857C04EF317668689F55EF7BA57ECF3
          B092E075630785EF54DDA96E0D43F569427D528F6881A11C855307ADD72E96D7
          5BEBDECD29E2BC9C5A41D1AE20C88A76A7BE1885FAE97405AD467D6E2760857E
          AD6AD0108E989B58FC8F1EB79B4643B45E3317841E9AD0F9BF37A1E7631FFB58
          EC3E1802711244CD3A93847BEF7BDF3BF6B95849F4BA216872F33566381DAA4F
          13EB13A24A44A322F94B16B1BE140B239AAF6AF83E3E444BB11B16A92FD89193
          D033779F1297303B2608CDB82E541743C6D9C44CC797CC41086898DF31FBCC6B
          9D37FCAA7628CF2FC9FC3C42E8FCDF9BD0F3D18F7E34761F0C013B2906C051B3
          7ED17DEE739FD8E76225D1EB260549B1EB3B1D6387EAD344FB44992E442C3C12
          45C6A2B388397A58789997C8BC9CB3594F9C67D1A6A0C11C4BB323B0F821C010
          1948546E3D2B3C9BAF6DCDD6B5C12409E4504EFB3111677222E6923163B9089D
          FF7B137A3EF2918FC4EE83BE91CCCBBDE425B8EF7DEF1BFB7CAC247CDDA4FF9D
          E68BA1FA34E13E511411145870FF18BB3133203E4908B23804C7145ED120624A
          C679B9AABDA18D44ED12D1549D832666EADB93BB69B18AA4C8B8D46492E03274
          FEEF4DE8F9F0873F1CBB0FFA861B12DB6D2F85FBEE77BFFBC53E1F2B895F37D1
          B4596FC2A1FA74C03E11D34C97721BEC2CB72BCF9F89D7373A8A095BCC625DB5
          0168537628DB4B5BD9852FA2462535B82E2C4C981D8E8FDD9819C14196682D82
          433AE73DEB19D960E1985CAFBACEBD87C667A9F21AB9B3B80E989A734F4C2848
          1EAC565FCA54089DFF7B137A3EF4A10FC5EE833E09CEBCECE2FEF7BF7FEC73B2
          92F875139F2A765A6B72F70CD5A703F409932A13CAA6F27F264BFCC49A348892
          81785DF9B9A2FC1E76A2279966D88512E2CDE42CC2D26F8D9F0F029A84BDCA63
          F83C8EE5A46CA0FF5388185B6418432C4E63D6371B02111A24F22E0510C098F7
          6DDA9BFDCAD7AAC2594A42DBAC888F189B9BB18A05CF4CE8FCDF9BD0F3C10F7E
          30761FF405BB5BFC497010EC2D24F1010F7840ECF3B292C175637261D24105BE
          95003A549FF6DC27686AD845D63318A37D6197E8CA2FB35FF999AAA36A51BE8E
          30E24AE048A8ED952DAFFB84766F2A8F6522AFAAF3117A2666BA0B5CC47C3829
          80F0C9BC84AF45EECECB4D02462C64DEB7696F10D2B82FD0FA8B9656EA30725F
          C736CFCD0AE7863FCF18C9207B2374FE57A1672D441330C9E3BC3CA85D330541
          2893EB7660F9BC954A3F13A107A7D39D1CEFB99C21197FECEA6DBB60343F0795
          C75D68798F10F74DC64E5B056E52339C6FECBE2244D8A0696AD33229C3C03567
          F1CDC2DFA281941D813163A1E1B79978D09EA211A9264C14FFAADF9BF11229F6
          8D24B8C489FBB7337ED7A844177A3EF0810FC4EE833E901B3295E46FCA14B92E
          33DB9B1FF8C00736BEBF328E772E7F038D4A553B235987256AC867926BAA9F05
          ECAA6C8BD8EEE531AE1D3D3BE5732C7DB1A9FC3D171CD3E40B82C0CFC467F339
          A23D08624B1EE7ADF48B64E71EAAAED9982024203CB3A94C2DE49B4D03F30CF7
          235AA8BAF6860D0CF77D553B45B4D34EE5F9E46872440BBDD96458C6A46D2E77
          D19BD0F3FEF7BF3F761FF401BB64D49B4BB11BA2AC81BC3D24649B4995FCA007
          3DA8F1FD9571CC18C08766F796AFF249DE258EA7DB38DE67ACD96AB9719EEC2A
          5DC5162766BAF8D517403181B8427FF97C9363FEFEE56FDA263FBE9B6BB06494
          3111C11973632F41151111E12DE56CC64DDA1BB422F8CA55FD5E24996ADBBD95
          2292E072C96458C6A46D2E77D19BD0F3BEF7BD2F761FCC8A38A691FB222B8977
          41101B3A938B6FE5E5353CF8C10F6E7C7F651C5FD7F3ABD8EDF9A4FF6752D9CD
          F19EAB60211A9B89599B300D5804999499606DE3D455BA02964CF3E4B677F99D
          B605C996B3A4DA26346492C6BFDA665E43A33573DA8739055F12191FD2779795
          0FAED5BEE5FB296A46BA2021EA8C95234DDA3E30DC43DB9BD51A5455307FE1F0
          FBA7DA6BDC1F396507CF3EBB74DB5CEEA278EF7BDF1BBBED29C08E5CA2844E8D
          DD18C589ECC27AC99D644192226EE3F9F9361F196051432DBEA5F63A93233B46
          57F83A1154083F55731326260473265C57C4C876651FD52B92FB5423DF58B615
          67D9AA5F0F020D5143085AB685B7AD20A8E4FEC879D11E0A9C487776BC87D083
          2F892D715E6E4848740E263A31A7D3FF4BB5F7B847C4D4284101EBCBCFF33F02
          440E3E57120998AD2BC7431EF290A0E38AF7BCE73DB1DB9E0248EA2CA8B93B09
          2E02D8D0114A86D89DEC587EFF3ACFCF33C9F9D8C29914110AB62FFF67A778BA
          69CF9FC3C4C4042CBE029BCA63DB04F36DCBDFDB5CFE066638841E9FB1BDA9FC
          5D8E43D8DA50B61F8DD4058EDF3AD4AC8D4EAB635B40DAE0BBA5FA75B59AFBA5
          651FA4AC2DF041F2C33481707C5CE6E79A6348B408F2B60D96A483A86A9CA510
          690E02AA544F47F8FC75CB67B9AF93CCFAFDD0873E34E8B8E2DDEF7E77ECB6C7
          861D3855D49958CE8DDD18A515092D45CBD2E7E4C2CDCDE2BD6DC7E36C09CDFA
          84766D2EFFC6A436D6E2C7C4C8C48E40D714C6DA149D560561E518D32D44198D
          D58E8EF7B24895DF005A45E69DED5A3EE73281E68468B3D854E692F2808D0FF3
          8C2D43B1646AFE5DE57CE47AB2213BD2242A289488F96E4D1A100B7B9B4423D3
          1EF6B087051D57BCEB5DEFAABFC60476C5F2EFA60996C93E17FB65130C5476B4
          B9EC40940192479A559FAE1052CA37322652ABC797B6E8B12AE2F4EA827B96C5
          2857FF3B34587B7B7C4E4C2639460601421D9B89A13707432021EC4B66AD2F1C
          42C3AE666BEDA568EE520EFF961075360CC1BE9129F0F0873F3CE8B8E29DEF7C
          67F57F76D1A8BD367A1C8BC0734CEC139F11265616BA3E174F6578D855E18385
          8FC805E5FFECCC9A7C5DDA90C9A02BFCBE2DBC75DEA1CF59CC36773C6EC9B447
          8AB445BD092126B35438CCE3FC845C17A89CB41F21ED9F98A975A03A9E25F162
          8A4ECDE24CCEFD85593EEB39EB118F78445827BCE31DEFA8FE2F5EE8BE2C990C
          43DD4AC44CA2CECBF98136120D433D347BD65DF1C4AC6A397D61D23BBBD2967A
          F412D42797AEEFDB7C71DA3E233985FAFCBE2A6879F6E9D85720D1224D0B609B
          6374B54DE754CEB5DAF797D53EB75CF9DBF6DA72E0678DE7DFF5D7F628FBD087
          1C9C7F6D88F634E510F5369AB437084313B3B55333E6710476E685D4EAA331E6
          B8B7B2A9AFD5C4231FF9C8A0E38AB7BFFDEDF2B73837151D8ECF59C5CCCD88BF
          40F612EF82C1F86412DAE2789FC926B49E0F1A4EA9FCAC0C037305F79C4BE8F1
          D5F254BF0FD3A2CC5BD5E7EA5C567FBFFE199FCFBAFE5E366BE74DD7EB5D4931
          73B10F4D3E31B9D1E4938460C7BC518DE29448359F5C5E63411BD12E4AAA8DEC
          79D4A31E15745C55E8690A9D6C22C714DC22E021A1A73228153F244AA2895976
          C6B21B6A83499C10F0BA56A9BED81AE35E686DEFC3BA96F75D0B7AD3FB5DDBE4
          D306044F1F5378159FE816499AD68664CEEDDB39B66879CD57282A5A3E8F16E1
          4A0DEDB8B83CBF1C3795D9874457688A76E23EC1F70CCD8908F298B5D898718D
          119452D8548B1567A8741FA3132CF4BCED6D6FE3D955A4D0072E28173627473B
          ECB4F883B485EB29698106E66AA65D13E32AEFE0836F14974FDE9B79A7CDD9B8
          0E8B812DE1A20D1699367FA11C9D63BB9C67AE6621298792AB96CA46539E2179
          4F38ADFC0C820F9177B1DD272442791EEE97BFF2E8473F3AE8B8E2AD6F7DAB38
          376D0AFA862939A5E066A29E987C6BA52C32928D784BCBE7660DF36D8B4AD264
          7BAB3485955741D041E0F175EE6CDB8871EFA2A6BFC4EFEB92056D0F7352DDD4
          C618C37939052D4157B2ACDADD82D4E5826A316A349DE2EC2CF01EA62D342B5B
          4C7C1710A9AF853376EEF7CB5F79CC631E13745CF196B7BCA52EA5869283B31D
          0317BB26EAF5B64CBA4A9A70F3A28971F94AF8260C6C638B719B25F8EE5CF28D
          0C0D9B25AE475B42C7905D7F53498D1CE69B45641E2A8FBBB0D50E732598E4FC
          D106B3DEC4D478C9062E058D53AF3CF6B18F0D3AAE78F39BDFECA346F62187F0
          51EC9A0CD22C6B8D287F45FC056CF8948650FA45C2745D8446D52150494D2F63
          56B5217C9F5EE3F440F0950D495B845EAE2088937B4836569C2B093AABDACEAA
          2F96D4DE8BE14B23A67AB485C7983CB5864E1EF7B8C7051D57BCE94D6FEA6A97
          779192A77A15266311EA5037E2548794AEBBC47CC1A7879BB91EE1B3A8397362
          C3F5E03E7369DF881849716E50FAA52999DFBC2075B9AADA1B5EAB96AF39D9AC
          D6AEC3FC45141BF7C0B123B7759E9CC9D7F0F8C73F3EE8B8E28D6F7C23CFD824
          DBFC249A48D5614D1CB8EA60739D277BF322821600A10701472A5363AFCE31D2
          4551724712DBE2E7E6EBAC5E87F91A7326C20373F3591EDFC31C802605E142B4
          806C687D16F91DCDEABA779EE731809200654135847D9D5915FAEB1A2E11064F
          37E3F901D296BDCC6AEDB6B9E3094F7842D071C51BDEF0069E43B3D142AA4E9D
          6DF95C34FA465114A51FC4C4195A924504832AE4DC22C2D6E57C8BA08386E5AC
          F2C1C687F99EF21EA71A7702BEA26C6F3D11A9EF9A20DA9B2E02056BD1F69E9F
          ED0BD666CC5A73B9B97FE2139F18745CF1FAD7BF5EFE9E98EED968215507A9B6
          7C2E5DA34914455194B588463DD4AFB369D3DDF49D44899D6DD69AD244184260
          B26DC69BF240F9564997EF58327EA6BCF5A67B4EAB59B9CCA4A78CE88D273DE9
          4941C715AF7BDDEBE46FD484E456688BC2A882048924999AC3DAFAF25CDA0659
          97BC218AA228CA5A88D6428B81736FC822DB941897B5C5166A8D791B6D8DCB4F
          669FF298D32CEFE10FE8AA6EEF9BE30B6D11DA1ED64BAA95AB1FE1C83CF9C94F
          0E3AAE78ED6B5F5BFDBF292AC646AAC9B3188848FA6DF943D82510FAAA428FA2
          284A7744A33ECB5AD0949AC0E57FC9E7D1B6B812CC626A4330AA176A1561C555
          E6049F40842C1F21669EC3F393E7294F794AD071C56B5EF39AEAFF68487046F3
          AD7B43081E36CD1485069713B3306B714A455194450767597C686689DE95B06E
          1BAE5A6D644C9F18F7FA837F1073BBCD54D52464A1FDF7AD4D957AE669AE8B44
          2E2F97E7269A2FA90D972D4F7DEA53838EAB0B3D809AB2AA2171D5A141924648
          C2F1EBCCD81DE0A0496D9AAA2F92A2284A2EA0556773C95A804626C4D501E101
          475F5B7999A6BC5B98B7D0009D66F9BE89990A623627E89DCC34B78E8D2EC21B
          6D969C3DA9F9CEB8FCA4245F10D72D6B935CB0D0F3EA57BF3AF43729CA487146
          2E76E8601F1A760368AEEA7E4AEC00E6357996A228CA9848D6DF591283B2484F
          CCAA95012D04E6B2938D5B23B1BEFC5DA2C57026BEACFC9EDDCBE39A42D0F90C
          5A2A11B4580B4E31FE263A316DCD5AF2660858EF4420AB83C03376BEA04178DA
          D39E16745CF1AA57BD2AF437AB09E25021FE36762738E0C2AF2FDB3931D35D01
          9AA9B90CE3531445191934FF0800CCB5B3A42F595F7E078B361B539F399A6376
          298F2BCADF2654DDA74C0C6B82D49CBCA043BBAB75B852A9A25EA5ADB4D45C94
          7079FAD39F1E745CF1CA57BE7296DF956CCE48E2D84143F2338C09E62E6E92E3
          6337445114658EB0652A9E57FAF0631A92A662BD7393AAE519CF7846D071C52B
          5EF18A597F5BAA2C73F14F88DD112D48583E3765F692AEA2284A4288CBC35C96
          3D28895956A20B9235BA0EE6BB936237AE0F9EF9CC67061D57FCEFFFFEEFACBF
          8DE3330E53A816091F3C6BB6AF1B1C6E4C2461C212B3F65E5F70186F755F2D29
          49A1E489ED9A0ECD228E19FC5E3007E1DF31EB8E1FF39024C143206053896929
          6581601666CD3C3D16AEBC7B385DCF856BC7B39EF5ACA0E38AFFF99FFFE9E3F7
          090FC4312C65A766015FA4C3CCD40729D5A833A51D1C18EB2546F0036097999A
          8D5D6947AA556F31EEC2A57D83B0C302BD48630621055F4C1643229B4EAE9CBB
          ADDF971B5E4778DAB53C9E3E3CAFFC1FC120E5A8DE5024220ABFD09367FCAE31
          E05EAAA69FC1E15C9413D9F3EC673F3BE8B8E2BFFFFBBFFBF87D293687A4CF60
          386DB6AF1B1C1CBDC80B81D4BB2893DD3CD11472AAA908F244164BEA2D8D15FE
          CBBCC5589AC705DA059AF983CBBF115C58002F366E6D5793168C8DC7B6E5DFD5
          28260970617EBDC4CC0F12117544A6E7853F2BD7866B9EB296CA8BE73CE73941
          C7152F7FF9CBFB6A83D422C921E91FD22EDA1EEC9BA121964A1C242FC866C7FB
          08B129E6CDE802E726F67816249F5A403923656358487E39F26FB390D1DF8C99
          8B6377C448A09547F8B1D5ADEA029A03045504A3D3CCEA66573422F394A9589C
          837D6B73A50AF30AD7DF370163B23CF7B9CF0D3AAE78D9CB5ED6571B1024588C
          90847112FE55EC4E69810B8F7F0F52FBA24C76F3405B382620CC3239E5EAAB51
          AFC8CC043564B4051A0F896C0476EC633AA28A032CD975CF1DF17781F98ADDAF
          6F856D656B183BDC6794A3C0474834086881D0A2214CA6BC01F6412A15C8863E
          D7790558A765BCE72CBC99E73DEF79611DF0D297BEB4CF76604364C2A663634C
          609DCEDD4C7797086839D86717052618974F185A1EAE595B9914B43DB9AAA025
          0D441584F23E42635DBE32F87954FDA3F07341D01AC3F42B4247CC5067897499
          1B27CF1A63941CE0BEC544797AF95BE2488B20947B8A909842F91070AF2394DA
          CA7B64C3F39FFFFCA0E38A97BCE4257DB785CE44ED994305737622EC70733787
          2C1268E8AED4F2995C1C0D6DD8FC95D0BAF4A185B0093DECD40FB6BC37560233
          EE3FE60B5B51C9B190059A052DF5B41B7D820FE6FAC0632562ABCA15CA671937
          F310C22E21EAB3086F45F93D63D3B4A6619644E0C9759E342F78C10B828E2B5E
          FCE217F7DD161CDBD8B97133E5E0548A498E9D74EAE6386595A6828168777277
          A044E8D9A9F2FFD01A0809C315E83B523A0CBD0B14016F96F2057D21C234DAA6
          3F466E4BAEB0B8637EC64F8805B7EAAB95AB59A80F339D44378F097DCD46C9E5
          B3C566876B83905F379D8BDFE4D8FE759D78E10B5F18745CF1A217BD6888F620
          DD23E53369A6EE20284E77A9E75D505691BA373672773404340F22F470EF0CAD
          7161A3427F32D93159B26021880CA9CAE7B7D81CB150A690CA5F4CA7A0519DE1
          602A654E951A56393B008B503E8B4336A6240408EEA531B55DF858491158D706
          100195B9F438CB7B5CB7A473EEFDEDDFFE6DD07143093D4C64387E7103E4E020
          8834CFA497BBED7951200D3C376C75E7C598C317652E72504480F15F54FE9E98
          A9D663288D99447BA6A45991C2993968A8538605977B513691984F59FCD11EE6
          E4468010BCC1CCA6F564434D50C2D80133BE0EFA0864B803242DE0D808167AFE
          EBBFFE6BA8368984CFCE1149F2CF517AC60F76BAA2EACBD5F6BC282048235063
          8E4CB1EECDBC8050C2843F84D94954EB98EC981B52327BB0B34753A17E7EE170
          7D31E72038A23193DC402917A6AED34792C5D84234EB2FEB7093791C6D16E637
          2C1D593935FFDDDFFD5DD071C57FFEE77F0ED92EE9746C86A9E7059898E9CD79
          64EC86288DB033E1E654ADDCF04CCC74B2EEDB9F88EF451B80EADDA71AF69820
          544B54A7FAF98583D9048DA198667329DF00524E83761E17F81D9C3B0ED031FD
          99B629DBC046BEC9411FD336F7782E02E9E5FCFDDFFF7DD071C57FFCC77F0CD9
          2E3428ECCA1900A9D7E5126D0FEDD462A469223BA714164B26F0CD337F4B7C98
          8CD198D9FC77D078209C2CF5F87B2984A8B791D3029D0A6877EAA6507C3BB9CE
          987572AACB85D9154DE72CF9B1C4AF75AC28481792D7ACA91DE2D38780978D76
          F31FFEE11F828E2BFEFDDFFF7DE8B649D82203BFC9A92A05F636ABF93A5252B9
          2B537F13762D4423C4CEF2BA6DD916C84A256C0167477679DC9BB631CF028069
          BA2FBF1B2657D1A8A61AE0409F707D59008E8EDD988C615380F9444C3BB200A3
          7548D5342D9ABE5984F23EC2DCFB42E64D682AB28D9F247E57D9A46CF8C77FFC
          C7B00EF9B77FFBB7A1DBC60E0093040B45EA365D26BB6B98A90D36B748837907
          8194DD37376EECC81AB44DA8EFD90966B3337280F919CDC6496635E2A60A13F8
          3EE5FBB3F6BBF8F9E5509F6F9E0B678E09FD78BE59D598B100B3F0224CC6BE8F
          6D2094B3F8B30908BDB74976B9B3899B7BAA0ADADA8971DFE32059A7599FB3B0
          74FCD33FFD53D071C5BFFEEBBF8ED1BEAA53732A03C105BB11A4DEC34DFEBBF8
          7941342B4B66B65A417D90D3C2ED8B685F5CCEBB7D38358BF644F228A58E44A0
          D2EE1404ED5CA11FF72EFF46F3C19C8A53738A75B9FA08AF971075848B93629F
          508583CC6A049D4BC3CAF9B3F6259D9F47F87FFFEFFF051D57FCCBBFFCCB18ED
          63E04BE81E6ACD94556892AF83DD5DEC8469CA142622340EB17D01A47489E496
          9917A1B8CDCF867B82DD2BF743A88F8B8F6F416A480EAF6A0571A51B52D99B8D
          0B8223F70DD142684A530A61AFE68D0A8D6492756E53799E29996F313522C4B7
          99EDD062E3C7947CCA867FFEE77F0E3AAE083D30806A5DAE947273D8C0619685
          568B91C6471211A6501749B2F6A6EE941FC2C43447546D5FBE1F9273CB378A24
          45A42E570ACEF33922E9093694FF4B224AF1CF5B8ADDC0923E84F2D44DA213D3
          1E35C906E820339B796F1442153645A88A2810716A26A95C0A59589BE04645E2
          5D8ADD9005469CF0D00EC65615B370B353624CC4764E1C828DE5F935E5CEE1FE
          C544D17551C8B9E2B6E485CA51604B05CC2668CD5868C5A724A5229E12653C8B
          E3B10877080AF8FAA5180853BDC79BB4E6FB95E79374A2D750D79C22D4192810
          3A92452C87BA5C92821C156C6E13F5BCC0CE09CD4A0A15D3258C799E77FC9225
          79C9D87DA7B629FB81C9D057FD2FA6B3D47C1CBA8006004D400A0B742E204834
          CD9BAC018799A99010DB87A48F1405F82DE10F9372641AB4DDE3C0B539A4FC4C
          68C8FEE084066115A1615F33202602264D24E2D8268B260E2CDB99B4C43BA748
          5E0F9C0A633B2FCBC29D923ABECE36E533DAD3500151FC1A7876D59F62D24403
          E7E3E8C9E70E2EDB967ABA8A26C42F25E5A8A3D4C087A46D73206B01F7782C61
          12E10C4DE42C42B96803D180A6BE56AC33ABB9F39A1CF411022557518A5A2B13
          9A6EA7084DF033234891F8F8E01791F220919C0DB324A952C2C09742A20D62C3
          C2BDB96C4BD3C28D269331C32481B03C96402F1187CBE5837B2A7411111F2A57
          E5730419AE0D9ADA360DA8CFAE32177629CF7B9EA2F6622342F196C8EDC06F13
          213F343081FB05F35D2E3EA062C570DDE3C0B5110DED199EDF3B2AA189958BD0
          54CE3322B55898A0B1A1A6AC32661780D621F5321AF3846856523027488E8BB6
          30D66A8422B08342D52DC2F272EDB92F10C6D844ACABBC868AFE5813AE91C089
          1F677E577A09264DFC34961ABE4342D4590462A5E1EF1359A0D10CB040E6AAB5
          4A0DA9CA1E133452A1B521738DF0E31EE73EE6DE746DCE104631FD310F2737DE
          434B6815A145BB7A40EA7231E0529E14A53C45EAC2D93CC1228E162176990251
          05439BE3BDA49DAFC24481D0D334B6972DCFCB96FF5D7F239CD876CAB34498F9
          64A56532449DEFF25F101F07EE9B7929E21B9283850DD3C44C8540FC5786D06C
          23906D57FECD6FE4A06D9807441B828677164D510C24F7599BB565FFF2BC92F3
          C70B2D965E849667EF01ECFC326052776A6631432A76A5EA57FA039308767E92
          43C6DE5DF82EDC92C86E53ED75C64A356B73D1F05C047E86DFDCA7F6BB9794BF
          3B8B037E5B74CDC6F23384E7D68541B44F92F767698636A40863135F145F93F7
          C44CB58502F39CCB59B62AD4B651548ED9B9F21B3914779E1772CC3D5545EE71
          B4C22E4D97ACD355AD7512BCE8452F0A3A2EA6D003326852AFCBC5044F798A54
          F32FCC0B5206848521766248714E4493E1536DDBA6E919AB5237EAF5AA89C065
          8A435321C2130B6FD3CE946B81B6A7A94AF49EE57375C3C2774B2AFF94EB6B85
          524D5D70826916522499E5B695D7E8F7597D2496CDEA75A43D7BD6DE9FC73C52
          4323D748044FEE8D26CD2E9B75A2CF24FD4A8EC83DCE3DDAE4B0CCDC86AF5F52
          A93A82859E17BEF08531DB2DA1712C3008132189CFC6426A3FE1ACA6DA9E6190
          4CAD2968D4C4FCEA13A28E196C62A61A0ED1F68C199D8850BE5DD90EFACDB6EB
          14DF24C1A7A0629B3F939C374ECAA2CD6211603160C1386284738F010B856F79
          0A495827F49D645332C86F5379AD69E7AEAC8571BE5FE57FEE21C957E5BABE5D
          357EA9E2E3B38870CD3A8D037F3249855FFCE217071D57BCE0052F88DD767C12
          0E28FF4EF966657261324703A1C548FB47D2A4A7E0BC2C8EF6BE057231C9B1E8
          A0F160C7C8243166F4561B8C5D26ADCDB5D7DB34023E3E0B52AF4840FB814080
          2FC092C93F6ACB75BE4DC51BEBEC6A567D7A86D0C0B0F88A89935D3B633676AE
          18CCC2B804547DD4983B539BDFAB6532EAB82A0748A045EA1B751F7CFD9258A7
          D164FFB6FCBBEA5BC8751DDD4AF39297BC24EC849FFFFCE78FDD561BB2ABE686
          885D5FA909D911A4902C6FDEE0C6A34F63AB5045406032F4A9AFC564C94EFE57
          1E9F8D8584A1D7F1A983D7E4BC4B1F11FABA7DE5354936C74666B349AF06D12C
          48256AD1E2A594AF675DD93E1621162716A258495565CCD4918CC729F51BF3F9
          6E8EF7E83F5B1D2ED940CC8BF9D67793475F21C017B5D7A3087F2F7DE94BADAF
          BFE0052F28CA7656235ACF5AF9FCE5DAE8E279CF7BDED86DB5218E8FA9D7E5A2
          7D687BD8ADF96800143F52CA7E2DEA5E5FFF2D0476CC49A98E59E0E66752DBAE
          F29A84D4FB68D5A4FE543D63AD4479D561C728CEDD396762AEE39B99997EDEC5
          AC5D1C860241870D83F856E1DFC56E3CD61C8580BDA3E33DB49F55A1C796CA61
          B9E1B9EDBDEAF75CD6703CEF6116AEFB43D5A9E7B2F1C971932313D35E97AB6E
          AA152469E7A899EA5FF6B297595F7FFEF39F2F492FABFC71E5F3979BF38BE73E
          F7B963B6B309995024AF47AA12B41623ED1716644227D965C48EE0F375EC1398
          00190F39A8B8598498AC0BB3EAB3E0EB8029691B58E8EB9A38B96F85AAF3B668
          705328163B2B22E0B539A74B566B3E3FA64683DFAD2EC45C933F9BF1CD499290
          D2057DB2645635E5AE68C5FA6B85714732FAFCEFFA2DB41C557FA83A5513F03C
          67E66EBAC741EA766D701C3F56D0C65F79F9CB5FBEE6B5E73DEF791268B0DE72
          C8092BC79C5D3CE739CF19B39D4D546DABDCB8BF8BDDA006D835A391588ADD90
          398045931D0421EAB19D97C539D1C7B78CF18A09078127B676CA171662117A58
          1471C0F4F54BC1470367FE7A6D21F1DF11D30A5A1D117098806422CDBD5827E7
          8800D7B6A39528BE13CDB87E3513B3755157FA9E6BC6F518F3BEB2EDB2AB2028
          A4641672997EA19EC366DE6BB03585E057838E6CA001AE6A16EB634E220E5DEF
          CDF27FF5350938B2C1BC744AF1EC673F7BD05EEC88A47AE7C660A79D6A6147B1
          592F99D5058F4E3FDFC45FB87382891973610A21B6E29CE813D504EC66B111C7
          D64E85C28E0DA18DBEF75980C45CD55497CB862C82299BADDB9085B16D332605
          9599B7C6F64D946473553F2DF16B183BF042CA0CD948D12CC47D7085DA6B8C6F
          34A1D50D0D9A52C60242DB457E5F9D156D256824FB741DFA0A21D0A6ADF3F9DF
          F4F879D694758ECFE19B754AF1AC673D6B88CE0BA59ACA9F6470B19D5A5DB854
          B8A927594C0D261B7610C7C56E48D9164940D9668AC1078D1D050243CE422E36
          7C766EBEE9F32572A9AD244715315F32E1A4908AA02B3E4558853EAA75CF423D
          8C9AF9549C9AC70ABCC00C82D0633319FDC5D81DC0379AF1FC9F84AAD0C28667
          F7B20DEBCA67341D759FBE794EBA591DE74D011C3601715641D647C8717D66B9
          F61ED7F22A8EEF60DE3AB378E6339F3940FFCD44B596500A1A803AECA8181C36
          9B2113CB3C45AB0C89A42A48C1DF43DAE22BB472537193E79C9F4338B03C675F
          753D9B122616AE5BD3381773170B9CF46F8EC53A7D8BA6764D733004B68492EC
          CE11E64F1EA90D8C0F1128F8EDAA4F0DDABE7A66733442071AFB7C3A14F40B63
          BE4D6B278EFFF4A708B1F3585E054423BB649AC739C26CD5499DBEFCA389B099
          79C52B5E617DFD59CF7A9608FF552E8F0CE798E219CF78C6D86DF541764CAE9D
          414CC439D345CC492F27D8FDB3D0C67602EE525F0BB8993627D0EEBE60B1C696
          EFEB7323F9949818971C9F9998E9C4485FB238602238B0FC2D84A55C4C032C7C
          572BDB8FB9AA696267B1DF92C0F9898B40551BC72280E662683F1484DB895915
          88456B22D4B50752C45592D38EC596F2E1D2EAD6A31D69374224E360DE0AE942
          97719E0CAF7CE52BADAF3FF399CFE47CD07056C7DF692B9FBFDC4FB378FAD39F
          1EBBED36AA9EE22939354BB862130C1806CE3C68018602674F165A6CE3B173DB
          541D4FDB7C4E18972C2829E7E40901E745267FDF4482B229B165A3158D872066
          6A11967C7DA6526062DAC378C12668C44292CDB12327C294712AA1D9687B865A
          D064F3C05CEDEBBB15CBDF4B7C095D1147E2B45F45CAD1D07F12BA3D2F658926
          C66F9C27C5AB5EF5AAA0E38AA73DED69B1DBEE426E089B43592C5C790AEA2C99
          F9CB44DB174CC04C384C18B1FB88B6B0C3F1753CC5CCC16E393593EBACB00888
          30E7E3FB51AD3F55F7BB63778C795A7658D5C4651393CFE4EA53691E7C6A948D
          8D389C624A14B31673D7656638E1828D03DA135F076ED198884BC0D8FDD61489
          85D0BE7DED35DA270ECCA2A1C2D5E1289377A25A09E068D2DC26C9AB5FFDEAA0
          E38AA73EF5A9B1DBDE844401A4B23BACE6E07081ED971B3F25935C4AE0DB41FF
          A5E0D42A49F77CFC8A50DDB370E41E7AED02DF1526405FB35D93AF0B3B65CC5B
          2C6CECFC25FCB5AA464FBD12B8AF394E16CF7A287F6CEA4ED5EBCAD74E31FD9B
          DF249AB58B30EB53E17B489ACCDAD5D24842DD59775E4A51E46876BE9CD7BCE6
          3541C7A52EF454CD49A9388E3599B858C4D939A4565F261564724CA1489F4C5A
          3E19839920F1E562D71CDBE97A28D8BD2204E2E0E9137954ADD9C3A261DBEDD2
          6F9809582CC41C98836940A2D4DA1CAF53CE4344DBC46F4EB4713B948FBEDD05
          D02A713FFB4601A6A25D682AB6C91815875D84F7E3CDDA392BF7E49BBEE33C49
          82859EA73CE529B1DBDE86ECC625836C6CED00D8C2F62077A97F68648148A12C
          81389EFA244A63E1662738EFE908B694E7EA9B2AC227253FBB48FC79240922C2
          12E30081C8A74AF9D84888BD98339AE61B497320090153C3965072EFF2EFBE36
          1D68FCF628FBC0776EC634C4584B21ABBD24DCE35AD70577C9F7B2A53C47F1E9
          1144E8959A6239514D257154ECC684F0DAD7BE36E8B8E2C94F7E72ECB6B7C1C0
          921D652ABB436E122952570DC964E2CF4A453822F4173E5A294C74B2C3F3A994
          CDAE1455FCBC392FBB60878BA6C73753330B3F3BE226BF3B4C4098A8C5F4E19B
          EC2F06E2D8DE962E43CE0141D857C33136628E677E92C2999BCA7344BB31ABC0
          29C9187F63FCFDDC52BBF6BE1A5FE62E04C5BA4F94EF78498D5CDBFD575EF7BA
          D7051D573CE9494F8ADD761F64C7A27970D286090D9569354C956B86EA14FBF9
          A926BE1A958500476A1680233D3E8FFA9709711ED3CEDBD8509EB3AF90276614
          4CCF27347C86C0846AAE982EFE5463D165E72E1152A93BB28A09A3AA8DDBBD6C
          F3AC4ECD08C88C17DF9A4B5DD3438C455334A2C0794ECCD4B7B47A5F48116ACE
          A58BB62B263EF76CF2BCFEF5AF0F3AAE78E2139F18BBED3E54EB7EC4B603F70D
          3B8D7A3E0B76C4294FA436981498D0365ADE635163A248210744537D993A6884
          B83E8B96778905807BCD37A19D8F532A7DC99816330BDFCF78619799429002F8
          FA68885FD292891F81D88664B997E001C99FC33DC0F5E07E0C294C8A6FD001E5
          77FA6AB7BBDC7B634214D6554DBBB0CB18677EABDF172199CA6392BB2FD2E5BC
          E10D6F083AAE78C2139E10BBEDBE540BC3C54AF3DE37F83B3021D55366D70BDD
          E5804C682E5298E8A492B0E4DC6882C9ED2AE5E716CD64C978941A3C3E8BA184
          1FD34F473B3EC3428B8900539008F4B12378AAF846E3C4ACAF158A2DA124D757
          1C75E5BAF96EB48AB20FE82BDFF203D26F2CB22946EEF9987B386F043D849BBA
          29379728280926C9DEFFF48D6F7C63D071C5E31FFFF8D86DEF82DCA829D7E5EA
          822D1F84905A086C130813DC481B1A3E9342A6EA2E8EA784632358A7E0431603
          C6257E58BE5A189F047D68079874C5211C6189C5182D60CCCCEB366D888B5C2B
          6D57EB72D1DF57ABBDBF64FCB556080868EEBAE4258A5D97AC0D8946644C36D5
          9E620C33D6EB02432A11696DE7E83BCE93E74D6F7A5358273CEE718F8BDDF62E
          48C1372E5E2A4ECDA1D8724154C1B69CE28EC886F867B41173C2EB521BA9EB82
          3FAFB05072BD7C1743041804E0C38D7BD1406040E3276A753115F938950F85AF
          B9CA3761618AA0B944D32279C4B8569BCBF7BA248095C494B6106E1729D425F3
          C1B7461CE6A1B3CC5A8D50EA829D6F1DB92C78F39BDF1C745CF1D8C73E3676DB
          BB2205DF90525DF94152870948327A36C104615B085C5568975B3ED3F575DF6A
          B7EC207733CDB0C8B13B8EB1BBA08D68A2E8F7B631C34E0F210ED34E8A13D798
          48A66654FE3ED7CD9609D8F69D7B98D5920892DD96D763DCCF12BADB9651594C
          7E3EC5565345B2DC4BE6ED3DCAD711427D17412928BAD4E177B9BE085839F41B
          266D84B4265F25E66D8407FAB1AA9D14BF468E4BC17FB18A24069D9B9A616F79
          CB5B828E2B1EF398C7C46E7B57649262014B25ECB12B6257F5C176E3850A28AE
          D7EAAF2F3B3EEBBA5178BDAD4AF29289B7BBF0A9F1C3E2CEC4CCF86241C845CB
          3634F41D93BCEF0E7D62DA4B4DB01B66CCC87890FB218626C0B76AB6E424CA75
          CE11AA75B9BA9A13E903EE135B4E1B17B925C063ACB3BEB4F95522303286EBA6
          5CD1A6A4668998BBEAF06F7DEB5B838E2B1EFDE847C76E7B08A28EE6A645A2CE
          71472E3676174C2AF502814D42C72CAFF5713C3BE0FD1DED430D1E6BE7E3E364
          2B1355959C7CAA86A46BA6E6BA19C5F59D4CC02C18B2784ECC545842301D2BD1
          1F6D15534593B9CA96EF26572420A429A1A48DF5651F7429282A9A0FB40B6C22
          72D12E301730273439D8332630856196BDB0F6FAA1E5339AAD14C2F2C52D24A5
          48C99979DBDBDE16745CF1A8473D2A76DB431127609C098F8BDD9800249AC1A5
          214939E9990B57A6EA98D1396D8EA7929B655DEDF598825A6AB050B2B3F50D1E
          F0D955A2DDC11C264ECD1236BCAEF5DBFB07CD4593A0956AA8752868AC7634AB
          05347D4010E09A1DEDF97948B52E591BBE117AF831A2FDAA0B12A92560A42DDC
          6B292486ED8DB7BFFDED41C7E52CF4549D9A739D8C5C61DE5D43485381C9A25E
          8C959D4E2C4D9C54FC6667BAE4F80C42E741E567AB4858BB0A3D5358F458047C
          9C8DAB9A91A62474084708452210730D36B77EBB3FF2BBD5ACE9752E36CDEA7E
          11C6108273DC5C359D936FCD30AE89D4CCF32D289A725D321F246B7B9B996A52
          BE5FDFD4A11DC5B4C7F88F990B47FCEC72DC4437122CF43CF2918F8CDDF65998
          98E9E064502124A4A04AEC021331B921EAA1DE2CD239ED8C52859B5D76384D3B
          5A9918AA74A918BD08201C4ECC7411F011C67DEA7231EE253B307F9F6BFA0D03
          5F5F3E106C4285573175A45024B74FC4BCEE137A8F569D45BDCBA289D910AD6F
          AA75C97C403044786BF261629327656A966BAFC78EF42BCCAAF63415535B6FBC
          E31DEF083AAE78C4231E11BBEDB3804DFE5093B753B3320C5D55CCF88931C131
          4120EC641FD2D93368253171E1CF8200C944DEA62A67B1447BD354D4554C61C0
          A4CCE6A58F9DF1A6F2F7117A24D36E57C1279750EB101032993BB92E083EAE05
          11818F6BDF65D1944D44EE73B26F7D35841EEE89D32DAF73CFC4CAE9249684D4
          EA6B31C7EE5D3ECB3D29BEA16892BD4CAEEF7CE73B837EBC78F8C31F1EBB0366
          459C9AA55AECDCD82C956052ADF1932B5553B2E09384CD27CB713DC7D3196655
          E00C894894307804A96AE2CF25D35D90155F08F20EE5666AF641B210BBDC0310
          18A92BD5A5A02834552ECF0D9F920DAEBA5CBEE9108640AE1D5AB6D49CC86D81
          238277358277BDEB5D413F5E3CEC610F8BDD017DC0C4CA045B55253251BB9C84
          45AA6431CCB6F688E2441C28E7263C3332AEE4933E0EEAA2C97139B3564BB130
          4157AB7FDBD228188FD78AF27BC55F4E323E77BDD725591DBBFC533B1E9B3A2C
          C88794CFF48D4D389994EF772989335709F0CC6A34629B4F17F7078EDE758DA0
          F8063186589F0A330ECC7F29264A449BCE7ADD94BDDFCB94FCEE77BF3BA801C5
          431FFAD0D89DD007D5BA5C4CC44C9ED853DB72C7844E864ADAE04B824F495B54
          8EE287089155B8779850DBFAD727CB2D8BC5FAF2BBFABC5EB49B450BD342E802
          2C914E39FBA6D8102D8F2B77D50EE5B977A925957A7DAD507C36510833E2C376
          5EED754CA45B22B41BADE949117EB7099FECFD6C8E5A9DDFDFF39EF70435A078
          C8431E12BB13FA42528023D5B26BD9D1F3B81C53CA2BCD48056F9FC2A24A3B92
          A3A59A41DCA76C04C74916D8D454ECBE48B1CE1C8B00BBA80A27B6B40C2CD45C
          37CC925D345CB17D5886A25A23AEC94C85608370549F73B86F588FC6D2F298B2
          8D8CD994CC8B6DA597AAB4FA21BDF7BDEF0D6A44F1E0073F387647F4C52C793E
          52A8F23C4FA0C2DCBEE17D315FD0E743DD9473978134324CE86C2CD076B0B160
          316C13624217C1311707A1E95CE62D82ABED7C88EA12D388AFA0EA931E22677C
          4D9D8C79FA3425C7E131A99743AAE25BA3110826691C7FFFF77FFF17D6C0073D
          E84111FBA7775C796FDAA0836356799E27A4CED5761E9FC57972284D0CC2AF54
          929EBB70CD08A01D20CC79C9F82D8492CEDF4B555D41A285C6147CD8C1B3B374
          A528108D550C87D4BE692BF9219B4704D52E029E4F8A829C118D5F9B033F1B3E
          844AB468320732AEE62DFAAF0ED71F415922B2E8A7BAE057754369A3D58FEE7D
          EF7B5F50438B073EF081313BAA6FC44E1DC292990FC7BBD820C9EFDFE1F35D76
          CF7263415D886191441D5FD5EA48649F4F1D1C262BF101C31C93925A38051078
          98C87D2BA14B9E962EC9D9A46C018CE97CC9B862DC34659C4EA11A7C1FB46563
          66511221B02B1C2BC53AE7C9FF49CE6D8B692E442AD836DF63699CB987987F99
          CBA436D8D05A27EE1FB4EA52A419C19975984D6DDD8F4FFC2D9BF0CA86FFFEF7
          BF3FA8B1C5031EF08081FB633458B49830DB9C975D309019D039D7D5898DCDF7
          A30D4C5CC77A7C4EECEADB347C8689B61EA22ED9969BD2195473BA00376E53EE
          924583C99E49DC37D74DE8AE7F62DA8B950E818F2914A15AA24E184B39CE136D
          C53FB96E0876A1D5EE2545C1BCF9494A0416DA9AD35B3ECB3861CEA99BF77DE7
          B95911DF5681EB7894196E13C79C894058AF99C7EB0798B5F9BC986BA536990B
          AF8DF0073EF081A006CF93D02376EA5960223839F689648CF87074C54713E3FB
          DDF58468A29676E58A619212AD4495DC77F47DC244CAAECD274BB86481453840
          9BE02B1C88D92546C48908D4921CD125EC4AD2BD1CE789EA3922D42C3BDE97D0
          EA50E6CDFF499CBA79F63193F33916FBBA3603A18379A9DEEF5DFF370DEF8B86
          A5CE9029175CCEDBC0460961EF6CCBEB7B3ABECF5B600E167AEE7FFFFB0FD417
          A3622B2310020388494FCB0F74C796C0CE1776022C90AE09A5CB77F31DF530DB
          89716B1064775A076D4FAE11477DC28E9545CC77E71E9AA785FB9709B4297BF3
          90B8B4538C39D15C62A6939D746E654AD064A1D1722522C47CC9B5EE5250D4C6
          3CF93F81F45B97A2A9B622C64B66BA01A8CF6185E56F71062E5A3E6F3B9E8D61
          3D07CE901999999B11B46CA661C61463AD1EC420732EAF5F50B65B7C81D84C78
          69A53EF8C10F0635B8B8DFFDEE37505F8C0A9D887962D60ACDB20B9A377BF418
          48E6D2509A76235DBFBBAE2D10D3273BCFFACD29F935EA290E54D3B3BA6B45B3
          E1137D454E1CFA5942A17D6933BB8C059A2626716AB5C9C4CBAE54348C080C08
          3A38683399E712C22E8BB094E3A883C90113C509A61F414E045F570EA05C40D8
          A5DF42525F48B242E8E20B372BE27B2670DF869460F145E68833CCD642A198C4
          1953F5CDECC44C37193399DD3EF4A10F8535F8BEF7BDEF407D313A2291CF028B
          AEAD564CEEBB95A1E9927FC185ABEE52E877D7C3A49B3410753B333BB2234C9E
          7E1B7DC2C48D30B8E4F9790949EDA205413380107171795C4CEA6533A468A440
          1B294921734D2EE910C4DC22091639AF49F91E731B8B3B9ACDBEAAA1CF83FF13
          D06F523435A704B6DC83E29F8820E29B5C3214C60FF73E42351B4BC6171B9993
          CCDA543012C135B3F6E9C31FFE70D071C57DEE739F81FB6334B8C1AE669AD35B
          B7218323C4EEBADCE17D63F97CDB6F5CD6F27ED736F8B4B1ED37799F098E05A0
          8BF3B28B7A0238F10FD914F05DF50880B6107676F81BCACF3369B0682FB2A687
          BE67226313E033E18726F113276297D9656CA4FAB8646A3FB83C37107F03194B
          6D3E402920A67F09517769363987AE61EA3EBFDB56AC3355427CCC983F66B536
          D8185A68E903CE1D2D13EB009B83332DED96FB06C1FBB84EDF6EE1231FF948D0
          71C5BDEF7DEF981DD53775D59E921736F3463D1AC117DB64E59B608C9B13730B
          BBFD452D608B668C09CCD76137C42707B30B5A1EB4257D69196685C99B428D08
          3C4797E7445F48B576199F12D113DB24D746BDF867534A89BE238C72D5948468
          AAA46AFD361E9FED4A6A55D243110D692FFE701FFDE847838E2BEE75AF7BC5EE
          883E71850BB6C1CD7E8AE5BB6C4E66F5F7973B7EDE383E53781CD3C7FB4DCEC0
          3E55AD5DFF8BA62414576E06FC440E2D9F7D6187C18265B317B3CB6517DAE6BB
          C54287B9E33766F16081A79F968C9F7F9BF8E4F884F45609C9E533069267A5AE
          7D62C2C65CC058959A4A0886438604CF423D4F15F7E721A6592BDBA7C64D0210
          58B0730A610F71C6178D259BAD3EC7C26EE5F7D922EE7242FCA3D820F4A2F9FB
          D8C73E16745C71CF7BDE337667F48DA8257D41AD8B2A3BA7488C149955CBD614
          E22A93902F4D0E94E2A7E1930D1ADB331AA179AA23E403E69D75C62FCCB51AD2
          8B36C17762666372B049D3FCE1DAE9F33F029168BF7CB3F4C600C155345652FC
          531CCD9B36277D8737E7560E86714FBFA1ADF48D3E93396588FC443E057B7380
          7B9DF1C7FDD48BF0F6F18F7F3CE8B8E21EF7B847ECCE18822ED13E39E6DC4811
          260B06B64FF9893A6D7E207C378B908F6F0F5A3BECC57DD452E25C88DC593279
          EFB2BAC0C43431D3EBE1A3D67769459A102D09A680D0447843E3F249D9B96CBF
          08D5627E4D2D2F8D4BD868CA5A3F4482D69CFC9F40F28175A9C728D99A9B12A0
          CE82AF767A0CD0D870DF5ED4A12DA209EED56FEF139FF844D071F32AF47051D0
          F634656766E2925C128BEAB7D13721F99298607D52BB4B1E95367C8A5B4AC410
          BFD9968B070169919C9A71E4A55F7C7695A2B2EEEA93934B48338B19639A483E
          99238AB28F4E2DFB49C2C111786676CEEC09D13CD836134D99CD877226CFA584
          4788E64EE6BC7A52D421DA153BD335423402216308E11593290A83A6F913A197
          B996FBA3D73A8BC142CFDDEF7EF711FA2A0AA870DB841E165C1578FA6562A64E
          9EBE7451A7FB68F05C9997EB88236ADB44CCE280E327934D0E5114B3C062C982
          CEE4E4B3230F095197284BF1BB4A19FA83C5A69E93875D3DE639110C772FFB2D
          158753A981554FD22970CDD004159507BE4A4B03B5477C2D379974FD9FA01EDA
          DF060BFA21E5336379C8D07CD14EF33B63D6A5135CEE0B6DF327ED66AEED3DE9
          E8273FF9C9A0E38ABBDDED6EC37491B2A8C842E1933DB9AB3A7D7DF9FD550772
          81D730B330D9FB981A241C9EEF6CCA060DBB96BF3BEF6650166EB4363E996743
          CB46480A7A1F8D5C0AB8CC447B96ED977126BE32B1F3D2F896CA286A0FDAEC6B
          C2C5047A65B37A1FCA837B884D8CCD29BD9E032935247F4C178D4D88693794AA
          763AC666C1552894F17F8CE318D1500D5206E3539FFA54D071C55DEF7AD761BA
          485964980CDA34324C984C2E7D4E16E21CEB9B85D4379788D4E762428CB1CB1A
          03841816771F3355A84F4E8ED13C55CD54D514CAB9A3EA67DCB0D88BC369D722
          AB7D229A0716C8218B2737A5914060768DA189895350B60DF1192CCCDA82C52E
          181708215547F1A111B3B04FADC2BE4120DCD1F23AF3A14B08636EDD50F64FEF
          BE5C9FFEF4A7838E2BEE7297BB0CD345CAACB033622265B0C84E0A0161DE4D2C
          B32213B2AFFF80AF89861B9E45EE788FEFCC117672849BFB44D8844EBEB1EB6B
          85520FFD1610EC593025ACB9CDAC3434E2A43CA4E6C1C76FCF55A7AAAD1C462C
          A4DFBAF898C528AC2A91928CB936ED74DFB82A1EB8346332470CD63F9FF9CC67
          828E2BEE7CE73B0FD345E98230C14E48040976A9B13DE2EBB8F20D35EDA29429
          B233071FFF0131C7F938E3FE4DF9B914FC36FA04818E1DB88FF6450A4AA245E8
          128D238EE8433A7C0E45D52705E1B8EAD42CB9592E36ABE54C1823BD3A6D7A80
          C909CD0382FB509A07DF28CAA624872260A4E2FF24F3051A9BB6A84F21D4B4DB
          0762861B3BD503F73DF35F5583CF3867CEA8CFB192E0F34F66408DEE673FFBD9
          A0E38A3BDDE94E4376546AD46B2C81E4634869E7298E9136BA54FB5D54C4D6EE
          3B31F8FA994838B7AFA36F2E60BAF32D3711E29323FE53DC77B612203920A6D3
          FA42C702884656C65948C8731F54CB670CA57990FBCA8725634FECC758B8BA59
          CDEB147B2C8866B88BC94D04BF6A61DA3111ED748C4CD73B94E78EA2C0A5151E
          CC79B9CAE73EF7B9A0E38A3BDEF18EC376513A709349086A1D2452D9752C579E
          972DFF1B8FD76CCFBEEF1106DC146E2FA1B1B1278B94E15A4BC56C1681363F9C
          2E367D76F65C9B79716A66C267E1F6712E159F1C4C004B1D7E4354E3B90BEC2C
          36EC74D9245517C83DCAFF5904D8E58A803796069971CBB591FA5A43D125FF19
          02B12B845FF2B6C44EB8E712649B48A1ED922AA21E55980262FE1C3C1DC5E73F
          FFF9A0E31649E8911065174C50E2F8672BEDD0568E2194BA00B4C1B4977348CD
          1130456442F3AD27243589DA26331633CC344C9229954E08817339A03C179F05
          5A16BD233D3F0FA2EA46F0ECB3AE530CC48454F7494108460B82B66CB9EC23B4
          2E7DCD113EA0715832C36A1E2402CB87B60CCCB1FD9F407CCC7CDB504DB418BB
          2C448A5190E27324A6EF4109167AEE70873B8CDB2DF160E7BFA5E1FD3669BF49
          102A7AFECCBE0D6D4D31E57DAAC822EDE33FD0259708BB1984A414436F7DC014
          C202C624CEC4EDE3031212D20B311C3E87C4E52CCC3843C04B39F95E1F8869A5
          099F390A6D0502A44F399821904D4E977A7129091ADCBB6814B97FFBCE74CDDC
          809200211F619031EDB3C9917B63945C425FF8C217828E2B6E7FFBDB0FDDB654
          68F2938125E35F5C6E68444B51477618A9395EA70A132B130376659F5054D9C9
          FAA8BBD190305E86CECFD13722BC54698BC212F35F579F9C980E9F43218EDC92
          CDBDBADBC784279A5A34B17D86AE63BEDAA6FCDD98C2236D90FC56366497EF33
          47893FCDD809F7244BB0ED1ABA102D5F4A99B787C874CDFCB06FF97D8CE12DE5
          EF2C99E671B74DD93F0890A398FEBFF8C52F061D57DCEE76B71BA37D29D0A49A
          95C89D94EA2B4DCC6A9D1FD100A59EC63D4564F7E15B63CDD721148D10130EE3
          266632BA2E481E97CDB5D7110A9B92EAC98661C974DB18C476F81C0AC9C9534F
          BA26FE1E425F114A08EFF4A5A4FF67A18E695A6DAADFD5658E12FF27B4096346
          22ED549E43171F33AE2BD79DCD532A666DC997C5F8E823D335E34BB45F55A115
          C1070D17E3D9B5465EA5FC1CF7FA28FEA65FFAD297C23AEDB6B7BDED18ED4B81
          89990A3EF5099F8B98D2401618D01BCDD6424F6A6DCC0189166182F58926901D
          8B4F083B0EBA080ABEEAF1D8C82459379D4A98B36DB2924CB04C82F8E4F86E0C
          5270F81C122902591540EAC20042334291DCC3D5BEABBF56BDCF4DF9BABCC662
          5B4D0C17BB32BD68A219F78C9D75653B193F5D37656DBE9643D125FD876F12D3
          18F4A94D658C61F65BB2BC3731D3FBD8E64B3A9AF372952F7FF9CB41C715B7B9
          CD6DC66A634C9880B1C732B1334844352B1116B1EDB3CAB0C802DC56CD5DF0CD
          25224ECD988772313922F833495617D8A61D6FA8092276ADA0A19188B4EA1861
          3C200CB0B1427B61F3F9AA0A39D5FF5D9F03A9FF26C7C4F48FA20D689DD02AF4
          61E6E1FB7634E33A7D03FDE7134E2D91A05C8354EB86C93D3A6B9A04346008D8
          B6713B315321B77E2F8B7337C2D0A839E4BEF295AF041DB708428FEC54D971A6
          E2B3A38C8FD48EF1516957EB72B5D55262A7CAA47DA25915A6258B76AA60AEDA
          52B61161CDE57B22BBC8907A4912562B2541E689AA59A6AEFD5A5FBECF98E973
          814470DF54FE66CC794C84BD18396262203E7031CB8BB4D1571576C6AD1457AE
          8E5DC69D6C02EBDA6071EEEE12D1D90BC142CFAD6F7DEB31DB19037C11B868F3
          36F12ADD600CB00873633261B709255D6A29C91813D3290BDE0966DC4980094B
          A2B12EF1383F1FBA86F4D67115EBCC9D8949B386D4D048C495AF7FDC3CC07D85
          668B7B7A901A523D60D33A8682708D10C39C8750CBFD8FE69BEB5DBF87653C44
          C9B2FED5AF7E35E8B8E256B7BAD5D86D1D131621A4747663B9981F94E110938B
          AFB3A5E41269F305B245DBCDBAEBEAC286F2F73796FFA35D99350C5884BE597C
          72D07AB00395889E94B55FBEA45E2D7C4830114B6E9D5C9CF7FB2066A1CF36B8
          E7D9CC6176EA2BAA0C1F1DCC65DCBF6CA0982B6DE654E647041FDF22ADBDF2B5
          AF7D2DE8B8E296B7BCE5D86D1D13265C428A73ABF5A30C832CC25285BA4D7B21
          261ACC614D42C4C44C77FE75C62A4560FBFD59767D4D61D95D919A5BF548A75C
          4921A95E0CC42F6EDEB476BE60E6ED2B4AAA4F62459549B87CB49C455FFFFAD7
          838E2B6E718B5BC468EF18B008A0F68B22852AC92249C97C353112C2DE7473BB
          4278F1BD100DA34D7098E535605CE36069AB7ECCCE2CB4F064DF45210F2DDB89
          C62C670D411FDAAF1C11BF48B4098BEA269062CE29899A1ABAFC481DCCE86459
          678E895600FB1BDFF846D071C5CD6F7EF3586D1E12547E4CB44CDA6316FD53D2
          A71AB6ED13052355982F346E21C2567D1ACDC6B966EB6CDBB60815D76BF5F065
          F91D537B9DCF21A46C577B2FD4F1721BB3EA80DCD784360F26A16A75F9D82508
          C6066755C6185A8E4576138859E8D306429864900F2DEC29D1CC7FE9F01DA314
          146DE39BDFFC66D071F32AF43038B990D1A4502569AA75B9D0E0B42D60A2CA6D
          B2E9F39D3B957FB3308E69CAA9FB144906EA1035BC94EEE87B6297B0DA5CCB51
          88F66BD45C24092091418BA6DDB22119DE31EFC5289D514534D6A1096B3796C7
          4B016EE60CAE71DBD8168D57F444B9C142CFCD6E76B398ED1E022E222AE859A4
          5F65FE11B395EFCD2BBB2A328EA668A261DC4BA15A849590A8A290AAD3BE30C9
          8A4A3CB7C2A3A2FDAA171A5D042413F491B11B92087D9B7E43E03EC7DCC87D1E
          6AC2668DBC82E5F5363F44E641F1898CAAEDFCD6B7BE15745C71D39BDE3466BB
          FB461249B11BD7720D4A1312F520E68A364126B4E0662E540BAED21F436C1808
          85C554522FD6993A299620188345775EB621C9F8A04B1DBA3E9935158408F1EB
          2CEF35A523108DF758011A8D7CFBDBDF0E3AAEB8C94D6E12BBED7DC2848A89E1
          97B11BA26481D494F275044CCDA6DF271296BB64864B7E27D97CD9A9E612F61C
          CB593436A24D409B91AB1FD6508830D8A5427B5F48BE31DFECF236A4D48ECD9F
          D035CEE518140A4938727FE73BDF093AAEB8F18D6F1CBBED7D21F656A4DFE852
          A89205A219C46F81DD4B9BAF89DCF8F39665589CB5C517684824843D078DD918
          DAAF549998E9E21ED5593561D0FAE2DFE293FAA24FA4E6DB2C29138AF27B76B4
          BCE78A5265C3B79349C86DE4BBDFFD6ED8C9DFE846378ADDF6BEE0221259B048
          BB316576C46C859AD8479091B4EBF3A4F21FFB9CE86F266EFCA39298401D8CA1
          FD4A1189B68BA1C9C8853E342E5D91B9AA8FC2A76CE05833258B3C663ACC5A36
          B710F1F55B3209DD07DFFBDEF7828E9B17A1871D09668A5C54E64A5A88539F8F
          AFC9BC6519DE645693788E357933D1B2A8B2608C95B5BA2B929B86DDF4D1B11B
          3322A2FD645CD7EB8A295B3331D3D0ED318AEACA75C117313432B30E3E3D0852
          8C75B4DC17383EC3BDCAE6A4AF8CCFBD102CF4DCF086378CDDF6596130101582
          E49B8C14AA648538F63191F838354B923AD4C0B9E72D41E3C2443AB619439C31
          A36574F56CDF3C69F47C1067F345AB2B16421F5154BEC48A1A93BA5EC98D87EF
          7FFFFB41C71537B8C10D62B77D56B84151C7CE938F85323E7273FBFA9A20F460
          D32F3C3E9B32ECE4CF30E3579096E83926D2D442D86368BF52806BC2224EAE16
          755EF643229A96CC709BEE58F78A6C06715E4ECE6DE4073FF841D071C5F5AF7F
          FDD86D9F05841D547E8B9E2954991D315B4964918F93E03A8FCFE440AC322D63
          2C1821E0BC2C856617A9BE1611493B98FCCB858C099B1E09FFC6476D0873A0E4
          141B3B541CFF21C9F89C5C29A71FFEF08741C715D7BBDEF562B77D16B035A27A
          9ED5A94B5140CC56ECF063675C5D04A42488546A4EC1A9B94F67D19C90B19F5B
          0EA51418328757AC122EC98F871FFDE84741C7E52CF4E04086FD397A664865AE
          10A7E645F3E588852C184D49D1C602210C6D9F64204E6E773BE0798B4FDBD0BE
          29F38A946FC11CDAA7F08E96874D01E371ACEAEE9280115FA564DD4682859EEB
          5EF7BAB1DB1E02364E262706588A4E904ABE486411D1181ABD320EA9643CCE35
          63F4ACEC553E62F77FCE881FD8103E7E681CFBACE5C7FAB947F9F7B2599DE310
          F24951C058C09C364B2EA0C1F9F18F7F1C745C719DEB5C2776DB436092441AD5
          82A2CA10880D5DF3948C430AB5ADF0E5220A94457F9142D425DF4C0EC9225387
          C006C6515F1BA5A2FCAE737BFC4E9898A9A5C406916168AC921F0F3FF9C94F82
          8E2BAE7DED6BC76E7B57703044E861624AC10740993FC4A99967C6993AC90F8F
          44CFC5D2B29084906484B956810F459C557D52352C0208E0FB947F57B5203C23
          08E4BEE64895F42618FFA49248DABCFBD39FFE34E8B8E25AD7BA56ECB6776AAF
          992E46ECBEB5A0A83224928D77888AE3CA5A1030ABB992C6449C4517ED5A8BB3
          2A1AF3B3633726115CD5C72179ED8707083C5B5A3E93459DB99FFDEC6741C7E5
          26F4B0136440CE43265C256D24B28805D1A72E97323B52C8918565CC046C84CD
          E3CB35A6B3686C30C3B081C4A4B848B9889A1021D0856461CF55F32B3E6B6DA0
          E161CE1B3ACBF44C040B3DD7BCE63563B7DD1749D084CD5F1720650C4415CCCD
          8FD94305EDE1C1DCB2E3CCDFD29DBE9D455347FCD610F4725DC4FB844D0EDABE
          CD2D9F1BB3D656DF9078725BCFCF92A032D5123197F3F39FFF3CE8B8E21AD7B8
          46ECB6FBC2644846CAD861ADCA62811680247AE4C83833766316007C2AF0DB13
          27CEA1E177D8D9FE69A4DF4B0131E731979E16BB31894089873D3C3F5BDF742F
          D7FE5E76FCDDF67ED7CFCAD8359EDF81F3F2CE9EE73876B98BCEFCE217BF083A
          AE38ECB0C362B7DD072E148B0F192FD5D94E1993AE75B9142565C46C4BF4EBD8
          BE53A922798A7CB52038339F6FB60E4F2F2AFF170DAFB5BD6E2CDF615AFEF665
          D9F3B82CB459871F7E78D07139083DDC9CD89EB1F3FF3176639485449D9A9579
          414A7F8C5DD22075C49FAC0D04074CDD7DF9BBB409325D841E9FCF62B29F34B4
          473677C947A9050B3D57BFFAD563B7BD0DD48ED85993CD0CA9CC3D557B3F09BB
          34819B922344C831E193693C697F8D4850736D8796CF50236E2976436784B96C
          3BC77B2817C62E3E1CC411471C11745C71B5AB5D2D76DBEBA0D9117B3E5229D2
          37BB125D689498ECB4F2B88A9986F66A524C2547F63753277104F7458952EB02
          02CF410DEF939D98E8ADDCFB0E816717B3BAD6CA03D33D7E5E49E7E7118E3CF2
          C8A0E38AAB5EF5AAB1DB5E059B2A0ECB5C0C841EC22A51B31D6516C7C9504917
          C9E1B168650A94FCC1391C5F1ECD32DE0C1B9B9D1CEF2D99A9A6474980A38E3A
          2AE8B8D4841E7622BB585ED7C8192505C4A9991DD151469D9A953C10F3ACE45F
          D10DA41B52A3B0B1A1CFAA9A10FA8E4837EDBB4408167A0E3DF4D0D86D17C47C
          60833C12A8157591516223A1AD1AEEABE402E395718B83EA5F62374651FAE097
          BF0C0B3E2C0E39A4AD0CC7284829FB6D1A3E43E2B0536237545978249A901D21
          77DD1089DD30F3EE50FED679C62F19274EAA2C6E385BB333C507EE0CCFF661E3
          C7FCC12EF69C8EE7C4714404618ABEAC3C5EB5B2E9C058C279398BD2028AE2CB
          D14787D5052E0E3EF8E0D86DBFBC1D66EAB07C8586CFE8CE5A490549578F5FCF
          AF7AFE6E040876E5EB2BAF21BCB060B954EB6C1626662A1C9D557E0E87554CC5
          279966A189CCBC84E44B582B820B111C3EF7DAEEE56FF05934081BCBF65F56FE
          AE9A02E2A3CECB0AB08162532441423CD81865EB9B78CC31C7041D978AD0034C
          DC52D9BACEB9665AF555515241C25B1997E7F6F49D4D265E040B5736729CFFC9
          615577B244EB830045A2319B6918A1E54A8EEF6C2B428976883A3E087DF5688F
          899946BAE45E9C3177643C6941D1E140C3C9BDB05C799C6FD213F8C5C459E768
          93788D2D17C142CF41071D1474E0403089EE69795D136929A9413A05760C6838
          A42E5735DD429D65D33E11A2ED74A589478838D2F21D227CB8F2584DCC743757
          DFD1D14E36199B1CC7B585E633813259DA1286B281D9BF6C5316E1AF73086311
          B316E353739C0D87AD565C6A56094C9C38EFDA140A59645FB671ECB1C7061D57
          1C78E081B1DB5E05A9792FB3BA78F0CCC4BA488500957C10211DD31342054290
          4BE8C14F0621A24908684A8E86A6C656051CF3127E35AE4CD17B95EDA9DF43DC
          6B2C8AEB1DC7A1FA6E0A8F4040C34FC4B51941C340D465F2995DE714AEFBDE46
          93690E89646AAF23F96EA0AA0132C65D1F6BD6F7AACFF5BFB9575D61F87C0EA1
          B82F6DF5681C775C98F1A7B8CA55AE1274A0A228970B0C38E0337120D4B46573
          6DCB9112A2E941E041F07269659894114CEA1A99364D0F0EC94D1A02BE9789D2
          56941081EA00A39A9E58704D199764D65513E330E0BF7668F96C43CC5CE02A19
          B15C7BEE42FD78DBEF0BDBB57C57964142C71F1FA6C054A1475166436A19F980
          D683882F9743296A7297EAD5B58015E53108537513D6B665DBF0BBB1F9F4B876
          AAC08C724EC3B988B0C577D727DD2B95AF9DDC703C6DDBB7E1FD738D26D17341
          DFD377CBB507D718C11A811313A34D4856FAA1E9DE01AE459702D96DB5B47C3E
          53389ED1F2B87CF7DAE6A46409167A0E38E080D86D57949C917A461B3C3FDF16
          3A8C10B54FE5FB58B4CE34CDD15B382C33A921F49C5D7E6E87F2BB4E35CD4EAC
          572A3FB7AEFCFF92F2181F9F84BDCBDF26BA4CA2B7D05421D060DA6A9AF05D89
          4805CEE168139657665DED7BAACFB9C342469E11D7EE1DAD1E4291660D5F0BF7
          1491973661B1AB7987B1CE7570A559E19EB36D086281E97D7BCBEB98C5CF88DD
          B8104E3821AC1A5071E52BFB14965514C501DA8E7D3A7CDEA74A33132A1394F8
          B4F92CFC1BCBB688B90A73D8E99EC772CC96B26D4CFE5DFC70D8455ED14C853F
          39BE4D606A8A52AB1212B5C977CB0EBCBAB06166A3C8E6107995C6C447B3C822
          7692C7772D1A8C8BDD1CEF8504CB20F46CB1BCCE5843604FC9978AF9847BAEAA
          05E27CB38D8AFED5AFC2B285A8D0A328E1B0CBC3AEEFABE511F08361011E6A17
          E8B2F30F89EF6F22C8D1679B3C3E0B5DC2ADD797DFBDADE3FDDC13F4F98EB790
          F344738440551512E1D2F2FB52D1588482E61333B0CB77865C565D4A74A03192
          CD4E7D2CE31F9362F0CD46B37581513637D9563908167AF6DF7FFFD86D57945C
          E9AAE5A9926D7E8C1969F385A883A68ABEF2598CDAAE478A3BF02EB4990405FA
          8A1D7C17CD4553E460B62690125F419B8DC81FDBBFEEAF010C4B663A96101845
          90004910AA0CC8AF7F1D16695F4C2693D86D57945C69CA7FD1040EC26830166D
          626C8B7871E1B3736641C3DCD0762DD01A2D99B57993DA226052C0654EB1D1C5
          C4857972D2F07E3DDD822DE7D472C7BFC7A429096715C9B9D516718879917B3F
          5BD3D03C70E28927061DA7428FA2CC862BA16613F8DB88DF4C7D21A84FB86D8B
          B3EDFDB605C9E737FB6A4335ED3D8B6B53A919171C7B64D96F362482AD2D6540
          FD7C6DE7B4DCF07AD3675DE7EFCAAF623BEEB296BF89EEB339A3DACECF57A385
          004AEA823693992BACBAA9AFBAE69871BDE6D3874DFF938DB8EADCDE445B6241
          B43A0795FD9BBB7F58D6040B3D7FF337BED1B68AA25868F323A94374148B922C
          20F5C9B86B98EA22C00E1C7F0B97FF41573F21B43DF870884962D96C6D9EB085
          019BDAFBA1C799DA7774F90DC60D424A9B36AB4B466016805D3D3E473B489B20
          C27A517B18C773D37BBEFD30CB77C33AE3AF5D6C8A7AE3FB88823AAB43FF2A03
          B1B4B414745CB1DF7E5DCCEB8AA258204CDB2722008107F5391A0B97E0D226F4
          84FC5F75322E7AF84E9BA056FD8DA6F759607DB415557C226B7C23C2B8063917
          DF6CCAE5046877C8BBE2EB544EBA055F81803C51BF8FDD0101905601A1B86DB3
          803F4F93FA008D11A632CD7F9400BFF9CD6F828E2BAE74251F53A7A2280DC80E
          B0CDDF22D745A34F300F1CDAE1F35D7C53483AD6663E63A63C337627CC88ADDE
          93D09654B20EB996F6F2F81C5A2684CF5C9DEF49E6B847C3FB68119B4C5698FF
          300322146557B2611E39E9A4B0AC0C2AF4284A3FD4F360D46132F571925C047C
          A390E82BB43217797C16103A0F69783F24EF4F8A604A65BC497DC26A08F21F3A
          7E974422B5697B520DC3F66543799E2EDFA53693206316EDCE52EC1351A6040B
          3DFBEEBB6FD0818AA2AC41F260D8B8D4649C13A3677C9D674316DA26810AA1F3
          BCD8279F18084F38E636997E3099A105C95D60675C5CD1ACF5476243D294370B
          EDE1C44C05702DA09B08BFFD6D58CAAD629F7D42D38C288AA20483A9A169C7D5
          253F4F153417F870D4B520F8F0A859622DE2EB423FBB4A5B2C7A490BFC9E4E37
          5A0B2E294E3EF9E4A0E354E8511425060824368766D138A05D8815128CBF0C91
          60ECEAF18FF1D1D071CCCE95F6FFC9F8090AEBCB633796E7DCC51F6756247FCD
          2FCB76EF685685441118312D2E72A412FE4EA4429807B3E85C112CF4ECBDF7DE
          B1DBAE288A9202081E13B3B593308208A95F9B6A9891A789E83184030435CA45
          EC5E1EDBA483472385F37535DD0142CF9219DE8C421BD1609C61F22ECD312408
          BE9861DB6AE5291138E59453828E2BF6DACBC7715F511465AE41AB816F8B4DFB
          84B68385CF268820EC20F490B1F8D2DAF7E15F84B6C756DAA0A94AF7D9E5F70D
          09291610EE08BFCE357C7F68180F08AE5ABC35417EF7BBDF051DA7428FA2284A
          7B283DDA109B4FC7C44C851A9B590A4D0113AC2DF74B5B69044C4E4DDAA559C0
          5C7390F1AF35B588E0BC8CCF19D7217707EEB92458E8D973CFAE19F4154551E6
          0E16B9031ADE77E50B9A9869FE255B58FDBAF27D5B641002CFEE0DBF3794F330
          3E44986C10A886D626E58A84B793D369911DB893E6F7BF0F4B79A6428FA2284A
          BBA6C795C76562A602912D141ED315DA025B39E8B6E83522D786F023914AF443
          6A9272470B8A6640B0D0B3C71E7B041DA8288A32473465D5C697E76863F7E921
          EF0B515B36AD09357E102CCEB0BCD754717EA8248AE298FB7BA399C15D20FC92
          6454CAC5288972EAA961B9328BDD77DF3DE8404551943983DD3DCEC755C18785
          0FF35453EDAF49F9CC2C8C533026242656840CCC542E9F90EDCBDFAB3A339F57
          FEDE10E1FA0795E7A8B5A3EC20F8E25C4E41D19CB34F2F04A79D16964941851E
          4551945558F81046100ED0EC2084F84437A1F1211A0A3F1E040AB435679A76E1
          02FF11842C343E083A7FF6382604B2112360A1913A7BE84ECC94DDCB07999755
          284C9C60A167B7DD768BDD764551947901A127B5681FA9A68E00F7ABD88D4914
          844FCC8D4B46337767C1E9A78725C82E76DD75D7D86D571445518603C75C343D
          98B5B476941D22F710564F9CF58B947138E38C33828E53A1475114657E91CAF3
          6D55C41719124C62FA23A24D9D97332158E8B9E215AF18BBED8AA228CA304841
          D190E2AD8B007D43441B02E199B11BA3F873E69961974B851E455194F944B23E
          0F95F3671EA0F8240EE8C7C46E88D28D60A167975D7689DD76455114A55F8806
          BB8671679256A6055FD1846941D10CF9C31FFE10745CB1F3CE3BC76EBBA2288A
          D22F382F33B9137EADCECB764842880F8F0A8519F2C73F86958D53A147511465
          BEC05C73A09996BF382B766312051307A62D2D289A29C142CF15AE7085D86D57
          144551FA819C3C14CB44BBA37E2A76C8984DDEA2DF1AAD329F2D679D1526CFAB
          D0A3288A323F6841D17670EEA644C8F1B11BA284132CF4ECB4D34EB1DBAE288A
          A2CC8E16146D87BC45F8F210D1A6397932E64F7FFA53D0712AF4288AA2CC0754
          89A766D8114673F208E4E1C19CB55CFE4DD15554042A14664EB0D0B3E38E3BC6
          6EBBA2288A321B44A45CD94C6B6B85AD06F3097DB28359150209E5D73E9A03CE
          3E3BAC6E6EB1C30E3BC46EBBA2288A128E38E65228F3D7B11B931012C556879C
          3C47C76E9C321BE79C734ED0712AF4288AA2E4CD7E2B0F8A2862D6D29C3C53A8
          9A8EB96F93E37D0A8B6AE456C6040B3DDB6FBF7DECB62B8AA22861905518E7E5
          53561EA7C66E4C4210C1B667C3FB0887246EBC3476439530CE3DF7DCA0E354E8
          511445C9131C730F2E9FC9C9A3CECBAB60DA224AAB70BCFF67330D59D7C48499
          122CF46CD9B22576DB15455194EE484151049EF362372641F637D3CCCB75100E
          F1E9D13C4619F3E73FFF39E838157A144551F2039F95C3CCD42FE537B11B9328
          84EF939DBAAEED39DD4CB3312B19132CF46CB7DD76B1DBAE288AA27463B2F220
          9D3ECECBEA97E206076F16B9A27CA0E5C1FFE992D80D5366E3BCF3C2949B2AF4
          288AA2E4051965F157F9F5CAC4AF054515A503C5E6CD9B63B741511445F1036D
          0539792E39FFFCF335D78CA27444851E4551947CD86BE5B1F7CAE3A815A1E782
          D88D5194DC28366DDA34FBB7288AA22843C3648D63EEEF561EBFFFCB5F34F848
          51BAA2428FA2284A1E505201D5FC912B8FCB54E85194EE14DB6EBB6DEC36288A
          A228CD10A975C0CAE38495C7E595162FB840AD5B8AD215157A144551D2869C3C
          98B5283674A2BCA8428FA274A7D8669B6D62B7415114457143D665B22F63D6BA
          505EBCF0C20B83BF50511615157A144551D285446A879A6906E1D3AB6FA8D0A3
          28DD29366EDC18BB0D8AA228CA5AA4A0E8BA95C72FEB6F5E74D145B1DBA728D9
          A1428FA2284A9A4841D163CDB42AF856A8D0A328DD29366CD810BB0D8AA2288B
          0E35A2765C795C563EA811754533AD047EACED808B2FBE38769B15253B54E851
          1445890BC9D2AE6AD65603078A8922F4AC49CAA3428FA27447851E455194B8EC
          BFF2D8A5E1FD3FAC3C96EA2FAAD0A328DD29D6AF5F1FBB0D8AA2288BCACE2B8F
          2B7B7C6E8D5FCF25975C12BBED8A921D2AF4288AA2C40135FB212B0F9F0CB108
          3CC79BA9BFCFE5A8D0A328DD29D6AD5B17BB0D8AA2288BC8F6661A92EE0B42CF
          39F2CFA5975E1ABBFD8A921D2AF4288AA2C401C7E583CC54F869E3FC95C77166
          EAD87C392AF4284A7754E851144589C7163335713541F8FA31662AF8FC15157A
          14A53BC50AB1DBA0288AB2C8B4456F517EE2B7F5172FBBEC32A3284A3754E851
          144589CB6633CDD363036FE5A3CAE7AD50A14751BAA3128FA2284A7CC8C84C14
          576156E7657C0F705C3ECB76C0F2F272EC362B4A76FC7FD58026CB8DE1A3CF00
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
        DrawStyle = idsTopRight
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end>
    Left = 368
    Top = 340
  end
end
