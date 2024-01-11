object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 485
  ClientWidth = 900
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
  StyleElements = [seFont]
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BorderPanel: TscGPPanel
    Left = 0
    Top = 0
    Width = 900
    Height = 485
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
      Width = 900
      Height = 107
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
      FillColorAlpha = 150
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
      TransparentBackground = True
      StorePaintBuffer = True
      Sizeable = False
      WallpaperIndex = 0
      WordWrap = False
      DesignSize = (
        900
        107)
      object scGPPanel4: TscGPPanel
        Left = 0
        Top = 0
        Width = 900
        Height = 34
        Align = alTop
        FluentUIOpaque = False
        TabOrder = 0
        OnDblClick = scLabel1DblClick
        OnMouseDown = scLabel1MouseDown
        OnMouseMove = scLabel1MouseMove
        OnMouseUp = scLabel1MouseUp
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
          Left = 855
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
          GlyphOptions.Thickness = 1
          GlyphOptions.ThicknessScaled = False
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
        object MinButton: TscGPGlyphButton
          AlignWithMargins = True
          Left = 765
          Top = 0
          Width = 45
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 4
          Align = alRight
          FluentUIOpaque = False
          TabOrder = 1
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
          GlyphOptions.Thickness = 1
          GlyphOptions.ThicknessScaled = False
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
        object MaxButton: TscGPGlyphButton
          AlignWithMargins = True
          Left = 810
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
          OnClick = MaxButtonClick
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
          GlyphOptions.Kind = scgpbgkMaximize
          GlyphOptions.Thickness = 1
          GlyphOptions.ThicknessScaled = False
          GlyphOptions.Size = 13
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
        object scGPGlyphButton1: TscGPGlyphButton
          AlignWithMargins = True
          Left = 685
          Top = 0
          Width = 30
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 4
          Align = alRight
          FluentUIOpaque = False
          TabOrder = 3
          OnClick = scGPGlyphButton1Click
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
          GlyphOptions.Kind = scgpbgkHome
          GlyphOptions.Thickness = 1
          GlyphOptions.ThicknessScaled = False
          GlyphOptions.Size = 0
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
        object scGPGlyphButton6: TscGPGlyphButton
          AlignWithMargins = True
          Left = 720
          Top = 0
          Width = 45
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 4
          Align = alRight
          FluentUIOpaque = False
          TabOrder = 4
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
          GlyphOptions.Kind = scgpbgkHelp
          GlyphOptions.Thickness = 1
          GlyphOptions.ThicknessScaled = False
          GlyphOptions.Size = 10
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
          Left = 10
          Top = 3
          Width = 672
          Height = 28
          Margins.Left = 10
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 5
          OnDblClick = scLabel1DblClick
          OnMouseDown = scLabel1MouseDown
          OnMouseMove = scLabel1MouseMove
          OnMouseUp = scLabel1MouseUp
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
          ShowEllipsis = True
          Caption = 'StyleControls VCL - Fluent UI - Pages - Demo'
        end
      end
      object MenuButton: TscGPCharGlyphButton
        AlignWithMargins = True
        Left = 2
        Top = 44
        Width = 65
        Height = 60
        Margins.Left = 2
        Margins.Top = 10
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
        TabOrder = 1
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
        DrawTextMode = scdtmGDIPlus
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
        Left = 308
        Top = 43
        Width = 301
        Height = 62
        Anchors = [akTop]
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
        object scGPCharGlyphButton8: TscGPCharGlyphButton
          Tag = 1
          AlignWithMargins = True
          Left = 10
          Top = 0
          Width = 70
          Height = 62
          Margins.Left = 10
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          OnClick = scGPCharGlyphButton8Click
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
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDIPlus
          FluentLightEffect = True
          Layout = blGlyphTop
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
          Options.ShapeStyleLineSize = 50
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
          GlyphOptions.NormalColor = clBtnText
          GlyphOptions.HotColor = clBtnText
          GlyphOptions.PressedColor = clWindowText
          GlyphOptions.FocusedColor = clBtnText
          GlyphOptions.DisabledColor = clBtnText
          GlyphOptions.NormalColorAlpha = 200
          GlyphOptions.HotColorAlpha = 255
          GlyphOptions.PressedColorAlpha = 255
          GlyphOptions.FocusedColorAlpha = 255
          GlyphOptions.DisabledColorAlpha = 100
          GlyphOptions.Index = 448
          GlyphOptions.Margin = 0
          GlyphOptions.Size = 24
          GlyphOptions.StyleColors = True
          TextMargin = -2
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          ShowCaption = True
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 1
          AllowAllUp = False
          ToggleMode = False
        end
        object scGPCharGlyphButton9: TscGPCharGlyphButton
          Tag = 1
          Left = 150
          Top = 0
          Width = 70
          Height = 62
          Margins.Left = 100
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          OnClick = scGPCharGlyphButton9Click
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
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDIPlus
          FluentLightEffect = True
          Layout = blGlyphTop
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
          GlyphOptions.Index = 192
          GlyphOptions.Margin = 0
          GlyphOptions.Size = 24
          GlyphOptions.StyleColors = True
          TextMargin = -2
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          ShowCaption = True
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 1
          AllowAllUp = False
          ToggleMode = False
        end
        object scGPCharGlyphButton12: TscGPCharGlyphButton
          Tag = 1
          Left = 80
          Top = 0
          Width = 70
          Height = 62
          Margins.Left = 100
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 2
          OnClick = scGPCharGlyphButton12Click
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
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDIPlus
          FluentLightEffect = True
          Layout = blGlyphTop
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
          GlyphOptions.Index = 513
          GlyphOptions.Margin = 0
          GlyphOptions.Size = 24
          GlyphOptions.StyleColors = True
          TextMargin = -2
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          ShowCaption = True
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = False
          GroupIndex = 1
          AllowAllUp = False
          ToggleMode = False
        end
        object scGPCharGlyphButton13: TscGPCharGlyphButton
          Tag = 1
          Left = 220
          Top = 0
          Width = 70
          Height = 62
          Margins.Left = 100
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 3
          OnClick = scGPCharGlyphButton13Click
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
          CanFocused = False
          CustomDropDown = False
          DrawTextMode = scdtmGDIPlus
          FluentLightEffect = True
          Layout = blGlyphTop
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
          GlyphOptions.Index = 19
          GlyphOptions.Margin = 0
          GlyphOptions.Size = 24
          GlyphOptions.StyleColors = True
          TextMargin = -2
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          ShowCaption = True
          SplitButton = False
          RepeatClick = False
          RepeatClickInterval = 100
          ShowGalleryMenuFromTop = False
          ShowGalleryMenuFromRight = False
          ShowMenuArrow = True
          ShowFocusRect = True
          Down = True
          GroupIndex = 1
          AllowAllUp = False
          ToggleMode = False
        end
      end
    end
    object scGPPanel3: TscGPPanel
      Left = 0
      Top = 459
      Width = 900
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
      FillColorAlpha = 150
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
      TransparentBackground = True
      StorePaintBuffer = True
      Sizeable = False
      WallpaperIndex = 1
      WordWrap = False
      object scGPSizeBox1: TscGPSizeBox
        Left = 874
        Top = 1
        Width = 26
        Height = 25
        Cursor = crSizeNWSE
        Align = alRight
        FluentUIOpaque = False
        TabOrder = 0
        GlyphColor = clBlack
        GlyphColorAlpha = 0
        GlyphThickness = 1
      end
      object scGPLabel1: TscGPLabel
        AlignWithMargins = True
        Left = 3
        Top = 4
        Width = 868
        Height = 19
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 1
        OnMouseUp = scLabel1MouseUp
        DragForm = False
        DragTopForm = True
        DrawTextMode = scdtmGDIPlus
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
    object ClientPanel: TscPanel
      Left = 0
      Top = 107
      Width = 900
      Height = 352
      Align = alClient
      FluentUIOpaque = True
      TabOrder = 2
      CustomImageIndex = -1
      DragForm = False
      DragTopForm = True
      StyleKind = scpsPanel
      ShowCaption = False
      BorderStyle = scpbsNone
      WallpaperIndex = -1
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
      Caption = 'ClientPanel'
      StorePaintBuffer = False
      WordWrap = False
      object scPageViewer3: TscPageViewer
        Left = 0
        Top = 0
        Width = 900
        Height = 352
        Align = alClient
        FluentUIOpaque = False
        TabOrder = 0
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
          Width = 900
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
          Width = 900
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
          Width = 900
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
          Width = 900
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
          object scCheckBox1: TscCheckBox
            Left = 27
            Top = 20
            Width = 205
            Height = 35
            FluentUIOpaque = False
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
            Checked = True
            State = cbChecked
            ShowFocusRect = True
          end
          object scCheckBox2: TscCheckBox
            Left = 27
            Top = 61
            Width = 277
            Height = 35
            FluentUIOpaque = False
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
            Caption = 'Fluent UI Acrylic Color InActive Opaque'
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
            Left = 27
            Top = 102
            Width = 133
            Height = 35
            FluentUIOpaque = False
            TabOrder = 2
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
            Caption = 'Show wallpaper'
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
          object scLabel4: TscLabel
            Left = 27
            Top = 153
            Width = 28
            Height = 13
            FluentUIOpaque = False
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
            Caption = 'Style:'
          end
          object scComboBox1: TscComboBox
            Left = 27
            Top = 172
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
            TabOrder = 4
            StyleKind = scscbDefault
            ShowFocusRect = True
            OnClick = scComboBox1Click
          end
          object scCheckBox4: TscCheckBox
            Left = 274
            Top = 20
            Width = 184
            Height = 35
            FluentUIOpaque = False
            TabOrder = 5
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
            Left = 274
            Top = 169
            Width = 150
            Height = 35
            FluentUIOpaque = False
            TabOrder = 6
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
  end
  object scStyledForm1: TscStyledForm
    FluentUIBackground = scfuibAcrylic
    FluentUIAcrylicColor = clWindow
    FluentUIAcrylicColorAlpha = 50
    FluentUIBorder = True
    FluentUIInactiveAcrylicColorOpaque = True
    DWMClientRoundedCornersType = scDWMRoundedCornersDefault
    DWMClientShadow = True
    DWMClientShadowHitTest = True
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
    OnChangeActive = scStyledForm1ChangeActive
    OnBeforeChangeScale = scStyledForm1BeforeChangeScale
    OnChangeScale = scStyledForm1ChangeScale
    OnDWMClientMaximize = scStyledForm1DWMClientMaximize
    OnDWMClientRestore = scStyledForm1DWMClientRestore
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
  object scGPImageCollection1: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000023E000000E10806000000C8C5BF
          7F000000097048597300002E2300002E230178A53F7600000A4F694343505068
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
          D0A7FB93199393FF040398F3FC63332DDB0000BD184944415478DAEC5D079854
          D5D9FE66FB02CB2ECB020B2CB074E90A41458D890D35768D06EC8A3D519398D8
          35468DD8639A8AF8DB6BECB160C35EB022BDC32CBBCB02DBFBCE4EFBCF7BE69E
          E1CEDDDBA6DDB9333BEFF30CECD47BEFB9E77CDF7BBEEAF0FBFD64251C0E87A5
          C74BC31E78FED967D45ECE638FBE2AAF8B49D9C61EDDB13E97850BEFECC7FE1B
          CE1E1B123D2EA98AEBAEBB96FFCFC67A04FBCFCD9EEF4CF439A591461AF646B6
          C34795AEFE744FF501E4A50C72507CF889234D7CD2B0021AC4672405C88F163A
          D9A3321EE7C314F268E9F7D30A390E00F161635CC8FE04F159C39E5B2B68D248
          238DA4439AF8A4915250213EFDD9A3D4C45777B34753ACCF8729E51CF6DF54F6
          58C11EDE448F4FAA41223EE3D89FB5ECEFE6449F4F1A69A4617FA4894F1A2905
          05F1C9648F51EC9165E2AB1EF670B2872FD6E7C41433DC5D989055891E9F14C4
          10F62860A46773A24F248D34D2480EA4894F1A290505F181522C0CE3EB0DEC51
          17EB7362C4278302561F28E78E448E4F8A01C47606055C5CAE449F4C1A69A491
          1C48139F34520A32E2031713627B32C2F83A266905C527D0B9840201D615091E
          A25442197BF819E9A94EF489A491461AC98334F14923A520111FDC7CB897FA44
          F013C8F0DA11EBF362C407E7B4177BECA28065298DE8808CB931ECB19A119F98
          BB27D348238DD4459AF8A4915290597C407CFA46F013EDEC11170B423ABD3DA6
          40B65C33233D691299461A69848534F14923A520233ED914086C0ED7D5B59D3D
          E2162FC2C8CF580A5895762568885201701B0E64A4274D20D348238DB091263E
          69A41414C1CD83D9A3288CAFC725B8590E467C72D97F53289DDE1E29B0B0F761
          8FF58CF8A403C5D348238DB091263E69A414EC98CEAE8494DE0EA48372C3C730
          F6C862A4677B94BFA3ACE68DFBDE98E88B4B238D34E28F34F14923A560B70286
          6A60C407840CE9ED1B2950D5390D73C8678F0914485FF744F13B707F22E32F47
          F13A88687BA22F328D34D2882FD2C44703D3A74ED57DDFE572D1CF7E368B4E3E
          F964EAEE8E79F6731AB105AC3EB9069F89BB9B4B80111FFC3788028A3C5ACB45
          6F02C84A27233DB551FECE000A8CBF1288EDC2FD48B7BD48238D14469AF868C0
          88F8B8DD6E2A2B2BA3050BCEE7CFADBEBE48E0F3F954CF13639591114E0C70D2
          41AD49A97C82C02A8401408D1D77BC4F46223E22BDBD862CB23425398A295090
          727D94FDB88CDC9F20BFBD3153AC8002630C607CE1FA43007E2CD703D61862EE
          1CD231E40F04FCEBC5BC89EFA49146D448131F0D18111F90883E7DFAD025975C
          4C7DFBF6E5CFED0A4E78D8A36FBF7E94CFCE597E2732D838757474505B6B2B27
          3F294E80B4803473C48EC4A5868F1212F10140B8A0CC37257A0092001329E08A
          6A131DD9238411F18135299EB13EA5D23908858FFE62890ED2CE90C6245BF17A
          2B058879AC30507AA8A1857A36F285101F263B2F9C4F7D42472A3981FBDB4FF6
          1CE3D8AB49649AF868C088F8001E8F87CE3CF34C9A38713C7577C7DD50103684
          85078467C8D0A13468C810CACACE86792A649C60BDDABD7327D5B2475B5B5BD0
          14E2977D2604ECFBF1B89B205D91DC37AFD7CBBF876F3A22276E10B0100E718F
          F390111F000D362188D2E9EDDA184A01ABDD363C8992F80068633244E5F52EF6
          A8A4F8290535171BFCE455B2632AFF97235EE785F200C51AEF6D97C6255A80BC
          C05599A9F1BE5AD5F462E9DCE49FA98CD1F9F42628B35BE34DEEE5C0E62E4FFA
          DB6DE1717591263E1A30437CBABABAE8B0C30EA3B9738FE07FDB053E460430DE
          05858534ACAC8C060C1CC8098F785D6DAC323233C9C30850DDEEDD54BB6B1765
          B2E7780D9F777777877C2F9BFD16DEA318DC533FED71B535D6D7F378291C5BEF
          FEE15CF883113B9C0708DDE0D252AA743AA9B1A181B2B2CC2471F50004338AE2
          41F03AE3797F14C447A4B72FA75EBE0BD3000290313EAB4972BBC480F86855F6
          06018997F505D7318A425DAC0270F17854DEF3534F178F5FE5335A9F57FB9EF2
          7F7CBE40E7BC6365F5111B0B3DC88F85453C5A654C2CB1CAA610205F4038E5E3
          08F704DCB9F19037CADF1CA438B62D1208D2C4470366880F2C25E3C68DA3B3CE
          3A935B1DAC00272FE289DC7223B37414F4EF4FA5C386D1C041833889D08AED51
          1B3310107C5E3E7ECAEFC623630EBFD9D1DE4E35D5D5545F5B4BDD2E57805CC9
          AF1D44879D5F6E6E2EFFBF4FDFBE3494113B103CB8ECBA3A3B69C3DAB5D4D2DC
          CCAF3B02889D515C33BC14C407806082E24B0BF49E184101C2137483C480F800
          B02640E1B748CFA10C9AE3781D43499B60E0D8B064408888C5255F640E93FF1B
          7D46EB3D04D96B5539DF291BA34851205DBF1908F20981867BAF4C4AA8A7B4BB
          2B1C68593731D7B15B8FA53057FE162C9CCA5D283696B022263436244D7C3460
          86F85816E7C3C6CE2B91119099FE4CD18368B9A56C32BC0E658FE38F18358A8A
          4B4A8204261982AE05B8AB8B3DBA3A3A68475515D5EEDECDAD3AB83EE1B22B63
          D7D78FFD8FCF65C2B2C35E17E38EEF7B3D1E5AB77A353535364662F981B02DA7
          38073AAB101F9C28AC1AE9F4F650406843F9AD21D94E3206C447C4F9C0BA60D5
          786B292020D1D964987FE5D4B3CA390848550C7E1FCD64CDF6CDEBA23D998E70
          918C94BD0762B83581E3948C8022C45C97976EC09CAFB4E0D86A05645DD2B1D3
          C4272E07B480F80081389F3368E2C4097189F301C181F56220233388D3E95F54
          D4238E05570AEB1300656F95F5295EC0F5710B4E5757C0FA24BD9E939B1BB460
          016A730AE4078470E3DAB5D4D4D41489E547D4FD510BB68C0954880F904E6FEF
          09C43F211E21C4121303E203818C451497FBAB01908B312AAF6312835C249AF0
          22E85828292C399F745EB1A8D5118EC547197F02F79858C4204F7075B52678AC
          920DB0E6C963A5104F68456C861AA18E9B5C0D0769E2A301B3C42710E77328CD
          9D3B37A6713E202F50E2038A8B69F8C891DCCAC3734C35488DB8DE64B2F01881
          5F93D2E566E2FA84E567EDAA55D4CCC84F98961F1C105606EC366315D819020D
          E283E3C2EA83DD503C5D2EC90210415849362BDF8892F820960BF13DC2B56415
          4AA563635EC98513947CB4758962054130449C502CC7C78CD5C7C81281850CAB
          192C75F64DA34D430E6C24F3A5BFBBA5BF21DF121AE793263E1A304B7C108C3B
          61C2041EE703EB4FB41081BB08D6459C4EBF824058809DD3E5ED08901FDC9B4D
          EBD671B75798961F61628F4B968F06F101A0E8A1F0379BFFB59484E8C7B58E54
          2C2151129FE1D26F5A59AB07C21E56265850407E32684FCC0DDC49BD6171AB05
          D92A6166A301AB14089025C546D38839E07283F509E43561BBF434F1D14038AE
          AE929212BAE8A20BB965219AEBF44BF12AE563C6D088F272FE779AF0440E79CC
          0FB2BD78A69AF974F7B8053AEB101F603C05AC00BD59B0F37E5CA4E1F68B82F8
          C06D0262E924EB84AE88B140406E6F77D1C05A53A8F19E591788C8C8C37826DA
          3D6847608E0F90FE86F2C0985A65D9CCA03D6E2D1C536B8D0D94DE4F58E1D634
          F1D18059E283EB8232BDE08205545A5A1AB1D587931EF618C5080F484F1CE374
          B0E354667820E02C757C64323824F28334FD5D3535BC50A349EB8FF04F437820
          D0396637C480F8C01D808ACEBD35BD3DD88F8B02996E3D1021F1112E4C587ADA
          2CBC1EEC6E61418C459070B203B126202D7073202851C821CC73107DB36B0CE3
          09E51ECBE28AA900C8AC91149A4905B7D26E0B8E0DC2837B2B82A861B943EABA
          9A0C830046CC57AC2B839B469AF868C02CF101D0B70B3DBB66CFFE19FF3B5C08
          92533E762C958D1C194FD2232A05F32192BD8E0998B27125F23A453B2A2B79BD
          9F0C73E447149C8B691C8601F1017A737A3BEFC7453AE31D21F181F50EBB612B
          098850447097EA0978280B280E0F69903D1588362C98C8103A462D1FE480DB09
          EB1F3117569A9461C903B1DD1683E30E92CE3F65E55604D02A440977AA513B10
          81481535E6B0B2F4805EA144C47060939790C2AD69E2A3817089CFAC59B3E894
          534EA1EE6EF3C447043023451D313D450306C4D3B5A555961E80B0DD4EE6856E
          2281EB801B0A02DF217B40F0EBC66D883A45EB56ADA2FABA3A33961F6125C082
          8E59C55813C4070A1313702DC526AB265910ECC7453A023802E223080888A495
          95468DE289A02C3097410630D7A09CE0F2811B474F109448DF150A2D47FA0D23
          F70F8812DC0CF24ABA703758514D57587B700F626171C33D85D5602725C86A60
          43A8954CF03299579995956524DB2356986EB71BFA5D69690220BB602DD75ACB
          3857CC77CB5D9669E2A38170880FDC5B43860CA10B2FBC802B56A36BE584879D
          5FD1C081BCB27221233C0EA278A7A1EBF5C9016C916618C57560D041DE749927
          EE0F7A93AD5EBE3CD8EAC200D895202305E6F9EA585C8009E203882C202BEA6D
          D805C17E5C7A1F8A80F8C03A00966BE5FCC68E1604C549DAE67E90EA1C95F740
          46B4DC13B05C81E428DD3C20E7502420166A4A4EAF72742C8A14EA019B155461
          EEA4D85A31136A35B029463019979F91E1E009B08CF0EC6A6D6D6DDEBA751B7B
          0E2E1DBB7A85D073B9B939347AF468CACBCB1DD4DDED1EA0F80808BF5EAC22E6
          2CD6A6964B2C6E48131F0D84437C706D38DE79E79D4B43870ED58EF391E28106
          0E1ECC33B690A28E746D5FFCEBEE6815285302C254A419865B2D56AB52ACD17B
          A4F1B7DA6B9844FD487BF59A22270842AFAEAAA2AD1B379A8DF7115577313E51
          07A89A243E22BD1D642E9E4AC92E08E9C7A58730894FAEF4DB56A6AF8BAAC330
          F56BB5C050EBDB25E097C6412948302740C2B5AC1C25D277D52A1BEB0516E3B7
          9C143FE53348BADE6D147BEB0CAE0B6B32D18D5EA3065A0105F456A4B7818BC5
          ECA6A6A67C97CBE567B2CD575555DDFEE9A79FD2AE5DBB62DE805AE8F4E1C387
          D39147CEA5F1E3C79777757509228FFB0CA26BB4D9C09C152D342C439AF86820
          1CE203A0B9E7C5975C4CFBCFD99FBABAD48D0EB0F20C2A2DE5161EC002C22310
          4E0131B59E4114C66B805EAF20ADBFFD2A7F2B9F637767C4540C77AF981B7029
          AEFEE9276A67F7CD844080E505BB652C502745199F6092F800D8DDC3BAB5259A
          E325017AF4E3D24398C407440102D8CA360750F4D86CE805DFC2A2D75FE77DB5
          BE619887708D69917BAC8F428DE3C21591A7F13DAC2D27C5C765847B5B4EF16B
          359130AB41AC00F9D3DADA4A4B96BC2BB50B8AF4970215EE77EEDC99C708482E
          E45C67676706FE8FB07FA129B85CDD949F9FE73DF1C4133AA64F9F9E094B3ADB
          FC43B9417E4119EA6D16217CB11660B5B34C2182F854BB0AE8AEEA03D3C4478E
          70880F5C2707FEFC20BAE1E69B292F2F8FB797503D27DA93B26E3130B920F872
          743E03A1274CC666894BB89F238DE76600C2339A8CAD56586815463F0641B073
          C70EDAB47EBD59AB8F70B1452DC0C3203EC044E978A99CDEDEA31F971EC2203E
          882B8152D48B338835E0861A261D532FAE425841B480EF2B775099D26FCBBBB9
          CB218AC5A9B97EF49A8442E138293E8A47D4EE89674B8E62E9B76DD1F93B5C40
          57C14BF0D0430F73CB4C9424258BC9B37246A63244C6B115F0061A60D74C9D3A
          B5F5F0C30FA3E2E262C4FE88EC2D1071BDB965B9CB323FC3434B9B46D333B5D3
          2937237EA1AD294B7C50246FE0C081F4EF871FA292C18379734D9B4204176A21
          DE7EFE6821CCFCF9069F3395A106B2831477343535291C62D6C72B4CE293EAE9
          EDAAFDB8F41006F181D20569B4B24A2CE62862948C6A94C052314AE33D79BF2A
          25864AD7A3B65671EC468DEBD5B3FA62BDC443E98863C6B3EB3D00D9006287B8
          A8A40C74CEC9C9A1FFFEF725FAE9A7153C6E260A084BA2512661AC51C6747CA6
          CBE5DA565858E83BFDF4793462C448901F907B582A8D52EAA19B3077E3EEB20C
          C44DF8E9DEEA03688B6B00E538E267684A49E2C39B80B2C75F6EBF8D0E3AF860
          EAECB0C4CD8CED00488CD215D44E0AC5813110E3205999B4FCFC41412BFF8EFC
          9ED9A4158651F5572C74C31811006407ED2CD6AC5811CEAE485E8724E240E730
          890F0005890C8954AC5BA2DA8F4B0F26890FAC00208D56A6AF879B322FCA4BC8
          E7B3B8CF5A3B2828915269BCE042F04BAF89A2707A6517D4AC4CED149F1610D8
          ED9753409159316F31EE18CFA42C01919B9B4B9F7FFE05BDF3CE3BFCEF082112
          3112D10645C8C67A467EEA11F7B360C1F9DC7AC5740FC82F6278F4AC02B868AC
          D9B8CF95DC0C2FFDD43E84FE53B32F65C791F40029497CDADBDBE998E38EA5EB
          6FBA89FF6D11B4C88BAAC5C6E37133C59EC9BBC7BBBABBB37C5EAFD8F5F964FF
          3767666676A00928C81BEADD381C1994959D154C01E755A9C5D812498D52FD94
          C13E170C3B66FFFB7DFEC0E7A4D61B0272179F5FE53DE9EB66DC806A1D7F833F
          458185632A5D16D78566A6E8021F464B0B2C6E2C72109F886E7A04C4078A0D13
          125691544A6FC75C865520AC161D26888F50BAB84756A5AF634302820AC51B4E
          7A6EAE340638675197C6681188B2FF814518F81F04C38C0B16CA512408E03C05
          798A35706F4144D04DDDAAD80D10C236B2B640654C80C066A7D3494F3CF164C8
          E6334C88D21B4E4A4C6912C846CC2F67575797FB98637E45071F7C307A58C24A
          0F996D446A2CA9CD9497E1A1E76AA7D1FB4D63293F23BE46B194233EF0C91614
          14D0BF1E7A884A879606BBA3C71982D1AB01275071D2B1C7A5748F8BD7DE7A33
          431A03087FB9D54B5483C5AEC1C9C6C1A3F2DD90E7203E5D9D9DB4F2C71FCDA6
          B603C24581DD4B44710B11101F40A4B727B24CBF9B626B3E870B0F642E2CFFB0
          09E23358FADF8A8AB502B83F3E8B8F09B2250A1FDA69DD43D18DA038B47B3131
          1EB8F73B6D361E86106536162D7A8427CA44109B236AF824B2182DE453397B74
          30795ADDA74F1FBAF8E28BA87FFFFE90AF38B72E837313316C71ADCD04E2F374
          ED74FAA86934FF3B9E4839E2D3D6DA46679C7316FDF68A2B786690053013A0DC
          C0147E2A07C17248E447DC603EB140F8D8EB78AD9C3D3AD8F35D2ADFEBF15BB0
          F4A09273C5B66DE1587D84CB40AF32A92622243E22C6C99A68457564937A01CC
          4881B10BBBB68E01F1013185F00429B5CAD2209A9022AE22A9146E9C604540B3
          16B02E4180ECD2F1DE14849507161F587E60010A03C2C209B2B03D9C2FC601C2
          22BFDDE57275EDB7DF7E74E28927A0C82FEE09C88F915B155642ACE1B8DD3F90
          1D04352F4D139F9ED0233EB0EE8C183992EEFFE73FB8D527165DD94D00968C12
          83CFF0227E4CE92B77D0104483283280A5274A987792B6E0841B43CDAA233AAB
          57B271E854BCD7E347304F303791DADED6D262B69585A8828DC5AC566F451711
          129F342418101FDC7BB86FACCAF01164BB8ED24D4801519F482D2BCD2AC0E582
          9892A46A628A00E7975E7A99962F5F1E6E9C8F685511EF2072331049205E2657
          B733DDE83FE38C3368D2A4BD900804AB14189DD1E61CE118B014C6E5FEA5898F
          0EF4880F4C92C79F74225D7DEDB556C6F618555E16A8620A5F3EF9A3CD0A0291
          4894954194F25702562F3014D5AAC68CE0944AE70DD79F5FF6BAEA4160E969AC
          AFA7B5AB5685636216A665BD2ABB69580BC45E410958696918201D37DD8434B0
          1140C909C41A26B29A32D63EAC0EC950893E08909D2FBEF882DE7E3BAC0067E1
          5E8222B24B6037AC3690C1BBDD6E7713029DD1C49B023C00A414D61C3D520CB9
          5F2C5D4FCCD7719AF8E8408FF8200078EEAF8EA6EB6FBC11815B565D925EAF2D
          8116A6E8958B7D320514732AB9C07073F7218DF810467044CD9F7A361E8DB2D7
          357F108467FDEAD5667B7809208E018B14042CA976972908CC09587BF4AA25C7
          1A588B703F82F424651A758C819D3A0F6E250B8BD169002E1704CA5A19631415
          220C7016253EC2B63CC71942576D75B95CBE134E389EE6CC99136EA0B3E82517
          53A4898F0EF4880F0262F73FF000BAE3AEBB22EAC61E0590FD0126AD76711034
          158AA05EB06610801FAC3C498BA09B11C4488E4815DE26C6C488F874B4B77397
          571881CEC2AD06F60BF2638B9CFF5E0ACC75585EACEC6D86DD2B946B52C593C4
          0922F122266D5D6200EC5E4496172CC43C699402996F56AD53986D443CA26162
          80A8E0FCC8238BB957C184F53991E9EB66CFAD81C9D3BA7EFDFA71AB4F515111
          4243404AB139D10B8EC5FD13C1DA3125D169E2A3033DE283A8FBF9679E41BFBD
          E272EAECB074A38FC93086D489CF2EA6E0E511F35835B808A493265D7AA7498C
          A7C0C2D02CBCC8C84E191B972AE96FDD1F43CA7E6545056DDBBC399CEAA9A260
          98DD0B40A632B02EB0C3C47DB62ADD1F29E170AB595915DAAE803CC2060B636F
          27979F5A16AC55EB54D914D6300B1444A7ADAD9D162F5E6C26B34B583831F79D
          64CFA07A517AA5A2B3B3D3B5EFBEFBD2AF7F7D0AAC3EA216155C597AA406DFC5
          E652E8355C63D4EB3B5FCAEA4A131F1568111F0432171616D2BF173D4C252525
          5605360B88D8152C5C79234F0C6E8322957DB8F49E9D0451AC019329CCEBEB49
          43A030B23381FD57CDC6A6DD88F860CEC0DA03AB0FAC3F26E37DE47DBCA00413
          6DE2EF8DC00E12F7DFAA5D6F22DC6A76861D029AF5CE4B0E086C27C59F28A8F5
          6243B8816633CE404A7B273DF2C823DCF263207FC4B5D9C5C2A60611F3D5E9F3
          F9AA104270FEF9E7F1A6A65245E74C320EC1C0F7457807642BC863C46E65C10A
          EEAD9E43DB5C45BC67573C9132C4A78D4DC80B2FBD84CE5BB0C0CAC06640EC5E
          90B565145804132B9A3EAEA0D457C4504030BBA92A3D467610108E9D037CE086
          9390073A3734D0BA55ABF87393F348043AC7ABF47F1ADAC04600E9EB4EB26ED7
          0BA205A19D8A95B4C30594128FA7236B1BC19A81C8765202E443C845F9027768
          FCAFFCDBCC7B052AC7D56B4512B0385756D1534F3D65E46E178442B8D8ED0C91
          9453DDDDDDDD3E76EC583AFBECB3C9EFF78113801C62CE6859714490B41C2288
          3B2242D12FB39BBE6D1D4EFFA9994D3919F1578D29417CD0876BCCB8713C8D9D
          3723B5AEBBBAD86176A9D5A75101DA006017D01B943082E560D54167EF1E3744
          AAED032101779FA9ECAB4C268036AF5FCF9B989A0C7416F70784D36EBBDE5407
          02CC716FAD4A5F17440B0ACC4EC1A4898228266A6A636131446AB5DC6F8D7922
          2C06669A2D47FA9E7085CAA19B6E8E4CAEFFFDEF7FF4D5575F73FDA203512B27
          19922A44520E2FB58240E7934E3A89F6DD7736E263B199C7A6516B03A1D55817
          732D2CAB4F063B3CDC5ADB5D85F4F8EEBDA982FD1F6F6B0F600BE2134EC7F51E
          60E7DFD9D545B7FEED763AE4B0C3ACB6F6C02C08D6BCD5446566617DD868E509
          2618A2F9AA6AFF2C467E441F1953A404ED385CE157748E491FAF34C202842276
          F456166D83A2C7A62251D571ED048C3F941376E0768D23C4BA84E5000AC8A897
          592C01A101522E4897E1C62BD0AFEB737AE79D257AE9ECA2727C325997856CAC
          73BBDD0D83070FA60B2FBC90B2B3791F2F587440065B74BE27073E175699825C
          8787DCFE4CFAA47914BDD938913A7CD9716D4C2A47D2131F64724D9B3183EEF9
          FBFDFCB74DF4948A158459B396911EA3D43E5C345C5C58644EAB4ED006805966
          06E9B43F60E407B140184B53A661587DAA2A2AC8B9654B38E9ED38064CDC76F6
          BB272BE43741B42AB13ACE06BB6C28D14457C7B503843505EE16BBD48FB11B44
          0C2660A83090CE5E51B19D1E7FFC71BD7476D18F0B568F640A63C079C332E874
          B95CDEC30E3B8C8E38E230EAEA72C1558A5825AD36232046C2EA83EB85FC3665
          69854527933D367616D3FF1A26D2AA8E219C04653AACE322494D7CD078D3EBF3
          32D2F377DA67E63ED4D969A97511D61B518CCFE8B39824581450F05BAC3C491B
          C028BD5D64C42198CED82D82F9C3E62CBAB7B734379B253F82A46281DAD1F49F
          AC801553EE36808084C285F2B5CABA9688C6A7768670B740CE249302B62D4CF4
          EB0A5A4E482748DAA61096AA169FCFB713F14C0B162CA0D2D221481082470317
          AB152326842FE4A931817478298B119E1DDD05F461D318FAA26524B9FD19BC2B
          BBD5486AE283C978ECF1C7D335D75FC7FFB610A2D91F76985D06C427553B7887
          838914504CAA6677467EB0C0A0404D758C06D969A8AFE781CE615474160195C9
          289CEC08D1F55C8D7986EDEB8F0256678ED9194289D931A0D92C60B9C39C82A2
          8095D8D2D80535406741E63CF3CCB3B471E34665BF2ED1AB11803EB063FABA11
          82B1492E97AB73C68CE9F49BDFFC06AD2C706D7099C21518B1EE12161EC4EF7C
          DD5A465F32C2D3EACDA13C46781C09DA83262DF1418C077AA83CB4F8111A5E56
          869B64D925D01E53320FFE32203EA3E59FEDA500E180E54735BD5D4A6787F0C0
          4D34E52746EFAECDEBD6D1CE9A1AB3B57DC47DC3879D945C157D617296138C36
          4A7CEC86A805A204EE2FEEA1152E450461426827ABC28935B019C33C49D61A46
          A2F0A880B0D05A716F411A3197848282B20F5A1011DBF3DA6BAFD1B7DF7EA78C
          F3B1533FAE4811CC46637CA0D2EBF5D1FCF9F3781F2FB7DB8D7B02F923142CFE
          3795B020B7F07CD034869631D283381E587832123C3D9396F8208879DEE9A707
          8A155AEBE282B0C7447092E4D3D4213EF081C204BAC1CA13B42934D3DB25E223
          76ABB00C19EEF210E88C6CBED5CB9773D26B32D059047D8234244BFC83088A97
          03A4CD4989556EF23A1E4A4001C4A34E156E32DCC659D2B563CE60AE2455EFA7
          3841CC9364C8285203EE2D64651FC5EB1DA4DF1459FE7D32F1392DC05D952F7B
          8E635689DF03D979F5D557E9BBEFBE97139F644A5F3742B0FE505757572BBAB7
          9F74D289C8F0123DC7E402D6708E654A846719B7F08CA0166FAE2D088F405212
          1F28BA61C386D17F163D4C7DFAF6B5B258A1E83505E51DCC1ED1203EB8503421
          45847FDAB512102AA8E88CF4F6901D9CAC802104370490A9381C587AAAB76FA7
          2D1B37525676B6D1C70592A98F975ADAAF00E614E6A03C5053F93719BC1FEEE7
          E5AFF525ED26B9F1CA26C2CE5A998A8CB9E4A4DE9DC28EFB80383990C064B52C
          6BF53C04A930EBC68CB4560AC8965A5D21587D78E24A7E7E3EBDFCF22B8CF884
          587C4431C454299581F1CF626467DB9C3973D0C7CBC148901A190D21857270C1
          90E9A28D9D25BC1861BB2F87F21C1ECAB03070D90C9292F82093EB9A1B6FA063
          8E3DD6EAF47564072102BE42FEA206F1017B86824D679AEC01528E31E142025F
          65C447287A2874C3180591C5B776E54A6A6D6EE6EE2F1380D4126E352BBB8547
          0251644C0B500A3E956BF0937A0D13E57BCABF959FD77B0DC7C51C579232B8B8
          E2A17CA110452B0025922985381EC08601D64CC8A5B81040ACB56CF39B8BB081
          75CC36B0C2222B80B956C18EDB1D4606675840C884DBED569B5B3836947B278F
          296C68A0279F7C925A5B83C1CDC19E57943A8DA6F935B13169282929A93BEFBC
          731D8CF00D67F7C614F1412C0F6276BE6C1D41EF368EA55DEE7E96D4E4890449
          477CD0757DC2C489F48F07FFC358A4A5E9EBC2FF1C6229C02238E157C7283F0B
          6580F4F58D647FAB8295504D6F57B4AC1019124E32115007B2D3D2D8486B18F9
          014CBABC9225D019D9704335DE13C42D919205E727828B89F6288B78C44F8164
          0DD0793F5576DDE142245AC4ADD715641CACEA1F7EB8943A3A4CB78C3105E89F
          CCCC2C9A3DFB673462C408ACDF21EC35CEB0D8DF9DECEFFA0D1B36D0B66DDBA4
          E3465700570E909EF2F2513479F264FC5DC2AE516EF5E1A48B3DBA61E181A507
          161F587E24945340CE2321C39EDA3D32F0AEF29D9D9DDB0E3BEC50CF51471D95
          C3FE96F7360342E29990868E74F49D8CE8BC5E3F910730E335BB921E20A9880F
          CE1593F5F63B17D2FE73E6581DDB839B8F1D76C8CEB26FDFBE34F79043959F05
          41C2CE2B59E248AC8470676D152FA8F4EAC2E2839433652DC38E6CD3FAF5B40B
          159DCD053A8B14684C46BBD7DDC058F45179DD542C9405906B41A5A52996C0C6
          030A5E4DF37549E361E7FB182F9493547D97E230F6C2D2F3E69B6FD1175F7CC1
          D75AB4D5F795C0E6B54F9F3EB4D75E13190999221D23B0C95DB972156DDEBC19
          B126313F2EF4091264A632FD73F0C13FCF18366C587F1C47D289D0DAB040D530
          E2E307F179F5D5D7849B4BB46C08BAC252083CA687DD93F6BCBCBC1DE79E7B0E
          959696164A41CE4030B819F13A88DB69F2E4D257AD23788A7ABD279F371BB53B
          928AF8A041E5DCA38FA29BFEFA57FEB78540AA1F769CA88D11A4B18831A9AFAF
          A773CF3853FE592829C4F62C277BBB51128990F4F695AB5787BCB9C5B94DF419
          3255701081CE5D1D1DB46AF9F2702A3A274B1F2F65A60B10AFE061BB4314A254
          82979548F4C92500904B22AB2D2ED70F45FFD5575F71E20392106BF221017A28
          9B29D7C013E91842378178C5E9B8FC188C60398A8A8ADC471E39D7377DFA746E
          5992CE0563DBC5C6A0E5FBEFBFA7975E7A19161F114F850F5444736C1B83BBD8
          BBBBBBABCBCACADACF39E76C7E0FC4FD70486D26DABC39BCBFD6FBCD63792073
          AEC3CB839A930149437CB02BC8CACEA27FFEE73F347AEC589ED16311420AEC8D
          2D1F6D74FEE84F954A7EDF782024BD5D85F8E03F08752C402799A9EDC348684D
          55150F740E231E405853EC9E8A0AFBBADCB282C96FFF6D55EC81F83A610D1482
          04C4B8376675896C1BECBEE3226BB0B16B6A6AA2871F5EC4AD2FB18AB3592135
          1AB6238E3FF6583AFCF0C369D8B0A170EFE1824B1911DAD9D9D9E97DFCF127A8
          B6B6D6C1C605AE78CCC554ED0B87382BC8C5ED8CFC749F7DF6593471E2449E54
          041796D7EFE06D26508FA7AABB3F4F59CF4A12C2239050E2134E6C4F6B4B2B9D
          72DAA974D5357FA68E764B7514583F2681134F0C888F4875DF6CEEA77B35CA29
          A0B4EA35888F68620A7FA6A96059C47CAD5EB9929A1B1BCD0A69614DC131923D
          1DB5B70037569040CC11ECBC7BA36515CA1784386E3126B0F620AEE5871F7ED0
          EB511536F488CF8C69D3E2712911E3BAEBAE455C59F6C28577CAFB7989D21BF1
          0AE44F2444803932E91AE1FA3BE184E369CE9C39E477C1CBE2A72777EF4D1F36
          8FE6561F3BC7F1E82129880F067FE4A89174DF030F5061519195E9EB22703018
          D0AC437C443F2E7C36DD28D11888F319CB1EAB19F109593D12F101422A641BFD
          20C84E73F881CE2225356EC1A169A41163888CA2B8F59E03D1417CCD8B2FBEC8
          2D3FB1743585417CA084B5DAA1C3EA198F982ED1768583111F5CF85076FD0D77
          DCB1502E83522D951DC0A662943406BC0866B7DB4D53274DA4B3E69F4AEB3B8A
          E8DD86B1B4A2BD94B279D5E5E485E5C4275C468F980D60E13D77D3EC7DF7B5BA
          3545390582B98241CA3AC4070B01E6E7B4E5C03C787A3B233E21E9ED32E203C0
          25060264AA1A2D5C5E5B376EA4EACA4AB3159D45EB05C049F10F9015A6A8708E
          932B3D0008DF70CA94E378A67AE92800B9D647FA3ECEB53382DF4823F610F56E
          3007E2D20F0D24077A61F1E2C55453B353338D3D1E2E2B997E1099B15AC1C358
          0FF1C871C7FA0A11408CFC807C152D5C7867D0A5CAC627938D139401484FAAC8
          7C51272B48A8FD3E0F65E715D08F3F7E97E8738B296C4D7C706EB0F65C75F59F
          E9F8134FB49AF4F4A8D00C68109F743FAEC800C1359D02569F600AB482F88860
          42C43298AEED8326A6AD2D2D665D5E2248144276B7992F4400903708951CE9B9
          4BBA1EBDD44451A9D8217DCE21FD0EE6A351403676A330D38B2AC7A2109C9954
          73109E81D277F079CCEF3CE97CED1C0BD51B204A31C4AD1F5A5E5E1E7DFAE967
          B464C9125D17579C894FA2326355FB0A32F203F9E062E4476ECD170912588BC9
          6EE51731631D2423D48EEE366AD9EF1ADAF6F4A5893EBF98C2D6C4A7B5B5957E
          337F1EFDFEAAAB38E9B1F05C458566040D86EC3834884FBA1F57E440A64E1E23
          3E41B6A3203E00040C040FDE30F473222BA3BDAD8D931FB8454DD41D11BB6890
          045EBB23C6D708ED31827A563A860505BB452D53F960E933F2E05587F43AC641
          8B086AD5FF11BB533DCB4D8EF45D0873B9691FC40724AC8652C7B49F6C10D98E
          714B9E8095B4AEAE8E1E7DF4FF0C039AE3487C1299190B5289F5B55EFE22233E
          900D43D978ECB8FDF6BF716BADD7EB75B0E7E51458D756F5148B1744C6A49324
          F9E7F074917BE0246A38EA51DA79D390687EDB76B09CF84C1C3FDED4E710417E
          C08107D2AD77FC8D2F46E1F2B2085C1993A21F1214E8E891A3423EC8484FBA1F
          57F4E0BB2C467EF82E6B4BC57636EA3DEE37C6184ADF541AB7E8E0BE5E0A9C36
          11A320E226E2912A8E73EFABF11EE28AD4B29230FF4A34CE051703220512E256
          790F933487D46154B411564E101EB5D81158916071B273FA7F2A03F35390F3B8
          086EB8B59E7BEE395AB366AD6140731C890FE401487DA23263412E61C1095927
          8CFC60FEE72C5C78A7FCBC44C1D57A326191B62984EC83553DD01E04BCC0EFA3
          C6C3FF45DDC3E6D0AE6BFB46F3FBB683E5C4E7AA3FFCDEF0333E9F9F2BAA7967
          9EC13BAFBBAC4B5D07A030CA4925C5197DC1860E1A1C7CCE484FBA1F576CC077
          598CF8F05DD6E6EDD5E4F0F530BA884C0AD3019D88F7716EDE4C95151566E37D
          C4AE47F49AC23647AD401FEE3B2C2E660433BE0F41AAB575C685AA2932B8DFB2
          748E8173EB50190B317FB56044EC60D581F053DB69E07C40C67A63FA78A221AC
          78F1EA83C6EBF4A042F2134F3CC9E5AFD166214EC407B20016DE6DD1FE5614C0
          6616EEF51E7D0519F919CEC6A5EE8E3B16CA9512B2A0C00CE2612DB602D84441
          6E38495AF70E773B758D3E929A7E791F393C9DB4F3C692687EDF76B09CF8BCFE
          EACBA63EE7F5FA68CCF8F1545C5262B5B547F4710A11EEB02080804D1CB7C762
          C5884FBA1F57ECC077598CFC3438372C274F7E09233F3DBC5A587D108A48E135
          9CB85C70B3C7E675EB68F7CE9D66AA3A63F18BC051C4D414197CDE4CF5649196
          AF75700850B5426885D2F9683568044169A39E4A50AD9BB21C469DE9F1BB205B
          6A2EC534F1490C0479C69C8C4BCC0BD60AE42C6AD55457579BEACB156BE2C348
          0FAE13B19258DF71217761001610289E90F005467C601D19B070E19DC138189F
          CF979D9191319A8CD7961D21E294F664B5FABDE4CFC8E12E2E4FF14472785D8C
          F80C4AF479C61496139F179E7BD6D4E7BC1E0F958D1A45E5E3C6F1BF2D829804
          58782107456B8A679E7A9AFE74D555FC39233DE97E5CB1457097F5C143BFF3B5
          8E3C864D4EC89D90F909655E4E010163AA63B310E8AB972FE7716226E27D44F0
          A81980B4986915803955A8F19E56BC06480F4848A5CAEFC37A04F33A84ACDAE2
          D06A730118A5ED23A81903AF964D0322088DA836F6185858251CD4B375055E13
          64328D9EC0FDC4D82A9BC7C2DA807B35487ADF548C5B244040F3679F7D466FBF
          FD0EFFDB0CE2407CC27267C719226105569F1077B214E8DCC1C88F9C9CE135DC
          A364AA222E0835E65470F38580E6B6BD2FA2B6597F20873B708969E21325CC12
          1F1F535645C5C53479FA74AB1A918A49003F6788DB0ABB9FDADA5AFAED4517D3
          B26FBFE5AF31E293EEC7157BF05DD6A777FFAAA66DD821E42A9EAEE6F212FEE8
          9066B17A4023536478AD5DB182CF250313BE2057665B519B69742A888A52A318
          F5980201838B6FB7EC3320DC205290485A9924B9D21829DD6B66DA736449E78A
          7520274805D2F9E07CD594AF511351511B242E9948490EAD561C00EE01624B78
          41B9781C5C741F7FECB1C7A9BDBDDD7485E658121F467A3067B1915C41F6E9B9
          26623D95E9ED5823A552A033574E6C739521053AE3DCE3D2372D0E109BBC6058
          07AC3B9EC2D154FFAB27D8C4C80BC65AA6894F94304B7CFC4C41E5B29DC7B499
          33797C8605E7292A34F788B7406CCF638B1F658FC5B465DB36909E743FAEF820
          B8CBFAE88179EE96D1A7923F2B8F07D929304CFAACE95E39B0F420CBABC9B8AA
          33EEADD8799A014ECE49C63B711C14C440901F90B64632CE0481708252108421
          5BFAAE11D9C2E720D472A463C02567B6A1628E745C7CCF4B7BAA2583E4A9C530
          E058A3A867D69A125A81DC46D73150FADB4FA1D61033E3677788229D7A004156
          B3FCC504D8D8399D4EEEE6C23A315BAC30C6C4671C05E2D56C13388FEB63E705
          390FD21912B82C5574CE5AB8F04EB9F533999A970AB73E365041771E627B5AE6
          DC441D93E773CB8F840C467C927D9D85C0BEC4473AAFA97BEF4D05FDFBC7DBEA
          235A17F4086846C0DFF68A0ABAE2B2DFF2F4CE35EBD681F8243AEB2095C17759
          9FDE75D4B6AE81FB50FBB05FAA597D34CB0D68811736DCB489766CDFAE17EB03
          C58D799063E637658867FD1F71BDF2FA3F5609211C13830552A717B4A997B526
          87E8221E4EB682DE6FC7CD0A6211C03030DF8CFA41C4BDF71F36034F3EF9146D
          D9B285CB3C338815F161E4C296AD7E24E203D28D4D408FAC5D467E864981CE7C
          6DB8DD6E072391B89F5833764F6F8745389F64EE5387BB83BA87ED4F0D473C28
          C55706B9C140467C9235634D15B6253E00C80E5C5D038A8BE31DE08CC98A03F4
          A8849ADF279F16DE763BBDF3D6DB3CCE8702BBE844671DA42CD0B78B114BECB2
          2A3FB9F784F6D651C793BBEF30B54067D502935A8060AFDDBD9B36AE59C35D5F
          1A10315E9120954AD78703D1DBC72CC229172076D05AC09AC5B8276BA3485129
          D70850A0208C71CB1842EAFAD75F7F4DFFFBDF9BA6FB72C582F8306261DB563F
          E2FAD8396AA5B78338142A2A3AE73332040BDE9ED470FB41257DDD472BD7AC4D
          F479598634F109085728BB1E818310005BB76CA52B2EBB4C14C2B353D6414A42
          223E7C97F5E9DD476F70F72BA7D6F2E330194825D019C1D0B867201CA263B77A
          EC0B2A3A1B07390B81102EA090A098ECBCC38B17602E0FB783A599BE68A2A8A4
          51AC5524EE33BB00F3D7549D058AB322C57A80451B9DD85B4C563C8F11F1B16D
          66AC8CF888C40BBC10228418F9013147A0339FCF902D7DFAF411C90C760C7416
          75BEB0BE9C24C92C47772BADD8683A7220E9D1DB890F567739A90434C3CF0DE2
          73DB2D7FA50FDF7F1F93192FDB29EB2025213AB54BD5B0797AFB968A8A4041AD
          5099230A8729A1B93B8630AFAFADA5F5B0FA68677789E683E100560CC4D088E0
          881E271B87E764E27D7F0C3FAFF63E144224053E10AF0429AB47148D82A5E5E7
          D4417BEA2BC9C7DEAFF81C51CF7BA3F559BFC1FB91FE2D7F6D80348666A05ABF
          C7E767843E8C7691F864A646476D6473BDFBEEBBF4F1C79F98CAEC8A96F83042
          61EBCC58F9F5B173851507F336846433E203623E242B2B6BC76DB7DDEE2B2C2C
          A45DBB7667E7E6E694331D826BB29BAEC09CC3DADA339F7C1EF2E7F4A3553F7D
          9FE873B30CB6253E428A4D9931239E313E60E650A0DB48219CF2F3F3E9CBCF3F
          A71BAEBD8E13203689ED9875907290119FE02E8BBDC6EF8DA29505DC935AD259
          D39D82F89ECDEBD7D3CEEA6AAD581F4186E3D100318D0044FAACD63A32AA7DA4
          F67B2ED977E5BFA37C4E1ACFC567FD3ADFD1FB2DB56B88157A58B5FCECE73DFE
          0C2ACCEA648F2E3225C6D919797C9954E7560F99C2C6A0B1B191162D7A8457CE
          372AFD1003E263EBCC5805F141E013E4BF5A7A3BAC3B0874AEFFF39FFFCCCB02
          7CF9E597C56C3C4B98DE3053EBCB2A40A641A68A321C1C3CA019FDB89EBA24D1
          E767196C4B7C4074B0EB983E7326575071384F11D58E4517323145D5D2ABAEBC
          9256AF5A2D763FB6CB3A484508E20330F2C37759EC352EF465C4C728F60350DD
          210B93FEAA1F7FE4EE4B8D0C16B12B32039C9B5ADB08A3E742C9CADF972B5E33
          BF11EE3162F19BCAE77053844B12CD04259B8DB78A2460DA0C1C06AF454B92C4
          6B3025EBCD358F747D41373C084FB6C347C3F31A69629FDD949FE1E644C80819
          0E3F357BF2E8F3C6B1DC4AA4F60D64783DFDF433B461C306C320E768880F2312
          B6CF8C555E1F3B67245E6003EC94BFCE880F8612EFB532F9E2CBCBCBA5F7DE7B
          BF6BE9D28F47E4E6F231B48B1B5CD41A0A960209F4E3DA8B1A8E7E8C76DE3838
          AA1F4F26D897F878BD34A0A484264D9D1A2F6B0F761B50583D1A8B2288F9FDF7
          DEA3DBFF720BE5E543AE932DB30E52110AE213DC65A17BBB447CCC5A64B45A41
          045B5954555468597DCCC69798A98B93EAD06A88AA05C43C988DE730133F14EF
          8C3A2B504EDA9984C1D468B8B5BC6C6A9664B7D1E4BE3BA938BB9DBD9661DAD5
          05E2D3C288CF574DA335890FC80EFA743DFFFCF386D59BA3243EB6CF8C55213E
          18B27D28D0C03424FB97919F60A03A36574CAF363EF6D8E36D95959523D8389A
          A9F5156F88CCE590F5026B4FD32FEEA2AEB1C7D2AE6BFA44FCE3C906DB121F54
          6B1E35660C8D183D3A1E959B85B086260DD9ADC3DCDBD9D5497FBCFC4ADAB675
          2B04816DB30E521172E20330F2C37759EC75A7447C404A10806C1484A099020C
          B2535359495B366ED44B6D37CA56325BBFA737209C7476AC23B3019F46A40A6B
          17242AA95CCFB0CE78FD01E291E1E0B4259FF654BD965BFF705DB5EC137E909E
          82AC2E2ACF6BA091798D3C4EC7EB37AC421E0233C4071650E884C71E7B8CAAAA
          F45B57444A7C6CD28FCB106AD7C7CE1DE406C917C1F4F61B6EB83E936DCE412A
          8283959B9BEBDFB06143F5B3CF3E37808D691E7B243AFB10D6736C2230E6523F
          AE0EEA2A3F9C9A7F790F7BC59D72FDB8F4605FE2E3F5D2E469D3E2D1AB4B6403
          F508680610DBF3245BF48B173D42FDFAF1B843B85430A12B2D1DA85E0A15E213
          DC65BDF6D65B1D9201070B1882466BAB0B52125CE04A80DCEEAAA9E1B13E19FA
          D92B7914AA88E4C06FF7C6F4753508B7B191E901AEE21AE39F0B815EFB8DB835
          EC8C07445C4EAEC343C3729BC9CDFEDED95D1824416A0041E99BE9A2D179758C
          F034514E86877D3E3322DF9019E203C0B5BF6CD9327AFDF53762D2A15DEAB81E
          3C0D4A92CC58C439A1782E2C388A781FA13FB8BBF6A69B6ECCF7783C21452841
          2019196A78F8E1454D75757563D8EF2432FB506CE2F6589E5014D691C92B347B
          8A27709757AA5567D6832D890F5C5BF97DFAF0E28571A8DA8CBB2B2A3487805B
          7B3A3BE9B7175F42353B7660B7232A09AFA1E4ECBA9B7450121F80911FBECB7A
          75C97B1B1CDEE06DD0EBA9A56B5A86206B6F6BE3A9ED3E36B7CC56AA4D43177A
          FDC880485B5680544170AB594312ED3E308500E171505E4680F08CCA6BA0A2AC
          4E4E3EEADD7D697B573175FAB2D9B39E726E50761B8DC86B64DF75730B8F9958
          1E2D98253E581F9083486D6F6D6DD54D6D8F80F8244D66EC81071EC033DCE0FE
          53101F58E740F4A117FC37DF7C93C3E3710F67A22448D0994CF1B00DFBF6471E
          59ECA9ADAD1DCCF458486C8D85106E7B91EDCA27197A7075EC358F5A0EB8895B
          7E8034F18923CC101F5878F69A32854A060F8E95B54774BAC682C304C49D86AF
          3364C78105DFED72D195BFBB9C2A9C4E101F6496C02C1FEE2E358D08A1467C00
          467EF82EEBD5B7DF690C342FE5313E58D04A5F95666C4F1030E73372BD0A357D
          DADBCD342E4DC318B81F58675AFA14EBC82ED92D71C3FC33CE4CF429A8A2E1DD
          1B4C131F00969E575E7995BEFBEE7B42B0AE16C2243E499519CB080D3DF3CCB3
          B466CD1ADAB83934BC5399DEFED7BFDE92DBD5D505AB0A1F56547466BAAB8511
          1FF47964BC27AB9C021662AB3D073DFA7111DB3CFAFA0CA2FA639E265F5E3139
          7C81BD489AF8C41146C4074467E0A0419CF8C428A859047529810B87820C9A10
          A0003D6E37FDFEF22BA872FB76EC32B13BD960EE3069C4023AC427B8CB7AEDAD
          B7FC12AF112D15E43D9C20500D7DE97071AD6342BBA1AECE7453C634D23042AA
          101F18BB2B2BABE8F1C71FE716772DAB6898C4C73033F6BAEBAE85BC86E50407
          846C6E5BB8F04E5D2525350DC586566C827CD2F73AC800ECBB884DC331710C17
          FB4E909CDF74D38DBC98235A797CFAF9E7CA6BEA91DECE3E9FE191E251D978F9
          DC4C9780F8D4D7D79364F141DA14DC6356C5FA600C118F14AC2704FD465E1775
          1EFC57EA98781AEDBA26DFA253B1176C457C702E201F684C8A828131223E7AF5
          5E42B27204F139E584133161F692DE4B0A737AAA408BF80022BDFDD525EFEF44
          17E16890263EF642A039664006F87C91C924B8C545706E38C0E76315476877E2
          D3E4C9A7AF19F151E6E1ABC14C6A7B18C4C73033969110410EE480D2DEC10889
          57E33B203BB0B4B44A0F5C1AE43D147E23FB5EABC6F770F970CF2A8B9536B3EF
          EC923EC3AFBBBA7A075D7EE5956AD785C07B844304B314612502E1C15CDCB56B
          173DFAE8FFF1B9251147C82FAB990677717533E01C460C1B4CDEE289B46A9F85
          6C3E3868E70DBD27A0590E5B111F646F0D1F358A468F1B17AB4C2EA37A2F2159
          263C0D91FD7FE2AF8EB16D19F5548701F109EEB25E7DE73DB74AF352D348131F
          FB00E38F52FF501070B1F4E9934FDDDD6ED3044604A0D6D4D4F0DF41528279B1
          E6E7DF1F3870203F9E2742B9C34D8DFE4C3AEBCCF9891E4E5580F86439BCE4EC
          1C483FB59551B6C398E841E9AF5BB78E9E7BEE793E466A30497C0C336319C9D0
          6B17D322EF87A5F81EC847BB6819217B5D10A21AF69E5BE57B7A75A276B3EF34
          81F800487839E1A493B5AE2B24BDFD820B1650595919273A9B376FE6D6225117
          8E02EE60CB840DE633E33B3EB6363CE3984E9D3973264D9B3C9E6A3CC5B470FB
          7EE4619376772F726FC9611BE283988B9CBC3C9AB6CF3E7CA71183F3325BEF05
          A4070BD28FC999CD16FB3147CC4D677225087AC407C2FB977F7A03822EF38D57
          9FADF272FF74648A2A4D7CEC012895952B57D2DB6FBFC3D73C9EEFB7DFBEB4F7
          DE7BF3EC22EC9E85E557785B84688032E6CD676B6B69D9B26F68F9F2E5C1DDB6
          59E098F88DA953A7D001071C4043860CE1C7C3EF9805828E11983C3ABF9E0E38
          E58A440FA92A02C4C7472B5A8793B3AB98FF6D042933895772C618AB8DAB49E2
          63284F250253A0F136CFD2545A7DD877B0111AC25EAFD4F84D9833BCECFD4695
          F7F43C01217182981FA7FE669ED6B5F5486F3FE8A00369CE9C39E47456D08B2F
          BE28273E9640CC5FAC9FF1E3C7D3F4E9D369D2A4BDF87578BA5DD4EECBA28595
          0751A3279F6A6F1A68D979D909B6213E285858505444D398C08B918B0B330D31
          3A465599E0D3455AAC1F84AB66470D5D78DE796287E2249BA75CA61AF4884F13
          13DE07FFE90DC409D47EF4EFF39A5BCB4F229F8309637FF86E8A34F1493C60DD
          59B97215BDFEFAEBE472B9F87DC0DAC7030464D6AC999C00C102A4747F4191C0
          95F0CD37DFD2DAB56BA9ADAD8D6F98A4E271619D073E0F45D1B76F1FA62026D3
          ECD9B369E4C811DC02A5670112D95A4372DA68429F5D549CDD4185472E4CF4B0
          AAA291AD1D8C0AE27B9A99C283DBCB0C708F962E5D4A4B96BCCB0BBBAA29703D
          F2235945E0EB825544D344CB88885ED902C0C9084CB7E23BF83CBAA3D768FC26
          4F6A61EFD72A5EC7399593768152DC7427C9AA2DCF3BFD0CBD6BE432893D9A31
          77316FFAF7EFCFE715AAC45B0997AB9B6D1EF2E8673F9BC5D7CED0A181325898
          DF625DA0EAF7BF6A66D3AAF6526AB8D94C3BBCD4836D880F80493371F2E45866
          73690536070F49B214DBDCBC5C7AF6F145F4D61BAF51739B2F298A6CA51A0C5C
          5D304D177CF28FD3362313A1357738750DFB056566F709D4A50803203E6B57AE
          E4C4271C0B411AB1012C3B202C70A360DD2BEF01080764C060260B060E2CE642
          5B882A110B84027B203C70C9C422330FE781DA2DD8294369CC99B33F27606A04
          08F5785053675C7E1D8D610F1009587E8A8FFA5BA28756158DEF5E4F9DBE1CFA
          A2710CD3EA19A693E279DC23BBF68F3EFA88BEFE7A191F2365BC8F91D5478A85
          C1EE4233859D9111BD72089C883002E3537C07C4A554C7E2033F8E1B6E2B95F7
          F4885617FBCE76E1EA02727272E9F9E79FA3D5ABD704AF1FD7AD55CD596CDEAD
          CA18C53DF278BC3479F2249A3BF70846784AF973F63A2C52F21BD6999FE1697C
          6AF70C5ADA3CDAD17C73912DDB85C41BF6223E4CC0F4634C19F57B220952D480
          9E093558EFC5E14060B38B5E7AF6766A6DAE65BBCF2C7A73C936DB97554F35E8
          64754170CE608F35D3268D70A1CEC89CFD7F4627CD5B40198CF8F8C3253E4C20
          35D6D7D306A67C21A4D229EDD62160E959496FBCF1068FE5D1B3B88174043641
          8E105717FEC6F7E271DF207760818285038A64DF7DF7A5912347F25DB3DBE3E3
          961ED4E399D067376F12EA91D5D7B12BF1697EEF3ADAD5DD9FBE6D1EA5D99D5D
          0B18E3ECEC2CDAB2652BAF6B83D81539D934417C0C8B164A6E2B04FFAA4D867A
          3400D5F81E0853B7D29D25FD1E5C6CD56A81D15236D7708D53C677DA05F1C17C
          5DBB761DBDF0C20B216E2B89F8208E08AC3D21F1A062AE628370E8A187D09429
          53F8BA905CB5AA7153B90E4FE5B2B6B2CEC53B676534DE3CC00E3DC42C87AD88
          0F80A0E631E3C7D3702668220D3454000B00561FA584C4CC80B587DF78101F37
          233E2F3E7D1B35D4D75016233EEF2FADC2C4410AF53A4B07A9174387F8F01A19
          AE6E4F3548CF983163E881FFFC9B060C280CA4684600B4ABA8DBB58B36AE0BDC
          DE48FDF022B8D65CAF4547D0B5D21B014B8FE805A566E9B113840508E7BCF7DE
          33E8C0030FA24103FAD2B8DC1A1A991FD0B3CAB61176253E2D8CF86CE92CA1D5
          6D434DC5F7A801640744F5F3CF3FA7AFBEFA8A1739C46B7A565A01336D2A24D7
          15888C70416141C15A53A795D2CEBE03A204D9009F528BF41D24A62043AC562F
          A55DCA2243908B205B2048F5C24204E20312016281ECACDDBB772B5B78E03813
          2850C8D0F27614423FCE9CB90F1D7EF8E1545858C8CF55D2E91066D07B3D8A30
          3109D499E9F057FEA766367D72D524AB4FDB16B01DF109061BC2B7CF765C318A
          F7C1CDC7E48694C52E00520BD905B21A3E99D4D1DE422F3CF557FE3FCEE1EEBF
          BF03859B2E626821342A3707050C5BEC1EECC0EEBCF71E9A3A7D3A7575465708
          95931F26D036AE5DCB4D098E302C08982350DC3B76ECA0E6E6664E9E8D80F98D
          8ECDC3860DEB7515A371DF56AC08587A40FC9225B60AF1455028C5038BE9E12B
          7F497B956653A7066FB533F10927B0590B98B3B88F98F34B977EC4AD3F2087EB
          3618973B63E4072542D02053B34488446420AFB138DCCAB81E8DEF60E1F5977F
          8F02757C0C6B5E48D95FF81E14212C47410273FDF5D7F1FF5F78E1459EDDB67E
          E346E5F580584000D51A1D27D68015B4A8A8888E3BEE381A3F7E9CCC321A44B0
          69AA1A7232BC3BB6760D68FBF379C75B7DEAB680ED880F00AB4FE18001349929
          B618BABC0454FDCD5078DD5D9DF4DF676EA7A6C65D4CA1650BE223DA56040B55
          A5113F68101F2E60D83CA88502BA9AEDC48E3BE1041EDF110B84587E4C921F90
          97FAFA06B6F3FD9A7EFAE9271EC468C6ED22021F2FBBEC526E498811B1B735B0
          861137830AB8CF3FFF82ED2D3D5A68EBECA6BB16EC4FC71F3086DABBD445815D
          890FB2BABE6A1E4DCD6EF381CD7A80EBCBEBF55163632327B30F3EFCB0E17718
          5148AAA2B0B7DEFA571ED48DF826AC5545DB0A100B58A710DB63799C0CC8E6E9
          A7CFA7D9B37F464D4DAA1502F49A2CFB331DBECA266F5ED745679D66F5A9DB02
          B6243E00C8CF90A14369DC5E7BC55A3940E2C28A030B4E88E6CCCEC9A54DEBBE
          A5256F3CC8946136DD75FFDBFC75A943B86E705E1AB1814A93D2A080696D6DF5
          9FFCEB53E84FD75CC3CDECB19CBB203FF5B0FC30F2A315F303052E8AE46DD9B2
          855E7BED75AAABABE33B60B3B126F86DC48E5C7AE925294F7C787908A934C58F
          3FFE48EFBCF32EB9DDDD4963E951A28D919DB30F9B48D79F3E9391A0E4223ED5
          EFDC425F8619D86C04DC5F61F544EA36DC97DF7CF79DEE771861481A0BFA4927
          9D482FBFFC0ABF4E9546A588FFACA60465FD624D8D1A3592BBB8468D1AC58990
          8A2C8177A3BFCAD79B19F1D955EFC9A74BCF3E3511A79F70D896F800F0618E9D
          3081868F1811AB781F0144FB83113B2984AD0716F2FF5EBA97AAB6AFA3BB1F78
          9FBFCA946FD274144E76A8101F2E60D8EB6D279E7002DD75DFBDDC7A20CD0779
          E34A01D1BA226C08CBCFA6F5EB7B94E9472C03040BAAB87EF9E5973C23099F09
          D77281DF4081BD4B2EB938A5890F080FAE0D0411F1209B376F311B8CAC764FE3
          0D5373A6ABDB4B33C797D0A22B7FC19BDBAA894EBB129FCD6FDE41CB9ACBE581
          CD88A7818B07AE9A6873AE73D89AF4AD59B3D673C34D37E97E90110661415F49
          36EFD785B50D4BAE58E382F848596AC8184E68C62FACDF90213FFFF9CF69FFFD
          F7E3DD0E64313EFC122890B6AF5C74CE0CF27777F8B3E9BC33E78573C89481AD
          898F503E13A74CA1E281036356569E02D61B34BD84BF39C44E98959D4335D59B
          E88D17EFA185F7BD1D7C5DB23CA4D3DBE30C39F1912C6D79EC353EE69F7DF139
          8D1D374E5E1B03A65C6511326CC561998B686267A1965375356D5EB78E132111
          CC585151C1833A91D982F814BC1E498C4EAA131F101B90C4AAAA2AFAF0C3A5B4
          71E346BE8EB55A1E28206A6FE599F9700C815810C339838CAE6103FBD053571F
          46FDF2B3C9ABD25AC3AEC467D39B0B39F1C90A546CC6CD40D286E8725F4B7BC8
          9FDEA456DB6420FE0E72D1CFC84FD5EBAFBFD1F5C4534FE99E0B230E49D1A11D
          5614F9BC95B2B87AF4E84A2444B142D4EB4137F9A953A7720B34CE5DD2ED584B
          2040E2DEF593FEAFC9CDF0D0A76C4E3CB97B06E5B1BFD34D4AE38870880F20EA
          4620D83997EDF46378BE203288EA87520DF9D19C9C3CFAE09DC574FE0537877C
          81296284C0A7FB77C51182F8C8DB53B0D7B880D955572B8FEBD14B470D962988
          0450DE5B376DA25D3535BC62ED975F7EC5E35340BC23253C0282F8C0D505CB55
          2A111F8C8BDBEDA19F7E5ACE035F45D64F18E325DA082013C7AA2C196C823097
          B0AE9BF53E08E233BCA42F3DF9E743938EF8EC80ABAB693475FBB3D8F6DF0FB2
          3242FE3605C63B12E18ACD07DF1DB07BDDB075EBB6BA3F5D7DB5EE17CCA4B7DB
          1112F109E9CA6E1788BA57707B81004D98304149800430F620BD350EF2776169
          3EB0633FDAD039881A6EEA3DC50C6D4F7C00DCD461C387D3D889136369F58134
          86BF19C22EA4460476FA2D4D75F4F233B7F1147747462026E1AD255B932A382F
          1921233E5CC0B0E74101B37D4715B9BB3907D24CD5940036E1A40895A788E5B9
          EB6F7FA3A51F2EE5AF454B788227C6880E4CD2B0F8F4D5CF5AC4B589FA53B88E
          265307482030662FBDF4328FE701A90BB3C60E3E5C4E010B4485C5A78EB986F1
          DE463AEE9764263E2DEF5D4B5B3B4B6865EB70CACEE097082D97C7945F7B7686
          AF2593719E7034013715F91D8C4865422682ACFAD9FD6EECEE7637A2A3FBD28F
          3FD6FDBE99F4761B02E78BB982F4755B16FE13159A91358A029C7B4B35F114E5
          33205770FFB7E73A3CB496919EBFEFD89FEA7B51FB8AA4203EC2E53565C60C2A
          282CE4850E6304587C60DFC3CE23E447B373F2E8D30F9EA2953F7C4839B97B1A
          EABEB9642BC812FCE2B662FCA902101F467A8202863DF7DF79D75D74EE82F3A9
          7D8FB5473755530288C2EE48CE01B12870A75D7CFE02DE16C1A49BC6342084E6
          CDFB0D4D9B368DFBE435A0ECE48C0269F1AC7F0F762F82F80158CDDAC3F90110
          9F679E7956B79BB70EB00E218CE1FEE808F7CB5102A407BB606C8276697D2899
          894FC3BBD773B2F243EB48AA71F5E74D4A731901EAF665D2AA8EC1B4B56B4058
          D95E3E467AC6E735D0B4BEBB4180327D014F4A416E6E4ED7FAF51BBAAEBBE146
          C3DF60E4C7D61674656146796B8A449F9B11206390753773E6DE74E081075269
          6969B01D8C0431DF9B72D85C58B46B16BDFF87A9893E6DCB9014C40780A56740
          71314D9A3E9D37348DD5F553600240C087D462405D9FAEAE767AEDF93BA8B5A5
          9E677901FF7B7B0B243A66C80AB279705E3202C467DA94A913D08A89DDF3E6FE
          8CE83EF8C8222A66F75E16D00CF2691455CC1B1B5204F7A86FBFBEF4F1D28FE9
          D69B6F0E6671C512303F4F9A3489CE3AEB4CAD7E50D8910D55BC860F85454434
          A0753198D7F2D89A90468D6680B142BA3A02BFC3243E8278A0005DA236142203
          C6491A3DA5407CCA06F5A567AE399CF27232938CF8DC00171781A0FCD8328276
          751770C2F341D31872BA8AC8E3CFE48D56CD02BF83DF3B66C0463AB5642DB9D9
          F73D7E6EE22BCCCDCD6D3CE9945F1BFE86DDD3DB15595CBC5D0E7B6C4EF47985
          036CAC60AD9E31633AAFF9231ACF5260ADC34D5991E5F07AEB3D7DE8925E94E1
          9534C407C00D9BC2884F21538231B4FAC0BF8F09002519A2817272F269CDCA4F
          E8A3F71E67423D97EEB8E77FFCF5E953A72645705E922228604008060D1E4CFF
          7AE8415EFB46E6E68465C028120F452AC32E2C06BF78CD8E1DF4872BAEA0FABA
          7A65A5D69801D73265CA643AECB0C368D0A0414A5FBC5AFC12AC20D81D47BB60
          D5880FAC3C2354DE43EC87E9180C58CA9E7EFA195ED42ECC71C3FA1359968605
          EBE2049C703905C6B95AED0381FBE3A07F5C7620CD995C4A9DAE9E9E545B131F
          879F939B6BB71E459F358FA69DEEBE68B59195EDF0664442ED19F9F1797C199E
          BDFBEDA45F0F5C4B83B23B407EFAE1DE9F72EA69A6E68D94DE2EE6B6AD20CBE2
          0AB6CBA140207C24C01027A278951B7A13166CC81AF4F182AC9100590B1654DB
          27C34D27CC3F2F01A797182415F1E1C5DF0A0BB9CB2BC6850D112F0229B62364
          70A4BE2C6FFCF71EDAB9630BDD79FF12FEBA2CBD1DECDF6AB37C2A2344C080F8
          94305200E28372EC8AF82EA52B480E7CD049615A7B4477F01BAEBD96BEFBE65B
          1E8B134F60378640E7830E3A88FBE3032D01820408C4A7AFECE3B89EEE585B9F
          646B48D924126387CD8029F32AAC3D3B77EEA4C71E7B9C5BB0C2384F41F2EA49
          116B9700C0F53D980235665AD53E00B2337BE2605AF4FB5F90C7EBEB91D26E57
          E263055E7DEE0972F9B370E38BF3F2F29ADF7FFF03CFD2A54B33366CDAA43987
          18A980B50F490CB6B3A0CB880FFA5DE14E5747F17398574509B80C58505B848B
          EB820B16D088112304F981BC2DC7753152DCD5E5CBA2BBAA0EA45DEE7E7085F2
          38CA9D370EB23ADECE122415F10150D8B07CDC382A1B39329681CEA2995B8F38
          8AECEC5CDAB2F17B5ABAE411BAFDEEB782AF33F283181308ED949C1809021730
          2B57AFAE66E31B24BA7075C1CDE90D7509E9657521B627AC6060286A108F7FFE
          FD017AE5BF2F71779715C035C21F8FB2F3071C70008D1D3B965B4BD86BD96C6D
          0AE6E565C4A20DE7284BE50F1B083696170F147588F03F232BD9D2788A886444
          4382889822F63867D4EC79EAA9A7F9714C121FE16AC6FF4E4A7CC0A870A3023D
          B23D053ABB3D74DB39FBD2C9078EE1450DE5E8CDC4E7FAC5EFD3EC7E3B8829D0
          1C3607FA30E5DAB478F1A3F4E9E79FEB7ECFAEE9ED5216172C91287D82AC8B48
          632CE056C2E6BA83ACDD28C3758BF50C1DE505D9193F7E3C9D79E6197CCD4BBA
          1FF19290335548695FD65A468B77CEE401F0EC86F463C42769B2EEC241D2111F
          DECB8B09EB19B366714515C3F387B91D93A4C7E2CBCACAA10FDE7A902EB8648F
          50638A190B15BD676C1B9C9764080A18467C7C203EEDEDED74C8A187D2CDB7FE
          955B1114F71A2908707929FD0DD8CAEC3077C83D8045E9A5FFFE97EE597827CF
          B6B2BA8F96C8C6183D7A340F469C3871429094E05C9056FFF5D7CB785D9CC83A
          92FB791B16D40E1200E9C275E3786565C3710E9007E2C27110C4BDC0FA61B8C3
          00F1D9BA752B273EF20ED60630B4B02400A2D4BF6649846E8F8F8614E5D35357
          1F4AC505B9E4F6EE9997BD99F8EC7567255D33FC0BEA9BE946F3D6FE797979AE
          6FBEF9C6B5F0AEBB75BF274B6FB795055D223E22F3371A198F0D1D165E8F708A
          38A347D03E364E279C703CDF64C936512065080D6845C03B9A97FED03634A56B
          FB241DF101B0F31FC914041E31B4FA88A25E3067862C3E109F9D355B68BFD907
          877C8129675B07E72519B88061A4870B98299326F1789B07FEFD2F1A3D762C75
          87663F897B05821375C06F7E9F3EF4D9279FD0DD0B175257675742FB48615786
          66A77BED3591860C19CC1B64A2CDC3EAD56BA8B9B985F7488A14B25D5E10A24E
          16DC6D871F7E58F01C24C0F585031ABAA022203EC2CC8E83552664B0B581350D
          45859DB26A91BAD60E37FDF684A974E589D3A855D6BEA237139FFEB736D1F1C5
          1B78BC4FA72F3B93CD8122F668386DDE7C4325C308861D2DE838276CB0A291EF
          86443ACE40920462269D04CECE746751D100BAF8E20BE575C430EED88054E438
          BCBECD5DC5745FF51C6E83DB7DA351F26C722229890FCE19BBDE693367F2388C
          181681C30E176649A7F20DB8BC460EEFD9F38D919FB1140800B55D705E12810B
          18467A8202662C23B50B2EBC80165C74915A3352EC5070D3A3368DF72BE8471F
          7DB8946EBDF92FFC79BC8299C3052C40F2798DF38ACCD2630C1C070211996628
          7F3F72E40879DD0FAC09086CDDA0E308888FC8A282A28B3460345E00B12EA7C0
          BA56B51E22A32B3F27939EF8F3A134BAB43FB9DC810D586F263E836FAF23A446
          5F3DFC4B1A96D38A4CAF3E6C5E6498097466C4C76E16749CCF3E1468421AA915
          4AD4A6C2420E2B433286E811B40F4BCF2F7FF94B3AFAE8A3E4561F907DACF15A
          587A9EAD9D46EF378DA5969B131196147F2425F10160E941E02BDA59C490F888
          49D2A38169666616958F18D1E30B8CF8D836382F491014308CF80405CCC1071D
          44FF79641115209B2B34B647ECA0A2569870FB2CFBFA6BBAED2FB770011001E9
          81452487ACEF2D156B4008B4B95CAE4EC4001D76D8A15C304A961FF8FF415074
          D3CCC3243E76485F378208F6D6AC9F840EED47FD6C24DD75C11C7233790451DA
          9B894FE9EDB5995DBE2CEFCC7E357469E9F7BCC0A19F1C03F2F2F25ADE7AEB2D
          EFA38F3DAEFB7D9BA5B743C6C0DAB93D8ADF10D9A7616547C601A2EE193F0FE8
          4BACF3F3CE3B97CACACAC42647C4F85567397CEE164F2EDDB3E3005A7FED8828
          0E6B5F2482F8C0C41D13828094F6C9336604025F63E7F2826953D4F308199CB1
          E5A355BF20A5B703D144FDF7567001C3484F888079E01FFFA079A7CFE7713E32
          88E05328CCBA680E8AF627D59595F4BB4B2EA5969616EE560B13D9B4271036D9
          FB4E60670A96E3F47205EEA7F3CF3F8FCACBCB855084191C453B35E370C2243E
          898A790807C215870150557E109D0874467AFBE1FB943122E4E9D5C447A0F0D6
          46BAA8F4473AB0603B5C5EB94CC9F6EDE8E86840A0F3175F7DA5FB5D467E10E7
          87459F480B3AACFE688E8CECD248E727489328769BE8A06D2137A1CF9CF81F19
          A5686B71CE3967CBADBB03A56BAF467AFBC7CDE5F4C0258724F8D4E334200920
          3E10A21155D45502C4A77F51114D9E3E3D96E9ED5002587C50AC2199413AC407
          4212C1791B2930D1D3300728BF0914A8D01C2260366DDBCA636D14F59AB03045
          99FB886F367E170BFFC6EBAEA3E53FFC1812F01B0640D8E01B87524C78B3C228
          811800583878361CC606C1D5679D759628AE08215E22BDAF4AF2C2203EA23823
          6A2C3526FAC20D207A8769F6F102F199357E103D74C5C14CBB38A8E8C8DB137D
          CE0947F16D0D343AB791AE1AFE3565068A2616B235E7AAABABEFBAE4B2CB74BF
          6B93F4769839604D8E464F618EC38205CB74A26A53C981CD7CA9744D4DD095B0
          FCCC9B378F264F9E244F6F8725767706F9DB3CFE0CDECAE2FBABC726FADC638E
          44109FF114C3C900C13C7EE2442A2D2B53BA44A2014C8350B25B4826E875880F
          FE8349131A341AD3686F0362753A19E9A9C518622E62F771D7BDF7D2ECFDF7A3
          CE8E10D7BAB0B0F0BA14911E100A19D69D85B7DD4E6FBFF51615141444F233C2
          DD960CCADB2C825618761F3C58578AB61A70F64330AA063A9B243ED854E01E8A
          3A4B768748B7C7796B92EDB64E375D3F7F269D337722651F7C4BA2CFD936B8F0
          C12FE9E8019BC8E5E3B57D062288BEABABABF3D1471FF57DF4C9A7AA1B44467C
          F05F22D3DB63D18F4BA4AFEBB6404900CA684F0CAB07B276F0E0C174E18517F0
          F52B858C402042F739D1BD7D5DC720BA61C131893EEF98C372E2134F6CDB5E11
          2BAB0F165D3905146C50D01B101F119C87F820DB3794B401402EB19B466C8F1F
          63886EDE730E38806EBF6B215B953DD2D7B18382E521AA0CA0BEFDFAD14B2FBC
          C0EBF520AB2182B475313744ED99100B883C28191FE0CD4DE314942C00F794B2
          E717AE2B8F11BC308E1D1277C38B479694D08205E78BEC0F5C0EEE01D6438FD8
          2A93C42724D620AE83123B881A5F08B85575AFA2906151DF5C7AEC4F87D05EF3
          EE4FF4F9DA0687DCBF8EAE1CF60D757AB34447F06CB6E9F0AF5FBFBEE2BA1B6E
          54DDF84AC4079FC71F89B0A0C7A21F17881362FFB0C1B7932B57AC71B8ACA1A7
          786C23B2398F38E20879A033367578D28040E793E69F9BE8F38E39528AF86CAF
          AE52EB7B1429B0AB87A00FC62118101F00E64428F34D891E8B24007CE888896A
          437FAEA9932773A2F3C0BFFF4D93A74C5616EA13CAC74951580A9101F8ED37DF
          D0F5D75CC3F772F2627E61A047ED192879100F10903163C75041417F7E2D78BE
          8D9181D6D656FD8C2C7F789DB105402D40B2D0D6E388238FA4216844C88E89EB
          42A3D08F977EC4C8640777E599CC080BC9B402119D3B772E138A8773524A018B
          10DEEFB18B35417C44CC83664B081B23242558ED032D1DDD74EEDCBDE89687FF
          97E873B50D262EACA46BCABEA47E99DD995E7F46397B2913F390ADED8AB3CF3D
          4F353141223E80B0A05B51D707931B4BB080A2EFC765E81E4D3042D6386414E4
          C325975C4C8585FD99FEE4DE451024903767B6C3EBF9F5E9E724FA9C638E9422
          3E6BD7AFA33E7DFBC632CBAB9C02CC579179E2E0595E9F7EF0386DDDF41DBDF6
          E656F99BD8314021DAC9C469374091C0E40A52C91B938E1F33964E9D771A5DFE
          FBDF5347A88B4B5858A2EAE703F7D60EF4E0BA1C3DB8EA22EDB80E771B764C10
          9401E58D6ACA8C148C9F3081E69D7E3AEDBBFF7E5C908875B56AE54A5ABD7295
          26F110A4A98311144718C961F81EC60905088F38EA4846B8C6068E29153CF4B1
          FF57AD5841EFBDFB2E7DFCE1D26000B73C090063A0202859D2F5F1DA3A5847B8
          16043AC3FA236D2A0649D71F62B131417C444C9493922F264AD48DD2246DA8B7
          949595413FAD5C15D60FA7320A6F6DA2638B37D26903D750872F1B1BC9BE6C1D
          B0E5D2D97CCE79E7AB7E47467C3081E0F28A68771226F2694F66268479A4D9A2
          22201E0BC54EF588E40859E37801F267D6AC9974F2C9A7B035EE16B26BB0743D
          35F3CF3833D1E71C73A414F179EFBD7769AF29536299E125DA2240418708EBCC
          CC6C6A69DE4DEFBC7A2F3DF7DF95F2B74470DE724A7C097E3B024A04E38312F0
          7C4C417CF69B3D9B163DF67F3460C000A5D50E3B282C4208A4886E2C2C2098E7
          375C732D7DB36C19AFCC1C21448A7330951E42A3B4B494EEFFD73F69C4C891D4
          DED616E2A203B9E01598757ED421FE0967B620985F22F870AFC932338200D1C1
          B1D7AF5B472F3EFF02ADFCE9276E15020903A9D9BC712327480A522676AC3C96
          0A9637C4F9CC9F3F4F54CFCE96DE87BB2AB8C330203E22E6012EE09824362400
          70D1C15587B813552B4447979B366FB64326B63D30F8F6BA6CBFDFE1BEA8F407
          9AD9770775FBB3F85A6C6A6AA2471E590CCB4FC6AA356B4276A932E2938C1828
          3D408EA32EAC1A4784AC71A9650D9D75D6993471E24411E80CA18035BB93119F
          C8FBE4D81429457C5023080D4C51FB2586561FB858A0706B946FA07BFB775FBD
          42B7DCF290F22DD5A6A76970C0840A2D1DB4A281F8FCED8EBFD179175CA00C68
          C6EEA49C02CA32A280661EEB9297470FDC7B1FBDFCD24BBC296884E8517BC62B
          B99516DE7337CD9C354B69A94A04404AFCD22348127390AACFD6797D7D3D1515
          15F131015101197AF05FFF52C63AC9037A9D4C3EF8DC6E043A9F46D3A74F9707
          3AE373C1C06E5494AEACACA2C71F7F22D86643F67B23A4737352F2D6BA12712A
          185BD56274501E6BD7AF4FF479DA06A5B7D7E6BA7C59AED1798D7475D9977CC4
          B27372691D23E2CF3DF73C27E5A21168324241D284551096D09A887ED03A84AC
          71F6F081EC8C193386A7B7CB2ABC832061AD6FCF7178FDDB5C45F4CF1DFBC17A
          47590E7B55F070F93229D3E1A77925ABE9D0C26D6896AB3F00A9447C9E7DEA49
          2A2E29A1496C42C690F8882AAE3D0A99656464516B6B1D9DF99BB394DFC1A8C3
          AA914E6F0F856AC60488CFC62D9BB9754461AD0B718945025877DE7DE71DFADB
          ADB7451ACC2C80F3CE95CE859F24AC3B975EFE3B3AEBDC73A9AD3558E206E6E1
          1CE9FA3009AD4A652D961E241D1BC237C8C470DDC2D2239E633CEEBBFB6E7AF5
          E557948430A4633AAC49C3860DE39D9D65BF817B83605F6E6ACACACAA4DADA3A
          BE93C73D948D73C8EED2A2B188177453F1410A376C4A87F70930E28354765ECD
          F9BAB22F6870763B65B2CDE2071F7C404B977EC4E75F0A111FAC17C422DAB936
          951C628D075B6960FE9E7CF2C9B4EFBEB3E531962048B0D436E767B8034D4C77
          CD6224C3C75853E2B94337233C9863E5B94D745CF1469AC59BE4661B9E594A11
          1F587C10DC397ED2241A5C5A1A4B979766154F587D8E997BB8DA77D2E9ED3DA1
          9A31F1FB3F5D45471F730C7584162B1416164DD78211E0EAD9C414D19FAEFC3D
          0FCE8DA20797A881115478100CB3F7DD97FE76D79D246A6250602725D2C201BF
          74FE4A5371AC171DC66A24855690C6312BF58E8566BF1E466AAEF9E355B462C5
          0A1EFC2D43481D1208C5238F9CCB2B3A4B561F084E10016EFD02F1A9ABABA787
          1F5EC4C742223EF2F4F54495EC8F2574AD5769E2130A109F6E7F26AFE5F3E7E1
          5FD2D87CB674B2F2E9B9E79EA355AB56A712F1C17AC7BCD0CCFCB32942D678A0
          8F57112D58B0800A0AFA09FD898D27641F648917E4E795BAC9F46AC35EDCC222
          040E8850B6C36B59097BCC2B5097BDF2EBE8E785DB699FBE3B09E9F72E9F3919
          9F7AC40701994C804F9F3993EF4E63747DA2864C0F250C017FE231C7AA7D0773
          00561F4C183B46F75B0D1041ECFE7B644CBCFEF65B8180DC502B1D1439AC2511
          B53408583472E9C66BAFA74F3FF9249AB81E115C0D3889B78A0BCCA97B1EF83B
          77FF48194F8028512F07A4074888DE44F4ABFC1DCEFF105E792ABF6B98368E0A
          D6951515741523870D0D0DF2A06F61E9E4A9AFB837708FC1EA83DA1F521CD610
          E9F7DBB1D6601942755E74929748A6615C4C1242335E09EE8233CE389D264F9E
          2C6FF40A6030A03C4004DD5E7F464DBFCC2ECAC9F0923F06AAA2CD938BBE580E
          A67C44F9710F53029E9DDDFD6861D541547943694206AAE8D646BE133FA5641D
          4DC8ABE73B73CCA1EFBEFB8EDE7CF32DAE585502EC2D07E62D5CD653A74EA139
          73E6D0881123F8B9895843511CF7B1C71EA3EAEA1DCA0D144E1EF301965E2725
          571577A1D782E9ED9065E8D777DC71C7CAAD3E43A5EBDA95112848499F349753
          93278F32B8E5875DB8AB90D6779690CF9FC1E6B5276E0448109ED1794D7444E1
          169AD5AF86B2337CDCD515CE5A4A39E20360D2968F1D4B652347C6D2EA038526
          BA07870CDA49C71EA7F59D42E97BD1A447A602443FAE75A4E2FA5BB2F4439E19
          2503FCCA18B788039A451FAE1BAFBD8E0BB528846B0FE50D81B0CFAC9974CFFD
          F78B805F718DB050A9A58BC9AB3BCB4FC411A3D772A4F39403E306D26DE86A43
          26E4375F7D4537B0B1122E3109B80703C4B5E3BA67CEDC874E3DF554A1D84545
          6764DBF96161FBECB3CF69C99225B0B625433FAE4881607B1EFB40326B1EC6E4
          CC33CFE0CD5E15C447A4100B34F8FC0E9786A016315A661030AB3129CE547381
          EC1838A7EDD89D2F691C472FD64D25D463D979E320933F1B1B9CF2CF1F79A776
          1CBB4BB6130771A8AEAEE60468C58A959C78C803EC4D36B93537403ABF03320F
          FD307CF8706EC99C366D2A7FAE9528F0C61B6FD0B265DF28DBDB24636D2A39C4
          1A87ACE8141B1CD4EF42D286341622130C41DB5DE8C0969B01EB4E609A628411
          53B3A1A3983E6A19432BDA0613E8109B97313B49415326F5A9A3430AB7D1D43E
          B57C5EC1C21351299054243EB8262C2E587D7203C5D762F1F3B8F96865D1A33E
          830EF10150A91AEE91643281C61ABA0DFF5E7BEB4DF9534840D44887D9B8DEF0
          97550021EAF579E98F975FC9339A60528F10AA5DBAD12DFEA8637E4537DE7CB3
          DCDA03A8597C343B7CC71870B1C97D55BC34BDCAE730180EE90105C917070A3B
          3EF2E043F404DBD5CAE27D44776990A8EDFE00E8ECB3CFA6B163C708E52EE28A
          1A44C6CE430F3DEC6002B38CDD076808272547CC43381041F7183F28032E44E1
          EA3AF6D863E890430EE1630352CC14A9B018CA3BE0C257186D91531C53DC479C
          4FB1E2FD1AB63B6FC5EEFCDEEA396C475E44F5370DB46470D0AB6B7A9FDD74C5
          B06FF873B43E5002CA15EB74DBB66DF4CD37DF527373337F2ECA3B40E1464B7E
          20F715EB33E43DCC73587866CC98C1C84C0EEE99B84742297AC5DF203BDF7CF3
          0DBDFEFA1B72E2032B0F2C266007764D5F3742C81A27A98F17AC5FF3E7CF9793
          40C836C817D5720E7CF7C5880823F4F4537B297DD132920741C7220E08BF8060
          EA030A2A6976BF1D1159787A9C6F2A119F58636B8553F9122407767AB0440407
          CE80F860B2A0A2736F4D6F0FF6E3220D05A8203E9A9635B3805BEBC9C71F678A
          FC61A6D023767101206C60014E922C27D8118254DF7DFF7D3479CA14F9CE5E54
          36CEA13D561F908AED644D8033941F247286346E6ABB4F11AB2410347183B4E0
          DAAEFEE355BCF6908C2C86F4F81181CEE79E7B0E575E7E181B02EFC3B2E3C16B
          6FBDF576F7D75F7F3D8629085C7FC481E9364739C9B262F0029429622390129C
          919149FBEDB72F0D1932048ABC90BD37447C912978271B273E27A291BF0EA90E
          0223580E76EFA080E53E18BE8387D5E7C9DD33E8A3E6D1D47CF3004B0606850B
          FF387C190DCCEA24B75FBF7026E68B18BBC03539B8B28D85A51E63ABB0BC85BC
          87390E5981CFB0E7A2F82C7F5BFA5FD4BAE1D6CC1F7EF8815E7EF91539F151B5
          FC25217AC430BA5CDD74DA69A7D23EFBEC2DAF0A2F5CBC9A490A0102E4E5161A
          5F0C1D5EF825B8D5BA23B4F0F4F8BD34F1D1860AF111C19AB04404776C06C407
          E8CDE9EDBC1F170516952A64C427EA80669012EC1E2FBBF0229EBE2D046B0410
          018B8DF2736F6F6BA7B3CF3B972EFEED653CAB4B06B835B3A5CF4301F1C2CA64
          8F06854006EDC94C932368A2477033EA1C5D7FF53572F7608F1806288AD34F3F
          9D373794768422DB897FAFB5B5B5FAA1871ECE64BBED52F63C15B2B99410D7DB
          C3AA06052EDA96141717D341071D447BEF3D030AB650BA071E363F5B57AE5C45
          757575662B6AAB02C780E29E3DFB67A87F05055C221DDB2B9D5B3B023E97B594
          D123BB66519345C4E72F8F2EE1C1A69DBE6C6C14B1F390BBEF203B75335DAD72
          75C99212822D35543EC6E72FC8CEF7DF7F4FAFBCF2AA203E4256D9AD1F5744C3
          245D0BD638362A3ECCA3B2B232EEF2126345814D2036A6BBA5BF83434981FBEA
          55FE68AC106B9692263E3A50213E00D831987E30ADD904F18122445F8BB5641F
          45680582FDB84867EECA880F142CC634E2960650DE0FDC771FBDFCDF97A20D68
          1E25FD0FCB13978EBCA91FDBC13FB86811F5633B7B59A14558783027428AFAD9
          0CA2ED871248A5E3E32D94F0E5975E469B376D92073A8704F4621C4E3B0D757D
          A661B78C2F212D36D8E29E2906CFA79F7EE67CFFFDF78731E229DC5DC95ABF47
          891EAE01AD0F8A00D921434A69D4A8913CF30D63B775EB364ECA6301C86F709E
          E9D367D0F0E1C332468C1891515858E867C78182AA6713D88D8C9B076B66D3C7
          574DB264805E7BFE09C4F48839A304484F15D9CBFA2D0A93AA81BBB160BD5458
          7C706DF823E238449B416CF48241FBB0F41C75D49174F0C107CB2D675A636537
          0208D90D5D2DDF596083C7776A69E2A3030DE2830185D50783C8278809E203C0
          94881D45544D36930CC17E5C7A1F92888FA82BE1A408C9214CD7AB57ADE2194A
          4014BB6961FA0D89E74281C23F5D7B0D9D78D249D41E9A7A8FDD3F5EB0B36543
          586EE4161F916ECF77E0D81DC362F3E73FFC917E5ABE5C191B15ECF1C384A00B
          3DBC0E39E49708F416715041E037D8F8381F7E7891A3ADAD6D147B6E37A1180D
          CC66AA61F060190AC9100260958CB04F9C2A64BFEF2D2A2A6A38FAE8A3506D3B
          9FDD27ECCA6B5147A7C25548F7541F405E7F06EDBEA924CA236AE39F4FBC4AC3
          725A916586B5ACB5F3C0FA56DB20F8759E1B65372A5F337A5FFC8F1BA18C8F52
          A29EAD857A04634B169F903A57711B4CEB11D2C70B736AD0A04174D14517F239
          2B59C7445D2E3538C93E1B7BD153518EA06B3F4D7C74A0417C809006A626898F
          486FC72ED1CE0A3256305D7C90111FB18BC66EA32192834169C342812CAE2F3E
          FF5C5993261C4010C2DA034D12AC83838AD207FEFCE774DBC23BF8AE5DB66E20
          04311F9241B1635020B045830C08A9605026C610BBD97BEFBA8BDE78ED756551
          4390F672F6E86002B01AA4E8C20B2FA0810307623C0419E06084B3ADB3B37307
          8A193637370F654A5EB7C167124135D85D05A2DC3F3E6F950590073A33B2535F
          5858587FE9A597600D1433520452CB637D5EAA9B4C6F364CA496BF14C5ED245E
          7FFE09EAF465A9291D394481CDE0D8489B14CDEC4529964CED33F2FFB5DED3FB
          1D00EB42B3000C5B1735EC7BAD4F3FFD34399D15198C04E856F04E628835CEAD
          7220D458DF203E081960EB5E647769B176AB1239CC5C87A84CAD046F2792263E
          3AD0213E40B0F58249E2034020C0EFBD25D1D71667F4E8C7A507467CA038B193
          08091A0F07203A4B3FFC906EFBCB2DD1D6060949EFC40BD8E9609DDC8BBA3D7B
          EF2D4FBD176E1E909E6451EAB83782F880AC20283318A7020157B363075DF9BB
          CBA9A5B95959B324D88BC8E572B5A3861102209980CC60E333541A0F3F233ABB
          5B5B5BBB1F7CF0215884B2D9F3724ACEAEEC4A882EEDC15E6D1A10D97D50EE56
          F66CC28EBD2FBB3715071D7450F731C7FC2A8BFD8DFBB53BCBE1F3377B72E9CE
          AA8368F3F5C3E376022F3FF724AC3D6AD98D7260EEF14D632006CF4F6D6DEAC3
          847507EB5814C5474380E309D980FFA1DCD9435870D4D0CAE4490DCA34BCFBEE
          BBD818A4626D2A3982E9F96CECDB30FEE8D387807DB6C101E181DED3EAF00C59
          228FE5345BBB2CD69FC79CD7725D424ED7A5898F0E0C888FF06123F84D28770C
          A68B1121BD4185FB07E6D1544E6FEFD18F4B0B8CF48832015012AD469F570384
          22BA8F5F71D96FB9D28EB0F33A200216832651A0ADB58DE69F75065D7EE5954A
          171776B5B00C4564A5B20120C88649D71AF4C5C0D2F3E2F3CFD33FEEFBBB322B
          2EA4C70F53AABE5FFDEA68FAC52F7E1192368CDD3BE2035E7AE965DAB0610394
          4511533283298A7B6C0398756F8814671023ABDDDABC201D93E9EDB0CA9D7DF6
          59346EDCB8C2EEEE6EDCB7A6FC0C0F7DDD5A46775D7478B4C7D1C44BCF3D25D2
          D7211BB5EA48F031C4BAADA9A9A1AFBF5E465BB7622FD833A819FA09640516C6
          6875157E1B1BA440B1542F15150DE0F57BFAF72F80AB506470861C9E3D9CEC3C
          DDAFBDF63AAF3B949F9F2F5C78D8A4A55A990622C53CC7BAC618619D4B050DB5
          6205315620826A3B4EB3AF85F3BEDE67B275DE433C567D9AF8E8C080F868F93A
          EB18F1D15384A99EDEAEDA8F4B0B8CF840E0405256457A4028EA471E7A881E7F
          F4FFA85F414134E78E7311A9F4DC82E3EEEEE68530FFFEAF7F524141813C5603
          24093B8B1A33D76963C0A70FA61824E2995999D4D1DE41575C7A195555552989
          6430A38929D726909CD34F9F4F13264C90A7BD06ABA663A7FCE9A79F3AD8F3D1
          4CE1F82839DD033D9A3AEA7C56047F262AC599A75833B2B3BDBCBCBCEBFCF3CF
          73B0FB54C2EE458383FC5ED443F9F5E9E7C4EDE02F3CFB34EAAB603303E2A366
          A6C124D9CEE6947FDDBAF5F4E28B2FF279C3C84D96969556D634336AC86BBAB1
          31F24C993285CFDFCCCCCC3CAFD72B9AEF8A075C37CD0122DF4DCF3EFB2C5554
          54E4B273C7B581C0A75A61CE1EF31C6407C4077163B24ACE6A2431D8F32B8A63
          87FBBED677209B876BBC8FB8DCE634F1D1810EF1D1F32182513A19F9D18BF4C7
          77A158EDDEC53712A8F6E35203233D583C58444E8AD05504A55CB97D3B5DF9DB
          DFF1E0E3288246C5B9842C6058786EBAE5165EB05091BE2E7645C95CBF43A08C
          1469C6D8197FBC7429DD72D3CD3CEE47A194F079ECE69D8C087AF059B46A4005
          5C79FD15A63032D84EDDFFF1C71FFBDF7DF7BD7EEC5E617C551B7CDA1C2266C5
          2835BF47664C0210CC3A03F9F9F5AF4FF1CF9A35AB0F535A20F4B5203EEDDE6C
          BA6FC71CAA72F5E71578A3019A4496E6B4D21F872DA3C22C97B0F6607E881D02
          C6441E7F53939595D5D1D2D24C8B162D46E903909E3CE93B91E7F6478606362E
          75C2652B4B6F178030E1562B76CE2843E07A946DAE5A5A5A06B2E7DCE54BD6BA
          32E38D1EF31C6407595DC730F927233E20B472533048442BD96B43236A2CC901
          F9C6ADB069E2A3031DE2A3C678E56862C4474FF0813821BD1D569164890D3103
          EC76611130D5A283111FB804601E8D2830580434FFF5E69BE9E30F97F2D60B11
          42D4F1009C242D60C4F24CDF676FBAFBBEFB94BDC4B0A072233D6F1B02CA09BE
          FD600C8E18DB9BAEBB9E3EFFEC3365B078483B0AA4BAA2BCFDC5175F14EC6B44
          52BC09E33E6CD87C558B173FEAAEA9A92993941CC63859DC04507EE51470DD1A
          351C160D6A9D6422B62D8EE059898C93EE2E2E2E6E427F3576FF0631520AE6DE
          89DA3E155D45F4F71DFBF3EABA598EC8E2AF4172F05BBF1FFA0D8DCB6F106D29
          201771EF45B98F90A063062F2C28B0F4AC5EBD06A45ADEF8D5CAA48F3CE951C1
          147AF7DCB947042B6E8B73A5D02C481F23F1159F7CF2897BC9927741E845F35D
          A785E71C4FA8CE7324728C1F3F8ECE3CF3CC58B67FB2EA7A1067269F7FD87005
          3258D3C4471B1AC4472F104E8EED8CFCE85903447A7BA789DF8A17DC145B010D
          171EC89CCBE8838CF4200012CA9617CC8AE46050C61F7DF821B74A2006208A80
          6679302A8F41C122CFCEC9A6FBFFF94F1ED8A7D8ED944A9F4D2A496000043442
          EA07950FC674ED9A35F4C72BAEE46446511E20E8D26163D53560C000BAECB24B
          858B4B583E381881EAD8B06143D573CF3D9FCBEED128F60889A1B23942527C75
          3EA759D43041E005F93A3B3BB7FE7F7BD701674575BDCFF65D586061E9CD4514
          952252050534562C51C01251C01A4B62D77F12A3511393688A1A638C89151404
          62031BD680880808282201A9BBF4651796A56C2FFFFBDD376776DEBC69AFCF2C
          F3F95BD9F776DEBC993BF79EF3DD534F3FFDF406043A8BDFDB29D7472D526BE9
          CB83DDE9B9DD4325F10997FCA0223352E36FE8B49246B5DE8A6285789BDB73C0
          7A684862603DFCECB3CFE8934F3EE57209216B2F41E0069D08E0DD0905CF356B
          14972D07F2AB10F3F6308E9D36ED95C6AD5BB7B6494F4FC71A086961E45118CE
          732E9279F3CD37C97F3D467E4CE1131F0B98101FAB3A065A20DBCB6A07032191
          0CF3AE1619645CAD345280513B0D6886D029C618E95A5638022B61D4EC41ED9E
          28FA71F14E87CBD34B1C3A7890AE9A32856EBDE376D99B4B033C7B58A9BC1AA4
          6B063C13286EA4A3AAD20D56B4679E7A8A66CE784D5F1052ED572564C87608C8
          4B2EB984060E3C11BB66B608498867555E595955FCECB3CF622C51CDD9099170
          03823AD45B1CE7B8A8610221C9A7782E6539393925B0FAB46BD7AE4D5D5D1DAE
          4DCA25B8B93E2E3B9ADE2BEB4307EAB3282BA59ED26C0810FA23C1B2D321E330
          5DDCEE07D93F091DB31580C060211A067563A3B26AD52A9A356BB65CBFA98145
          CC969364C47EA9195A62CE56A0C8E475D75DC731453D485394936F5FC8992D4B
          972EAD43B0B32071B008417E1692B73741A60D8539BE0A2D6A0A0A0A0C1BB87A
          113EF1B180450143B32EDC0C19C06793DD75C4420968CE14E353A8BC0EFB1C6A
          E6D1134F4653A119E014655C8B1AD0DCBE63477AFAD97FA2158036A019667C10
          5FAFA7659B21C48587982958BB9031B7B5A8481FE8CC9B80DD628C0EE4E5E511
          EAC760572F7686D82DC33F962A76CA7B1B1A1A0F4D9D3A95C44E394D9CA3809C
          B98E928D6ECA3DC8D46B8BE35881BA2DE6435AE5AAABABB70E18D0BF6AE2C489
          A8F3C33D99EA20C8E0AADA51DD9A562A8D2577D7E4CA5E4B46162034864C4B69
          A41FB529A4F3DA6EA0B6E955DAAEEB9CE51A4268B960E3DAB56B098401B1784A
          7A7A48E98804832D5440A1189BC64B2E994043870EC59CE7983F2D4AC5DCDEC7
          850CB303BB2DDCB3D70B74B28BD6709EC30286AC2E58C334966F4FC3273E16B0
          88F1B172770555C35501374C4323F5EED52BD9B795346C2A94B50C5958449CF5
          82F4D63DC5C54219DF4AFBF7974553E323A4DF0E3736BCEF370FD0D8F3CED3A6
          AF434872706E738ACBD2034410C1DDAAF202B17CEFDD77E9B147FE402D5A8614
          86C4F8E1014071D48F1831427628075954640B76F5F982ECEC5BB76E5DFDF4E9
          33F0BCDA0832E4763701BBAEEC82B139D101EBDD6D84585A56C573A810CF6307
          BA6DF7EBD7B785784E50726A4A3E480EAA3B97D4B6A0AF0EF6A0C507BBD3CE9A
          D694911220407069C1B5757C4EA9203C1BE9C496C5AAAB4B831ECA180495E900
          512E2B2BA3050B3EA7952B57AAD5C1C9C2CA9060A80D3AC5189575E9D299AEBF
          FE7A29530479C71CE5098F8BDE2E644FD5A64D9BE895575EE56EF2218D8C3D06
          DB790E7978D24927D165975D6ADAF4D56BF0898F056CD2D9CD029C4DD93F3A36
          6F5CF725EDDBBB8DD2523304436AA496D99974785F2D7DBEB2903233D2A87CFF
          7EAAA9ADA1B27D65F4C3BA75727169BA01BB16D80920DDFBE1471EA193478E90
          AF4DCCA20514109011EF9090B2FEF7279FA4994289EAAA0B870B6EDA5948CA4E
          07BBD19385F2FED3138F538DD8E968D6072C1878E1D59A3D4E91ADDCABAAC453
          85B24A15CAEA57F7FE1F7DBD6C993ED059ADFB21C66A2F7687E709C278FAE9A7
          69778750B4594269EC9F391341ADAB53C49CE6ACC82DE40ED79016DC96861C5C
          1F974028A4E406349B41C6AA0885B5A367CF9E87D174523CA77CD4FA21DDC603
          6E2EB8BBF6D76509F2D3933EDBDF8B76D7E652DBF44A3ABFED063AABCD1621B7
          1AA8BA2164A301CB5F3BD2240600203DAB57AFA677DF7D4F666FE9B203D995E4
          867A38AACB4ACCD97A3496057957627DF88271ADB04EED00299A31E33569C112
          F7C46E7BEE41E625E0DE5043CD32481B713DEDDBB79795DA71EFCD8133F8C4C7
          0236C407367F2C787D09742846530198969641299A20518C3F84414646AA1419
          0D784D0122F1D1BC79F481101A2802875D12A76ADB05F1CAEEC6142CAD63D5ED
          580FC476A0C855D76EDDE8CEBBEFA653C78CD6A77D6B81F1E206AF11093B084F
          10C27BEFBC4BEE3EA2485FE79D9E1A8CCA595B8FFEE5CF3478C810ADE2061980
          591E64C0AD4D486309EC74AB4913A40BABFE3A21E8EFBDEB6EAAADAE11442868
          B7AF2A7F3186B520EB93274FA2DEBD7B6B6BFBB41742F360696969F58B2FBE84
          39D3523C3BB7F63B721A70CBA40F6BDEAD0549D9358FF5B2F5820B2E681835EA
          94CCAAAA6ADC23E67E8802484D691404A88EF6D4B6A4AF0F75A313724AA87776
          195A5150636869142ED858AC1D2B28C8F272A4AC3F27498FCE45EAB671535D56
          421E17C35A09EBC6A04183F4AE1DC8AE4A41E00FEEDCB98B5E7EF965B9B913F3
          3D5901DAD1C2D17507AA67A70BE2733D75ECD831A8EF9C57E1131F0BD8109FB8
          02CA233B2747F688FAE8C30FE9F559B3E5228472AEA90E8D09052BE74672384E
          FB5C21AA1A941A157AB1550F65AF9F032929DAB4640AA1510AB1C239A1102FF8
          F18F69CAB5D750DB766DA9AAB28A7B5769BF0A3B0A98512180F75184755CE435
          897F7F75CFBDB289664E4E4E24A791C34B01610D12A3F61283A09E7CCDD5742B
          2A3407933728769080E658A2DE0850661CE8AC123D58F49EF9FBD3F4CAD4A9F2
          770D78D72BDB52602E666666D0840913A86FDFBE6C1EC78E3A0F81B6C8EAF9E8
          A38F317742E2AB5C80A07BB1395675F391BB835B65BC8A782EA562CCF7293DD6
          F28402C3B3354DC0403C0F5C60706BD5359AE660802463BE04F56802D1411CCC
          F2E5CBF58907417135E41E6B5F5096223658575F3D4506F4C20ACC43424A46A7
          B8A786CF3EFB2F7DF2C9279C92DF8B9A5A717801E1CC73B986AFB8E227687EDB
          2CDC5D3EF1B14002890FDC2D2C59983080DDD4B3AB0B2D1930E110787BE8F0E1
          A67E331420207562E701610372836303CF35700C5C15870E1F92AD1752529B3E
          8743CACAF689CFD605F5AFA9AEA996957B0302AB31B06B57BF2F50CFE6A0F80E
          58AECE197B2E0D193A54EE7C8420E5069F464137DC91596DFC192E703D4B162F
          A6FB7EF14BA3A27AE140ED47434AE77858AD860E1F4EF73FF81B7D8566588630
          10C92A48972C4009609BAEF6DEE1D82A148BDCB76F1F05FA2CA9080A54C55C45
          8343D4F6C1B352AC69ADD3D2D2EA8522398C4270E21C9982AC17907DD65422E1
          948CA981DDE4FEA6C39C419A29364545C3860DAB1B3F7E5C8A58B378663CD12B
          29FC0063EC3CB02928D29C47CAA14D9B36D3B469D3380E46FB9990B5E71270AC
          164C3CDBB1FE210750DF07CA5E93C68D399E2EE671093698B068218649CC63A7
          31616E41589B8EEAEA2A1A3B76ACACE2DC1C029C7DE2638104111F080F0825BD
          160F52062C40F0236BA590D6A213F828BBCD74F55602C7B01547F73E485180D4
          34AA67232E11CF02CB608EB04B0E0A4DE3CE60A1668688851DEE09D6AFE54B96
          D0BFFEF56FDABF7F7FA441CDDC8118310E3B3126D8D11D77FC71F4F8534FC9F8
          15CD8E065FD055B96EEFDB77C3032B4BB8225485D8323797E6BEF516FDF5B13F
          514E70AC0F5BD1304EB2E33B04E419679C41E79E7B0E0B4B1CD34110A1D2152B
          56D4BFF1C69B2045C9CEECD1C269964E32FB71450A194C8CECBB4E9D3AED86D5
          47ACA96E629D734A2467D939B55CB1950363A5BA2A59FE4C9BF60A210858E7E2
          E271AB217766F4B1EB47CA29901F101EB86D61B9D4C4FCC8240731776BC43C26
          651EE36F4EB300938DB0B3D19A5B80B34F7C2C9020E263542F82E1B6F4582B80
          5060315905DD445CCA3F4D909CED4545B46BDB365AF8C522FAF8E38F230DFA0E
          0A468505AD5D7E3EFDF989C7A9A0572F239F3EA49D5B338FE20DCC4BA4B80711
          7000450DD77CFFBDDE8D11143705520C728A1A20DDBB77E760F7164239668BF3
          EC7BEDB599B46EDDBA5425BDDD0D3570B8F3749005C3005EEDD0DD11FDA804B6
          DE78E34F5189B840D7A2211CEB1548029E77D033CBCECEA2C58B97D03BEFBC63
          B43E93DDC7CC0E5CAD1932AC50FC3460CE22AE0541E11ACB25C84D2B318F8BB1
          1E10E88C384C318F9950243B53CD0E3CCF718F8E882E4820C601841971955EE7
          0D3EF1B1C096AD45F17EC046B522B4807070E3CEC8086C3AB5434485EB407CD6
          AD5E4D65FBF6C91473989823E8CD15D44B29102F55430F3DF23B3AEB9CB3F585
          0A4394FE110A903FCC435521C2D2B370C1027AF0D7F71BB91C65C5600A64EB34
          60978C2067901F8CB7B29EDA6564641CDABE7D47CD8B2FBE88F7DA080502A598
          CCAAC74E5D574E8B1ABA1132AE433C93AA73CF3D67DB8F7EF4A3A304D1575B32
          5040D638D9CEB35B08C4AFA9A4B958A3B0C4626DC275AC5B9B6EE863E6042C93
          5597153643175E78218D19334ADC977ABB907707318FD161FEB9E79EE7EAE64C
          EEDC5AA03322176D20C0398D0461A60E1D3A783EC0D9273E16D8B26D6B93DB27
          F68010E21E3556C00274AA0C9C06BDA484F17E488298C971D801B6B1F95EAE8E
          1C562028484F697131AD5FBB562A5928DBF7DE7B8FBEFC727138561FED6E0E42
          A9BE5A08B41B6EBA495668AEAC0CDAB8C3AC01C106378F1B85572281F9C92D3A
          A4B4E367F0C7471EA18F3E98A7EF91C60A0E4A43C60761D78C269003070E6477
          810C74163BE4D28F3EFAB871C1820529D9D9D9F80CD6847C3609BEC7702A2FAB
          0D5AC9DDEE0C33E40902DA5128EC9D37DC70437D972E9DDB2ACF04ACDFA922E4
          26A441560DB8B5E6CC994BCB962D335A9721A5235C0CB8AC308F31176B41D891
          4801AB0FE2D614A58F390C02B153DC77C33BEFBC4B4B962CC17D87D3DB2DD1E0
          6B53DDD1E1002E2ECE76ABAEF6B658F4898F05162C984F05C71C438D4D3BD558
          82CDA24EA04F8F0F97B868D1E8F0B87081F3DAB5DF083B1014A6645876D67CFB
          2DA78EAAC193A8048C5D88C32067EE3C2C5337B123ED3F60003DF5CC3FA41F5F
          316143C173A0392B411F81B183A057039DF10C76EFDA4D3F17C451E9B0AD3D3E
          A8EF0F9E1B768930937300BE00AC3C8D42981E78FEF917A8A4A4245B9C03EB21
          191601EECB64E7BA725B1A76A4384A8C7B7AEFDEBD37A37B3B2A6E07E23602A2
          A1D17AB38731C0A6809B904AE0B96ED95228D724C7136A106245713942AC7AB0
          FA40E183C06B625CB0D96B1432683FACD0883D84D558BC66AB8ADB0A7446E5A2
          05D9193D7A149D7FFEF93EF169CE98F1EA2BD4B96B573ABA4F9F78597EA088F3
          2CFE0EC152A27BCFE822CC2E2CD1C782CC7536F90C6CC461657441788294AC59
          B54AF6CED2D7314200E5962D5BF4019446080ABC85E2058142BD9E939A6A7530
          31D2C24B3156F104061CCF154A4BB5F5A38AF39BFF799DFEF6F8137247AC5176
          9C2ACBCF5C8E31BA5F23D05913249A2F76C8652B57AEACFF8F388FF8BDB33807
          0813944DA28A01728F322839ABB80CAE87837F41E8BC5CCF09312ADD0521DDDB
          A64D9BBDA3478FA6134F1CD074A34DD595F54855C6A09434755FB096B04EA74E
          9D46DBB66DD39360CEF4C4DA8B38A3330960D92C83EE21FBEBEB1BE8EAAB27D3
          316233AC901F8C07085D71767676ED92254B69CE9C399CDECE053A0BC91D7305
          1B3A6C2CECE6B92970CF48EFBFEEBA6B3DDFACD4273E1698F5DA0C69D6ECDEB3
          27F51293BD21F6961FCE7230B3947871676956D13A246BC72C034DFBF70DEBD6
          D1AE1D3B4232B8604A5FB16225BDF1C61B4EDC5D413B1D64874DB8EC32BAEBFF
          EEA1C38724AFE1869BFA8B099BAC35634059CACAB5FC069E0F829BFFF2E86334
          57087C5D15EDA03187A00439429767A16CD95D902DCE8160E77DB367CFA6EFBE
          5B9D814067F1AC63566D93AD170656083D60C1B0225B6E4DC38E143203493C17
          5974122E1C901D28B7A38F3E9AC68DBBD8288E0364009B9B204BA82C332194FE
          DB6FBF6DD42CD8AD7DCCEC1092B987B141BC1AEAFB687401E21A73C5DCDA85F7
          50A601313F82FC497249EE29D089E70D6B5D4495B271AF980F981783070FF663
          7C9A33407C00086D587E0AC4A44F17BB9906F13A86E3669602CE7E58AF516B08
          0CBD090683A55A0A52941608355555D24D42DAD4790548B347A0E44EB1833422
          47780F820882A6A4A4C42AB53DA4271088CFBDBFFA255D3C7E3CF7E2C217700C
          821632E59D7CE2C380F91ECF5135DF43594208A29D058A4A6ADA59604CD9950B
          4529039D870C192CBBB86BDC05F9E259A29754253A772F5DBA2C7BF7EEDDA8EF
          1328DB10C13AC3FC821252C85623CE836BACAAAA4A8175D0800061AD5999FEB9
          048217DB12D8DD935A7412435D53534D279C708254EEBA96336C31C0B354FD1C
          78FE58C35887A81FA6B314B9B98F99137096A2EAB2C2BCFDF18F2FA49123476A
          DD3D38A65CCCADCA8D1B3712FAD101629EC19288DD00E4783273C0998445BC91
          46680097A6F0BA9B0BF0898F0598F800100C08E2ECDABD3B75E8D4C934A58F85
          6A18D6217C00B523F4DA1D26492FED90EC6F5431A1A3F2F4DED252496A2A403C
          52520C039100ABAC2DEC2EE7CD9B271B201AEC341958F05C5B434A72263E178D
          1BA7ADCACAC2410BB76666240B98A3AC0854428EB12FDCB285EEB9E34E3A507E
          406C0E5412AAF6F1A2402F2F49405001B67FFFFE4C7EF080DB8AB9512F14479A
          10B0155F7FFD75C5575F7D25FE5E6B69113403D61EAE69E4C811D4A74F1F7487
          4F15C2BA6EF9F215F48D2067B54AB1CF30E0F634EC48C13594D4980F3C93E38E
          3B4ED6AED1111FD326A4485DFFEAAB25466BD08D95B9C3056729CA9826CC5F58
          2C6FB9E5666D7A7BA632963B3006A8588D006FF1BB1B3200A376BBC14D0DF71E
          E604D6A3AE048227E1131F0B68890FC064064D323B75ED2A4DFB41AD2184023F
          585E4EB56271C0428445501F5BEB906710B4AB06E1110B060BA878D72E2A292E
          A64A549F16EF45A2D818B00AECDAB59B90122DDB7184EEE483142FBF09E2F38B
          5FDF47175E749196F800506ED0DAB828101EB757E44D34609D84A284E4839544
          CDF4C25A78FFDD77E9D1DFFF41CE7B5D334A684459D40DBBC5638F3D565A1434
          6B83838B311F1AC473DDBA7FFFFE1A1C1B4975EE46A5954A5E5E5EA6F88E1EE2
          B5386D6A95F8D9BE65CB96C6FFFE77BE2CAE87581407E7F74A1A76240889BF01
          F1E1E7A3213E8875C1B30F6AD80AD2535454442FBDF4B2912B316A2B834B1012
          D08E3142BCDAD9679FA5B57EC82AD862EE96EDDDBB979E7FFE79F1B71ACCE710
          729960B04721A23E6298039DC4467FCA94C9FA8AF6D12245B92EC8DA466A9A57
          F817D6B5B8C6F8F9C4C7027AE2C36850FA5BA51A5823E006435563C43374EED6
          8D3A76EE4C99D819347302A40A3EC57A03E100C5C6B9F0FB4A4B69D7F6EDD264
          9A1A25E1D102C277E6CC59B20BB42ED6471B8C5A481A810D2BD3E46BAFA19B6E
          B9855D5D3EECC1AE0EAD7653DD87FC3CEFBDF34EFAFEBBEF292B3B4BFB393C07
          59251682B37DFB7CBAF1C61B25F1D064D3B5D69CB75C9CAF5C51A41165203606
          7AD3814C698B83EE16DF79007F5BB4E84B42CF3007B13FDDA9A98BB8D7DCCE4E
          1054AD189B93E1C387D1F8F1E3B501BC887501E95315278FDBABAF4E27B8770C
          2C686AC7F366306E41962B2ECC89F4F6CE42BE2B6480FB78ED16A4BBFED34F3F
          937DBCC4EF5C2A01131D16E4442A017C37BAAFD75204E9EB6CD90109D6351C8E
          058C92491871B790F9C4C70266C4C70990022F4DEE8200C1350612942576A1CD
          8D0049AB8D1080B0A240509ED87F40D4E70C67DC03A9ED9BE4AE53DBC19E2C82
          2AAB04F91A3E7204FDF9F1C72511F3E10866052AD5A075CCF56F56AC90F13E3A
          42C1161DF92C2040CF3CF34CF173062B57B6AA0010D27BC467ADB20C5374AF8D
          8E836CC379397E4E16E813C4A706D70557C4071F7C280FB5213E9C8A8DDDFEBE
          643F8418836B5BE1DF6D425EC9DE8050E85DBB766585DE59F97B9022C2260375
          B4504FCB20B980959A17FA983901273FC83E5E780373F8F8E38FA3499326692D
          9720EF59620C4BF0DE4B2FBD44DBB7EF808CE258A1A06CB80400F22F22176D20
          8BAD9EC68D1B4743870E8935E9C178623364557D36AE6E659FF858201AE2C300
          01AA570A60456A01D25A47B4423AA9CF4EB1EC8044C07DB57BE74EB950265E35
          29EA53873BEE203B5F7CB188162E5C2815A9924ECB590C21D93ABC637BF077BF
          A561C387378BDE33090013492DB8D6911C5F109F6F57AEA45FDE73AF9EF804D5
          7181426DD7AE9DCCF0D2587DE00E834BAA163F7671045CEAC02CAD9633CEC41A
          692F7ED211402DDE3E808C9BF9F317D09A356B9CBABA00EEC15448894BB34F04
          D8DA23DD20B0F68C18314266EE288AAE8572EF41F78DF5A6AB5BA33DA7DBFB71
          458AA02C45260653A64CA1638F55D3DB5394F12A1564B06AEDDAB5D21A5D5B5B
          8BA0FA1E68D59284EBDE2FAE356C172D3684980B975C32211E4D499D54F9C766
          356E01F13EF1B1402C880F435A8094D8035880BA74EF6E4B80B831295C33F0B5
          E277746167A5800CB358B98C22416949898CD741BF2BBED62BAEBC2AEAF3863B
          EEF85ED9397C4F09CD9D3B57D6F6118207B677EC2A38332B088785C03EE7BCB1
          F49B871FF6AD3ECEC0595A5A9F86DA622255B1FCDD73E79DB47AD56AADAB8BE3
          48D4AAC881F99E4237DC701D75139B018E2581F50E0AF7BDF7DE17CF728F6560
          3BF80A144F6DAD71CC01BEA34F9F3E324329353545B61A58B97205AD5FBF417E
          4798C1CDECAEF3629B0A33682B0C6F1364B4B14387F674DD75D7C94D9A4228B9
          096990A50B169EF7DFFF80162D5A6464ED49764C4BBC10E2B2C2BC85650C756D
          D2D3D3845C96721CE406046927E66FB1908FD89409A29D21C6B46598F32E2270
          462320D6C141711DF5E1C4CA614DC19A75D9659709B99A1EEB6066BB364D5A44
          1497E4043EF1B1402C890F832D40C810EB26C84F7EC78E5208EB7B42E0B94039
          A3860D08060812A7E9F23363B2910C28311421D7900CE2C380102E2D2DA5175F
          7C890E1C4035E1F420178BF65890C99B6FBB95264D9EECC7F93807843A329CA0
          2CB10D444143391911DCFCE1071FD01F1FF93DE952C60DBBAFAF5ABD3AD9F762
          8B810382DCB6CD2DB32BE87EB0AB479901C4F7283B7C6E421A141B024B6951D1
          569A366D1AF7A6D2FE39EA22792E4788DB1363759ED8408D1933466B39C69CC7
          201E64ABE2860D1BE9D34F3FA51D3B02460C332B7E34E0AC49ACC5F6EDDB8BD7
          0D829875A30103FA87551A02C7A12129E46984850AF56D8EB470DAD31180D931
          2E8D8B7DE2638178101F061398968200B569DB564E7E358041FC8E1A3768C809
          0B4FAAF3B60C494732890F10289DBF45065D8A459B22163C76AD18DA42E5DF80
          FF5A0888C71E7F9C860C1D120F536E7305AC041CBBA10A0E5808BE5BB58AEEFB
          BF5FC8A6AF69E9AAA5063E478C7F5CCDD6094238FDBCDC0E6E972333D502450B
          7B49B70D20D647A6F2F7A026A40094E19B6FBE49280D6060EDE10CA8E6180F05
          707ABA1AD4CF594F70DB2A63877F10C302620926240749C8A56A31CE25EBD7AF
          9716A08A8AC3828C044AA2C4227E2650A43395060E3C519257B421C17B16F5CD
          2CA169E3130EF0FC41A65959619CF4161BA3B2216688DB3CF2898F05E2497C18
          9200194D30A5AA7132084F2CC84B34B019775E5C80D1E42D178AB8E2DD77DF95
          02263B3B3BA46F8E8C31C9CFA77FFCEB59292034BB1A4E6507EAC9FBD928B106
          480F84B9DA34178215AEC2BB6EBB9D366ED8204990066E29E0162BB8B50753B8
          50639684FC474C155D7BED35D4A3470FB65A403161EE87B8F5B0B1407B11149B
          3471DB34D778281E97A006B5ECEE421F3A40A34F430AD30A59BE232323E330C6
          984317707CA0E37B747A38407232A86DDB3CE8943421D3104C9DA6F895B15EE3
          1D540DB90CEB3A3776C6A607962F5439D7F767E3F84B2BC4B56ABE4F7C2C9008
          E2E346B898F870AF20AB8EF610E4455555550DA8A5B16F5F199473506768089D
          A30A0AE8A9679E16C23BA808198E637385DFAE221810F810E4B0DCC8310914A4
          4CA7DF3DF4207D3E7F81B66A33E074F70F667F3C059465A4A8A5E8942C84F336
          BB8350F9392B2BABA7B86F106404CD7BB1921BDC0C20A42562DE97C1CD7BCE39
          67D3D8B163D9F289E706726758351E64E7F5D7DFA06FBFFDD68CF884544A6F26
          E0CC2C35AE8D039CC78F1F271B986AEA1E614E7319042DE0EADDC681FF0E5BA9
          8481403F316A726332F01C0B297E1BB954E57EF53DF6B89719E68136188F2D8A
          5601AA7E56978F2313060488E345ECB05728A8BDA8D2FBC61B6F22F039A8960C
          045441AF5E92F86464C86EE1903C6C9DD0C2EB3BFB5802C21404410D884293D2
          8F3EF8901E79F861497A34029C6B288144DA11043C53288868328032C89A0CDB
          0184770739E8C155575797939696860C1DEC624B6CCFEC2EA801BAE23E8AC4BA
          681C3264089D7EFA695C8598FF0EB26A9886EE80F800DCE0B3B9C443A528E302
          A80D6A39C6E9673FBB45C6D4C092ACF486C3F150F87AAB0688070AA9EA95AEDD
          6B3B688F674B8B1EF1743FAA01DD067FC3660984EFB0C1FBED4CCE1777D2EC13
          1F1FAE858EF83079718246A1980A8582AA457D9FCD9B37CBCEDF14D8B5158A5D
          5A4D9BBC3CFAC7BFFE29045607ECD4CCCE0D936DD885BF9A21404CA0C854D707
          77E4BEED965B68F3A6CDFA780F7609D9D57181E5A49FF8594FBA06B609463BE5
          7AD79181D2F9F5AFEF13D3292503F7F8E0830FA1A27427F13BEED16B2D4DA4FB
          4528E89DB9B9B987264EBC4276DB86EB45B17A1A3621D582890F361516CD819B
          533C14609824C1C4E79A6BAE2164C481F8206B1701CD42A66488BF630C9A7603
          2929BBC54F038516E00C7AADE8640E104ED1BC6778BCEE357EC7E6509F1219CF
          E6BA9808205B467DEC30A7E066AB34F80C642E32FF6A94EBE6FBC08622AE6106
          3EF1F1E15AE8884F38D900009A0616237D194D03535353D285D02920A50859C5
          E10ABAFCCA2BE8B63BEE40DB0AB31D9A6AD63EC20197152C1C6A7A3282F267BD
          36939E79EA29CA09767171713208333BF711CCDD3081EFA4E4A38002023AA493
          B6203EA805D456C9C4D9F9F2CB53AB8B8A8A7A09050745E295F47659844F109C
          2AB121D80ED2839E5C9AC07E986FE0AE80723725731CE303E283F1E066B206E0
          2286714B494E102CCB6200580B485DAFAFAFA3FCFCF6346AD4A9B2C3BD189B56
          62BCA5BB4BC89FEADADABA72BBD219184B234B1AC699B3B61C80371E0CE9628B
          E318B1FCDC4FC1961D9068D9C38C42ADBED88842DE16521262297DE2E3C3B5D0
          109F706A3F68B12D3B3BAB72EEDC401345B143552BCAD6D7D71F808079FAD97F
          522F21A48402D0FB9DB150379337E3386209904D0828D5F41CA899B4876EBBF9
          162A2F2FD7678EB065CDCE1A02B684D89E6FC81D1601DC636FF1F33D699EF903
          0FDC9F29945701CB49319FEAD6AC59BB79C68C19EDC43870CC9317EA2160FDE4
          0AC5BBE5ACB3CEAA1D3BF6DC4C41F83B2B7FC3CDC145524D36D9777067EEDFBF
          5F66226153815A3E5555D514289B157C2845D91CD32590E346168D56B5254660
          050579418B8761C3864A5204608C502D1C757DACEA53E1B3C1CD5E03713BDDBB
          77A3534F3D953A74E820BFC30101C2BAC5D8E339607EC63BD01CF3079BD34AE5
          2753B9863D146AEDE1F8BFA491629FF8F8702D14E2C3023492CA5FD8DDA2E125
          3DFFFC0BC83E4265E00252D2DBC5EBC653843079E891DF718D24985F99F84079
          633B7C24C7F860ECA11C610551853E84F9937F7D9CDE983D9B5AE606854585D3
          8DFA38E5BC6E6A60098B07E64690F27FF0C1DF14D4D6D6CAF9875E5FDBB76FDF
          FDDC73CFA788B955A0B4D6803BC7CD8A5DB60411CA727F7E7EFE9E1B6EB89E72
          72B2BB0B85AA0F28C7BDC03260199703C50D058D7F0B0B0BE9934F3E952524F8
          7D0DBCDEA83428EDDFE1679049950A621208FE0F909C407A78A3786D5F70D648
          278BCFD762DD0D1E3C98860E1D4A1D3B76902E4A97E96FDC2CAC4D20416066E5
          141CD40C70820A88D8F6B0CE1E43F8C4C7876BA1B1F8E8B3149C62BF103E7B30
          C7417C76EFDE0DEB445011B243070FD2C44993E8F6BBEF22FCAE019B6F11E01C
          B396C41E03C61C0A5F0DE2455CC7E64D9BE8F69FFD5C66B1E876AF21E9BE26E0
          1E425B927D833AE0664EA480D547DD21DF7FFFAF714F7908FE15107CB9B20CF3
          A9ACACACB5984F9D95F1298BEC2B13829E620D6488EB2F9C38F18AFABE7DFBB6
          AAAEAEEE62726C586E91407B98465AB6EC6BFAF0C38FA9BABA4A1FFB636B3171
          29B88F591A39B758719572D504CAFA3506995BBBC4F33B5853534B2D5AE4D0A8
          51A368F4E851D2DAEAB1963B1C2F95D4F8389FF8F8702D34C40782A42769048A
          0340F1160981538FDDD60B2FBC28CDCC8A5B46AD352284492DD6C07D0F3C4067
          9F7B8EEC3DA4015C6390E2C5C91E8B2420551927B8B8240990AD413233E9F70F
          3D4C9F7DFAA93E7D5D4D93266B1280F3F6A7801B315EC196D100F700A26348CA
          EEBBEF57F942B11F5EB16265D59B6FBE297B3091BBBB90CB780FA11C8BFBF7EF
          5F2E884F9AF89D3BA79B21AC4058CC0BB88DB76DDB26AD3F681AACF4CB03B89A
          B397E2A180481AAD72A6122C44980BB1CA536FA39C4FB6CA806B0D9B0EB8D3CE
          3AEB4C19A05EAB6965E46260521450403E24D502E8131F1FAE852EB899059153
          48FF3137B3D4111F76C94018EF84591A82FBE1DF3F42707D1D0CB6FC8404F61E
          2140660804B79A028B20E6A58B17CBEEEBE833A74B5F2F50FE0561B0122ADD94
          E39266E67600B8E14CD3DBB9DDC6C53FFE31FDF0C30F820765B9B56E0D48E6D1
          E2A7A6AAAA6AEB05179C8FD60AE9E277BBCED811A53E33D979FBED39F4F5D75F
          6B63557897EF95FE5D1837541C57C98683CF84E3E60D17414D7EF94D587A20CF
          860D1B463FFAD1E9D4AA552B197BE5629D8E4D020470212539AECF273E3E5C0B
          1DF1316A92690698EB21641B99F8C03581805C4D206E50AD11EC98407EAEFBE9
          4FE992CB2ED5969187F40609F0D26E355A70C97DDCB3DC46A201295AA780F4AC
          F87A3965E704359AE62AB5769602ECFE91BEBE8ADC691DD1DE0FE6C73AA33F32
          F179E2AF7FA169D35EC14EBB536A6AAA1BFB78A91DC58592ACB8F8E28BE9E493
          87636E73577623D42AF711D1F381EB131B8919335EA38D1B37B2DB8BE33ABC10
          0F4564D25FCE064EDDBC91021B06C46A8188A96E58E86F044E23F8F9B4D3C6C8
          A6BC4A2DA1788E0FD7CD0AA770285B84E39956EF183EF1F1E15A181430E46C00
          3BA83B4BAE90FADC73CFCB181F8D099E7775D2258637407E70EC934FFF9D4E1C
          38509BEA0B25082674A4043AE37E21D0D4DD258298DF9D33871EFBC31FD54C15
          056CBEC678DBF5E33A86023B622FB80E0D3B93034C7CE6BCF566FABC79F3EAE6
          CF5F909E939383E39970BB014116085807C68F1F2F338D04F1E13A3B46AEE3A8
          1513D65869E95E7AE18517502A82371B9C62EDF6121191549E4E4410375F97A1
          4509B20B3F175D74118D19339AECD2E6A3002C7720859843200F58237681DF2C
          6B71516E285DE1131F1FEE8549EB0A27F57C6485667E014B0ED2D9DF7BEF3D7D
          8D0C2E43AF5668AEACA8A453469D4A7FF8D363DAAC8974E57B21709A7BA03306
          08C4476D4D01C585B4F5BB6EBD4D7697D68D213F0FBB6045283EECA43752C0CD
          E2668B0F00F702DC4441E9ED00139FFFCC9AD9569088B2175F7C894A4A4ADA8A
          71C2FDB9A56E0DB74C80EBB10E7379C284093474E810B666E299C122C4FE4A4E
          7B8E89BB0EE9ED6BD7AE93357F94146F6EE380C95348EE7DFE5CCF0BD7E8C49A
          C141D050EE6A55E73881933C0C2D8B1867F4EBBAF2CA2BA84F9F3EF168BEACAF
          0FC4B0AB700F79228BC7924BE4A74F7C7CB81626C4070206C2932B9B6A81F720
          CCB905825CF9DC0F67EAD46932ED56A3B8B5B546646C0AD6039404E27D4E3FE3
          0CAA38AC966809C9706AA680903A4C9ADA34B9B9B9F4C273CFD10BFF7E4EC611
          68E034DD17E3DC9702D61008483C232FA43743514350079101263E33674C6F87
          86B8CB972FAF4235E3ECEC6CCEE849761F2FB640A86D354076CE3DF75C190BA2
          5188DA6AB9F8371C32C29B015E87DA1F3CDB1A04BFBFF3CE3BB470E117DCBC36
          A8754C12C7C70C6C51DE4B06852C4DE0D4CD1B0B60C350404DEEC810C0EA8335
          3A69D255D4B3674FF9DC6318F46CD65CB48ACCAB7DB3E5319E2D33C246C2894F
          A21A7F26BBD1A68FE811E15C91354B4813E783374176366DDA4CD3A64DD377BD
          0F3153D754D750CF82A3E86FFF785A662E29DDDBB99F178E73531C472C0122C3
          A5F925323233A8787731DD7ECBCFE8407939A535C548A55053B06248434B2607
          C0C0010362D18F2B1980D0464C52507ABBC6E2932EE4673B31974AA74F9FDEB0
          61C3C65C31CF6031084771C61A8669D85080A8FF72C92513B4F16BD1C0AAC404
          48F30EC4FB2051008905070E1CE0D2076AEB1872577A3BC71062FC9C5A6E7043
          BD94FB48D4DC66AB8BA9950531563939D974F2C92368E4C811920869C94F1419
          6066C4C7AAB50F64442AB9AC75896FF1F1E15A4441925928070907909F59B366
          D3AA55AB74D55143DD35A8E9F3F33BEEA049574FD1D6F7C1A24740B45D2C8B57
          01C11654761E8D48FFF2E89F68EE5B6F53CBDC2099672980991C08D2E3967E5C
          912224BD5D13E303EB49AB8C8C8C949D3B771E8082170AA59B20D62D94E39361
          D6E7C0E5200B0494DD5147F5A46BAFBD36161600DE2C584156B4C63A4386D79B
          6FBEC581CE980F200B4E62C292316EE1A4AF27A3196B8895DAE8203C63105C3C
          F3A14387517A7A9A74DBE3FD5EBD7A519B366D2299079C9DA787596C13CB08B7
          05FDFBC4C7877B1105F161933050488A3502B12A25252584C6A508FED314DFE3
          7E3CAA30C6AE293F3F9F9EFCC7D3D4B16347A9381460218318243D3321C600AB
          01F953DD3A505AABBEFD967E71F73D019F4853555EB5CB3799A4FB6A888F9BFA
          714502DCFA200A64785568EFED6F4F3C4E3D7AF4C0DC406D9FF2B973DFA9FBEA
          ABAF32159797696FA73842F6E322030B04941CAC9737DEF8536ADDBA355B3123
          81D3EC4A59081196555858A74E9D4A9B37AB6E6626196E89876279817153ADC4
          3688A4AA73ACE038981A728C9F35743D64E02DB7DC4C9D3B7776DAF74B0B3C7B
          C83FADBF9BE3C2F4138AAD61F8BBEB32627DE2E3C3B588D22DCABEF720E10065
          FEF9E79FD3071FCCD35B7DD4D45F5214DCE14387E8828B7E4CBF7AE001AAAC50
          CB8F40B9C05C0FA5E6F6B4DC7000CB86DA9A020A0BE3F3C07DF7D1C2059FEB8B
          15868C951E200782F4B8AD1F57A4C0FD62A7FB03DF1B70C9F8F174E59513417C
          B20589CE2D2F2F2F45F66045454507F13ADC74E858C0D202014587D80F34278D
          A2DA2FAF2B2790D613909D1F7EF8815E7B6D26C7DB814CF6528EB1ABFB9408B0
          85389C6AC2203D3061A110673202B5D94A5D480E5D8678FE9D3B77A21B6EB841
          92D128743FD635A7B39BD5656282B42549E363099FF8F8702DA2243E1C8302E1
          A4F61FC28287D087822A2D2DD5A7B7F7547E97B546B81BF29F1EFF2B0D1D3E5C
          4B7E20FCB1A3692E81CE10FA60816AC02988CEE7F3E7D3C3BF79508E912626CA
          51BAAF427CDCD88F2B52A8E9ED4C7C4E1004E2D24B2F91FD93501B272B2BAB7A
          E9D2A51573E6CC4D13CAFE2831669853F16E0EA9059E8DA90502AE8F73CE3987
          CE38E347D164FC38C9AA6460C16C67AB0F2CAD454545BCE60C8BF225011C1318
          8EE5C66995F27822EC828978FE83070F1273F6D278B7B9608B54386EC384C227
          3E3E5C8B1804C26B039DD5FE438835F8E69B6FE9F5D75FD7A766870834B8C486
          8F38991EFDCB5F24096A0CF8C539351744C14D019A91807B9241E84B250D1720
          EAAFDC7DFB1DB465F3667DEF25567C5BC85AA9BBB51F57A480A22E103F6B04F1
          9142B3DF0927C85809B88F5AB66C99DAD0D0D04E28F8BD3367CE6A5CBD7A75AE
          F81D29EE29BAEEF51181DB1430401E740D4101ECAC8DDC0E12507CFDFBF7A389
          1327069D2B4CB08BC709A445909B75A2D8A3AE9D4550CA7DD4831419C2BD065B
          376F02616B79D50264F7E28B2FA2912347C62AC0DD085CC59DC7C795F0898F87
          2088401FE5573796C7772BB849A21AEC1910C4E9347BF66C120A4AABD80D6B8D
          8004DCFBCB5FD0B80913E870537A3B763520006E4CCB7502C458408971213235
          264406A42E5B46BFBCE75E490C35D61EA7E9BE6EEFC7152940A26B05F1315C7B
          627D82ECA48BDDF4FE2D5B0AA9BC7C3F7DF7DD6ADABA75AB742B44DAA8125DBD
          5BB76E45C71E7BAC240D202D1B366C907DE574CFC712D8E51F7BEC313465CA94
          48E23BB4E0CC2C2BA8328A2D3EA87784B1D0109FA0D631D15C5084E08D4E3845
          15C3221B7186E38AD8ACE7AFB9E66A3AEAA8A39C105F08456C5C60D9AE53C6C7
          095BE6F82DD705346BE1131F0F41213ECCA4136942F7323870992B344BE100E1
          BB6BD76E7AFEF9E7E56E5AB37BE61DAD5A6B0442A25D7E3E3DF3AF67A9ADF8B7
          AE4968805441C07B4DB91B55C056B3B3407C962D5D4ABFFEC52F6530A4A2581D
          659328F0423FAE48A0A6B70BF213B2FEDEF8CF6C108AF6A9A929A9E9E9196962
          4ED5545656EE5DBA7419EDD9532CC976B8686C6C90C41CEEB46EDDBA41198993
          34D6EFDCB9AB0A4539BFF9E61B19BCAAB35C1A02C4A74F9F6369F2E4C9D1121F
          30179E0B4608925126AE2E866551BE3802F313052AD5CAED0EC019696EAAD0ED
          A82236641C6A29DD74D38D4E82DB211FDA2BE783453B5BF91E1059AB67C4E383
          CFB93A0CC0273E1E82427CDC5EF2DD8DE05D885AD00D80B278FFFD0F68D1A245
          FA40E7902051ECAE274D994C3FBFFD766D0777681B081D64827925D099EBBC64
          E9DE870228C47D4040220519169F8C26E2E334DDD72BFDB822052C041982F884
          D46D99FBF65B708DB21541428CDDAECCCC8C83D136EA168A2A439015261B8D82
          9016A5A5A5D5C0F2337FFE7C2A2C2CB2253F31243E8055BFAF2019C5C4E7E597
          A78AEB2CD4131F6D513EC482254A21E52AF720D3EE1D7EA68BF2391025B7B8B8
          399611835A48266B0E440784076E59C4EF59A4B2E379C0A2A7BABE154040C2D2
          857822B367D44D396E33253F60DD7AD07CE2E31D08E203C9E69605E725B0DF99
          ABEA4AA91F8865A994569FB2B2326D03D3905A23BCAB7EE2E9BFD3B142795457
          A93E7208034811AF90511694D9BAF77143B2C8182A35FFEB997FD2F4575EE18A
          BBB6156335F0523FAE48A0A6B70BF213E4EA9839633A147C5B2153B58400C479
          1F19331FBBF71A35AF41A8B4A975325B11731224E69D77DEA5E5CB97EBE3B182
          1063E2A30D0AAEA6A62AD08DA45B0BEC8A83AB0B2D4F0C629EB8754CA2210B2D
          3A3C3611FDB822856D6A3DF43CC8E70D375C6F97CA1E52D642033C236C1E8D02
          84783EB836A0590B9FF8780889AA7ADD4CC13BF1A02C08E9D659B64C1658D359
          7D426A8D20AB6B18029DFFFC67498494B5831D385C5E50F45E713FE24621A4B4
          4A3650702E279BD67CF73DFDDFDD77897B545D804ED37DB5FDB89A33649C8720
          3EEBB56FFEF9B147A977EFDEA9B5B5B5DCA91B9B142345C4423745F7DAEC3800
          6CA1ABE6B56A8D0491406564642A2206CD20E8592286C487AD86B02ED8BA7CB8
          82F3BFFFFD9C8C9733B9BE9614AD592C7C549233AB24DF2F9E41A1C3CF241ABC
          464D4B2820A0F9BCF3C6D2983163AC829BF11C60D532DAB898111F8E35C27C77
          53514A53F8C4C743F0894FD4E092EBAA799BBBB7A38F17E20F4CFA78159292DE
          0E81F1C81FFF48634E3F4D0A7105D8B16247B89B9AE21EB86F915B01575E8E72
          8D206C7BA190F0F38B7BEEA195CB57B0B52724E6C904182FB8B8B6D191D1C51E
          96AD12417ED47B7DF081FBE9A4934E02C180850CF30096C0582A499077B834C0
          5A8276D5B0F4A05FD8CA952B4DAD3E310C6EE60ABE85E4C0020DE28326B7CF3E
          FB2F790D66C4CCC5E0983857F59BD2C1B6CC0462153B75EA4837DE78A3551D1F
          7675E9B3032118B922B8FE831CF05D481EF148F8C4C743F0894FD4E02C122C4E
          351535333343909EAD320601D064C970AD11358B0982BB47CF9EF4E4D37FA7DC
          962DA9BEC9578EB8202825D63AF803085622AD40105A7CF1F51426F1E266A42F
          3DFF02D2B3F96DB65E149275BA6F67E5FEB7D19101ECAE613553D3DB6FFBF9CF
          658D9C38A60A9B02847DEEDC7768E9D2A5A6C407E9CC279C70BCB4F84491CE8E
          670C377050BC9C15407CCAF697D3934F3D23AF212DAD89F840FDA48BD719E9A9
          116F13A43F300535BA52E26532C2BA02A9C09A7255CF290DB8B0A469356C8CFD
          29A78CA4F3CF3F5FC6F858E87E106C58BC41F238B819AF41FCF4F1502C5393D9
          9F2E6CF8C4C743F0894F4CC081CB4101987073CD9933879029A3737985287E98
          EDEFBCE76EBA7CE2446DF776F6716BE1B8B8580C90464D4D43B1A861EE769C22
          1C2858B8807EF7D043C4961F725E640ECA10E9EB6BC8233BBE1801E35D23888F
          B484FDE4B2CBE8273FB93CDEC5E10C01E23367CE5CE9B635223E1CA376D55557
          CA74E6282C3E980FBC1E1C05F437A688A9597D80D62D799F6AC5F76AD3EFD304
          59D9B8E30015161FA4C0940B9FBAE0130D428FED3D104838CACA480BFB1C0E00
          9901D961DA1C3489E05625180043D723C838DAAB5C7BED35D235EAA04F172CD8
          20F7782A207CFBC938A30BF29103AB3D43267CE2E321F8C42726E00264F8574D
          B9C5AE74FFFEFD324E42D7C72B43395EEDBD84A6A5575F7F1DDD72EBAD74F080
          EA7130AB6D92A8B60546DFEFA817125C5AC80EBAEBD6DBE4BD2B5937181FECEC
          A121ED76B93D94E35CD79327CE00C3404B0E587DEA4E1F33867EFAD31BE4F8C5
          A0116858B0223E90F1B0F04C98309E860F1F269E71C459E31C276759C366E255
          93127AEFE1E0C4FEFDA3F9385CBE96D953498265FB0A905C746807E969DFBE7D
          34D63E3D38953ED1AD59A2864F7C3C049FF8C40C9C451212E86CD2C78BAD4472
          816347DFFB9863A4BB0B0A47A9896196DE0B660449E32480D5EA3D7E5F9FF583
          1F0863A3AEC9D070965958D982F41C282FA7DFFCEA3ED9B55E89EBD1DE8F13F2
          04CB1062207E88FC91781241757D060D1C28B3663A75EA148BACA9F02EC482F8
          60B73F6AD4283AFFFCF3A2B1463111861FCF32A0B919139F6436263503679B19
          BA1E41C0F1839E72FDFAF58BA655891E3C1F70424F04346BE1131F0FC1273E31
          05041804999A1DC3267894D6DFB2658B36D039249D1BD933B7DD79075D396992
          747D515330B4B6980A7CE215144C5622496B76722C888ADEC711E277C73DE2BE
          E01AC8CCC8A035DFAFA1BFFEE94FB469E3462DD9632B979ACEEF002C048F24AB
          8FACE44C4A302908C6E5975F4683060D4A789C8F19F181A2EBD7AFAF507C576A
          3311230107B0DAB52A69CEC40708BB39689C0139069963D80C14CFFFECB3CFA6
          33CF3CC36A4E62E143C6E100A78C1D9B416E4993AC762311C3273E1E824F7C62
          0AD33E5EFFFBDF5A9A3E7DBABE201C9B75A58F1F3BFA367979F4C4537F93C1CE
          8A50C139392A18BE8E446680E8638CB822AD2A0C416C70DDABBFFB4E9ABC3F5F
          B080664E9F21B3D37416AE48843BC8D2006ABE850BF550839B49B1D041C98C1E
          3D8A2EB8E00257101FB834F2F3F3E9EAABAFA6BCBC36D158A13863C851534E37
          139FFE7DFBC920E82810E2FA4E22D8726D58D416D6BD81034F944D494D486FBA
          F279AE0F850982676C67E165CB97678BE9FAC4C743F0894FCC6118E88C188DD9
          B3FF235D3F3A4210B4BBAAAAACA43EC71D478FFFFD29E92232F29D47DA9F0988
          606D4280717012084B35D25DA008D35253E9BB55DFD1AC1933E8ABC58B650617
          2C550874D4C433019174AB6634D756154690E9ECA40974C5F32F28388AAEB9E6
          1AF9EC12295BF5C4878399AFBFFE3AEAD2A54BB401D798F75CD6C112B8E32B5D
          4C7C06F4EB479535F5D4222BAAC6B1E1B881E305CBA2A2706F611EDC74D34DD4
          B66D9E19E9E53E867AD8C5ECF07C487693D688E1131F0FC1273E31076743C042
          A1F6F10219282929919566B173D7D41D617FBAEA4282CB6BDC84F174D7BDF752
          8A388EFB7881F0E03C50869104BA828C8080353A902B48E28562D30BB72C9036
          B1BED18875DE7BEFD3FCCF3E93C1CB20695CC9D500203D414D5AC3003727DD44
          CEDB007811B0FCB55AB57A7550A146285564C7A12D80837E48318596F870DCD9
          C5175F4CC3860D8DD6FAC401CD8E5A3BD435A6D2E4495726ECBEC3C5E7CFDE4C
          FF78E77BFA666329A5A7A5C8750AA69E9E16566D217C04AE5D2CCE424A8EF2E7
          5A4A8681E6900743870EA5F1E3C799915EAE4E6FB433B32A55E0D980662D7CE2
          E321F8C4272E30ECE39593934DF3E67D24FB20D9B9814026469E720A5D3565B2
          742131D1816565D1C285B2564938961FAC497C676EAB5C5BAB01C84EB7EEDDE9
          22A1E4BA8A7F6517709C43FCB77AD577F49F59B3E9AB2FBFA41AA1FC10C86C53
          3C8E855A3465E7F335E3D31C819DF6400A647205318A810306C8E73145CC0374
          524F645ABB96F8600E9C7DF65974D65967451BCC8A7B857274D482A4B6318D8E
          CADE4BA75D7A6BC2EE3B5C54CE7F886AEBEA69F6824DF4DAFCF5942AD6655D7D
          23ED2903A76B540B9A62E361B35698103A72FFC5185C3BC7B45C06365C88EBEA
          DBF704B379C82EBB70880F93255839DD12DC1D117CE2E321F8C4272ED0F6AE52
          039D21F8D08CF485175E9469EE067DBC823A34C3ED056281C27F5853203FF89C
          FC8208DC5D7C0E47C78AE3BA74EB4AFDFAF59756277C5D555535AD5CBE5C5AA4
          60E171700D6C3A0FA75BB5D97822C51B8AD2AD556EA3012C7E8D82F484047D83
          F8C0BA72E18517C82CAA1866D0D88289CF175F7C4183069D4413274EB42B52E7
          0488FF8082B70D606D108F3D33A59E4ECDDB4C5DCF7F3861F71D2EF67D78BF24
          3B9919A9B4FF508D1C9FEADA7AFAEDACEF696B69B5B4FC60ADECDDBB57AE1D9B
          C6AF4E8B7BC61A7029B750BE37C4BFCECFFCDA6BAFA59E3D7B58A5AF73257B3D
          CCAC39980FB949B8DF98C3273E1E824F7CE2067661C164AC9299ECEC2C5AB9F2
          1BD90A40270039C325C8CCAC272BBAD899B80296865AB1B3539B4029B13D61B4
          0730BCA708D15CD3DB715F4753207D3D849582F840C91C7D742F19509C6857D7
          ECD9B369C78E9D74D34D374A8B6194DFCF01CD8E025861ED1998BB838ECE29A5
          56E73E96B0FB0E17203E8C3425C8195EAE25E505B4A7AAA5F83DE002DEBD7B37
          7DF4D1C7B47EFD7AE9723659CBB696973880DB6798364BE5F832C49A21E6CC82
          F8A42BE7D2569BC7398D9EB7A79A90DAC1273E1E824F7CE20A0EF443A6C6217E
          13961EA4B76FDCB8514B7EB80822C706791DB8B1A394FB8E9500074180FFA039
          756997667E417A0C2D59203E01F2DB2888CF64342C4D98BB0BF3F4BFFF9D2F7B
          71A1327394DFCB565060ABDDC188EB699F719846B42994AFDB8EFD4342EE3912
          68894FE0461BA9BA318316ED3F9A6A1AD3E5C2C633E422948B172FA62FBE5864
          65FDE1C2A1760D7C63017E2EE9A4CBD8D40396C771E3C6D1C9270FB78BF1C22D
          B750FE8589D268E270A90E58799A45E2824F7C3C049FF8C415F079637163D753
          A8FC2B851DAA1ABFF2CAAB72D767D0C70BD611AF746537036783E1BE6365C2C6
          2E12C5FD9A4B7A3B2C62885FFA41101FC303407C00289A134F3C91AEB8E22709
          8DF3812C07018A81A589FB3ED92A73688F86C6143A59909E4E998724096AE721
          E29396D240A535B9B4E44081D0FCC1BA90ADA6C5C5C5346FDE3C5ABB769D9407
          3A2B2AC741E141DB92C428C1F188419B33231C3C7888468C38992EBBECD25894
          56E040EA4490BB84C0273E1E824F7CE20E16F841666408BBB7DE7A9BBEFEFA6B
          7DA033884F4E785FE14A4008206031664D06410E0411682EE9EDB88741E2679D
          F8A9B0233EB014C06270F3CD37C960F744911F0ECC8D1250E4B0D6C19D616BAD
          AB6B4CA39ED9FBE8A456DBA9BE314008BC447CD205F1D950D181FE77B8B3FCDD
          0878962093CB97AFA04F3EF944BA9575E42716490176E00C54100FD346C0B84E
          5C5FEFDE47D319679C413D7BF68C9608734C23DC5F8E9AD27A013EF1F1107CE2
          137718F6F1829083F27AF9E59769E7CE5D7A93779C1A42271C1109020855287A
          581AB401D40AF1E1F4F60DE4E1D4570A105C2880AD7C6F4660E20360970DC533
          6AD4A94E9B42BA05C85482051001CD96171D0868AEA3D1799B283BB54EBE06BC
          447C60F15971A027EDA86E634A7C00CC6D942A58B06001BDF7DEFBD212A499EF
          F8A540F917E3160FA51AD43647FF4719A42DE61C7A729D7EFA6974F2C9274BB9
          1583BE5C1C0314AFFB4A0A7CE2E321F8C427216017164CC96A6556909DEDDBB7
          D12BAF4C97D93A890C5C762BB0B36CDBB6AD14B6DBB66D538BE6014C0E041980
          691E56B178BB01E2055C7B1F0A5468AED3DE9B1E5AE2C381EE5DBB7695E9EDB2
          2693FB652DCF7D5B570A006B4FDF96BBE8D81625D2C5C5F00AF1014BA917FF47
          7CCFE1FAAC1057971E81DA5C6992F87CF5D5127D4F340E3A0E6913130370A564
          586543AC702037904783070FA291234752E7CE9D25098AC17C0B6B3E78093EF1
          F1107CE2933070A07350D136B8B9BEFB6E35CD9A352BC4C271A401C2163B6028
          F56EDDBAC9E0EFCF3F5F489B366D92E467F59A35F2384106BC9EDE0E85831DB6
          6AE677427C00EE8A8E0CAF3E7D125BD72742C0A501BF88A380E6B6E915744ADE
          161920DCA8317C7A85F8A4A634D081BA1CFA52101F7DF75F33A4A5A50A82DF20
          8B9B82ECEBC80FD7F8DA49B18D6BC3E621A41F178835E61488CED8B163E98413
          8E979B911835C8652B1626ADE79A90DADE9C4F7CBC039FF8240C90665078EC4F
          5717495656267DF0C187B470E1427DBCCF11032873587AD090B3478F409D1090
          1DFC8BEEF60B177EA1121F401002AFA6B723E60BB11B88ED51E78053E2034031
          21D019631503B7433C91AFDC2F5CBC960C2D30102934BC75217554029A8306CD
          23C407AEAD6D5579B4F2600F4B37971EB0DEA1B23B121EF6EDDBA7253F9C1D19
          8F1D11620EE5C6013A1BF30AF5B94E3965A4B4F2A07E589841CC70DDB6557E6F
          D4FC8B1F1430CC57FE5E48DE4FDE08814F7C3C049FF82414D86561E107556685
          9507BEF3993367D11AA1DC8F34F2D364E999423D7B76978512B56383F1F8E69B
          6FE9E1DFFD2EE8738214A0B795A30AC02EC27114D8ED0699F9C3213ED895C30D
          8136161D3B768CD56E3CD6E07A348EDC34A8D9D33DAB8C86B6DE16427A002F11
          9FB5873BD1FA8A8E61111F001BA0AD5BB7D13BEFBC4B3B76EC90320184889A3A
          9DC71250D29542573782F0C0DA0CEBCE69A79D46DDBB779724288218324EC337
          02E63B362BF170DBB9023EF1F1107CE2935040A263F70621A6063A03F0F31F3E
          5C4953A74E95420F3BAFE606A3269B1CD3F3939F5C2E2BC256571B1B06407EC6
          4DB824E83D410ABC96DE0EB70594D816FD1FC2213E0076E2D8995F78E1856E75
          7771006B21390868CE4085E6369BA9657A8D4C65D7C34BC467D5C16E5458D54E
          4F7CC06060F108747F09B688C0EA22D92B880E9EE70F3FFC404B962CA5C2C2C2
          40EF2F072EF0300A8B4A60EDC1B2D4AF5F3F1A3A7488ACD504446845E498212B
          A0A60FB2313D13951F0E7CE2E321F8C427E1401605B229423A9563D78596141F
          7FFC31AD5EFDBD14649AB6169E04768D1C28293BBACB00EE46F56F5959D974F9
          E5975241412FCB760C10FC707DBDFFFEFBB2F89BC62AD64D39E14E7237600101
          49FB9E0CCCFCE1121FF4726BD7AE1DFDEC67B7C8B17059861707B03A6E428A80
          E63E2D4AA4E5C7085E213E1982EC7C23884F5128F131EB5A0E04594178AE83DC
          7EFBED2A5AB56A95F2BED915A488E75F2FE684F37626481AE8D2A50B8D1E3D9A
          7AF4E8AEAED32800D26367AA0E9179CD093EF1F1107CE2937018F6F162708033
          BA9F23B077E7CE9DFA34D788C01941AC20713E5DF14443E078EC0C794DF3E7EC
          32D03866A065CB5C3AF1C401B2FA6F7E7EBEBC3FAD7CC00E17B1044EDC352082
          B89E575F7D95366DDACC711060862014EBC9DDE9ED78E6D02CBB8DFEE894F860
          9C30067DFBF6A5534F3D450681BB4CDE727F3614E1B4ADD88D0066A47F8F92D6
          9E6A436B0FE005E283806C10B7AFCA7BD1A1E08C2E268266C0A2842C0832DD61
          AD71BD1FDB7154D69B5370D3E218A5A773AD323BE03E11DFD82C0A16EAE1131F
          0FC1273E49019B85417A82029D01DEF1A1A4FDA79F7E462B56AC900ACFA6B9A1
          21380B0884031682DC5C64C8A6C8DD249A26C27200E1AA3793E3FB2070DBB469
          237786704721FB64DFBE32DAB3678F0CC00494180415BC73C4B51E734C6F3AF7
          DC73A953A74EF27D23011E4EE35400F7515656462FBF3C555AC794EF777B7A3B
          8AD181F8203ADB5038DA111F8C5D4D4D2D75E8904F679E7996249398272E0C6E
          E6DA3070E7D95E1C880F2C23A7B6D964EAE602BC407C701F6B0E75A60D951DA4
          E547016E086B3DCBE63496BDB9AC362858434EDD61FACFC5485723732FC3E1B1
          89EC419650F8C4C743F0894FD280CC1E284404E6961B1DC0AEAEA2A2ADB2BA2B
          D2BA8D60D4F090090FDE1F30A03F0D1D3A4C1210344905406C4020BEFF7E0D2D
          5DBA940E1E3C28C90A7F0EE9AC23478EA03E7D8E13E4A7B54A8C40524096702D
          A83B525454A45A81B0E3CCCDCD95B53F4E3A699050D2EDE5E7621D7C8BEB44DA
          2F3260E01E1363C4E9ED10A8B6CD2F9300046123A0BDDCEC0033E233A05F3F39
          AE79796D68D8B061F2A775EBD6F23D17CA596E421A14BC6F05C4F764A5060A16
          A27061237993F8A4A63452796D0E2D2E2F90F7A0B90B4E687002BDAFAA51F73B
          67C8EB6384F4C73B3DD6EE1C76EFF16B0434B772788F58A307A31A7097C2273E
          1E824F7C9206C33E5E86070A625357574B2B567C23C8CA3E41260224071B3C10
          91F5EB37C8CECFEC8262C203F7D2A851A3A8A0A04092137693043EDBE4B22A2D
          2D9581942B57AE94EE23109EC1838750AB56B9F25C7A4B0D679BE06FA841B468
          D1222A2F2F974192A3478F92048B2D46F19205B84E74B99E3DFB3FD27A25C80F
          842FC8E486643F581D6001C1B56DB43AC88CF80C1D3C5890C8813462C408D9AA
          A2B6B646D67C712960D980B275DC6417C4273BB556121F04387B95F8A48B6BFF
          FE7037DA5891AFB7F6608D3B35D5628750ADF9ACF65FB3DFEDFE1ECEEF4E4B0F
          E9E1F47341055C9B1B7CE2E321F8C427A9300D74D683DD5F7A73365EC35AB36E
          DD3A4140BE94B540060C1840C3870F97418B6C89B102AC4A70631517EF918406
          B1384ED259B52E39FC74E8D0418D094A0410A3802287AFBD3693C999DBD2DBB9
          1FD7FF2874371F0433E2F3FCBFFF2D084FBE4A245D0CEE2D65D8FEC00CCD89F8
          7C7BA83B1555860435C312D2C5C169A034E1AA8D55FC4B4A18EF3B79CFEE18B8
          EF3B5B5C0F262F08B12B6B2FC4023EF1F1107CE293746047C869BF11E525C302
          93999941E5E507A4FB0A7538D8C213CE5A647759B80A16DF8FEF4B866206F959
          B7EE079A3973265153F7F66FC81D3D8082FA7159C18CF8BC3E7B96DB090F003F
          28E23C90C1B53B9C0F32F11993B75112062F139F5582F81486121FA03B057A95
          59018D48C31A3B17C22AB34B2D96D85CE1131F0FC1273E4907F7E381D288AA8C
          3B08483C626ADC0E589D7EFB5BB5B8218288C114926D520FE9C7650514701C32
          6488746BC1E2E6010B8F16D8E9631E175298F594B829E9A8BCCD949B56EDD974
          761BE203D2D3DDE2140802DF1AEED8B910D878C0AD9BA2FBC180C0A2DDAC8981
          4F7C3C049FF8B8025CE3A3D935EE4B141E7DF431FED52DE9ED21FDB8AC70D75D
          77525E5E9E614C95CB018207B209C516516039C84FCBD46A3ABE653175CD2A17
          AF5343B2BB3C4E7C006C6E5A9A9C02969E03C9BE0F1FD1C1273E1E824F7C5C01
          28EB027210E8ECC3181AE2032093C6C8B5005762A2F2BF710D41FDB8ACF0C003
          F77B8DF0308E52EE31A42C4338A8976D2A1AA94776191DD7620FB548AB11EFA5
          A927743BF181D56AB50C6E6E6F467CB0C6B1B9612B08809BC6C165D18C9D0F77
          C0273E1E824F7C5C03C33E5E3E9C41477CA058F20D0E43768DD37A23D102310D
          B6558B19F7DDF7AB045D564C81F98A798BA0D59804E5C2D50597D7092D7753E7
          CC03324D1CA4C8CDC4A7FCA35F5355433A7D7FA80BEDAA6E4D6929BEFE3B12E1
          131F0FC1273EAE01F7F1C2CED0B69B758480D2872504C4A08A6C328D1420E802
          D96759CAE7705D706938B19CE033708540205438FC0C039F6BA37C3F3E0F1261
          5A0747477C3C070F121FCC25043483A43B72E739055C5F707575CA3C48FD7277
          51ABB42A6A7DAE7B9FEF96F71EA1E5077A52B5203F3EE93972E1131F0FC1273E
          AE0297B68F47BD0B9008ECCEB5259A4160A0B4CC162C4818025741900E2AC721
          4E01018CC5644D9CF05D204C6CD687491FFD889C58B3F294EFC0B1D5CA75B4A1
          180549721A3E52F657ADFA8E962D5B265B8300DC2200C1C5A8743D68D0201A36
          6CA88CBFD1068D6B2B5DE37CBB7717D3975F7E299B4B224E07EF21B51F051D71
          0E3481C43922EC7AED4620451B24BA90E214948B1E5E99A975D2F575D2B87B93
          7DBFA69833F3253A589F1D7637F66602ACEF76145C2C119BA3232E56D1273E1E
          824F7C5C074E7D4517E38A189D9333C78C60B563C7674078F48197B0E480D880
          2D18497B768118C1AE7125D261DB9B9C1B240C56A3BD14036809D0DAB5EB68F1
          E2AFA8A8A850B6E7401FAC81030752AB56AD1C6558A11612C8105A795454542A
          F5961A659565FC782C4BCB0E3C9F1C35218D06486FAF6F4CA1C993AE4CF63D9B
          E2D5E9AF49D233F1AA49C9BE141F49844F7C3C049FF8B80E50FCC89281A58303
          46532D8ED7968E370376E76625E541240A0DCEC10464BBC9E740420E51E8CECE
          AE5AAD5DDA7E07E5DE8DB25CD2957BD9EEE09E1D830910BA5B6FDCB881BA76ED
          2A8B06A23756B8D6197DE3576D63D86602DC1C5C5CD8D56F8FF25C8EE1665231
          73C674D75FA38FF8C3273E1E824F7C5C09100E988FE1D601B1001132ABC40AE2
          624704F0F91C93BF412BA3A1A4DE1CD14AF98C5945E97CE53BF545C9109303C5
          6846D6A0300B2DAE15C4062E38B35474581AE0668B79B1226D37EC66649D8935
          B8137721C5270ECD106E26153EF1F101F8C4C743F0898F2BC19570D95F6E57F5
          D52E132C128B0F480F949C997506ED09404EF49699682D3E1D95F31A353204A9
          EAAA7CBE5999513C023CD3020AB81A63E26E740A37930A9FF8F8007CE2E321F8
          C4C7B5E0DE474E00EB0732C1CCCC1456956361B12935781F0406D615585FF4EE
          AC0CE5DACC627CB8079911EC6297AC0817CE09E1629545846BEB60F1F70A7267
          07773700638FB1D377F9C6BCC2988374627CB75082EBCEB89954F8C4C707E013
          1F0FC1273EAE055B7DD21C1E6FD7E81444AABDE67C58A4480FB7CAEAE2206610
          1F1006909C16CAB94098AC025BF5595DF5CA679C6475E13A33957B82C58B8BBF
          E1BDDD646DEDB1B26EF17D47DA0C3255730EEDBFCD0556BD966085033172545D
          DC27013E8E34F8C4C743F0898F6BC1B114E1C0AE901C080494578A729C13E58F
          CF204B2B53F91C5C63FB1D7E169F8122854080E20C272E87D3E6B98E0F88971D
          69B2CA5ED302E70A373017E7EE44A1A407246C1725AE2274BCE0C4C208A25CEC
          E4643EF1F171A4C1273E1E824F7C5C09900DC4C938B5F6301017038B48BC1620
          D7EA48249C7E27AC31B058643A3816082715DBEEDC76D636B72343B93FBBF9E6
          F83E7DE2E3E348834F7C3C049FF8B81291587B1870E338A9C8DCDC6015576404
          58AC30564E8495DDF3C039E2556D3B11B0730F6A81120BB6CD5F7DE2E3E34883
          4F7C3C049FF8B812D881C3E2931AE6E72271E13407C042D653F9371C20A87B9F
          CD3199CAB9ED9E05AC477A6B9B5E10E27532AC6676B08AEDD1C391D5C7273E3E
          8E34F8C4C743F0898F6BC1B57CC201E24C38B3CB48E9EA5F5B1D13EDE7237D1D
          CE35F17B8805CA0D73ACF8B385641E9F0392826CB81C87E76BA060626376EDE1
          FC6EF5F7C6303E67756C0B87F788FB8395CCD6B2E5131F1F471A7CE2E321F8C4
          C7B5E0A6A54EBB8983F0F0C2D3173B4C3179DFE89823097077C14266560620DC
          B821587DD8CDA81D4F27BF47F299707E674266F437BC9F46F6313E76F5A254F8
          C4C7C791069FF878083EF171351077D1C5C17150DC88BDD05A2EEC884C8A83F7
          EC5EC7FA7C91BC66858EAC24A7961986937815A7996278068514A7869D098055
          AD27C0AEE2B616A982F8F805267D1C51F0898F87E0131F57034A1DED26ECE22F
          9CC4AA3477608C7A8671BCE3D46C0A14EEB373A5152BE7F432B841AE11C26A48
          EA5B7C7C1C69F0898F87E0131FD703560C285EAB5E5DB05CF83BEC40E3D4D60E
          8EB38BEDD1C38E543597A072B855B9CE93F607F5970E8473229FF8F838D2E013
          1F0FC1273E9E8055B612B714F0E1BCFE512416322B5275A4961030854F7C7C1C
          69F0898F87E0131F1FCD0CA8326DD5AB0BB12AA8B913AE9042A0335A78E8AD21
          209D15619EABD9C3273E3E8E34F8C4C743F0898F8F66069011AB6EF6203EC96A
          2F814069B893E03AE2DE674E3E934B4DAECE43E4A0571605881A3E9BA6DC7322
          C9599E203E7E23581F4714FE1FD81DE49D485E63E90000000049454E44AE4260
          82}
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
        DrawStyle = idsRightCenter
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = False
        InterpolationModeHighQuality = False
      end>
    Left = 352
    Top = 379
  end
end
