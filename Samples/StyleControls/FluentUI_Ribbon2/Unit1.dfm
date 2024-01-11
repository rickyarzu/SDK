object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 485
  ClientWidth = 880
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 600
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
    Width = 880
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
    FrameColor = 5263440
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
    Color = 5263440
    Caption = 'BorderPanel'
    TransparentBackground = True
    StorePaintBuffer = True
    Sizeable = True
    WallpaperIndex = -1
    WordWrap = False
    object scGPPanel2: TscGPPanel
      Left = 0
      Top = 0
      Width = 880
      Height = 180
      Align = alTop
      FluentUIOpaque = False
      TabOrder = 1
      BlurBackground = False
      BlurBackgroundAmount = 5
      BackgroundStyle = gppbsColor
      ContentMarginLeft = 0
      ContentMarginRight = 0
      ContentMarginTop = 0
      ContentMarginBottom = 0
      CustomImages = scGPImageCollection2
      CustomImageIndex = 0
      DragForm = False
      DragTopForm = True
      DrawTextMode = scdtmGDI
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FrameWidth = 0
      FillColor = 5263440
      FillColorAlpha = 100
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
      Color = clBlack
      Caption = 'scGPPanel2'
      TransparentBackground = True
      StorePaintBuffer = True
      Sizeable = False
      WallpaperIndex = 0
      WordWrap = False
      object scGPPanel4: TscGPPanel
        Left = 0
        Top = 0
        Width = 880
        Height = 34
        Align = alTop
        FluentUIOpaque = False
        TabOrder = 1
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
        StorePaintBuffer = False
        Sizeable = False
        WallpaperIndex = -1
        WordWrap = False
        object CloseButton: TscGPGlyphButton
          AlignWithMargins = True
          Left = 835
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
          GlyphOptions.NormalColor = clWhite
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
          Left = 745
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
          Options.HotColor = clWhite
          Options.PressedColor = clBlack
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
          GlyphOptions.NormalColor = clWhite
          GlyphOptions.HotColor = clWhite
          GlyphOptions.PressedColor = clWhite
          GlyphOptions.FocusedColor = clWhite
          GlyphOptions.DisabledColor = clWhite
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
        object scGPGlyphButton2: TscGPGlyphButton
          AlignWithMargins = True
          Left = 65
          Top = 0
          Width = 30
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 4
          FluentUIOpaque = False
          TabOrder = 2
          Animation = True
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
          Options.HotColor = clWhite
          Options.PressedColor = clBlack
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
          GlyphOptions.NormalColor = clWhite
          GlyphOptions.HotColor = clWhite
          GlyphOptions.PressedColor = clWhite
          GlyphOptions.FocusedColor = clWhite
          GlyphOptions.DisabledColor = clWhite
          GlyphOptions.NormalColorAlpha = 200
          GlyphOptions.HotColorAlpha = 255
          GlyphOptions.PressedColorAlpha = 255
          GlyphOptions.FocusedColorAlpha = 255
          GlyphOptions.DisabledColorAlpha = 100
          GlyphOptions.Kind = scgpbgkFileSave
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
        object scGPGlyphButton3: TscGPGlyphButton
          AlignWithMargins = True
          Left = 5
          Top = 0
          Width = 30
          Height = 30
          Margins.Left = 5
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 4
          Align = alLeft
          FluentUIOpaque = False
          TabOrder = 3
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
          Options.HotColor = clWhite
          Options.PressedColor = clBlack
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
          GlyphOptions.NormalColor = clWhite
          GlyphOptions.HotColor = clWhite
          GlyphOptions.PressedColor = clWhite
          GlyphOptions.FocusedColor = clWhite
          GlyphOptions.DisabledColor = clWhite
          GlyphOptions.NormalColorAlpha = 200
          GlyphOptions.HotColorAlpha = 255
          GlyphOptions.PressedColorAlpha = 255
          GlyphOptions.FocusedColorAlpha = 255
          GlyphOptions.DisabledColorAlpha = 100
          GlyphOptions.Kind = scgpbgkFileNew
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
        object scGPGlyphButton4: TscGPGlyphButton
          AlignWithMargins = True
          Left = 35
          Top = 0
          Width = 30
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 4
          Align = alLeft
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
          Options.HotColor = clWhite
          Options.PressedColor = clBlack
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
          GlyphOptions.NormalColor = clWhite
          GlyphOptions.HotColor = clWhite
          GlyphOptions.PressedColor = clWhite
          GlyphOptions.FocusedColor = clWhite
          GlyphOptions.DisabledColor = clWhite
          GlyphOptions.NormalColorAlpha = 200
          GlyphOptions.HotColorAlpha = 255
          GlyphOptions.PressedColorAlpha = 255
          GlyphOptions.FocusedColorAlpha = 255
          GlyphOptions.DisabledColorAlpha = 100
          GlyphOptions.Kind = scgpbgkFileOpen
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
        object MaxButton: TscGPGlyphButton
          AlignWithMargins = True
          Left = 790
          Top = 0
          Width = 45
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 4
          Align = alRight
          FluentUIOpaque = False
          TabOrder = 5
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
          Options.HotColor = clWhite
          Options.PressedColor = clBlack
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
          GlyphOptions.NormalColor = clWhite
          GlyphOptions.HotColor = clWhite
          GlyphOptions.PressedColor = clWhite
          GlyphOptions.FocusedColor = clWhite
          GlyphOptions.DisabledColor = clWhite
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
          Left = 665
          Top = 0
          Width = 30
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 4
          Align = alRight
          FluentUIOpaque = False
          TabOrder = 6
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
          Options.HotColor = clWhite
          Options.PressedColor = clBlack
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
          GlyphOptions.NormalColor = clWhite
          GlyphOptions.HotColor = clWhite
          GlyphOptions.PressedColor = clWhite
          GlyphOptions.FocusedColor = clWhite
          GlyphOptions.DisabledColor = clWhite
          GlyphOptions.NormalColorAlpha = 200
          GlyphOptions.HotColorAlpha = 255
          GlyphOptions.PressedColorAlpha = 255
          GlyphOptions.FocusedColorAlpha = 255
          GlyphOptions.DisabledColorAlpha = 100
          GlyphOptions.Kind = scgpbgkGear
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
        object scGPGlyphButton5: TscGPGlyphButton
          AlignWithMargins = True
          Left = 65
          Top = 0
          Width = 30
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 4
          Align = alLeft
          FluentUIOpaque = False
          TabOrder = 7
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
          Options.HotColor = clWhite
          Options.PressedColor = clBlack
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
          GlyphOptions.NormalColor = clWhite
          GlyphOptions.HotColor = clWhite
          GlyphOptions.PressedColor = clWhite
          GlyphOptions.FocusedColor = clWhite
          GlyphOptions.DisabledColor = clWhite
          GlyphOptions.NormalColorAlpha = 200
          GlyphOptions.HotColorAlpha = 255
          GlyphOptions.PressedColorAlpha = 255
          GlyphOptions.FocusedColorAlpha = 255
          GlyphOptions.DisabledColorAlpha = 100
          GlyphOptions.Kind = scgpbgkFileSave
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
          Left = 700
          Top = 0
          Width = 45
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 4
          Align = alRight
          FluentUIOpaque = False
          TabOrder = 8
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
          Options.HotColor = clWhite
          Options.PressedColor = clBlack
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
          GlyphOptions.NormalColor = clWhite
          GlyphOptions.HotColor = clWhite
          GlyphOptions.PressedColor = clWhite
          GlyphOptions.FocusedColor = clWhite
          GlyphOptions.DisabledColor = clWhite
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
          Left = 98
          Top = 3
          Width = 564
          Height = 28
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 9
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
          Alignment = taCenter
          ShowEllipsis = True
          Caption = 'Fluent UI - Ribbon - Demo'
        end
      end
      object scGPToolPager1: TscGPToolPager
        Left = 0
        Top = 34
        Width = 880
        Height = 146
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 0
        TabStop = True
        Color = clBtnFace
        DrawTextMode = scdtmGDIPlus
        EnableDragReorderTabs = False
        TabsBGFillColor = 10114859
        TabsBGFillColorAlpha = 0
        TransparentBackground = True
        FrameWidth = 1
        FrameScaleWidth = False
        FrameColor = clWhite
        FrameColorAlpha = 70
        BorderStyle = scgpbsLineTopBottom
        MouseWheelSupport = True
        ShowFocusRect = True
        ShowInActiveTab = False
        ShowCloseButtons = False
        TabsLeftOffset = 100
        TabsRightOffset = 80
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
        TabOptions.ActiveColor = clWhite
        TabOptions.MouseInColor = clWhite
        TabOptions.FocusedColor = clWhite
        TabOptions.NormalColorAlpha = 50
        TabOptions.ActiveColorAlpha = 50
        TabOptions.MouseInColorAlpha = 20
        TabOptions.FocusedColorAlpha = 50
        TabOptions.FrameNormalColor = clWhite
        TabOptions.FrameActiveColor = clWhite
        TabOptions.FrameMouseInColor = clWhite
        TabOptions.FrameFocusedColor = clWhite
        TabOptions.FrameWidth = 1
        TabOptions.FrameNormalColorAlpha = 70
        TabOptions.FrameActiveColorAlpha = 70
        TabOptions.FrameMouseInColorAlpha = 40
        TabOptions.FrameFocusedColorAlpha = 70
        TabOptions.FontNormalColor = clWhite
        TabOptions.FontActiveColor = clWhite
        TabOptions.FontMouseInColor = clWhite
        TabOptions.FontFocusedColor = clWhite
        TabOptions.TabStyle = gptsShape
        TabOptions.LineWidth = 0
        TabOptions.ShapeFillGradientAngle = 90
        TabOptions.GradientColorOffset = 30
        TabOptions.ShapeCornerRadius = 0
        TabOptions.StyleColors = False
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
        ScrollButtonArrowColor = clWhite
        ScrollButtonArrowThickness = 1
        ScrollButtonColor = clWhite
        ScrollButtonTransparent = True
        TabHeight = 35
        Tabs = <
          item
            Page = scGPToolPagerPage1
            Visible = True
            Enabled = True
            ImageIndex = -1
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
            Caption = 'TscGPToolPagerTab2'
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
            Caption = 'TscGPToolPagerTab3'
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
        DesignSize = (
          880
          146)
        object scGPGlyphButton7: TscGPGlyphButton
          AlignWithMargins = True
          Left = 842
          Top = 2
          Width = 30
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 4
          Anchors = [akTop, akRight]
          FluentUIOpaque = False
          TabOrder = 3
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
          Options.HotColor = clWhite
          Options.PressedColor = clBlack
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
          GlyphOptions.NormalColor = clWhite
          GlyphOptions.HotColor = clWhite
          GlyphOptions.PressedColor = clWhite
          GlyphOptions.FocusedColor = clWhite
          GlyphOptions.DisabledColor = clWhite
          GlyphOptions.NormalColorAlpha = 200
          GlyphOptions.HotColorAlpha = 255
          GlyphOptions.PressedColorAlpha = 255
          GlyphOptions.FocusedColorAlpha = 255
          GlyphOptions.DisabledColorAlpha = 100
          GlyphOptions.Kind = scgpbgkInfo
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
        object scGPGlyphButton8: TscGPGlyphButton
          AlignWithMargins = True
          Left = 806
          Top = 2
          Width = 30
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 5
          Margins.Bottom = 4
          Anchors = [akTop, akRight]
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
          Options.HotColor = clWhite
          Options.PressedColor = clBlack
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
          GlyphOptions.NormalColor = clWhite
          GlyphOptions.HotColor = clWhite
          GlyphOptions.PressedColor = clWhite
          GlyphOptions.FocusedColor = clWhite
          GlyphOptions.DisabledColor = clWhite
          GlyphOptions.NormalColorAlpha = 200
          GlyphOptions.HotColorAlpha = 255
          GlyphOptions.PressedColorAlpha = 255
          GlyphOptions.FocusedColorAlpha = 255
          GlyphOptions.DisabledColorAlpha = 100
          GlyphOptions.Kind = scgpbgkUser
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
        object MenuButton: TscGPButton
          Left = 4
          Top = 1
          Width = 93
          Height = 34
          FluentUIOpaque = False
          TabOrder = 2
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
          Caption = 'Menu'
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
          Options.NormalColor = clWhite
          Options.HotColor = clWhite
          Options.PressedColor = clBlack
          Options.FocusedColor = clWhite
          Options.DisabledColor = clBtnFace
          Options.NormalColor2 = clNone
          Options.HotColor2 = clNone
          Options.PressedColor2 = clNone
          Options.FocusedColor2 = clNone
          Options.DisabledColor2 = clNone
          Options.NormalColorAlpha = 0
          Options.HotColorAlpha = 30
          Options.PressedColorAlpha = 30
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
          Options.FrameDisabledColorAlpha = 255
          Options.FontNormalColor = clWhite
          Options.FontHotColor = clWhite
          Options.FontPressedColor = clWhite
          Options.FontFocusedColor = clWhite
          Options.FontDisabledColor = clGray
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
          Options.ArrowDisabledColor = 5851714
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
        object scGPToolPagerPage3: TscGPToolPagerPage
          Left = 0
          Top = 36
          Width = 880
          Height = 109
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 5
          Visible = False
          CanScroll = True
          FillGradientAngle = 90
          FillGradientBeginAlpha = 255
          FillGradientEndAlpha = 255
          FillGradientBeginColorOffset = 25
          FillGradientEndColorOffset = 25
          FillColor = clWhite
          FillColorAlpha = 50
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
          StorePaintBuffer = False
        end
        object scGPToolPagerPage2: TscGPToolPagerPage
          Left = 0
          Top = 36
          Width = 880
          Height = 109
          HelpType = htKeyword
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          Visible = False
          CanScroll = True
          FillGradientAngle = 90
          FillGradientBeginAlpha = 255
          FillGradientEndAlpha = 255
          FillGradientBeginColorOffset = 25
          FillGradientEndColorOffset = 25
          FillColor = clWhite
          FillColorAlpha = 50
          FillColor2 = clNone
          Color = 15987699
          BGStyleKind = scgspbTransparent
          ScrollButtonWidth = 17
          CustomImageIndex = -1
          WallpaperIndex = -1
          HotScroll = False
          AutoSize = False
          ScrollType = scstHorizontal
          ScrollOffset = 0
          ScrollTimerInterval = 50
          ScrollButtonArrowWidth = 1
          ScrollButtonArrowColor = clBtnText
          ScrollButtonColor = clBtnText
          ScrollButtonBGColor = clBtnFace
          HorzScrollDirection = scgspsdLeftToRight
          VertScrollDirection = scgspsdTopToBottom
          TouchScroll = False
          StorePaintBuffer = False
        end
        object scGPToolPagerPage1: TscGPToolPagerPage
          Left = 0
          Top = 36
          Width = 880
          Height = 109
          HelpType = htKeyword
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          CanScroll = True
          FillGradientAngle = 90
          FillGradientBeginAlpha = 255
          FillGradientEndAlpha = 255
          FillGradientBeginColorOffset = 25
          FillGradientEndColorOffset = 25
          FillColor = clWhite
          FillColorAlpha = 50
          FillColor2 = clNone
          Color = clWhite
          BGStyleKind = scgspbTransparent
          ScrollButtonWidth = 17
          CustomImageIndex = -1
          WallpaperIndex = -1
          HotScroll = False
          AutoSize = False
          ScrollType = scstHorizontal
          ScrollOffset = 0
          ScrollTimerInterval = 50
          ScrollButtonArrowWidth = 1
          ScrollButtonArrowColor = clWhite
          ScrollButtonColor = clWhite
          ScrollButtonBGColor = clBtnFace
          HorzScrollDirection = scgspsdLeftToRight
          VertScrollDirection = scgspsdTopToBottom
          TouchScroll = False
          StorePaintBuffer = True
          object scGPToolGroupPanel1: TscGPToolGroupPanel
            Left = 449
            Top = 0
            Width = 320
            Height = 109
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 0
            Caption = 'scGPToolGroupPanel3'
            CaptionHeight = 17
            CaptionFontColor = clWhite
            CaptionFontDisabledColor = clWhite
            DrawTextMode = scdtmGDIPlus
            DialogButtonColor = clWhite
            ShowDialogButton = False
            StorePaintBuffer = True
            SeparatorColor = clWhite
            SeparatorColorAlpha = 50
            object scGPButton5: TscGPButton
              Left = 24
              Top = 10
              Width = 84
              Height = 76
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
              CaptionCenterAlignment = False
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDIPlus
              Margin = -1
              Spacing = 1
              Layout = blGlyphLeft
              Images = scGPVirtualImageList1
              ImageIndex = 4
              ImageMargin = 0
              TransparentBackground = True
              Options.NormalColor = clNone
              Options.HotColor = clWhite
              Options.PressedColor = clWhite
              Options.FocusedColor = clNone
              Options.DisabledColor = clNone
              Options.NormalColor2 = clNone
              Options.HotColor2 = clNone
              Options.PressedColor2 = clNone
              Options.FocusedColor2 = clNone
              Options.DisabledColor2 = clNone
              Options.NormalColorAlpha = 255
              Options.HotColorAlpha = 50
              Options.PressedColorAlpha = 80
              Options.FocusedColorAlpha = 255
              Options.DisabledColorAlpha = 255
              Options.NormalColor2Alpha = 255
              Options.HotColor2Alpha = 255
              Options.PressedColor2Alpha = 255
              Options.FocusedColor2Alpha = 255
              Options.DisabledColor2Alpha = 255
              Options.FrameNormalColor = clNone
              Options.FrameHotColor = clNone
              Options.FramePressedColor = clNone
              Options.FrameFocusedColor = clNone
              Options.FrameDisabledColor = clBtnShadow
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
              Options.ShapeFillGradientAngle = 90
              Options.ShapeFillGradientPressedAngle = -90
              Options.ShapeFillGradientColorOffset = 25
              Options.ShapeCornerRadius = 10
              Options.ShapeStyle = scgpRect
              Options.ShapeStyleLineSize = 0
              Options.ArrowSize = 9
              Options.ArrowAreaSize = 0
              Options.ArrowType = scgpatModern
              Options.ArrowThickness = 2
              Options.ArrowThicknessScaled = False
              Options.ArrowNormalColor = clWhite
              Options.ArrowHotColor = clWhite
              Options.ArrowPressedColor = clWhite
              Options.ArrowFocusedColor = clWhite
              Options.ArrowDisabledColor = clWhite
              Options.ArrowNormalColorAlpha = 200
              Options.ArrowHotColorAlpha = 255
              Options.ArrowPressedColorAlpha = 255
              Options.ArrowFocusedColorAlpha = 200
              Options.ArrowDisabledColorAlpha = 125
              Options.StyleColors = False
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
              SplitButton = True
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
              ShowFocusRect = True
              Down = False
              GroupIndex = 0
              AllowAllUp = False
              ToggleMode = False
            end
            object scGPButton6: TscGPButton
              Left = 122
              Top = 10
              Width = 82
              Height = 76
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
              CaptionCenterAlignment = False
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDIPlus
              Margin = -1
              Spacing = 1
              Layout = blGlyphLeft
              Images = scGPVirtualImageList1
              ImageIndex = 5
              ImageMargin = 0
              TransparentBackground = True
              Options.NormalColor = clNone
              Options.HotColor = clWhite
              Options.PressedColor = clWhite
              Options.FocusedColor = clNone
              Options.DisabledColor = clNone
              Options.NormalColor2 = clNone
              Options.HotColor2 = clNone
              Options.PressedColor2 = clNone
              Options.FocusedColor2 = clNone
              Options.DisabledColor2 = clNone
              Options.NormalColorAlpha = 255
              Options.HotColorAlpha = 50
              Options.PressedColorAlpha = 80
              Options.FocusedColorAlpha = 255
              Options.DisabledColorAlpha = 255
              Options.NormalColor2Alpha = 255
              Options.HotColor2Alpha = 255
              Options.PressedColor2Alpha = 255
              Options.FocusedColor2Alpha = 255
              Options.DisabledColor2Alpha = 255
              Options.FrameNormalColor = clNone
              Options.FrameHotColor = clNone
              Options.FramePressedColor = clNone
              Options.FrameFocusedColor = clNone
              Options.FrameDisabledColor = clBtnShadow
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
              Options.StyleColors = False
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
            object scGPButton7: TscGPButton
              Left = 223
              Top = 10
              Width = 82
              Height = 76
              FluentUIOpaque = False
              TabOrder = 2
              OnClick = scGPButton7Click
              Animation = False
              Badge.Color = clRed
              Badge.ColorAlpha = 255
              Badge.Font.Charset = DEFAULT_CHARSET
              Badge.Font.Color = clWhite
              Badge.Font.Height = -11
              Badge.Font.Name = 'Tahoma'
              Badge.Font.Style = [fsBold]
              Badge.Visible = False
              CaptionCenterAlignment = False
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDIPlus
              Margin = -1
              Spacing = 1
              Layout = blGlyphLeft
              Images = scGPVirtualImageList1
              ImageIndex = 6
              ImageMargin = 0
              TransparentBackground = True
              Options.NormalColor = clNone
              Options.HotColor = clWhite
              Options.PressedColor = clWhite
              Options.FocusedColor = clNone
              Options.DisabledColor = clNone
              Options.NormalColor2 = clNone
              Options.HotColor2 = clNone
              Options.PressedColor2 = clNone
              Options.FocusedColor2 = clNone
              Options.DisabledColor2 = clNone
              Options.NormalColorAlpha = 255
              Options.HotColorAlpha = 50
              Options.PressedColorAlpha = 80
              Options.FocusedColorAlpha = 255
              Options.DisabledColorAlpha = 255
              Options.NormalColor2Alpha = 255
              Options.HotColor2Alpha = 255
              Options.PressedColor2Alpha = 255
              Options.FocusedColor2Alpha = 255
              Options.DisabledColor2Alpha = 255
              Options.FrameNormalColor = clNone
              Options.FrameHotColor = clNone
              Options.FramePressedColor = clNone
              Options.FrameFocusedColor = clNone
              Options.FrameDisabledColor = clBtnShadow
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
              Options.StyleColors = False
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
          end
          object scGPToolGroupPanel2: TscGPToolGroupPanel
            Left = 217
            Top = 0
            Width = 232
            Height = 109
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 1
            Caption = 'scGPToolGroupPanel2'
            CaptionHeight = 17
            CaptionFontColor = clWhite
            CaptionFontDisabledColor = clWhite
            DrawTextMode = scdtmGDIPlus
            DialogButtonColor = clWhite
            ShowDialogButton = False
            StorePaintBuffer = True
            SeparatorColor = clWhite
            SeparatorColorAlpha = 50
            object scGPButton3: TscGPButton
              Left = 21
              Top = 10
              Width = 82
              Height = 76
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
              CaptionCenterAlignment = False
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDIPlus
              Margin = -1
              Spacing = 1
              Layout = blGlyphLeft
              Images = scGPVirtualImageList1
              ImageIndex = 2
              ImageMargin = 0
              TransparentBackground = True
              Options.NormalColor = clNone
              Options.HotColor = clWhite
              Options.PressedColor = clWhite
              Options.FocusedColor = clNone
              Options.DisabledColor = clNone
              Options.NormalColor2 = clNone
              Options.HotColor2 = clNone
              Options.PressedColor2 = clNone
              Options.FocusedColor2 = clNone
              Options.DisabledColor2 = clNone
              Options.NormalColorAlpha = 255
              Options.HotColorAlpha = 50
              Options.PressedColorAlpha = 80
              Options.FocusedColorAlpha = 255
              Options.DisabledColorAlpha = 255
              Options.NormalColor2Alpha = 255
              Options.HotColor2Alpha = 255
              Options.PressedColor2Alpha = 255
              Options.FocusedColor2Alpha = 255
              Options.DisabledColor2Alpha = 255
              Options.FrameNormalColor = clNone
              Options.FrameHotColor = clNone
              Options.FramePressedColor = clNone
              Options.FrameFocusedColor = clNone
              Options.FrameDisabledColor = clBtnShadow
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
              Options.StyleColors = False
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
            object scGPButton4: TscGPButton
              Left = 125
              Top = 10
              Width = 82
              Height = 76
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
              CaptionCenterAlignment = False
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDIPlus
              Margin = -1
              Spacing = 1
              Layout = blGlyphLeft
              Images = scGPVirtualImageList1
              ImageIndex = 3
              ImageMargin = 0
              TransparentBackground = True
              Options.NormalColor = clNone
              Options.HotColor = clWhite
              Options.PressedColor = clWhite
              Options.FocusedColor = clNone
              Options.DisabledColor = clNone
              Options.NormalColor2 = clNone
              Options.HotColor2 = clNone
              Options.PressedColor2 = clNone
              Options.FocusedColor2 = clNone
              Options.DisabledColor2 = clNone
              Options.NormalColorAlpha = 255
              Options.HotColorAlpha = 50
              Options.PressedColorAlpha = 80
              Options.FocusedColorAlpha = 255
              Options.DisabledColorAlpha = 255
              Options.NormalColor2Alpha = 255
              Options.HotColor2Alpha = 255
              Options.PressedColor2Alpha = 255
              Options.FocusedColor2Alpha = 255
              Options.DisabledColor2Alpha = 255
              Options.FrameNormalColor = clNone
              Options.FrameHotColor = clNone
              Options.FramePressedColor = clNone
              Options.FrameFocusedColor = clNone
              Options.FrameDisabledColor = clBtnShadow
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
              Options.StyleColors = False
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
          end
          object scGPToolGroupPanel3: TscGPToolGroupPanel
            Left = 0
            Top = 0
            Width = 217
            Height = 109
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 2
            Caption = 'scGPToolGroupPanel1'
            CaptionHeight = 17
            CaptionFontColor = clWhite
            CaptionFontDisabledColor = clWhite
            DrawTextMode = scdtmGDIPlus
            DialogButtonColor = clWhite
            ShowDialogButton = True
            StorePaintBuffer = True
            SeparatorColor = clWhite
            SeparatorColorAlpha = 50
            object scGPButton1: TscGPButton
              Left = 8
              Top = 10
              Width = 82
              Height = 76
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
              CaptionCenterAlignment = False
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDIPlus
              Margin = -1
              Spacing = 1
              Layout = blGlyphLeft
              Images = scGPVirtualImageList1
              ImageIndex = 0
              ImageMargin = 0
              TransparentBackground = True
              Options.NormalColor = clNone
              Options.HotColor = clWhite
              Options.PressedColor = clWhite
              Options.FocusedColor = clNone
              Options.DisabledColor = clNone
              Options.NormalColor2 = clNone
              Options.HotColor2 = clNone
              Options.PressedColor2 = clNone
              Options.FocusedColor2 = clNone
              Options.DisabledColor2 = clNone
              Options.NormalColorAlpha = 255
              Options.HotColorAlpha = 50
              Options.PressedColorAlpha = 80
              Options.FocusedColorAlpha = 255
              Options.DisabledColorAlpha = 255
              Options.NormalColor2Alpha = 255
              Options.HotColor2Alpha = 255
              Options.PressedColor2Alpha = 255
              Options.FocusedColor2Alpha = 255
              Options.DisabledColor2Alpha = 255
              Options.FrameNormalColor = clNone
              Options.FrameHotColor = clNone
              Options.FramePressedColor = clNone
              Options.FrameFocusedColor = clNone
              Options.FrameDisabledColor = clBtnShadow
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
              Options.StyleColors = False
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
            object scGPButton2: TscGPButton
              Left = 114
              Top = 10
              Width = 82
              Height = 76
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
              CaptionCenterAlignment = False
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDIPlus
              Margin = -1
              Spacing = 1
              Layout = blGlyphLeft
              Images = scGPVirtualImageList1
              ImageIndex = 1
              ImageMargin = 0
              TransparentBackground = True
              Options.NormalColor = clNone
              Options.HotColor = clWhite
              Options.PressedColor = clWhite
              Options.FocusedColor = clNone
              Options.DisabledColor = clNone
              Options.NormalColor2 = clNone
              Options.HotColor2 = clNone
              Options.PressedColor2 = clNone
              Options.FocusedColor2 = clNone
              Options.DisabledColor2 = clNone
              Options.NormalColorAlpha = 255
              Options.HotColorAlpha = 50
              Options.PressedColorAlpha = 80
              Options.FocusedColorAlpha = 255
              Options.DisabledColorAlpha = 255
              Options.NormalColor2Alpha = 255
              Options.HotColor2Alpha = 255
              Options.PressedColor2Alpha = 255
              Options.FocusedColor2Alpha = 255
              Options.DisabledColor2Alpha = 255
              Options.FrameNormalColor = clNone
              Options.FrameHotColor = clNone
              Options.FramePressedColor = clNone
              Options.FrameFocusedColor = clNone
              Options.FrameDisabledColor = clBtnShadow
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
              Options.StyleColors = False
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
          end
        end
      end
    end
    object scGPPanel3: TscGPPanel
      Left = 0
      Top = 459
      Width = 880
      Height = 26
      Align = alBottom
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
      FrameSides = [gppfsTop]
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FrameWidth = 0
      FillColor = 5263440
      FillColorAlpha = 100
      FillColor2 = clNone
      FrameColor = clBlack
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
        Left = 854
        Top = 0
        Width = 26
        Height = 26
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
        Top = 3
        Width = 848
        Height = 20
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
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
        FrameColorAlpha = 220
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
        Caption = 'Status text'
      end
    end
    object ClientPanel: TscPanel
      Left = 0
      Top = 180
      Width = 880
      Height = 279
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
      StorePaintBuffer = True
      WordWrap = False
      object scCheckBox1: TscCheckBox
        Left = 23
        Top = 19
        Width = 173
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
    end
  end
  object scStyledForm1: TscStyledForm
    FluentUIBackground = scfuibAcrylic
    FluentUIAcrylicColor = clBlack
    FluentUIAcrylicColorAlpha = 50
    FluentUIBorder = True
    FluentUIInactiveAcrylicColorOpaque = False
    DWMClientRoundedCornersType = scDWMRoundedCornersOff
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
    Left = 584
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 688
    Top = 224
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
    Left = 784
    Top = 224
  end
  object scGPImageCollection1: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
          87000000097048597300000DD700000DD70142289B7800000A4F694343505068
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
          D0A7FB93199393FF040398F3FC63332DDB000000C54944415478DAEDD4310E82
          401085E1DDA0149C80C482D28358507B12E968B5B4E440549CC2D2DA9EC284AC
          606961C2EE4C667679FF0126F32593B1CE3913731600ED80EEF96611CE436F4D
          955FA304149935E3E448102280BADC99E13591204400E7C3FEBB3C05420CB044
          8110055020C401A108158010841A802F4215C007A10EF08BB854B95507581300
          00000040E2807BFF085EB23D1D01F006700700C709FD3B1900D602B80320F937
          1A3D803B00927FA3D103B803000000000000806D03B40780741FB67FB4B0BB65
          687C0000000049454E44AE426082}
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
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          38000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA864000005364944415478DAED9C5F
          8854551CC77FE7CCFEAB755D519B682DD7361DC43F2DC53AB3450F8168043E05
          F91289622128915404BDF4F725102BC1878A44A12888C2978230287A0AC2A874
          D9669645324282A26845A175F7FEFC5E65B63B77CFFC73CFDDDF6DE6F78175F6
          9E73EEDD7B7F9FB9E79EF39BF118524431D227D0EEA800615480302A40181520
          8C0A10460508A302845101C2A800615480302A401815208C0A10460508D3B480
          E0186DA00C3D494CDBB0B9C618EAF579424CF4B2DD4DAF480766B16858007F4C
          5D7C890E638FFDD8C9267952ED24A12101D7827F993E43E36D8B7562ED22A121
          01C1093A8A860716FBE4DA41425D0108FE4644E227F4F51989136C75098D0878
          138D0E4A9E642B4BA82FE0388DE1DDBF51FA445B55422377C0141AF5499F6848
          2B4AA82B804F84D7AD9461A64B78F9053FA728A0F7EC5E1A5FC8F154C002808C
          19BCBC6DA6E919B38FAEDCC83154800710A02FCDCDB4C3ECA4E966F755019EC0
          DD70C4EE697EB4A8023C71AD3B0A68B8D967820AF00824BC81BBE0D966F65101
          1E81803108D8DCCC3E2AC02308D445CC539636B38F0AF08CD9DDDC672C2AC033
          2A401815204C7A05847FA9AF8FA81FCFA89E9B883A338DFCF9FF1DCC1CA6242E
          E0D27EC0C647E6FCC4A79821CFD60A4BED03FA10D0D54574FB0002DF231D1F09
          BE67C37BEC96D2595765F202C2A00FDE419411F9402D1530F1DFF867BB2D944E
          C7EB921510067D680DBA9B4EE918888320FE66ECF4263372EE9F6879B202B2B7
          10AD5C217DEDA901813C6CF3C5E7A265C90AC8AD23EA68DFAE270E33FD697AED
          2AB3697C2E6D9D9C80EE6EA2BBEE94BEE6F4C1F61E5318FFB1BC999C8065FD44
          03B7495F6EEAC088E8518C883E296F2727E0D62CD18AE5D2D79B3A38A087EC68
          F154793B3901AB31F45CE2F57BBB2D01CF06C3F6BE8933E5EDE404E4D6E201DC
          217DBDA902F381195A36BBC4E626FF2D972523200C7C2840A900A3A0B3B650BC
          3B5A968C80DEDEEBB35FA50204F243CC031E8B96252360251EBED9ACF4F5A60F
          A6174CA1F87AB4281901E1F0331C862A156004B40323A0CFA365C90818C204AC
          A75BFA7AD387B5836664FCD768917F0106875C9FBBFEAACC1166446DBE346F62
          E45F40987E0E33A04A25CCDF9842E9C178B17F019A8270C2CC476DA1F454BCDC
          BF004D4154639FC917DF8D17FA17A02908279884DD8F49D8B7F172FF02340531
          0F049FE90AF7DB074A17E3757E05680AC209FAFF49F4FFEB5C757E05845DCF6A
          4D41C4C10D701243D0475C757E05680AC209EE80577107BCE4AAF32B4053104E
          E29F8245F12B20FC0CB85B531071D005AD47175472D5F913A0290827E87E2E9B
          F3A5A5D5BE9EE84F40987C1BD26F41C4C110F43B8CFF0BD5EAFD09D014841374
          3FC7D0FD3C51ADDE9F004D41388180831070A45ABD3F019A8270C241B0D58E4E
          7C55ADDE9F004D4138E18E99ACBD77F28F6AF57E04680AC2091EC017F0005E55
          AB8D1F019A827082C07D61F3C5876BB5F1234053104E70071CC21DF07CAD367E
          166CD214841326B3CBE67F7EBF561B3F4B96690AC209BA8ECDE882C66AB559F8
          A27D9A827082F1FFEF664B690061A9D985D717102E556CE94CD5652B3505E104
          025EC304ECC57AED1A5BB8F538BD05014F3B2B3505310F0ED7940B6686EDE8E4
          54BDB60B5FBA58531015E09DFF97E1CCD6E87F43AA45E38B77BF439DDC4587F0
          EB01DC0DFF4D7935053107DEF9A78D0D1E372313C546F7B9B1E5EB2DEDC5AFDB
          B1F7A0C9ADED6BD7140403C33CC5C67C8D587C8087EE49BC3983668EA1431761
          5480302A401815208C0A10460508A302845101C2A800615480302A401815208C
          0A10460508A302845101C25C05D584C67038FAAC470000000049454E44AE4260
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
        DrawStyle = idsTile
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          380000000473424954080808087C08648800000006624B474400FF00FF00FFA0
          BDA793000000097048597300001BAF00001BAF015E1A911C0000001974455874
          536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A000004
          504944415478DAED9D4D4854411CC0FFA3B565681FA02DD5332A96E8121148EA
          161D3A9411A67D427BEB5404BB1B418BABA114696110A91075894E066A1EDCBC
          E4355708A1A20FFAA2A036178DE84BB6B2749AB7E421F7B9FBEABDB7FF796FFF
          BF8BEECCEEECCCFCDE9B197766FF32CE3910783012800B094086042043029021
          01C8900064480032FF2CE0E089B0077E311F3056265E592692966137C262E20C
          6018381F8639BCB3EBE2B9976616AE5B0013ECF337F819E3E7C4C305D8BD8244
          827316BED9D1DCC14D1A3A7409503B7F7FB03E021C7661F7801430E8EF696BA9
          3643822E01FB03A702E2CA6FC36EB74C883B21D8D37EB6DD68391905A8633E9F
          CC7B00B93BECCC4682E54F6D303A27641610A86FE48C9DC66EAD8C88CE6BEA6A
          6F3963B08C0C02820D7DE219D533D395956B60D396ED50B2D4D98BA0F76371B8
          7BE736C4DEBC4AC913ABA348575BF36E23E567147020D830021A4BCDBDBEA38E
          EFFC695409BD9D57B4B2E2DD6DCDCB8D94AD4780E6138E1CCFAD51E9EAA526CD
          74218019299704E88404204302902101C890006448003224001912A013D7F83B
          58F86600E67D7C06051F9FC29C6F1FAC7ECB3867309CDC3398844EA52EFA4F9F
          0D39480087252F7AA1E4D155C8FBF51DAB1209D1A5612514ED503F2FD5F30287
          08E0A0DCA983C2F8107645A6E9574243D57A243842C0921737C17D5FB6ED0A16
          54428319F70B6C2F401DF3570D1CC61C7666230153B021D39C607B01C54FAE43
          F1E36BD8D5D086419372329A76BFC0F602560C86A1686430257D9EB21E16571E
          82B925AB2D7DFF9FEF5FC3A7A11BF023F630254FAC8E22A527A369F70B6C2FC0
          736B8FE652D37DA0C5F2CE9F469530DA5DAF9515172BA2B4FB05B617B0AE7BAB
          66BA72EC4656EB11BB7C48BB1EA168DA3FD44880499080990D2701D981042043
          02902101C890006448003224001912800C09408604204302902101C890006448
          003224001912800C09408604204302902101C8900064724180D45FD476BC00D9
          4315384E404555ADE6152F2B3DDBC6B41B6E5701E53B6BFB184FBDE265C57102
          C41DD0287EC831C3EAC07102BC55359E2960B609D0E438012A953B6B032259B6
          EFFC68E248016A90BEF21D3511F1ABF441FA1C29209921A8A8AAF18B6CA9C354
          3A56C0347FE6041F6750265647D2056A75BC00D989B57A351B4002B2D5701280
          0B09408604204302902101C89000644800322400191280CC6C022409D691BB02
          640857A392B30264810420930B020C9FE250BB60ECEB048C7C9E483E5EBEC805
          4B8B5CC00C85644D623C6093ECBCBDE0357C8A63F4CB043C1FFDF657DA5A7701
          B817BA0CD5CD949065B213BBE06D046EEC14C7BDB7E330FE7DF2AFB4C2F9F9B0
          B1B4D058E5CC08DA273BB1F35E0FE481A1531C160930276CA51D88B56E0E881B
          FEBF4F715833049914B8D51E30166BADFCEF531C164CC2E6852EB60FAA04AF5F
          341AF31487F9C1BBED46724EC8079FFAAF76B3748AC3DAF0F584B59000644800
          3224001912800C0940860420430290F90D5A821A7D37AA1D2F0000000049454E
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
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          38000000097048597300001BAF00001BAF015E1A911C00000A4F694343505068
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
          D0A7FB93199393FF040398F3FC63332DDB000003794944415478DAED9C3F481B
          511CC7DF25108843A648B594BA081DB3D8B9C4B8F48FD2593A24214B07752C2E
          4ABB948EB64317491C8A7331DA2E9AD0B92E8E852E9662527472B840C04B7F17
          42A95173EFBCCB7D2FC9F703E19EF8EEC9FB7DF2FEC4BCDF19AD564B111C0605
          60A1003014008602C05000180A00430160FA2660A3D61C2AB32B9331A31FED52
          802614008602C05000180A0043016028000C0580A1003014008602C05000180A
          00137A01994CE652430B9FBE061096E0D879F1F8D2CF070707BE08A1004D2800
          0C0580A1003014002634020A85C2B465598B529C917B670CC39844070789C4A0
          26313894E2612412D9DEDCDCFCE9E67E6D01F2478C5C2EB724C5B7F21A43773C
          A498F25A2D954A1F5A9A81D51260073F9BCD96E5F214DDC3414062BAB7B5B535
          AF23414B403E9F5F96CB06BA6303C64AB1587CEF54C9514067CE3F529C76DC62
          CA9A90725A131C05C8BB7F4D2EAFD1BD1950D66514BCE9554147C08E5CE6D13D
          091B7FA64CF5FDC969BBFCF0CBB8BA737CED045116010BBDDA7114203B9F9351
          DF6A5EC7EECB63757AAFD12E8FFF8EAB671FA7AED4B1B7A8B223BADBAB1D9D11
          3054FF56F60B1D013632027A7E60A3805BA2390551001A0A0043016028000C05
          80A1003014008602C05000180A00E35940F797EDC41D4E5FDE53409FA1003014
          008602C05000180A00430160021360B7D36834D4F9F9B96A369BE87EF785582C
          A61289848AC7E3F66941AD7B0213609AA63A3B3B43C7281092C9A41A1BD33BA7
          1698807ABD7EE99D7FFFF3113A4EBEF2EB79EA5FD91E091313135AF751804F84
          5E40F71434CC02423905752FC2C32820D48B7037C39EA2A40B05F8044CC0DCDC
          DC89D4717D389702DA9945B5FDFD7D6F87736504DCEA783A05B429CB08F0763C
          5D46C09AD4719DA0A12BE0DDB71FFE45C903AF1E3DE8F9FB5B8E80751901DE12
          34D2E9F4742412719DA24401CAB42C2B55AD56BDA528D9CCCECE2E8B4D57497A
          A32E40E2BA52A954BC27E9B52B09B21694A5AE769AEA280B9070EDC9DCEF5F9A
          6AA75143A6A325B968256A8FE8226C4A3C5765DAF13751FB7FEC35211A8D2E76
          1E533073D316755404D85B4D89C1A1FDB8828B8B8B6DA739FFCAFD7C64991EA1
          7F64593714A0075C40508BB0D322EB04057884026E800228408BA11530285000
          180A0043016028000C0580193801440F0A0043016028000C0580A10030140086
          02C05000180A004301602800CC5F7D21456E4243CFE30000000049454E44AE42
          6082}
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
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
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
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000060000000600806000000E29877
          38000000097048597300001BAF00001BAF015E1A911C00000A4F694343505068
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
          D0A7FB93199393FF040398F3FC63332DDB00000AAD4944415478DAED5D7B7054
          D5193FBB9B07661342B00613CC83A44624409DC2D877AB9D56FC0318A78CA553
          1FAD3A4D9502458A0F46CAAB50DFD502461A073BD5DAD63E740A748A3A533BF6
          39D43AB4222A9A4012091014C863D13C76B7BF5F7671B63B77EF3DE7DE73736F
          B2FB9BF9E68BDE73CE7EE7FCEE3D8FEF7CE71088C7E32207EF10C811E02D7204
          788C1C011E234780C7C811E0317204788C1C011EC3B704FC68E79FAF81BA0932
          D9615131C87390CD2B175ED6EF75BDD2E14B02D0F88D50AFD23E8DC5DE0B02EE
          F4BA6EE9F02B01DF837A4073B16F83800BBDAE5B3AFC4AC07D50B7692EB60F04
          4CF4BA6EE9F02B014F405DE742D1619070C6EBFAA5C2AF0470D0BCC285A2EB40
          C021AFEB970ABF12B00FEA632E14FD2910F04FAFEB970ABF12700C6A8A0B455F
          05027EEF75FD52E13B02D0F841A84148C885E26F06013FF1BA8EA9F02301E550
          C75D2A7E1D08D8E8751D53E147026641FDD7A5E29B41C077BCAE632AFC48C097
          A19E77A9F86740C022AFEB980A2D04A0D166408521FB51C1F71D96752DD4932E
          D5F76FB0EFB31AEACBAF9475DEE5745DE1980018B30CEA610807CF7721DB208F
          C0B07715CB298662F7B01252EEB49132808EB9DF4036C2BE038AF6D12FB51072
          3BE4D3C9FFFD32E472274E3E4704C028FA56F6430AD21EF1ADF82993C0B8368B
          324AA196435608E79E4F59481301FB0A456255BE0A72914192FB51C6ED760D71
          4AC02EA8F92649A290DF41EE8391FF36C8CF37AA45B833E79701EDBB1FB21EF6
          0DA4D93609EA16917839CE37296308321BF9DFB063806D0260E03CA83D0A595E
          140922F6202F9D62ECB66ED0D4904EC1AFE006D8B617B655E1EF5B21DF82144B
          E67F01796DB94E6C110023F344C25F3FDDC66F321FBB9D6A0D0DA713FC1AFE04
          B91C926723FF2290F08C6A26BB04B0BF7E68D49A0636F647CE88F7CF44C4F0D0
          3064500C0D0E410F8D3CCECBCF17F905F9D005903C112E0A8BA270116AA7733F
          C7121D908B556745CA04A0F1CF833A0899E4666D62F198E8EBE91791FE5ED1DF
          D32B62B1A852FE6030248A4B278A9289A5225C1216C140D04D73CF621308F8BE
          4A063B04D097D2E4560D62B0E7F4A993E2BDE3DD223A3CACA5CC505E9E38774A
          B99854361944B8FA5570206F0409ADB219940840E35F02C5D98C2BAF53CFE91E
          34FC71313838E0BC3003141414828829A27452A92BE527F10710305F36B12A01
          2F417D4EB7C5D1E1A8E8EAE81091C8E8042D84C3C5A2B2BA1A5F861B0ED7112C
          0009BB65124A1380C65F0CF52BDD960E7C30208EB4B7BBF6D66702BF86A93535
          A27042A11BC5B30B6A4C5F5B18418A0034FE39505C68689D3AF6F5F58B639D1D
          221A551B607521140A89F3ABAA454989EC745F096B41C00FAC12C912B01E6A9D
          4EEBD8F8470EFB637B766AED343748A05392D3D276B3449604A0F1F9D6F3ED3F
          479765EC763ADA5A3D7BF3D3C12FA1BAAEDE8DEEC8D2FD2D43C0D3505FD56511
          07DCF6D6D651EFF3ADC031A1A6BEDE8D81791E48C8B8BF614A40324470BF4E6B
          3ADB0E8DDA6C47159C1D55D54DD35DEC5E10F0894C0FAD08A01BF6095D96709E
          7FB4B3437705B5A20283B2E67502C70206841936B41501F40CF20B701CD2C715
          EEE1836FF9AEEB4907BBA2DA860B75AE987F89C6FF7AA6873263C017A09E824C
          7562C5C993EF89EE235D9A9BCB1D944FAD1493279FABA3287A476F04013D9912
          C84E43B953F518E42B76ACA063ADF58D3775F876E8FEDC23E2F19783A1E02B81
          40706493271E8FCD8945631F1781C05CFCE795907C273F42DF51FDF48B9C38F0
          2290EFA2E1775825547545F0C0C48F4562035E1A3DA77BD1F7B7AB6431C2BE68
          5C7C63C79A65A6212B376DDA3A3B14103FC39F9738F9B18AAA1A8C05B67ADE7F
          41AE41E3BF2593D88E3794FBC0BF80CC95CDD3F5CE3BA2F7D429BB6D11C5ABB8
          B9AB34B869F79225433219E63737E757F6C4D6E0D3BB4BD88CB09B5856262A2F
          B840250BF799EF1589E02F293B09BB1B32FCC43740EE10569E51947FF0C0EBCA
          FEFC0F110C6C6C59BDD4D62ABCE9EE6D1B40C25A5B3F1B0C89861917CB6EEA74
          42AE45C3BFA4FA3B4E37E539403386A72A539A33FD11D171A84DBED0FFC7BEAE
          B2D0A5B26F7E3A46BE8453D1BDC26677543DAD4E14155BF6B65CA832E6F4B49D
          DFD01117C49D316ECE1B2E364E74778FF8F86D60087DFE5CAB3EDF0AC93181F1
          3BCA0333F70ECE2B370D515A898677B435AB2B328EA1278633A4A3987AF6600A
          6A03BB5AEE5AB6D0B17140D3E6AD3BA116A8E62BC554B4025352135C01025E70
          629B2E02FE0AF519A3679D870F8B485F9F7AA1F1F8BA9635CBB54432376DDAB2
          167DF906D57CE1921251555B6B96E43A10F07327B6E922E06DA87AA3676D5CFD
          0E7CA05C66301858B07DF552A95D252BDC7CF7B6F9B1587C976ABE82C209A2AE
          C1F460E56D20C0D1694E5D04D0BB66385A1D7CED80AD19502814AA7CF4CE2547
          1D1B07DC724F7345341A555E868FCC841A679825791004AC72625B8E00138C25
          02725D904DE40661138CA54138370DB5091D0B317A4AFF08B9D4E8F9385F882D
          07015B9DD8E7D415C10830BAA933C6CF67812B623B64854C0C9011EC3AE3E8A7
          E512FC46CBC4D9E18C7B0572B5D5692023D871477F11EA71488D6C9E2C7147D3
          19F74DD593F82AA1894550F740960AC58B94B26C4386D3D2D520426AFB4F764B
          F29350AC54831D8BB2704B92D3F2AF8184235609ADA22268C16691B83CC951C4
          52166ECA9F802C06092F9A25B2228067761FD451A92C0D4BE985CC04099D9912
          581140F62ED355B92C0DCCBA1E04643CF96F45C016A8653AADC9C2D0447E01AF
          657A684500E7616F428A74599365C1B9BF46E32F364B201319B706CAF2A0810A
          B2243C9D31A1D34180699F2B43C004A8D721B53AADCB82031A1BD0F8EBAD12C9
          AE0378C8E0B7BA2D1CC74794F8D64F97B9BA4765257CF618BF568CD3437A5C84
          3D2D93508580D922E174D27E84649C1D53FD0B1AFFF3B2895583739B45E20A17
          57300E0E6A333E740E08D8279B419500AECF19F55BE65A0DC6F655052D68FC6F
          AB64B0E38EE6C26C8B9BB520C6E0651D7447378080132A99EC10C0BB74F88935
          BA5DA30F3136AEABB9158DFFB06A26BB3B625F82B2B319CD3E85FE256EEAB876
          51834D70EAC8A344B36CE4E539EA59B27B00A9707265D9B350574926E7F4867B
          C70FD13388BCDCC0E7A57E3324F3BB0DDAC27DDD5ED8C6FD045EC2A732E5BE12
          799FB3F3C34E08A81389BBD6CC26D2BC849BE3C5A3E9F1F3C9DB0819ABC3C832
          AFBE06866B34C1B69D06F59B2312442CB2B06F37F22B87BC9C85D3A8881F42AD
          367844071EB7E69EB48A16485EFACA8DF3AB854BF71019E0A4485C1AB8C5EC04
          63D23EBE68DC17E10583E94E495E323E53F63C98119C12C0353CFBF4B3E7C5FE
          0EE13F3FB233D3C16493B24683886EFE94485C2CABB4EA837D1F11898B65B927
          CEBF39E75FE1695C50D230BE15FC040FC098579DB6905998A306380E254C5EDD
          33131251BD7DD7087EBCBC3B6398A306380E25D40D3F12F008D412978A9FADE3
          2BD5093F12C0714039925912534040B7D7754C851F09A02F65BB0B45D3975100
          02625ED731157E24808BBB675D28FA181ABFC2EBFAA5C38F04300AEF1F2E14FD
          1F10E0285CD10DF89100C685D88E6737C1F320609ED7F54B871F09E0BA22E242
          D15C955FEF75FDD2E13B020890C090BE12CDC53AFA972EDC825F09A06FE5A39A
          8B5D0502B4C4B9EA845F09E039843B3416C94ACE320B11F40A7E25804E3E9E6E
          E1A0E9D43147CFE70E34FE535ED7CB08BE24209B9023C063E408F01839023CC6
          FF001BBDA38C805E759F0000000049454E44AE426082}
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
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
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
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end>
    Left = 504
    Top = 312
  end
  object scGPVirtualImageList1: TscGPVirtualImageList
    ColorDepth = cd32Bit
    DirectDraw = True
    PixelOffsetMode = scgppomDefault
    InterpolationMode = scgppimDefault
    Width = 48
    Height = 48
    DefaultWidth = 48
    DefaultHeight = 48
    SourceImageCollection = scGPImageCollection1
    Left = 771
    Top = 296
  end
  object PopupMenu2: TPopupMenu
    Left = 432
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
  object scGPImageCollection2: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000161000000E4080600000049F595
          08000000097048597300002E2300002E230178A53F7600000A4F694343505068
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
          D0A7FB93199393FF040398F3FC63332DDB0000B9064944415478DAECBD679024
          C97526E891AAB416ADD568DD3D03823810C42EC13300DCFB8103705C1E8D3C12
          04FF80207146C2B8664770A996475B90FB8366B77F96B0A3ED99ED2DD7F6A006
          C399C160301888C1740F7A44774FCB99D625BAAAAB322BB3AAB2528BB8F77984
          67464486F0888CAC56F1809CAECA0AE1E1E1FEF9F327BEA7A8AACA2289249248
          22B935A254AAB55BDD86486E5F49D24709705E33C436D47DDDB8D960F55A3560
          B36F0F89C5E3B6DF0F0E0CDCEAA645D203894038123799D23F7E4055D53FDD4A
          8C3E59FD232D7703082BB1185394CEF647207C774A04C291B849823EFB99A611
          6FA7DD0A000C249D67D29AB0C254B549005C6177BA850D000C20B64A04C277A7
          44201C89978CD367070BD7C4E02540A09BF4D9903B5C614D007015B87D872330
          8B40F85E93088423F112EC8BF7D267906D0F10037D8AF459645288AAB246BDC1
          1ACDFADD80BF2D5162F10E93C4E040FFAD6E56243D90088423911100F05EFDE7
          5E429D401D0070D1ED4044F5C0F67BB746F744207CEF4804C291C8CA2EFA8CD1
          A7D1C37B400B5EA7CF8ADB41773B004334E79CD9241181F0DD29110847222B29
          A639E9800CBD403FA87D007838E39C072569878D5A8D351A3576274740C8482C
          9E30FD1E81F0DD29110847E247A6F54F2FB46104C7AE328F90342D04EDDE18B3
          1108DF1B128170247E04A8B08F851FB206EDBA4C9F05E6E2FCBB1B62807D754A
          04C2F78444201C895F815D78270B2F290302545DA2CF96DB41B56AD96F0C30AE
          9BD0FF0DDAD66E9F11E707DA3944207C6F4804C291F895B043D6A005E7E9B3CC
          5C000F268826C2D0FC6BC1B3F499601A10FA3D59EDF21971BF0C938E77B6744C
          04C277947CEF7BDF63854281C56C62BCED4555F0894038922032449F3DFACFDD
          688A0029801CCC1015A7831A7538E2029BA1613A814331D1655BFD0A66628969
          E176BE1B1F85A8DD79E21F84A11CA8A9088423092A6184ACC11997D13FB6A2A5
          2257BB4D459EA4CF0CDBBEAC3F819E37E853F07D32CF98EB24F18940F8F696EF
          7EF7BBAC542AC98230948203F48945201C4950E9639A932E68C89A911FC216C8
          D5A6CAEA75572E08205553E2FE31BDADFD6C7B8018EDDA649A9DDBB7D8C50843
          2210BEBDE5B5D75E63E9745A1684A114801CAB16817024DD4837216BEEFC10A4
          0D820BC2C50E8C2F77332DA4AD2471BF11FDF8301D8A4EEDC2F5B1B8547C9F4C
          E0AB384CE208846F6F3973E60CBB74E9922D039E45F022A114F0D8F8088423E9
          46A0F1C1DE8A440E3F1A265006DB746CD76D01B151AFB346C395400DA61080AA
          D038BD805580F6B0CFB6FA153CDB1A7331B1B89E0C3384C3248E40F8F69653A7
          4EB12B57AE7869C2C671C8236722108EA45B11216BB2C0261006CE385B0D564B
          4B763543887865803F8EF20C6FD30534647B5977216B6EE2696271EF19450361
          078940F8F69673E7CEB1B9B939562E97DDB461B123C37C8934E14842108503CF
          5E8234009C0C10036572CC851F0291108DBA6B5286D10C2295E86110D0728A90
          B5707B42FB20D46ED3F7C90ECE38A344207C7BCBE5CB97D9D2D2125B5D5D6571
          FBEA28F812CA03FC290610BE47524023E9A9B459D654570DD39D1F8280A859AF
          B3BA3B001BED69E25E18DC00F59C445B93FAF96187AC799A585C4FC616567177
          E844207C7B0BECC1006138E71C40188E3838E4840210817024A10906134C125A
          C89A7B3483333F841C390FB672A3CCACC9E2601890652B714013DEC1C2D3863D
          4D2CAE27BB38E38C1281F0ED2D1E206C478015817024A14A67C89A198C85D9C0
          3179A1D96CF2C40C178A4A2489EC65F6110E18F57088A525DA1A76C89AA789C5
          B531719159ED2E83037D213435925E890708DBC5D547201C49E8621FB2A6B610
          C6C581A6B07AAD4C40EC08C018D5006027E014E60968A36589B61A1D24DD88D0
          C271DF4093892F3A12068C91D1912E9B1A492F45807026D306615D9F70CA308D
          403892D0C529642D4E430FCE2A477E0868C1888870D10861429865EEA029C543
          A14B58216B7EECD11D02006E36246B995A9BAF28837481C0154FBA6626529B00
          99986348560F49F715455151D66A2DB7C61A8DA6D28A4608784FD5F6474F11EF
          9E9BD700BCCBCBCBA4099B1C73DC71ADDA3BAE23108EA427620D596BF343A836
          C90B8A9E19E75E2943F03F60647B39FEF081734C2664CDCEC9E747FC46667448
          B3D1E8B64248D7D11E41EE8E3603847927784475F4028C01BAEB9BEB5A9AB012
          EBBC45F760EC251DEF1E8BD1C2C202DBD858D76385F9B03215CAB5342B02E148
          7A22569635777E0838E3AA559E9CC19C632BFD008D5F6084763D29796DBB6795
          8D51B6951040587681F2143F2763E722CEE0E1758A44AA6E48608CFB55AA1596
          CBE55AF1B88E97EE0D18777083B4B560933D18C67E7A376A47248EDEAC088423
          E999081B180619E2CD0088B67B6E0050ADE29ADD8B6DDC3E71B8E4FD8108D826
          AE4B1C2B8854FC82981FD387A38400C2102C22584CBA8EF6906B89AA83B0A133
          BCB4E1D6A9E100716E3DC7AAD52ACC10AAE765C30762133708B45E6A0BBB7AF5
          2A8F7137246A087E8886DDD5543502E1487A2BF006632B8681EAC8A7ABF14338
          2AAC18A4007380BA9FEDBEDF9035BF202645C129232181B03509A06B716B9151
          0B3676890F0AC7C0C008802B154BEA467E43B166A5795E321C30EE78F7894482
          DDBC7993ADACAC18B560BC8BFDACC3D4A55AAF158170243D13D85B016ECECE38
          022080B08B19C26F4AB451301BE030599538D66FC89A2705A7AC8404C290B0A2
          3D4CD2696A6D3AB697C73B6BC828FF403E9E1DD7264D53CDE6B28E0BB7D4E5BA
          0363D3BBC7C293CD667954846111124E5FBC9386CBD522108EA4E78251E9080A
          3043B80090911F2208B0040D59F36259EB8E1FC222218270D05D83A7185B873A
          7F6E226D9630DD40EEF981EFF97C9E158A05476E06E9AE0CD6E731D5F2EE93C9
          2477C6ADADAD19B560C9B1A446201CC92D1291195777B5148451D959D8EEC20C
          5973A7E0F4292A69742EE618BFD25382A2A68B162C44D786037686F3B5A105D7
          6A3535BB9EF57CB21E0271EBDDE3CC181685AD2D76E3C60DE33BF48A67373D16
          030897693B18B8D32289248068A9C9AED8EA604FF32D6187AC75C50F612770E8
          C414CD9E1A9246DC4DB487A3A836CE382769876705BD997D3FACAFAF232AA2E5
          8CF3797AA07B1A1F8B59DE3D70F3CAD5ABAC582C1AB5602B3F849B68205C2A57
          74F290E07D164924B2C29332100DE1BEF0DBF1430495B042D6043023EDDA373F
          84E94220AC6FD459B150E49A302630B6B570F08400C4A185AC19A5A19921A416
          45E990353731F403AE572E97D5F58D75454261E46D34848085619FEE78F7097A
          67395A14E6E6E78D006CC70FE1D5560D84F96F3125D28823E99DD0D802E0C011
          E701343007ECD67F0E0B443029E0A0936559B303B1AEF821B42ED0E657A95464
          F57A9D27A9F08744AC92AE0DF7F5F585A1158716B226DAD754FD994CBAD6860D
          DD4637E7CEB85ABDE6A905B7DBDCD5035BBF31BD7BBC2BEC60E609802B664B02
          9CC88808F21365D30661FE4D04C491F44838513B00185B5AE731D6AB5A704158
          D68C29D2EE149C9202E0C5E445C510852F4AE6C9AE6A39C05C234EA552ADEF02
          881FBBA4BBD0ED1BAAFF62D1F47FD557C89AD385A89F0A5B5B2CBFB5E95BBBEE
          7A53A1B6231898E1DDE3FDCCEBCE38FC8CE14C87B6E95CE595874E10E6DFC622
          10BE53E5B65D40B1FDAE54646C8A61534C1AA51B96B5C0FC107827786E68BFC2
          0EDECAF272202B02F06272C34481AD6E40200EA5A61EDAD80C88E3DD6AC3E827
          2C5808010BEABC0C01884DEF5E84A42DDF5C3666EB59B344A51F91D981702477
          B6C4E2DD6B1F610B8F07F68EC2E9892DD32022C81E763D3F216B8C05E487E0E9
          B59532ABD1B303443A920B9C19E35A260A80304C145C73F6872812B1AA9EE7AB
          8D6637EBA1CF040E9BFEDBDCDCE0FC10C6BEF3D30F5D8270DB9FA0AA4DB1A05E
          BD7695DEABEE4BE34355E1F1ECB0DAF8EEA00884EF4EB96D1CAD18B400606F47
          1CA45765878C1224640D2006E096E687C0A3D6EB0D56AD56B809C231A6B5E98D
          10009C2E1C775D11140170D42ED7C3A04E3A6177D5F8219CFBC6EB327287399E
          0B31F04324D8DA5A862D2E2EF277A1499D7E88437968F143F8C93F611108DFBD
          72BB68C435D881B10D7707E15E17E014E237640DDB4B4469DC94BAB8AEAD96CB
          25AEFD8AEF9C4406848D224C143E1D778116373F21695E122081838F83750B3F
          846D3B25FB210010A3D188055FE60DA2F7B8B5B5C501D8B0ABC17F66E9EA7084
          9A3ACBC7FD2210BE9B05552A6EB5486A2B3DC9F47210BF216B9E0B83005F002F
          B45F3BD3836DDFF80461E1B81311149212C8CCA36BC1A12C8A7EB561CE0F512A
          B2CDCD4D693F87D738F319B2D6C10F81DD08923232998C410BE67D0B8E14DD2E
          61E6855055CFFD68A409DFEDE241927EBB4837FC1041A52B2276216DF0ADF2AD
          B32CF80AF10BC2ADF3FC9B286408F15B229319E757B06810147BDB80489ACD86
          0AE79785914CBA6F9CFF267D990E6E1007AA4A9BC6A9C6BF2932F78D40F82E16
          A405AB3EE33BB75974BE551EE4DE5564A7CFE38D216BBEB70B027C01BC0060AD
          2493EA1F300282303F5777DC0188F1F170DCC986FE85E08C73BE725CD14BFEB8
          1DC6B7FD79562814A46382EDFAC6FE7BA9D36DB941B0D8A1943DD8D21C2A29DB
          3E99CC3D2310BE8B059A59B0D239DB26086C479A671875DEFCAAFC986CD084A5
          99D0BAD57CADD20D08B7AE211FCE2615B2168633CE4962165E890E324C8432D6
          6BDC19D7AD266E73BE8C934E8C23133788664E51D88B2FBCC0DEBF7891A592C9
          6EDAD179D30884EF5E11F5CBC2DE5A86280128B76C25881752D8074D9AB006B4
          BC769AC9EEDAD67C6B9C492C8C98EC3040D8280061247938B4CD93A02848669C
          EF365A9C74861EE0091E1B1B391EFE1566CCBB71FC7B4C055B6E90FEFE7E76ED
          DA35F67F7FED6B2CD5D7E733442E02E1481822142A7C72C583D00CDE232226BD
          70AE41A05D8A3924C0D7786CB71236080BC71D40C32182C2B54A49A3150DD1BB
          453BE6C039CC9D71E512DBD8D8E849D291E80B37A236FD5F38E35ADC2058D860
          9FFE6FFFF44F9C40C8628A48308F1D5804C291B41206B0CD13DB410C243E496F
          65C378A1C85BAFA10B1303E279616668E8FCBE561B6B4F80216410368A4B389B
          6DC89AA6057750B887DD2C0EBE76CA00EE0F7E08B7B8EA30C4058C6DB941B0A0
          9D387182FD7FFFFDBFB3A1A121EB39084D03DDAAEBF6C1639C372310BECBC508
          C2025892C914EBEB1BB8B54E3BC3A4079FC476B705F7C67D35C75AB3E793DFB6
          0B7A08C2622141389B457BB30D596B38C604F7A65272CC10B2266270F3852D4E
          EBB91DD234F7BD70D4420B3699A7D07FA74F9FE6200C40B6489C493A965D8038
          02E1BB5D9C41B8FFB6D0446F89A80A2B968AAC5C6AE76BDC0ADE8D5E8270EB1E
          BAE30E60621013CB9ABD16DC71A5B09A64D286357E8806DFF23742B2B5CBF68B
          E1911D59F63C401882641EC40A4B6911963917C509DF0B1281B08D1840F85692
          1E6D07080BC173028CF5448338FDCE0B83AA3C20427617125E7B159D5702EDDA
          B0E187D80ED1B56152BE9512CD05A4A677748404080722EF510D0C6D1108DFE5
          1281B08DDC8320CCEFA73BEE609E48249243F1786C4F839088C4672784D26E15
          ED68D41BDC162CC3D61EB6D0E2A3523FA06CD28D643259B0CB4204089F3C7992
          FDBFFFE5BFB0818101A74B05A1B18428D4F71108DFED729B8230EC9293FACF68
          845D0DF5B004D7C5B6BB35C9490B530BC542AC5C2AC4832604E8D255560381B0
          5BB84A53FFF4029C80BA4A32951A8F936ADC9B71E0558B8E8F457571F106224F
          A420583895C392542AA55CBA74B930373FBF34313E6E5B722B8E72F6CBCBECDD
          53A78CE9CA76E297D09D3F5204C2F7805841587CD7DF3FA8E7F3DF1220C68085
          87BE572063150B7B3A533737738AEE8CEBE6FEDD65F9A97C122A8E7FEF658780
          68A8526E4E4C4CEAA178DB370E70ABFEFE3E76E2C449F5E4C913CABE7DFB3C6A
          0E7646A974DBDC584CE1E688577FF86A3DBF5558A4ABD69CFA20866822A63990
          5DFA33456DDB4FFFFA99549139E25E103B1086203A02D47CB70084836EDD42EA
          0E452D150BAC580C9E16DB6D1B8CCFCD27BEDA73F6384B03684CD42AA8DBC606
          07071980783B4118DA2C8A637EFDEB5FE7243DF7DF7F3FDFEABBDBA6AD5548BA
          6B03B4DA8B172FB2F3172E6033E059B60A6D6B787362B72A844BF66704C2F782
          D883306C83091AF883DB6D92085A8120ACBE80F6AB6E6EAC43AD412EEAAD348A
          B75EC6B63AE81808729A6AA95202B070F00708F7F76F5FC822ECAC3FFEF18FD9
          5B6FBDC5B5F0919111B677EF5EC9B1188C9FC128B0FD16681178FDF5D7119A28
          1663CF02AE12F5118D216B4D4906C10884EF7671D2843140609208A9C2AFACDC
          0AC634535F6CE537797FDC56A5A0D4E0CCE341FAA0AC57FB103E02A43A4F4E4E
          6DCBFD01BA20C1F9F6B7BFDD6249431BF6ECD9C3464747F90221DD69C6DF7C74
          1FC63C9C6DA894ACDB79614240BCE21273D991A0400148B13CA4638CBBBCDB08
          84EF057103E154AA9F4FC06D02008C768445C129276EA838FCDC8B7E50AAD5AA
          9ADF5CBFBD005810CB6C8336AC11E4D419B4608599C7C2E8E8181B1A1AEEA936
          2C2A4A3FFFFCF3ECCA952BC662A60A69C7EA81030702549AF607C6005DD051FE
          ECF8F1569B74011083C07DD3ED7C2C1C4D772076E4C77620158A40F86E172710
          167F8349629B38876798C698D6CBF245AE0233844D3F6CA73D56654E9DAD69C3
          3D6F0BF819AC3CBDB86F3C1E57A7A6A6BB292CEAFEE07CE7D5CFDE7BEF3DF6DD
          EF7EB723D20036D71D3B76B0E9E9690F279D53B71AEF657F94E0ACF8D9CF7E06
          7276850786B4FF0C10061882C2D27125E229EEB00DBBF791A3DF234AD6B807C5
          0D84356DB88F7F7AAC0D235D0B5AB097E7B82720C4B7E0043E85ADBC9B16EC0C
          90DB24BDD48679CD369D82D3F6DEF4FEA1098F8E8EF6642C88CCB86F7EF39B5C
          13B58230160280E2C18307039AC8BC398471DDEB7373ECDD77DF650943A89BE1
          107C89CCB9ACDB9D6092687A2F14AE216B51B2C63D245E209C482475A74CEF2C
          014C4BEB447AE7B66BC15A85DC06DB585FBFDD09EE21304BF4622140289C0A2D
          D8EB3D431BEE45C81A4C0FC78F1FE7CE306186B00A407A727292EDDAB5ABCBFA
          769D6D57949852A954D4D78F1D63E552C996A342D541914990FD431B56DDDB88
          878493CE4DF188E284EF057103612170D075539ADC43C05F2B4AC76F7B3482A8
          D450296F7F5A6C20E99159A252ADE849116E45339B7C2C4C4C4C840AC2A4812A
          B95C4EFDC637BE01AE6085C69AEBC5611B1E1818F0E1A473E8488324930976FA
          CC3976F9CA1525491AB7E1A1AD27C6E99B9C2211B256F711B2E6F0F74813BE17
          C41B8451AFAC67DAB06C591DDE541632F000710878B833CEEFA961B7C58F8469
          9680030EC43888889079BF3806DA68981995D07CBFF7BDEFB173E7CE396AC142
          006E085943024738D59EB57A7CE0293E7AEC0DFB6A289D765AB99035CE31EDDA
          4653C89ACDDF2310BE17444613862079A307E16A26B62E4909CD368B8BE4F31B
          9E65D36F375139C55778F6690070BD51374544B8DC3BD490355CEBFAF5EBECB9
          E79E6B9509F212001BE286619F0E0388E3F1187BF3ADB751A893DB9D5D1E5EFC
          645B61A3A39D70D239D8D80DE2C6B21681F0BD2032208C8907100ED91618A8D4
          BAB1E901CF6B3D77B55256F3F9CD5BC10DD375FBC3D086F1DC357AEF00611900
          1602E01B1F1F67838343DC96DCCDFDF1414CF0E2E2A2743824EE8F488A60216B
          668162B1B4B4C4DE7EFB6D9E7EEC29662046DC70DEEDF08677ECB05B825204C2
          F782C86AC25A591C84368606C2B6151CB6EBB1011E7984A435EA7EB5E05B6A8A
          10A2A733772DC572D137A0E3DED8C2771BB206D03D73E68CFACA2BAF28491FC5
          312122646D6A6A2AB0368C318DB8E863C78EB1FCE6A642202CFF241A078467C8
          1AA4E69D49E714B21681F0BD20B220AC69C3FD9C612D046D189C7F1874DD025A
          A0F3F19CC5E2162B158B778633CE41BAE195E03B01020738E482F401806F7878
          2470C81A01A0522A95B8330EFC107ED9CFC4428090B5A03B349CF7FEFBEF831F
          8225AD2171928F41374635EE35978EE6C91B6EB1CD7A951384AC8DA9E6109D08
          84EF05F103C221515C3A660CF9BC46A046707E8886C60FA1765992BEDBB67479
          2E972066091E93DB6CF0C48CA077478486A2C45468A24140105AF04F7EF213CE
          0F61A9EA212D0036DC7FE7CE9DBEB56168C120097AFDE8519EA2CDA37F1C9EC1
          E5C944C81ACA1EB91A7FA10D7B2470B442D60C269E0884EF05F103C288190608
          7729BECABDF4E2796F4B7E888012D436CC43D2F0CEBBF0EF69596E03BE42D684
          636F6565852766004883863F8A3A797AC89A2F20862DF8D4BBEFB2B9B939B333
          CEE6393C9ECCB600A855247925E0ED44E6A8282B1581F0BD20B2202CA4CB9861
          C10FE11492D3F367C5161C1111773EFC6A8FC47CF24A0074110901675C180220
          D458D6E47648821FE285175E60972F5FF60C49F39276C8DA5E261B361C8FC795
          7426A3BEF9E69BCE635E5E2B16178036EC19B2A6FA0B598B9235EE05F103C221
          90FA7805A7F7F439D166C4040B86B0302ECBB68960C84DFC3AE9ECF821BAB937
          CC1170D2893E76138C9D4B972EA904C2E0A308C51C84554884AC351A303149F0
          431C3FCED6D6D6E46CD1968BD95C1A1701CB9A6BC89AEA3F642DD284EF05F10B
          C2D06206068682DC4A961FA267CF896291C542BE1766883B8257025A70B5EECC
          0F11F8DE342EC6C6C610B2E60AC270C681AF59E787708FC9F5212264EDE0C176
          C89A5333B060202E99F34320EE5DEE013BBFB276ADF6710D5993046163C81A2F
          ED1581F05D2E7ECD110163866F353F84D26C34D48D8D5CAF89886E6B6D582F59
          A4835478CD14E43A48E0700B5983030E0C653FFDE94F033BE39C4484ACCDCC74
          B2AC89E600A02B950A0F4983532E6E4FD2E3F5B0E65FDB3F8A90359825EC4979
          E452992122640DE3A91281F05D2E7E411882B2473ED398C10F8188885BE68C03
          435AB977FC105EE0BB2DE0AC6BC3B6F7D2DE7385DB834DE78404C65E2C6BD03A
          D7D7D779C922B4236C2E128030F81F0E1E3CC4FFB5B601BFA20DE7CF9F67972E
          5FE64A4400275CFB62F6E701D5D3CC21644DC2266C145167712902E1BB5C8280
          30C487830E076155476CF02D71C6E1D978C9A25B2FBD0563970A1C084903F8D9
          9E16121063F84C4EDAB3ACC116FCF2CB2FB3B367CF722DB8173B1268C0E01B6E
          87ACB5EFA1F1436CB237481337D9C3BDEDBDCED279AE23CB9A640D3AA3200C09
          69FDCB1108DFE51204847DC60C63354776DC2DC98C83DF662BBF7EC7F1430415
          27B304CC1032215CDD80A32066B716060528CFCFCFB3EF7CE73BD2FC1041EF2F
          42D650A0B4FDBC9A2FE3ED774E801FC2BE347D785A316759A37F578C4F59F3D0
          8245DB2D020526B209DFED125413C6A0866DD8E39C6EF921427936C405DF0631
          C1DB6192B00B59E3C9293C334ED277D81D10370984A75A854145BF3FFBECB39C
          1FC26F7AB25FD132F986D9FEFDFB5BCFA1F143DCE020EC190DD13D18DB86AC55
          3D92358C7DDE51E12602E1BB5B82823044C224712BF921F8C08619A20186B05B
          07C2DB1E39618D9440CDB820FC1081EE6D615983E90191083FF8C10F7A0EC0C6
          36E8216B9C2304C07CEC673FE3C4FD4142D2F8577237163FB559D668F7055B30
          1235BC92A1AC2242FE2210BECB2538086B3CC32E1974B001EF6B1D7C0B9EAB54
          2CB0227D6E032D785B1F9D19B4616C83911917548280B116B236CA4646C6D8D6
          D61677C6E15FBFFC10DDB419E00F5E09FC7BF1E24576EEFCF9D62220FD4CDD81
          312F0C4A636F538030F309C2422210BECBA51B4D58ABB43064C7338CD906675C
          37FC10A65B31396D52652222AD5E6F85A485430FE1A7B12ADFFAEBFDD9533384
          9EDA6AD362CDFE0D334437D76EBF5795F9C1E3584C51F7ECD9C7CB15811FC290
          51A7F4384C90F77FA3DE50510609B6E19F521BE01330EEDA8202B1384FE26CBC
          FD0AC97CAD5A6D263D629285FDDA6E0E46207CF70862748BF4E94860070807D9
          B20B071D3E165E57A45D4E84D876F978262D5D4A212D7890B4C09897334E6E32
          FA030DBD68A5AA3B0343EC069B8E712805A4C414B6B4B8A46C15B6E8E7986F7B
          885EE455D59C58AA8FBED204E7E572EBEC1BDFFC06AA97B0784C8B1F06289246
          DA0D0DB167BBA1FD269209964AA6D472A5C26EDCB8A13869E17EC018EFD24F6C
          B1BE40AE57CBE5522A95523C8E6DA81A2B52C7DF2210BE3B043683A7E9738D3E
          378D7FC00A5CA994025D14A265D129DC3421C0587CBF9D22EC67D0E809FCC669
          28CFA24CBB4CFB251FD4575B0A85022B140B4E5EEF9E0A8022BF99574F9D7A57
          B9B17423F0FDF12EB5C5D5B89396E9070DAC5E7AE925F59D13EF285A97688B21
          BE8F2931AEADF64AD0662C42FD7DFDEA8E1D3BD9E0C080A23A68B47E45F4A55B
          8FAAFAF5EB8D06FBDC6FFFB6323F37872C3D2FCE64FDB4A8E4FDDD2A0F30CD3C
          004DF82433C430760BC24204D880690D9300FF061119FE0127A9D578B14A44E1
          EFA72BC531F131E143158FB6E924416AB158540034357FB1A141C58A09EAA58B
          97681128B2F4EA2ADBCCE77D57A030BC07DF080EB0B97CF9B2FACA0F5EE1BF83
          2FB8DD7DC1AEE947F8D69E9ABF6BE72E02E0414D334E245A406C1C63BD501644
          8AFCE1C387D5DFFFFDDF67972F5DE284451EE179A63F18DA1585A8DD050233C4
          11D6DED2431B9E137F44650180575822C0D8BF6983B6B0F1048B27E2BCCC0CD7
          962459B934EDB7A297AC574C1119D806872E1EEDCA6FE5618EE0DA1F2F6FD3D8
          BEE010689AABABABAA4ED1C843A36EDC58620D70276FC3FD45B58AEF3CF71D10
          E440FB53E1942B97B78F3A14FD0D2E8BD9991930AB294A2CA692366C7B6C2F40
          188B00FAFE0FFEE00F78CC327E4721D38BEFBFEF8B352EA2B2BC3B04C0FB04D3
          326F8440353BC1F4184668C1E154ADED5254ED3F981398C8306D243C429A00BA
          0019D8B375F0EF88C8E0D489616BC3ED06987EE51A50B9AC96CB25932D9807EA
          6F837986D78CA37BA15A04FA459813D6D6B29C312CEC54613BE94BF5B1B7DE7E
          8B1DFBD9319803F877185F4859DE8E3E101537F6ECDADDCADCE3F6EDFE7E9672
          E13B09B36D58703EFEF18FB3CF7CE633FC670032FAFFDBDFFA569B405E4E2210
          BE0B04958C1FB3F97E993EEFE3070308833404AC2A6EA35165BDF1F42B706833
          2DB65283639DB1AD7F60D0762B5DAF575B69B8862804DB8A1D00E19E6A61DA02
          A0D41B0D75AB50404C2E94E0F67E12C42DDE84DE5D0BC0079969204C170E243C
          37EEBFB0B048C05CE3F6FB5EDE1FA68767BFF32C071F631BB03D879DBCD7DA30
          9E15D53626C727DACA85B6B273E277C5A58286766877C31BEF19F7FFA33FFA23
          EE8414BB2098447EFADA6BBCA0A80F6D3802E13B5CE0D67E8669E06A158C8C77
          E9B3896D7C4323750178DDAAB85EA80619BA6BDAF8254F8325101621701AA034
          F8043797E2E2E258B1A3A7DAB0B8077D60838506AA53D69AFE8EC9D9CB1D0788
          CA69DBAF2226D6EA0C0485E4C6C6A60A70EEA5360C4DF3873FFA118FC94DA53A
          77311B1B1BBC1F7A98B6AC10C0A9D0823B166E5486A1F64123F632277503C418
          9BBFF11BBFC13EFAD18F72A636F1AC5890F0FBB7BEF94D1E332DF91E2210BEC3
          E5A0FE71922C7DCE40652B7392EFBA283638CEB637C3CD9902100A4C3CD12A5D
          03EDB756AB9BD26175F1ACD8D14B6D58980130B9ECEFA1EA911B6D6D38ECAD39
          26352A55D0B65F718A0A4169F762B1D41320461CECC28D1BECBB2FBEC84329AC
          0B916071CBE77BC2E7CC057DBA6BC74E363434E4B8E0F5110863C162128A86DF
          7784E77BF0C107D917BFF8C5D60EC428D0804FBFFB2EFB312D5449B9C2081108
          DFC102ED175A70C2E3B80B345856E0D8C200A271D32A36C8B64F1BC6BD1CC9B0
          15024F0CDE0A2FC7E398B3E155B1834FBA9E38E974010013C8BA9204351A3553
          099EB080185A56369B6557AF5E750458ADB0650931B37ABF860784A25AC5F3CF
          3FCF966EDEECA85C2C86120E83B9A2BD5B084F3867C4D0306750D3488C6CB2DD
          789DC404EDAE7CD1B04A1DAB27B6A85FF8C217D8238F3C62CB5827A232FEF9B9
          E74024D422B577B97E04C277B03CCA34DE062F810D16216BF50A67D9E218662A
          36D8630162A02C0C403828224957ECE88536AC6B783C244DA63249DD2685B81B
          30D61343786A2EECAE6E5A2EFE7693407263234FDA722CB44516F6CE3367CFB6
          343C87A76FED188C216B61CA9EDD7B9099A734C54AE7422E1F77E0137612AF77
          0433C4873FFC61F69BBFF99BAE954B44658F1769C18AD182A0B85F3F02E13B54
          1009F124938FC5BC4693630E5B6538E9E867A88B0035805B2FC326C496106688
          6EAA4EC20E3CC6BC170DA3361C562A319FF0D08265811480A92F7626090AC4D0
          82A1DDC2D4E0C5CD200A9D2E2EDEE09A63180B12801D00F4EC77BEC34D0DDE6D
          60DC41870523AC0511CF32313EA14E4F4F2BB666084BDF6A0EDF01C9AB5B2FD5
          F99EF04EC1DCF6877FF8876C7272D2D3090B20FEDE4B2FF185D3EAA48B9235EE
          7CC10C38CC342795ACB442D6A0A56931C3CA7694A5475B61975EEDE21AA8D8B1
          5BFF590AC5C0E910964D54F3FA1709842ABE00A556AB6A4D7168B32C20232BAC
          42F7BEF8FE455E3143A60D7876982ED2E94C28843A009437DE78839D3871A205
          281EE92CF47C0D1EB216C6420033006291A105BB9556D20F6EF52F4FE0407BBB
          608BE34F43ED87C3EDB39FFD2CFBC4273EA1D0E2E2794111B2F6ECB7BEC5B3EA
          ECFAC090D41281F01D2600A487029CC743D6F0DE2B95028FB8620EE15E2109AE
          0F75619ED97059480A90141A7BBFDF3686651B860654286CF19FFDCC6568CF8D
          46DD117D644118A073EDDA35B696596B39E3BCD28185F902DA70B755A70126E9
          749AC1160CEDAF95B2EE719E58BCC20859E3B5E56677F0B24A52D12706F08436
          DCCDFDF19ED087200A82168C05493602060BD6519DDCC8A9DE5E94AC71E709DE
          E433FABF7E0523F3140DC80D84AC4153A39F45B141F1F73005B375853EDDD41C
          0A5CB123AC9035D064D2243439E364C118A06513666712D7CAC5F198B2B9B1A9
          5EB97CA50348BC80186089523FDD86AC61114026186C9C76BC081E81605D87AC
          01F01039032DD8B73907596DA954D7A59600C29FFBDCE7D8073EF0016E969195
          961987B4E18DCD4DA75D4904C277983CC834ED35A8A024CB19FA3401C43AB565
          2F42D630EBC16101377D502DBBEB8A1D9CE4256022AFE660AAAAA4C9393AE3BC
          E6350058368143B5C9CCC377972E5D6285AD822B903A00325F38969696B9361A
          0488C10A46F757BFFFFDEF7B92B5DBB5A01DB216ACEA09EF133A6DF7AEDDE087
          683BE37C0A2836635A068BEFF301A2478E1C61BFFBBBBFAB2FAAFE2E8105E0EC
          9933ECD5575F75EAC30884EF2019611A3F44B7FBECF3342156B15DD5497DC20E
          5913B36D9169401C54BAAED801108A2BB14045E730D9608610FC10CEC7B95F07
          B1D9B2DB57E304D7F921D8FCDCBCA75DD7492B16216B70E8F9159C8B31829A71
          B06DDAD66CB36D8B4938F001848384ACE9FC10EA8ED91D4AD0241811B2E6640E
          7013C10FF1A52F7D8957F10842D4249E19FDB84CEFC106882310BE43042F0AD1
          1093DD5E8869C008275DBD5A2DEB99740A42D610831B866D1860BEC12C749A3E
          056EEDBD2C840807982462D02A7D9C8389030D08092EF28551ED2F85BFF89EBC
          A4BED7AA3515CE38FA973BE764C50AC800D39595556E16F0A30DC39EF9CE8977
          D81BC7DEF04548A3B5C1DC9748BED9DCF4679582AD1436F0BD7BF680AD4FE996
          9C586759937788EACEB84F7EF293ECD39FFEB42933CEAF604771FDFA75F585E7
          9FB75B502310BE43C4891F22A85C659AC38C6BC3A4718012328C9035510E1C21
          69D52EAE11AAC33061085993702829206B47485A10FCB7BB01C2D5FCB0ACB5F8
          216EAE28327CC9B6EDD0DB8E6D386837E1A4F3D2EA8DF7DFD8DC60CF3DF71C22
          3314275279EF36B4FA9415A83F4B1AE991D4B51AD467B3D3B36C726282F75D37
          082C087F60969015981E26E8DE5FFEF2974DFC104184D3BFD2FD5FFEFEF7D9FB
          EFBD675DD434102E57FCCF97ED26F4BE8705FB4090B50F85784D1EB24683A364
          287B1446C81AD00EDC106B5D5C23F4D039D286D598418D711BB99A0654607AC5
          8C60E0A35A7F17E9CCDE97D34C08451E5FCAC3BB02DAB48D1AB15F96B524E787
          F821BB70E18206185D4C75BD161507B14DD2C639E399C705F1DCD05CF7EED9AB
          ED620C1D1AB429A238A96C2152EC847EFDD77F1DFC100AFDDC35D8C5490BCF22
          64EDDBDFB63A2A3510DE2AF837DD6D5741BF483CF921820A0F59C3808759420F
          9581090011134100D0991F425E3CF921824A5C73D299CC1BD69925B6CE854238
          DC074630F60A5933B6E1CA952B9DE6836E8010D4F34D9597A307CB9ADBB301A4
          161716D98B2FBD68CF191DB41D30F15858D69CC098F343ECDC85E408A549BB12
          DB63023541E1DAB0D7BB85FDFA81071E60BFF77BBF67CB0F1154B0B01C3B768C
          BD75FCB831EB5003E1A5A51BBE2F38363EB92DDCA5F7B858C9DAC31690FBAC21
          5C0DD1125D84AC29FAC7911F4252BCF821020B34CAB8CD78558D87D0AF0009DA
          1904D682ED448031761CFA62677B6D2836D056C10FE1A8E4046895CA544141A9
          2E2FAF284E5497029C5E78E179B6B4BCECAE35FA6C07AE0C28C3E2622D0D6F04
          63CE0F313CACEEDEB5DBEC8C73E208F6D30FBA369C7221D611DCC4006010F5B8
          A527FB15E025A245C0394CFDC079255A71C2CBCBFEBCA75AF1C7241B1E19653D
          AE6272AF0B1C71B007F7A29A2F1009DE1268C4AAE01CA61BED54FD87AC013100
          BEDBC20F1154E26EBC123CDDB7D29503C64D34BE197B5E09EDF6F2FC10417A47
          D19D93487FC633DA5D1FE074EEDC39F5C73FF989924C4A4443F8056284AC11A8
          E537371DE39EF13D62821D637BAD75E47C374151F59035DBB040F4CD473EF211
          4E556947D0D38D70DA56BAF7E9D3A7D98F7EF84396C233369BC1401882098B8B
          8C8C8C45F6E13B5B38C00384554DF3C03E699F2A1F9FEBC90FA168D5915DAFA1
          6A766084E1F52C8DDA491B86E0D9F305797E88A052AFD7E956CD0E9487A6BAB4
          B4A4BA550DEE6CB4BF7B0B7BF3E2D25287EA24120BE08CDB6CF143C81648956F
          838165AD63B7C1F9212626D8F4F4B4B7092020180B05126068AD418745104E38
          64C6A10DBDA81D28161FCEB246EF21914C06076121C3C3232C99EA2E2325925B
          279A065667D58A093F5B2C6B126FD5931F025B3A9081BB6898E087404444B068
          7C1F12B3C9A4E31A50A9A8537DF67467C743ADAC935B2435A06451C38167C055
          7C741A67595B5961EB1B1BA60589A7D81E3DCA4E9E3A651392161E183BB1ACB5
          F821F648F043984FF4DD0CA191262DA590B003F9D4A73EC57EE5577E85FFDC2B
          A1FBA23AB3FAE28BDCEECE0372BA0261C8D0F0A8AB9D2592DB577811CDB64D58
          7C0D604502077790B9BC55577E08AD40679D3B6430E81D02FE3BF8217A388AB8
          D69E30F04A403BAE371B2C68485A10B116060530727E88B5B5C02169B24D1720
          B8B0B0402BAC4620025040E1D07F7EFE79DE2E7B5348B8406C2D0C0ACD777676
          9617EFF4E5080B602B16216B03069635280A580050B81371BD41B3F3640573E1
          07AFBCC2DE7BEF3D540AE91E8421B00FA3706304C47796F049D9E69230FEA923
          54CCE6CDBAF243C0FED7D00B6062D00DD8136D3BF243F46A2419B5610E080523
          3FC4F614AA1429B088E3053FC4A5CB97C271744B345F0B595B6319FA008CF0FB
          CB2FBFCCAED242E09D98217103894300B470D2E15FF403E787D813801FA2DDA9
          BE9A22B4611A977C7782F7F1F9CF7F1E25EC43B705DB09E6432E9B65DFFEF6B7
          151A7BDD83B0A877159926EE3CC1BBAA946D43141D9326F4B72BF821169965AC
          B73460683A86EF30D1348748EB2A52FC10BD184D70D2A12DD0800A1DCEB8CE3B
          2A9678D56EA55518942E097E88FC96374FAFB4783793030F1242F060A485737E
          087E7F69534877606C2C0C0AD9BD7B37ECB1E168A092F662B40136601AA7CA91
          234754F04384190DE1253C64EDE851F6E69B6F3643D1848544A6893B4B5C4018
          D2515E5E17E151B1E587E0BC1416B629111ED4D7D7728860B6EFA4BF087E08D7
          D9DFE568EA381D5A6F329EE095933BB3A184AF51E59854AF37E2040E716A7F45
          0F296236D7F33DE6717C7A35CDB3E30400DBC5CE06D70E9DFF040D3CBFB5C581
          183495565388CF2771FBA3E272880ACEE1E1A1216E8A68FA7D4EBB77219CC00E
          091ED63BE099419109671C69E2D04AB9E3B497F825AE2D9CA1DFFAE637C33147
          186570704837AEF7EC39C213052F42B355F6BA54774F9A8F6072EAE806B2DEE0
          FD4739151F80C093352AAE4E083B963520064C101DFC1042C371A22F1C181814
          4900B80642F074C453134C22142FE090C27563A27D0060FC9B49A7FB4BA572DC
          2D26185D59AFD7C6098869F7DABFAA9A50D25CE4D28F43499B8015F58D636F28
          E54A999B4898357616212AF118AF20EC4E64EEF0C496BF99DE06DD0B75E27EF2
          DA6BEAD1A347152BC18DEA72694146EDA3F71D93E4304E088415AEB8B95CC281
          A54D753D4AB5BF8EB1EDD55A957DF0831F649FF8F8276248EFC6224B3B361515
          9DED1FBD3B50C37B37DAA2F1DCE7CF9D0B1784857D279148DE59DA30F2BB13C9
          3B0788F5151F81EF883D15CE8C582CCE276D226107088AE5120A8F8AD0D3961D
          6EA4A6E84823CB9A88BB8733AE6ABD1E8A7682CCDB8D4C9C534CD2715A2EBFB8
          A4DC58513DBFB0FEB95D1A1EF7C5A42F158B202A1F5C5D5DDDA3FD8D66331DD8
          911CA67D974C26E3B3D45E85807883B4E67C9BDBD208558AAFB183851FF1A2A8
          5651C38225AE6240096EE6A336C7A0254B5493F0D377E80BBCA36B57AFB0F5F5
          0DE976B76FE96B6EDB566F0588C21C410B80E2563DD9DA766769EF603ABE76B8
          28DA30313EC19D71E2991035010DD969D7D36DBD40A3DD1DCF3C3539D90B101E
          F4C55874BB08D76638106F6721E26082B0B2BAEEF4328A7082A51C89AC958E6B
          D8499B8C9CCF1F63615068B00847CB1AAFA9E18FD2AAA82053D121ECD460FBBF
          ABD417295E061D2612D27E592693011FC03E9A6803CC600AB18B76A2C56C8ADA
          295497268138B4619B4416F9F1C24BDF64D6D8EBAFBFCE27E1E6D6964894313F
          94BEA391BEB24767584178797999E53737E87D950325A9F898DF7600CC63A645
          7AF6CCCC8CD4FD25E195C9BC0FA0EC206195C8A2D38158D5B3E63C1B1314DF8C
          F1C9B8EF81FDFB2310B64A2299BAED3462A3D901DAAF53ED2E6F10E61763CD46
          83B460F7B858C3F97A6150955457B54417802D580722B306A8D14096B88759F7
          F6E35CC40137590F12316C1E11F730D9AFE953A56D7D03E9C0285449FD3341ED
          9CB56B8FD194188B290304D453A68B37D50269C339660B00121E319D8F011491
          376FDEE4B1B1255A1C3A9C834133C324E61CF2960BC582BAB4B0D0027A68C381
          6294593030C27DF02E4424028A68C2362B7B2DF93B3AA727C31C333C34AC2BC4
          8A3A10A01452371887390C87E4E8C848B88EB9BB01846F2BD3848DD9C10B3865
          4018D7AB49126DEBD719A59F76D3668D00B8BE25345F2781268CB03738B4E8FC
          7DBA36193A2784D63EF3AFC6274553E8DE8BA4F5D72E5FBE8CF624E977EF880C
          9521B77F06E608EB9FEAF546869EA9E2DC01CEE31E5B5D38C3DE3CFEA6296E1A
          596A353B3B7A806404A7F37887E8D75F58986FA52F0BFEE47C7EABEB7A6C3222
          2A426F1AD297F12FB2D444C898F43D831E45B7E0D15C3A4E7150EEA21492DF73
          748E0CB667F76E3C6FA409DB49DB34716B81D8C9ECE0243D04611C38A628B175
          598D4F2B925805200FD0A0DBEB795217627854E30381C17285DA910383D8D616
          674783060C87A0DD82D0322A12388DD067CCA13FCA04C42E749DCE00086DF3B5
          9FBCC601484444B44069CB010443D48A01BA8848B87973D91897CC9F1BA601B0
          C86D07105B6BCF0194102E86B465DF51263E8FE49598537D6C88EE67BD57BF1E
          46D9ABE7360AAA750CF4F74720ECFA2CDA03DDBAFBAB1A21B89F49D12508F304
          2AD6594249357CFC39C6F588A1ADADAD697A9A11DDF564E33D09AFCF74C14C2A
          D1845A24C06BCECFCFC11946DAB8EA59B103911B24B3CC85BD8EC034DB6CAA45
          E6C32E092DF8FCB9F3FC93B010E4704E050261C73240DDB088B5AB0F73C27AF4
          8570061AEF8FDD0B8A8386F31E9C17A29285D2D278CED4D454706D54EE28FEEE
          474746DB75E70C365A38B5839442F27A6EA360C1999C9C64B33333ACD90D818F
          5B23EE1A10A6F687C525BA0D021ACA18B579CB02C298EDE69462774D18E0F330
          33DB4B55D6853D17F6369AFCB17C3E8FB694E3F158371598A56EA90FBD45BA77
          1129C134F15121620F3D8A57C50E95DA37411ABF2B89BE96F4D658955BA5799A
          AC92DFCCABAFBDF61A4EEC20AFE18E2AD2923736254030A0668C3038D4AD5BCB
          AEB513438C5B084EAEC3EDB4A15179AA96EB63272032E5AC638F93B9F7F77120
          EE9648DEAD3DB0FD0E18087CACFD0A272E423DBB55C0ECF04FD8A2F7EDDFCFAB
          6D04A6B2F4BAF1DD02C2905E1B23D0478DEE815E10B283A0748EFABEA98330EC
          B0A8D0FC1EB3293704AD4BEDBC37B4BFA798161B1C9A080DA85AADAC12185659
          6FBB1608B34140B38C093F3FBF00AD47A461AB0EB38B87DE513BFBE8BC6999F6
          D12E659314CB4D87634DF7C016F7CDE3C7911C015BB3ADB6CBCB00158AAC28E2
          861D84A73B6BC42FCE37B48816975CE2F66891E16AB860EBFE3011401B0E73EE
          AA86EB4303762B1B8F63C727C6190F596B049F17AAC377202D1A1D19716B2CEF
          AB3E38E9427C7621586876ECD8C126C6C785821781B0976C8745B8A1E7CF7721
          0260D05C805C36A56DA91ED6BFBF469FB98EFB9256E210A206003EDCEDE35B27
          3BFDBE50286C01808356EF901101A6F3B4C854171616A1D9B9D4D033F77B2201
          005664F7A308594B432BB67C8F9D6EEB1AD03A73B975F5D4C993ADCE407A6E53
          5B01DB756E48FBC4C4DCDA2AA0C69A0EB236600D4ACA42813632D50E4E4CB714
          5D146FA0DD8873CD38FD7DF18520645E653B679C764BFB10CBE9996933E76F18
          4983742D80BB4C462F9C7449C90AD352EDD077D50383836CFFDEBDC6678F40D8
          4BEE001036329EE1220D9A65D769A00DD160175539784D39FA9852E370304C12
          2AD2763BB5AA47E89F9D419E5F68BD00797880F5672BD2BFEF90260400DEADAB
          5F3DA185A04F9A806F0DDCBC994C56D580D5AB62878A90B4213A6F42FB4DEE66
          34B18AF57A33AB28A6305F25998C4F533FA404E0CCCDCDB172A9C8936954DDB2
          6EF7CE71384FFBAE545B44ECC651A8DB6E1BE7CF9F5FE520ECC0D56C8D090691
          FA12CD7329472C8DC76E42D69C0400EC143F6EEC0B8015C2D54646476C4C06C1
          EE8DF04ED0A91AC6A3AB08AE136E970909C8701990140D1B1253227384846C07
          0873E40C5ECDD5984801C14E35D7D7DF8F74E349C371BCA69CE9D9F4EDA78333
          0860F9B4C2985C6544E3F3D07BDFD858E7CF343E3E21C6C2051A782BA461196A
          D9A9616BC3BCCE1D81CE0269BF8D2B5750549A2F4EC68C3FC773E3F11842D212
          E6B46FEF987D7ACE0C29B6C69035A445F711F8CF400BCEE6726CF9C60D47AF7B
          475EA3CE2F6CF447A87A424C2C962040BFBEBEB4B404DBBFD5B3D57971BD46DA
          E2C23C2B4BF2252B7A3DB86E43D64CD72B97E19C75B5351B9318D057533353A4
          8D5A326FBB8094E19111D861A540B5CD75D2178A5F08D7004DE7AE9D3BADD78B
          A223BC64BB02D4026AC37600837F87527D7D1396498F377F9A5968278557DC41
          4339409F437EFA41D8FD9035C71B98EA43D8D11A3DDB3902FCA6CE9A65A96517
          CA3869D5B9A37BE551C6074E26EA039863469987330EE168A4098FB4BBD0EEF2
          0E27AB6A05406CDD5993363C49E03C78FDDA35D70C42BBBB814C0C1CCF46C1FB
          DC2A14AB172E5C4877D875DB8D31FD8A4520B39661E9D555D32220A10BF2EAC8
          55C9304637D1166579CD5A6CDD07870679148123084A0E1B415BE940A5EA2A03
          8690B56E32E4608BDEBF7F7F07913C8BCC11DEB25D20CC1D74B28A61BB5B0130
          88656D18FE84113343032761136A834CAF33CC4A4D0926357B0E5518C59E611A
          687AF647DBB1B36EFA8E6E77361E4F64E271D300B42106EA6ABCF03A77F4DC4B
          B95C4E852D98C620221CF6785C1C5A6B0A5A3033D967ED269DF3D3379BED9035
          A1D0110026D632E9D94C261393A1A934DF4DE1C9399CEE92894C3BC62E5EBA9C
          C9667365445BB85F4C6D2DB00849730240371B320078637DA32B10D6176515D1
          297E432D21935393EE216B1269EB004068C101B2E178314E2B780749CC98999E
          E6511F360B4A04C25EB29DA91AA8F0E0438668005A01063D0E50E61A1DB65336
          93FF3CB3294584C9EA601201583E22D32F5A2AEAA6B54C50B1D1A82FD3EF3714
          25D6C4B8D059EB1CCC0481C64CABCE1DDDA78CCC389DA41DCEB80128562EE722
          24CDC80F61781EA709676BD3AC51FFA5C50300243399B5C695CB97C7A6A7A746
          65B7B4D6BBA12F452588B5B5B5E2E5CB57B2F0FAC9F41288EB9194B1BE9E734D
          40700362D8712BE560659F445C3292431C3577B7BED04D020062DF1D67B80692
          324012D40C0848A22A4C102016CFB07FDF3EDBE2A22C02616FD94E1086F3A029
          A70D6346613B4F4B343332ED807FAFA5D1F1509B4E6D18F68093CC123B2CEC90
          361A13EE8548898EEC316BB07FDBFBDDFA1AA82E8009C09F53784A784A1C037B
          361C66360FED6BECF03A7774EDD595951596CD66D19E8E8A1D76FE2B802F40D8
          FDF28E3065FA8D8076833EA83ACD8B75BEF1C61BEACACD95F8C30F3F3443DBD0
          849FF9A0B2F6CE020B245DB779E1C27BABA4513664CC0A5AE5E0025B5C5C608A
          E428B6B34D37EA0D26403488A08C5137B5FBD4A6CAC626C6383DAEEA35373AC2
          7E757E88E161D7E774BDA44D2924EBDFDDC4C00FE164568940D84BB63B6999DB
          86BD8709B6F1D050358011FE0C0DD44CA325C9692D3B426D1C43D63A6D80DCD4
          4AF76B2276D8569DE26A28DD7D7373C3CA230CBB048AB70124EBFA3DEB18D4BA
          36AC1303D9858E09F1EC0B5EE70E216904507590F4C4B58B1F600EFC10C6FC01
          CD19A7383A1FCD4E3A4F306E521FAED2FD1B8B8B8BEA5B6FBE09926075727272
          70CF9EDD93C11C3C0AABD551136E7163616121DFE18C63F6E089362F1AF821FC
          886AB916ECF8C582BF903568C1E0E7DDB4296FEFAB2D7AC8DAD43442D62479B2
          DB2125EA0801B0131F851F74124C6B4EF7B7FB1ED970747F55946D7238370261
          2FB90D411800836D3C80C3A80563DBDDA1D109FE52CB44B40D5983C019D468D8
          9104A98FD0D576DAF6914E5F5934A7A2221E38C3DA63DD54951904497A9BA061
          EF64AEA9CCAEFDC1EBDC11F0AD231101939EAEEBC60FA15D9173052B2304C263
          CC97780271A15C2E678FBE7E3466E4873870F0C0F4D0D0505FD367140CCEDF2A
          146A274F9E4A23B6D895BCC9704E2E97D3F821826AA0E2A9F4E88AF5DCBAAF28
          016D51DE7424F7F7D516BAEF08699223AD22A0123495A441631768C70F61F79C
          5E620859737D66ABC00C81F34C912E9163CE9F6C370803803D32E8EC0006CE20
          98216C353ABC0B68C416B10D59036190C3F69187ACD151C9CE731ADC1907738A
          01EA417053327461CB6E0B021C444DA06A047085B542D6BC12383AC693E08758
          208D4FBD7E7D0E660EDA09287B054780D395C00F41E7A1CF3C3D66F6954AEC2F
          9D4CA6D4B367CFA6CF9E395B4515637C07BB2881481F01F18C6A29BDE32558A8
          16176FAC5D9F9B439CB5A74A2BD29FE7E6AE9B0130A8679F8990B532A79E940D
          71A35D0908DB7D39E3DC2FA9A8531ACB9AC4CE84C7F3A9A3C323DC292783435E
          4770D38624AF84C8829D9A98E0D9714E8B5794AC2129B78243ADA1369CE60C4C
          0D56021A74331C71AE1A1D068FA542836DC81AA4AED3665ABA0127B642D6DA5F
          63BBBAC553620D05278AF463D6A6FB00225BD4E025026115634477065A42D6BC
          A43578218B74BD2242D2F2F92D9D1FC2589CD4FE7274DCA49D33CE4E046DA7FD
          7836732360C29D3D7BAE7AEDEA35E32E001970EABEFDFB26C7C7C707793AAEC4
          DCE02169F9ADF2DCFCFC5AB5566379EC34F82D9DCF05E8ACA457411AAFC4E236
          99715D80316759ABBA93F50B671C8E0D3BF5191AE5B82DCB5A67D61D18D9FAFB
          0CFC10DDF314F33980367895B112261468C1123818C5097BC9AD006187703534
          65376B13A4F34319E78B60EE1A1D34541A38B2216B904AA56CF7FEA00523648D
          83971602553739E3F49A303039D41CBA0FC92437FAFAFA4B8A121B54D5665ED7
          14EC6AD9B9F5528B1F02A4342B2BAB981C227DDB353559D14AA78C301F75959C
          EBF6B52F8188882B972FC7D6B25996CBE636493BAF0B33109EB17FA03F71E8D0
          A119FDFEAD77E3F690A4DDA749A3AC72022002E1D62EC581A6124911F30BF3EE
          BCD3C148D8B98D77DD23640D7F83338E57DA0E990616FD3F39358568059BAACC
          BA6384FE978825B8F9C2F69D75A1150B70F58A37E6FC10B3B39C9653C2841369
          C25E72ABD8844973B20E06800640D8C46E465D8C288021AFEBE15A7D92216B1A
          B8569D120C4C216B0849D38E6BE14A9ECED870290F03A6B7024DA4643C9E98A6
          9F4FD2A74E8315216B70D2B992AD8B26329D1FA2D1A857911907F278E6CFC9E7
          92B9E5DA8DB6CF857EA5C5403D76F498C259D362F18EA00468883B77ED1C9D99
          99E90C59B3DC1480BAB696DD5ABAB1B44E1AADD28AC1CEE71DCFC3317C47B095
          9773C6F99C9FB83EC87D9CA21DD048542BDE9461820B2022DC0B6609A75D09BE
          47B50C577E882EB462A1913BC57DAB7CB11D60FBF64AD3674720EC25B70A842D
          DAB01DC0705CD5B560B967A189036DD8328190608090350B930F80B862E75841
          298627E99B09683B304518FE5E27E4491BDA683706405293A4F131DBDF3F80AD
          D815FA6E41374B5853B09D040893A1FBAE21246D6D6D0DA0237B2E93016317FA
          5EDB7A6900D863478FF2D2F14600444CAFE81F3DDC493974FFA1D9BE545FC256
          4BD2E369C193498BCB6ABD566F2AB176F50994412AD96899B82732DC6E2CDDF0
          170DE1638E6ADA70AD899035C5A610A306D21B52F505830AFA706C7C9C9B1BEC
          C87FFCF0430405636BC564E3FD21006010054952114420EC25B709083B01CC34
          8A04F8B96E3299E0910916E90859D380A0C64B82C70CBB670007A1E83821CD53
          9B9B1B314B5C718E40B860ED360BA7AC5AA99427683739343636CE745ACB77E8
          BA153ACE4846E4B48F6BF143E4F3F9C6F5EBD731D664F921ACBD8CF6C01EED9D
          CE6668BFAEE5B738961111B7BCB4C4CE9F3F6FD290005AB450554BA5524DF411
          C07A6A6A6A68F79EDD134E5B5544342C2FDF5C4FA7D35BC6CCB856A402699A26
          73836E9E989FBB2ECD0FD1D915DEDD86C29CBB76EDEE0339D3C58B172B288C69
          6C1B346459E75D503186ACD9DD470F4993C79E00402CD2A0ADA19F1A57CA38DB
          BD6B9791A0C7EBD211087BC9AD2C6E042F77A3D948D144B46ED3792210FD3BE1
          FB79ECB56187903595DBF72CE1354AA95854E389F8E334298D5A789900D8A5E4
          8F1616D66C36FAABD5CA14AE83813C34C499B26ED09F2FE99A83835DB725005A
          64E06D2202408F83DD050589F9AF618790AF51525647FDF49F7801E277B47B8E
          16036B681F8EB976EDDA2AB5B16A0D133878E8E03469737D562086D65B2A96AA
          D7AF5D4FDBB3AC29CC5A1814F6FE6C26C3565757B4AC2C9F9D607C41CE7FD2FE
          F64BBFF431D8B495679F7D76151AAF9157C10F3F4437C23DD1085943028481F4
          07E36930003F84D7B39B0ED3FEE9280C2A923AC00F91EAE487706B5304C25EB2
          0D201C630E0E225E5DB9D998A5170D80319A21E2BA192210E1692211472895F5
          EB9B4C237F6F3F3B2A31ACDCECD85ED27B0545E3216AF50EBDFDA41A2A880670
          297EA909698633AADA6CDD7C74740C9A39324A4FD16793263106B825C2C1D457
          D00E97D6D737D4A5A505A657C0D8D36E5A80171053002C29D9E38D0E1F80104C
          229974C6A405E367D26437E96F9B3CCDD8D03068C3A3A3A37DFBF6EF3393C72B
          3CB64A9D9F9B5F238DB2AC97DFB17D28511814F747E4C4C2DC1C0F2F34BD27FF
          5D217AB1E379E1947BE08107868E1C799A13431D3F7E3CF7F6DB6F15FAFAFAF9
          FBD7489B4A3D0760639BF4C2A03C1C0C6D1A33F043F46221324AD3C0B2260887
          666666D8B43D3F84E1F251DAB26FD98621858880FB991570142DE38626589FA5
          191C84992C00A36069AC73B7DDD797E2DCB606C1FDDFA5CF46FB5485A549BBB2
          B1F1F1280D526CE12CC4A740E081480B4773003407BACE307DC6C5630847CBC8
          082F750E2DFA2CBCDE8830629D216B62A15AA41F4B20A529160BB0BF727E08D1
          7F01861C4F5D26BC9BF27392E80F6CC1E7AECF99CC031C18ABD53A69C16902DC
          A6557BE69D4DCFB977DFDE09DABE0E89491B8BC74098535C985FC80A006E35D2
          E280436623A225702FCE0F91CB495365FAEB1D0D60607A202D7896B4779E7E4D
          8B69FDB9E79E5B05390F7E879D783B056D82DD15DB7F80F0100F49EB3365C6F5
          1A88798694CE394CFDA31E202D382611971C256B04901E0331901029C11D71BE
          95AACE29DB8576017BA59D76E2C02B610A597300616394468CA6E8A4C278CDB8
          3A7311241A10602159C1B07868E3038E14246FD0DF78A446BD0E40EB0859E319
          77D4EE55D81DB5C29D7124ADEC600EA60B3F540D3A08F7C98E59F407B45D024C
          D24A374D0B1DFAF6C6D28D6C2E9B2B1AC1B44536CC342F7AAAAF2F7EE8BE43B3
          7164AD30AE2137AF5FBDB65AAE541AC677E6548902A6984C768D2DDD586432A3
          B49313CEE11C415CA431D52BB54AA5F9D4E123A30F3FFCF0684DAFC482C4850B
          17CE6FFEF8C73FD92440568CE9EE2DB21E794E665F87E937E1ED9B9A9CE40C69
          204AB73E6BAB74B6CF4BEBCFA0780D20DD3EADA21E1D78824144EFA6051B4D52
          6237A5BFCF6604C21EB24DDAB0899BA1DED0885BCC0DF1D71252139B040EA612
          3A46C1EAADD12CB4DE13EE0F93040F59039858CC1176511A9EB1B6D08269928E
          4313B65B10006618C04CE3993845031980CE9D6D8624BC163F040018A04EBF03
          38131EF787E9C6ABE3403B991A18E8DFCB249D745A08D91A5B5C5CE429B2A217
          A0CD16B60AE5F9F98535B7D7850637EA7575C7CE1D2333B33363F82293CE6CDE
          BC7973D38EA6B2ADDEB57EE2B1B257AF5DE5CE309E4020D370FD62AA4E16E504
          C4E25ACD46431D1B1B4BFEC22FFC02E85163465B389692975EFADEEAB9F3E7EB
          A9645231B6118B8CAA2896AB79B7CB8FC0AC03456266664691216B97BD3CDE6D
          AB04940786616EEC3F70803DF6E8A38AA01D751085E6B4DA6C98E39BA3CA1A92
          B24DCE395E4E083F707EDF6AC5BEFFE48118657D328A12B31D19826E36994C81
          77C108A8381ED1073C3B2A9359356EB5A179226D5ADA0186059F14BC14B460A7
          AE14194E7A10FC15FA66418FC5175121F86585DAB08EE41038E4603B962D3BE3
          04C27A0507157C19B02FEEDBB7EF015A2C3C033C0178D0424F9E3A858C36AD58
          6A2B5041510998338562A912B79A1498C5B6A26A053B0F1E3C803E55AE5F9F5B
          B1E387E01A93B5ED9CF47C48AD90168AD860803F50D08580A3A353F87B6D35DC
          F267FD18DAEAAB4F3DF9E4D4F4D4D440DD50060B6D0200EEDEB5ABF8B77FFBB7
          D97426A31853E365D3BCFD1E626C1B1E179C25BC6207535C4FF7338735EE666F
          B650382181735FF9CA57D8DEBD7B95AA0D27B7F1CDE1789B311B81B08C6C1308
          EBE5849464B55E651EABAA271813B8E413F1C43A0D02A3A1902739181E8993DF
          1010AFEBABBFBE958CB17AAD4A9A5EC6E8EDC60C4318984C3285490880A70888
          FBDD12B8A0FC411BA67B63242381A38C9035BAF70164C29206BC4020DD84071E
          DA67B154E2F48072951AECBA4FE15E6CD242C15F91A405AB4E633649DF7F80EE
          EB1AF60710BE70E1022F1F8F9E2C95CA1CCCD07F1B1BEB85E5E59B39AB4DD7D4
          1EC3CFD42FEAE4C4F8906E572D28365594AD02AB39168FA9C909BA6D8C5DBA78
          89D356C6943610C9BCA00E8A26FD242DB4594111587576C78E81471F7D74CABA
          CD861D1636D0279F7C927DE31BDF48FFC3D7BE56191E1E56DCE7BCAFE841F7B6
          93A0542A7623865876E90C48CFDB8B642387AB0976B94F7DEA53EAE73FFF791E
          455477AD9E624AB5B74A648EF0926D0C533B4083FD50A55A913FC3EEA52BAC41
          00BC8A71AA1DA2A00EDA205D7B80DE4BD6F268D06A17E853856902DA0CBCEC6B
          998C35DCC8675AB170C6D50749BB9C347FDF79AC083182B305DC12F4D5454C7C
          6AC3487E6BAB4163AAB89ECBB21FFDE8C79AA6428007A70C27681133C53691B5
          53F05CF0643FF2F0433CD36E7C7CE270BD5EBB9ACD66D74923DF456D78D81868
          6FA421D4C9D5794CB0AE31F19031F0EED2B51AF30B0B6914E294193396D85398
          44E2C374F34DD465B23B5E0B838A533F8DF4515FF5A5B066C478644226936E81
          B7A6152AAD7E3151533AB404F76FF212CF28C8992FD03B6BC056FDCC91233343
          C3C349AEC5E9478BAAC14F1F39C2B5613AB6F2677FFEE71990E9C3D12A27DD69
          C65A0181BC7C76603762D30E003F764F7FF5577F85DA710A162CD8C53D9D729D
          178B346119E91508374DFDC3DD07497A991FA0B9D0EFAF8196ECA9786C3D1E8B
          6F199B4E830629C27D34B1A0A519132AA0D9C221B7A25D4A2B8983EC2BC3E0F6
          49B0D36E19698970C675648738297B88FDA485001105A772B9F5CDA3478F22DD
          7A68AB58C476AF299C3EDCA6DAB0D01A5A63335D1A86677BE081079A23C343BB
          76EFDE7D802674EEE8D1631709D8D50F7EF0E79EA0F13B2CB4BFB8817703F73F
          73E60C8F89152169A23CD46A3ABD9E59CB6EB5CC103EBCEC206DA79DC0284DE8
          B14C26B3562A164B76DA342E393E363A393C3A32C04D369A4985A78F97CB1586
          57C67D563AB992669EF0A2A5D107029D4C1A75E5E6CD9B1964C61D3A7870E4FE
          FBEE1BAF378CB4D55AFCFAA30F3FCC76EDDAC5173400F24F5F7F3DF7777FF777
          05EA271F0933C10E1329DC580CB95D7B9BC2E25A6BBD161DC2BEF0852FB04F7E
          F293DC348566C17EDEE1C771BC54DBB6CF2210F696905E31B44868387C447310
          E92C673444DBBC079BF5FA78B08672CDAC4A7D9F36341DF3BB9F26CBB4FE5D23
          914CA4E9C886E1183DF48B950408E7DB64DC3EA8260D2D212D9C3483916AB53E
          E636478C7F13216B88962060C992067CE6CCE933ECFADCF519D2F8A614CD39D7
          3EDEEE8276E5336C0FC33450E3BB77EE9C05DD18E02A97CBADADAF6FE4090787
          A7A7A7A645FCE7C30438D07AB0DD5FBC71835DBE7245036043AC308160F5CA95
          6B19D5EE769EDA114315E0F8D4F4F42C9C5FD4FF5502E28C6DCE37C9F8C44492
          14E619416DC90DF9044A286364D3C3CE7D65D394E5E5E574B150A8D2F513A4E9
          CED0588A5B629C3931CD134F3C617CD92C9E48D4FFEE3FFC87F4B163C79A4E55
          28DC7B40FE10DC2F47CFDA0B92202FC1E2867A798F3FFE98FAA77FFAA7FC3B23
          97508DB4615FBCCB2C72CC494908AF19F1334F332DF200490D76200C2F3F220F
          52A40D23A34C3A79C028341932348F61CF88A99AF702A68869A39D538929A544
          9C9B2584AA8B7FA11D2FEAE0C9B6DAE9A7089D43069B1F3304DFE693163CCB1C
          AA71D89FA78D1F80B09ED577AE582AA55F7FFD689C30E940DC522954880C1877
          B88968F73D313931394883554409D4EB8D3A6DEBD30D52F5A64892C9C400AAFD
          3EFEF8E35A6C2E69BB274F9FE6FF1AB7C05A285F3AB3B4B45466FA70F1454841
          42C03641E035D4D4355BD2B4D7B7F41AF1E23C61B221751936E1517CC435629C
          BD2CCFB5327B60720763BD9E5C9EFA19E44BECD1471E99D8B563C750DD6296C1
          71B003F3F85CC3DFF0BE2E5FBE9CFFB77FFEE71BB57A1D64CDB2AFDDEB4D76B4
          13DCC600E1ED0660D107A022FDCA9F7E853D45FD604C5041EFA88DA65AF5634E
          0495258BA82C3D258457FD28D3E259412F8584084D1BEE24E9015823FB0C86D1
          87FDDE9A5E669AC6C13CCE43DC2A0095807E92FE709FE9384CA698023B70C640
          148E7B6D2AB1587D737D5D383B64B81C6C9B52A9542709D406FDCC1301C2C8E8
          43020781CC168139E1DEE9C6C54B97C7E96F3BE1A493D5769D8E43040281599F
          AEED9A6237F3A4D29236BCD197EAEB9B99999A3D7CF8305F14F0B72BA4012F2C
          2E9A38036031A08958CAAEE5D608001538681CB3B6EC4BE0F0B610E6CFB4E60B
          1631423802C455D0CB090E615C175AA83EB7628964B29535D9AE809175491DB6
          6F979E7ADDA04564B552A96001EA7BF28927405566CDF4E3F5D21E7AE8215B72
          9AC1C1C1E67FFA877F487FE7B9E76AD46731D9E8158937691298217A4912E426
          58E47EF9631F637FF0A53FE00550ED04514592E43D90481396912E5F359C524F
          1A2E73913EAD0EB75256C698221C3E00E15D3EEE536B349BEF80334633252A22
          201C453A4D1C139AE34685E67B4A3BAF3D60B0B2974B25F1D898E4081393AB29
          A39B2108C0FBCAE5CA141389B83E3B10051D878606F9382220BE421ADAC2CBDF
          FF7EAC5AADED256DB8951D17148CF1DBD4D4E434696F1DC91920D84E933A5C2A
          966B8F3FF6E8E833CF3C3D86090527D0E93367DA8908ED339A99CC5ABA5A4538
          8BCA72D96C07F39C6B9BE89F295A0C5260B93766C581D09D649D44A43D238C6F
          A4CD10066D7810092BADB037AE2596B87DD81DA0CC600CCD9B009F94CB5C2196
          4828879F7C729A34DDBE1690E871BFC9548A1DD19D7176731B4E5DBA4EF1FFF8
          933FC99226AFC41381B2EA1D7B2DA6F509EBB66E5D504158E4D0D090FA977FF1
          177C3172B0FFF2D0492780B63B9E4520EC2D5DBC6E6892004123410CB6ACA08E
          6CBD2568C36272C71593330C268CA4E4BDAED267DEA285C11CF098CB396DBE08
          3A0D35E230C8F5AD36EE8B4540DAD1229E8106E76E52F05AE68F20052EB190C0
          490796359ADC27DE3D7DBA7CE6CCB921BAFC1EFD1955C38D3BDBD2D938BD2DAA
          3A3C3C343431313E6157460AF72D144AC5A51B4B379F3CFC64E6831FF8C093F4
          3C0388864015E758DC9C19473BF83C01CE86A0AC849D124E3BBB31636D13B460
          44438C8D8D4D38CC1535B3B69626ED94974A9A181FEF001F9A67D3F45D9FB83E
          FE0E6D584E53D416EA32DD6079793943E734F7EEDD3BF4F0430F4D5A35B9062D
          2CF73FF000AF16E1163E8985E2DBCF3E9BFEC77FFCC7CAC0C040AB01C190C09C
          AA8D3671675CA082A9DD4B89B4E0FFEDB77E8BFD2F9FFDAC70C6398A569DA62E
          65616111087B4B17208CF4DE876CBE8729E08AF10B11906F29CC7850FF780922
          2100EC46031E027F8F30F3026015DCF22CD3EAC1710D145A869E82EA482CD471
          119D5E903E7002EEA2531FB6FEDD577FEB299D22042C1E8F2D917677F1ADB74E
          B0D5F4EA2E9DD0C88C121240AC2767C466A6A767128978C22E0902C243B00606
          CE4F4E4CAE1E3C7860772E977B0871C1A650280D14EAABAB9974B3D9E6878080
          4781FA905B579CDAC4094040823C39D96A8B75A4E9A05E22E059431814ECC196
          BE4462471F80B8753216C16A85E99CBF527DBD72732593DFDA2AF7F5F7C7E18C
          A3FB98B88EF1334C32879F7ACA931B8127F9D46A3C640DE69B565489AF11D0D9
          6BDC66BDB1A9C2E4A345C76C1FB6E8EF413970E0A0FAEFFEEA2FB9C62FB31020
          62464B7FF6CC238940584602003146DF33FABF56812A01D02C785C03DA28B4E1
          418FE300A419CB7730253C2E610B6891BA6BC430F2135888E6301AC0844BD260
          7DC65ABB2DE8D6D1307E9AC964E2E4D2D272FEF89B6FF6D144DC17D310512A12
          41585AB1428C8F8D8E11A08CA80EC741DB22C0633FFFC10F6672B9ECD9774F9F
          418DF90FD0F703563E87DCFA4696760E667E885619A075D7363510E5303A3A36
          343468694B675F150A85B5545F5FC9E8A433369BE6DA04FDA94D9EC0016B83D7
          FD738BA145B3F3F9AD623A9DC9E2B91F78F0C1B17D7BF78E58B56000CEE38F3D
          C62344646C9D888E387AEC180F598306DF9101E86710B03661114C3D9DEF4C8A
          AFB76B2002A07EF9CB5F66BFF8918FF0240D99318DBE32992CEC5B1181B0AC04
          809107599B62D14E1046764EE23AA672423692D1AF63362D3366D682DD070DC2
          D32E6B87714713B72B8ADFBD6A8AE15DEB330D5ABFC18E1D9EDD8EC064239FCF
          BF7BEEDCB9E6B5EBD7A7E3F138B43F6744B08C3D0418A70811A6A6266745C3EC
          9E0BD109888600310C01ECB91FFEE8C7559A4C076667A6278DF495B4D894D7D6
          B26B76235C241274442AB4A31CD4642A959A9A9C704CE56E2BB60A342F10C3A7
          4D242066E08E93363D6BAC5D070040D97BD5218E56DFDE3797976FC21957A785
          27F5E4534FCDC434D67A66BCCEECCC0C7BF4D147A5CD003C1B3195AAFFFBAF7E
          75F58D37DE506DAB60F87CFF7896AA0B617D2F3563CC870F7DE843EABFF9E37F
          83F24DFAB3C8DDAFAA85AC9917020B53288B40584E7CC209C00F20E816A783CE
          016359D6E35AB835C87DEC08DC0142D062B72CDF2312E3D1CE2BB966D2A2F272
          4E3B0C0E10AD96980EB02EBDD17AC73096C2FCD2CF5AA9CDA181B0A255E4A8CC
          5FB870A174E1BDF7087412DE511BAAD16CCCC3C0A6FAFBFB06ACB490ADCE04E0
          CCCEB2471E7E98F7158170E9951FBC0A5B29CC06930303FDE25C95003843385C
          6971FE9A1BDB02419D1FD964BF6EB7A57F40E3E5707E70F03E23769A8060BD52
          AD6E99D4CA16A8431B46C85ADC14B206AA4B705BA089D67B6021C966731BD96C
          368F4B3EF1C41388CA1BB0660AE2B823870FF34C463FB6589821DEBF7831FF67
          7FF667EB48066C11E2185F8FDC8BE720B821B13BEB05100340C194F6177FF117
          ECFEFBEE57680C1AB38364CEE7406CD3D8D623B20884E5C507211FA22126258E
          3585ACB90892370EDB3401E168572DDF0100B1008C38B7D0F6495A76656DE017
          69F0D41C0EF52425F3D56B00193D45D975CC2041E2F8F1E33C542C99488C35B5
          5D822732A8CDA63A4080373E313EE5767D8C59C4C0EAA9D3887B65972E5DDADC
          DA2A6EF4F5F7F54D4E4CCCC4E3318534DC422EB79EB3237930462A4013B696FB
          415BFA69BF4E9AE794B948A7DD6B52785C30789F9BCD46A35028AE36D5CE32DC
          FA750016B3D89818493369B13085ACE11FDD795A232D384DDA656376C78EC1C7
          1E7BAC831F028EA503070EB0FB0F1D6275F990AB9650DB9B5FFBDAD7569FFBE7
          7FAE539F4A716958BB000B5656E387302F666EEF3B4430C63BFCF4FFFC69F573
          9FFB9C522A951C8EF2665AB3A9D5284E8D40D88FC8408FE21D9160954BF4B921
          715C8B654D178C0880A675998539E06189EBE90F657A2A0EEA6D10AE3A681FE1
          68B822B6F5ADB7DFE65BDE83070F7240B6D31CC4B12FBEF822D78C740D9467F2
          A92E40ACC544C79469CD0196741A9300AA83043620A5812012E2FCF90B3CA923
          9B5DA32D7BB586880AC2F2C17426B362246B77B243E35ED086C504D4354B6592
          B725A1B5A5A38A45FB7C54C71631C9BA5D74AB542AAF3BA011B83D076991682D
          FE319E865C661B9B1B26872FBE4F67D26B9B9BF922AD2D09D274670687863A9C
          71D066A105A30D1D65983AC78EB5E3592299443443E94FFEF42BE056EEA8C966
          D767D6778EA4212C6441F821BA0563024F857646EA5FFFBBBFE68E496F7BB8F3
          FD74279DDD9F2210D63B014E0D38C90237581F8E186570C67939D28C8250B577
          5827985A05CEAE0FB076450D8496DDB41C032D188EBC617F8D6F4D268CB2D334
          F837741016A58692E6BE31F1946376D6A5EF656C2C210632C35EFADEF7F2A4E8
          B1C9A9299E08A001A1D98C2640F8F9E79FE761603A6F438BD34275787784A1EA
          F0F008C9F0981DE841705DD82D9F7AEA298D97978E3977F61C81D7261FC79AE6
          9BCBA660542629164BA50E20B4AB0747804B0B86CA43D6341056E114A4CF9869
          6ED89C8B8495FEFEBE8E1067D286D3D4575527AEC5443CD60A59132168DC9EAA
          2FA8DA025B2EADACAE64F5D8E338CC10D0D005513AAE0B46B08F7CE423EA7D87
          0EA1BA4BC7B2AB78390BB4E75248E9579F7FE185ADFFFCFFFC67DA8D78A7331B
          76129C140721699DB1D9F2A2A705079AD7D082BFF8C52FB24F7EE2930A2A88C8
          B5C1FE56AD90B54E89409869DB76980F1061B019F422FA9B3E48FF1C0C305C3A
          42D61CE4007D0ED107AEF77759E71BF772E2793C046F393791341BF5C696E605
          3EA4DFD7E689BB13F0186F6D6D9DF8C96BAF35363737911C56C398F997FFF25F
          B0BD7BF6B606ADA0B08026F23669CDA0B2C4DF74FE5A68FEAD90352B33198DC3
          04C2C06271256EE64B323B9FE07802B31A26DA8D163F44423CA59ACDE5B80D58
          311448701CDD9671BFCE2315CA686F7C72726256519CEA10B5CF8319422FB861
          7A3DF4DC25D26ED78C2FC008E7A4F1F6D179AD90354D83AE7120D6898FD49B2B
          2B3043F01596676D361AA60683FF60DFBE7DEA673FFB59058B523771B98AC628
          A47CF56FBF0AD30EEBEFEB97C205B17884C10F114423C67DE1A0FDB79C1F4209
          D807269F04736059EB0D08235C29994CDE09208C0E789C3E18B4883238DBC5B5
          043F44425CD887004090BD96F7380EA803DB30003B67AE72C0B5E067F4767427
          AA7A8DB67F7315D2804823E6DA35DDC345BBF63F497445EAEAF137DF9CBF7EFD
          FA21FAB940037D159972FFE32FFF3213597F86E7E30273453A9DE613FADAB5EB
          D8F2A2EEFA7E6BC89A6E0E50C7C7C7382783A31982C09C34410EC22214EADDD3
          A7F9F6516C81630A6AC6D52A6BD9B58C23FF43671FB6DA0E9BE05A36AB8E8F8D
          4DF60FF40FDAC504B74F5361EF3651421A3188DB9A4BA5B55AB556B2DAA4450E
          1E81F044CC10B286C33636B4F86FDADAE7336B6B1B4E7CC77A1AB7FAD9CF7C06
          44E54C9615CC49746D5B79E7C43BEADFFFFDDFB71DBD580D9A3C7DBEE31C1E7D
          522AB16C2E5C7E0803A7AF273061610659FB91C38715DAF9740164ED7100C5C1
          A63FC30761D189D086EF0001F80A3A2853E2420011FC102DF1397CEC42CDEC04
          D107305D34C542C7F9101A8D9DF473702DD8D86EBE13AC9D228D690B7395EE33
          4313E9314163E070969FEB43D3A01D5EE19DB7DE7E7B6C7D7D7D07695C8487F5
          F99999E9CAC77EE997100AA4B69D49E66B27930990EDB0F7DFBFC8969697A1A5
          4C6F6EE6A7A9A90DD110DA5D37FBFB537D131313D34E611A020A9F7CE2099E9D
          87FB5CBD7A9533A5192B274360535DDFD8CC529BB5B86099902B43CD49027564
          494F63ED313BC63BFB065A70E7F6BF7D066D19AA040C69DEFECE76807B84B02E
          D6224FD24C390DB6BA9A692C2F2FAFC29EED64CFC5E203B3CC273FF1097BAF7E
          00D1C3ECD87FFC8FFF17FBD9F1E3A2820A4BD1FA59AD565443645D4B747E0869
          679CACC868C52818F0CB1FFB98FABF7FE94B0A34E2D6B95DB5443BD92664ED1E
          0661149C5414441118353CD96805AB58F9214CE2038CED922E1C059315DB247A
          9B09424D68E1DD6BC1BAD0757357AF5D3B5BA9569BD0CC6667671ED763736DBA
          D25F34048426E5D9F3E7CF67DF3E71E2603C1643050D85C0619334D79B3353D3
          ECE73EF8731C10F8151D0003DA224ABFA7575795D78F1EDB3B308094324D09C6
          F5A6A7266792A9545FD3C519B767CF1E76FF7DF7F1678003E8DCB973B6C55575
          4DA6BEB6965DE5F65353214B4B7FD8BD2B02609A807D4D1DFF54D3E5DB2583F0
          4CE06868734B743AEE7074B9526D87ACD90031AD13A37103CB1A16951B379672
          F3F3F3054268DB7462F407C6D4FFFA6BBFC659D23CABBBF8103C17CA52FDFBAF
          7E159CC5EAEEDD7BFB9E78E289919FFCE4C76B5A9F684DD26841F31D5125BD10
          3B40C633C309F77FFEF55FB31D3B76D8EE04BA01632C8696C5AD97203CC0B6B5
          26857F016DE4FD36DF236961D1C775BC43C27491E80D9823B008D43BCFD5669F
          11F0F033F7BCD3B3AC6632F7C7421CB4FAB6375D2C16B99D1CC439A954729715
          9D44CAF2C4C4B821A5D53DB9833E996B04F0994CFAC1E595D5F16422DE2A57BF
          6BE7CE0DDA4ED7688236C460759B8CBAC9403D7DE6CCE0F2D2F2B0A639715B70
          72706060D8640636FC0CA005E0808E10008176831F027648A316AC5AEE45A0BF
          09A6B598751FED9CA987B60C91163C016757878D53315E3FCEDB642BD6703655
          6D144AA55568FC0E6D803D570F59E3BF564AE57206669C9A4DD40BCE447F7FF4
          A31F55FF870F7D48A9547CD1314A0930E1BFFED33FB1E79E7B8EFDABFFE95F4D
          EDDBBBAFFF673F7B2377E1C285425FAA8F3708E31991293DE287E83045A816E7
          2FB2E17EFBB77E8BFDEAAFFE2A3332E279BC12F906285A3F1B222D7A03C2A208
          206D376E57BB305688A7A947EC387B3B08763C04D1030FCADE5802263B42D630
          18048B968DC3934764ACAEAE0E168A4573288F47DFB71C4C2EC7116864EAF0C6
          6B83170E30936D1893656A6A92D78793D18841994893F1C4F1E3C7EB3716179F
          9A9C9A1C6AE88532A11181AA111C055610F0CADA03709E3E7D1AFC022C9E6857
          BCB08AF80671AFF7DF7F3FDBB34B4BF00387FA7BEFBDC7FBCF2DCD5625D05BCB
          6651C2C844306F0BC25A785C8C8015D96C711E9940EFC808306D8209953BADE2
          FCFD3A3CA80588ABB5DA56B95C59B74BE0601ACBDA1069C413FAF3A609E42B34
          4E948585051329BDB05B4FCFCC70F049E81122610B34F06C76ADF15FFFE9BF0D
          3EF0E08353880021D0ABBFF2FDEF236B4F4DC4133C65DE9913B937228018636E
          DFBE7DECAF490BA69D8B67485AD02ED22AB1B4CC1CF72C0877D2449A5FBA6CB4
          821B3F84ABB80C31A0CF09665804D6726B4C6CD900C4C343C3C6898C429887B0
          BAAEACAEF2028C062203556468E92346F8ABB45FF4C07FD037EA5F340CDFEB65
          C79A35BD043D04E8D6B2356AEF39C5B76D324FAA8F8B852B972F5F79EBEDB7F7
          D2EF23D3D39353040E09314A388701C071CF9E8EEDB0DBC404A8408302D18E96
          B1D6ACABAAD5AE2098D49A20466F3C7DE44815E5E5098012274E9C48A262825D
          6697F16C005EA9542E6E6E6E6E3856E434A427D3F38E2792C96111660547A09D
          C79F9750EA3752447A80907E1C5D2B4D005BE938A155132F86D4683AA489CC4C
          6E60BD7CF932EAD26915ECA92FA89F55F4C9A73EF529F6E0830F86660B36BC37
          45BCFFFEFE0165697969E6F85B6F2561E6422CF18573E7F2274F9ED840385976
          2D6B7C55BD10AB3DB675A73201E397FFE88FD82FFEE22FFA5E08FCC09C58F4EA
          F59A68C33D07C2C83E431A70A737C01C2F6B970E6C157025ECEEA6310EAF9973
          39086A44143384883452689DC9445278B2717F9E163ABFB0902220C196BCAE1F
          2FC054E0B008941520AC6A8E1CC36034318BF17457C5D0CC26FD0E6D784C0BB9
          55612BE60B83F7F691DFA2343434FCCE0F5E7D75706E6E6E37014F7D68706088
          9EA745E5D8D093040EC34C40FF3A5DD76E82A06F90E5B6B8B858DBCC6FA561BB
          3557BBE78DE66159FBF7ED5B3A78E8506163631DE74C13B04E1302373B66BFC3
          AF4D99FDB2F6BEFA4C608D74E2CD4DB5A2C560339DAC5DA53E50785204FF9D69
          BC98CCC529A567C9D1A25545689F4D53C5ED927A1DCFBA1EABAC64733985FA88
          3FC2407F7F7C6878B86FCFEEDDCD8F7DEC636A987660D104BA4F1563118D181C
          1A1A1D18181C7DE59557C088C74D418D7AA3F9EAAB3F485FB972A5D668D4631D
          CEB86D8010B0A4FDFCCFFFBCFAC77FFCC71C1C83E2969FD3A00DEB73B837208C
          0185EDD56D24024C00C0EE35DCB439B34A9FF32E474DEAD7B29C1A205CCBFEEB
          53D48FEBA09644F565F38E5365087C8F69319CD0C263A4559436F2F9BED59595
          4769BC2BCE9A94AAC8DAEAED536963256C71E9BE290254363D3D253560311EF2
          F9FC7B67CE9C5D999B9F3F48E0A4F13ED0A99393E333295AB145AD2E00C15EDA
          16BAA5CB3A81306930EA6BAFFD748D16A3322743B73E7DB389499EFDF0873F9C
          46DFDE58BA91C8A433FB504B8D89C5C9B6DB54EF06D8BD527D056C7D1143B85B
          55CD6A8C6082AC5D1D1B1D515AB5CA14ED35D9388EEC824C63C6FBB9B41D36E2
          E6CACACA082D0049D2C8B399B5350585390F1F3E3CF30B1FFE7002F6681F1521
          A404E00F6D1D95A8E3F1447264747426994CC6969696D88F7EFC23FECEA0AC5D
          BA74A9F8DC779ECD2653C9CE7EED3108E39911BDF1977FF997ECD0A1FB98569E
          28F84D6581586359E3A1E7E183B090C181C15BC280EF22F229BDDA6AAC85AC19
          CACE184494806FB64F5104FF01CDF54620021B45DBF203A0B204BE378411DFDA
          8F70E2E869A08FD0DF06499B38890A19B95CF61102BB1D6195016FD7FAE4FFD6
          6922ADD030EBA76DEE14CC1032F1E07A45840DFA9C3CF6C61BD3F57A639A9729
          62AD2D7BFFC4F8D8B4DADEC6F373C0E3303C34C41A2E4AA7CDF85AFEC10F7E98
          2E140B6004D3CC2DFA1F7497A172E8E0C1FCF0F030B43376F1D2A5B16AA532A2
          E8C732C3B11D2257C9035F4133D54B14ABC320156BDF5E383DCB280145C01853
          876927A1C4ECE88715D3BF626763F83340BC423A66D9AE11D67E0211D1D52B57
          6651FF6F6A7A3ABDBABA5A8123EA5F7CF4A3FDA4054F876D8680D035B374DF22
          4F4B1D1E99A4DDCDA050D27EFAFA4FD9D56B57597FAA8FA7A2BFF4D24B99F9F9
          B93269C78AE3980A19908533EED39FFE34FB9DDFF91D1B9ACADE8231001F5B92
          9E8130D7D642028310041A23C2B8FCA8E79D216B8E8B8AC6B7502CF297384820
          3C829D98C43DC4A4EDBC200F4F55ECBE27AD22BE4E1F98068EE8C6DFF70B5B85
          65DACEF513D83D53A95452612D80E23A04C028225A0633D8F8F8F8047D06BD58
          C02004D42A693EA74E9F3E5322EDF3804808100FCF932A90C8D0DF3728261FB4
          E1999959F6C8230F4B7BCA51A898CE3B71F5EAB5F2D9B3670FD24437B1AC1198
          C7464747D28F3EFCC83ED2B027A009830C289898A3400C76F83AFD65156C95D4
          6F35FA3E453F4F1B9DA0E2E762B9445A6092C12165F0A759FE15FD6FA720AA30
          5FA4E91FCD26ECB248C05C756371719C347098AB1086053AB00CECC1BFF6AFFF
          35ED4626416EE4B74CB2ABD07BE38C9F9CBA3399EC1F1E196D2DB4B081A3FF5F
          7EE565B6B9BE498A461DCED1CA0B2F3C9F71AE91D7EE0F25A4C82BD86677EEDC
          C9FEE66FFE869BF9ECCD31E19A268C1B23F40D8F95EE05086B993F4966530DE0
          5609C2D1F60538CF1CADE0CCCDCA4B8E033068C08FE9B5DD7AB502CDD320BE4A
          9F56FD38F88B683B7B229FDFACD1FDF79396735F98BB1045891593C9C4866E0B
          2ECDCCCCE40706069E6C955D7762C545DF349BCBA481BD7FF6ECB9DD34C85125
          D8B4E76D6A9A516272726226463AA1AA1931F9DF90C9868AC732DB64BAEE355A
          7CE67EFAD3D7A1D18C29B1D84ED6661D8BD135CA4F3FFDF4522A951CA8D5EA47
          2E5FBE0CEE8A8EC40C39314782B46CDA8D46961EBA446D41F20C0A956ED04A3A
          8D7A7002B7C5EA4310AAA526AB8AEB3D8C25D58D42FD8AEBAF3307A79CA15FD4
          42B1989A9B9F9F51DA6A35C8EBB30F3DF450E181071E509A8D466A646C6CC681
          383E88A8B423036736377E4F4C4EC10C91322EA8A0E93C73F6347BEFC2055199
          851D3FFEB31C2D8C2083772CAB055B2AEF13D5637C4BFCB9522EB3CF7CF6B3EC
          E31FFF38E7F908E3C16D3BC370650BFBA9D2A8D7AB3DD384F97A155342D942C0
          59D385568DB02A68C141661BB67A885630EFD52C551640822ECA5F6352D3647C
          80FEB4B707E698325DF36D1AA4B0499BD8DAE8FBEBB4B25F27204AE472B96768
          2B3818D2FD9B8944324D8367BCD1689668B25C9A9898280C0E0E3E48406322AE
          B7DE0E8EA3E1E191132FBFFC72FCE6CACA5E70B3DAACCA0A0171636464787268
          70B095628C098B4C36E4F07B95D52141DD9B53B8DF2B3F7815DBE0984E3E0446
          F1A6A659CF649F7CF2C97DD43F172B95EA9E1B3716F72043CE09843BE314DC07
          32F54D85C06E95148F71DA528FC02685DF7189E1A1A1565489B812C2A0EA8D3A
          CFFE7314876746C40A5D3BCDB7B2D64ED789788C2168B4284F952B957E3187F4
          F4E8FACCECECAA6E3F53F7EEDF3F3E3D3D3DDCECD22E8CFE4CA7D35B0B8B8B28
          52CA76EDDA35BCFFC08171D342AAB70D2189225B510F53ACDF5C5E4AAB9A63C3
          FE45D33C731D0B927883F185A494E9D919F5C2F90B888CE96AE72EBB76E9B1F2
          7A9092AA4C4FCFD47A06C2610A9C7C76319C32CFCCB4D4E4A92E6E6F1FB2A613
          496182430BB60C0C6C8511BED61F32105FA0419EA1CFCF312DDED928D0824FD2
          842B529B66692BF898662EE8EEFEB1587C23918837685E4CF6F5F597C7C727DE
          2140AEC5E3099876B0B89942F45A29B65ADF5CB974E9D2C2A5CB570E1030F65B
          6DAF86911B23E09A21204EC40D71AA0D3D9E17D56D3DB4E10B746D504CB2577F
          F8435A10C1FDC0F913F6408D2790C91D397C788816AFFD749F65D2A6AE537B3E
          40DA790ADB622F20E6CFE3F817ED0B9E4A4C9D343434B8430BCCD2E8270934B2
          B46B18EF4B2547B579A7D13C0A1EE552B9C43CD536E3D8A243CBA572AE52AD16
          148F974B2B91BA95CF0FAE65B393D61A79E8E3A1A1A13C01E13A69633138E948
          2B9EA5B6C5554B5C89ACE8B6E7C6C58B1711FBDBA0F19278ECF1C766C435DB8F
          03A2AF7E36363AC6B93292A93EDD17C0159A7C2E9B75E4B7902170F30262D196
          C71E7B8C8D8C8E709EEA5C6E3DE0AEA8F315797513FE83EC717057EFDEBDB377
          36E1B0051D0F3BB34F5041AAEDE3CC7394BB8A63C81AD782B7B6B83DD8A65D1D
          853EBB0444D8814FD1E7207328004AD7BF4940F4DEDCDC5C8C5EF093B4259CE8
          CE2EAFD4480B5EA31DED3478C367677760F25CA57BCCEB83CE29F39017A748A5
          FA4E7CFDEB5F47D9F8596A87FDC65A633B1B074910E28E8DE57004AF2D123812
          CE4E40841A9C8176610161FE0E080887EEBFEFBE2C693D8F1238249E7EFA69EC
          654F10108F6532D9073A8A785A9B677C26DB6F615BAC174AE572767060609AF0
          66406D71C530980256A1B90E0F0EEE20750BE9F25C0B1660425AB91633EA092C
          AA307DC1A196E96C45C758E03C052B376FCED06298B4D6C8D3CF6DCE92368C72
          44C8A4DBB173E7302D78E3A684121FA305FDB8481AF0CACA0A9F2BF7DD7FFFF8
          8E1D3B86B9C3BAFDBAF9719313939CB2530B69D5C8EBB5D076B5B9BA72334DEF
          ADE6B5C848894D27F12A2A3B66192D3ABC2F400A75F2E4A9507C5832602C7C03
          502E683EDD39202C72EBFB527DB27666840F58F921828A6D4D38CDD35D744A71
          EC48690ECC8B8A1A69A9D449387B989957B8E3503AE634816F0EB6E94C267398
          26602CE87D49DB5D8BC763499A94A3705CC03E8BB84FFAD3497A0525E6C061AC
          57E83D4B5A70EED8B1630741E3C82C2C6786F6A6481B6AD55B1B1E1E32650662
          A7B17FFF7E4EFA6EA30D032DC040B7296CF3DF7FE51570E672AD2645B3BB51AB
          0DFCFC873EB4FBCCE9D33399B5355EBEE8C08103395A38CFD76AD523EFBF7F71
          089310D495AEEF40BC43CBB7487629168B2B042229D278A7AD4EB55ABD5186E9
          A03F951A46FA32224AA0FDB541A915332AB5932E158B28B954360294DD79B005
          AFE772A31B1B1BA346701104F3BCF3B410B9E2D4D45416808DE31E78F0C1D9FE
          FEFEA4EA1388F510C12ABDF374AD5E534747C7538F3EFAC88CA0CC6CBD30FA19
          FC0CC37A05136D9CD1BB4AF5B5AF53D82A66D2E9AC12562EBE71C0D13D713F44
          DFF40FF40B3F0E3B7DFA0C5B5E5EF6249F97BEA5CBCBC43D515076666646414E
          D41D05C2E82068C392200C76F0FBC2BA3D736059C3D459A7AD0CEC7B36600733
          C8937617F4098CCB3470DEA70FECC0B31EC76ED04B7E97348926694C0FD124DC
          1D287E598995093070AD59A49CEEDCB983194C05CBF4795F7F0D46363A2E747C
          868E3BFBFCF3CFEF2C97CBE356679CB1530990A6A87DFD86DF19282D5BC71842
          D66C6A9DC1697A49FC82BF5DBF3EC7C118E7E0776ACB0C81C3E3EF5FBC288A50
          B2679E7E1A1AF6396A5B93B6BF4F22E5B96DBAF1EE2B111B81C349935D87D981
          C06C0769DFC98E7E648884A8AC11E09746864766068706FB4C14F9740001B5A9
          90A57DE205DFEAD3A314B34E0E34B57DAC4A6D4AAEAEAECEB49CA786F69852B1
          E93A53D3D3196A7F19D10228A777E0E0C1293BDBB05BCFA0BFAF5CBD9A21E02F
          63D57FE4D147A7C6C6C7FBAD75EB686745F7E82C99884A22FF7F775FBADDD691
          9D7B0E061200077002078993465A832552F2D096BB3DDCD549FBA6F310B96F92
          67C84B24FFB2D64D7EDDACACB6BB3B76B76551942C4AD44C529C3110000162C6
          B9FBAB537570E601A41C29B5162D9A38A853E3AE5D7B7FFBDB21711052F7B2E9
          83341D38B55313C4BCB468AC91B6697A665A3BD4398C52BA7BF727C90B9D11B4
          98A749C8B1B367CFE0E087F1FEFD11C2A2F884BEA9FC10AA6DF6B48A2DCB9A87
          368C3F4070A62C1FF89F68DC55EF9240ECA3AFDCF4F3051A9FB54AA5B2073B6C
          B158BC4DC2261AF0AAA544223D70C6E12A998006ACF24374105F7C2C8ADC7CA8
          D9DDA119D2D57F9934CFD60F7FF9CB2CCC09921D08962A0B85C37112EC067B3D
          1EEC4BC435621DF632DA1848B9FEC1071FE8853034726425A989F1C41CE07A2F
          AEFAB074906059FCE9DEBDFE1A5DB743DC860FAE5CD2888FE9905A6EB75B575E
          BF7E3D0A4E05550BF22984558A4848C5FD9E2869B93D3D4376BA2CA6B9D56A37
          4AE5CA7E727080B4E558CA62728559A25AD504809D10C6359DDE95A6673AD774
          074A4DD88249BB1FA1E7137A0E79BB9E71934F6D7C7C1C366DB0632AE72F9C1F
          1B181C8CF915C4389C0FF3F9CAAB57AFB2A88FEA4AD0557FC47C735154548646
          67694CBA1A626609E6A3A336D378D432077B190F4EA840A5ADB465E46BBD7EFD
          3ADA2CBC63AC60EE9FD141FDF2E5AB53D3863BFD368E3712080C0D2505ADE5FB
          2584B1C881AB7489C61307BD951FE274CA33FA310C18DB8C249CC0C0E5806975
          4567F810C62FE9C4DC22217A8B1EF5646BE3E5987EEEE772B9066D8459124E81
          6E0474B53EA2855803572F84A19E1F42D75C668BE5B76896619AFA12022F3009
          B4572B0F1ECC20525576CE0187505D5C570DDAA3B82EF60FF41BF61EC6168E14
          1D644D63BC139CB9D92C4B18CDECCAFFF22FFF021E00D6F7F5F575D5C42175EC
          718B8B8BD2E0C0C0AB72B994ABD56AB7481B0EE9C9DCFDEC7C4170D4077BAF2C
          F3F9754034284A3E114F14E9D5B839E8B85E65AD7F76BC1242E053DB8AF479D1
          D64EAADBE5304390F08D9116ACE193C5A40953846CF9BA02A4426E6060A0DC68
          36E5FEFEFE9EF317CFA770940967A265F2B4F5C06CCFED172F5EA44BE57223DA
          D313BA76F55A0A260DCC89FE1D30250E0D5B0356451AF96844A5F214737498CB
          1E968E8ECA9DACD627835A618C91420B07BAF98008B168C686F4E38F3F8A3C86
          277A97FDFB1596B60AB660DD30BE7F4218990E12EE7CC58E26805328CC1E2AA9
          8936B522EC91871C2B6CB34F200467BD2AB7F95E8916C33D12C2805B5DEC3CE7
          DD5040D668D3AE537B224747474BF4D3E76761219A0D9034FA7504A668A481B7
          C37BF33620B4FB807FB440CF8C92B0FBF1FFFEDBBF2548684C85181F032FC6EF
          2B246861AB1CB46B03237B216D091E74619BC4F802CEC4B518350D936E97974A
          656DF3E0FB247813A4BD2FADADAD45F541126805C2A153A3A3307120A0E25EB5
          569DD9D8D87080ACD963C3E9B039A6F765696C4640576955D88CE345CFB568ED
          1EA8A1948A01B2A6D619624C5E762810F04390D69E56BCFCFE7C8CF7F6F65274
          0B3204ECD869D8FAF682CB034E3AFA171C12CACCECCCD0582AD5AFB647B69B43
          F13D697F6FAFB8BDBD5D44F36666E707CF9E3D3B68EC87FA3D1CA0CE5196EA08
          AADAB02C088F9AFBFB7BC8AB6780E275238CD11EBCDF749B3214240CD8D878C3
          684D4F8294709E1E850587E8CC6AEF9F10161DC144E254D53B197841A720B010
          4D1674A6C292B7FA838DB32759936CB2B6647359279B92065973ABDCFA3DF967
          12C04552043E964CA6151F8218A42DCBB023D2E69E20CDE88A9FA489B4F80EE1
          A4A27E0CC38102ADC1256AAD4CD5C149D74440423E9F4FECEFEFE79EAEADCD93
          A08B48163216355481DA80F80C8B2032F48F7EFA0707543BB44E109326D3A6AB
          F2A37028948396CE6CAE95AA84C00B0163846D933EFB8036D324F55BDB50FABE
          A32E6090A7A6A6768FCBA5F54AB5FAD1EAEA6AD43EBBAF65CCA06DEE432BA5AB
          35FA61E8A81145011B608F9A134F96811AC85187A00E1A0E20F52037D01C6A7F
          87B027A15AF19A3C68C1340EFDB96C76C8DC07CD166C26ACD7A646C12157248D
          B84063138AF64443972E5D1E0F47492AB775478C8E6103EFA0B5D57CFEECD901
          7C10245C2257AF5D1F5729DA8C9034D8F97188BAF97384BD341AED65EF601CCE
          857C317F7858B4A6B0F2BFBD855F013729AC693762283C7BEFDEB2855BFAA485
          3BAB9910D6BDFFFD14C25AEB79DA1498274C607E0B79B3DF2A25FFD627DB59CC
          1DE6DC0CFBC1B8876539130A851FD142B8C4BFEBF09C6B1D7BA44CAC2D2F2FCB
          1313131FD2EF23EE21A1A13A69C1391A3E9809C23EF9215ED1F86F420BC5E2FA
          F77FFF7744478D6AFC10E6A7A9B2702462C8836657181AA6B7976D5E2D9F9EC4
          D01225BAD6DD474A2401B03FCFB36330070BB2328442C3740BB8F1F3CF3FCB76
          1B895FA1D9A6585C5CE490B55A329BCD32C89A78C66684442EBA237A3E4F0238
          45F51B0E56338A02014B316617E7376A59C62DA3418218369E88B95DB812EBC3
          67491BAC22AF9CB97EBB3E0109435AF038ADC1B06CFACC328736411EB8B96890
          353AC8A6A62607A6CE4C258169D5935688021BFB9BCDCD5C269381F94BBA78E9
          F2081DDA09B3330E9181D042C33EB98A819410072A4C1DE9FDBD03CEE16C3D0D
          7D6C758C27E851CF9D3BE7197DA9069B64A4959507B6C3D46DE1812B065F87F4
          BE0B6114B1F154D84FD47EB1FD42C5431346813480636DD04775D02C97492305
          1938ECC99E760427765BAAE7216DCC435CFF49502EF26832DB87D5C8B8509CD6
          7D3F1C28F8F1319E751AFFFB3FFCF043259BCBC5AA950AB0C336590CD47F8084
          8838A44AB2345ED5CEA44834C21D3952FB30978356B80FEE03214CE766679920
          060F2C69BFA11B376E2CAEACAC0C8290C5CD04238241E6E7E70F8F8E8AABF48E
          C5A74F9FF6AB90357B2DA8AD28CD4AB9B24F6D8AF7F6F68E38B65DED00C3399B
          C8F8AB5C1003A33562275601B113D570675C5DB253C70DF32F2345FCD051B1D8
          CFFA2CECC092E43E87FA6B3E8D25206B63E3E3D93669C35828972E5D4AC5E2B0
          EFB60DEF03AE976E0DD5572F5EC019A78C8C8CC62E5DBE3C667E979843FD61EA
          35E7E110831772DB7088C6A37C9C0564CD45837012C6825A17B71EBF0988D524
          018FA49D9D5D2912096B6FE8B660EC687C04C4535FD7FB2F844511B662D0E29D
          C4B3D98D10179B1C1BBE542E79DD1861AF0692C0EB7CDD24016CE087F0DF07CB
          9F907DE121692B08DF5D383E2E4F59E9069833EC988430F808A0C94273F6132E
          2C22AF769E3D7FFEECDBEFBE3B33D0DF8F43A6E504A1A2F919937D12E18BEBE9
          009C7434BF34C6C82F24A2A936E9A78667CE9386036707E62093CD4E8543A105
          78BABDD682C09E2F2D2DE1DFD55AADDA2E168B1F92066D6BDBC7FF55C10CD66C
          55FAE27138E3226E75836E54D5822D9304CDF6981E1AA7274D1187AA3945FD69
          962AD56ADE139246B77F3AFC7A109821091E75BF4258B768B8B94A1953216B35
          06591B1E8ECFCDCD8D0219A3E8DF49CFBD7AF92A4382B806614D5A30CC57BD6D
          1DD985301D22FB8A9FBD05C7AE10B498175573568DE8D94C1A14A535A7483A75
          3CACF58B83166600BF549D58F7584B3FFE6886AC0517C45847D0ECA1891BF793
          16D1F33F43088B2234E36E0AC390921017FC0F3E168CB0D7B1AC0ED0C230A480
          DF88249C0E05117C2997AA75FC10F255A98B6216C434264F4808EF8336B25028
          30C89A49C0B4A3D11E6867201F8A210DBC9BEDCC5CA8DEE6CF8F1EBD7CB0B2D2
          471A8C917C459F724796FB4830053A541406EEEF03A6B249E37CD0562706EF00
          DBFD2E84C147B76FAB3657DABBA425DFBA7BF76ECC2FDE135755A4B559585800
          067799FEFFCAFAFAEBD1ADAD2D8B360C7E08128A07BD3DD1644F343AD8319238
          8E8BD37A6C50E3F6F10875704C321A5CD904568E2BADA352E980F12878A45282
          ED9D04F018ADC558C8044933D881FD68A2121380353A84337CFC153AE4460792
          83710159C3B8D07A2A6D6E6CE6693E598C36523C4B562D58C1E1489AB06CA6D8
          7778B5CC78A0596A28591AE8EBD7C60F66099629DACF9A913468A33C3838A840
          0BE6EDF1F37556708023A3F7AB57AF6D0E73FFF5600FE100C06DC0A6F9EF274E
          F86D16E1B8C2A03381CC0988F037718A892B30E04410BE3831CDC29F059524E2
          4EC21C903544D2D96A51F49D27AA3D38A4E387E8CE30A5DBBB1538E9E8BADAA8
          56EB73CD66ED1C14165DC45281841C52C08DE01041C68C208424188FE5E5E5FA
          9B376FD26C9CEC1F0D91869A72D31E9D0AB7FDB649C864A861759E271DBDDBA2
          FF94B9268BB65C240D781AA4E17E6F44624E6FDEBC09F3CB2BD2EC60EEB84DDA
          70084E32DDBC2A954A1507553B1E8F3938153B1A255B433DAE3075A4482A9070
          1A954D99B2316FD56AEDF0309F2FBB697EDC8E0BC6B20409458BBDDFA27DFA14
          C6109874753E240156A24349A69B4ECF858B17341636FA5BEBF9B3E7CC1927EB
          4881F4F5720226657A7A5A0E78BB542D393C19AB2E8C3D5014B34AF5D996AE5E
          B9CA887A8212D6AB90B53AD386ED216BDE7DC2180009015BB0D151D99911E97F
          9A267C5A452F8C81C280C01579A7B86386F1A13A69DE02EB8ABC613C58C12C8C
          19CB9AF97BA03E847D95DE3B4FCFCF1B3FEDDE43A0DE4EE58D52A9FC9A043112
          492CD56AB53EBEA81BF44EF0BE42238B08485A470B767F2FC608810E1B1B1B08
          96C8D1CFB14D560B850430E38738E1BC5490799E372A44C2E29804DDD6C50B17
          14DA6803F97C7E91846758EDB3FFF182360C1408206B34B7F7E81A3EBDBBBB3B
          8D7449984735E0A25526C1988BC57A91A432E16E660DB179F768438B3E3F6001
          1292342E1B59D6EAA034402466CD263BB2F61E89515AD21EDE4D351B8DA8AF3E
          7B69D59276883427262735C8DA2C58D652632C5FDEEED64E7E6F6FF728CC3392
          28D6EFB368E5F9B939AF5BA16781294AE55C0E660A80D04550C4A5CB97BACE18
          82B5BDB909C8DA1317A484F31876F821E29631D0F99ADF2B210C84C0A0D49D85
          5C90A73B3A97E9A72099C29299C0ADD599C6CBD2CB0BB03BD78CBDDE88D3189B
          11C2D8A415DB91CC23E122BCFE0D122CB711EDE5DCD4E005A6466AF7FDFDFDBD
          E3FEFE81F1838383ABDC6697A5BE400D4ED2DF5948A90DDBA46D9D22DC133654
          2C74FA69924696E68795204E850521022DB8EBC6EBE60342181925603FC466A7
          05BE77F1E2452015AE3D7AF4680C8763372629110C4287D02E1DB8A005BD4DF5
          F570C85AAB5AADEC232D13CDA7A753115CB93E9D406042437F8C90B5909C0EC9
          881DA9C9804A391568C1D94C2659C8E707E4A07DF6D08ADB6A74DB1169C4F926
          6759BBBC7079022C69A40503BBABD8059688B11C1D1961413E2711C0AACD3ECA
          4C63AAA6EDFB7B40C528D7AE5F830094DB4EA4CC3E4609D5A990B57C20418CFD
          00AA4E1C042E63806098F74A08DBE6753BA5825104114C817981F99862331F1E
          E6401DD8B5AD5908ED3E4E4CA3BB221A206BF477C6C7409BF706EFAB4BE95A96
          65E8F58F0B8522AEB0374866F691C0386CB75B805A85B069DCEDE1E6344B2178
          C8D9AD402C34FA3DFDFCF9F31D9EB70D7D56924343E722E170BF2F6D46B6E64D
          40DD429B8100268D17BCC96D907F2383C38D1B37A274505E7DFAF469D78E5971
          7504CB1A95FB246CFAE940B90CC81A09A13CFD7F8936B42D3F847EAED90DC87F
          7E45083206595398934E82368BA83504A3C87418B7807FB6CBFECB0FA4301DA6
          3835BB7584E0E497F5D91ECCC3921A1FCFD038C3A9AB4C4C4EF44308E7B2B90A
          C27E79A72D6300C63BF033447C42D25C078813FE40186B75795489ECE4337333
          CCD67FD2E4A558C6E974565A5E5E91DC2C43BA166BE62884C77BF897DE3B4D18
          E56D8523C3D3FE0A1B517F0D8723224F9BA0D56C06BADEDA153131D08A395610
          1B07B661684080202DD3626F7232724B64A9A45E574D0220509BF03032266F1C
          1E16EA74AD1E383CCC9E01B73552DB4003D6340E5F55F1DF4C8E4CEA432D9BCD
          2EBF79F386E53023C18E28BA6B521799460C51523A92721204CF4838ED4030D7
          EBF5305DF9E08CEB33861D072FD8B0A03704CB1A09BE55FAFFA5B5A74F63D497
          DDDE9E9E7EEA9B16736BB71C58A45F4CA5650C50AAA4C5223B344C3549BA31EC
          EF1F1C24F1021ABB5CBDD1900FB359755DDA739358AC01928D50752205027F01
          E730109DD07788212FF0A3CD81CD2169B6054F4E4E2AA441239BC989F1A27A84
          8C6787F8FB137D09BFC9007C1515B2F633206B324B4CE05110C8A9F2430C79DD
          04DE4B21FC36887910827C1FE99EE04D05A501CD70439822F2741D0C7CD57328
          6241C439410D95515A281FD244BDA2DF37B97329408DC10F8666B3C5C805B138
          48804DE772D98BB1189C71E3FA840C5DBF9B6B837BA499AE954A254675D9AD2D
          D8D1162ACB00D2DE27AD1B10B559D28C357E889314C15F0C471FD5F518D4A1A4
          D5C79FACAD9192DC87C35F78A1746DE97C3FC4B4E0DEC006337A0F4B8B045ACF
          0A69BDFBFBFB30DD2824CC32A47DD7A89FB23E09A5AFEAFD2526B58EB38D66EB
          F54E3EE772B3D150E28984343BD34D2631F7FA1389B87DBA34D3FFB2A8CA057B
          7E886E8B9A13EF48BA7BF71E13B06E7B54E092C192E6A3BC974218658E7ECE9D
          627D6B34707B7CC292342EF334946C0332219CCF9F7AD668716DC54F2C1E9BA6
          F7EC9186DCA445D6C3132E164E7A8D727B373404D27AC324841791061D0C69F0
          4207B1DF19C7C4AA1B21E9265D959354E745DF95FA7A97882CABE3F6B24D5AF1
          472B2B2BD1D30AD2C13A00A69334A9E37FFAA77FBA4757EBD6FCDCDC54ABDD9E
          91051786CD38A189201D3268E22685D4AE8D343E50331B21593EC2A7BB3B3BE0
          7D60DE5C5A0F5512C48C998CFB2598C34BABCF4F87020863AFEF3AB0BBE1F613
          A6760EEDECEE1C4E4D4CB6686DC927B105DB15CCF9E0E080F35E543AFC1010C2
          A71DB4A542D69E73C89AF34D07EF9D9A9AB4A35DB5ED96F49E0A61A83BE06148
          9CB4222AF07A3C84E19E5FC9706D86E3E5254DF61B9D10C6A600BEF5A433CB06
          5DEAD06132FC7BBBD50E0D8F0E0312345BA954A668227F22E192E40C63A7BA9A
          0422827E1BA2537D16C2BE9B187908834EBA228B90946BB55A299349C76439E4
          766BD1D5E1F53ECB7B80EAA8ACAEAE0E673219C5149576E2F2D1471FC924F8DE
          FCF5C71F73240CC3A4D58F215DBC6CE3D0E2DA8FD23F30208BE8026D5C74CFD1
          381BFAAA6A7809D8BA34DE876C2633A4C3C642A3CB259349D06ECAB00F3B39C3
          3CCBC984B1C1ECA1FF1EF6CEC4F8F8D0C8F0707FAD5E2B46225130BD858254EF
          AF09AA86E91479A7B2C3C9CC0C01FFCBDB380410BCE20C59EBE44504F7B6CFF7
          BFB742180571F7574E5887E68CE35A27AE80D7F867C812BBDC6C34AB604603C8
          4152EDB7A79516DC18D2AB28D9D4780A1C0C8B602EA39F9734E198E5D3D4F859
          411C7FB97CDCBE7FFF813C37378B13DEB7D66262E55254DE1AABFD119F552AC7
          72BD5E939D4D26023C61CA1F6FA94BD299493A914B401FE09AFEF2D56BE59479
          BF35FE62381CB3B91C13F0D96C56DEDBDB63D9272C344B3C74DEAB15FCE0D2DE
          411BB676E9D2A52CFEDE6CB5C23BDBDBE3F857F4876B998DA9A929E0AF951C29
          048CFCDDA6EEFF0EAD1802381E4FF44C9F3D03C7AE9C4C0EB68F8E4A074DAEB2
          9FEAA4F0C2206B36072EC693C6493977EE9C7C5A66087351216B5B121DFC16D3
          97B861E216D5E187F01CDDF75A08A3F1A0AB1C39411D0C8DC005B05D2AA45D39
          243F55EDC24C1B86F7BAAB0836B78248A078227E9FB49D495DF662D8A71F52DB
          3E3829B6D65C70957AF0E067E5E5CB57F2850BE76177EC6AD1DAED31E108A103
          4481E6A6634F74A319F2F93ECBBB9547ABAB32E60FD91AB4724A8E98EDED6DA9
          AE669A10B7248685165A9081061229DB7DDC26CCCC622480D34343432CF43A03
          A859A13020825D44FD3820C16C363A3A7A44EF960FF379735F8DCE39A7F060B3
          06EFC3D4E0D009431FCE4E9F1D4DC41331D86C61D2AA56ABC72488736F43080B
          C81AAEFAFA82F9C14D0434A7A77D23320EA17AD1B977EF1E206B0C06A76B030B
          CF46B4A93532EE7F163A425F4057096E856EBC663C4F9A52E102C82E61254612
          544A8542BE20D2A843F0070ABBF52A307BD0464C477BA24B7AA810FD7D8B040C
          6805AF9DA47E7DC1024DA7330A88ABF12E686F57AE5C51C015D1EDC2157B4D56
          53AB338F308D95D26C6A09207CE646F0BB6719DF834242527EBDBECEB48E1E40
          C2AC7964BAEE0FAE9D487904610CE62D8610A002381EC299F50EB270089C25D1
          40EFE09A76F9FCF9F3871877125C3D08B8E0410E5ADDA21FC0294F9D39936690
          B5C343E9D84CFE2E9C67BAF5E313E36247B2E432F22C230AD3E681134E0E2613
          139313231827D28205FC12F0C74CBDDEA8BD2D418C307673E615C10FF1B67C29
          A2600FD1814982F8BE3E830B3B1C0049138A88FDF2B3FCF1BD17C228DD42D618
          1A814F981BE20227FACFB55A4D291600DD64821F1AF3A92C2E3A3D6B43C343F7
          63B1F882A2B4CDC21DA7C343126838207CB18EB915B11F7EFCF1AE428B88513C
          62F1024E343B3B7BA22B1CEA0296F5FEFDFB805529E3E3E35A7D3A99722A8218
          D7F246A32E092D1876C028277B31942E8530EA79FDFA354BFA8831C3C666DA30
          1790D090F501217877C80EB6E55098533612692F2C2C1CC463B12664DAEEDEDE
          48E5F8386E1B7D29A921BCC87A919A98386CD4EBB0555BB4BD10C2AA499823AD
          91A3F0B33A3819A597CCC74BE1FDB0BBBEF003A7353A368624B2E0B308CDCC4C
          A7A29168148E5D81E3E58758AD583CCA7435013EC60FB739D85E51B0CEF07E52
          267E3116C50ECB9A1A1EAFC2F226583BF4A63D1F82B86B211CE135BD1DC34BB0
          D20D640DC42F2BC885C6058597200752E2E03077C8C2956901228DBD2FFC895B
          E1F6BEA743C3C39835CDBE6DDA2759A497A71F04709C88615AB5676D2A2B2B0F
          6461CF129B8604824257BCAE3DDA101E0894D8DFDFD722CF7A7B0D59B115FF72
          CA334C5A79F9F2A5CCC8DA231DB27615DE6773290AB029552852517A0C4E61FE
          3D8C15020F68AED8602117DCC6E6A648226AB10D7A75126B6E6666264F9A6D09
          E373542C26F60F0E46CCC43B862EA873C5206B344F35D23465F026DB10B42B34
          0723A55229618B9776534C3DF88679145C7E30992C01FF9B4AA592C3C3438348
          49343868C497ABF9FECA87954AA56C26633F8DA283ACB1683864CBA01B987C1A
          B8643F0561F9E5725901648D347E7960A04F31F343B80DED695059426821B9E2
          FA2FD1611F2508640DBD076F6C860B60689F3724F7BD53A69FFB34D94DD886E9
          7B315A6440679C08AB4CDA42617878F8493C91B8C9616986D231E129AB24FC81
          94980EFA8E4E5D4C3B51BEFFFE07100E1988CE7978A542D7B9AE4C12E27A86C8
          325CE3C1B301ED11FCBE26A1AE4881281D64BB77291092F42E59F44BB4384A9F
          C1C968183C7371E99FB85AAEADAD19B22A08D8139C3EE80F1C507B74D8401B05
          6ED55FCBD5D256F97A1B1F5CB9920E85C34AABD99477B6B65275F03E7824E4E4
          299FAA93535359F4234B63CE7925349B4F48CDB21C210D2D253B99E9BC26C086
          F087537E3266351C0674C04667E76652C0742449FB83666A16C2ED76AB59281C
          1D9C2064D8B5B028D4BE04E3664080CDDB72C63915F4F9F9F317F891E7548E0C
          4F25C60672DD158B1AA2BBA079B2082F8967BAFD6F2E51DE263F90355C911E61
          C2686DC83C7BF1908FEFB1EC11A5A392C441F3C817172879A6BEB070E85C6E65
          666E6E8816F4BC9DF0EBE468944BA451ACD1BF3700E6EFE67D109424B8142C18
          BB80062C1E12C20A09E340DAB060507BF4E8114B2F849B82D0AE713DC4F54CB7
          39349344378298F375284FD6D6E442DE1AC7DFD186B581B3AFD24110737A46DA
          54CF6DE147B3B3B3121D982C1A0D6610D8860567B0E51592641B5586E7A99ECC
          E8E8E831B819A81F83F9C3C3215947C2AEB55D47FDA8746CBE0CB2D63F3080FC
          76C0362AFA2F2A6A3FDAA40D0F65D2E94127E821EA69BB1DB8364EBBE9E9B399
          443C51457EBEF1F1D408B52111EF8D318DD4E91DB4578A958A4372D21316F01B
          831807B72E9524E83465BDC2A21EDDC29471EB82C2B1BEBEDE025DA69F7D23B2
          7B99583DDB418430BE08AD51D82E91E9F6C529F6FC24C50F7201066040D24ADC
          160C13C482CFFA015983365CC965993D0E920C82BFCFE7F7B5A272A586F6E83A
          FAA6DD6ADD422A1AAFEFD0667A09BB342DBCC0810FD8882420951F7EF88BEC90
          845468680A32D186FC05C86B754318214D78ABD5D4488EE01D464A6F0862536A
          73837CF2BB35F175980300117BF9EA954148CABC6E6C0168C370325A2AB049E5
          63FC584DD40A330422D6CC1192085F1FA003656666869DDCC7C7C7F236F55BDB
          786E29A3B45732F2FB0A696E591E1E1FC9E7F370C6852DA18A2E79E040F094E8
          EB4B7F78FD7A7B7E7E0E82C0F030E06EA42187BEFBF6BB716A67049044CF0B8E
          1E7A68FA08B71BEAF7F1C71FDFCEA95E7F39465AE098785871103E625AE8FB69
          7AA4E1DF1CE54F98622C20847777F7E85672C8A0972EED085CA0ACB8859F630E
          E3F15888C6E5687D7D731F61FF10C6EA672D056365B72CD4FD65FC2488103663
          73A1E240A81D75D7CD532BA243FA03C2AE307E884683096068CF3029B063DCA7
          3050216DF4FD7C214F8B4F19A7051F18B286CCB9FDFDFDF7FBFAFBE739698B9F
          D2A0EF3D6CB51A97A9B57ED3DE73ED51967EFA6959D9DDDD95DDC27AB9AD9241
          D654122345E7FD15CA596745F3248F0C4500A75C9D5D8D3B53823A704D440CBD
          9D36DC69A3BFBE400BDEDC7C235BA81D756DC22100E4044C068AFE3393C3C9FC
          5D8CCBABD7AF95CD8D0DCD54C39ED72706A5BA27A7A62048A91D9B2C8C386CE6
          2670D1BE81B0983E7BF6A037166B705B30F2E07967C03609488CE5C4C444E177
          BFFBDD11F20FA11DA2B9EAAB1410FFB449A3EFBB7FFFFE3092B6FA58289D7F75
          C96015D5EEDDFEE28B2F0E06070718FC97845D0ADC4282A8C6CB1946C2E8B8D9
          6CE702F82E753365EFCF1579EB0606928CC50F5954DC92D8762388BD4C73586B
          D7AF5F932E5FBE24EFEDED6F2793C92A2932A35CE9682B0EA713DF537ADFA76F
          4DD849F3C3F57E553A65C37B970566859B92BD498DF1439060A8730C9F2105BD
          4F410049F28006B098CDB05C7280AC21555120AC3278224646468EA23D3D3703
          DA60D3B55AA541D73BDF4E41A4F0A605222D2FDFF78C8A13A968A00DE35AAFBF
          5E713E6296A6452C74D4F7E2C54B8616683491B7B269187A55BBEEB32352B1DD
          596E7300011C0A89CC37CE0F729BAD020DC98E19CCCE16827E1C1D1D297FFEF3
          9FA91F9D1803F34981EB7B44BD5530E484313CD95D1073ACEFD1F8F878014FD6
          6B3564381995251F82C91C2147754D4D4EB6BFF8F2CB0344DB013B5CAFD7CC81
          34ECDF3FFEF18F63994CB6D737A786E95D4DD282E9BA5FA0393C0222059875FA
          1952BBDC36BCCBA528F57A13B664982E033AE99CB97A81158E467B103CA300BF
          7D707060C0ED5ABFE3FFAD5E45F5A30C499F7EFA09D6019626C917798B0E3CE0
          FC81EBD70960D7170772CCC1F135E7F0198470FAF4BA78A2E2847458A39FBD46
          0372548126099899452AF910C60CB2460B5F817D58526DE4A8CB175699164F79
          7864F82109BBEBF4FB4040A41BEDBFD63E6DDE21BAE2C5BC16BFB0D7DEBDFB13
          A39BF4139A2C88B081773467CC8DC57AE9FA95D02283208C56571FD375B5C6B5
          60D9B63ED852A7A767CCDA306BA27DBB2DFD5078DB6D4C8BF65A522C1673C53E
          EBEB41DD3FFDF413D36EA302EFCB1D7EC2D4C1443FF59984341026EC8AAEC747
          772816ED9D5A20489F9D9939805609A85B219F4F511D3D814CA57C3E217CE00C
          3B73E64CF9E6CD9B87548F5CAD1E5B6CA27062EEEFEFF7D2E1321662217801E0
          F4DC3C333038D8F8EA8B2FD2ACDDED3629FE21E4C40B9BA3C1BCFA416DABD10D
          F4049035638008E0708944BFB616B1FEE0506DFA603B3CA9301673FDF1C71FD1
          8D649CAD0589F944E57D1AA763590E414E9A2E5E270FD680F60B2DD8E9388534
          8259E2EDA2A4FD1598176066D0A3E71162F4B0D96C612161230B7E08C7E2318F
          8F69E20F58D6831AD3407C41D6B887F9D1D0F0502FFD7EC9F8A9EFA8B112BDB3
          5C2C16C7BDBE04EDE7355DB1D7D69ECA41D8C5D0F70B172E6A843E62A163F30B
          ED0F0BFDF1E3C708E595A02139437354A2224432999C279EB861A17D0B2DD8E5
          49AD4D9DEFCA4C1B76730889CC29A4D52A7FF9CB5F8CB6709B2B364C0F80E065
          73399E6D03325EB13B050C9DC0184E4C4C1C8E0C0D95F149B95CEE3B2A95860D
          A1D63ED20E8979488D8FB31B0B5007B76FDFCEA4C6523512C2326CC37A721FBE
          0694BFFEF5AF237470243A6B40C75AE93009781784F0279F7E9A9D9B9DAD40C8
          519FA101F7A3A96012B31B4F379300EDBF43BA8596BDE6DDBDA81C16A05C0DEB
          B26D603EF6F6F6588617BF3C28DD0A6398336766A6A5DBB797B4C010BE0E5A24
          80D7E9F689DC9048E86B03D7E82E58030FC10EEC65BB84836EABFBC13DD5A247
          2EA0D70F6890F2B408F0BF34382CEACDB3B80862C4E3DE87810C4E3AFA1D3825
          4FC81AF8214800BFE8EDED5DA20D64F3AC6FB8FFFED15111DCB9FD6E192FE03D
          FFF1C7BBC031FA24A3560B361FA2DEE6E7E735A71A049A8850C266064617B860
          C0DE7491718EF5812C1E114DAA366C70E6DBF14EB0E700846FB59A1DD89947C1
          A6D4B723128D2A51FAAE89A4C3F01EF46765654539CCE70DB03D5CF993C9A4D4
          CBA913319EF084430B56B86BDB10936D16DAC22B05E74D22519B9D9ECE70ED32
          44EF4AD1BF11D96C24F5CA744175016D8276297C5C474746AA1F7FFC313273D0
          7C1F5B605A2AEEB910F9F6DBEF52C88ED131A1B80F29840BCD59F5F3CF3FCFF0
          35D013D232A3E81DADD6F174B6CB2A4D12600792B7B9D5B108121F6E6ED2BF9B
          E185611B867FC22FA774D076086CF8E79F7FC69297EA71C9CCC12A49595A8739
          1A7768C350046DECC2C18335FCA66887BDE75D81ACE9EDD7CC99A642D2DA3A7E
          08FF42C9614DBDA69F0D38452AC730374BAE9035A8E0B4789649084FE9F8219C
          DEE8D5A46AABD5382C140A132086B75B48D87C8F1EAD9266B0C5B379041B402C
          3608610863158FD9A76D308C25D219C1C4C19C641E6325BE0740BD31A24876D4
          86B189A0D9ECEFEF71E11AACFD2CBA96FEDBCB216B760E39C60F4182FED5AB57
          06ED496CF4A9C949157EC685F0D6F6B6C4531D698DD6EE9CBAF05553DF95E933
          67327DFDFD8C1F82BE9F2421614945E4258CC5E1072D58AF41D3DD0E79F17233
          D3D3C7488554AD562C230154C9C3870F07E9BA3E68BD11D99B731011F7EB5FFF
          1A50BA3AE7E21955950DC54182DA412C6DCD5345D2868BFA17FB1584E2301491
          72E682CFC078F8F2E5CBC0C4FE7EDB80C36961E132ADE505BBF068BE1CE40D1A
          E738F57F52B215C286F1F214C2589970740D4AFECABB045903920370AE659E1C
          127FB3E187E85A18C310B44C035DC1959CEA8766C304BFD909CC37D01609E003
          FECC69448E65CAE55284B49F2163F609D50C8136FDF4D332ABC36A63F57EB3EA
          548B33B3847AF50B6BA685F58D0DE90D698475D28241822FDB30C19BDF21F26D
          2D2C2C6863229A6CD722117F400252D608730209E28EF390E57AB3A9BF51AB49
          2B0F1F8A28C8CE18D2CF24093B618E61299C8A45698B04B65D549B267CF19929
          C30469AD6512E6879CD4A8E7F0F0D09867CF051AA617C6F8FEF0C8889679584F
          EE430764E3D34F3F4D43D81E9342A0DA45454F44D6E086FCEDB77F4891D210B5
          17509DB7C3C679F9F2E5A3C5C5C502B77D27E86744A58DF00A88F014C6ED7ABD
          99A6E71AE62E7B09427123A30392D981EC9E41DF2084F5C136418A5B1B38EB9D
          74E7CEAF8439C8B609F47314894477A9DF9037308FBA01883D833510A1150497
          FAAE40D65070E4F7D340E5B95DD325BCB96B418C817E0A21012795EAB490AEDA
          08E17AFF40FF326D96056A4B40F21FC7B635DAED56A658C4D5B6ADA9371D96A7
          FB522693B5259FF62BCCB099CF9D3BA79046CC8213B0C071D5436006AEE6105E
          6EF85BF34702B2860C1E3A2D826BC3D646016A469B4986E7DB20FC020A639851
          C4F745EBB041B159B7DEBC51C38E79A568230E9DF154CA1020013304FA1C3207
          5548CC236348BDC4438C19E9CEDCDC1C8423E387A0BE8C91B6DA6B3143D8744A
          0FA48669047D181D1B335EC1F9BF100E34AEC52B57AE14694ED8A1A59B1055B3
          A7B17CFEE245DFBDE5E5E1A8A37F4066B9D9628958F3EBAFBE4AF7F6C6E04409
          713344D4590BB62B561CB628B00B539B0FA5004258DC04CCEC69E682F9C1ED14
          66896E8B533B30CE4B4B8BCC1EEC41128445B2057B3C17C46E9C96AE9A30F873
          6F4BC1437391ADF891CB4B7FD1C23D97283E887E020B639C700F616F46282DAE
          831CB236AAD6A63E4493F734359E6A85C2A1ABDD8F8A6DDBF2D5EA711364E362
          9163A16E6D6D3372113F9A803B958082935F41C0050901F624ECC0B00763110A
          4DC0097B6B7E870A6E8F33C89A29F9A1CE2CA1FE239C71D85420D3E1879CAF76
          9B0BBE07689DFEFF615600BE596FC354F867E000109992E18CC3AD020E39CB78
          3A094EDED7542A55181B1B3B021A82D66194DE3928EB5554B799EDCC01B4BED0
          CCEC2C339198A3DC64FEAE9E68B475E3C68D3C3DD31607A4D151A9FEFBDD1FFF
          3896CD641C216BC0C02F2E2D1DD295BBCCF3F5D12D581E549D717E23298591C6
          119982AC2B192026ECBAEF2404710BF093C11AF38443D376CE0214FD6B90126C
          62625CF9E4938F6D9D92A682855AA5E5BB190E472173603F711A3C57217C1292
          1A08E113332809CFFC49EB900267690E248C0BB4A8C0FBDBC266A5DF61BA8109
          27CCB5A1225DC35769319C1221BCF16AA728ED7DD286871B8D660C020487CE5F
          FFFA5320E704EF87A1702407AB03AC68A411CBE9745AF04328804519CC207695
          DA086344D5CDCCCC32D89A491BD63A874CF6029226341B68AD764E1F3FC21895
          F74411C01151F554FAEFEAE3C74A2E9B3538E33896975DFB1121077B3084D926
          69E2D0821C9D8F66BA4E55F36CCC92168CC3444B8EA9472E78D06E0A920DBC1F
          63B5B4B424BBED074181C9111BCC296B7E361A8D80FE33F65FDF7F3F2A3225EB
          7BC439326A5F7EF96546AD5281E9621CD502D512642F1AEDE356AD18EC81CD66
          3BE3A6AB75507FF6CE38B777631FF885AC7915F41D75C00C011F894F8E0A2CAC
          3D67C85AA7B9928310D6044997ED662C65D20959D6B833ED4403C83B794172B6
          6B3305C8DA57FFE406549ED3E998835340CFCA86551C8BC57EA68D3D447F9F3D
          BDF0790314AB52AB554AF4EE31E06291030B21C441135E9A9B06E117D32103E8
          BA0B40BCAC42D21A8EF57869C578026D8336AC42D6DAFAAFB25600704F0B576B
          1122A33637DF305E073BCDC6938F4652FBD0DB1363C1167BA4C96383EA1D6C22
          50055AB0082C8110DEDBDDF5675F34D8E515E9ECD45436393C7CAC703278CDB4
          61633F979C052B4B99F4C5175FC04462A41AA5CF9AAD962D0E5A9035E16666FE
          2C12092BDFFFF0C3C8D6D696065993F9BBF073E7CE9D0C8D4115872C8DC300EC
          C1EA676DD1C92E17B1551003B2061A00B73A45A4667FFF80767BF22388BB81AC
          3915ACF7F3E7CFC1011A84AB1832051B65231AED81091290583B79682B84F1C7
          9366AC403931640D837D0A04CDB2E41DA5239E31FD49967C5855D8C14E42A359
          2E9758082587AC7D447FCF27127D4FE2F1C42CD51369328C9C3B34D6F92586FF
          8D4ADC8ECAD49568A454AD5626B7B777FA41ADE7AAB5797646FD179A87C85080
          BA703545C17C7869175E5AB10A591B67903533CB1A4F7EAA07D032785DAD5697
          5EBC78C136845B1A73E7A86155A041A9B9BFBC2C1D9B7384D1E70852813D5838
          E3709B002F861F0CAF7839ECB783C9E4319C713BBBBB23AD66332CD2C54BAA60
          6F874C585EA722026700EF1302589C542D12EE1F5EBF5E1C1B1B6B3A6966304B
          D841D60A0540D6BE4DB1884F7ED621326E7E7EBEFCC9279F1C020DC11F67FB06
          75704D9B6D8A000AB109FD6273447B78FA78E08D846CE036C81397A950357198
          CFC0F311127310B020AE00813F77EE7C66561AFC140E590BE7422147C89AAD10
          3E8DDC6D288265AD7A924A4E491077517C0B612624303982458C9FD853748D2E
          A50F0E8EAE5DBFCE30840707E9949D4D50F7A286F1335B27BAE1039E65204C5A
          DCD4E6E6E6703A9D917C11B6B88C371C0A74F553542D980940D2B09FCA48E153
          3741D21CEBB1AF5CFB07115C80AC211B83203A01E692AED16D836D8217C0D410
          967A904ECBB0D3525B98A9C20B95A16F4F3814968A4747E0D050391F24860796
          C10A0687CF24093B7D360B685106B38E9D166BF3AAE9999903AAAF4E57FFA16C
          263360E7CCB375CC992069208B1F1A1E8614D43D465A2E0EB1F1F1FAEFFEF66F
          33B8353868C370A62A10C4E60287E7CACACAE093274F06A33DAA979FD64FFBAB
          AFBE3A181C1868E905B72E01AE7E28FD0A6287C84845ABC7F5CB24F8D13F1C8C
          7C001D9695332B1EE8460141141C28418BE087B870E1BCC439678214D6667AEF
          462412852912F6E196CD3306211C8412D24FD9A69FE727AD4444EFFCB2259810
          C664896B6BFA20CD9C57D01E913999B415C4F84B89BEBE9BB4D8073DAE53B642
          98FD9FA34952A6AB7A9A39B216162ECB6A508AFB78765E6514F4F8088B1E8218
          7F83368CAB3B4C119B6FDE28084E91BABE92765ED4E6701F68C3EA1886A44C36
          A3D04165B1656B2603FA39D8DF97EB5C1B360C88891BD06EC0B89D1B9BBA7388
          71CD0661DA9AF985E6106617706258927ADA0853FD6C964B256415C992368C2B
          7D68FDF56B8427479DE8359DF0C1680704300B1601F39D71EE94DFFEF6B7301B
          D46036701B6A30EFA11D7A7B340FF30DFDE77FFE670A2C6B10C2D7AE5D2BDCB8
          71FD880E5CF12C332EFBD9776E0AA9E4BA81DCF7964ADC6E4C63E4F6ACE5E57C
          3CE14FC8DB509F7A15C02F878787944F3FFDD4F5F6E55118648D94885DAAC30E
          B26611C26EFC10DD14BCECBE7442C81A3A8F413C0D237BB0E24F0823FB2BAECB
          2BF757D857C029C1278C11C6D3EFCFA391C8CEE49933C9C1C1C1459366E1A30D
          A6BF58FDC9A4B56D2BC562415E5CBC69E6F075A95378B0853FA9CD0491E08780
          00C6C1F2E0C103668FC5C102EE04243EED661ECC23D9E6BC12B872C39144421E
          D76C1107DC4169F17F85930E02529F33490C8AA69EE998D32CAC60407C20150F
          F7B20B671C206982E613EB0CDA13D3FA9D88D66D606A3095E0364463589F3F77
          8EF12DD0B8F5EDEDEE8E589CA42EF860B43ED6DBAB45C6E94B83DAB4B0B050FA
          F5AF7F9D071CCD73CC6D9C74C234F3ECD9B3BEBB77EF52F7871B5F7FFD751A8E
          3BFD755B9821241F9BE064FE73EB97551B7D8F1624E4BB26D3B37AC89A5B349F
          5DC1587CFCF1C7309DB15B45979DE3C19580AC45518719B26610C200E021F4F6
          64566C6B3911640D83083B2BAE1541A3607EA9226CA60F1F3CD4DA4C7FC33802
          919144B00869C0CB67CF4E37127D8905982ABA7C93EE9D9DF1C9E50E954C264B
          0BA5CEB458381082613A5501AC46230D1AC619302E5CDFA1158A43100101DDDA
          9DF52DC22287B0016B5BFAE0A0133A2CBB44D2C96A32D18AC0EC4ACEA60F6324
          5F07BF8BC3050795F87D86B46061FFC6FB112ECD522709CDC94F408584C3F788
          0962D433313999A71B10D20001E73C5A393E8E79A51B120E323C878321628263
          61BC7A7B7A5A7FF7777F7740B788B6F9A075D206B136AD9035D566FA873FFC61
          8C6E2365FA39D66BD5806175EB14EF5E201BBFA877C6056F83917215A6A52090
          35AC75A4AEBF7DFBD669984319644D96439BB4CEB0F701121093A709613C045E
          DC13279374285DB3AC8993EC7D10C28F7E7EA4FF33E07D9775FFBF9148245E8F
          8E8DC6FBFB076F91D00B969EB7F336DDD840FB6A2A5B2AB938FB005ACF071F5C
          66CE9C208B47BDFA25B4BC70104A104680A4D1E255E82622F3C385D9C6EC6C8D
          BEDF657A2F5D0F58E49D4EB02B5C3859641EE330A6776343C942D395EC05B1DE
          70A90F2F6676744683186561C0801D310A4CCEB7012DD8427EEF62469039AFC4
          B19A7145634D8336DCD3DBDB3A2A167BDF6C6E8EF94ABEC9291A71980A689B28
          10A41FDDBE5D585A5A3A72D2826D0416EB3AFA6516AA5CC109035B6CA6800494
          B05B7868F7E60975263B90B4C48920AAFA001A8C1D9C74FE58D6D4C3F8B3CF7E
          C5F8214E293D93C6B2462DD243D634210CCBB7DF0C136E031C91AC1B07FF8F58
          F127521790350C1880F566B07E80367529EC2C0503D6B6E91F0CEF2D93104664
          C02DFEAF28889A5A1E9F983C1E1E1999A54ACE9FCCB2C2D8C5A0B1293436B218
          1B2C322CA05BB7167DDBB1D4AB1FA291FAB5318746B7B2B222011BBCB5BDC583
          8B3B0DAE54AAA783C1A477E380854922664A0C2AD9C55C4BAAF0804902372433
          13991310D32219E85938E2600BD65E46F50213CC3229BB6382B57A395281AD51
          B3D60ACEE8A9A929C61FFC666B6BF8A850702570077C0D10BA11D282CDE3DA52
          CD26F5FFFDCD3719D8EBBD73991989750059E32C6B96B134C3BE78D60F7D6D5D
          CD6DB7F2136DC421745AA6472154FD42D6043FC4E5CB0BEC303AA582CE804109
          BC120CB2065797A413C2A2552791F8A82CECF2193CFF81EF371840683D5D9E88
          02233C76C2BE49BCEDE643043B6A9D164B069AD0EAA355F177D0545A487A6861
          EF2793C927A3A36391583CBE447D623198DDAC3535BF5545D9DEDE91CDD74CDC
          1CE6E76719018F1F6D588D8C83332EAA69C1C8B3F6FAF5BA045315EA3346AB31
          8C27430E9C64A388C8B50C095468A3D0DE35ED85374DFBD5D447F40BC93615B3
          59C44E33161E4713E7C2B9F3E79589F171A6818738593B36A953D60EC95C276F
          0BC601DAB9C1F9A6DA1F95B9B9398694281F1F475FAFAF8F2B08037666199392
          340E71EE20D4FF1D6DFCFAEBAF33E7CF9FAFFAB1058BEFE94BAD5665B7185778
          A1AB13BCA359822B05BF43E3F7769AF9696DE7FD9C1FE2C4815A767573C89AA3
          4287BEE300F8FCF33B5D9B425C8A0659E32C6B113E3E5D655BFEC5CA098530B6
          F000AD1D5B02F753282C0B33B8019E3F7F26A50F3252341C1E684B8EEF5348B5
          7B489AF0E1582A35410BE14AE7CA14BC63E0C1455605F3A682801171EE206277
          D39AC4D54F10C3081B3CB46038E3F676F73812C1F4761938D49A0262986E05B1
          98DB26DFF4B0C109D21CB587268893EE3D82541E8E430B82813F2B24B899CA92
          6565A0F780C362687858E9894699208619A2AA86EA1A9E779C017A0E87014B3D
          6FF37E8E00399E9999C9A14E9AAF413A7006EDDACB901B340FC343D69CB3B895
          CCCECE567EFBDBDF6661B6E9669CD10DE43DA3835B076FB43ECB9D716EB5B1C3
          85D608D2F8C8D4BF8C2DA7B2A50DDEA608BFFC10DD160159736359C37C2E2D2D
          D1784F770349F32A3AC89AC6B2C65849DF69218C826B84D29D5946668C868A2E
          95D1E9812BD0A09F6932734832C8ED8810482CD0C5E935E099E8E9E9793875E6
          8C428BED43FACE880B1ED8B670010438976CB798201461031C1F1F63AC656E48
          0971F513F5300ACCD547D2F6D6360B5468D41B264DB3F33D084B38E9BA392059
          B6E9C343A4AF97A185F244A34C109BEA536407AC1E9E83034DEF74B275C6D9BC
          7B02C4E8B4E149F029A32323F23ED583E8383B671C7F99DDE0019266C8B26133
          DF307964E9060462F410B4E166A3A17173EABF35323262E14610B492BFFBE69B
          F4D8E868A31B21DCC1A6C3365AD5DA6BA43F566471787BD445076F3D46B7A331
          54496B384BEBB9E24710BB0DA52810C0C249FA360AFAEDC4B206018C8319FC10
          7E23F3BA281CB216DEA51F01596BBEB342585CF530608172045A0BECC220238A
          A9159F4AF3404B093BB7B2B2F240D0215A025DEC5E4593FB9436E5EEE8E868B2
          3716439EB990E40B8A26697CBEDBDBDBD80C5C08CB76EF60CEA21B37AE3BC6BB
          8BAB9FC0C762510209B1BABACA841B30C18E5732593824EB8EA98D9C8A48100A
          C1279BDA333939C9AEE4A67066DBE180F086A9041ABB855342323AE344450C92
          46F50B671CBE872CD3349E2A539C17EFA7D1D9A3D0FB99DDDAA9F70C01128FD7
          E7E7E7D39170B89DCD66FB7675903581D880662E101BFA82B1BD79E346F1C30F
          3F2CDDFDE9A711A98BD58B683124FE54232CDB246C3A61E74A276E42993F77AE
          18EBED6D3BDD9C84D3F1E8E82885A404EA9A0935481B4E4B01CD7DD6C86D95AB
          C40C493B6D41A887ACE99DAF3C225041CE383A0C0D64EDA75C34C81AA8472515
          B2F6EE6AC20C7E4582C06C93ECB298D10A2711C6B8A7DCA7812CC36E0AE715B5
          CF31D0C5E63588975F1E9F9868902006BDE594DDD376728D3BA51452BF4D5AB0
          595954111B03037D0CB26677B223B20E3020FD77608A40FDCF9F3D97BD364093
          7BD04BA5728757D847C1733BBBBB0A0F27D55AAFA8915B521F9001C6AF68B661
          8BD717CE491AFF8AC9CE67E13896D5449DC00743DB11878B1AE8925143953981
          BB57D087DA22268C34A89E4368182BA87B726A8A41D61012BCB9BE3E765CA9F4
          8678D41EFA40DAB8AA99991C647448367FFFFBDFA7E9B6D2BA7BF7EEC89B376F
          124134458D4847CF6DC188803A8256D500272BD7AF5FCBB999AE20A4E886D54F
          87FB904E7821ED7B9E0EF2924F6D583B1B8DD3230BDE6A0B57F0690B628C33E8
          51F590358C017C281F7E78FD97080CE32C6B0CB206B9D4F7CE0A614C0C847050
          463087A2E1768D2FE9AAAE756ACF7AB178C4F2ACF1899CE73FCEFDD1FD4E8B7D
          7D6474749D34B2382D6038E97A9C9E96752600685F301308D62CF7B7E0265166
          903568987A279DC2A150E66824EE94534830C9111FA9D299B0AFD79472A92CCB
          1E7324B46D9852B648F30CE92066BA873AEDE97C669171E217F5FD75A6B97B8D
          3BEA2541C884BCD082B0B680818626DA6B7288994753EF8CAB562ACCE4639E03
          3B61CC6D9DAD73E7CE1DF4F4F6368BC5624C40D6385DA894C0C1D3B185B382F9
          FAECB3CF0EAF5EBD5A86F0A6B686FFFC5FFF8508BC70A84B3B7C8737B9A58D35
          CD496B7171299D48C49BAD967D2011BF8185A105F3343E1D13902CB748801ED0
          A1DEEE16D30B6E8898CDF89B9F3B8DA26759E3B86EB9B737A620655117FC10DD
          160659A3B1AF902C997E2785B0C0F62104F814A3E4709D83CDD6E6EEEFBB0EE6
          8C8357F8F1E327221C12DA2F2069BEA8CB3864AA198E4697E90A7A9C4AA5E668
          22CED92F32232E18985DDA08B2F7A1246B8B0D1AEFAD5B4B063892DDD52FAC86
          EB2A6B4FD74840AA98607F6620D2A0CB250BBDA5E5296E475E5F5F670C5F064E
          06A7A9300A62AB922A75206B4780ACA95866C5AC95311C743CCE8430FB1E1F0B
          0860DCB470F8244918CA5C3B756A0F1346D487920992662E66610CED0ADCC293
          67CE14382FC548219F4FC0292A5248E9FBDB5273BCD5BEF9E61B91E38DA52922
          C131F0646D2DC95256F99819A7F982A3048218ED3A373F5FA003E24847DC6383
          E893617A19425E43CBC1A392EC941289445E1DF740116E72381CE1FC10BEBFD3
          75CF4541B283DDDD3DF00E331CF0871FDE902E5C38E7CA1078CA4585A6C9F206
          CD6BF29D15C2189083FD83D30E5546A6E594E3B07817966919810C5B6FB644C0
          00ECC01381FA27B18DB9475AD0DAC4E4648436E32D5A5C09FB27852DABA4C049
          E91F8E20736DAFCCAE5A7373B3CCE30BD9074CB0FE5A2B04E4EAEA2AB3731AD3
          F8B8BF8ECD55B3098FB9EB28327E880CF8210EAC87881F821B07411C1290351A
          9B364778D86D5498210416993B0655BB34BFB2C759C876DC4E133768DE65D29E
          EB6A966DCB38E88BBEB1DCF4D19E3B772EDDDFD7D7242D3AFAEAD5AB54727050
          366880BC2D3845FEF66FFE26333D3D0D7E88106F33C8D0E53FFDF9CF291AEB28
          CBF8EC6F21D84D1AB30D537F1B8B8B37D374EB51ECCC09AA25436E233513BDD3
          989AC9F4286CC3B4A61A8A6221FC712C821F0234ACC1223CD5FF762F1AD4931A
          3759242CF8FCF33BB22947E0DBB209EB0B3601E06AE9775608E3BAC7B3199F66
          D5C0BFC076EBAEB5DABF12EC35404428E089E0990754EDBABB462A24401E2687
          860E4747472768215EB15B88AA8054A49D1DD51917EC55B2A6F12C2E2E4ABDBD
          3DB604D9D8D05B5B5B8C33D809CCEE268CB97052787611DBCF614A417EBAB69B
          FDD85D2B7634BD0AC81A699716AD52642906FA40982170F5872D9F2105B8D0C6
          DF07491B36D85C4DF8E406F581346E997B5734416B0D70B0F6475153271D4F4E
          4DED410090363D42E3356C3E907003BC74F972E9AB2FBFCC4100EB3F8B44A3ED
          8DF5F5C4FD9595313D6774378B0F36FD0F161632535393C7CD66CBE96AC58602
          0298DA12734381D0FAAD50FF32FAE69804B2DD77102AEF20F09CE4A036AF8104
          B7B980F02A97CB29741369D018283A2DD82DE6E1B48AF01D0352B5F5CE0AE1F4
          7E5AAA37BA238BF12808E098F1354C9D026BFD0364CA8006F5F2C54B2C02D875
          8009EE10C6076C2BD55120A1F880AEAA4A3299B4E571863901FC1074E5F66186
          B01F4B1C68B88A5FBB769525F0349A3958D8AD82DC713CB3AE8FA1B16A81F028
          C32460A751E11D4074E853CB7BBEC59EB3C131920E820D5A764387D6C0C31056
          0804D13BE314A593B65EBC8B5FAB310F4CC9D2B74378930E69D332B38B40A508
          FC1CB4D7B662DF2963F007D8EE1E8523912CDD4EFA9E3D7DBA982F1434ADB6AD
          E6936BC119470747D30C498359006DFEE1871FC6E810898575F9F14498B61720
          5704BB4C4D4DA57FF39BDF648BC562123038D3586AF038BA19F5D10137E227DC
          97045A2691485454C48FB3E94051D336B548D33FA4BE8FB8935A7967DFE8AE60
          2AC2C8CB7700BDD8149DFC3639126453FDEF26448D85E4EE1F04863FF92C7082
          C1861BF37CB2F36A84A63DC3E27DB0F2406854888ABB64FD8EFFF672C7C8DAF0
          F0F01E6DFE2409E445BD1043641C5D1B01A192822010ACEF41704545FAD5AF3E
          05D5A2AC77D24100BC78F102A60ED96F460E3BAD980B7BE5B852311C161C16A4
          6C6C6EF2C76C85ABCD4B6CB5E28EFDC4547043218D8D65FF08E9B460BA6530E6
          348C35B41D41502F98D7349301FF1B4D83D2D3A35E8F651E1E2EFAA6DAE37568
          087D5F147D036DFAC2853909FA42341259A1F1503EFAE8A3F9D5D5D57911C081
          F6D1DF0AB76EDD023F84AD20003B1B09E05E08627589D8537F3AAF053509E9C4
          E4E4F2E5CB97EB7D89C4BC9D10C4B9D46AB543994C26C5B3897BD64B9A6D9D0E
          FB343FE8DCCE8330BD334BEB3E3D303000848020B5B183A248F62ECF1347F8C2
          7AB549FBAB2E524739413E83152BF9BC1701FD3B2784439C488573D7BEAD0258
          985FBE8C1ACDCB72241CA9ADAFAF33621B125CE0858059C35E9007A3CCABF4F5
          F52D835290B41F4342526CF883838CC60F7112A778BDDE805D54A10D2E8B6485
          0CAD902F288F9F3CEE4AC0DB0963D2AC14A4DED10BE28D8D0D0324CDD306EC32
          9EB21D11B224D2B2C9CCCC20320EC3F482C00CF53115A606B3851D0B1C9318FC
          8A3C981C347C002D977D8FC6CDE2AED49B1C14E7BE30BB7322C17E4686865EA7
          52A9373417E17FFDD77F5DDAD9DD4DE0E0A003A3FEF77FFFF769937DD252C01F
          B1BCBC3CB4BEB1D1AF654FF639A6A897DEF386DEF112C4FA2404817840725A03
          360B875A3E9F4FD2C133E0F70686BA690DE7A9CE928B76CBCE1BFAFC0D1D784D
          E81EF43DDC4C3D32E09C7A0831C6390B01ACF2A08438D2E924425850CC18BBF2
          5E0A6170F28A90D4B7F51A49CDA397F4F1EC736AC736E04CBAE48117E9EFD39E
          DFF429D8689218CBDAD9B367E3741D5D02189EA7D8517676762DCEB86E85B16A
          1BBEA94C4E4E6ADAF093C74F78E49AFD58FBC6FFF2C55B57EDA692C8968CC838
          3AB81C6DCD766607FB0011A316A48BA4D3B4632D108487BA33675C2C26958A45
          90EA33D3044293791A2AA7C960F8E9583CC6F0B4CCB9593E968E2B46AE0C273C
          B1887F30C3D4D07F66EA90980A06C7DB8BA9C9C9EDB5A74F27FFDF7FFCC70738
          20FED7575F656766666A4E19334409AB812AE1EFFEF4A754A35E0F877DF215F3
          438686A0B67CE6CC99FA8D1B37304F90E28828D5D2EFF0C8B8281D68E3922405
          3AA0015983360C589E431FD058D8C50B8CB849754C42AB1F957CF1CB9C5818E3
          FD357AE7262253B02718DA4497D7B0FB82E6C3B6DC1BA89DEFA410C6A267D7CA
          B74B5FE90C59EB1496B41458CA9F7FFE996D5EFA1D110EFEF9287C2C605A104D
          5A08CB535353C7F1787C8E7E3F87BF93F0220DB2E2109E1CBCC34825944C0EE0
          1A8CC0051941132F5FBCB40A485DDD10D626BC3F1346E1B091CF57E63A2A63BE
          2B9598271F0BFCF5FABAD2A2DF437A2165EE883E8C57315A1C2C1B59AFF94A5A
          9502B4AA41D6D45C76132CB41888068445F7718E0C045A349C58E084C01C1A62
          7D848900CC6A4E42D18F56ACA6A1EA670E51202B32B99C74EDEAD512CDC3EADC
          DC5CF59FFFF99F17A9BDB15BB76F171FAFAE0EDEB97307442FAE6C6980AC3D7E
          F264E0F1E3C74968EF6EA7B4FEFFE2B1D8D3DCE1E12EBD17A60F119C00662F20
          7CD8FF400B26013C52AD56133A3CB0AF35D6561D90A5A1A1A1BC8D368C45734C
          3F5B3865303F1CAB6E3908BC4BD7C21868931D5A9F10C4B8F2204D14F599E536
          C418C4FCB7C177BBDCEA53DE39218C9249677E09CC1E061DF0B27187CF193F04
          09C41CAEB8483409ED8EFE765D524FED2EDEE8BC90E157A205F97862623C3230
          905CA2EB6F1F8210BC0EA2A0C2189B6E616141B978F102B36F576B55860B169F
          A9C4EAEAB3F81D1165C8766C8E4873DA94211E5A5D2A9719044C4F43EAB7A9CC
          51C5EB81E0825DD7DC61E1A4E2F51ACC137AE12504A81EFD8083057F771A3CC1
          AF0CDEE1023D57AFD75C85905B941DC365477BB4B0E422AB8F85B94BBFFFFDEF
          37E9F757BBBBBBC96BD7AE9DA1833EB9BDB3135BBC79338F0C1AA4B11A521319
          C639C40E08F94FA40DD358471DC75877989170CC47C2E18734BE6D04895CBD7A
          551C2EF8326E7671D88BE90616A3836CCC0B86E752149AB334ADE7BACEC721FE
          4502E063467EDF11C2F83BD88B406A1320642DB020463F41B6BF4D3FB04543A1
          DA44D672D51F2243289FE9A6E22EDBA6E285DF4521BCBFB7FF4B45AEB8651401
          3FC463080250E095D42B76105BB273B14952C9AFAC8FE83A9A999C9C4C3D79B2
          7655250572AA44F57B08AFAEDFFD21040C1C4D3BDBDB9A162C085C58C6631152
          CB82135AD2FAFA06E3A2D0380FFCB9A58D64ED7E1D72EA0BB4250C8D0D812540
          5FE04737200ADDAB65E189D7D7CB0E094E9559E3985EC15436D0DFCF3C25984F
          0DF267A2A1645344BFE3AA0CA63A73C39D4CB6566D5461400B12FE0AECD3705A
          2238843BE164981EAE5EBBF6B8D96814E860B8B8BABA3A8D76D3B3AD2F7EF39B
          033A80DA6E61B4D086373636E2F7EEDD1B0DF183CBA92D205223C1FB90FA95C7
          C1865B01089E745871444C9CE1C44863C0067B05DF3815C699118B5548106775
          4218F354A09F3DB1864C42583B08A4C09AA86F8107057C135187FC5D8C50877E
          7670F320418CF57406E755F03674D5B6774F080BCE0338E5DE1693924DB183AC
          410D5F013F04840FD2FC7001846B9B5F830F4F4DAF1603572B3CF431A34F2F04
          028A48F4686464244737A3391223E7C20E68057F0257DCD28D0F63D12376FE1F
          FFF11F99B34C08613311B8A126FA0CDA9BDF827E9E397B56F93FFFF00F3234C0
          C0296220FCE93B08B7BE74E992C0E12AC2508A3EAC3E7E8C083279726222D412
          F85FDEDB108FB8CC93162EEB068C71F632F4430FCC25C0156B74628AC92C025C
          2F1C7C74607141AD7D62182EF3082B2AF68DD7A192240D207B08BD0F194A9872
          A1C2C4E4B1D1D1EA9D3B77F676767676D79E3EFDB051AFB3D031B4EDFC850B47
          A41117BC9279625D7EFFFDF7A32438634889641846FE2FEAA3C36C1FA453FBFC
          7605F3C8A79F7C62C8AD474268920EAE33D4CE41EF1B98375A82D67296FA5F01
          9C535235DC37929A89DD4E08A34029125CDC010580E7E330B4E7686DA6E108A4
          1F21ECD13624252E411BA67EE3EF336259046B43E0B63194C6FF07E9F7DC328A
          94697E0000000049454E44AE426082}
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
    Left = 640
    Top = 316
  end
end
