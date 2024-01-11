object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'StyleControls VCL - Modern Application Demo'
  ClientHeight = 720
  ClientWidth = 941
  Color = clBtnFace
  Constraints.MinHeight = 700
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Touch.ParentTabletOptions = False
  Touch.TabletOptions = [toPressAndHold, toPenTapFeedback]
  StyleElements = [seFont]
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BorderPanel: TscGPPanel
    Left = 0
    Top = 0
    Width = 941
    Height = 720
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
    FrameColor = clBlack
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
    Caption = 'BorderPanel'
    TransparentBackground = False
    StorePaintBuffer = True
    Sizeable = False
    WallpaperIndex = -1
    WordWrap = False
    object ClientPanel: TscPanel
      Left = 224
      Top = 0
      Width = 717
      Height = 720
      Align = alClient
      FluentUIOpaque = True
      TabOrder = 0
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
      Color = 15196638
      Caption = 'ClientPanel'
      StorePaintBuffer = False
      WordWrap = False
      object scGPPanel15: TscGPPanel
        Left = 0
        Top = 55
        Width = 717
        Height = 55
        Margins.Left = 10
        Margins.Right = 10
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
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
        FrameSides = [gppfsBottom]
        FillGradientAngle = 90
        FillGradientBeginAlpha = 255
        FillGradientEndAlpha = 255
        FillGradientBeginColorOffset = 25
        FillGradientEndColorOffset = 25
        FrameWidth = 1
        FillColor = clWhite
        FillColorAlpha = 255
        FillColor2 = clNone
        FrameColor = 15987441
        FrameColorAlpha = 100
        FrameRadius = 0
        ScaleFrameWidth = False
        ShowCaption = True
        CaptionGlowEffect.Enabled = False
        CaptionGlowEffect.Color = clBtnShadow
        CaptionGlowEffect.AlphaValue = 255
        CaptionGlowEffect.GlowSize = 7
        CaptionGlowEffect.Offset = 0
        CaptionGlowEffect.Intensive = True
        CaptionGlowEffect.StyleColors = True
        Alignment = taLeftJustify
        Color = clBtnFace
        TransparentBackground = False
        StorePaintBuffer = True
        Sizeable = False
        WallpaperIndex = -1
        WordWrap = False
        object PageLabel: TscLabel
          AlignWithMargins = True
          Left = 20
          Top = 0
          Width = 205
          Height = 54
          Margins.Left = 20
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5128250
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          StyleElements = [seClient, seBorder]
          DragForm = False
          DragTopForm = False
          GlowEffect.Enabled = False
          GlowEffect.Color = clBtnShadow
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 2
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          AutoSize = False
          VertAlignment = scvtaCenter
          ShowEllipsis = True
          UseFontColorToStyleColor = False
          Caption = 'SETTINGS'
        end
      end
      object scGPPanel2: TscGPPanel
        Left = 0
        Top = 0
        Width = 717
        Height = 55
        Align = alTop
        FluentUIOpaque = False
        TabOrder = 1
        OnDblClick = CaptionLabelDblClick
        OnMouseDown = CaptionLabelMouseDown
        OnMouseMove = CaptionLabelMouseMove
        OnMouseUp = CaptionLabelMouseUp
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
        FrameSides = [gppfsBottom]
        FillGradientAngle = 90
        FillGradientBeginAlpha = 255
        FillGradientEndAlpha = 255
        FillGradientBeginColorOffset = 25
        FillGradientEndColorOffset = 25
        FrameWidth = 2
        FillColor = clWhite
        FillColorAlpha = 255
        FillColor2 = clNone
        FrameColor = 15987441
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
        TransparentBackground = False
        StorePaintBuffer = True
        Sizeable = False
        WallpaperIndex = -1
        WordWrap = False
        object CloseButton: TscGPGlyphButton
          AlignWithMargins = True
          Left = 670
          Top = 8
          Width = 37
          Height = 37
          Margins.Left = 4
          Margins.Top = 8
          Margins.Right = 10
          Margins.Bottom = 8
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
          Options.HotColor = clRed
          Options.PressedColor = clRed
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
          Options.ShapeStyle = scgpRounded
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
          GlyphOptions.NormalColor = clBtnText
          GlyphOptions.HotColor = clWhite
          GlyphOptions.PressedColor = clWhite
          GlyphOptions.FocusedColor = clWhite
          GlyphOptions.DisabledColor = clBtnText
          GlyphOptions.NormalColorAlpha = 255
          GlyphOptions.HotColorAlpha = 255
          GlyphOptions.PressedColorAlpha = 255
          GlyphOptions.FocusedColorAlpha = 255
          GlyphOptions.DisabledColorAlpha = 100
          GlyphOptions.Kind = scgpbgkClose
          GlyphOptions.Thickness = 2
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
        object MinButton: TscGPGlyphButton
          AlignWithMargins = True
          Left = 580
          Top = 8
          Width = 37
          Height = 37
          Margins.Left = 4
          Margins.Top = 8
          Margins.Right = 4
          Margins.Bottom = 8
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
          Options.NormalColor = clBlack
          Options.HotColor = clBtnText
          Options.PressedColor = clBtnText
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
          Options.HotColor2Alpha = 100
          Options.PressedColor2Alpha = 0
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
          Options.ShapeStyle = scgpRounded
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
          GlyphOptions.NormalColor = clBtnText
          GlyphOptions.HotColor = clBtnText
          GlyphOptions.PressedColor = clBtnText
          GlyphOptions.FocusedColor = clBtnText
          GlyphOptions.DisabledColor = clBtnText
          GlyphOptions.NormalColorAlpha = 200
          GlyphOptions.HotColorAlpha = 255
          GlyphOptions.PressedColorAlpha = 255
          GlyphOptions.FocusedColorAlpha = 255
          GlyphOptions.DisabledColorAlpha = 100
          GlyphOptions.Kind = scgpbgkMinimize
          GlyphOptions.Thickness = 2
          GlyphOptions.ThicknessScaled = False
          GlyphOptions.Size = 16
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
        object CaptionLabel: TscLabel
          AlignWithMargins = True
          Left = 20
          Top = 0
          Width = 556
          Height = 53
          Margins.Left = 20
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 2827296
          Font.Height = -28
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 2
          StyleElements = [seClient, seBorder]
          OnDblClick = CaptionLabelDblClick
          OnMouseDown = CaptionLabelMouseDown
          OnMouseMove = CaptionLabelMouseMove
          OnMouseUp = CaptionLabelMouseUp
          DragForm = True
          DragTopForm = True
          GlowEffect.Enabled = False
          GlowEffect.Color = clBtnShadow
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 2
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          AutoSize = False
          VertAlignment = scvtaCenter
          ShowEllipsis = True
          UseFontColorToStyleColor = False
          Caption = 'Fluent UI - MultiPage - Demo'
        end
        object MaxButton: TscGPGlyphButton
          AlignWithMargins = True
          Left = 625
          Top = 8
          Width = 37
          Height = 37
          Margins.Left = 4
          Margins.Top = 8
          Margins.Right = 4
          Margins.Bottom = 8
          Align = alRight
          FluentUIOpaque = False
          TabOrder = 3
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
          Options.NormalColor = clBlack
          Options.HotColor = clBtnText
          Options.PressedColor = clBtnText
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
          Options.HotColor2Alpha = 100
          Options.PressedColor2Alpha = 0
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
          Options.ShapeStyle = scgpRounded
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
          GlyphOptions.NormalColor = clBtnText
          GlyphOptions.HotColor = clBtnText
          GlyphOptions.PressedColor = clBtnText
          GlyphOptions.FocusedColor = clBtnText
          GlyphOptions.DisabledColor = clBtnText
          GlyphOptions.NormalColorAlpha = 200
          GlyphOptions.HotColorAlpha = 255
          GlyphOptions.PressedColorAlpha = 255
          GlyphOptions.FocusedColorAlpha = 255
          GlyphOptions.DisabledColorAlpha = 100
          GlyphOptions.Kind = scgpbgkMaximizeRect
          GlyphOptions.Thickness = 2
          GlyphOptions.ThicknessScaled = False
          GlyphOptions.Size = 15
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
      object scGPPanel3: TscGPPanel
        Left = 0
        Top = 668
        Width = 717
        Height = 52
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
        FrameSides = [gppfsTop]
        FillGradientAngle = 90
        FillGradientBeginAlpha = 255
        FillGradientEndAlpha = 255
        FillGradientBeginColorOffset = 25
        FillGradientEndColorOffset = 25
        FrameWidth = 2
        FillColor = clWhite
        FillColorAlpha = 255
        FillColor2 = clNone
        FrameColor = clBlack
        FrameColorAlpha = 40
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
        Caption = 'scGPPanel3'
        TransparentBackground = False
        StorePaintBuffer = True
        Sizeable = False
        WallpaperIndex = -1
        WordWrap = False
        object scGPSizeBox1: TscGPSizeBox
          Left = 682
          Top = 2
          Width = 35
          Height = 50
          Cursor = crSizeNWSE
          Align = alRight
          FluentUIOpaque = False
          TabOrder = 0
          GlyphColor = clBtnText
          GlyphColorAlpha = 0
          GlyphThickness = 1
        end
        object scLabel3: TscLabel
          AlignWithMargins = True
          Left = 15
          Top = 2
          Width = 254
          Height = 46
          Margins.Left = 15
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 4
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5128250
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          StyleElements = [seClient, seBorder]
          DragForm = False
          DragTopForm = True
          GlowEffect.Enabled = False
          GlowEffect.Color = clBtnShadow
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 2
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          AutoSize = False
          VertAlignment = scvtaCenter
          ShowEllipsis = True
          UseFontColorToStyleColor = False
          Caption = 'ClientPanel.FluentUIOpaque = True'
        end
      end
      object scPageViewer1: TscPageViewer
        Left = 0
        Top = 123
        Width = 717
        Height = 545
        Align = alClient
        FluentUIOpaque = False
        TabOrder = 3
        PageIndex = 0
        Pages = <
          item
            Page = scPageViewerPage1
          end
          item
            Page = scPageViewerPage2
          end
          item
            Page = scPageViewerPage3
          end
          item
            Page = scPageViewerPage4
          end
          item
            Page = scPageViewerPage5
          end
          item
            Page = scPageViewerPage6
          end>
        ActivePage = scPageViewerPage1
        object scPageViewerPage2: TscPageViewerPage
          Left = 0
          Top = 0
          Width = 717
          Height = 545
          HorzScrollBar.Tracking = True
          VertScrollBar.Tracking = True
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          Color = 15196638
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
          FullUpdate = False
          FluentUIOpaque = False
          StorePaintBuffer = True
          MouseWheelSupport = False
          BackgroundStyle = scsbsPanel
        end
        object scPageViewerPage3: TscPageViewerPage
          Left = 0
          Top = 0
          Width = 717
          Height = 545
          HorzScrollBar.Tracking = True
          VertScrollBar.Tracking = True
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          Color = 15196638
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
          FullUpdate = False
          FluentUIOpaque = False
          StorePaintBuffer = True
          MouseWheelSupport = False
          BackgroundStyle = scsbsPanel
        end
        object scPageViewerPage4: TscPageViewerPage
          Left = 0
          Top = 0
          Width = 717
          Height = 545
          HorzScrollBar.Tracking = True
          VertScrollBar.Tracking = True
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          Color = 15196638
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          Visible = False
          WallpaperIndex = -1
          CustomBackgroundImageIndex = -1
          FullUpdate = False
          FluentUIOpaque = False
          StorePaintBuffer = True
          MouseWheelSupport = False
          BackgroundStyle = scsbsPanel
        end
        object scPageViewerPage5: TscPageViewerPage
          Left = 0
          Top = 0
          Width = 717
          Height = 545
          HorzScrollBar.Tracking = True
          VertScrollBar.Tracking = True
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          Color = 15196638
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
          Visible = False
          WallpaperIndex = -1
          CustomBackgroundImageIndex = -1
          FullUpdate = False
          FluentUIOpaque = False
          StorePaintBuffer = True
          MouseWheelSupport = False
          BackgroundStyle = scsbsPanel
        end
        object scPageViewerPage6: TscPageViewerPage
          Left = 0
          Top = 0
          Width = 717
          Height = 545
          HorzScrollBar.Tracking = True
          VertScrollBar.Tracking = True
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          Color = 15196638
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          Visible = False
          WallpaperIndex = -1
          CustomBackgroundImageIndex = -1
          FullUpdate = False
          FluentUIOpaque = False
          StorePaintBuffer = True
          MouseWheelSupport = False
          BackgroundStyle = scsbsPanel
        end
        object scPageViewerPage1: TscPageViewerPage
          Left = 0
          Top = 0
          Width = 717
          Height = 545
          HorzScrollBar.Tracking = True
          VertScrollBar.Tracking = True
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          Color = 15196638
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
          FullUpdate = False
          FluentUIOpaque = False
          StorePaintBuffer = True
          MouseWheelSupport = False
          BackgroundStyle = scsbsPanel
          object scGPPanel6: TscGPPanel
            Left = 28
            Top = 18
            Width = 413
            Height = 278
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
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
            FillColor = clWhite
            FillColorAlpha = 255
            FillColor2 = clNone
            FrameColor = clWhite
            FrameColorAlpha = 255
            FrameRadius = 5
            ShowCaption = False
            CaptionGlowEffect.Enabled = False
            CaptionGlowEffect.Color = clBtnShadow
            CaptionGlowEffect.AlphaValue = 255
            CaptionGlowEffect.GlowSize = 7
            CaptionGlowEffect.Offset = 0
            CaptionGlowEffect.Intensive = True
            CaptionGlowEffect.StyleColors = True
            Color = clWhite
            Caption = 'scGPPanel6'
            TransparentBackground = True
            StorePaintBuffer = True
            Sizeable = False
            WallpaperIndex = -1
            WordWrap = False
            object scGPPanel7: TscGPPanel
              Left = 0
              Top = 0
              Width = 413
              Height = 41
              Align = alTop
              FluentUIOpaque = False
              TabOrder = 3
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
              FrameSides = [gppfsLeft, gppfsTop, gppfsRight]
              FillGradientAngle = 90
              FillGradientBeginAlpha = 255
              FillGradientEndAlpha = 255
              FillGradientBeginColorOffset = 25
              FillGradientEndColorOffset = 25
              FrameWidth = 2
              FillColor = 15920876
              FillColorAlpha = 255
              FillColor2 = clNone
              FrameColor = clWhite
              FrameColorAlpha = 255
              FrameRadius = 5
              ShowCaption = False
              CaptionGlowEffect.Enabled = False
              CaptionGlowEffect.Color = clBtnShadow
              CaptionGlowEffect.AlphaValue = 255
              CaptionGlowEffect.GlowSize = 7
              CaptionGlowEffect.Offset = 0
              CaptionGlowEffect.Intensive = True
              CaptionGlowEffect.StyleColors = True
              Alignment = taLeftJustify
              Color = 15920876
              TransparentBackground = True
              StorePaintBuffer = True
              Sizeable = False
              WallpaperIndex = -1
              WordWrap = False
              object scLabel1: TscLabel
                AlignWithMargins = True
                Left = 19
                Top = 4
                Width = 206
                Height = 33
                Margins.Left = 15
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 4
                Align = alLeft
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 5128250
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FluentUIOpaque = False
                TabOrder = 0
                StyleElements = [seClient, seBorder]
                DragForm = False
                DragTopForm = True
                GlowEffect.Enabled = False
                GlowEffect.Color = clBtnShadow
                GlowEffect.AlphaValue = 255
                GlowEffect.GlowSize = 7
                GlowEffect.Offset = 2
                GlowEffect.Intensive = True
                GlowEffect.StyleColors = True
                AutoSize = False
                VertAlignment = scvtaCenter
                ShowEllipsis = True
                UseFontColorToStyleColor = False
                Caption = 'Fluent UI Background'
              end
            end
            object scGPRadioButton1: TscGPRadioButton
              Left = 27
              Top = 65
              Width = 158
              Height = 35
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FluentUIOpaque = False
              TabOrder = 0
              TabStop = True
              OnClick = scGPRadioButton1Click
              Animation = False
              Caption = 'Acrylic Blur'
              CanFocused = True
              DrawTextMode = scdtmGDI
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
              Options.ShapeCornerRadius = 0
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
              OptionsChecked.ShapeCornerRadius = 0
              OptionsChecked.CheckMarkThickness = 2
              OptionsChecked.StyleColors = True
              ImageGlow = True
              Checked = True
              ScaleFrameWidth = True
              ShowFocusRect = True
              UseFontColorToStyleColor = False
            end
            object scGPRadioButton2: TscGPRadioButton
              Left = 27
              Top = 118
              Width = 158
              Height = 35
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FluentUIOpaque = False
              TabOrder = 1
              TabStop = True
              OnClick = scGPRadioButton2Click
              Animation = False
              Caption = 'Blur'
              CanFocused = True
              DrawTextMode = scdtmGDI
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
              Options.ShapeCornerRadius = 0
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
              OptionsChecked.ShapeCornerRadius = 0
              OptionsChecked.CheckMarkThickness = 2
              OptionsChecked.StyleColors = True
              ImageGlow = True
              Checked = False
              ScaleFrameWidth = True
              ShowFocusRect = True
              UseFontColorToStyleColor = False
            end
            object scGPRadioButton3: TscGPRadioButton
              Left = 27
              Top = 174
              Width = 110
              Height = 35
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FluentUIOpaque = False
              TabOrder = 2
              TabStop = True
              OnClick = scGPRadioButton3Click
              Animation = False
              Caption = 'None'
              CanFocused = True
              DrawTextMode = scdtmGDI
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
              Options.ShapeCornerRadius = 0
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
              OptionsChecked.ShapeCornerRadius = 0
              OptionsChecked.CheckMarkThickness = 2
              OptionsChecked.StyleColors = True
              ImageGlow = True
              Checked = False
              ScaleFrameWidth = True
              ShowFocusRect = True
              UseFontColorToStyleColor = False
            end
            object scGPCheckBox1: TscGPCheckBox
              Left = 27
              Top = 231
              Width = 150
              Height = 35
              FluentUIOpaque = False
              TabOrder = 4
              TabStop = True
              OnClick = scGPCheckBox1Click
              Animation = False
              Caption = 'Fluent UI Border'
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
              DrawTextMode = scdtmGDI
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
              Options.ShapeCornerRadius = 0
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
              OptionsChecked.ShapeCornerRadius = 0
              OptionsChecked.CheckMarkThickness = 2
              OptionsChecked.StyleColors = True
              Checked = True
              State = cbChecked
              ScaleFrameWidth = True
              ScaleCheckMarkThickness = True
              ShowFocusRect = True
              UseFontColorToStyleColor = False
            end
            object scLabel5: TscLabel
              Left = 210
              Top = 118
              Width = 174
              Height = 70
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBtnText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              FluentUIOpaque = False
              TabOrder = 5
              DragForm = False
              DragTopForm = True
              GlowEffect.Enabled = False
              GlowEffect.Color = clBtnShadow
              GlowEffect.AlphaValue = 255
              GlowEffect.GlowSize = 7
              GlowEffect.Offset = 0
              GlowEffect.Intensive = True
              GlowEffect.StyleColors = True
              AutoSize = False
              WordWrap = True
              UseFontColorToStyleColor = True
              Caption = 
                'Set TscStyledForm.FluentUI... properties to adjust Fluent UI bac' +
                'kground!'
            end
          end
          object scLabel2: TscLabel
            Left = 30
            Top = 335
            Width = 397
            Height = 65
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            FluentUIOpaque = False
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
            AutoSize = False
            WordWrap = True
            UseFontColorToStyleColor = True
            Caption = 
              'On Fluent background used TscGP...(GDI+) controls with DrawTextM' +
              'ode = scdtmGDIPlus'
          end
          object scLabel4: TscLabel
            Left = 30
            Top = 432
            Width = 397
            Height = 81
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            FluentUIOpaque = False
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
            AutoSize = False
            WordWrap = True
            UseFontColorToStyleColor = True
            Caption = 
              'Use FluentUIOpaque property of the controls to get opaque area o' +
              'n the form. You can place any third-party controls on them!'
          end
          object scGPButton1: TscGPButton
            Left = 464
            Top = 20
            Width = 201
            Height = 35
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 3
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
            Caption = 'Show second form'
            CaptionCenterAlignment = False
            CanFocused = True
            CustomDropDown = False
            DrawTextMode = scdtmGDI
            Margin = -1
            Spacing = 1
            Layout = blGlyphLeft
            ImageIndex = -1
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = 15920876
            Options.HotColor = 16118513
            Options.PressedColor = 14471371
            Options.FocusedColor = 15920876
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
            Options.FrameNormalColor = clBtnShadow
            Options.FrameHotColor = clHighlight
            Options.FramePressedColor = clHighlight
            Options.FrameFocusedColor = clHighlight
            Options.FrameDisabledColor = clBtnShadow
            Options.FrameWidth = 2
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
          object scGPButton2: TscGPButton
            Left = 464
            Top = 95
            Width = 201
            Height = 35
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 4
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
            Caption = 'Show Info Message'
            CaptionCenterAlignment = False
            CanFocused = True
            CustomDropDown = False
            DrawTextMode = scdtmGDI
            Margin = -1
            Spacing = 1
            Layout = blGlyphLeft
            ImageIndex = -1
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = 16770222
            Options.HotColor = 16772294
            Options.PressedColor = 16763742
            Options.FocusedColor = 16770222
            Options.DisabledColor = 16770222
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
            Options.FrameNormalColor = clBtnShadow
            Options.FrameHotColor = clHighlight
            Options.FramePressedColor = clHighlight
            Options.FrameFocusedColor = clHighlight
            Options.FrameDisabledColor = clBtnShadow
            Options.FrameWidth = 2
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
          object scGPButton3: TscGPButton
            Left = 464
            Top = 144
            Width = 201
            Height = 35
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 5
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
            Caption = 'Show Question Message'
            CaptionCenterAlignment = False
            CanFocused = True
            CustomDropDown = False
            DrawTextMode = scdtmGDI
            Margin = -1
            Spacing = 1
            Layout = blGlyphLeft
            ImageIndex = -1
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = 12582847
            Options.HotColor = 14155735
            Options.PressedColor = 5635925
            Options.FocusedColor = 12582847
            Options.DisabledColor = 12582847
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
            Options.FrameNormalColor = clBtnShadow
            Options.FrameHotColor = clHighlight
            Options.FramePressedColor = clHighlight
            Options.FrameFocusedColor = clHighlight
            Options.FrameDisabledColor = clBtnShadow
            Options.FrameWidth = 2
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
          object scGPButton4: TscGPButton
            Left = 464
            Top = 192
            Width = 201
            Height = 35
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 6
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
            Caption = 'Show Error Message'
            CaptionCenterAlignment = False
            CanFocused = True
            CustomDropDown = False
            DrawTextMode = scdtmGDI
            Margin = -1
            Spacing = 1
            Layout = blGlyphLeft
            ImageIndex = -1
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = 12698111
            Options.HotColor = 13816575
            Options.PressedColor = 10329599
            Options.FocusedColor = 12698111
            Options.DisabledColor = 12698111
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
            Options.FrameNormalColor = clBtnShadow
            Options.FrameHotColor = clHighlight
            Options.FramePressedColor = clHighlight
            Options.FrameFocusedColor = clHighlight
            Options.FrameDisabledColor = clBtnShadow
            Options.FrameWidth = 2
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
        end
      end
      object scPanel4: TscPanel
        Left = 0
        Top = 110
        Width = 717
        Height = 13
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 2
        Margins.Bottom = 0
        Align = alTop
        FluentUIOpaque = False
        TabOrder = 4
        CustomImageIndex = -1
        DragForm = False
        DragTopForm = True
        StyleKind = scpsTransparent
        ShowCaption = False
        BorderStyle = scpbsNone
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
        Caption = 'scPanel4'
        StorePaintBuffer = False
        WordWrap = False
      end
    end
    object scGPPanel4: TscGPPanel
      Left = 0
      Top = 0
      Width = 224
      Height = 720
      Align = alLeft
      FluentUIOpaque = False
      TabOrder = 1
      BlurBackground = False
      BlurBackgroundAmount = 5
      BackgroundStyle = gppbsColor
      ContentMarginLeft = 0
      ContentMarginRight = 0
      ContentMarginTop = 0
      ContentMarginBottom = 0
      CustomImages = scGPImageCollection1
      CustomImageIndex = 2
      DragForm = False
      DragTopForm = True
      DrawTextMode = scdtmGDI
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FrameWidth = 0
      FillColor = 2827296
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
      Color = 2827296
      Caption = 'scGPPanel1'
      TransparentBackground = True
      StorePaintBuffer = True
      Sizeable = False
      WallpaperIndex = -1
      WordWrap = False
      object scGPCharGlyphButton1: TscGPCharGlyphButton
        Left = 0
        Top = 670
        Width = 224
        Height = 50
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 6
        OnClick = scGPCharGlyphButton1Click
        Animation = False
        Badge.Color = clRed
        Badge.ColorAlpha = 255
        Badge.Font.Charset = DEFAULT_CHARSET
        Badge.Font.Color = clWhite
        Badge.Font.Height = -11
        Badge.Font.Name = 'Tahoma'
        Badge.Font.Style = [fsBold]
        Badge.Visible = False
        Caption = 'CLOSE'
        CaptionCenterAlignment = False
        CanFocused = False
        CustomDropDown = False
        DrawTextMode = scdtmGDIPlus
        FluentLightEffect = True
        Layout = blGlyphLeft
        TransparentBackground = True
        Options.NormalColor = clWhite
        Options.HotColor = clHighlightText
        Options.PressedColor = clBlack
        Options.FocusedColor = clHighlightText
        Options.DisabledColor = clHighlightText
        Options.NormalColor2 = clNone
        Options.HotColor2 = clNone
        Options.PressedColor2 = clNone
        Options.FocusedColor2 = clNone
        Options.DisabledColor2 = clNone
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 15
        Options.PressedColorAlpha = 70
        Options.FocusedColorAlpha = 0
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
        Options.FrameDisabledColor = clHighlightText
        Options.FrameWidth = 1
        Options.FrameNormalColorAlpha = 0
        Options.FrameHotColorAlpha = 0
        Options.FramePressedColorAlpha = 0
        Options.FrameFocusedColorAlpha = 0
        Options.FrameDisabledColorAlpha = 0
        Options.FontNormalColor = clHighlightText
        Options.FontHotColor = clHighlightText
        Options.FontPressedColor = clHighlightText
        Options.FontFocusedColor = clHighlightText
        Options.FontDisabledColor = clHighlightText
        Options.ShapeFillGradientAngle = 0
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
        GlyphOptions.Index = 17
        GlyphOptions.Margin = 0
        GlyphOptions.Size = 24
        GlyphOptions.StyleColors = True
        TextMargin = 0
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
        GroupIndex = 0
        AllowAllUp = False
        WordWrap = False
        ToggleMode = False
      end
      object scGPCharGlyphButton2: TscGPCharGlyphButton
        Tag = 1
        Left = 0
        Top = 135
        Width = 224
        Height = 50
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 1
        OnClick = scGPCharGlyphButton3Click
        Animation = False
        Badge.Color = clRed
        Badge.ColorAlpha = 255
        Badge.Font.Charset = DEFAULT_CHARSET
        Badge.Font.Color = clWhite
        Badge.Font.Height = -11
        Badge.Font.Name = 'Tahoma'
        Badge.Font.Style = [fsBold]
        Badge.Visible = False
        Caption = 'SEARCH'
        CaptionCenterAlignment = False
        CanFocused = False
        CustomDropDown = False
        DrawTextMode = scdtmGDIPlus
        FluentLightEffect = True
        Layout = blGlyphLeft
        TransparentBackground = True
        Options.NormalColor = clWhite
        Options.HotColor = clHighlightText
        Options.PressedColor = clBlack
        Options.FocusedColor = clHighlightText
        Options.DisabledColor = clHighlightText
        Options.NormalColor2 = clNone
        Options.HotColor2 = clNone
        Options.PressedColor2 = clNone
        Options.FocusedColor2 = clNone
        Options.DisabledColor2 = clNone
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 15
        Options.PressedColorAlpha = 70
        Options.FocusedColorAlpha = 0
        Options.DisabledColorAlpha = 255
        Options.NormalColor2Alpha = 255
        Options.HotColor2Alpha = 255
        Options.PressedColor2Alpha = 255
        Options.FocusedColor2Alpha = 255
        Options.DisabledColor2Alpha = 255
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = 16093773
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clWhite
        Options.FrameWidth = 4
        Options.FrameNormalColorAlpha = 0
        Options.FrameHotColorAlpha = 0
        Options.FramePressedColorAlpha = 255
        Options.FrameFocusedColorAlpha = 0
        Options.FrameDisabledColorAlpha = 0
        Options.FontNormalColor = clWhite
        Options.FontHotColor = clWhite
        Options.FontPressedColor = clWhite
        Options.FontFocusedColor = clWhite
        Options.FontDisabledColor = clWhite
        Options.ShapeFillGradientAngle = 0
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeFillGradientColorOffset = 25
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpLeftLine
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
        Options.PressedHotColors = True
        GlyphOptions.NormalColor = clHighlightText
        GlyphOptions.HotColor = clHighlightText
        GlyphOptions.PressedColor = clHighlightText
        GlyphOptions.FocusedColor = clHighlightText
        GlyphOptions.DisabledColor = clHighlightText
        GlyphOptions.NormalColorAlpha = 200
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Index = 2
        GlyphOptions.Margin = 0
        GlyphOptions.Size = 24
        GlyphOptions.StyleColors = True
        TextMargin = 0
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
      object scGPCharGlyphButton5: TscGPCharGlyphButton
        Tag = 4
        Left = 0
        Top = 285
        Width = 224
        Height = 50
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 4
        OnClick = scGPCharGlyphButton3Click
        Animation = False
        Badge.Color = clRed
        Badge.ColorAlpha = 255
        Badge.Font.Charset = DEFAULT_CHARSET
        Badge.Font.Color = clWhite
        Badge.Font.Height = -11
        Badge.Font.Name = 'Tahoma'
        Badge.Font.Style = [fsBold]
        Badge.Visible = False
        Caption = 'REPORTS'
        CaptionCenterAlignment = False
        CanFocused = False
        CustomDropDown = False
        DrawTextMode = scdtmGDIPlus
        FluentLightEffect = True
        Layout = blGlyphLeft
        TransparentBackground = True
        Options.NormalColor = clWhite
        Options.HotColor = clHighlightText
        Options.PressedColor = clBlack
        Options.FocusedColor = clHighlightText
        Options.DisabledColor = clHighlightText
        Options.NormalColor2 = clNone
        Options.HotColor2 = clNone
        Options.PressedColor2 = clNone
        Options.FocusedColor2 = clNone
        Options.DisabledColor2 = clNone
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 15
        Options.PressedColorAlpha = 70
        Options.FocusedColorAlpha = 0
        Options.DisabledColorAlpha = 255
        Options.NormalColor2Alpha = 255
        Options.HotColor2Alpha = 255
        Options.PressedColor2Alpha = 255
        Options.FocusedColor2Alpha = 255
        Options.DisabledColor2Alpha = 255
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = 16093773
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clWhite
        Options.FrameWidth = 4
        Options.FrameNormalColorAlpha = 0
        Options.FrameHotColorAlpha = 0
        Options.FramePressedColorAlpha = 255
        Options.FrameFocusedColorAlpha = 0
        Options.FrameDisabledColorAlpha = 0
        Options.FontNormalColor = clWhite
        Options.FontHotColor = clWhite
        Options.FontPressedColor = clWhite
        Options.FontFocusedColor = clWhite
        Options.FontDisabledColor = clWhite
        Options.ShapeFillGradientAngle = 0
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeFillGradientColorOffset = 25
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpLeftLine
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
        Options.PressedHotColors = True
        GlyphOptions.NormalColor = clHighlightText
        GlyphOptions.HotColor = clHighlightText
        GlyphOptions.PressedColor = clHighlightText
        GlyphOptions.FocusedColor = clHighlightText
        GlyphOptions.DisabledColor = clHighlightText
        GlyphOptions.NormalColorAlpha = 200
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Index = 510
        GlyphOptions.Margin = 0
        GlyphOptions.Size = 24
        GlyphOptions.StyleColors = True
        TextMargin = 0
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
        WordWrap = False
        ToggleMode = False
      end
      object scGPPanel11: TscGPPanel
        Left = 0
        Top = 0
        Width = 224
        Height = 55
        Align = alTop
        FluentUIOpaque = False
        TabOrder = 7
        OnDblClick = CaptionLabelDblClick
        OnMouseDown = CaptionLabelMouseDown
        OnMouseMove = CaptionLabelMouseMove
        OnMouseUp = CaptionLabelMouseDown
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
        FillColor = 1709331
        FillColorAlpha = 0
        FillColor2 = clNone
        FrameColor = clBtnShadow
        FrameColorAlpha = 0
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
        Caption = 'scGPPanel11'
        TransparentBackground = True
        StorePaintBuffer = True
        Sizeable = False
        WallpaperIndex = -1
        WordWrap = False
        object scGPImage1: TscGPImage
          Left = 25
          Top = 5
          Width = 166
          Height = 47
          FluentUIOpaque = False
          TabOrder = 0
          OnDblClick = CaptionLabelDblClick
          OnMouseDown = CaptionLabelMouseDown
          OnMouseMove = CaptionLabelMouseMove
          OnMouseUp = CaptionLabelMouseUp
          CustomImageIndex = -1
          DragForm = True
          DragTopForm = True
          StyleKind = scpsTransparent
          ShowCaption = False
          BorderStyle = scpbsNone
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
          Caption = 'scGPImage1'
          StorePaintBuffer = False
          WordWrap = False
          Images = scGPImageCollection1
          ImageIndex = 1
          InterpolationMode = scgppimDefault
          ClipFrame = scgpcfNone
          ClipFrameRadius = 10
          ClipFrameFillColor = clWindow
          ClipFrameFillColorAlpha = 255
          ClipFrameColor = clBtnFace
          ClipFrameWidth = 2
          DrawTextMode = scdtmGDI
          RotationAngle = 0
          AnimationAcceleration = False
          RotateAnimation = False
          Transparent = True
        end
      end
      object scGPPanel5: TscGPPanel
        AlignWithMargins = True
        Left = 0
        Top = 415
        Width = 224
        Height = 210
        Margins.Left = 0
        Margins.Top = 30
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        FluentUIOpaque = False
        TabOrder = 8
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
        FillColor = 1709331
        FillColorAlpha = 120
        FillColor2 = clNone
        FrameColor = clBtnShadow
        FrameColorAlpha = 0
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
        Caption = 'scGPPanel11'
        TransparentBackground = True
        StorePaintBuffer = True
        Sizeable = False
        WallpaperIndex = -1
        WordWrap = False
        object scGPLabel1: TscGPLabel
          Left = 10
          Top = 5
          Width = 114
          Height = 31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 0
          DragForm = False
          DragTopForm = True
          DrawTextMode = scdtmGDIPlus
          ContentMarginLeft = 5
          ContentMarginRight = 5
          ContentMarginTop = 5
          ContentMarginBottom = 5
          DisabledFontColor = clNone
          FrameWidth = 0
          FillColor = clNone
          FillColorAlpha = 20
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
          AutoSize = True
          ShowEllipsis = True
          Caption = 'Quick options'
        end
        object scGPLabel2: TscGPLabel
          Left = 25
          Top = 43
          Width = 85
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 1
          DragForm = False
          DragTopForm = True
          DrawTextMode = scdtmGDIPlus
          ContentMarginLeft = 5
          ContentMarginRight = 5
          ContentMarginTop = 5
          ContentMarginBottom = 5
          DisabledFontColor = clNone
          FrameWidth = 0
          FillColor = clNone
          FillColorAlpha = 20
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
          AutoSize = True
          Caption = 'Option #1:'
        end
        object scGPLabel3: TscGPLabel
          Left = 25
          Top = 87
          Width = 90
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 2
          DragForm = False
          DragTopForm = True
          DrawTextMode = scdtmGDIPlus
          ContentMarginLeft = 5
          ContentMarginRight = 5
          ContentMarginTop = 5
          ContentMarginBottom = 5
          DisabledFontColor = clNone
          FrameWidth = 0
          FillColor = clNone
          FillColorAlpha = 20
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
          AutoSize = True
          Caption = 'Option #2:'
        end
        object scGPLabel4: TscGPLabel
          Left = 25
          Top = 131
          Width = 90
          Height = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FluentUIOpaque = False
          TabOrder = 3
          DragForm = False
          DragTopForm = True
          DrawTextMode = scdtmGDIPlus
          ContentMarginLeft = 5
          ContentMarginRight = 5
          ContentMarginTop = 5
          ContentMarginBottom = 5
          DisabledFontColor = clNone
          FrameWidth = 0
          FillColor = clNone
          FillColorAlpha = 20
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
          AutoSize = True
          Caption = 'Option #3:'
        end
        object scGPSwitch1: TscGPSwitch
          Left = 147
          Top = 48
          Width = 42
          Height = 20
          FluentUIOpaque = False
          TabOrder = 4
          Animation = True
          FrameColor = clWhite
          FrameOnColor = 16093773
          FramePressedColor = 7237230
          ParentColor = True
          State = scswOn
          StyleKind = scswsStyled
          ThumbColor = clWhite
          ThumbOnColor = clWhite
          ThumbPressedColor = clWhite
          FrameColorAlpha = 255
          FrameOnColorAlpha = 255
          FramePressedColorAlpha = 255
          ThumbColorAlpha = 255
          ThumbOnColorAlpha = 255
          ThumbPressedColorAlpha = 255
          ThumbShadow = False
          ThumbMargin = 0
          ThumbMarginHot = 0
          ThumbMarginPressed = 0
          FrameSolid = False
          FrameOnSolid = True
          FrameInside = False
          FrameWidth = 2
        end
        object scGPSwitch2: TscGPSwitch
          Left = 148
          Top = 93
          Width = 42
          Height = 20
          FluentUIOpaque = False
          TabOrder = 5
          Animation = True
          FrameColor = clWhite
          FrameOnColor = 16093773
          FramePressedColor = 7237230
          ParentColor = True
          State = scswOff
          StyleKind = scswsStyled
          ThumbColor = clWhite
          ThumbOnColor = clWhite
          ThumbPressedColor = clWhite
          FrameColorAlpha = 255
          FrameOnColorAlpha = 255
          FramePressedColorAlpha = 255
          ThumbColorAlpha = 255
          ThumbOnColorAlpha = 255
          ThumbPressedColorAlpha = 255
          ThumbShadow = False
          ThumbMargin = 0
          ThumbMarginHot = 0
          ThumbMarginPressed = 0
          FrameSolid = False
          FrameOnSolid = True
          FrameInside = False
          FrameWidth = 2
        end
        object scGPTrackBar1: TscGPTrackBar
          Left = 28
          Top = 174
          Width = 162
          Height = 20
          FluentUIOpaque = False
          TabOrder = 6
          TransparentBackground = True
          ShowFocusRect = False
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
          DrawTextMode = scdtmGDI
          FocusFrameColor = clNone
          TrackColor = clWhite
          TrackProgressColor = 16093773
          TrackSize = 2
          TrackAlpha = 100
          TrackRounded = False
          TrackProgressAlpha = 255
          ThumbBorderInColor = clWindow
          ThumbBorderOutColor = clBtnShadow
          ThumbColor = 16093773
          ThumbHotColor = 16093773
          ThumbPressedColor = 16093773
          ThumbDisabledColor = clGray
          ThumbShapeStyle = scgptssRoundRect
          ThumbCursor = crDefault
          ThumbUseCursor = False
        end
      end
      object scGPCharGlyphButton3: TscGPCharGlyphButton
        AlignWithMargins = True
        Left = 0
        Top = 85
        Width = 224
        Height = 50
        Margins.Left = 0
        Margins.Top = 30
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 0
        OnClick = scGPCharGlyphButton3Click
        Animation = False
        Badge.Color = clRed
        Badge.ColorAlpha = 255
        Badge.Font.Charset = DEFAULT_CHARSET
        Badge.Font.Color = clWhite
        Badge.Font.Height = -11
        Badge.Font.Name = 'Tahoma'
        Badge.Font.Style = [fsBold]
        Badge.Visible = False
        Caption = 'SETTINGS'
        CaptionCenterAlignment = False
        CanFocused = False
        CustomDropDown = False
        DrawTextMode = scdtmGDIPlus
        FluentLightEffect = True
        Layout = blGlyphLeft
        TransparentBackground = True
        Options.NormalColor = clWhite
        Options.HotColor = clHighlightText
        Options.PressedColor = clBlack
        Options.FocusedColor = clHighlightText
        Options.DisabledColor = clHighlightText
        Options.NormalColor2 = clNone
        Options.HotColor2 = clNone
        Options.PressedColor2 = clNone
        Options.FocusedColor2 = clNone
        Options.DisabledColor2 = clNone
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 15
        Options.PressedColorAlpha = 70
        Options.FocusedColorAlpha = 0
        Options.DisabledColorAlpha = 255
        Options.NormalColor2Alpha = 255
        Options.HotColor2Alpha = 255
        Options.PressedColor2Alpha = 255
        Options.FocusedColor2Alpha = 255
        Options.DisabledColor2Alpha = 255
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = 16093773
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clWhite
        Options.FrameWidth = 4
        Options.FrameNormalColorAlpha = 0
        Options.FrameHotColorAlpha = 0
        Options.FramePressedColorAlpha = 255
        Options.FrameFocusedColorAlpha = 0
        Options.FrameDisabledColorAlpha = 0
        Options.FontNormalColor = clWhite
        Options.FontHotColor = clWhite
        Options.FontPressedColor = clWhite
        Options.FontFocusedColor = clWhite
        Options.FontDisabledColor = clWhite
        Options.ShapeFillGradientAngle = 0
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeFillGradientColorOffset = 25
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpLeftLine
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
        Options.PressedHotColors = True
        GlyphOptions.NormalColor = clHighlightText
        GlyphOptions.HotColor = clHighlightText
        GlyphOptions.PressedColor = clHighlightText
        GlyphOptions.FocusedColor = clHighlightText
        GlyphOptions.DisabledColor = clHighlightText
        GlyphOptions.NormalColorAlpha = 200
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Index = 19
        GlyphOptions.Margin = 0
        GlyphOptions.Size = 24
        GlyphOptions.StyleColors = True
        TextMargin = 0
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
        WordWrap = False
        ToggleMode = False
      end
      object scGPCharGlyphButton4: TscGPCharGlyphButton
        Tag = 3
        Left = 0
        Top = 235
        Width = 224
        Height = 50
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 3
        OnClick = scGPCharGlyphButton3Click
        Animation = False
        Badge.Color = clRed
        Badge.ColorAlpha = 255
        Badge.Font.Charset = DEFAULT_CHARSET
        Badge.Font.Color = clWhite
        Badge.Font.Height = -11
        Badge.Font.Name = 'Tahoma'
        Badge.Font.Style = [fsBold]
        Badge.Visible = False
        Caption = 'DATABASE'
        CaptionCenterAlignment = False
        CanFocused = False
        CustomDropDown = False
        DrawTextMode = scdtmGDIPlus
        FluentLightEffect = True
        Layout = blGlyphLeft
        TransparentBackground = True
        Options.NormalColor = clWhite
        Options.HotColor = clHighlightText
        Options.PressedColor = clBlack
        Options.FocusedColor = clHighlightText
        Options.DisabledColor = clHighlightText
        Options.NormalColor2 = clNone
        Options.HotColor2 = clNone
        Options.PressedColor2 = clNone
        Options.FocusedColor2 = clNone
        Options.DisabledColor2 = clNone
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 15
        Options.PressedColorAlpha = 70
        Options.FocusedColorAlpha = 0
        Options.DisabledColorAlpha = 255
        Options.NormalColor2Alpha = 255
        Options.HotColor2Alpha = 255
        Options.PressedColor2Alpha = 255
        Options.FocusedColor2Alpha = 255
        Options.DisabledColor2Alpha = 255
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = 16093773
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clWhite
        Options.FrameWidth = 4
        Options.FrameNormalColorAlpha = 0
        Options.FrameHotColorAlpha = 0
        Options.FramePressedColorAlpha = 255
        Options.FrameFocusedColorAlpha = 0
        Options.FrameDisabledColorAlpha = 0
        Options.FontNormalColor = clWhite
        Options.FontHotColor = clWhite
        Options.FontPressedColor = clWhite
        Options.FontFocusedColor = clWhite
        Options.FontDisabledColor = clWhite
        Options.ShapeFillGradientAngle = 0
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeFillGradientColorOffset = 25
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpLeftLine
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
        Options.PressedHotColors = True
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
        GlyphOptions.Index = 448
        GlyphOptions.Margin = 0
        GlyphOptions.Size = 24
        GlyphOptions.StyleColors = True
        TextMargin = 0
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
        WordWrap = False
        ToggleMode = False
      end
      object scGPCharGlyphButton6: TscGPCharGlyphButton
        Tag = 2
        Left = 0
        Top = 185
        Width = 224
        Height = 50
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 2
        OnClick = scGPCharGlyphButton3Click
        Animation = False
        Badge.Color = clRed
        Badge.ColorAlpha = 255
        Badge.Font.Charset = DEFAULT_CHARSET
        Badge.Font.Color = clWhite
        Badge.Font.Height = -11
        Badge.Font.Name = 'Tahoma'
        Badge.Font.Style = [fsBold]
        Badge.Visible = False
        Caption = 'SCHEDULE'
        CaptionCenterAlignment = False
        CanFocused = False
        CustomDropDown = False
        DrawTextMode = scdtmGDIPlus
        FluentLightEffect = True
        Layout = blGlyphLeft
        TransparentBackground = True
        Options.NormalColor = clWhite
        Options.HotColor = clHighlightText
        Options.PressedColor = clBlack
        Options.FocusedColor = clHighlightText
        Options.DisabledColor = clHighlightText
        Options.NormalColor2 = clNone
        Options.HotColor2 = clNone
        Options.PressedColor2 = clNone
        Options.FocusedColor2 = clNone
        Options.DisabledColor2 = clNone
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 15
        Options.PressedColorAlpha = 70
        Options.FocusedColorAlpha = 0
        Options.DisabledColorAlpha = 255
        Options.NormalColor2Alpha = 255
        Options.HotColor2Alpha = 255
        Options.PressedColor2Alpha = 255
        Options.FocusedColor2Alpha = 255
        Options.DisabledColor2Alpha = 255
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = 16093773
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clWhite
        Options.FrameWidth = 4
        Options.FrameNormalColorAlpha = 0
        Options.FrameHotColorAlpha = 0
        Options.FramePressedColorAlpha = 255
        Options.FrameFocusedColorAlpha = 0
        Options.FrameDisabledColorAlpha = 0
        Options.FontNormalColor = clWhite
        Options.FontHotColor = clWhite
        Options.FontPressedColor = clWhite
        Options.FontFocusedColor = clWhite
        Options.FontDisabledColor = clWhite
        Options.ShapeFillGradientAngle = 0
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeFillGradientColorOffset = 25
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpLeftLine
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
        Options.PressedHotColors = True
        GlyphOptions.NormalColor = clHighlightText
        GlyphOptions.HotColor = clHighlightText
        GlyphOptions.PressedColor = clHighlightText
        GlyphOptions.FocusedColor = clHighlightText
        GlyphOptions.DisabledColor = clHighlightText
        GlyphOptions.NormalColorAlpha = 200
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Index = 23
        GlyphOptions.Margin = 0
        GlyphOptions.Size = 24
        GlyphOptions.StyleColors = True
        TextMargin = 0
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
        WordWrap = False
        ToggleMode = False
      end
      object scGPCharGlyphButton7: TscGPCharGlyphButton
        Tag = 5
        Left = 0
        Top = 335
        Width = 224
        Height = 50
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FluentUIOpaque = False
        TabOrder = 5
        OnClick = scGPCharGlyphButton3Click
        Animation = False
        Badge.Color = clRed
        Badge.ColorAlpha = 255
        Badge.Font.Charset = DEFAULT_CHARSET
        Badge.Font.Color = clWhite
        Badge.Font.Height = -11
        Badge.Font.Name = 'Tahoma'
        Badge.Font.Style = [fsBold]
        Badge.Visible = False
        Caption = 'ABOUT'
        CaptionCenterAlignment = False
        CanFocused = False
        CustomDropDown = False
        DrawTextMode = scdtmGDIPlus
        FluentLightEffect = True
        Layout = blGlyphLeft
        TransparentBackground = True
        Options.NormalColor = clWhite
        Options.HotColor = clHighlightText
        Options.PressedColor = clBlack
        Options.FocusedColor = clHighlightText
        Options.DisabledColor = clHighlightText
        Options.NormalColor2 = clNone
        Options.HotColor2 = clNone
        Options.PressedColor2 = clNone
        Options.FocusedColor2 = clNone
        Options.DisabledColor2 = clNone
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 15
        Options.PressedColorAlpha = 70
        Options.FocusedColorAlpha = 0
        Options.DisabledColorAlpha = 255
        Options.NormalColor2Alpha = 255
        Options.HotColor2Alpha = 255
        Options.PressedColor2Alpha = 255
        Options.FocusedColor2Alpha = 255
        Options.DisabledColor2Alpha = 255
        Options.FrameNormalColor = clNone
        Options.FrameHotColor = clNone
        Options.FramePressedColor = 16093773
        Options.FrameFocusedColor = clNone
        Options.FrameDisabledColor = clWhite
        Options.FrameWidth = 4
        Options.FrameNormalColorAlpha = 0
        Options.FrameHotColorAlpha = 0
        Options.FramePressedColorAlpha = 255
        Options.FrameFocusedColorAlpha = 0
        Options.FrameDisabledColorAlpha = 0
        Options.FontNormalColor = clWhite
        Options.FontHotColor = clWhite
        Options.FontPressedColor = clWhite
        Options.FontFocusedColor = clWhite
        Options.FontDisabledColor = clWhite
        Options.ShapeFillGradientAngle = 0
        Options.ShapeFillGradientPressedAngle = -90
        Options.ShapeFillGradientColorOffset = 25
        Options.ShapeCornerRadius = 10
        Options.ShapeStyle = scgpLeftLine
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
        Options.PressedHotColors = True
        GlyphOptions.NormalColor = clHighlightText
        GlyphOptions.HotColor = clHighlightText
        GlyphOptions.PressedColor = clHighlightText
        GlyphOptions.FocusedColor = clHighlightText
        GlyphOptions.DisabledColor = clHighlightText
        GlyphOptions.NormalColorAlpha = 200
        GlyphOptions.HotColorAlpha = 255
        GlyphOptions.PressedColorAlpha = 255
        GlyphOptions.FocusedColorAlpha = 255
        GlyphOptions.DisabledColorAlpha = 100
        GlyphOptions.Index = 90
        GlyphOptions.Margin = 0
        GlyphOptions.Size = 24
        GlyphOptions.StyleColors = True
        TextMargin = 0
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
        WordWrap = False
        ToggleMode = False
      end
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
    Left = 256
    Top = 504
  end
  object scStyledForm1: TscStyledForm
    FluentUIBackground = scfuibAcrylic
    FluentUIAcrylicColor = clBlack
    FluentUIAcrylicColorAlpha = 100
    FluentUIBorder = True
    FluentUIInactiveAcrylicColorOpaque = False
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
    Buttons = <
      item
        AllowAllUp = False
        ImageIndex = 1
        Down = False
        Enabled = True
        GroupIndex = 0
        Visible = False
        SplitButton = False
        Style = scncToolButtonTransparent
        Width = 50
        Height = 0
        MarginLeft = 0
        MarginTop = 1
        MarginRight = 5
        MarginBottom = 1
        Position = scbpLeft
        Spacing = 5
        Margin = -1
        ContentMargin = 0
        CustomDropDown = False
      end>
    ButtonFont.Charset = DEFAULT_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -11
    ButtonFont.Name = 'Tahoma'
    ButtonFont.Style = []
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -13
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = []
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
    ShowIcon = False
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
    Left = 336
    Top = 504
  end
  object scGPImageCollection1: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000640000000C0806000000944518
          63000000097048597300000B1300000B1301009A9C1800000A4F694343505068
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
          D0A7FB93199393FF040398F3FC63332DDB0000005D4944415478DAEDD1410A84
          401043D12AC54114C1FB5FB69D80106F905EFC07D97F4857D55D9846FF77A523
          603AE44C47C074C8918E80E9903D1D01D321BF74044C876CE908980E59D31130
          1DB2A42360FD0E93E090C9F41823DD808F077B8F03563CD7E330000000004945
          4E44AE426082}
        ContentLeftMargin = 0
        ContentRightMargin = 0
        ContentTopMargin = 0
        ContentBottomMargin = 0
        Options.LeftMargin = 10
        Options.TopMargin = 0
        Options.RightMargin = 10
        Options.BottomMargin = 0
        Options.Stretch = True
        Options.StretchBorder = False
        Options.DrawOnlyBorder = False
        Options.DrawOnlyClient = False
        DrawStyle = idsTopStretch
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
          89504E470D0A1A0A0000000D4948445200000118000000500806000000C2F26A
          39000000097048597300000B1100000B11017F645F9100000A4F694343505068
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
          D0A7FB93199393FF040398F3FC63332DDB00002FC14944415478DAED9D5B6F63
          C976DFAB36A58E731527416EC845EC633B861127623BC9632036FC1AA4D5C7C7
          B9D87044053662C0495AE32408F224F62768F527682A89631B3030D24B5E9B7A
          4F30D42768EA130CF5949923513BAB6E7BD76555D5AACDAD9EF330040A557B53
          D716F9EBF55FB5D6BF785DD7EC87C70F8F1F1E3F3C9EE2C1B705CCB3F94FD880
          331835DBA9F40CD73B95BADE81EBDD4A0D716DD6CF2A731FBEC6C0BD276671EF
          9979DEDCD3F777ADEB5D2E66F5759F99EFD5CC4CADC5CFC460869F57CC6AC0CF
          6ACD0398AB668687F86779B46635466C03E3914D606630C630867ACDD883353F
          34D74B76CFD6B05EE9B1689EBB8FCCD6FA11460DEBFA213136D6ACD7E2E7A81F
          D5B5FC99C4FA11FE41EC51FB73E5ADF5B59899B56EAEBD99362630467A0CE125
          38C63F8E9BF51AD64B7D6FA9AF17EDF3BC198F72303D73F96B6CF43D316F9C19
          0677FF6472E6DE9F90FBEBBABDD7CCB577ED3D67BE0F6F9FDB70DE5C6F9AC19B
          F9D1CC151BC13C7AE47CF25889FB7C0CF350AC6BF9BC1A7555E919AE07D512E6
          F56355AD6A31067C219E8799A9B9921FA7667D6DDD63D67D663ECEACABF679F1
          C6FF7FFFE59F9403867FF80DF8E3B35318F0626007C8E7DDC0EFBF80EF770E40
          593580B140B3236705889DAA85CCAE0599162A0A22BB83DA81897FFDCC7C9C07
          A3162ECC858CFE99E45AC3840218F172D570194B98B4634FBF5AF18101061BF7
          EC06E6258C4B580BE0AC31B8D411B83C4600C32CC0D48FED3533A0F1C1E2C3C5
          5CD71E4C50B078F7E2E34843458C833C8078E4DA074A75A38023617359337843
          D990E16ABDD1C069FF4C79C0F86B17342580A9DB35B70026AF7DC018B8B0F146
          C2844DE4CCF99EFC5329B8B8B31C0A0C086414303428E0FE0DAC97B0BED4C059
          B780E10E540C3CDAB5FA5ACCFE78FDB1DFFEE77F5C061880CB0CA6339679883F
          B106CB7B984FEDC865C05BB0EC701C320D18FCE865D0462C61348380865B9FEF
          472E95895E98068C0D190398207A19C1A71CC1E5298C7D2B7A692281AD008380
          04E62B099B0736B79FB7E11244321B3C82692063ADDBE885452218225C6ADE02
          261DBD08984C355CF668910D4F5C07706176E4220600E6064032D763BDE1AC81
          CD06030C0FFF641BEEFEA93619C0DC638071A215F7FEC679DE018C88528E603E
          85B12F20217F7EF931062A1E640C4C386FA1A2DFFC063A1A2CB1A8E50A3EF612
          D6730C2A2A6209E163221AA6BF471160002E73988E737061FA4F2C40A2217301
          DF73BA63CB23DE426507895C7CC80411C9C09546BB551DB9668E2C7AE6416627
          885EDA2866A0D79582CD08AE6795F8FDC53F892B8D5CC858B2A37985DA60C120
          73CF28A0B983F95C0E90554DA41293481B864A240732269269C0C23458AA5026
          35A0F1A3161B32BE3C72C020A072AA2215130B16C9A70C5C7CB0B4D79E3CBA80
          5FE31C60B24CC9A31C603ACBA3062AB513B9F8D18B000BDC9BC17C1C9147FADA
          8D5C6A2782F122174B0A3D3A408982E60E9E3B87F539ACD7AC914C6D94D2C007
          8966BEFD4FFF880618808B9044EF2870917F5AAEA585FC5E72FE12DECCE7A83C
          E2963C1AD49E44624EA4E28064E04204838DCAC1E8AFEDC9A306325EFEC58065
          608105E6E3461ED970A92D986051CC034B472F1B325CECF90E80712E07802629
          917C7984462FFADD634BA364EE259683F1A298761691CA398CFD6E40D92E82A9
          35606A13B1F00638D7009553F867585200E3E45F9E561E41C4A2C0E24BA44703
          1A0394A43C42E0E241A68D643CC804B24780062053F173B8B76E229641987791
          B3FE7ADFFE010130009721AC5730F6A8803179172BFF7207A019015CD626991B
          93474DA4E2442E913C8C031A2BE9CBF11C4C03974A8385330D98501EC100B080
          BC83DF7BA023196EA2172C82B12317FBD559967F89C325CCBFDCC23C85B108F2
          2E1479F468CD8FBC501E79510B2E8FC61A2C87FD81A5933C6A13BB487217E60B
          F86700D08074B24082E55EBAE65FEE29F2483D3703C00829B487E45F184D1E89
          28A6B22083C823019E5452D7BB66EDC7DE024CA6F0FCA2954991284644307FF0
          AB24C04C61FD810217C67C796412BB12322730CFC5BDB834F2E411069A012E8B
          3069E4E65E74D4624731CC4DECEAF518A03207A81C0C989DE44DC005030C2582
          C949A408709C48E59E5DC07C0AE058E7769068F2484B245F1ED5D6FDA43C926F
          F4195C9F75070B551AC5E062CB231600E6D192451A3477703D857FAACB9C3CC2
          0193C9BD78F386D7DE351BC33C07B81C34BB46E6B9CA8B5EACC865D3873CB276
          82ECC4AF031A2BE7A2217201F74E453218038BC9C77CFB250D3097B07E4505CC
          C0068C92475A16B12B988FCC16F52E0F216380624732F88E91B987E7629C9DA3
          0032AE3C32495EBD6B34857BE7266A3180312F65747BDA9748A9C46E0C32C4C8
          8561F91675EF464733CB475F1AD95BD494E885947BE12154D47A08F3A58C5ACA
          B6A78960299747B59D83116F522FB96BAFE19FEABD4CA62600B3BD3CB2F22FEA
          7A0AF3F9838C5ADA68A54DF2BA8069C0A2EFE1D2C84AF496CAA3C8CE1192D0BD
          8179CAD4EE939BE0D5399A6F4F5F9000B382F53E052E461E55D6B6F4A049ECD6
          B7009691A97DB1EB5ED0ED693FC73248247507A1346A6A694C2D0CAF83ED694F
          1E09B0BCD9D1B019185852E5910F184A82B72472F101E347322A37232073E927
          78C9F2C8D9A28EE55EA23998318C85DC19DA0A2E9CF05C2E8221CBA360F7E841
          49A629BA35DD15307E729735918B00CB9B563AF1085CDC4846C2A66AD70D5C78
          1BA10470712214735FC3054DF6C6778E2C7974075F73CAC4F6B69F8381EFF51D
          1130E46A3B238F2A19B5B4F2A8850CE33B1654DCFC8B276D82C46E081A7C0789
          79095E5C1E79DBD373988FADE4AE0317B1CECA234A04D38344126089E65CD438
          0190CC933918FD73D71B5F1A25722F69797404D77398F712DBD33D4187276617
          36297964CBA4E6CFD5E65F2E646441024C8DDEBBB7722B11C08024123B442D4C
          9AEF6FE75F2A3C8AC1E0E282C58B5C82ADE954611DF7A0E2C8A320A2818F3981
          EBB92D8FC4FDEFDE8CFB058C914715672D584414533555BBDCADE0C522170F32
          58AD0B560FE3E55C9C0ADEF4F6B4864B585C97954754B874AB7F099ECB56EDC6
          20539ADC2D934753587F40768F7A060B052EEDBA95471A329E3C0AA2171730E2
          9FFB35CC973E3C42D0689858F7EE13F248E75FE6B03E6E778E2CC0700F307624
          E34531A83CE29E3CB2229736F7E214D9C5768EDC7B5E32D79743707D026FFCB9
          9D8FF9EE3FF60818F9E7B56591238F1A99C4773CA898EB671E689E0D087918A4
          82D72FB273768F7424D30246C0851DDB495E2C8211BF1B0A9792E82557FF92CB
          C3F8800925929FD87D0DDFF3D249F23E7AA0D9062E6A3D85BFFA8720AAC98263
          C0F230D92682F1E5915BBD4B04CCDD832872636CED4B22072625F2083E76A323
          97708BDA078C958FA9ACFA173F8A71C082E75E9C5D231B3AD8CE110212A72DC0
          00C4BFA7D6AF013697064ADFFD07ACD0BF23602A0C3055505CC777F53AD83D1A
          20A5FE58ADCB208C5AFCBEA45D2B17E3CBA39D76F7E81C20F3A6050B1EBD04F2
          C8CCA9E46E0E30A9DA97441463C09294482D60444E66528B7EA7A02D20228F6C
          29E4C3C55CB7D248E55C6ABEF734D14B9708A61D8F166436047914690D388179
          1E4FF0D6F17BB83C3A87F51BA772D7C08521D14BC5AC9DA3883C4213BC1E5C4A
          E411B673E4B405B885765EF5EE1D7CCC44B41D88FBBD0246FE9F64D7BE547E73
          A37CA33B39181F32266A89472E2C19CD1434374E01321F52BD475BC9A392FC0B
          61E7C8864B561EB909DEDB5A355DAE6B4B1E953537A2118C68445CC99CCB76CD
          8D8560A1C9A3A07A97DBD2A8A8F7E80AD647A4FC0B16BD3066C3660ACF7DF0B6
          A749CD8D4DFEA58ACB23ACB9312D8F4C64832774F3CD8D086814846EE173C770
          7FFDDDBFFF87FD00C697470D584CFEC5440F15E36D0D0CB245EDEF0A217998AC
          34F2778EAA401E8D207259024CF60A9B1BF3ED013E6072902990486863E3BD07
          150B325673E315CC476EF4C2F2707192BC016496300E1AA014C9A3BE13BC215C
          52F2A81030D7B09EA4F22F3630EEE38019C1C72E4D019DDF419D94477E5B4023
          99B0DA970A8960D0E6C6E8CE5179736310C588F90A3EE7E8BBDFEF0930BE3C72
          BAA6CD5AE760B0BEA3DDA0A0CE48210A68F00647B38BD4744C1BD030B600A81C
          FABD47B1E88563F288DADC98024C0E2E1E6802A860518B7DADBFAF8E5C543E26
          DBDC5831B4C0CE85CC4C16D1D19B1B7B004B77792481C2B1E646526B800398BC
          3C8AE65F1670FFD0EE3B722B782380B1C0D224771BB858D77E73E300C9C3F835
          2FD92D6A6F378902163B1F5355AF7FFAFBFFE0B237C00C92F2A8DD45FA9EBD5F
          4E0126EF30EF17BB0789E0FD522E8FB0BE23C2CE514FDE2F77B5F2AA59BBD5BB
          397914404694FF7F5DE6FDC2199ED4A52679B7944785DE2F9D00939647A7B07E
          D783F70BDADC98F17EB1206303630BEF97A02DC0BAF6F331151FFDF4F77E65BD
          15601A79C4941CCA78BFF0BEBC5F50696457F086DE2F43985700913DAAB95420
          8FB0E6C638606E99329012560B2BA63C5E8630C630463026008F2398F7B2B52F
          318914014CA4B9F12DFCCC3392F74BBCB95149A36EDE2F85035EA04C56052F60
          AC2C43A921CC003A3E823181350CBEFF04F248ACAF37023058A44203CC10C60A
          3E76CF895C9815C1C4BD5F507994F17EB97DACA49FCB25CC2BB85EC2FD210065
          0CF746F0E617C65447B0DEF3EB5D7079C4BD2DEAB8F70B336D024DBB809CDFFE
          F4DFFDFDD9D680419A1B63DE2FFC7BF47E390788BC29F07E8957EFA6E5D13513
          960A1B09164AFE650AEB19CCFB94FCCB96DE2FCF217A5975F47E51F52E65DE2F
          5DC072CB442F13ABE6E908C6590BC84C611CFBD5BB5B7ABFA8AADE0C6012DE2F
          E71B51A94BF77EE9D0DC2823966B8862CE61BE247ABF4C619EC1F57E748B9AE2
          FD1240C7858CFE98E7F7BFFBCBABCE80F1E59129AA8B78BFF09CF74B109910BD
          5FFCBE23CFFB45B4287C4A79BF0CBCB99147D4E6C6077607F3D4014BAEF6C5BD
          3ED5A0D9F3A3981EBD5F2E0030D38EDE2F2B1929D0BC5FBA0C11B19CE260C9E5
          5E9AEB31FC5AC254EAA0441E250073F2C064DD4A17793482F913D1FB05010CC9
          FBE50EE6A9004BC7E6C6530D9A20A229F57E69E5912597D47C71FF3BBF3CED04
          18471EF1A0B911F37EE18EF70BAF1B0F9827F67E99C17C66373722DE2FCECC0D
          606CEF173F7A6941732523918DF4D7C5F32F69B898F518E639CC078E3CA248A4
          B43CB2BD5FBE8057E6BAD0FBE514D6EF1CA8E0DE2F5DC70D53BE31AB9EBC5F4E
          E1579D6D84A564247A69FCC0E209DE5B588FB69047331867765D8CDD3A90030C
          C1FBE54AC365BDA5F70BC8273E8737EF41C20F26EBFDE2C82327A291F6115F3C
          FCDB5F0A723124C060F26850B5BB47BBEE3AC8C150BC5FF01D24A2F78BDAC95A
          0364F612DE2FE5CD8D5654A0E112EE20D12492BF1ECADCCD3D4006810B5A64E7
          C9A44C73E35B1833B4B931EEFD226A5EF69F481EDDE83CCA9A9EE0C5A298A0B9
          7104BFCE1C6072186B0FC878BFBC84EB4517EF170D92B5EA908E7ABF44F32F7E
          7323228F2E345CFAF27E19C2B5F0783960C8CE51DCFB25840C12C188AFF1F6E1
          E49766C58071E511DADCE87BBFF0A83CAAEC68A6DCFB25D1DC3885F121E2FDB2
          AD3CBAD0B208C91212C0124FEE0E6552F89EED7BDE2FE19674640729DEDCC86F
          E5090874EF17957B897BBF6C03180D976A9D074B0C2EED3AD2DC289A168545E6
          9E67CD10442F1660A434F28013F57ED9E87E240B3A53983F44BC5F346C78F3FD
          1BC8D0BC5F2E440E25EB5E979247F8CED1B01E48EB857DCFFB25886830EF9760
          37A932895F09C1DB8793BF372A064CACB9D196479EF70B77778DDCE646AAF70B
          DE7714F57EB984F91556F712EB3D6A0093DE9EBE863129EA3D8A452EF8BDB170
          AB83B11793495B78BFBC80B1247ABF2C603E74A0D24FF5EEADDA0DB2E1B29D3C
          4A78BF0CE19F40C826800DDFF77B8FAC3FD7ED46C161816F4D5B3041A2170B24
          A249F255F39C957F0900E34824CCFBC5A9DEBD6E8E28A178BF78402178BF88DD
          A605BC91F76A3FA16B453198F78B9FE035F2C85ABF78F837BFB82403C6C8A388
          F78B73EE9155F7C23FA7F70B7CFF2100E61BC4FBC5CABF20F28845E0D2024624
          744732E712FC1718014C37EF975318EFA28D8D488297D100F31E40714AF07E81
          48A7FAE4DCEB4F1EBD60CD9946D8E084392A8F52DE2F63B1F5BC115BC8ED9F69
          ADE5D0D2CFC514E75FD4D7FD06F17EF1EA608ABD5FEE608C4CCEE509BD5F44E2
          F71DE2FDE24531AEF70BC313BC2D68387F0F80392503C6C8A384F70B43BC5FAC
          08A65FEF974873E3118CAFF0A349B6F27E398179DEA9F7A8DCFB6509E03820F6
          1E51BD5F4026013CF2DE2FF082D0C95D471EF16D01F3566F4527C042858BBA56
          FF1FD09B1B53F91752EF917FAF85CE11CC5FF98041AD1998575C57E1518C06CD
          09ACE79FC9FB6509F70EF07A97480F92B58B644730A208505FDF6E7EFB174664
          C0D8F2C82EAAB3BC5F18E2FDE2E4609E6DE1FDE2D6BE44BD5FE6F0FD8F2907AB
          15C823571A95E45F7212C9AE7D6925D104C6C7920ADE063069EF97E74CD6C444
          E1F254F288208D287069D75DBC5F5207AB593B49D9E805F17E51760C2C9E7FE9
          E0FD720DD793CFE6FD525513B8FE98F07E61411D4C5A1E69D0F0E79BDFFAF955
          1630F2CF6BCB22DCFBA5DD456A2319DEC5FB052DAC43408378BFACE0E7D8C78A
          EBB6F07E917D3DC58029E93DF2F32DF76C05F37EC2FB25C8C110BC5F4E609EBB
          514CC5BCDDA33A2E8F38112E769B807CE59CB0A6D6A58F08A65BF5AE1FC13840
          890086E8FDB282795F7BBFB8BD472C069878F5AE86CD6B585F3E8DF74B081A1D
          8DAC44215EC2FB25218F3CD0707D8F57279BDFFAD13C0B980A034C1529AEE34E
          CE85A7BC5F72FD4629EF976617A9954743F8B9BE31BB476EFEA5B3F7CBADCEBD
          A47B8FEC753FDE2F2A1753208F9CEE69BCB9F1025E95D384F7CB045E021F5D79
          C4B78D5E4431DD28DC354A2578D370493537C6E4D1D6E74E63F728F917031786
          442F950518571EDDEADCCBE7F67E11A706BC4B78BFF8CD8D3A298BCA23091951
          74B7F9CD1F4DB380217ABF60B60C4E1D4C50B94BF07E092C199CAA5D471E4D60
          7CA41C6C5F208FDEC37C4A6A6ECC49A49CF78B1BC58C607C22038676B0FD35CC
          133CC92BAF674C764D5BD1CAF6F2E802C69406169A3CEAD1FB859E7FC1A21735
          8BBEA58FF6EE519BD47593B905DE2FEF0116A7C5DE2F487363A1F78BE85DFA54
          268FECEDE9401E89F9FAF1377F344902C6974709EF175F1E3580F91CDE2F3BBA
          7AB7E3C1F6B104EF0BA61DE2D0C23A6AFD4B661DF17E51C9DE4D089926E7F280
          442F767363D839CDC3246F13C95CC2FC2A048B079BB2F19AA906C6C8F3E570E9
          B9B9919C7F8978BF881319CFFC931B6DC874F07E7901EB65CAFB2573B0FD36DE
          2F4BF85A07B845838148E5D5BF04514BB3963FDFBFFE114F02C6974709EF17C4
          B54ED7C13C81F70BD6DCB8AB8F214979BFA0CD8DB8F78BD89A1E46BBA7A9F917
          421413F17E99C1382378BF78ED01A83C32C95C95E8C59B1BDBCEE97EAA77853C
          1AD2C192944763DDE038ECC3FB2572EEB4A88559C27A5DE0FDA28E2181FB76DF
          D116DE2F626B7AD89BF70BB27394F17E99C1BD33923C52509095C551D070B97E
          FEF8AF46AB246092CD8D95BD731478BF705B323D1BE04049E5624CAE85E0FD22
          8DA58C3C32752F7E0F12C9FB45BD5AAF987086A3C8A38D0686990939177B1D69
          6E747793FCC23AFD7D6B2B7A51D73C15C1BC64CA5717EB3FAA9D9DA3A43CB2A1
          10F57EB962AADF8885B2880C17D10C796ADB3374F17E89F41EC5F22F17009899
          B25D48CA23652CC5D821268FF0D600571E21CD8DA2DFE8E8F37ABFB45248EC26
          C19BFC23C1FB8505D5BB626D92BB2D5CC4FAE5E3BF1C2D50C034F288E6FDD246
          2EBC39D8DE924814EF1716247989DE2F01607AF07E790B63D639FF5276EE74AC
          B1B12E6A6EB4E511EEFDF2526E45E3DE2F75541E758B60BE64EAACEA0C5850B8
          080F6078510A9BCEA79347786B8094477732BFA2229A0C60EAC32EDE2F91E6C6
          B7B09E45BC5F922D02814503268FB02DEAD0FBA5267ABFB4D73A62F1E5919C39
          7F59A70053E0FDC210EF171EF37E09768B8ABC5FDC83EDF5C16A75DEFB85D0DC
          D84603E1F67497DA974C1413F57E514091DBD544EF97843CE266B7E8AD4EE6FA
          7099C0FCB1477924C64BA6CCA30860092297A50F174AF56E00988C3C4A0046AC
          EF603DBE6F22192583BC83EDEB9EBD5F5E4B2B064B1EB9110CC9FB257F3C49DA
          FB6505A0D8277ABF30B77AB70A22187839BD05C0CC50C004F288FBB52F8EF70B
          9A83F19B1BCBBD5FC283ED3DEF1773EE51DDB3F7CB4B582FC8AD01D4E46ECCFB
          058F6416008F43A2F70B72B07DE5CB24004C3543229849B045EDC8A398C4498E
          2FF0EDE96C04032F467E466D6EDCC2FB25B97BA461224F7C4C1C6C5FF7ECFDF2
          12E6456F07DBE72B7819D235BD00A01C12BD5F5079A42317039AB7F5BFD8C701
          9338D81EF37E7172301A28FC3378BF98A349EA4EDE2F3163EF47F61CE655B4B0
          8EDA7B94800BC1FB451CA4F6AAC0FBC595466173A3B26E8845304DE4624531DD
          23184E078B039995CAB938495EDBFB45FD89380F92BBB9EEE9F88E517CF708E6
          2F00226B441E31A960BDA46E89F78B73B0BD9245CF85F565B673DA9747B1E646
          ACB00E73AB73BD5F2EE1FA5581F74B0B1A8ECC31C0C4E491EDFD821F6CEF78BF
          F0CFE0FDA26A70E08FDDB3F70B0FA297D2DA970C6808DE2FC253F7ACC0FB2592
          83A9DC0826DC45D212A93779246C19C671B060799726F7F28D0F97C2E6C62D7A
          8F50C0BC06C05C7ABB477A2D53647D7ABF7037C1BB8DF78B9F83694192F17E91
          3B4905DE2FAE3C6AF22F2C0D18571E91BC5F306BCCB6D9B183F70BF5607B9DD8
          AD7B9347BEA84F452E1D93BB2682C91C6CEF6E55C7E451EBFD62373862DE2F2A
          07131E6C6FE5603C59D40D30D73026E55BD4D2D4FB6381F74B039558F412AB7D
          C1F32F68F5EEDB7BE55617C8A40DD7118C13B9585BD3CCBA57B9D10BE6FD026F
          488E57F0E6E4116DE7C8A9E0B5768A9C83EDE556354854BAF78B93DC0D2218C6
          70C074F07E416C19DA5E248AF70B9A83497BBF18792493BC3D7ABFC401539A7F
          A1F41E21D7DAFB4502C6EF3B221D6C8F7BBFC42318A623987EBC5F10C090E4D1
          44E682A2CD8DA8F70BFE7F422EFF62C3C68A5E10EF17759449208FE280E9E8FD
          22664EF17E09E042F37E09768E22DE2F3398CF0ABD5F0279D4E46130C0187994
          F37E894923A70E26E2FD82462E04EF971D8E03C64EF26EE9FD6200A372309404
          6F0FF99788F7CB39CC6F0ABD5F4279D4EE24A57791FA91471A307C127F9EC766
          2F8289CBA3E4C1F69E14DA421EB98071E59152B936581843F32F8F36703CB078
          C7C336399827F27E09FA9010EF977378E3BF493737FAF2A8696ED401B1550783
          01C6C82319BD18C044768FC2ED692761EB48A49EBD5FCCF6B449ECD6C5CD8D69
          C0BC84B1204BA3C228267BA8BD028C70B83B2CF47EC1722F06246FE115D94630
          6D1B402B91B6F77E3183335204E3CC5604D3DEFF9EBD5FAE754D4C1430813C62
          CC896008DE2F66FD529C73F4C4DE2FA13C72C1B380F9B0D0FBC5AFDE552F1D16
          010CD6DC48F07E7121A36A5D3896C8EDC9FB4545512CCCC1F474B0BDAA83E92B
          FF827BBFE486BB4D6D0326EDFDE2AE5BEF173C82116FEC5A6F536F2F8F3CC050
          12BC8E24AA7179F4BD79BFB88069E591DAA6660CCFBFF880F1655215C82365D3
          608E24793AEF9730E1EB820600C30F3B78BF60F228044C2522185B16D1BD5F5C
          EF5D1DC13CA1F78BA97F31799725CC075B7ABFD880692B79BBE45E12514C9D93
          486DFF51DDD1FBC59645B6546A5B05DC4647D133F48D95F425C2C56CFAA3CFBF
          64C942BB2864E073F8E1CF90F70B0298C6FB4554FA1E6CE9FD622775DFD6A692
          D7AADEEDE4FD82E5607C9F17DCFBA5EEE6FDE254EF1A79241E2F01308B063003
          0C30062E567323E2FDD2987A5BA0B02A797BF57ED17071BC5F64ABC016DE2FEE
          76B4E9454A2578B1B3A709518CE7FD129347CAB201914704EF176F07A901C94B
          B85E34BB44AEF74BDD63F422C6092B3A54AD895A8E607CD587F70BB1F788659A
          1BAFB52D832F8F64AB007CBFC35626595BE4813C8A80C5DDA6BE02981C157BBF
          043998C8CE91D316E04731F2F9117CECA7ACF70BF74013974721607624603A79
          BFB85BD4BA1789EAFD1216D6659B1B99E7FD028061873DC9233154373516B960
          4D8D846D69738F78B0FD11CC5F75F47E09E1A2D6CF993CF3C89647CD5A54DDEE
          F50318098CF74C9DDC5810C1346B00133FFE19F17E4192BCCDC78780E12C12C1
          D85DD34EF5AE1DC1DCD5B29B3AE6FD126F6E2CF47E09E0A3E5D1113CF75547EF
          174C1E89C77300CCAA05CCFC376A8AF78BDF77E41F4F62B6A9B1823A3772E9E4
          FDA2EB5F9CBA9719ACCFB6F07EC1C60BF6A0FD604A732F89E42EE2FD821DA826
          77909A9CCB0312BDD8CD8D4979D44084A3560D0A280B294DFA3BD8FE962937BB
          52B8983183C8E5EC333537A6BC5F2460DA9D22C7FB6506CF9D6DE1FDD2C0C56A
          0D780110597E06EF97302F53F17398DF74F57E41E41103B834171230BB3E604C
          8217696E44B7A8DD442EF77B8EA8DE2FAD2C42BD5F1872B0DA298C771DBD5F62
          80F9928983EDA9F917421413F17E0901231A1D376C7F0BEF173FC97B03F318D9
          A23680B984F1AA277964C67355FA5F02997688D31A013233988F60ECF5E8FD42
          9547E2FAEA419D1CD0C823ABEFE814C63BDBFB05ED3DF2F32E4EE41278BF7CA9
          0FB6277ABFC4778E32DE2F582DCC0A9EDBA779BFB43D480979740380193B8079
          36FF49DDD1FB455EDB9EBBCF2CBB86A4F70B0F4143954783163013181F3B7ABF
          E0E381DDC03C0EE411152E74EF9778FE85D4DC48924757B03E0AAA75DB6BB1BB
          74D602064BDE46BD5F180E11DBB2810A97F6DAF37E19C3AF312436375EC2BC57
          9C7F09E122E6B70F4E25AFD3DC282D333B7ABFF8F2C844313730C6B1C8251EB5
          24BC5FD2CD8D063623B8FEB4A5F78B2F8FAE0030470E60FE8C008C9577897ABF
          D8BB3B03AF82B7CDB1702781BBA5F78BE93B42F22F02324380CD375179E41F6C
          1F4FEEFA4514CF615E6D259168DE2F7179843537DAF208F77EF1D7BA8A179347
          F28D3D718AEDFA89604026F1513EC11B82660BEF9711AC3F7595470860BE84F9
          1C9147E26B0E61FEA6A3F70B0A191DA9C882BB687363C6FBC54EDE66BC5FEC5A
          9873186F82EA5D8AF78B17C5588F668BBA01CCCF5DB4118CEDFD621F6C1FF17E
          097A8E549297852D0204EF17B4B9D180866107AB49B0AC60EC939B1B7D79F468
          45292D60D461F714B864A218D4FB65834630CA07066B6E6CE41173A39764EE85
          AB1D246C8BBAADDE6DB7AA7B814B13B1BC54DBD5B1080697485B78BF9CC2FC8E
          D67BE402E6BE894CDA83EDE1B9973A99CB22DE2F2BB8B7DFC1FB0589609AEA5D
          751EF5537BBFB8518C258F5CA81478BFF8806976901AC0FC591B3091EADD88F7
          8B97E0D5753056E15DAC727717896A32DE2F2CE2FD3207A81C773CD8DE15F06D
          5CAD8E8D7D60EBAE918B9D7F494A24059B29CC1F7AF07EB10BEC987C15843B47
          FEB6F4123EEEA0A7E8C580E35A4647C5F288110083CAA325CC0794FCCBC6830B
          12BD88F90B98D7CDF6742B8F0C50E610BD1C53BD5F5CC884B6981A2077308F6A
          796C2CD6DCE8C32457C16B4921541EF129CC1F7AF07EB1E1E224781BC0FC3901
          982AEFFDE2E75F769BC8C5F17E719A1D9F591F13850DCDFB8545BC5FA600960F
          1DBC5F90DA72677E0FF369366A212477B3124979D0ECDB80E9E8FD62CBA32B98
          8F1C79D4442E561423F22575F5A6E708468CD7707DC98811CC16DE2F63587F8D
          D6BF749347B7308F82FC8BF539B09E02603E74F07E41E491B36BF4FE519C1BED
          CBA358736337EF1773BD0210ED6FE3FD826C4F3BF99706307FFEBFFFA4EEE8FD
          C27CEF1729913A7ABFF807DB7BDE2F2CE2FD3204A87CD3C1FB25044CB86BA4B6
          AC7BCABF449A1B953DC30312B994343786F2E84B98CFBDEA5D0B32CD5A98747F
          D52358CC3D7D001BF78E8FED268F12DE2F73F8A73BDEB2B9D19641DAD12E228F
          14D88600986F2807DB47E551ACB971D06E59F7EFFDD28067061F7B56E6FDE245
          329C61F9972F0130E70160FE82014C55E6FDE27AEE5AAD02D59378BFA4AC312F
          617E55E8FD928E60D4B8853176A452BFDE2F63185FF7E8FD62CB235D60179347
          4E14A30AEE7A8F62B877CA405C2275F47E99C0F888E55BF0FC0BDEDC687BEEC2
          FC5AEC4869EF17CF0BA68509CC62D7EA15C5FBC5A9DE4D47300232B7F066143B
          4A6B5A7363A48237EEFD025F9B7F9DF27E718BEA2CD0E0DE2FF6A329B07300F3
          17FFC7AFD71DBD5FB09E236417A9BBF74B987F41BD5FA44C322FEBC2EADD1460
          C4B882715404174C1685DE2F43008838686DDFEF3BDAC2FBC540E69AC96E691E
          42056F6E9CC338EE378A69AE2F603D4D49A49CF70B6AD723B7AFE511220768FD
          0B2A9550EF9730FF22CF498A0346EF1E4D617C28F47E418E85B5CE406AB7A6E5
          51264FE0FD3284EB25CCFBA11CDAAAB9513CAE012E139F3812307FC900C69347
          04EF17B61BFAEB72CC648AE2FD8235375ADE2F2CE1FD22B6AB57F0E97BF257A6
          3737E260F12173EFED2A6DEFFD32D45DD307B1E3498AE451D87F74220FBDCFCB
          2303016175F9350E8D581D0C6779D8343340A69AD2E491BB3D9DF07E9111841D
          ADA46B5F48F2E80AD647BE3C8A78BF0C61AC60EC39D5BB1E58820EEA461EE1C6
          5216642EE04D3945BD5F883B479EA9D450744DC3C71CE40FB6C7E4118F79BF98
          C70900668E02664F0026B27B94F27EF12592060D77AFB11DA4B0B991E0FD923B
          D87E0EEBE3A43C8AD5BFE0918B3F2E64D2F71E914B89F60044228DB4B1F78123
          8DBC1C8CDB1EE04BA364EEE50EEE0D516994F67E59C038EC3F82712073AA7232
          2E60ECE6468AF7CB865B7917E6CA2152EF917F0F9147B1A3493CEF97398CE302
          EF97E4C1F6C8D6B4808C38A07EBDA5F7CB089EBB84F9003D7FDADA45EAE0FD22
          1E77009721431E1230C3FFF9EB7547EF172C916B55F2B2780EA6DCFB2577B0FD
          08C6A79EE5911FC9DCE84866D9E5603518A299710E63CF3F163648F252BC5F82
          02BBCA2AAE23CB233326303EF694E08DCD374C9DDCB8E8E8FD220AEA2E375C6F
          49238009E41106186EB6A9F1DDA3A62E269E7F318019C1F854E0FDE255F092BC
          5F6E600D918C9436919D23A4B9B185CF1140620E60D9CB1F6CDF591E39C57501
          60BE1080712218B2F70B069AEBEC79D3086882C42EE860F8399610BD5C025896
          7E0D8C5BF7D26C4FCFE115795C248F52D2282E8944343363A2DA97E6FD720491
          CCA9E354F7E041C54EF276F77EB9837904F33A2D8FB80F97278862786216D18C
          EC9E5E10AB77012C7CB6B1768B9C3F1D02143F92B9CFC92308F1557D8B82519B
          6FB1BE5E081871ADA398B02D00F17EB1EA5F8ABD5F209A91E6DC2BA2F7CB113C
          770AEB430394D8F9D35B7ABFDCC1180160D651C0FCE53F54114CA9F78BDB2D5D
          E6FDE2F71D65BC5FAE012CA703099AA4F70BBCB920BA78647B04EF977CFE053B
          7BDA5D8B88E612E685DC69BA575BDAF28CE97B367A54674D4F9A931A3DB090E4
          5191F74BA435807EEE514F514C122EF6B805885C02641630AF612C7473E35894
          E4C32C76898E002E0748715D12307979E40046452FE63924FF9238D87E04D1CA
          D2E4627079143437E270092A7751EF1711D15CC2E72C6016D269A9732E13E1ED
          A2CE9AAE26760323E960FB81895210D0A4E551347A6900F357FEF0C775CEFB65
          C7895E580090A8F70B0F61D3D1FB4580E5048032CF78BFC01B8C9D15452F7EE4
          E24385B873E43437E6BD5FD207DB3B80A1C8237ECB54E7F43AE2FD42018C18A2
          38EE55B92CA2443021687E06BC5FC4FC5A6C3B23DE2F4E2493F07E99C17C56D0
          DCF87D79BF24E45127EF975B18E358F4D200E6AF02603A7ABF84B52DC10E526F
          DE2F627D37901DD46C99F17E1151CC01B17B9A927B21AF0BBC5FDC9DA307247A
          D93086EF1CA1495EAFEF08038B770F1F2326DA078AEB62CAE1F2190FB68F7ABF
          6C027329B7B9D1864CC6FB650960392078BFC40FB67F52EF1717323D79BF387D
          4751C0FCB5FFF5E3BAA3F74BD07344F27EF1778EECC8C5DC6358719D8C58AE60
          7D94F17E19C3FC35C1FB259F7F216E4B07DBD3582483E45F7AF27EB980791AE4
          5DBA1F6C3F85F1A13B5848F228A8DE7D6AEF171998BA11CC1D3C377E680EBB67
          BEF74B208F12DE2F6380C9D704EF97063649EF173BD1DB9FF70B2E8FE4BD62EF
          970B1853004C8A2F0A307F1D0093F37EC13AA8F1D3030A1A1C33F22876B03DCC
          9CE0FD720AE35D51F412D6BFA42512F23CD1FB052FACB3AB7737147924417203
          EB49288D62518C059D6038352F731614DFC53EAF042EEDB5E7FD52D2DCD82DFF
          12CAA39307A613BB9E3CB22153E0FD720A407957228F9207DBF7EBFDE2462B05
          CD8D88F7CB0D8C098C3509307FE38F7E5C77F47E09611239D83EE5FDD27CBFB4
          F78BBD3DFD12DE0A0B82F78BDA55DA461E1580A6C0FB257FB03D451E895D2305
          9725726A40089432EFDDA1DE55CA745A5312BC747914B566B0A2155F1E75EC3D
          BA78104D8B76B4127ABF9000E379BFCCE1CF734C6C6EECE0FDC2839DA39CF70B
          76E6F416DE2F771A2E4BF9B6A300E66FFED1EBBAD4FBC5EE902EF17E719CECCA
          BD5F4C72570286E8FD22FC750FA2D60CA580217ABF24FB90B0BA174A7B40987B
          79E1C2C5864C6779E4436685E76378E23A0D976DBC5F62B52FD4FC8B06CC0DCC
          63BB0729E1FDA2BF7691F7CB127E9F8384F78B0395DEBD5FA2510C673D78BFBC
          30702103E66FFDF1EBF50E677B1DBC5FD03CCC137ABF5880A917C4E6C62113A7
          358AA42F069814649EC6FB2590486979C4DABC8B2B8F4EE0153077723279EF97
          843C8A8EB18E6422495F6A04E3CBA3BCF78B49F41A0094E45F369E3CBA77E132
          31FD460E7C78EDDB32D8BD4779EF970636F2948005C0E520E2FD9297470E4CB6
          F67E71F32EDDBD5F4E98A835B31E24C0FCED3F7EBD00A81CEE56AE0F0CC1FB25
          94415673E31378BF3880312F6982F78B828C88642880792AEF175B1A45723044
          EF170517B7FFC85DD3AA774B2023B6AFF7FB8860B6F07E89E75F68D1CB0D4064
          F260CCA4AC68C5C9BF0490890326E1FDE240862C8F8A9A1BC9DE2FB81C72229A
          ACF7CB09AC1DB89001F377FEE4F52980E55D07EF17F699BD5F4C7363039802EF
          170119715AC0710018AA44DADEFB25ACE0A5C8A31634A252770233228B6290D9
          1A2E66E89C0CE67EE7472DDBC9A384F74B41ED4B00181DB9D4EB102C1179C462
          80217BBF08C89CC37C1CF17EC1AB78FBF57E412153E0FD72077F8609C065E935
          37D201F377FFE4F508DEF49F3A78BFB094F70BD6E0D883F78B98BF80794D9047
          98F7CB0CE6B3CEF52F097B86ECC1F6147914F77EB9915BD13E5C48F2C84BF26E
          0799F37677098B5A527051D725DE2F39C0C4F32F4EF5AE38A9F108EEADEF7DB0
          98AF9FEB3D62D6BDCA4BEEE6BD5FC4D1B0675979D4BFF78B95CCF5608236375A
          A05191CB0D80652A2D1E10B89001231EBFF0A747E7F0067F53E8FD12CDC39479
          BFC4F22F68EFD1B528B64BCAA37C73E304E639CCFB7DC125E3FDE2CA224C1EA5
          93BBEF619EC168B7A20379C443A8F47BB0BD0D106122356FF33239B8B4EB8EDE
          2FE9FC0B2A951AEF97F70FE22C23E64529666E2295A4F78B13C1D86029F07E99
          0050E6707F3FD9DC189147B9530310EF9730DF52D6DCF85E9C990DF31A696E2C
          07CC2FFEE9D110DEF00B180739EF17C76EA1C0FBC53D41A0D4FB25CCBFC85FB9
          BBF7CB5047336F8AF32F19EF97D4D674A1F7CBAD8E5A1609EF972DE5910D8722
          EF97A16A58346D05587237278FC8DE2FF1AD69072A0E606EF536F422E2FD82CA
          23DFFB2559BDEB8105F37EB19B1B1F85278B8C66AA3761E52ED62640DF39C2C0
          829E7794F77EB99586E05C78C7B098F74B3960C4E357BE7A35DC712083EC1E61
          B52E9FCFFB45F62299B742208F28671F85D268C4C4498E1BF6AA0B5CECFC4BE6
          60FB12EF973BE9A7FB28C73AE1FDD2C2A6CCFB65CBE1006702D73326BBB0D370
          E9E8FD8202269D7FA9C5C169E73299DBDE0BC192028C810B634E04D393F7CB08
          E673985FA1CD8DDB79BFA47B909CE646276AB963EA673A0798AC13CD8DDD0123
          1EBF7AF5CF45243383F186E0FDE26E4123D14CCEFBA5E93B4A17D7891EA4A9F6
          DE6D5EDA9DBD5FF0DCCB88290B86E3922DEA6CD52E013056F4720BAFCCB90B16
          2FD18BE65E3E973CE2897B1C40230DA55EB970C1E451E8FDD2A5F708B916C573
          3380C92AE3FDE2ED1691BC5F82EDE952EF9706326DE43212F91900C031DA8354
          EEFDC2E8CD8D0D5C6EA55F8C000BC82182F7CB7680318F7FFABFFFD9080071B4
          AB8658EFA74043F17E893537BADEBB4DF472279A1A61BED4671FADC907DBA7FA
          8F625BD32D4084749AEA71908B6210EF97605B9AE0FD7205F7E70098CB02EF97
          4C0E0689627A1D588257CE23E5C15BC1E0FBDB3637E612BCC26A01EE8968656E
          6A5B08DE2F4EF56E81F78BB34E79BFC49A1B23DE2F4380CE54481380C201A9B9
          D19742C41E242B92B9827B7378EEB2E460FBDE00437DFCD7FFF36B783D8C0F1A
          BAF74B9377C978BFE4EB5F4A7B8FC26845443522217C046B71BAC03E1AC13C30
          FC60FB78F422CEBF5E00501672DEB07507EF9730EF52E6FDD20358B2B997914A
          088BE8864FC461F636644C73634A1E456A5FAE1F94E1B7B0585826768F5897FC
          4BC2FB45CBA308583A78BF847530C2DE527ABB1CC17A2C0CBA633B4785CD8D37
          4C78C854D542CC10F5AC3B78BF7C7EC0FCB7FFFB6B2E5CFAF37E895963769347
          B1D6800D0B13BBF19C8B886EC672A8B530951A6524D2520004E6953C1E5600C5
          2479BB7BBFE07029F77EE900946C04C33079A4F32F23F83547C2484A7BBF8C01
          28C35473A30089FE9389D31B57062889FC4B41F4E2CA23A2F74B7072637173A3
          0D96BCF7CB5083461C37228CBB474C194BA5BC5F84BDA6C8A3ACD4016BD29C8A
          1579BFC48F26F9BC80F9E1F1C3E387C70F8FD8E3FF0373E924B7BB3945480000
          000049454E44AE426082}
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
        DrawStyle = idsCenter
        VirtualWidth = 100
        VirtualHeight = 25
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000190000000E508060000007D27A1
          0A000000097048597300000B1300000B1301009A9C1800000A4F694343505068
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
          D0A7FB93199393FF040398F3FC63332DDB00004DD74944415478DAEDBD699064
          D7752676CECBBDF6AEEEAEDE37341A400320004A80289200898514E9012951A4
          244B96E461B414139CF931318ED08C2386F3C33F1CFEE1F08CFDC3F60FD27678
          14926571460B47E410144102A22892204800C4DA007ADFBBBABBF6CACAEDBD33
          E7DC7B5FE6CBECCAEA5A72799979BEEEAACA7C99F9F2EEDF3DF76CF8E517AE03
          1181BFB20C981B8160791E2008A067C065F7323948E486CDE38E021182C20AF8
          C53C78A3DB80B80D13D91CA0E7B9B2015456965CBB2E00F815007E6D7862177C
          EDADFF0C4F1FF930645219F8C6C9E7E1B78F3F0BF3131E2CEFCCC0DED7E7E1DA
          BDA3902EF830395D809F5EBB09F7EC9884A15402BC8531A88CCF0116D2902867
          21185D80F9A00249F060041250488D01CC5D060CCA52C0AE758B373201545C81
          442A0D984CD9C6E0F2F8F92580EC100432DE208024BFAFBEDFA8BEDCF23020D3
          D6E45E42778DF8412E99851F5E7819DEBCB1089FFFE06761287F1D8AFC751EDF
          3B954E99CF20B74B10F8FC97CCEDA57F888738F28F97E06E29E481A48C953224
          1249C074062ADC5F542EB92FDB22648C0E8F01F93E787C3F2F93B17546698F65
          001E035429F1F71521C5E3A82FC1F52D2FCC000E8D703F70EFE4175AD3B61D2A
          3BF298E5719C42BF72DCCB64EFE16B5C112CF01839CB43F10D7E9C3773BCB14E
          FC3C21631C3DC88D4DC07FFA1FBF04A33BF780CF63A1FC89A700975760CFA1BB
          60CF43C7E1FCB7DF810F4C1E024810CCE566612CB91B0AC525A8F0FCDE999A80
          F9E22224D37CBF2C427AA108C5B46786914F1E243D30EB383FE38F7B7C0DF92B
          79C4975678C9F1C04B378C397E6EC6378FB9A41973745BB9C3BFC4F3A2B238CF
          737A9C3F53E639C3EB503A6DDB4509640B5002690A2590689594406E27105E67
          BA383E375A76CC0EA713D9A1A7B8CB0EF93EAF97D2A75CFCA48C258499A054FC
          5B9EE30BAB1288F4A912484CA104A204A204127F34100815966CE3F7028890A5
          8EC7BC74F611DF0F6024E3C18E5C02168A01CCACF0829DF064913DCF6BE8F3DC
          A77EDD67A5BF79FE2B81C4154A204A204A20F1478440A40F3C69139E2B1D9FB3
          9BC32877D6E77C0A72139904FCC6F13138BA2D0537F23EFC87B717E0E2028F1B
          4F46137C8B7F2E573FE5C62C99C1A604124F288128812881C41FB71148D04B04
          322504B25221F8F8C11CFCEA3DA361F7C1CB5757E0CFDF5A846C52C609BDC8BF
          DE332FB8C16A08C40E3A25905842094409440924FEB8038198AE952621AA5BCA
          50DADFDB781F04B0FE350CE98EF7DFC1EFFA7CD127F885DD59F89D07C6AA2F7C
          EF5C1EBE756A09324220043FE102BF662AA204D223500251025102893FD62090
          B0C72B29EE970859986EF6036EA3B22592F57C0DFFE3E512B25E0AD6B31A98EF
          E081E07B8159F79B20E3A1F769FEBB2BC11FF8D8A12178782A03E7E7CBF0DCE9
          65582953384C8A7CC78B7CA3D7B95E3795407A014A204A204A20F1C75A1288F4
          2BEFE0CF3F3A092B391EE3EE23F277E9F2225CFECB7778C15A9FC2DDE7FB6E4B
          8EC03313C7F9F19DDFCFBC01B323F3706BF4163FF66E7B3DE0C2A57894ECA2DC
          27B9EF0E0666C126D38FB26E0AB1DD2620C940233AC50F4EF25BAE2A81C4194A
          204A204A20F1C77A08E417994086EA09645908E4AF364E204F8F6F9D40C291B8
          03B34F6529798C569769A40633FC3E5E5145D95E8732BF78913FF73A0FBA6925
          903842094409440924FEE8310271432DB903731FCB51E2EEA0B6C0CEF24F81CB
          9DE137F08486397EDF82DC8AD7EC71229CC2DB894496DAB3D9F16D6FFDC5977F
          FFEAC4BEC366CD2D7FE2692590AE43094409440924FEE8210271EA6F64F2782A
          47C92A79F088BBC5EF38CF0F2BD15B406DC0CAC2C9CB3F8CF3DF9D7C8BB1E850
          F652A960FAD45BE7AFBEFBDA9BB3D397AFAE3CF504CFF1B2124857A104A204A2
          04127FF4088154250FC83E9183E4B1AAE441748BBB4BC82380B52716B9F7F040
          C231AEDE143F1E0BDB20C5EB5429BF18944AC58B6FCE9EF9F9CDC5996B078E1C
          837D0F3FA004D215288128812881C41F3D4020C80422C38BC9E3C93AF2303A0E
          3A0777268F4604D6ED1EC679A9DD2992897CD85894F14F3691865337CE9E4B4D
          4DBE9D3C3A75E9C2B7DF8587B71F5602E928944094409440E28F9813C84D2690
          44E0259CE4714F481EDCFB33B039F2A82B16FF24F8D32C91E02EB03A1214A57C
          DA4B4105039FB9EBCA7BD76EFDFCDEECDE6BC48D333734A304D2112881288128
          81C41F31269099913998199DF1A682E18FF34A72ACC5E4516D01F3C3EB3A1771
          82C7EE0E7E3E8191573D71322925CF57203839975A3C3FAE04D2012881288128
          81C41F312690D9E1050FC6969E1809D2F746ADAD78BC9C85D6904723E49E1ED9
          185BA14462AB6DE4121EAE44572839FA7AB194BF526601654A09A44D50025102
          5102893FE24820763C79FEF8FCC72853BA27320CE71C79F8D0BE494461097819
          E6494B534438515DB7DD9B4A015DE0429C1C4D4C9C5B282E2881B4BE1B944094
          409440628FB811887BADB26DFEE39429DE0B41D8CF247E1DED268F468412C908
          2FC9BBD05A6D9966A815207165A51CBC9E48E1A5440E83F4BC12486BA004A204
          A204127FC48940ECBE3F5199987F22C814EFC19AFF87913CD0FA7978EBFAC216
          B650B564F6484B22008FD7CAE17C513CBC4209EF8DF472E902130829816CB9D9
          954094409440628FB810881B4395F1F98F3379DC1B46E2E5CBF39E3DB6AA4037
          278E85D1BBF0F2CC8D0553BC3E6FC3683449D37E74A5ECD15BDC7CE72AE4514A
          096493500251025102893FE24020E6B9481E0B56F2A885719FE7B17106BA2379
          AC8590486471DBC50F271ACBC7CD77AD0CF43A8FAB8BFCC45702D92894409440
          9440E28F381008DC2E79F0772F2056C9A3DB9247D3D6B3BF582221D8C90F27C5
          1C387C114DBDE10A41703280E054F28E04C273309D5502B14DAB04A204A20412
          7B749D40C8AB8C2F3C41D9C2BD500B9AB8E0248F32C44BF268066B528C302C41
          1BF9B14824750DC3559E86C07FDD27EF22134899CA85ACE7251EF052A9233600
          242EF09A759292E9D33CDE820D1348C5CF79092FBC1F2A816C054A204DA10412
          AD92124897090479CE7C2CC8B2E4119207114B1ED04BE451D79A26E38807A324
          311FC94824D53A3889E42ABFED3C22DECDCF77F881CD6D9270F94BF8E9499E83
          3F804A31488E4EC21D096481D79C91F1719ECF9F44A2493FB0FE2A4A205B8112
          4853288144ABA404D23D023192C7E39429DCC70F6D518016F851AF9247144E47
          0243FC27944892B7B509CF95B14C02722984B94200929A37C12CC2E3FE874C0E
          6F2687C7604D02E175CBE7F990C88D3D8BC9E43E9FD9C8DDAFA204B215288134
          851248B44A4A209D269067C68E43854748C5380916EF0DC983B1C84BEE695E75
          7B9D3CEA5AD7B6300C4BD046141D893BDA12C963FF58127EE3F828EC1A4EC2CF
          AF17E06FDE5F827C3990B12893F075AB7C6F40FDB897FBF302070F0A191D9A48
          C117EE1B83C95C4209644B5002690A259068959440BA402058189F7B82B2C5FB
          6A3A0F62F200218F382BCCB78230EC4A9689643FFF9D2854087EEF0363F0C8AE
          6C75667DEDED05F8C9950264931B6F02915EBEF8D0383CC0EB144F4125902D41
          09A4299440A2555202E914815478ED1A4F0E794F1D3AF4783993BF0F430F7364
          C903E00C1295A07F248F6628739BEEE5F971B0C80422D2C787F6E5AA2FFEC91B
          F3F0F3E92264129B2390DFBE7F0C7E718F212425902D4109A4299440A2555202
          E90481046E1C3DBA6FE713BBC7868E4796B125EEFBD3FC7710C8C33685098782
          C7F8813791F5E0B3C74660EF68127E76B5002F9ECF1BFD100256006941E2373A
          650A99F9C62C0BD6CC996A16C4C8930926E5C6DB731E7CE6D8284C0DEB11D6D6
          A004D2144A20D12A2981B49B40843CC4F3E1D103538FEF1B1DBAAFE457D7B025
          5E0FCFF08B45180CF2B0E0459DE7C7211E643B7D197F3CD6E4C4AAEC9A452CB1
          5CBBDC5C57BB184EF18EF0A3ED723FB1E662014609644B5002690A2590689594
          40DA4920A1E4F14BFB773DBE676CE8FEB2230FBEBAEC214B1E64248F7ED479AC
          05D3AA4CAB4C22B0CDC911E1709606BAC2F3E1DA06DA456E91E2FB1D8CDC4FCD
          78B7042590A6500289564909A45D04124A1E8FED9FFAE8DEB1E1E325BF6A50B4
          8C963C064BF2A88734AE8442D966C2A010258D2446709387DED226DA257ABF6D
          421C4A205B81124853288144ABA404D20E02B1E401F0D881A927F68C0E1F2FD7
          8EADF2FC738AFB7B90C9230A69E1E8A22E6DB295811D460EF69540B6022590A6
          500289564909A4D504E2C8C37B74FFD447F68D8DDC1F913C943C3A03E3F0AE04
          B215288134851248B44A4A20AD249050E7F1D8FEA927E4D8AA2679501E014FF3
          DF022879B41B4A205B86124853288144ABA404D22A0271E4814EE711519853DE
          53F2E8249440B60C2590A6500289564909A41504D28C3CF8D20ADF448EAD943C
          3A0725902D4309A4299440A2555202D92A8140CA5E7D94C963FFD8F003A19F07
          21AD20E02924258F0E430964CB5002690A259068959440B6422017FFF26D48A4
          934E613E747FC449708589E33477EC0A2879741A4A205B86124853288144ABA4
          04B2590259BCB40097FFF21DF8A5BBF67C84258F074B41D54970C54338CD9F57
          F2E80E9440B60C2590A650028956490964330422285C5FF2A6FEE1C6470EEE1C
          8B4A1E05ABF33026BBEB8BB2A868359440B60C2590A650028956490964A30412
          8E88FD6F2D7C647CBAF46005AB6324240F953CBA0B25902D4309A4299440A255
          5202D9088198160F08F7BDBDF0E1F1AB8507FD5495270A2EAA2E379A4A1E5D86
          12C896A104D2144A20D12A2981AC9740F24E02D9F7E6C247C6983C8254D8FE54
          E4E63AC5EF95632B953CBA0F25902D4309A4299440A2555202590F819C7B6C12
          0A9904EE7F4B248F95A8E451E4CE13535D258FF8400964CB5002690A25906895
          9440EE48202C699C7B7412769C59FEC8F8E57AF24082D38024D163F5D82A3E50
          02D93294409A4209245A25472041E031811CF5D2E9A37C2DC3F75EF457F22721
          99BE32580482D23F47BC4CF6185FCF719F2C07E9C4C94AC6DB979D2F3F1CD452
          AD969CC25C741E2A79C40B4A205B86124853288144AB44BC708E66BD54FAE33C
          320E859B6EB935FF97A2BC1614F23F6502A1BE2790DC70CA4B671FE77638D6D0
          0EDC1FDCA79E6D6FBE5E421B5557258FF8A12E9CFBD34C2033BC137A873BB7A8
          04B20128813445CF13487EB1A504921C1AFD18A6D2F7F95C6E399D49F14259F0
          C9948FC512DEC0E55F0C2AC5F752D21EFD082190C55999A78F31817C50DA4152
          ACA659DA28723B042EEDAA43913F70869F6D26E991A27D882494826D2623E1BF
          7E61FA9F48B7098970277E3FC82F4C2B81AC134A204DD1DB0492AE9DCD372BD7
          C6B09B0BFD8F64CD9CCC79F06BF78CC2FED124BC76BD087F7B66094ABEB9F302
          FF7A85DF5BE95AA7B51D94E39A3ECA4D9B19497BF0D97B46E0EE6D2978E75609
          BEF9FE12AC94C9F62DD2295EA56640258F38C1983AD4A5C80593D276FA04EF06
          9209CF4CAF057F69EEEB14042BDD2EEDFAABA504A204D21E02A92B89F9A82C70
          CDDB14F95F926F580E6EE380FBF9D5C78B1582CFDF370A1FDE9FABBEF0E76F2F
          C0CB570A904D0E4ECAEE02B7C3A78F0EC3278E0C57AF7D8309E4C5F379D30EDC
          4FEFF2A5795002890F48F2D77A87F9D10E9FAC58C8D3A8829717CA27BE737639
          79F2561112669206AFF23C79B9DBE55D2FCCB4436CCD51C386BF5C09A419FA85
          402411E832FFA41686E13B57FF33FCDA079E820A4BE855EF04734F995108257E
          F3DCD21CEC1ED961F48A1118029185F3B7EE1F835FDA9BADD6F23FBCB3083FBE
          BCC2F5181C0259E176F8CCB11178EAD050B51DBE757A199E3FBB6CDA81FBE93D
          BE34074A207101CF361CE7BFC7E48148D19FB97B14A6861315E4817EE2D68A9F
          FC3F7F3A6B3AD643BAC66FFC4FDD2EF1FAD0E549A704D214FD44204BFC939E1F
          816F5CFA6BF8AD0F7E1ACADC8F68FE11BF1C70B756580A4EC255C8C3DFBDF622
          7CF1839F87A25FE632A02112DE94EDF33CEFD35CE4044F3A9642C660DF48025E
          9F2EC2374F2D41BE2CF3AE6B5DD57148774E64A51D46E0C8440ADEBB5582BF7E
          6F09168B81F46D45241017E74AF51FF180CF437D1FCFB77DA2AFFAAF7913F4E8
          9EAC5CB704B25C0E92FFDB4B33B06C06324DF30B7FDDED12AF0F4A204A209D23
          906F5EFE3AFCE6239F6A4A20D761057EF0C6DFC3EF3EF4AB8E403C218F0405C1
          E35EC2BB474A2FCAE35CCA3347354BA580A51923BC004F44EE34B809FDBDEB96
          9EDCC3B5DD29ED904D7A3CA691D79DC028D213A663E92AFFBE0C5D9FDC8A0884
          40F6F37CDB2BFDF4C587C6E1015EA7B80B2B982F0727BE7B7639F9C34B796B05
          41F4267FE08775DD179DDFEEBA9D98F64C582C2824004122936DFB5152403E54
          4A45337DBB0E2590A650023104221E834FF0CF5DD1B609A8EA4768C8831F4EF3
          88B9D879255EC721B54E71731EE66A4FACD20E33DC0EE7AC65731C26B8C24166
          CB24F7CF113F00EFF04412BEC052F4B65CA282FFCB8F6E9D9829F8C9EABC25F8
          11F7E81BC013CE47268680A7493261671BBF2728577802F00E2AEBF1EE690CA6
          CB3761777A37FCC3D86978FB9F7E09E0C6745B6BB2E7D8C3F0F9FFE1FF86D2CA
          52B71B5509640D288194731EE0C7F946072375CBF33DE7F993A37C7FFE2228F1
          2D6E723566618B665E3D04A9A7C7BFB67375B7BB7690C17A8B2B3F635B7C20DA
          A19720D34848E07E7E9C11E9713C9B107D5505FFFBEF5EFF83848755DF4F3283
          1ABFCF0472464228271D8190E708A4583604921B126B9349B854BC0A87B207E0
          9B936FC26B4FF27CB939D3D69AECBDEF17E04B7FFC23288ABF4AB7A104D21483
          4A20DF7FFDFBF0FB0F7F6EB454293DC3C59B8AD46A898B7DD6E5ED6EEC98415B
          30D792B406AD2DE20E33EBACD4C884EF202412880EE4CBDFBBFE7B3C110B28E7
          5C003BDDEB65A2E0850AD0B9B509641B5C2E5E83834C20CF6D7B0B7EF6A95F01
          B872A5ADB539F8D087E10FFFAF17984016BADDB04A206B605009E4276FBF34F1
          9B0F7CFA99B25FDE1EA9144B1D705E22CA822A8615BD0322A3D5C02368244677
          4DE293012F39803EFE9B17AE7F10DC8C25C0FD204E4FF67DE50AD17799372E80
          12C8EA5002698A4123104C27B9ED717BAE089F4CA23756AB11CDF0DBCE4BDCC4
          AE768842B13138C9030F47C903AC7F4E189BAC121288587E98B3477EC7012692
          2937D28BE407DF6509E49212C82A5002698A81221079EE797B52C9CC33FC4543
          616D90E806BFE922E8B9BEA2B760063F93C7119E62DBED05833917D812DD4F1D
          818401B224D68928FEDC71161603A0EF5082AE2881344009A429068940020A0E
          2430F534172753AB065D43C44B6EEA2979287A0521071C86BA632B12E38F903C
          009A10487803B1926012C11DF6D3B44249FC0EFFBDA60412811248530C0A81F0
          BFBB10BD8FF13BD3D50A205DE61978ADAB1DA0506C1C36B002E21180A8E44173
          0DE401B00681849FF308E130DF6DD25D2AF848CFF9A5CA342981B82654026986
          012190E3FCEBF188F3931C555DE0EB37A026E62B14BD80F54A1E21D62490F086
          BC12E21192D0BDF6CA72D92F7D3B08BC9B4A20A004B206FA9F40E0612EC863E8
          ACAAA4ABF9FEE7F9F92DE86F6F7245FFC18C76160C589A062330B8D13FD7843C
          00D64120E0AE25989544A49970375EAE9483E73239EF961288124833F4318120
          13C86388F8482D522F95F9E667D15AA8A899AEA297602645807804A9E6E741AB
          1F5B45B12E021188582E71E0251CC3B8F9A44F8B94F39EF32BE3B34A204A20AB
          A11F09E4EB17FFC2FB9D5F78F6A37EE01FAF9696A08068921F69DA5545AFC192
          07AFED4C16565581CE5497602DF200D80081B82F8224CF59167170CC5CF170C1
          F7479EBBE4DF983B9451025102A947BF11487669D4CB27AF3D39313A7277B5B8
          0479B0E421F973943C14BD8430E3CD11887898F324995B0779006C904004328D
          7946E251FEE8A8F934C1DC8DA0F0DCAED481856F4F2A812881D4D04F04B21C60
          3687F86426E51DAC047E58CC45913CF85109943C14BD05C932803C7F9A3909AE
          67E1D83081D82F4148F1AFA3FC6844EEE0933F9B4CEEFEF637B6BFBDF0EA273F
          A904A204626009A4808954EA1813C8416E0C097D30E3E797DF856C6E3EC60472
          3713C841FE609ADF3ACBB7B9401E7E907B747FA490737CA37368D3CFAAA595A2
          9740263E0942D554D75EE5318DEB260F804D128840925265B8182C89E0B0B8AE
          2747876F7DB3F4CE732FFFC6B3CB70F57A5B6BAF04D22304323C36EC79898F21
          E281AA67B669135AE13DFC8F82FCD2A958114822994D245352DEC3D1F21AB3F8
          4881F8C14DBE7401D4BB5CD17BB09207B0E48111C983689E27D546C803600B04
          620B8298E6D2DC8D804349F4609ECA37FFEC5FFCEADF5EFFF9CB6D8DB3BEF7DE
          47E04B7FF2121497341A6F8C09041323139FF23CEFA0E44F4EB845BF1290C939
          C38B74A5B2BCF00D5EC5A75B41207F7FFE2578FDFA02FCD6A3BF0EC3F96B9B22
          1096929EF692E9BB7DB2D9013D535E7B368518168BAEB9644783127A5DD13F10
          C9039DE431E9AEC8EFB94D9007C0160944107001B2017A77F34773995416E6A6
          2F4F7FFD7FFA67DF0EFCCA4AED6BB0EAA2125D27CC9CC4FA6F95E45414506883
          6C0273A1940CD32625D6124FF4A34C209FF997FF2B940BCBDDEE90D81248AAB2
          CC8B63A59B2D7317D7F313B2EEEF1E4EC0B3C746605B36013FB898879F5C29B8
          E1105CE6072F816DAB487884EADA8CE115260B8C10083A0291335CC824D2F0D6
          F4BB70762E8F4FDCFD612F5B9CF54A49B92B61329940CB079E175060F216991C
          68CC624C201E1A3E33D9CBC7F9A6F709D9EDC825E0B35CDE9D4309F8F19515F8
          E1C515276AD00A7FFE2480064554F41CEC3E0AF030449D0459F2C0CD9107400B
          084420732BCB73F298FCF5124948E586AFF3ECFC0E4FD3BCFD1ACFBECB0BC0EC
          EECC228012680E485E0AC0C41392E2A430C38B71114AA6BA016465BD1DF60053
          C3200756AF9D3B0B8F6CDB0E29BFB8A9C2B61C7125103F6F09A47BCBDC87F9CB
          3F2012C73F7E78028E6FB7513E6447FF955766E1FC7C195249B4168491D6844D
          945896FF248F3B49875AF6CB4649D7B02F59374ACC20FFCD83E3F0C82E1BD24A
          08F0FF796D0EDE9B2941DA135379906C9DA5CD9453A1E812E4D4CA86DC094D75
          B74E1E002D2210014B2290E342DECDB7CCBAE25DE1C5F5797E54301288211032
          A96FB181402842204996348252A94A2019596F87844076C122CFDB372EBC070F
          4FEE84A14CCA2C1C5D478C09048232CC72B36E4F6037C8F6A3DC380F08817CE9
          17B7C1E1F15455AEF8CAAB73704A16E444FCD66021903F786402EE65C20BCBFB
          EFB92FDE9C2EB2A4634ECCDE00251045EF6075C9C3E6A7D90A7900B49040042C
          D6E330974C48248C487A897FBEC78B6C4109A43B0472837B652AE955BBB6AA43
          70650BE3C462A429C363C530BA931B81F67089AAD5AE0D963A0DB9BD17FFBF87
          77371FF703C0FB76A4E1735C9731DEC2CB91D0B74F2FF1426D740C25FECCAA96
          10EDEA5A5BECDBE68C7C9BE42E1F9723ACBB2652F085FB46613297809F5D2DC0
          374F2D41A122E75EB0E201BD0B6A79A5E80D98B16E7DF7C2F024D654B705E401
          D0620211084D0C1B49A41699F402CFBCEFF22B652590CE13C84D5EA877328104
          AEAD3CB7F29B7E48D83E10C6A0A8CEDA914C3D59D8F71952717AAAA85992FD80
          D31458767A88DFFDCB6650F08D26B209DEC123DC5AF1AD62DA90169DE1B7DF84
          EEFB5048F5122C5EDCC38F47844426321E649308B3DCFE8EECA4BCE7B8BC3762
          505E85E24E3027B944781822A6BA549FCF63AB6839810864D3294E8647212411
          C473CC0F2F3281949440068240EE437384550B285809AC5984E8293C5B84ABBC
          9BBF1CBD439721351A1601840B935DA5BCD35CDE8BDD2EA442B10E8451756BD6
          56565538C7C359F4D2AD9A6F6D211081E81E47B9C0471131658B8FA79940FE8E
          17AE8A12485F13C83DFCF00908C983E09A73A2D826A13E7997BF2259FAF816B3
          100FE28842AA99E6324E81040E254A7009C5642C2CAF9AEE2AE20EB1D415A5E7
          61689DB55533B48D40043EAF31621A299248D2AE42F43E2F5C7F6FBC779540FA
          9140EEE5D7843CC2239EABFCD64B60DC5EABD7E4AE01C4F718281C548DE5D5DC
          1E8AB8C3AC9A3CDB24AA6E55F2001335A1A5924788B6128840ACF7C799202400
          63D2D6064F12053FE0E78112485F11C8317E839047D25DBCC62D730974D15528
          3A0132EB214AC4F42A79C8C5B936481E21DA4E2002596A26F8CE47F8EB92E68C
          9C82935CD17FE0C5CB5702E90B0211E573E4D88AAEF1B54BA15156B7BB48A1E8
          7358C90358F268AD9FC77AD0760211B02482DB0C89B84586979F3790821F3381
          9012484F1388986D4B3E702779D075BE7E119438148A4EC0491E9EE46A8A1E5B
          6D24AAEEC6BF1428C3AB41966FEF77824004A2589F24C22362D8E2AAFE3A13C8
          4B4C20A404D2930472CC9187B3B63271A22E85B7E976D728147D8E55250F682F
          79C83D251FD4907BDC310211884E643B58DBE4308FF4AB4C042F2B81F41C811C
          E53F1F8750F240963C02963C6AD1AB140A45FB201A6463AADB401EED52983B13
          4462F2C091C0AD21D0A123AC2864EFBA83BFE870CD219A5EF129F8A91248CF10
          C8517EB1461E00D368C39B0328792814ED462879F01A8A9B4D06B5F12F054ACB
          F7C9D231CC8F7EE5C808EC1A49749C400442223BF9CB0EBAE8A8E043F032F3E9
          AB4A20B12790BB40240F02E3DFC3EF99E66B17B01A1445A150B4113273250BC1
          11AF833A0F30A6EC92CA9CC6245EDCAFF3DAF4E1FD39B9DE1502B10D210E5B04
          07C3E701930862EA355202892B8188FEEA29A8973C2E823AD829149D00AF9166
          36468FADE4F21C4FBF765B5B5509A42801471F1E87FB76644412E81A819842F1
          22B58BDBE4005443FC793F0ECAA5D795406247203268E5D82AEDC232B2E48117
          9054F250283A00776C253A8F4878121BDBAA2D3A8FC6EF07AB38DF261EE2F7EE
          48C317EE1D83D18CD75502718D80BBA19A6F1A03DFAFFCB0ECD3DB4A20312110
          0F0EF16744F270B1CDE006BF780155F250283A01390090E46987A12E243BCD63
          FB258F5A190052926F4DD40E66E73F9C849174F70944204AFDBDDC0E7BC3C660
          02F981EF97DECEF8A804D25D0211638727F9B98BAE4C37ACC21C953C148AF6C3
          9207882376C4DA0A618E7F7742F2B0DF27C7D604DB6AEB00AFD10175FD082B5A
          4059C4F6F2AFBDF6120665BFF4FD4491DE4B0C2B817489400EF2DFA710AAF95D
          6EF23BCF834A1E0A453B40911F7457BC3AF240E33838C733B763E44192285682
          8BD6527448F97C136C14D010C8436009A49B01EEC81616E5286B4FF56AD17F11
          B3F49E1248C709E410FF7932240F7E7CD353F25028DA059957B2684846573152
          91B43465FEBB0F22A6BA3C4FE7B0B392871C5B6D936CE3D56B44052E87245593
          4C0725FCF2F7AE3FCB0B61092998B516625D5B20AC24624944F422B298558254
          F062C2DB79A68708E40813C84EB026CAB798404E3381043D4420FBF9F9D36807
          B30C865BFCA673A0E4A150B403E2D62036B172FA223B7D9342540804C35D3F39
          F2E88CC2DC7D23A60949C823B4BA14BD4B012CB185D1A999405E98FE4357E805
          E71056E85021572DB84BA97A908B3065AEF01A9DC0B1EFCDA7E0CC9BE7DF8D2F
          818C4C0C73237E94C9E350B4FD2808AE06803F08F20BB33D40200744618ED5DC
          F67013D18C896E6E2C148A7E851857657972DD1D26322B0792C88C9923519D6E
          325DE75B9C0CEA0E6532270FDBA096144E74312B4C28D174CE9294A384FFEAF9
          EB273C0F9309BBB6E43D0ADEE597BA99F7D9BA1D787810C4CC1784DDB0B29C4A
          3CFFEA858B173EB83D86045258F6926393CF22E21E913D83A0B660273CD3AEB3
          95C5B9BFF1243F3C5FCB8DED881D81A058C2213EC50D9BB39D00335CF4B3B54C
          EA0A85A2D50833078A79EC81B114DC3D9986EBCB1578E766C99C11F11B2ABC70
          DF4430A743ED2F0E4186D703913C2C79C8A9941C5B01F90DEF457384F5D674E1
          C48BE7F3C98B8B6593C293718597946EE7AA362B5E807808C904EF9285B8F2C6
          F5D9178E4C8CDE1C4AC784404C49B96903FF082692BF2C8360CF480A9E393204
          29EE7D6E57383B5F32ED9AC90DFDEC477FF6BFFF6CDBBE23F0E093BF0E7FFAB3
          FF182702D9CFCF9EE6275957A9197EE73950C943A1681764526679261E2F0794
          38309A82DF79700CB6E7122605F45F9C5C8457AE1620652511C988D96E09C494
          07ACE411C62AE4F96F8EAD56132890D7E632AF2174E2CA5225F9D55766A1E45B
          5A892B4CB6C6B810477DC14CB964C7F0878F4CC0A171AB73BA91F7E12BDCAECB
          658291891D33DFF89FFFF97F9C3AFA007CF8F3FF04FEF8A5FF1F9EB9EB23DD27
          9000F7F1E3A7B8FC43AE36335C9973225C81928742D12EC8FC1A21C2E3799FE0
          C98343F0ABF78C189F065947DE982EC2BFE775209B34EA86799EB84BD0BEF928
          0B448E7F4D601D79C08ACB55BD1AEC11961048A142C97FFBE35B66A1F374C9D8
          148CBD1B2FCA7FF4CB93E2606373A172D3FFBB976EC1CC4A00A9548A662F9FB9
          91CC0ECD4F4EEDBFF2576F3D77F989438F1552C954E5AFDF7A0E7EFFC1CF7583
          40C474FA191E96395787190F8DC25CC943A1682FDCA28DC74B0179774FA4E177
          3F3006C3297BF0F337EF2DC1DF5FCC87BA1089B2DB2EA741D9FBE67869D816B9
          BFEF14E6FE1ADF29AB4919FD804E7CFF423EF9FCD965EB2F6F4DB44A6D2AECA6
          2B09D61A201DB926151456EE767E6DE3E64F3218F8D7538786E09923C386887F
          786905BE756AC9EC2A24E060229D11A53A047ED9ACE3BC84CF9783CAD557AFBE
          7DF5237B1E5E9A9F4CDE5A9ECA56F6BD36D70902D98B013CCD051B7295109DC7
          39B7E38853DF2B14FD0863BACB335192414D981021DB33F0C0CE345C5EACC04F
          AF16C2F7C9622E3A107FF35FD5BC0CBC140CF1B220D65FA1EF894F68248F3B1D
          F55802F9EA2BB3272E2E9493A2FDE7DDA72875B8B050B8E357771EA2D4119674
          E7F450E01DF429AEF622D4AC05BA81801B6D94108FF318F078BD868363294830
          839C9F2F996341CFAEDBDC2990C686B24AAFA5122928554A253F9D98AB64BCD9
          E199D28DE9BB462EA50AFED2E48D42F0D2D51B70DFCEEDBC3B691981ECF63CFC
          04D8F836823926B8B3B0F68E43A1E815980300F7D804D9EB76819A2030F93500
          8E8AE155A31596B35E6995F4112504AB9E2718E647E3B57B6385202834BCB719
          2C81FCD1F3D74FA43D4C3ADDC702D85D7D3C2146BE9E498F1B9248999BF9B42B
          7757498489572CC6F68B2AA4E4ACB04491EE8E04C530E11A59296A180847DDB1
          9198CB55A52A74EE94C41FE29F0ADF759989E8DAA99B7397F68F8D2E6692DE82
          373F5EA84CCC6E854076F3373DC35F36EC1A75962F9FE5EB2A7928FA0132FBB2
          CE09169D3F45DEBD16C7F12D27DDBC76E0C186C2C94990ACC5F9CDDC340299FC
          B236CADA23442AF3BCC4ABCC10124E445A84C9430487752B992D817CF9851B5F
          746BC7524C258F46482388241286D828719D4F63F7251161F4F10071374B46B2
          384B00B4BC4734CD9D74ABE1BD81AB87904816D01B62597204E47388B7ED9644
          9A0902120BE1192CA56E06E9E22C16D3579840668440E6984052EB2310F1ADF9
          240889D9228B73924A1E8A7E807344861D12A03574849560106E177F99B765A1
          135C9C20F3FA6E0843B4132DF31A5004EBB0D70A770A6987518878939398DFDA
          8DABBB3739F2D850382B51A20B814C3F0B76E1ED994584175B0F8CAD3286A136
          8A2289A015F5BA29AE0A3108D38744266D5A59A34CA1A88DEE3349269D21BE3C
          CA57854CA493D3759F406B7ACB9FE401E62D33B5DC5C82F2850478B343FCBC90
          1A2FA4FCE5D50864177FEA19441C7177D2632B453F414E01F69209FFC12B64C5
          6E8BE528C8F9B82D7AF6B4A29B3E6E8D106D6492CB76DC494C62363B2D4749B0
          F5752CD4CD6E332EE33E19A6121D7D326229C56BA9105561132D522590FF0AEC
          A21743FBD835212E7ACCDA6691959E28F0DEFD34EFFEF310031F9608D6DB35D1
          CF85120AEF1E90078138F7A1480DA2B348C22A5F40F6FF8CEF65A713416996C8
          9FBEE1C3F494104840539EE77D825FB7E48138CFC4734614661B289F421157C8
          1689E706DE27AADC142F6D8FECCE186B483187BDB15C31523CBFED2ACFA52BD0
          E1318FD65377B5F55514D653FCFA615309A4157EE36C8BBE3581146C072128FE
          E607A732B06B3801276F95E0C27CD9908849060BF29D9B5AFBC323AC9E251029
          B027A21F3745DA3DCFF3E3336815D671559C6DB08A5509C54836648EBD7094FF
          8EB85D4BEAF68F98F9219B8E256E0439DADB89356BAB5927ADF9B00A1929143D
          081EEA28D94D778B22FA53778DC05387AD7DC8C58532FCE99B0B305FF0854444
          C358EA74E1B0395F85D6A5E13C0CA0A6FCDF2A64FDF3CADC321FDA9783CFDD3B
          6AF4B1B7567CF8FFB83D2E2D1A121189270F9B24103905E9690231205E541126
          C388912C92AD704389A8DA2F2452AB69FD63990D69EEC6112BA5187DCA502472
          662899D420FE8E81F1325FE2C772CE2A7AAF50A4C7C8C7148A5E82CF73E128EF
          89B78B39ECBFF8D0A44978146EA5C499F7D46C391A5F6A6050A810FCC123E370
          DCA6A03524F2572717E10797562027965E4872ECBF19D2EAF923AC28920D6187
          97597C3BED9451FD44228DA8E61070165E69EED434C95115E12460D55A6D3588
          F82C9EA405BEC3923DD632C1D27CA8E945A2C4A250C415651EFF8778A8EE1109
          E433C746E0F1035602B9B654813F7E631E66577C778CD5B21D7EAB105D9F5ABD
          06A348208F1F1C82CF1EB3A7D70BC500FEE4CD79386F8FB1C849209B2290FE90
          402C8C28C8BFB687E187591259769248DC9C22DBD90602B1A81803EBA0145AA2
          88D5850C1221D8D52DD58C1D3715B9DD963CC0457E5CB24782D5F6533251C411
          4C199421F20EF1101E975D768677D68FEDCDC258C68357AE15E0EA62A803C125
          7EAF98FC6F721CAFBE44E26AF19FEEBC247391690209EDD1B26CE4AC9558F4C6
          5B6917AE31E6242995D4F617766761F74812DEBA5184D3B3A55091CE6B85D181
          6C067D4520E0CA9FE26A4DF2A3A4BBB0E87422B208F6B32412422C5186C93A26
          590B358422EF33443117B5106329C53835A6D6681779BF98F6B1144712A66001
          AD4427D743AF58F9AC928AA21B70D2374EF280DC1FC99C695E58C50A4B365133
          10130984C4A70D71A7DBF0CA09C2F2067C30D6F51568E6396657B3C2B2913068
          8536DF1EC29B7D4520A6D1985153686DAA43496411514804E36803DE4AC8E66B
          5842238436F0E6088F28248F6A1B55DBC1A4CCA4345A73E1503A5955B1EE8C87
          E5A86089774D0B8041110DB9547D87944C149D82E1061EF07B79ECEE8C5EE7F1
          2F26FD3296AB89906C445914C9A31DE14036032993588D6DB3CFA862C387B41E
          769368E67774A35831A70D5B23D3DEB7C26A02A947DAE944424964C1634904E2
          6503DE4A58C98358F2C0702726D2C26DE4B1569B85965E721498748E468D03AF
          F1330509D162ACDE98A80129EFF2168463498FBD14AD84D5F7218EF3A303600D
          47EC0BE2CF60F47866531312888C3D218D8E5B5EDDA91E2EF2EDB0ABD4EDC757
          AD6D3399C309D71ED11384ADA06F0904A046229361EC29C9EAE5A1719CEB3712
          31924783CE43A403218FCDF87984E3C04914647630548BE3D5CCF4370009C419
          503EF0B8ADC9108B4CDC12D4FC5AFAA9DD159D858CF3142F5B128A6797CB5D2A
          90F12A964412F6233ADE1B633FC509328F24D779D2A6AB359650ED5E7F5BDD1E
          7D7984158549CDC8FD231EEBA1E258421A9CC1FE89381B3813DEA3500B32290B
          76ABCF7AC3B121E3C4ECEECCD19725965533003891A660AC3C10F35C1A89AFB2
          8458CDAC164A3DFDD00F8AF6C1F842F106709C258FFD580DC36320BB76F17392
          E39F5E194764AC23C910489871B02DC7576D465F4B2021C2FCBEA2137189526C
          B63DECFD9C1752FE21170E3A4C435B8A481EED428384628EBC32EEC82B09CD25
          0D29AF0B9B400B7C9745E78352868D9B0D47A3AD46CBA2E82F88D421CEB3BB78
          B3B207EA8F53F372348D3D188AC71D5F593B6349178B3D69293A100402B65E24
          8CBF2D0C54C81D36E39139CEEAD57CDF41209EE5018ACEA36AAA0BC6CBBC6B8A
          C230EA67DAEA50482C408C621E9B7F40CEAB97255A2A92588490482815F77233
          C746210ED914C839780A6CFE1A5190F69BE3E820C34A1D92B10FF000DA608021
          2AD630067B71D76EE29A10E1943B0E165D487E8DAC7F7146DF1F6145211D95E3
          4E93C4296E9191242D701E7A8F440217CE448EAD3A2979AC175105BAEC1E1336
          D48C39EE4AE17A241493BED3383686D2499554784111D15F02E665229F95F75D
          451388AEA7FA52713B641CC8B8D90956EA88EADC843464B3D0B37A4CDE246531
          8CBC8B860C7B930807480209711B89F0732691E09C8B55D30B035226572E60F2
          C07892C76AA812B4895D46948A980D47E300ADF241925C0E72C62D4A469650CC
          E70E4968BA32D3A8EF92EF249D8C638F26E906A824D2AB709B233800D6D22A84
          2F89E378B1CD634F4CD3A6A8B3BE0263C5D836EBAB7663E008045C1D658046F2
          FF9A5DEB85302557B70BB80644919823EC29F26886905412FC3BC1D34A8EBBD2
          3C2253C673B6B9846274249287F3D13D39B87F671ACECC55E08797F2A10B9698
          2EBFE74C39E3DC978A7AB85C1EB843C2B1637D8050F13312A9A31FFCB8646CEF
          00AB3724E3A0DBBBEBEE40128880D71F1AE25D70350F304130ED015E081BA6DB
          055C056667E69C04C334B46509DFEE7207C4B1CCEB45A3636312D14B0BA9F0D5
          DB2414F1A87D782A03BFFDE07855B9F2F5F716E11F2EAE18AF63B4FE3E37A1BB
          C9C514EB076F7E30C7BBA37D3C272723D765C3B4C8ABD472B70BD822849BD7B0
          8E5B092312070C2C8108C4637D98979B6A3E6026956B8874116D009A382DC8E2
          2498E5621DE542BA90EC72B463F206F4C3AE6C35D424146B322CE353CE8E332B
          3CED7EE5AE61F814FF84D1455FBABC025F7B671172494320621C71039440E20E
          235192900635EAB4B02831ABB0EFE2D891C4A833510DC978C7F774FD064A89BE
          1A44841407BC2A8920C1353224129B337493DFD992474DF2B0393DFA963C1A11
          461C960566472520DC379A84DF7E601C760E2560A114C0D7DE5E80533326401C
          31819C02EBEF13973E54DC0E19D7A2CFDA07E8ED88848012521187C030C4783F
          8D6FD9DD4C49FA09B01BD8CD46C18D0B069E40C0D5597604E3B50B74957B9A49
          84BABD8365119E250F20C9731039B6827E963CEE009A10C74909D9BD67240942
          24D7977DB8B4500E33CEC9AE55086410C7722FC06C0602A383344E81D9C80BA2
          CF135D475FEAAF2462305A0B4293A7DD8551EFE57A4AD92B834E200272D9FD6A
          24427405912E7387776B172B3B932C17EC2E268FD06263C0C9C320E1C2D3A484
          44CA810DDA954AA00DF688F03E12CD834A1F71840D45C2DCCF637A0AEA438E2C
          914D6ED66F524708A9A318EE841BC15EB6BE0AA10412818894A34C1863D50B40
          977915BA0C9D3F4B67C98332CC5D774375C049B44E9C41AAFA430C3212AEAF24
          5FBC28DD232B115DE53EBB08AAFF8813A483843C2658A2DE1F310211949D37B9
          E803FA913842C88646A48F941DADC166B300C6097284A5041281D45F3C5EC76A
          57E81237D255E8DC8E5614E6192690A358933C843424B6D5204B1EABC1441765
          D248A0CDBE286D536659E45D50AFF4B840CCCB5301C26EEEA35D50DF274B707B
          00C47E449DF515C926B037635F3542259046887D2FFF19E3B56814AA8E21243B
          5A219176EF6A03EE810C7946613EEC0A24790266062097C966E1FC074CC04C67
          A106D73CDB674A20DD43986679847F0EF06668A4B6BA102FA0B8002603DF400C
          695956C64D1BD846915870BD6C7D154209A419B8214623F17724E0F2459644AE
          41FB4844A82BCD134B02238EB86B2A79AC1FE278264704421AB2A37D9B89BF2F
          95B13D0013BA9F25E95D3C8FF660FD9C11C5B14416E875DFA58D4052CAEE7059
          52FBC1FA2A84F83B2881AC069B7D8FC6439B6DB0CFC5D1F03AB49E444C1A6751
          9887BB14B001E366F8B992C7FA4036BB5BD54F669A99E41CA82EA4D3F08DD441
          B09FC7EE58DD759B12B9D72D8F36017188AD9A2AF7BAF360142A81DC09DCD972
          9C152EEAB26BB8E002F6B56A6122B2292725306254F2106BAB7E10733B06921D
          1E82E49836031B2838E922B6EA5156FB61A50EC29DDCFA120031128A0425CAF2
          E200F92D4521361E135CEB30F3A084DAE917C95809E48E90E5DDEEA4AA24C204
          22117C2554C6561726431E920C2A42524C1EE261DE1767A4DD809862DBC94A74
          9D65EC8BA8EDD86E846176F6F3389E882C23BE0BBB2E5247AF45BC6E09CCEA81
          28D287215492B02CD493A1DB578312C8062071B342F343890C7A0E896EC1E625
          11B23B6614535D17DA007D34B1AD54F2D8244C1A63087521880106C1DBDC92FD
          6E22DA2D580306C4ED2E14493AF25A3F0540DC2C44FAC871EDADF595D1CD19FD
          47BF40096483A892880C066EBDB3BCE0CB51D34625117B6C4578177741A8A817
          C5AF92C7D6216358FA2994426E7808121B4B7521AD85D1DB19E240EB5D1D5EE7
          9F45B249C2061D32CFC7B1BA4134B1AF7ADD79300A25900D427C0E26584CB7A1
          D4112B2C858424B2DE054AAC309204DED1D0CA8B2FF88846E7D12F67A3DD868C
          6509992DC45EE135ED5DEEB33CA82EA4156041D944D3975DB5481DD9C86B327E
          45EAD04D904535743BD4ACAFFAC9E74509641340A714CBB9E7A2AC3D8388EB09
          9F4136AAAC98EA562D5464402979B4186EE7173A62DEE04E3B074A205B858CD5
          4C00B817EDC258178AC4FDF46B28920D83E77ADAEA3FCCD37EB2BE0AA104B229
          904822B00D3DCC1A4A2028B30471861729D97D79707B3B9AD805A2480B44F2A8
          3FB652F2683DC40A5B4246EC40631924125E7092A51099C0DACE1B870D804830
          CED2C70194CD532D69B1481B0BFC5CC77003EA3631DC3E847D637D154209640B
          F05C6A4A23C2DB48A274C645130D53B50A84244A81498EE4493228953C3A84E8
          04669ABFC9CC2EBA10954236069128924CC67BB83DA722690EC8E939062114C9
          8661E2B3114EB98468D256791B84B8AFA004B22520F2EE96AA24224970788CDC
          206462B1A14824594E1E896EF2701AE79D5B18ED57C9A32330C7854617C23358
          CCAF4F721F0CA023DBA6206B411080913AF623558F03E595B249F684A8D66DAB
          83C04A6961DA6C9FFACBFA2A8412480B203B321928D56C6AB2DD2805B629531E
          9A8C7911C82E44ACAD943CDA0F51F64E20562DB26E1ACB395429E40E90319AE0
          557037FF950088C640C43A72E0B2F5ED50A9630DD4C7BE3226CD3D1FBA7D3528
          81B400D26632C1C42A252DBC91E4E5E9C844DAE4EB3E3B578622EF3F1C89881E
          648677744A1E1D02398B2C7BF4826287FF1E4B2272ECA224B23A2414C9A8247B
          825A2C3881444790E3D942B70BD803A8866EB73637B4DC87C75702259016C124
          8BE15F43227D3C7364189E3E3464228D49AEEE6F9C5A32670126B81FA278B02B
          79740E62763ACEC41D7AFADF7239D3B50FEA614391D894AB7BB8799291D70631
          00E26641C6FACA867491D1572134FE1FFDB8B62A81B40812B16087248192CC78
          FFF297276138ED550F91FFDD4BB76066C58784E7491ACBE96E1776E040241EFF
          D62F84C4018EDEF5D0E4DCD6C5D0822563CC3179EC77862121E4984A88A31FCF
          EFDB0782311E59E1F1553FC5BE6A8412488B20EDB69D7F65E5A8EAC4C3137064
          C2C692937CDD5F7D7516F265738C25E7A037BA5DD80184E842C488212A859C01
          3DC622C901CCA377278F5DF1ED880440D450249B810C34849AF595248E1233F2
          6E97AB4D5002691578573B2481E47C1E2DBB8692F0D4E16148F1F2F47717F270
          61A10C093467A18BFC9EC56E97752041909048BD6049432CB2DE03BBBB1E5412
          F1ED912BEE4517ABC92170EDB2DCED02F6244C2A6A1BDAA50F635F354209A4C5
          9081939199E93B2BAC048B1D09B3C99354AB20C117FB5199D60B8858C6307D20
          CD7864A49041DB5D9B811900316978FBD0590FDAA0D35034E6B9801A8A647390
          B92D71D8ACA48B54E4762D75BB506D8412488BC1BB5993842A577F59CE404DA8
          934AB70B38E090312E249F3009C36CBE9041D285D8502404FBD0EA8442900BBB
          2E6DA1A148360F91668D35A65D48296CCF7E851248ABE1064E16C1B3F1FF2190
          FC1E05D4B68D03C44178BCA6E0A4599EF1A7A0FF8FB1C25024127E673F3FAB06
          40B43B64E314D8AF8ADE4E4148381312B33BBE5A81FE9EF755027916AC2F43DC
          9C83C224349EFB6B0C9BBA5DA875963B5AFE38B5E940833B444E14ABBA10BEF2
          3E3F17E9B05FC3BD072EE3A564099C0237166DCA665C02EB13A352476B300A61
          846D6B79D5EFA41C12C88D2F921D434B182F47A11477C4080FF48CCDDF4EA25E
          C8A355F0F533B32BDA071937128F2C0CA53FEB219D86FE9BE8E28F20DE4713CE
          297028F29A58560969F6FB02D769C8C6444E1EC845DEED57EBAB109640FEE8F9
          EB27D21E26D10E2531DD5BEA76C9C09E234E8A0771D937C6FB904C5415D27224
          24B1A49444149B41BD2E04E05D04EA278B2C59B852CC1EBB79F3B5ABA15EB2F9
          5A84F89D36F434781CA5D18E291C00EBAB109640BEFACAEC898B0BE56499479C
          87268EE4CD6E4A2224C5006236C79410C7DED1248CA63DB8B2588185A26F2C9B
          F8F222DA89A0506C1062AD0F63BCB886A13AE67844892EA41F16D4800847B826
          07B88E23910A85A14834A47DEBD19079D0380FF6B3F555084B207E4027BE7F21
          9F7CFEEC7268CE2783AD5BA67C616CA94C85D9E3819D19F8C27DA33094F2E0FD
          9932FCC5C90598171241896B649CF27A4127A2881F3CB0613B425DC8291EEC73
          D0BBBA9080103D9EC0BBC10641ACD683E9328F88421E2A75B407D2A6227DA4C9
          A6FEE977EBAB68BD252B2B9D285428F96F7F7C0B96CBD4183DB66B9020847FF8
          C804DCBB3D1D121BFCD95BF3F0B3AB45C8264DDEA6EBD0FFE78C8AF6A05E1702
          38E74170BADB85DA24640E8CB0E4B19FA7F458E4BA6C04454AEFB74C7871828C
          23F1A519B4E32B418D40AE2C55925F7D65164ABE5DA8E3801213C8AFDD33021F
          3D30547DFEFFBE3E07A75812495965C82C4A9C1ED45D956253905DFA0E0877EB
          44EFF1D85F4F6AE2B82010098A508E7BBDBDE0929891D50CAE204A864CD40088
          ED8598EF8EB2846788BBCF635F35C212C85BD385132F9ECF272F2EDA901B8C12
          D933BCAE3402F3814CE0AC849591A3AB4F1C1982DD234978F94A015EBD568812
          9C1C6617F8B928FDFB31DEBEA2BDA8934278342DF058921027BD30F945EA180A
          08F6F3E23511B92E4727725C3528BBE06E0379DCECE0456990ACAF6A751702F9
          57CF5F3FE17928464E029FBAEF002336EAE2EC64F26BF836EFB8395A1305FA2A
          B39BACD8E8895DBBEEB8141B00499E1031BF341659FCF7940724167E71D585D8
          502464F2BDEFE5919EAEBE4026719138056A00C4CE418863A77944BC54E1C01C
          5F09AA8E8427C08ABF15E70013070590081A3C3930DD705D149E25B2728898CE
          55278A700DDAF001799B3C482791E28E9005592490F008621EAD423D74028D13
          643F95E1EDD53E2ED9F64805026B868C1A00B1B3909DADA4FC0DA33CCBC9CD20
          A5F97504F2BDE9DFE3871EC52FEDA248224993CFC104C033E421128625389213
          37233AA6204A24C4EF41E3149987782E048A78A1AA0B31FA038FDEE7C9205248
          1801A1DB303238CF85EDFC80C9033391D764C32747561A00B10BE0FED8814E0A
          24E363D39799079BC112C8BF7EE1FA6F82F3A0EC76899A205AAED5264982F98F
          3B91920DD74B2E485C11944814CD5127858009BB0FA145561800B35B6347A22F
          64F8670FDAA3B6B01C52E625F713D779DBCF10A2906376637D05F138FAEF34AA
          04F25BD007C114798225B806197E50777E4D882B4826E68FEED2144D60742122
          85849B9050DA9DE30123E6E29DB6AC317391E58E31163D0EF01747233C97F8C5
          05D45024DD82B4B96CB887DCCFA0595F45DBA17F0824522FEE5C4A3B6BAE1062
          F2B8C2CBC41292E67656DC068F07BF28A69392CBA5E2A22E266DD403099D730A
          3B77BECD25E0CD10D03EA7E0AF8E6396A89758A296CD90EAF83A0FE7F34163B7
          EB66A9488347E8FD4A20B6724C1429675E574F2456EC17FD884E428501018DF3
          866358C8633C9B80A9A104CC1502B891AF18CB3F63DD64C29D60BBE788CFE431
          CE0512A7C0E1DA65B1AC12BF0E1824256DDC90E2CEDF2EF1F9244A86847E924D
          463A81EE7C9C5668B072FEF43581008461510853C6A2AB7EDA49470B91C8B9A5
          86B31E6CC8D8DFE11379DBB349F88DFB47E1F0780A66567CF8DA3B0B707EAE2C
          24422E5E56BB4C7C650C8A127F370BCEBBED915AD52970195103207619122570
          9BB817C826E3D8F634DCC73F97162BF0F36BC5D0378D5FA1D0706710D0F70412
          4542C44EAC9D711B90D18B985CE5AA681F4C84A12876AC54089E3C9483CF1E1B
          AD86CE79F9CA0AFCF9DB8B904D8AFF119D03AB0F496EE91B6F8710C36840B89F
          BF7334723D0C8018A7140B830A39C9D851E64E3ABA2D0DBFFBE0380CF3B654EC
          AAFFEADD45F8C9E515131DC329D207C50F67A00824A487A4F32FA9ED22D1A46B
          0B3DDA8BF109E6A2E8006454C879F64E89BDF6C15D59F89D07C7AAB3FF3B6797
          E16F4F2F4326698EB1AEF2BB2F23DEB6D1D8EC7811A9C3E335698AEF29099FAA
          C4C40496775287EAEBBA0F37467067BE12C0338787E0D9BB470C79C8E9E6ABD7
          0BF0A76F2C984D86F3031914639D0123100B37F9DDB156BD7E445E1311548844
          27EEE0407CA0B6A31D13F0D1033978685706CECD56E0F973CB26A8A71B08B266
          9478612FF0D2BF68245734BB4DF9098F41D71B472B20A21CA077801F8F87174D
          303E1352053500627C5035D91509448E37450219CB78C07C622284BF72B5A012
          080C06818490C427121825C5CD709BA2DD39052DA37AB40F02C4512FC77D3D49
          2E744E088F19A259746AF32EA422102EF2D29147134A84371F58DD7C849FC4C6
          8FF100DB69439118238FB0102BFC757264A59B97784002257ABC32E478240C61
          40468F2A0AF4BBB6A5E1D864CAE4287AEB46291C23AA03E97689BA00A3687716
          5BF5A679B21004C40B02AAA27D3030E44C34EBA45292C8B6A24345CA48F40368
          3E0E648C14F9D515307E4762B965A2E1D6A22700E4F846FBF8EF64F473CEAF63
          90E228C519261E01FF61A9C384294935BE41ADB00C94401ADA23E1F423C986A6
          2839FB7BD961AAA2BD7F2192488A17FD9CD59191EC280BFCDC669733D116F975
          D96888D44A66619179B3FA7830B985A84028120A4B2626F4BA78944374A35270
          E43128C71E71860D644390E58E188E06AA742FFAFCAB82D651396A48E13B3F90
          4189C21B4209647560C2C4B7A1066B1B39FB363B4B1C847495830C82DA46019B
          BC2E300B093F111B2D09A59376D7D645046E53228AF268FC242591CEC3851A33
          D2E17003C183DD48C89CAFC6E1933E0AFB99DCB5415C3B9540D60212A6785889
          E96F9D6294AC6E44229FEAAE5111CE19433664E2B1996087A2909745A62ED067
          C327037E456228959C19B9EC602B50F3F7D0B1D55E849B842CF7C108367897DB
          E8DE50264B1CD4E4F30083DB4F4A2077803B0B95C5C00CAEE840115DAB644364
          3251072F451D420B4F49F42431ACCCD858C7D9A7EC642B24965D046524120FB5
          F05864D017AB56A24A1CFC70D8117EED453211754BCE1842759FCDA104B24E38
          22318E88F5A1E365C758D38F28912864AC64F9F798B3EE0BE19B5849286A16D1
          B119FDAB6C4ED632FB0D786CF9E44191A56139360DA593F0C84BC7DAC650230E
          A29146A319B2ED1A1E55E95A786728816C10D23ED24E29E7471245895F5D327A
          1255B40F22AC021660843B5E2C77AA5207D845A904F5F32B946EF9C71385BDE7
          8EBCD62614A8FA9D94DDD1D7A0296E37033B1FD110BBC417CBD4BF4AC6BF4725
          8E0D4309640B5835340A48D809824540CDD13E40109F2251A28F4777B53653A0
          5859D19D16F988C21E25FE6FC2454AB8B38462A412C9D0C9528A251395506A08
          DB35E3741C9986D7C599538963F35002D91250BC03280564CC3A6B13DD987B8A
          923D58D6FCD4FD0DB342118E700F8F540320DA5F651E1145B0E7E99BED7FC41A
          9148AE1B8FAF784DA729DA9D340FC5320441C57ACD63B713627513725435C46D
          966DB82EC60B65EE99B2B4D980B64D2BA004D2025415ED4E22890E46D9E10889
          88C596EA47FA0BA2CC909C3392C530BAB30D9C4F402B1DCAC29DB407E44C48D1
          F82CDDC96458C2A2844AF9822393D0EC14A0FFC6A3E573EE0F96E246603589C3
          A6ED8E869E516C1E4A202D840D8D8226B56EA3E9A64CE26524E369AC03B70F40
          D6D16C14A9EE8849F412628EDBA13E96A09FF6B82BA2906F7AE4C56593233539
          B229B1D42C64220B693F492892FA57FC386E9338A8AA3B5289A3855002691312
          4EC95E1F02814C944E09D4580054457B0F42622349C89BB186454AAE17BBA8F7
          AA492836919AF8A224088D3E65AD3156311647729C4358C45AC8955E311976CA
          714AB33818EA38EA4E00F82D655289A35D5002692FC2D028AB28DA2D91A8477B
          6F41F25F4BBE8E6A2A0032B1AE82D009300E0B546D63C20C821E4942B5A842DE
          6BF62110A53F518929A71889E1154709A5A61C271AC6D5741C354B35258EF641
          09A443B0F193E8B6D0F112A4310C1DAF8827C8A4474718E31E1BAA5D353A906E
          4A1D1BAA03D42414AB90B7E17A127798F115B77BAFA0399A33062161981780CE
          2FCCAE1E2C71008AB9749DC461BB4414E36663A6C4D17E2881740E2879889264
          15ED5522B1CE4B26348AE847348C77BC20F361887F8F4A22B2C8655E5825F408
          C545EAD8689D2261528C74129289B7467D88059A0002F167A1A253C8FBD6E9CE
          7C642BED70A7D86321D22C718CAC267158A2233DAAEA2C94403A0C6BB14526BE
          56BA9AF8D08664930929D65AAA68EF3E4C887FFE356AA2B2D62ECAF5D029B09F
          10B1F2A2041A53614C90F5965F0B657E7F193C94BF2527A134DE73CD2F9590E9
          089E0B13149499980B581F5C126C904A947EC8D6DD934CE29632A9C4D12D2881
          74119E8BAFD5A068E7096923B4AA477BF720793FC6A35207B990DDD0FF52624D
          1220119B4D6E94904CD69450F89FEF8EF40A500BBB123A51367ECE338E972674
          7EDD6DF8F3380F563F9876B1AAB2D0A81CB7E6C98DDEFD8ACE42092406902304
          9383249C21AE130AA88AF64EC2669F036F9405C36170D64BD6299077D79E0955
          33D8F38342FD89716894F02B096C1668D8D250198DB48615F1F8764EB5F2921C
          E74E0A3104910C9072A7A44DEDE7C81AAB8128EDD71B2F187B5445B1315A1864
          2881C4074C206876BE3545BB49B10C2B3CBF965CEE6D9D30ED819047C699E746
          03EC897EAA30808982D6425457812E7B63181C722D1D861C31493B9625DA2D93
          C9884497DC914BC0AFDC350CA36984EF5F588193B78A268D70E3773638002AE2
          012590184132DA7836399159C4EA15ED0479445A066B5EA944D22A90C9E16142
          9120D4AD5C25B2BA0E3D5B5F0F0CADA087440932F1BC8CA49258ABE57C163FFE
          F1C31370DF76CBD98BA500BEF2CA1CDC58AE40D26A5F28E200A81247FCA00412
          43D442C79B3CEDF53948F865C988B802F1F13BE85588D421860CE38D5287730A
          54D3EACD212AA118B36134C75DFC435427A1C8F1D57FF7A149D83994A87EE8FF
          F8E92C5C982F0B81C889556850A288279440620C39EF1527B0300749E4052A5B
          FD882112C5264088C3BC5B16A7C088A42767F4410743910C1C8CFE84F744329E
          1322817C685F0EFED1DD23906689E3A7570BF08DF797A0E48BF6DE6C96F2DD2E
          B0624D2881F408560D1D6F1214112C62CD1A4517BDB52167E9E2D4294E81355F
          02E2CD309AE3AA5E700AEC7518099B496498DC78DD3F9A840C13C8A5C50A142A
          81D181703F892597F647BCA104D2630853EB36E668CFF375B1D85245FBDA1872
          990223ED27B1928C53A04A1D1D84DD0C615648A4EC5BF3B614D38A284FC8FADA
          14BB5D46C51DA104D263081D119392B808EB89C428DA8D8EC4E6D1D6C5D04274
          1D49676155F539704E8145E7BDACE80E12664344362C3DD963ABD0DA4A117F28
          81F42E8CC5D06A39DA7DB4A97555D10EA6F6392375D40540345168E3140071D0
          11ED035D837A074A207D009142D2FC2785F5DD57228265B4443268FA11D17524
          9CAEA31A0051A50E85A2A55002E92334CBD15E24A2255E4C65C73D0844224756
          397764156D0B3F9229B0DFDB40A1E8049440FA0AD6992B74444CD4BD84900791
          486C68947E5C4045139BE05FA32026BAF5AD12660A542814AD8312481FA29AA3
          DDD9DBD729DAC9A6D595A3AD7EDA898BD491755247D567866C4EF0D029B05FEA
          AA50C4054A207D0C927CDD84789BA21DACF2380C1DDFCB8A6443966473930F43
          BD314118765DCD73158AF64009640040D64C12D3DCDDA98695B4ECF423BDA868
          27939C8B48C2AED7429158A74039AE529F1885A2BD5002192C98EC73758A76D7
          E145173ABE67F40426331DE0687DAC302A31A9945C30718542D15E28810C2892
          CE622BD1707D85D75E71448CABA23D0C8038E6F261DB8BF698AA68D3AB2A148A
          0E4109648061F2F7AC121A45B6EF62AD253A9278299F25D193E427AF96D7C44C
          2A3BA740D57528149D8512C880A31A3A1E8CD556A3A21D9701836520ECE6E26C
          0320028A37793500A2CD914225974255A150741E4A200A0732694A6F0B1D2F26
          B024117F6D9EEB2E10090D119823AB6882AD0A5AA7C05EB62053287A1D4A208A
          06202490D0E468AF0E073236C145246089040B1D2885588E25F9D7187F5F2EAA
          25770E812A752814DD871288E23684E6BC49C46AA4D41AD0E5686FDF222E29B3
          7380DE5883B558C539056A863A85221E500251AC05748AF6DB72B44B1A87655E
          CB5B99A35D94F709FECA51A460B87A4B1442314E8165D0F1A950C4094A208A75
          019DB5D66D1EEDE43CDA716BFA08710ACC3AA7C05A0044E2FB5BA7C078598329
          140A81128862DD2074117FE1B61CEDA2D4368E887968EED11E1D5B18B9260110
          47907024F2298A640AEC76BD150AC5EA5002516C0A2191241B98A2E41C1145D1
          6E88C40E281A42F0DC31981003ACA00DA392714E81D55024CE29903F4F7EB72B
          A95028D6841288622BB83D74BC153F68056C8E7626031A97DCD7F59F63722028
          8A851544941D361489064054287A044A208A2D210C1DBF9A477B60D2EB02A444
          51222F884ADEE7AB9E5717C02A740A0CC3AE2B148ADE801288A22520E38828F1
          B5B05ED12E2C32359480678F8DC0B66C027E70310F2F5FB5AE2446E6D0B0EB0A
          45AF420944D15218A5B80BD46814ED156690FFF6A109B87F875573949926BEF2
          CA2C5C982F43CA4322A465D071A750F4229440146D01A1E83708524220FFF4D1
          6D70682C5535CFFAEAAB73F0FE4C09D24A200A452F430944D11690D389647D96
          38EEDF99865FBB7714C6D21EBC746505BE756A094A3E8087E2474261322B8542
          D15B500251B40DE27C38C47F3D49C43E994B4226817073A502654B1EA2381165
          485C738F28148AB5A104A2681F9CE3A198F07A72946514244C2B963C8CF2BC67
          32202A148ADBA004A2683B3C739C452464828412F2C4C4B552935D85A2B7A104
          A2E8289CE5AE42A1E803288128140A85625350025128140AC5A6A004A2502814
          8A4D410944A15028149B82128842A15028360525108542A1506C0A4A200A8542
          A1D8149440140A8542B129D4118884DF56025128140AC57A2004521602F93C58
          0944A15028148AF5A2F25F0090C37B203E6990D00000000049454E44AE426082}
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
        DrawStyle = idsBottomStretch
        VirtualWidth = 200
        VirtualHeight = 115
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end>
    Left = 434
    Top = 506
  end
end
