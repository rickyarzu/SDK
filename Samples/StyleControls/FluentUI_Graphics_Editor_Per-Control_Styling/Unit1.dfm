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
    object scPageViewer1: TscPageViewer
      Left = 0
      Top = 0
      Width = 900
      Height = 485
      Align = alClient
      FluentUIOpaque = False
      TabOrder = 0
      PageIndex = 0
      Pages = <
        item
          Page = scPageViewerPage1
        end
        item
          Page = scPageViewerPage2
        end>
      ActivePage = scPageViewerPage1
      object scPageViewerPage2: TscPageViewerPage
        Left = 0
        Top = 0
        Width = 900
        Height = 485
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        Color = clBlack
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
        object scGPPanel5: TscGPPanel
          Left = 0
          Top = 0
          Width = 201
          Height = 485
          Align = alLeft
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
          CustomImageIndex = 1
          DragForm = False
          DragTopForm = True
          DrawTextMode = scdtmGDI
          FrameSides = [gppfsRight]
          FillGradientAngle = 90
          FillGradientBeginAlpha = 255
          FillGradientEndAlpha = 255
          FillGradientBeginColorOffset = 25
          FillGradientEndColorOffset = 25
          FrameWidth = 1
          FillColor = clWindow
          FillColorAlpha = 150
          FillColor2 = clNone
          FrameColor = clBlack
          FrameColorAlpha = 30
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
          Caption = 'scGPPanel1'
          TransparentBackground = True
          StorePaintBuffer = True
          Sizeable = False
          WallpaperIndex = -1
          WordWrap = False
          object BackButton: TscGPGlyphButton
            AlignWithMargins = True
            Left = 0
            Top = 20
            Width = 200
            Height = 50
            Margins.Left = 0
            Margins.Top = 20
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 0
            OnClick = BackButtonClick
            Animation = False
            Badge.Color = clRed
            Badge.ColorAlpha = 255
            Badge.Font.Charset = DEFAULT_CHARSET
            Badge.Font.Color = clWhite
            Badge.Font.Height = -11
            Badge.Font.Name = 'Tahoma'
            Badge.Font.Style = [fsBold]
            Badge.Visible = False
            Caption = 'Back'
            CaptionCenterAlignment = False
            CanFocused = False
            CustomDropDown = False
            DrawTextMode = scdtmGDIPlus
            FluentLightEffect = True
            Layout = blGlyphLeft
            TransparentBackground = True
            ColorValue = clRed
            Options.NormalColor = clWindowText
            Options.HotColor = clWindowText
            Options.PressedColor = clWindowText
            Options.FocusedColor = clWindowText
            Options.DisabledColor = clHighlightText
            Options.NormalColor2 = clNone
            Options.HotColor2 = clNone
            Options.PressedColor2 = clNone
            Options.FocusedColor2 = clNone
            Options.DisabledColor2 = clNone
            Options.NormalColorAlpha = 0
            Options.HotColorAlpha = 25
            Options.PressedColorAlpha = 50
            Options.FocusedColorAlpha = 20
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
            Options.FrameDisabledColor = clWindowText
            Options.FrameWidth = 1
            Options.FrameNormalColorAlpha = 0
            Options.FrameHotColorAlpha = 0
            Options.FramePressedColorAlpha = 0
            Options.FrameFocusedColorAlpha = 0
            Options.FrameDisabledColorAlpha = 0
            Options.FontNormalColor = clWindowText
            Options.FontHotColor = clWindowText
            Options.FontPressedColor = clWindowText
            Options.FontFocusedColor = clWindowText
            Options.FontDisabledColor = clWindowText
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
            GlyphOptions.Kind = scgpbgkPriorArrow
            GlyphOptions.Thickness = 2
            GlyphOptions.ThicknessScaled = False
            GlyphOptions.Size = 0
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
            ToggleMode = False
          end
          object scGPCharGlyphButton4: TscGPCharGlyphButton
            AlignWithMargins = True
            Left = 0
            Top = 100
            Width = 200
            Height = 50
            Margins.Left = 0
            Margins.Top = 30
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 1
            OnClick = scGPCharGlyphButton4Click
            Animation = False
            Badge.Color = clRed
            Badge.ColorAlpha = 255
            Badge.Font.Charset = DEFAULT_CHARSET
            Badge.Font.Color = clWhite
            Badge.Font.Height = -11
            Badge.Font.Name = 'Tahoma'
            Badge.Font.Style = [fsBold]
            Badge.Visible = False
            Caption = 'Image'
            CaptionCenterAlignment = False
            CanFocused = False
            CustomDropDown = False
            DrawTextMode = scdtmGDIPlus
            FluentLightEffect = True
            Layout = blGlyphLeft
            TransparentBackground = True
            Options.NormalColor = clWindowText
            Options.HotColor = clWindowText
            Options.PressedColor = clWindowText
            Options.FocusedColor = clWindowText
            Options.DisabledColor = clHighlightText
            Options.NormalColor2 = clNone
            Options.HotColor2 = clNone
            Options.PressedColor2 = clNone
            Options.FocusedColor2 = clNone
            Options.DisabledColor2 = clNone
            Options.NormalColorAlpha = 0
            Options.HotColorAlpha = 25
            Options.PressedColorAlpha = 50
            Options.FocusedColorAlpha = 20
            Options.DisabledColorAlpha = 255
            Options.NormalColor2Alpha = 255
            Options.HotColor2Alpha = 255
            Options.PressedColor2Alpha = 255
            Options.FocusedColor2Alpha = 255
            Options.DisabledColor2Alpha = 255
            Options.FrameNormalColor = clNone
            Options.FrameHotColor = clNone
            Options.FramePressedColor = clHighlight
            Options.FrameFocusedColor = clNone
            Options.FrameDisabledColor = clWindowText
            Options.FrameWidth = 5
            Options.FrameNormalColorAlpha = 0
            Options.FrameHotColorAlpha = 0
            Options.FramePressedColorAlpha = 255
            Options.FrameFocusedColorAlpha = 0
            Options.FrameDisabledColorAlpha = 0
            Options.FontNormalColor = clWindowText
            Options.FontHotColor = clWindowText
            Options.FontPressedColor = clWindowText
            Options.FontFocusedColor = clWindowText
            Options.FontDisabledColor = clWindowText
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
            GlyphOptions.Index = 453
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
          object scGPCharGlyphButton2: TscGPCharGlyphButton
            Tag = 1
            Left = 0
            Top = 150
            Width = 200
            Height = 50
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 2
            OnClick = scGPCharGlyphButton2Click
            Animation = False
            Badge.Color = clRed
            Badge.ColorAlpha = 255
            Badge.Font.Charset = DEFAULT_CHARSET
            Badge.Font.Color = clWhite
            Badge.Font.Height = -11
            Badge.Font.Name = 'Tahoma'
            Badge.Font.Style = [fsBold]
            Badge.Visible = False
            Caption = 'Print'
            CaptionCenterAlignment = False
            CanFocused = False
            CustomDropDown = False
            DrawTextMode = scdtmGDIPlus
            FluentLightEffect = True
            Layout = blGlyphLeft
            TransparentBackground = True
            Options.NormalColor = clWindowText
            Options.HotColor = clWindowText
            Options.PressedColor = clWindowText
            Options.FocusedColor = clWindowText
            Options.DisabledColor = clHighlightText
            Options.NormalColor2 = clNone
            Options.HotColor2 = clNone
            Options.PressedColor2 = clNone
            Options.FocusedColor2 = clNone
            Options.DisabledColor2 = clNone
            Options.NormalColorAlpha = 0
            Options.HotColorAlpha = 25
            Options.PressedColorAlpha = 50
            Options.FocusedColorAlpha = 20
            Options.DisabledColorAlpha = 255
            Options.NormalColor2Alpha = 255
            Options.HotColor2Alpha = 255
            Options.PressedColor2Alpha = 255
            Options.FocusedColor2Alpha = 255
            Options.DisabledColor2Alpha = 255
            Options.FrameNormalColor = clNone
            Options.FrameHotColor = clNone
            Options.FramePressedColor = clHighlight
            Options.FrameFocusedColor = clNone
            Options.FrameDisabledColor = clWindowText
            Options.FrameWidth = 5
            Options.FrameNormalColorAlpha = 0
            Options.FrameHotColorAlpha = 0
            Options.FramePressedColorAlpha = 255
            Options.FrameFocusedColorAlpha = 0
            Options.FrameDisabledColorAlpha = 0
            Options.FontNormalColor = clWindowText
            Options.FontHotColor = clWindowText
            Options.FontPressedColor = clWindowText
            Options.FontFocusedColor = clWindowText
            Options.FontDisabledColor = clWindowText
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
            GlyphOptions.Index = 47
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
          object scGPCharGlyphButton5: TscGPCharGlyphButton
            Tag = 2
            Left = 0
            Top = 200
            Width = 200
            Height = 50
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 3
            OnClick = scGPCharGlyphButton5Click
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
            Layout = blGlyphLeft
            TransparentBackground = True
            Options.NormalColor = clWindowText
            Options.HotColor = clWindowText
            Options.PressedColor = clWindowText
            Options.FocusedColor = clWindowText
            Options.DisabledColor = clHighlightText
            Options.NormalColor2 = clNone
            Options.HotColor2 = clNone
            Options.PressedColor2 = clNone
            Options.FocusedColor2 = clNone
            Options.DisabledColor2 = clNone
            Options.NormalColorAlpha = 0
            Options.HotColorAlpha = 25
            Options.PressedColorAlpha = 50
            Options.FocusedColorAlpha = 20
            Options.DisabledColorAlpha = 255
            Options.NormalColor2Alpha = 255
            Options.HotColor2Alpha = 255
            Options.PressedColor2Alpha = 255
            Options.FocusedColor2Alpha = 255
            Options.DisabledColor2Alpha = 255
            Options.FrameNormalColor = clNone
            Options.FrameHotColor = clNone
            Options.FramePressedColor = clHighlight
            Options.FrameFocusedColor = clNone
            Options.FrameDisabledColor = clWindowText
            Options.FrameWidth = 5
            Options.FrameNormalColorAlpha = 0
            Options.FrameHotColorAlpha = 0
            Options.FramePressedColorAlpha = 255
            Options.FrameFocusedColorAlpha = 0
            Options.FrameDisabledColorAlpha = 0
            Options.FontNormalColor = clWindowText
            Options.FontHotColor = clWindowText
            Options.FontPressedColor = clWindowText
            Options.FontFocusedColor = clWindowText
            Options.FontDisabledColor = clWindowText
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
            Down = False
            GroupIndex = 1
            AllowAllUp = False
            WordWrap = False
            ToggleMode = False
          end
          object scGPCharGlyphButton1: TscGPCharGlyphButton
            Left = 0
            Top = 435
            Width = 200
            Height = 50
            Align = alBottom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 4
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
            Caption = 'Close'
            CaptionCenterAlignment = False
            CanFocused = False
            CustomDropDown = False
            DrawTextMode = scdtmGDIPlus
            FluentLightEffect = True
            Layout = blGlyphLeft
            TransparentBackground = True
            Options.NormalColor = clWindowText
            Options.HotColor = clWindowText
            Options.PressedColor = clWindowText
            Options.FocusedColor = clWindowText
            Options.DisabledColor = clHighlightText
            Options.NormalColor2 = clNone
            Options.HotColor2 = clNone
            Options.PressedColor2 = clNone
            Options.FocusedColor2 = clNone
            Options.DisabledColor2 = clNone
            Options.NormalColorAlpha = 0
            Options.HotColorAlpha = 25
            Options.PressedColorAlpha = 50
            Options.FocusedColorAlpha = 20
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
            Options.FrameDisabledColor = clWindowText
            Options.FrameWidth = 1
            Options.FrameNormalColorAlpha = 0
            Options.FrameHotColorAlpha = 0
            Options.FramePressedColorAlpha = 0
            Options.FrameFocusedColorAlpha = 0
            Options.FrameDisabledColorAlpha = 0
            Options.FontNormalColor = clWindowText
            Options.FontHotColor = clWindowText
            Options.FontPressedColor = clWindowText
            Options.FontFocusedColor = clWindowText
            Options.FontDisabledColor = clWindowText
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
        end
        object ClientPanel2: TscPanel
          Left = 201
          Top = 0
          Width = 699
          Height = 485
          Align = alClient
          FluentUIOpaque = True
          TabOrder = 1
          StyleName = 'Windows10'
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
          Caption = 'ClientPanel2'
          StorePaintBuffer = False
          WordWrap = False
          object scPageViewer2: TscPageViewer
            Left = 0
            Top = 34
            Width = 699
            Height = 451
            Align = alClient
            FluentUIOpaque = False
            TabOrder = 0
            PageIndex = 0
            Pages = <
              item
                Page = scPageViewerPage3
              end
              item
                Page = scPageViewerPage4
              end
              item
                Page = scPageViewerPage5
              end>
            ActivePage = scPageViewerPage3
            object scPageViewerPage5: TscPageViewerPage
              Left = 0
              Top = 0
              Width = 699
              Height = 451
              HorzScrollBar.Tracking = True
              VertScrollBar.Tracking = True
              Align = alClient
              BorderStyle = bsNone
              Color = clWindow
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
              StorePaintBuffer = False
              MouseWheelSupport = False
              BackgroundStyle = scsbsFormBackground
              object scLabel3: TscLabel
                AlignWithMargins = True
                Left = 3
                Top = 10
                Width = 693
                Height = 47
                Margins.Top = 10
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -23
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
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
                VertAlignment = scvtaCenter
                UseFontColorToStyleColor = False
                Caption = 'Settings'
              end
            end
            object scPageViewerPage4: TscPageViewerPage
              Left = 0
              Top = 0
              Width = 699
              Height = 451
              HorzScrollBar.Tracking = True
              VertScrollBar.Tracking = True
              Align = alClient
              BorderStyle = bsNone
              Color = clWindow
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
              StorePaintBuffer = False
              MouseWheelSupport = False
              BackgroundStyle = scsbsFormBackground
              object scLabel2: TscLabel
                AlignWithMargins = True
                Left = 3
                Top = 10
                Width = 693
                Height = 47
                Margins.Top = 10
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -23
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
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
                VertAlignment = scvtaCenter
                UseFontColorToStyleColor = False
                Caption = 'Print'
              end
            end
            object scPageViewerPage3: TscPageViewerPage
              Left = 0
              Top = 0
              Width = 699
              Height = 451
              HorzScrollBar.Tracking = True
              VertScrollBar.Tracking = True
              Align = alClient
              BorderStyle = bsNone
              Color = clWindow
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
              FluentUIOpaque = False
              StorePaintBuffer = True
              MouseWheelSupport = False
              BackgroundStyle = scsbsFormBackground
              object scLabel12: TscLabel
                AlignWithMargins = True
                Left = 3
                Top = 67
                Width = 693
                Height = 47
                Margins.Top = 10
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -23
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
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
                VertAlignment = scvtaCenter
                UseFontColorToStyleColor = False
                Caption = 'Recent Images'
              end
              object scAdvancedListBox1: TscAdvancedListBox
                AlignWithMargins = True
                Left = 3
                Top = 120
                Width = 374
                Height = 328
                Align = alLeft
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                FluentUIOpaque = False
                TabOrder = 1
                TabStop = True
                Touch.InteractiveGestures = [igPan, igPressAndTap]
                Touch.InteractiveGestureOptions = [igoPanSingleFingerVertical, igoPanInertia, igoParentPassthrough]
                CustomBackgroundImageIndex = -1
                CustomOverContentImageIndex = -1
                CustomSelectionImageIndex = -1
                CustomFocusedSelectionImageIndex = -1
                BorderStyle = scbsNone
                BackgroundStyle = scbgsTransparent
                WallpaperIndex = -1
                AutoComplete = True
                CustomCheckedImageIndex = -1
                CustomUnCheckedImageIndex = -1
                CustomCheckedDisabledImageIndex = -1
                CustomUnCheckedDisabledImageIndex = -1
                CustomButtonImageNormalIndex = -1
                CustomButtonImageHotIndex = -1
                CustomButtonImagePressedIndex = -1
                CustomButtonImageDisabledIndex = -1
                CustomHeaderImageIndex = -1
                GroupBackgroundColor = clWindow
                GroupBackgroundCustomImageIndex = -1
                SelectionStyle = scastColor
                SelectionColor = clNone
                SelectionTextColor = clHighlightText
                ShowFocusRect = False
                SelectionGlow.Enabled = True
                SelectionGlow.Color = 15385233
                SelectionGlow.AlphaValue = 255
                SelectionGlow.GlowSize = 7
                SelectionGlow.Offset = 0
                SelectionGlow.Intensive = True
                SelectionGlow.StyleColors = True
                Style = scalbsPlain
                AlternateRow = False
                ShowCheckBoxes = False
                Items = <
                  item
                    Button.Enabled = True
                    Button.Visible = False
                    Button.StyleKind = sclbsPushButton
                    Button.Width = 50
                    Button.Height = 25
                    Button.ImageIndex = -1
                    Button.ImageHotIndex = -1
                    Button.ImagePressedIndex = -1
                    CustomColor = clNone
                    CustomColorAlpha = 255
                    CustomTextColor = clNone
                    CustomDetailTextColor = clNone
                    ProgressBar.Min = 0
                    ProgressBar.Max = 100
                    ProgressBar.Value = 0
                    Header = False
                    Enabled = True
                    Caption = 'Image 1'
                    Detail = 'C:\My Pictures\Image1.png'
                    Checked = False
                  end
                  item
                    Button.Enabled = True
                    Button.Visible = False
                    Button.StyleKind = sclbsPushButton
                    Button.Width = 50
                    Button.Height = 25
                    Button.ImageIndex = -1
                    Button.ImageHotIndex = -1
                    Button.ImagePressedIndex = -1
                    CustomColor = clNone
                    CustomColorAlpha = 255
                    CustomTextColor = clNone
                    CustomDetailTextColor = clNone
                    ProgressBar.Min = 0
                    ProgressBar.Max = 100
                    ProgressBar.Value = 0
                    Header = False
                    Enabled = True
                    Caption = 'Image 2'
                    Detail = 'C:\My Pictures\Image2.png'
                    Checked = False
                  end
                  item
                    Button.Enabled = True
                    Button.Visible = False
                    Button.StyleKind = sclbsPushButton
                    Button.Width = 50
                    Button.Height = 25
                    Button.ImageIndex = -1
                    Button.ImageHotIndex = -1
                    Button.ImagePressedIndex = -1
                    CustomColor = clNone
                    CustomColorAlpha = 255
                    CustomTextColor = clNone
                    CustomDetailTextColor = clNone
                    ProgressBar.Min = 0
                    ProgressBar.Max = 100
                    ProgressBar.Value = 0
                    Header = False
                    Enabled = True
                    Caption = 'Image 3'
                    Detail = 'C:\My Pictures\Image3.png'
                    Checked = False
                  end
                  item
                    Button.Enabled = True
                    Button.Visible = False
                    Button.StyleKind = sclbsPushButton
                    Button.Width = 50
                    Button.Height = 25
                    Button.ImageIndex = -1
                    Button.ImageHotIndex = -1
                    Button.ImagePressedIndex = -1
                    CustomColor = clNone
                    CustomColorAlpha = 255
                    CustomTextColor = clNone
                    CustomDetailTextColor = clNone
                    ProgressBar.Min = 0
                    ProgressBar.Max = 100
                    ProgressBar.Value = 0
                    Header = False
                    Enabled = True
                    Caption = 'Image 4'
                    Detail = 'C:\My Pictures\Image4.png'
                    Checked = False
                  end
                  item
                    Button.Enabled = True
                    Button.Visible = False
                    Button.StyleKind = sclbsPushButton
                    Button.Width = 50
                    Button.Height = 25
                    Button.ImageIndex = -1
                    Button.ImageHotIndex = -1
                    Button.ImagePressedIndex = -1
                    CustomColor = clNone
                    CustomColorAlpha = 255
                    CustomTextColor = clNone
                    CustomDetailTextColor = clNone
                    ProgressBar.Min = 0
                    ProgressBar.Max = 100
                    ProgressBar.Value = 0
                    Header = False
                    Enabled = True
                    Caption = 'Image 5'
                    Detail = 'C:\My Pictures\Image5.png'
                    Checked = False
                  end>
                ShowItemDetails = True
                ShowItemProgressBars = False
                ItemProgressBarWidth = 0
                ItemProgressBarHeight = 15
                ItemSpacing = 5
                ShowItemTitles = True
                ItemHeight = 40
                HeaderHeight = 20
                IndentMargin = 10
                ItemIndex = 0
                ShowLines = False
                LineColor = clBtnFace
                MouseMoveChangeIndex = False
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = [fsBold]
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'Tahoma'
                HeaderFont.Style = [fsBold]
                DetailFont.Charset = DEFAULT_CHARSET
                DetailFont.Color = clGrayText
                DetailFont.Height = -11
                DetailFont.Name = 'Tahoma'
                DetailFont.Style = []
                DetailPosition = sclbdBottom
                DetailWordWrap = False
                ButtonFont.Charset = DEFAULT_CHARSET
                ButtonFont.Color = clWindowText
                ButtonFont.Height = -11
                ButtonFont.Name = 'Tahoma'
                ButtonFont.Style = []
                HeaderStyle = scahsDefault
                HeaderUseStyleColor = True
              end
              object scPanel1: TscPanel
                Left = 0
                Top = 0
                Width = 699
                Height = 57
                Align = alTop
                FluentUIOpaque = False
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
                Caption = 'scPanel1'
                StorePaintBuffer = True
                WordWrap = False
                object scGPCharGlyphButton3: TscGPCharGlyphButton
                  AlignWithMargins = True
                  Left = 2
                  Top = 2
                  Width = 53
                  Height = 53
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alLeft
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
                  Caption = 'scGPCharGlyphButton1'
                  CaptionCenterAlignment = False
                  CanFocused = False
                  CustomDropDown = False
                  DrawTextMode = scdtmGDI
                  FluentLightEffect = False
                  Layout = blGlyphLeft
                  TransparentBackground = True
                  Options.NormalColor = clNone
                  Options.HotColor = clBtnText
                  Options.PressedColor = clBtnText
                  Options.FocusedColor = clNone
                  Options.DisabledColor = clNone
                  Options.NormalColor2 = clNone
                  Options.HotColor2 = clNone
                  Options.PressedColor2 = clNone
                  Options.FocusedColor2 = clNone
                  Options.DisabledColor2 = clNone
                  Options.NormalColorAlpha = 255
                  Options.HotColorAlpha = 20
                  Options.PressedColorAlpha = 30
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
                  Options.FontNormalColor = clBlack
                  Options.FontHotColor = clBlack
                  Options.FontPressedColor = clBlack
                  Options.FontFocusedColor = clBlack
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
                  GlyphOptions.Index = 22
                  GlyphOptions.Margin = 0
                  GlyphOptions.Size = 32
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
                object scGPCharGlyphButton6: TscGPCharGlyphButton
                  AlignWithMargins = True
                  Left = 132
                  Top = 2
                  Width = 53
                  Height = 53
                  Margins.Left = 10
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alLeft
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
                  Caption = 'scGPCharGlyphButton1'
                  CaptionCenterAlignment = False
                  CanFocused = False
                  CustomDropDown = False
                  DrawTextMode = scdtmGDI
                  FluentLightEffect = False
                  Layout = blGlyphLeft
                  TransparentBackground = True
                  Options.NormalColor = clNone
                  Options.HotColor = clBtnText
                  Options.PressedColor = clBtnText
                  Options.FocusedColor = clNone
                  Options.DisabledColor = clNone
                  Options.NormalColor2 = clNone
                  Options.HotColor2 = clNone
                  Options.PressedColor2 = clNone
                  Options.FocusedColor2 = clNone
                  Options.DisabledColor2 = clNone
                  Options.NormalColorAlpha = 255
                  Options.HotColorAlpha = 20
                  Options.PressedColorAlpha = 30
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
                  Options.FontNormalColor = clBlack
                  Options.FontHotColor = clBlack
                  Options.FontPressedColor = clBlack
                  Options.FontFocusedColor = clBlack
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
                  GlyphOptions.Index = 199
                  GlyphOptions.Margin = 0
                  GlyphOptions.Size = 32
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
                object scGPCharGlyphButton14: TscGPCharGlyphButton
                  AlignWithMargins = True
                  Left = 67
                  Top = 2
                  Width = 53
                  Height = 53
                  Margins.Left = 10
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alLeft
                  FluentUIOpaque = False
                  TabOrder = 2
                  Animation = False
                  Badge.Color = clRed
                  Badge.ColorAlpha = 255
                  Badge.Font.Charset = DEFAULT_CHARSET
                  Badge.Font.Color = clWhite
                  Badge.Font.Height = -11
                  Badge.Font.Name = 'Tahoma'
                  Badge.Font.Style = [fsBold]
                  Badge.Visible = False
                  Caption = 'scGPCharGlyphButton1'
                  CaptionCenterAlignment = False
                  CanFocused = False
                  CustomDropDown = False
                  DrawTextMode = scdtmGDI
                  FluentLightEffect = False
                  Layout = blGlyphLeft
                  TransparentBackground = True
                  Options.NormalColor = clNone
                  Options.HotColor = clBtnText
                  Options.PressedColor = clBtnText
                  Options.FocusedColor = clNone
                  Options.DisabledColor = clNone
                  Options.NormalColor2 = clNone
                  Options.HotColor2 = clNone
                  Options.PressedColor2 = clNone
                  Options.FocusedColor2 = clNone
                  Options.DisabledColor2 = clNone
                  Options.NormalColorAlpha = 255
                  Options.HotColorAlpha = 20
                  Options.PressedColorAlpha = 30
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
                  Options.FontNormalColor = clBlack
                  Options.FontHotColor = clBlack
                  Options.FontPressedColor = clBlack
                  Options.FontFocusedColor = clBlack
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
                  Options.StyleColors = True
                  Options.PressedHotColors = False
                  GlyphOptions.NormalColor = 4227327
                  GlyphOptions.HotColor = 4227327
                  GlyphOptions.PressedColor = 4227327
                  GlyphOptions.FocusedColor = 4227327
                  GlyphOptions.DisabledColor = clBtnText
                  GlyphOptions.NormalColorAlpha = 200
                  GlyphOptions.HotColorAlpha = 255
                  GlyphOptions.PressedColorAlpha = 255
                  GlyphOptions.FocusedColorAlpha = 255
                  GlyphOptions.DisabledColorAlpha = 100
                  GlyphOptions.Index = 277
                  GlyphOptions.Margin = 0
                  GlyphOptions.Size = 32
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
            end
          end
          object scGPPanel1: TscGPPanel
            Left = 0
            Top = 0
            Width = 699
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
            FillColor = clBtnFace
            FillColorAlpha = 255
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
            TransparentBackground = False
            StorePaintBuffer = True
            Sizeable = False
            WallpaperIndex = -1
            WordWrap = False
            object CloseButton2: TscGPGlyphButton
              AlignWithMargins = True
              Left = 654
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
              GlyphOptions.NormalColor = clBtnText
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
            object MinButton2: TscGPGlyphButton
              AlignWithMargins = True
              Left = 564
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
              Options.NormalColor = clBtnText
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
            object scGPGlyphButton12: TscGPGlyphButton
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
            object MaxButton2: TscGPGlyphButton
              AlignWithMargins = True
              Left = 609
              Top = 0
              Width = 45
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 4
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
              Options.NormalColor = clBtnText
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
            object scGPLabel2: TscGPLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 558
              Height = 28
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBtnText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FluentUIOpaque = False
              TabOrder = 4
              OnDblClick = scLabel1DblClick
              OnMouseDown = scLabel1MouseDown
              OnMouseMove = scLabel1MouseMove
              OnMouseUp = scLabel1MouseUp
              DragForm = True
              DragTopForm = True
              DrawTextMode = scdtmGDI
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
              GlowEffect.Color = clSilver
              GlowEffect.AlphaValue = 255
              GlowEffect.GlowSize = 7
              GlowEffect.Offset = 0
              GlowEffect.Intensive = True
              GlowEffect.StyleColors = True
              AutoSize = False
              Alignment = taCenter
              ShowEllipsis = True
              Caption = 'Fluent UI - Graphics Editor - Demo'
            end
          end
        end
      end
      object scPageViewerPage1: TscPageViewerPage
        Left = 0
        Top = 0
        Width = 900
        Height = 485
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        Color = clBlack
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
        object scGPPanel2: TscGPPanel
          Left = 0
          Top = 0
          Width = 900
          Height = 91
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
          Color = clBlack
          Caption = 'scGPPanel2'
          TransparentBackground = True
          StorePaintBuffer = True
          Sizeable = False
          WallpaperIndex = 0
          WordWrap = False
          DesignSize = (
            900
            91)
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
              Font.Height = -13
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
              GlowEffect.Color = clSilver
              GlowEffect.AlphaValue = 255
              GlowEffect.GlowSize = 7
              GlowEffect.Offset = 0
              GlowEffect.Intensive = True
              GlowEffect.StyleColors = True
              AutoSize = False
              ShowEllipsis = True
              Caption = 'StyleControls VCL - Fluent UI - Per-Control Styling  - Demo'
            end
          end
          object MenuButton: TscGPCharGlyphButton
            Left = 0
            Top = 34
            Width = 65
            Height = 56
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 240
            Margins.Bottom = 0
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 1
            OnClick = MenuButtonClick
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
            ShowGalleryMenuFromTop = False
            ShowGalleryMenuFromRight = False
            ShowMenuArrow = True
            ShowFocusRect = True
            Down = False
            GroupIndex = 0
            AllowAllUp = False
            ToggleMode = False
          end
          object scGPCharGlyphButton11: TscGPCharGlyphButton
            Left = 705
            Top = 34
            Width = 65
            Height = 56
            Margins.Left = 100
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FluentUIOpaque = False
            TabOrder = 2
            Animation = False
            Badge.Color = clRed
            Badge.ColorAlpha = 255
            Badge.Font.Charset = DEFAULT_CHARSET
            Badge.Font.Color = clWhite
            Badge.Font.Height = -11
            Badge.Font.Name = 'Tahoma'
            Badge.Font.Style = [fsBold]
            Badge.Visible = False
            Caption = 'Undo'
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
            GlyphOptions.Index = 274
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
            ShowGalleryMenuFromTop = False
            ShowGalleryMenuFromRight = False
            ShowMenuArrow = True
            ShowFocusRect = True
            Down = False
            GroupIndex = 0
            AllowAllUp = False
            ToggleMode = False
          end
          object scGPCharGlyphButton7: TscGPCharGlyphButton
            Left = 770
            Top = 34
            Width = 65
            Height = 56
            Margins.Left = 100
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
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
            Caption = 'Redo'
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
            GlyphOptions.Index = 100
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
            ShowGalleryMenuFromTop = False
            ShowGalleryMenuFromRight = False
            ShowMenuArrow = True
            ShowFocusRect = True
            Down = False
            GroupIndex = 0
            AllowAllUp = False
            ToggleMode = False
          end
          object scGPCharGlyphButton10: TscGPCharGlyphButton
            Left = 835
            Top = 34
            Width = 65
            Height = 56
            Margins.Left = 100
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
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
            Caption = 'History'
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
            GlyphOptions.Index = 23
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
            ShowGalleryMenuFromTop = False
            ShowGalleryMenuFromRight = False
            ShowMenuArrow = True
            ShowFocusRect = True
            Down = False
            GroupIndex = 0
            AllowAllUp = False
            ToggleMode = False
          end
          object scGPPanel6: TscGPPanel
            Left = 315
            Top = 34
            Width = 275
            Height = 56
            Anchors = [akTop]
            FluentUIOpaque = False
            TabOrder = 5
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
              AlignWithMargins = True
              Left = 10
              Top = 0
              Width = 65
              Height = 56
              Margins.Left = 10
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
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
              Caption = 'Effects'
              CaptionCenterAlignment = False
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDIPlus
              FluentLightEffect = True
              Layout = blGlyphTop
              TransparentBackground = True
              Options.NormalColor = clBtnText
              Options.HotColor = clHighlight
              Options.PressedColor = clHighlight
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
              Options.HotColor2Alpha = 100
              Options.PressedColor2Alpha = 250
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
              Options.FontPressedColor = clHighlightText
              Options.FontFocusedColor = clWindowText
              Options.FontDisabledColor = clGray
              Options.ShapeFillStyle = scgpsfGradient
              Options.ShapeFillGradientAngle = 90
              Options.ShapeFillGradientPressedAngle = 0
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
              GlyphOptions.NormalColor = clBtnText
              GlyphOptions.HotColor = clBtnText
              GlyphOptions.PressedColor = clHighlightText
              GlyphOptions.FocusedColor = clBtnText
              GlyphOptions.DisabledColor = clBtnText
              GlyphOptions.NormalColorAlpha = 200
              GlyphOptions.HotColorAlpha = 255
              GlyphOptions.PressedColorAlpha = 255
              GlyphOptions.FocusedColorAlpha = 255
              GlyphOptions.DisabledColorAlpha = 100
              GlyphOptions.Index = 208
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
              ShowGalleryMenuFromTop = False
              ShowGalleryMenuFromRight = False
              ShowMenuArrow = True
              ShowFocusRect = True
              Down = True
              GroupIndex = 1
              AllowAllUp = False
              ToggleMode = False
            end
            object scGPCharGlyphButton9: TscGPCharGlyphButton
              Left = 75
              Top = 0
              Width = 65
              Height = 56
              Margins.Left = 100
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
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
              Caption = 'Text'
              CaptionCenterAlignment = False
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDIPlus
              FluentLightEffect = True
              Layout = blGlyphTop
              TransparentBackground = True
              Options.NormalColor = clBtnText
              Options.HotColor = clHighlight
              Options.PressedColor = clHighlight
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
              Options.HotColor2Alpha = 100
              Options.PressedColor2Alpha = 250
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
              Options.FontPressedColor = clHighlightText
              Options.FontFocusedColor = clWindowText
              Options.FontDisabledColor = clGray
              Options.ShapeFillStyle = scgpsfGradient
              Options.ShapeFillGradientAngle = 90
              Options.ShapeFillGradientPressedAngle = 0
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
              GlyphOptions.NormalColor = clWindowText
              GlyphOptions.HotColor = clWindowText
              GlyphOptions.PressedColor = clHighlightText
              GlyphOptions.FocusedColor = clWindowText
              GlyphOptions.DisabledColor = clWindowText
              GlyphOptions.NormalColorAlpha = 200
              GlyphOptions.HotColorAlpha = 255
              GlyphOptions.PressedColorAlpha = 255
              GlyphOptions.FocusedColorAlpha = 255
              GlyphOptions.DisabledColorAlpha = 100
              GlyphOptions.Index = 49
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
              Left = 140
              Top = 0
              Width = 65
              Height = 56
              Margins.Left = 100
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
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
              Caption = 'Objects'
              CaptionCenterAlignment = False
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDIPlus
              FluentLightEffect = True
              Layout = blGlyphTop
              TransparentBackground = True
              Options.NormalColor = clBtnText
              Options.HotColor = clHighlight
              Options.PressedColor = clHighlight
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
              Options.HotColor2Alpha = 100
              Options.PressedColor2Alpha = 250
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
              Options.FontPressedColor = clHighlightText
              Options.FontFocusedColor = clWindowText
              Options.FontDisabledColor = clGray
              Options.ShapeFillStyle = scgpsfGradient
              Options.ShapeFillGradientAngle = 90
              Options.ShapeFillGradientPressedAngle = 0
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
              GlyphOptions.NormalColor = clWindowText
              GlyphOptions.HotColor = clWindowText
              GlyphOptions.PressedColor = clHighlightText
              GlyphOptions.FocusedColor = clWindowText
              GlyphOptions.DisabledColor = clWindowText
              GlyphOptions.NormalColorAlpha = 200
              GlyphOptions.HotColorAlpha = 255
              GlyphOptions.PressedColorAlpha = 255
              GlyphOptions.FocusedColorAlpha = 255
              GlyphOptions.DisabledColorAlpha = 100
              GlyphOptions.Index = 584
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
              Left = 205
              Top = 0
              Width = 65
              Height = 56
              Margins.Left = 100
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
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
              Caption = 'Library'
              CaptionCenterAlignment = False
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDIPlus
              FluentLightEffect = True
              Layout = blGlyphTop
              TransparentBackground = True
              Options.NormalColor = clBtnText
              Options.HotColor = clHighlight
              Options.PressedColor = clHighlight
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
              Options.HotColor2Alpha = 100
              Options.PressedColor2Alpha = 250
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
              Options.FontPressedColor = clHighlightText
              Options.FontFocusedColor = clWindowText
              Options.FontDisabledColor = clGray
              Options.ShapeFillStyle = scgpsfGradient
              Options.ShapeFillGradientAngle = 90
              Options.ShapeFillGradientPressedAngle = 0
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
              GlyphOptions.NormalColor = clWindowText
              GlyphOptions.HotColor = clWindowText
              GlyphOptions.PressedColor = clHighlightText
              GlyphOptions.FocusedColor = clWindowText
              GlyphOptions.DisabledColor = clWindowText
              GlyphOptions.NormalColorAlpha = 200
              GlyphOptions.HotColorAlpha = 255
              GlyphOptions.PressedColorAlpha = 255
              GlyphOptions.FocusedColorAlpha = 255
              GlyphOptions.DisabledColorAlpha = 100
              GlyphOptions.Index = 434
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
              ShowGalleryMenuFromTop = False
              ShowGalleryMenuFromRight = False
              ShowMenuArrow = True
              ShowFocusRect = True
              Down = False
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
            GlowEffect.Color = clSilver
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
          Top = 91
          Width = 900
          Height = 368
          Align = alClient
          FluentUIOpaque = True
          TabOrder = 2
          StyleName = 'Windows10'
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
          Caption = 'BaclgroundPanel'
          StorePaintBuffer = True
          WordWrap = False
          object ImagePanel: TscGPPanel
            Left = 0
            Top = 0
            Width = 500
            Height = 368
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
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
            FrameSides = [gppfsRight]
            FillGradientAngle = 90
            FillGradientBeginAlpha = 255
            FillGradientEndAlpha = 255
            FillGradientBeginColorOffset = 25
            FillGradientEndColorOffset = 25
            FrameWidth = 1
            FillColor = clBtnShadow
            FillColorAlpha = 50
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
            Color = clBtnFace
            Caption = 'ImagePanel'
            TransparentBackground = False
            StorePaintBuffer = True
            Sizeable = False
            WallpaperIndex = -1
            WordWrap = False
            object scCheckBox2: TscCheckBox
              Left = 36
              Top = 152
              Width = 268
              Height = 35
              FluentUIOpaque = False
              TabOrder = 0
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
              Left = 36
              Top = 193
              Width = 141
              Height = 35
              FluentUIOpaque = False
              TabOrder = 1
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
              Caption = 'Show wallpapers'
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
              Left = 36
              Top = 256
              Width = 310
              Height = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FluentUIOpaque = False
              TabOrder = 2
              StyleElements = [seClient, seBorder]
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
              Caption = 'Demo uses 3 different High-DPI VCL syles for controls!'
            end
            object scLabel14: TscLabel
              Left = 36
              Top = 290
              Width = 389
              Height = 32
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FluentUIOpaque = False
              TabOrder = 3
              StyleElements = [seClient, seBorder]
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
              WordWrap = True
              UseFontColorToStyleColor = False
              Caption = 
                'Client area uses "Windows10", Fluent area uses "Windows10 Dark" ' +
                'and page control uses "Windows10 Blue" style.'
            end
            object scRadioGroup1: TscRadioGroup
              Left = 36
              Top = 22
              Width = 209
              Height = 115
              FluentUIOpaque = False
              TabOrder = 4
              FramePosition = scgfpDefault
              CustomImageIndex = -1
              CustomImageDisabledIndex = -1
              CustomCheckedImageIndex = -1
              CustomCheckedImageHotIndex = -1
              CustomCheckedImagePressedIndex = -1
              CustomCheckedImageDisabledIndex = -1
              CustomUnCheckedImageIndex = -1
              CustomUnCheckedImageHotIndex = -1
              CustomUnCheckedImagePressedIndex = -1
              CustomUnCheckedImageDisabledIndex = -1
              Alignment = taLeftJustify
              Caption = 'System Blur Background'
              ImageIndex = -1
              ShowCheckBox = False
              Checked = False
              AutoEnabledControls = False
              GlowEffect.Enabled = False
              GlowEffect.Color = clHighlight
              GlowEffect.AlphaValue = 255
              GlowEffect.GlowSize = 7
              GlowEffect.Offset = 0
              GlowEffect.Intensive = True
              GlowEffect.StyleColors = True
              ImageGlow = True
              StorePaintBuffer = True
              ItemIndex = 0
              Items.Strings = (
                'Acrylic Blur'
                'Blur'
                'None')
              ButtonsGlowEffect.Enabled = False
              ButtonsGlowEffect.Color = 15385233
              ButtonsGlowEffect.AlphaValue = 255
              ButtonsGlowEffect.GlowSize = 7
              ButtonsGlowEffect.Offset = 0
              ButtonsGlowEffect.Intensive = True
              ButtonsGlowEffect.StyleColors = True
              ButtonsGlowEffect.HotColor = clNone
              ButtonsGlowEffect.PressedColor = clNone
              ButtonsGlowEffect.FocusedColor = clNone
              ButtonsGlowEffect.PressedGlowSize = 7
              ButtonsGlowEffect.PressedAlphaValue = 255
              ButtonsGlowEffect.States = [scsHot, scsPressed, scsFocused]
              ButtonsAnimation = False
              ShowFocusRect = True
              OnButtonClick = scRadioGroup1ButtonClick
            end
            object scCheckBox1: TscCheckBox
              Left = 332
              Top = 153
              Width = 138
              Height = 35
              FluentUIOpaque = False
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
              Checked = True
              State = cbChecked
              ShowFocusRect = True
            end
          end
          object scPageViewer3: TscPageViewer
            Left = 500
            Top = 0
            Width = 400
            Height = 368
            Align = alRight
            FluentUIOpaque = False
            TabOrder = 1
            StyleName = 'Windows10 Blue'
            PageIndex = 0
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
            ActivePage = scPageViewerPage6
            object scPageViewerPage9: TscPageViewerPage
              Left = 0
              Top = 0
              Width = 400
              Height = 368
              HorzScrollBar.Tracking = True
              VertScrollBar.Tracking = True
              Align = alClient
              BorderStyle = bsNone
              Color = clWindow
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
              FullUpdate = True
              FluentUIOpaque = False
              StorePaintBuffer = True
              MouseWheelSupport = False
              BackgroundStyle = scsbsFormBackground
              object scLabel5: TscLabel
                AlignWithMargins = True
                Left = 10
                Top = 10
                Width = 380
                Height = 33
                Margins.Left = 10
                Margins.Top = 10
                Margins.Right = 10
                Margins.Bottom = 10
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBtnText
                Font.Height = -27
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
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
                UseFontColorToStyleColor = True
                Caption = 'Library'
              end
            end
            object scPageViewerPage7: TscPageViewerPage
              Left = 0
              Top = 0
              Width = 400
              Height = 368
              HorzScrollBar.Tracking = True
              VertScrollBar.Tracking = True
              Align = alClient
              BorderStyle = bsNone
              Color = clWindow
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
              object scLabel7: TscLabel
                AlignWithMargins = True
                Left = 10
                Top = 10
                Width = 380
                Height = 33
                Margins.Left = 10
                Margins.Top = 10
                Margins.Right = 10
                Margins.Bottom = 10
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBtnText
                Font.Height = -27
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
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
                UseFontColorToStyleColor = True
                Caption = 'Text'
              end
            end
            object scPageViewerPage8: TscPageViewerPage
              Left = 0
              Top = 0
              Width = 400
              Height = 368
              HorzScrollBar.Tracking = True
              VertScrollBar.Tracking = True
              Align = alClient
              BorderStyle = bsNone
              Color = clWindow
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
              object scLabel8: TscLabel
                AlignWithMargins = True
                Left = 10
                Top = 10
                Width = 380
                Height = 33
                Margins.Left = 10
                Margins.Top = 10
                Margins.Right = 10
                Margins.Bottom = 10
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBtnText
                Font.Height = -27
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
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
                UseFontColorToStyleColor = True
                Caption = 'Objects'
              end
            end
            object scPageViewerPage6: TscPageViewerPage
              Left = 0
              Top = 0
              Width = 400
              Height = 368
              HorzScrollBar.Tracking = True
              VertScrollBar.Tracking = True
              Align = alClient
              AutoScroll = False
              BorderStyle = bsNone
              Color = clWindow
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
              FluentUIOpaque = False
              StorePaintBuffer = True
              MouseWheelSupport = False
              BackgroundStyle = scsbsFormBackground
              object scLabel6: TscLabel
                AlignWithMargins = True
                Left = 10
                Top = 10
                Width = 380
                Height = 33
                Margins.Left = 10
                Margins.Top = 10
                Margins.Right = 10
                Margins.Bottom = 10
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBtnText
                Font.Height = -27
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
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
                UseFontColorToStyleColor = True
                Caption = 'Effects'
              end
              object scGPTrackBar1: TscGPTrackBar
                Left = 116
                Top = 142
                Width = 246
                Height = 26
                FluentUIOpaque = False
                TabOrder = 1
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
                Value = 20
                Vertical = False
                ReadOnly = False
                DrawTextMode = scdtmGDI
                FocusFrameColor = clNone
                TrackColor = clBtnText
                TrackProgressColor = clBtnText
                TrackSize = 2
                TrackAlpha = 50
                TrackRounded = False
                TrackProgressAlpha = 250
                ThumbBorderInColor = clWindow
                ThumbBorderOutColor = clBtnShadow
                ThumbColor = clBtnText
                ThumbHotColor = clBtnText
                ThumbPressedColor = clBtnText
                ThumbDisabledColor = clGray
                ThumbShapeStyle = scgptssRoundedFrame
                ThumbCursor = crDefault
                ThumbUseCursor = False
              end
              object scGPTrackBar2: TscGPTrackBar
                Left = 113
                Top = 76
                Width = 246
                Height = 26
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
                Value = 80
                Vertical = False
                ReadOnly = False
                DrawTextMode = scdtmGDI
                FocusFrameColor = clNone
                TrackColor = clBtnText
                TrackProgressColor = clBtnText
                TrackSize = 2
                TrackAlpha = 50
                TrackRounded = False
                TrackProgressAlpha = 250
                ThumbBorderInColor = clWindow
                ThumbBorderOutColor = clBtnShadow
                ThumbColor = clBtnText
                ThumbHotColor = clBtnText
                ThumbPressedColor = clBtnText
                ThumbDisabledColor = clGray
                ThumbShapeStyle = scgptssRoundedFrame
                ThumbCursor = crDefault
                ThumbUseCursor = False
              end
              object scGPComboBox1: TscGPComboBox
                Left = 121
                Top = 199
                Width = 232
                Height = 33
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FluentUIOpaque = False
                TabOrder = 3
                ContentMargin = 10
                AutoComplete = False
                Animation = False
                CheckedListMode = False
                CheckedListWrap = True
                DetailPosition = scgplbdBottom
                DetailWordWrap = False
                DrawTextMode = scdtmGDI
                Items = <
                  item
                    Header = False
                    Enabled = True
                    Caption = 'None'
                    CustomColor = clNone
                    CustomColorAlpha = 255
                    CustomTextColor = clNone
                    CustomDetailTextColor = clNone
                    Checked = False
                  end
                  item
                    Header = False
                    Enabled = True
                    Caption = 'Blur'
                    CustomColor = clNone
                    CustomColorAlpha = 255
                    CustomTextColor = clNone
                    CustomDetailTextColor = clNone
                    Checked = False
                  end
                  item
                    Header = False
                    Enabled = True
                    Caption = 'Sharpen'
                    CustomColor = clNone
                    CustomColorAlpha = 255
                    CustomTextColor = clNone
                    CustomDetailTextColor = clNone
                    Checked = False
                  end
                  item
                    Header = False
                    Enabled = True
                    Caption = 'Noise'
                    CustomColor = clNone
                    CustomColorAlpha = 255
                    CustomTextColor = clNone
                    CustomDetailTextColor = clNone
                    Checked = False
                  end>
                ItemIndex = 0
                ItemWordWrap = False
                ItemShowEllipsis = False
                DropDownCount = 7
                Options.NormalColor = clBtnFace
                Options.HotColor = clBtnFace
                Options.PressedColor = clBtnShadow
                Options.FocusedColor = clBtnFace
                Options.DisabledColor = clBtnFace
                Options.NormalColorAlpha = 255
                Options.HotColorAlpha = 255
                Options.PressedColorAlpha = 200
                Options.FocusedColorAlpha = 255
                Options.DisabledColorAlpha = 255
                Options.FrameNormalColor = clBtnText
                Options.FrameHotColor = clHighlight
                Options.FramePressedColor = clHighlight
                Options.FrameFocusedColor = clHighlight
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
                Options.ShapeFillGradientAngle = 90
                Options.ShapeFillGradientPressedAngle = -90
                Options.ShapeCornerRadius = 10
                Options.ShapeStyle = scgpcssRect
                Options.ScaleFrameWidth = False
                Options.ArrowSize = 9
                Options.ArrowAreaWidth = 24
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
                ListBoxItemHeight = 30
                ListBoxHeaderHeight = 20
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
              object scGPToggleSwitch1: TscGPToggleSwitch
                Left = 121
                Top = 260
                Width = 53
                Height = 41
                FluentUIOpaque = False
                TabOrder = 4
                TabStop = True
                Animation = True
                CanFocused = True
                CaptionOn = 'On'
                CaptionOff = 'Off'
                DrawTextMode = scdtmGDI
                FrameColor = clBtnText
                FrameOnColor = clBtnText
                FramePressedColor = clBtnShadow
                ParentColor = True
                State = scswOn
                StyleKind = scswsStyled
                SwitchWidth = 44
                SwitchHeight = 22
                ShowCaption = False
                ThumbColor = clBtnText
                ThumbOnColor = clBtnFace
                ThumbPressedColor = clHighlight
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
                ThumbMarginPressed = 5
                FrameSolid = False
                FrameOnSolid = True
                FrameInside = False
                FrameWidth = 2
              end
              object scLabel9: TscLabel
                Left = 39
                Top = 79
                Width = 65
                Height = 19
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
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
                AutoSize = True
                Alignment = taRightJustify
                UseFontColorToStyleColor = False
                Caption = 'Contrast:'
              end
              object scLabel10: TscLabel
                Left = 63
                Top = 205
                Width = 41
                Height = 19
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FluentUIOpaque = False
                TabOrder = 6
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
                Alignment = taRightJustify
                UseFontColorToStyleColor = False
                Caption = 'Filter:'
              end
              object scLabel11: TscLabel
                Left = 25
                Top = 144
                Width = 79
                Height = 19
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FluentUIOpaque = False
                TabOrder = 7
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
                Alignment = taRightJustify
                UseFontColorToStyleColor = False
                Caption = 'Brightness:'
              end
              object scLabel13: TscLabel
                Left = 43
                Top = 269
                Width = 62
                Height = 19
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                FluentUIOpaque = False
                TabOrder = 8
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
                Alignment = taRightJustify
                UseFontColorToStyleColor = False
                Caption = 'Shadow:'
              end
            end
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
    Left = 536
    Top = 136
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
    Left = 624
    Top = 136
  end
  object scGPImageCollection1: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000001DC000000A90806000000813B8C
          33000000097048597300002E2300002E230178A53F7600000A4F694343505068
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
          D0A7FB93199393FF040398F3FC63332DDB00005C464944415478DAED7D09705C
          C5997FCFE8B6645BB62C4BBEF0053EC098C301037FDB0196C2BB61A142168710
          C8C16609A108C7A62001965098005BB05C0BCB59BB40381602598E80B1B90A83
          0DF8C0180C1863E3DBE8B26E59D7489AF9F7EFE97DA39E9E7ED7DC9AE95FD594
          A4D13BFAF5EBFE7EFD7DFD1DBE5028C434343434343434920B9F265C0D0D0D0D
          0D8DE44313AE8686868686460AA0095743434343432305D084ABA1A1A1A1A191
          0268C2D5D0D0D0D0D0480134E16A6868686868A4009A7035343434343452004D
          B81A1A1A1A1A1A2980265C0D0D0D0D0D37F0F14F19FF94F08F9F7F02FCD3CE3F
          FDE96ED87081265C0D0D0D0D0D2714F1CF44FE2990BE07811CE49FD674377038
          4013AE86868686861DA0CD4E65D1642BE23BFEE94C7743331D9A703534343434
          EC50C93F631C8E81597957BA1B9AE9D084ABA1A1A1A1618719FC93EFE2B87DFC
          D393EEC6663234E16A68686868D86196CBE3EAD8A0139586057CE96E80868686
          8646664052C0C00FF86226FFE4B938DDD0707D3E4D2B56D03DA3A1A1A1A16145
          B6F04E9ECC9C0937BC87AB09D71ABA67343434343444C215C97602FF14BA383D
          ECA5AC09D71ABA6734343434721C0A5F1E916CF14F2BAE888AC3D5846B0DDD33
          1A1A1A1A390C97648B9FCD6C30BBD408F33B65A6294DB8D6D03DA3A1A1A191A3
          70302313D90EF04F23FFB4B9B9A6265C6BE89ED1D0D0D0C83158384815F34F35
          8B26DB7AFE39241C3778922656CFD03DA6A1A1A1912350988FED34DB201B8CAD
          D5649B20E85ED3D0D0D0C81158243A7222DB0868B28D1DBAE73434343472001E
          CCC89A6C9304DD7B1A1A1A1A590E0BB2456DDB09C2DFB4670BB28DAAFCA3C936
          7EE81ED4B005262A269ACDDE8FFC7BF8783D413534D20F8F644B0E5211D07339
          31D0BDA8110505C9D2387153E922E2584DBE1A1AE9830DD9C28CEC67DA1B39A5
          D03DA961A7C5CAC0784111EA7C163D76B0EFD36BFEB4BE8026E0A4C1C37B740D
          FDBE86276C2C5223F9A78A69B24D0B746FE6305C0AE612369859061FBFF05101
          139788B78B0DEE033912B0466C4875694D7A579A80331B36E34245B63AF42785
          D03D9AC3B09998D0603139479BBFFBDD5E53BC3C1B9CCC98C8C8506359985A4F
          6C6F884193F5999F42A69EF3B850C0FCE9EAA25AF3CD5C588C0BCC679891C53D
          5BCCCF5AA61DA45206DDAB390A8B4989125C20D931CCBA1C979340B61A5398D4
          480FD7AB3C494F7047B8205AB23E805811EE5164FE5EC0DC2D9A70612C8CFAD8
          20017799BFD3E2290A9A78330B166343E520A5C9360DD03D9B83B09894A5FC53
          C9D4A5B8446F64C7CB3B1CDBC4062B8B0CC8FFD0135D0D0B2736FA030B235821
          60FA2F337F26B2232198697B80C898C837DC0E4DBCE9870EFDC97CE8DECD31C8
          4291FF0D813D960D6AB55187B3C83182BF51190413365457576768C1D5D5D5F8
          1B1A14047F9ECDF9846E3658D2AB8749FB46998874092187502CD262612AA4EA
          2DA940071B14D478877D8A7669A19D0668B21D1ED03D9C431035240EFE6708A6
          C6F16C50BBB5AB79D9BD67CF9EBE8F3FFEB87FE3C68D41FE09D5D4D44498188F
          39E698FC3973E6F8172D5A94377BF6EC829933678210887CC56BD3EF206E9898
          DB5986936E3A049185000560261EC506DF99688DB07B7F096992747D2C96B03F
          0F02EE539DA005786A603156ACBC9135D9A611BA977300B2A6649AFF40B670A2
          80095229ACBBBABA3A9E7BEEB9DE679E7926B87AF5EA015737E3183B76ACEFC2
          0B2F2C5ABC7871DED2A54BCB468D1A65B57F88FB221CA13DDD7D6487540A2307
          47365821A0B514D0E1D4C41476877C4FECC983785B98CD3EAF46E21143E80F91
          ADB648A409BAA7B31C1602DC896C7B1F7EF8E1F61B6FBC71A0B9B9D9B8004814
          3FE96F1554C79C7BEEB985BFF9CD6F467CFFFBDF1F515454A43A5724DD8CD474
          5325906CC8B6DCFC90469B6C6D3616807851A0BCC3EA002DD813078FA13F9A6C
          3304BAB7B31C16AB60902D266694E06E6868683BE79C73BAD7AF5F1F265A3B92
          75035CE38A2BAE1871F9E5978FACACAC548D3908841A36B82F9871A49B6CA1E4
          A0D5E25D8D48771FB87D143648B8D89F575A44B4804F0C74E8CFF084EEF12C87
          6262C22C096FE42887A8CD9B37B71E7FFCF1DD2C49E302DAEE9D77DE597EF8E1
          87AB1CAB705F90AE6BD375AA904CC1E4A0A9607F3DCFFDD53206082982D5A25B
          F54F2DE8E38326DBE10BDDEB590E6972C2ABF530D5616BD6AC695DB264498FD3
          F5AC345EB79AF0D2A54B0B6EBFFDF6B19CD8C57D5D1210D8076C6439A2E15A08
          4EDC0C5EE315E97EEE781F8F7F1AD860D293C807D4C23E66D83848C964AB1DA4
          3210BAE7B3188AC9398929CC93DBB76F6F9E3D7B76AFDDB5E2255A11D074EFBA
          EBAEB13366CC90C71FAE7380596846E9423204944DE211581F46A5FB991308E5
          224A0B7DEFD0643BBC618464A6BB111AC9833441313127C8C73436361EAAACAC
          6CE7C4E97720CED039E79CE3FB977FF997A2A38F3E3A7FFCF8F1BE11234684BA
          BABA7C070F1E64DF7EFB6D906BC97DCB972F8739D1E744C4575D75D5883FFEF1
          8F632B2A2AC8844CC2027B80752C83B4DC440B291BB2C5FB192EFBB55E804427
          0DF2975AF8BB8707B245B81DCCF91164ABFB3ABDA0F7A7DF42964221D4A7B1E8
          2C527D3FF8C10F9A56AE5C694B6E0B162C1878F2C92747CE9B370F31A0C53687
          F6EFDAB5ABFF85175EE8B8FEFAEBFB9DDAF8C4134F545C70C1054592F7327EDF
          CF6C722FA71A8914562EC836133D90E37A64F37934E9C6001DFA931DD0849BE5
          90262AC27F263329F9C4860D1B9A162E5C18B0BBCCFDF7DFEFBFE28A2BE06855
          247C8F89DDC3861C9C70FD02E1FFFDAB57AFEE3AEDB4D30E319B31B668D1A2FC
          FFF99FFFA99A356B961CBFA914CEE942920917027322CB4EB20D3F36D3A4EB19
          3AF4277BA00937CB61BE609A7810E865F42FF3FBEE934E3AA98DC27F5497E09A
          6ADEB265CBE0BC936F7E17E8EEEE6EBEE79E7B02AFBEFAAABFB6B6D638971327
          BBEEBAEB906DAADCBC8F31AE366FDE7CE8F8E38FA7F85A251E7CF0C1F25FFDEA
          5788D10DB2C805C12E169BC7328450091B5A04E4B1A1C500D5EBC5CF1EF3E35C
          04384102CB826C27996DCD152064A845FE529342241CC8D6F39EAD55E10B9D03
          3B35D0849BE59012DD4F6552D2044EB46D9C70BBACF65AEFB8E30EF6FBDFFF1E
          0E3C20DB5030186C993B776EC7F6EDDB0B98F5B8E9DBB56B57DEF4E9D311CE62
          90DC9A356B3A962C5972C8AA9D70A0FAD39FFE5475D45147C926680810B719A8
          8864E16C14267C1780A042DBA0795179BA2824421825996C91A713F730F6D43B
          3A3AFA1B1B1B03FBF6EDEBDFBD7B771FFF0C6CD9B2C5F8343434180DA9AAAA62
          A79C728A7FC1820579471F7DB49FBFB382A953A71694959515F2E72D40EA4F0F
          FDE8A92BD8E0BBED605A13B38487D01F5764EB06BAFF13078B82239A70B315C2
          8B46CE5DEC0F8A6138FDBFFBDDEF5AEFBDF7DE3E15E14E9E3CB97FFFFEFD63CD
          73595F5FDFC1C2C2426883F96E6EFDDC73CFF5FFE4273FC13D41BAC19B6FBEB9
          71F9F2E54A6D15F77FE8A1872ACF3FFF7C68A2A29007D9D639DC0BCF04532CB4
          F022E97F56690FADBE070140F352EE1DC7238C2CF6E1D03F65DEAF16756D5F77
          77B78F1329F6CF7B3EFDF4D3DE37DF7CB3F79D77DE71DC43575DEEEAABAFF6FF
          E8473F2AE4245C545E5E2E6F15240A58DCD4983F873A450B7C031E1CA4D07F88
          B38D8A3070205BAA8F1CB43A4F2376D82D7074EF6621247372051B8AE934262A
          17D05D9C54DB65A235C937F8D1471F159E7CF2C915E635DAF82404F9B921DB70
          130E1C38E09B346992212040043367CE6CB6F284BEF5D65B47FDE637BF195551
          51D1CF86C62484C91EF13873C54885170ACDE71A29DE97791BD32AF2457A4268
          BCD496B834300BCD169683D19E2F2620180CFA3A3B3BD9DEBD7BFBBFFAEAABAE
          B7DE7AABE7B5D75E0B1C3C783021DEDD13274E0CF18552FED9679F5DC4B5E152
          FEEC56C5EB3D7789791D6864352CC3C2855E7FFD75BC1F2C32FAFEF11FFF3118
          EFF53C778E37B2FD8E290A4738906DA9793D2C705176110BCD7EF95C8DD860D1
          E758B81A9642DDBB59088970315123E23ACDBDD50E95763B61C284819A9A1A90
          012665FF6DB7DD5673E38D37C6A2E5F4F1768CA1EBFCEBBFFE6BF37DF7DD17A1
          E5D2FD39D996FCF6B7BF1D27999571EC1E26ECE30A82045A2DCCD6856C480089
          640B6164D46EE564047378886B807EBE00C03D11D204A10A6F6BAB22008803AE
          37AF1333E95A68B668775C64CB174CFE7DFBF605BFF8E28B432B57AEEC4E24D1
          CA00F15E77DD7579175E786109EF3BBC4B2F0B2F27C081AA35A283D224F039D1
          E2C6E35864994A238698136F4A42D43C902D345A68B69616028B6BC1C762BC74
          5B6CA960AC0FC8D7D0F0069B6D007270D31A6E36427AF1F04E8EF0807DE38D37
          DACF3AEBAC4E15E19A7BB7103C20A396EAEAEAAEFAFA7ABFCB5B4760EBD6AD03
          73E7CEC5FDD9EAD5ABDB4F3BED34E53DB18F7BEDB5D75672AD5AD428F0FB3E26
          081553C385D080662B9BA0814E7EED8EFBEFBF3F689AB095E4306EDC3876D145
          17E5F14FFE82050BD03762A89328D4EA988DB9CEC33B602C926C63DA1F1D1818
          F0B5B4B4B06DDBB6F5BEFDF6DB9D0F3FFC7057B28856C661871D167CFEF9E70B
          4F38E184B2FCFC7CF4594C6342EC2236F88E110216F18E53054EB2E29F30F18F
          541C060DB096936ED2DAE110FAE38A6CC5BEB310FC9837958AEF7112F94BF8CC
          BD7B8D18A0E8F7286F724DB85908E1C5E34583F0402861278BBBEFBEBBED9A6B
          AEE915C98F7E5FB76E9D6FE1C28598E43057D64C9B362DE631326FDEBC5EAE85
          C131A8805FAB835FEB908A708F3DF6D8BC3FFDE94F955CA88982053F21580E09
          7FC31C3691459355A0B1B1B1E9E28B2F1EE042349C7B98AA17C910EF7FC61967
          F86FBAE9A6C2C58B17970BD7B535DB39918285C0C3C48B59B3EDEBEBF3F13E64
          1B376EECFCCB5FFED2F1EAABAFF6C57AAD3810FAF77FFF77FF65975D563A7AF4
          68324BC60B83D0C42F5241BA12D9C25232CDE6F03D7C6C06581260B3DF074D1B
          0B5F996C6186EF6316961707B2B5EA5864026B669A7063828507387C4AB0888B
          B0BE69C2CD423811EECD37DFDCC635C008CD8D88B0A9A90959A240B8C1175E78
          A1F6FCF3CF8F5993E1040B0F596875C556FBC674EF471E7964FCB265CBC4B842
          39172F9E811CB1440DB1E381071E68BEF2CA2B0DEFE958AB1B7112C9BFE79E7B
          CA8B8B8B453333EE01D334D24D86B56F3B424806D9C284CCC936F8D65B6F753C
          F4D0431DDF7CF34DCAF716452C59B224F8E28B2F8E183F7E3C0479224CCC58D4
          84BD6C934DB812D902D872A9B639A58E136EC26B36DB906D94DF058B5CFC2592
          6C23CA636AC2F5069B7788FEC682540C77D4849B8D7022DC1B6EB8A19D6B2A3D
          2A0DD73C17C4D6FFFCF3CFD75F70C1053113AEE9ED8C553A9C06BA2A2A2ADAAD
          C8F0D9679FADFEE94F7F2A6BB844B856C9215AB8806865F6D9AF5C836BF6BE37
          DE786334EF0B395407ABFF46F10B1529584C3EAACE1413BABABAFCDBB76F0FAD
          5AB5AA952F080EA5CA84EC841933660CAC5EBDBA64CA9429F0668F9774B1A8D9
          277E912CD255902D807135D9E6B4039C70BB12DD168BF1E244B6117041B6E399
          3D6041AA31EF13D27BB8EE61D1E7242F434CB175A47B370B210C04ACB060D275
          4DB88286CB3EFEF8E39A534E3925E631626AB8D0EE8A38711C2A2D2D553A6A99
          A141D55C9B664C4DB82AC1D1CE85034830A149234E3DF5D4BC952B5742D315D3
          6046A59B940593C5E483565B156B5BA0D9EED8B183AD58B1A2E5DE7BEFCD18B2
          2580743FF8E08392499326C54BBAE2F6818164087E0BB28580C402B3D4E23490
          DCDE447B2CA7996CE9DA5844806C5D596F348660D1E7B094A0DFC9521705DDBB
          590849C3A5E40A6122BBEBAEBBDAAEBDF6DA6E15F9BDF7DE7B214E3A205C7F4F
          4F4F6D4949EC7C76F5D557073851A01CA0CF6E0F17291E7FFFFBDF579D7DF6D9
          411649B8D07AE0B93C85457A24076EBEF9E603CB972F4F4A86269897F9020024
          22EE5142381DA03F62F408758DFEFE7E1F5FAC40E36EBBEDB6DBDA338D6C0973
          E6CCE9FFE4934FF85AAA1444118F23154CCA2096B0B934D1C25F41B8682FC67A
          19533BB261EC81907A12E9349544B27533F62CC956BCAE863D14EF106328EC8D
          CC2CB855F76E16420A0B02E1963241A0BCF4D24B1DFFF44FFFA424BF5FFFFAD7
          038F3EFA28CCC0D08A3B274E9CD8525B5B1B8B734C8813B6BFA8A8C8D80F7EED
          B5D75ACF39E79C5ED53D51C08093DCF8C58B178B614110047BD8E0401ECF2205
          E27E2E1830B0E3F594B5045F7894F285C748E19E4A2DD746E0D9ED9BD90231B6
          353535FEF7DF7F1FFBD348BF194B8ACB542174C30D3784F8E267647E7EFE9838
          AE836704B9585A11E28105D992661B4E772ADC1FED817565204D642B3A4885E1
          72A16735F644B2AD6552EA544DB6EE216590B2F2008F82EEE12C8444B820AB72
          FA171B4CEBD8853CCA160E46FDFC7C08216878A1EDDBB7D7CC9E3DDB33B1CD9A
          352BF0CD37DF806CE1AD1738E698630E6ED9B225E23A747F94EAFBD5AF7E35FE
          E8A38F161DB9200CF6B241A1286AE81D5C3034B1E8CC5209C582050BFC6BD7AE
          8569B948BC371B1454114E2B12E2225BA0A9A9298FBFA3DE679E79A6F9B9E79E
          8BC73BD62F7C181BCA3014123E41F3138F061D7CF9E597FD3FFCE10F41B8A571
          5C87F6CA13B69FE8C28C6C4B4289225B170E52622CB8926C8D7F2AF2210B7043
          B6B024D4314DB69E61E18D8C8E8352A00A538CBA84EEE52C8444B8D8471C2FFC
          EDABAFAFEF3BEFBCF35A39A144A4FFA34C534F3DF554E8673FFB19E5430E5C7B
          EDB5F577DD7597973DBAFE81818152BFDF0FD2665F7FFD75C791471ED9619569
          EABEFBEE1B73EEB9E7961D76D861E48109403020D1FD54F36FFA7E2F1FF4684B
          D2B45B5A08AC5AB5AA6CE9D2A5626C26C80F5AAE95C61937D9060201DFD6AD5B
          7D2FBDF452D39FFEF4A7CE182E41DE91791EDB01D2ED678A747F2E31D0D8D858
          58515141F9B76301344C104D54B293581023D9462CA61241B83604094BD25816
          29A89315FA0328C936DE7ECE05B8CD47ED04DDCB590A61804043835959148248
          DBD7B17CF9F2A84414E6DF017E3E566D63CDAF7B2EB8E08283CF3FFFBC1B41DA
          CF49A3A4A0A080524306BEF7BDEF356CDAB4496996460CEE4D37DD34E18C33CE
          088D1C395214F6D074F0B7684EEEFEF18F7F5CFFE28B2F2655BB25FCFAD7BF2E
          7AF4D14747097D074105C1ACF2581D61F6735C736ACF9E3D051F7EF8615B8CA6
          E43CB3ADF1B42156E20D5D76D965C1071F7C701417DEB19A96714FF46FB8C45C
          AC4410AF660B24996C45333221D9645BCB74FE64CFB0E873C820B71D87716754
          2AD33D9DA5900609B444222943D098F56ADBACCE3FFCF0C3033B76ECC00A9C4C
          8481CD9B37379D75D65903167BBA03B7DE7A6BF0DFFEEDDF30F92995643F27F6
          064EEC96E30C691D2FB9E492EAE38F3F1EDA8D781C1CA646B3C8CC4C4D5C38C0
          93B5902519B410E1CF5A515D5D2DDEAFC9FC880211648BB0A5B8B4EECECE4EFF
          679F7D167CFCF1C70FF24FAF8753D116106D2212511020F4BD127EF0F3CF3FCF
          9B3F7F3E84BFD77744EF389C8481C548B816648BFEC11687185AA6741C02926C
          4A4E75E88F26DB1861D1E718DFE56E4E6743646B6407D3BD9DA5B0296060A0BD
          BD3D78F5D557B73DF1C4133D5697F8877FF887BE37DE7843245DA0ABA7A7A783
          6B5FFDDBB76FF721E5DF9C3973FC53A74EA5A4E8443A7D5C136DE61A2999E9A2
          6026BC98B068D1223F72380BFF82F001E1CA31C4DF9981F98924162584CC5BA3
          172E5C280A69EC21D7A28882F95D42C8168076BB66CD9AD6DB6EBBADCD43720B
          B4A32011F757A09F0989ED5D005B11A1279F7C72A4DFEFF7AAE552FF624155CB
          62F45496C896DE11C81F9AADB81F9F69640B0FF8A8BE4E40E88F26DB3820F53B
          E618E4A11BB225445474D23D9EA590060A0432B45C3128DBF7CE3BEFF49C7FFE
          F9AD369999F03DCCCB2052689A6EF7E60E71CDB69D6BB6F8DD56BBBDF0C20B41
          B8DDD2BF28FE162145242481FDE6FE6DD2C72D11EE8A152B4A7FF0831F88C51F
          2851009030B245CCED962D5BD89FFFFCE786871F7EB8C7E569C9245B8257D285
          0524BFBABA1A2112B1ECE54695EEF3420C02E16622D9D29E2D13DA62EB206573
          2D4DB62980D4F794C7DDED862EE60DB27885AD55BAD7B318D26089AA1AD4DBDB
          EBBBE5965B5A6FBFFD76A72C3A7D2FBCF042FEB265CBE02D5CC486F62F48D063
          42436004366CD810E01A2126BA65852190597979B9EF9E7BEE9974E289278604
          ED96BC66779B7F4F6743DA2C8E396096894B191E7FFCF1E28B2FBE58CCB34C84
          5B6AF66942B46D90D4C71F7FDC79C30D373479D06E0B12757F0778312F872EBF
          FCF2E0030F3C3096BFAB912ECF89389F0D5A32BAC88AE0961C14A6642BB24D9A
          37B2F1007192AD8BD01FBBEC65B664AB89D6199237B2D861184762FA59E5E9C2
          EF78AF118B55DDFB590C85963B5D3E66DBB66DEC924B2E39287B2C8B20EF65FE
          EB00275D76D55557E5CF9A352B54595999072D10D99056AE5C49157AF2ACBC91
          453CF9E493E38F3FFEF8114228100D627826A32C5A9ED95E22F54C215C2A543F
          892588EC402CFC3D14BCFAEAAB073DA46FC4BD93511CDE0A784FAE56F6C840B5
          75EBD692A2A222AF893F680C84ABD7309784EB926C955EBA29245B31F407560C
          10A257CD968A1AD07554FDA7437F6204F5B943F855CCD06F20CB210D1A71951D
          06D7AC82175D74D1C15DBB76D96A566E0A03B839E6EEBBEF2EE79AEDD8134E38
          A1870B65F1580875EC65415080686152268235124F648049190212FD240AF2B8
          807CC99F7EFA29D25BD6BA8CBBF599FD92CAF93BC014E46081A05075CACBA220
          EC1C677E061FD686282C1CA4D0371359647632CB90983487FE44C025D97A0EFD
          D164EB0C8B3EC7BB73BB65834530168AE12D3299B8F55BC87248830803028E48
          5161359C58FA7FFEF39F37BAA9B4A32A7BE7B6420FC8966BB6150B162CE891C2
          8000ACF83BCCDF45C2256175C0141C29739AFAE8A38F469D7CF2C9F124737004
          125DAC59B32670DD75D7D5BB3427E7B3C41682770BB75A6EE88F7FFCE3C0F2E5
          CBC7F1F755E6E1FAF49E5190A281BEB4220B8F64ABDCCB4C11D9CA7DA8437F32
          108A7E477F7B71FEC37613F66C23E2C835E1E610148308FBB0308746ACDAB09F
          BB76ED5AC4E7DA9A97630508ECA69B6E2AE7443BE698638EE915C8968422CCB4
          078553F01D1C6F4609C71CC4DE1E4B6158504D4DCDD80913262435EE77F7EEDD
          05AB57AF6EFFC31FFED0ECD29CEC2506309170ABE586CE3CF3CCE01B6FBC3132
          2F2F6FAC8BE3C3E7318536AA220B0BB2A51AA422D9669A8314427FBC7A23BBA9
          38A5C9364E4839E8D1DF5E4A6A826C31666D17CCFA4D64396CAAD8D0FE5AC418
          F8F4D34FF39E7AEAA9E6A79F7EBA5BAE24E4F69EF2F14B972E2DE0DA73C59C39
          734A8E3AEAA85EC18C2C8682A8062B7962A625F1C5B265CB0A5E78E105F45552
          F74AB76DDB56F8CA2BAFB8DDBF853048E93EB600B4CD557C30F671B9B65E949F
          9F5FEDE67809866313278A017260116111FA833141A94473856CB537721C10C7
          96223B9FB8E76E7909F31CBC5358641CB783F4DBC801C813D93473A832DD18D8
          B76F1F3C667BDF7CF3CD76394E573427835465F3B24CB4A79F7EFA88F9F3E78F
          9D3A756A70EEDCB9E28074DC5B638331B887B1C8FDAF3DBCFD490D8591F66FC5
          020649C1962D5B8A783FD7DC77DF7DDD2E0E4F9739998077E868F69E38716268
          CF9E3DACA0A0604A0CF730C889BFE77E997035D90EDD9E69B28D19C9768EB2C0
          58FD46720411FB0883830CEF1E139A5230460026E61D3B762036B4F7ABAFBEEA
          DEB4691308D8D19C88548D279D745221D7668BB9963372DAB4697E1432909CA3
          08108A20DB7EA62E08006281F95B14A4283ADFC69258BC0084CB3F20C2F29292
          1231F14652B071E3C6E2DB6EBB6DEFABAFBEEAC65C0BED369971B74E701B2214
          E263A8BFB0B070BA8B6365E0FA70900B38102E90E964EBD51B39EED01FE11A61
          42D1E43B041B82F559FC1E750936380783D27776C0B818A7DF420E415CD509DF
          C17C82892D0B7163528378F7EFDF9F7FE0C08101FEE96F6B6BEBEBECEC44A2FA
          FE8E8E0E63C04D9E3CB9801393BFA2A2A2B0ACACACA0B2B2129F10FFBE7FE4C8
          915699A6E0187390450F549FD406123C2464704FF2564E1AF1F0C545C999679E
          497B38499D27EBD6AD2BFEE52F7FB9CBA5C354BAF66F096E136184BABBBB7B8B
          8B8B0F8FF11E0764C2D5A13F83A73007CDD60A9A7407A1E8733861A2BF21531C
          2BFEB041B9D36E7EECE2A60963CDEBEB6A41B90669DFC28754891C70A4C28050
          15740F0F40906F7373B3BFAFAF0F441CE2846B1CC0C936AFB4B43458505010E2
          844B4508AC062EBE87003AC4864AC451807854A0381B14A6F03A15F751BB79BB
          61A24BA8F730999239F9E53DF1C413D0FC53915482AD5DBBB664F1E2C53B5C1E
          5E9C8A36D9C075781027DC2E4EB8B362BC4758C35DB16285EA1895835452C9D6
          63E80FB4EC7A96D8D01F279F07007302F3B8C73C2EEABEB90E45BA462A68E116
          186778B786AC72789F1817B475A7DF80C620F86001B940A3C38457118D389A9C
          B2AC388D2B080ABFF47748F8096181FD4C0C6C0C6AB166285DBB950F7424B92F
          6109C459679D95FF7FFFF77F638B8A8A5242B6C0871F7E5872EEB9E77EEBD243
          7938116E3727DC2362B88791C89FBFDF3E0BC2B522DB7486FE8863D392101310
          676B756D6867F0EAC77C2073272D4062CA4B9DAD90BC91B1981FE1E17468B520
          DB88702E07B20D77BC7E033908072701689218285454399D80D080C349A7D91E
          996CB09FDBCA124442679C71869F936DE5A851A352BA47BA7EFDFAE2ABAEBA6A
          B7CB727CC3857061520E70C29D19C33D0C2FE59FFEF4A703FFFBBFFF2B136E26
          92AD8888E20B221210FA6347B6E813D5E2339C4424570957D1DFB4C78DFE2A63
          EEBD9131F6DB993B1F06322347DD5823C7E0D22B0F9378A4F921AFE0748E172B
          1375CBA5975EDAFAD8638F197B9B5E4298C463972D5BE67FFAE9A7C7A552B325
          C069EADE7BEFDDE732CBD470D9C30DF6F6F6060B0B0BA779B876C8DCE6E8E43F
          EB1016D4DADA0A0B80E88D9C52B2351BA5FADA8A6C6B540727C81BB986A91D0B
          ADC816E830FB27270937851EC8222C234072EF0D68C4320841B81072205FAC08
          D3E925AB42777D7D7D73757575BFD9CEA8F025ABEF66CF9ECDFEF33FFFB360E9
          D2A55E52B82514080B7AF6D9676BEFBCF34EA722128C0D132F65946DFCF6DB6F
          FD050505939D8EC578DCBF7F3FEBE9E981A39D6FC488116D9C681BCACBCB43AB
          57AFF67576765A85FEA4836C715F0853D91B39199A6DBC640BC0A3BF5E6C47AE
          C0A2BF0B98F7B87A37F31240078B7BB632FA73EB0D6818F040B862A80E9C0AB0
          C7EB25555FC4BD54F7158540020442CBC18307BB2FBFFCF281175F7C1117B3D2
          5643E79C738EEFDA6BAFCD5FB468119995D20624BE58B16245E31D77DCD1E162
          1F37DD71B8AED23B9A892F8AF3F3F3ABAC8E2107BEAD5BB71A9F238E382274E4
          9147FAF8394831DACCBFF3B5B7B76712D9623C21110B55410AD74866C25EA988
          0484FEC866643AB7C0EC133BB2C571C84DDE2DB62557A0787F6298A15B44A419
          052CF66C313640B472AD5C3139465D6EBD010D032E0957AC270AC1E03ACD991C
          F39BECF3E4CBB0410103F36CDFA64D9B821D1D1D03BB76EDF29D70C209F9A864
          3469D2244C3C4CBA62E19CB4CD85EFBEFB2EFFDD77DF3D74CD35D734B9205C1F
          4B620CB203DC669A0AFDE8473F1A4096AEBCBC3C652E5A22DBAFBEFA8A716266
          9C68D99C39738CF70073F2AA55ABDA5B5A5AD8E8D1A353EE8D4CED9300818AC5
          03EDF989D5A3A0415A96C18B23F4271EB26566BBDA546DCA0528F2C8C3410A7D
          E64600A2B31AF9A739E24B6BB2558D0D8241B6FCD3955B6F4043091B02C60082
          508839956067672743F850201080D72A850119F073141616B211234630FCE4C2
          35EE4761D1833DC88604561EB3166E690357E6F2366EDCD877D55557D5B98CC5
          4D9759D9750CEE7DF7DD17BCF2CA2B2BB980B2F40015C976D6AC59180FC6B91C
          357FF9CB5F3AC78C1953D4DFDF4F216122094524880792BC5FEB896C8104C4D9
          5A394889646B377623C8566C533643AA654BA0DCC8787FE84FA78EA0DCEECDCC
          19B876357341B64C870569D8902DCC23100C4E05972370E8D021C6B53454C009
          71B2F57181C9F0090683C64F16E94EEF8390CDCFCF37846D41418141BE151515
          480DC88A8B6376C8750A4F4A3BC98A405CF3E79F7F9EF7F8E38FD73DFCF0C33D
          2E4E49473E65F45980B9D30E82353535FE091CCCC2AC2F922DF6D105820A20C6
          9A13AE6FE4C89193F8DF22D9A6C31B3959641B6BE80FEDD9BA215B6535A26C85
          4306298C23A7C5ACD8416E3CF13D912DD3892F721B3603D453592A4E188C0B58
          C3F105840B721D181808AF3669A2AB263CB5013F711E8EC9CBCB3348980B5C64
          B132C8177F673376EEDC59B06AD5AA96E5CB97B7B98CC74DB596EB3AA5232A05
          AD58B1A28CBFB3B0F38898704532230B87181ECAED6FBEF9660B5F9CC966644B
          824B13D97AD9B325B80DFD51395FB97190624CA1D98AEDCA56A4DA1B391008F8
          B88280F761F87F28FA177305EF31EC70053999DD6F41C3160E7B1196E7D0E0EA
          E9E9C1FE23FBF6DB6F8DC124FE8F88D6CB44108FA79F20E1B2B23278BDB24993
          2621AB55543B54CD6443DA98AC61A5A480BD57A026EEFAF5EB03B7DC724B83CB
          78DC546AB9203937214B40E8DE7BEF0D5E75D5554A73B28A6C8594A321BED838
          F4FEFBEFE797969696F077AFAC8F2B22C90E5256645BABBA4602BC91EDC816A6
          753B934FC8ECA336D53FB399702D1CD2B0F73F8AB99FEB38077D17A06BC8F28B
          644E5757977FC48811A4D9AA1045B6C0A79F7E9A7982472335B0087708AFD8AC
          CEC180C37E6C6D6D2DDBBE7D3B069F17ED5325895C8D41103AF6780F3FFC7056
          555565ECF93A90AE68CE212883D133015CA3F36DDDBA35EFAF7FFDEBC1471E79
          A4CBA5960B52486AE940E6CD946C84037DFEF9E705E5E5E51048E1978377054F
          6490ED51471D65ECD98A020DBFB7B5B50D6CD8B0012944F3FC7E7FC82CB021D7
          490E631891ADDDB8D3641B27147D8E39813EF3E25C88FDDA46FA43F53EB12596
          C7C1FF57C5BF2F837F0A1402C83F6C85D1616CF03D862B7F5D7CF1C5ECF4D34F
          4758A226DC5C8530906845080133DAEE780C422422F8FAEBAF5943438331D01C
          B458B7A91E1D8FC57DC8540DC285C0C60076205D686618FC9DE6B35986A86402
          6A6A6AF23FFCF0C34377DF7D778B4B2D1748769890AB727C264237DE786368F9
          F2E5E59C3047195F986343265B11787FEDEDED8606809F7C5CA59B6CB158A0DC
          BAB186FE1062215BD11B198BE008B25558811A789FB5EEDEBDDBB779F3E6105F
          EC18021E19BA12E9B96DD367629B535EA1486A4F89D9675EE6842B6F64DECF58
          0856F1C57F19C6725D5D9D710CE4E0F4E9D3D9942953E07FD0C08F092FF261D1
          41994AB19334720C8A09639919858EC700C4C081F9182B3B68982040AB5358E4
          D8C2AA6FC0FC885EAE106EF9C24F5BD00486B60B87AAB973E71AA666551524A1
          0D200C106E39CBF0F1DEDDDD8D7288ECE5975F464CAEDB607BC69243BA5454C2
          75351A8E01BE102BAC44A9A850C8680FDEC9975F7E69584340B6471C714454EC
          35C27FB8560C0D178E73B6649B82D01F22DB4484FE84ABC430165FE88FC518C7
          7CAAE7FD7BE8830F3E60D3A64DA3856998FCD05FA8B294A4058AAAA466CA1DB5
          24E501F3BC98B9F3460610E6D6E2E21E8666CB7F2DE30BC3D0DEBD7BB1876B3C
          1F5702429C7491E5AEE9A4934E32D268F2C50F8A92184A81DC391A390485660B
          4DA4DAE91C5AA9D18ACE866C09547C00039AC836C8221D6FB00F99C78608177B
          922398433271D276F181B6247AB90E77D4D6D6E67FF4D1479DFFF11FFFD1EC41
          CB0512B9A78BF704B2F5E2896268B7B7DC720BF62A47D2FB90C9D60CFD0903CE
          76B09860118771658ECFA492AD8D83946BB205BC5489919BC0EC1DC12C437FE0
          3781BE424210BE40E9E582BD832F3E7D7C2E60218BC5A5A3977B2CFDE8E0014C
          051330D795DEBD899C9F0E6DA1129E4E25F6BC208FDFB38A3F43596B6B6B88CF
          4F9F187E443FF93BE81A3972642DCA9762DB8DA22F048CCF0E29A5E10A8A810A
          018DD47BF976E7C0D407E728780F3B989031D0212C41B42AAF56D266C5DAB6F2
          0425F2C542006660A527AE30C80D4FE679F3E619614516A6AC8C0A03B203F672
          BFF9E69BBC55AB5635BBCC3C15D12D6CA88F6301EE45D6084F406629AEA59694
          959541A333DE1991AD22F4C7F81D63EA8B2FBE60249C04B26D640AA198646FE4
          6490ADDD98734DB618E38800C0E204848BBD44F419FF8992987EB30D2136B4A8
          05E922C9BEA595C46B5FDAA4B8A4222794DC1FA48BF717E1649728C24D436E64
          23F4077BB670EA3B70E0800FE31AEF407E26FE773F3F6E1F430AC76839890C65
          E5C3420869C40F8B810AC702AB18B228B2B501112DBC494958FBCC6B4388C179
          C1CA3B984C97100EDDE64F6A2C6E0AE1A53407D3A0C6E0876979FEFCF94EED1C
          16686969C9E344D4F7FCF3CF37BB8CCB8DEA1A3664397033C7293908DE5D2C12
          2DC8C749DE71C71D07016CEC378A9A2DC81610CDA244B6D81EC03BB3D36C8134
          916DA2F76C096E1CA442030303BE7DFBF619E649225ABA3F342717FE13203F38
          5329C790973E559892ED1C2CFBCCE70BDF3711846BF1AC786FA26F8653EC3D7E
          463853DAF463B8562E2D12E163B07EFD7AE37D08DA2B5D1BD744CE6B79116590
          AD5DE334B20C0A53B2A513118EC507FB6A58593B90184812939A52FE41589076
          1ACBF8825481B023177DA0900DD5FA8C02260204374C96D0A6B2017575758669
          99136ECB3BEFBCE326BB9315F00EA8D293F83E82C2CF78D486D09D77DEC9AEB9
          E69A72FE1E8C1CC36EC996B40453E0B5F0CF419560CE126F64822B6F640876F4
          51737373F8BE319216EE83854C138BC36A203DAFAA52920CCC5DE4718E28D21E
          0F147D0EB205217A894707D9B68B5F58106E44617A225C8CD9356BD618F90624
          73312E80F77A48BC341B0C052B17BFD0C8014803CAD26D1EE62B0CA49D3B771A
          7B6B0E1EC0D068C9951E8202036B54029BDD6A7E8878C79A1FE504C36438FAE8
          A361DE4CA997643200C7A1BD7BF7E6AD5DBBB6FDBFFEEBBFDA3CEEE7A6AC9997
          5D7659F081071E18859CC9B4D7EF956C0B0A0ADAF831F5F0AE459632115942B6
          AE427FF8750DB26D6C6C3416BBD8ABA56D920400F7C6C23862F11603E1E23966
          3077DB1678992D835DE78BFB21A47E80EC9AC4DC3B0B0E98CFDFE1E2D8084F75
          9225BDBDBD86C50FEFC724DB5E36B435D6C622C3B2A2C896BED4C87228CC41B4
          C714614AA681D5D4D4C43EF9E413639F4830F78910072FCE1FC36CF6ACAC2A02
          3955123201F314262EAD1CA145C1446339E1172E5CC8C68D1B37EC4917FBB99C
          74FD1F7CF041DB1D77DCD1EE32CF72AA10FAD9CF7E167AECB1C7CA8A8B8BCB79
          5FFB896CB19F0E6B8308996C21B0F07EF87BEAEAE8E83800131D3E94D804C8A5
          D01F902DEE515F5FCF366DDA145EF826886CA90DB0467DC72493A79B7E16DA01
          A29BEAF27E94B02466C255E446A67E2B33DBE2664EE01C9063A78B6395648BB1
          F9D9679F85C321F9F7B018603101E6ED57DC2F8A6CE91F1A590E85763B8549FB
          7BE2C042F201C4DB0A8E2C2244B2C5EA12E4477B3911044E428AE267F1931C9D
          680F0A3F41EA44ECD2FDE87A4DE687261B26433553902ECE1F356A143BF1C413
          595151D1B0265C00A4BB67CF1EDF9A356BDA3388740DB27DF4D147CB3841C644
          B6FC6768E6CC9941AE09EF5BB972651F129AE0BC44C78EBA08FD319AC806CD8C
          F54C22DB0485FEC80E526225AE6A225B2C74376FDE8CF030AB856E5C5D61F59C
          6E09D7243EAC882633E6E8056C102EE252CD949D9E1F46B48CA4C8592AC2EA61
          B6DBD06CF15E04B26DE4DF3743A6096665311C8A721A448D89E12D8D341CA118
          A858758124A3060388104273DBB66D065929427F40B6D036316911BA034153CC
          D4C2C610AEB83F4C8563C68C3162679191053F215440EED80BC13E152A0A29DC
          E80138227CC7A235034C8A09AAFBA2DD084487F01FEE5AAED98FBEDADA5A1FF6
          74FFFBBFFFBB2DCE3DDD7811E2C4CFAEBCF2CA91FC3D62FBC00F22DDB1634704
          D98A7D2E936D5F5F5F68EEDCB93E4EB20D9C585AE17D8B3A077FFEF39FD92F7F
          F9CBC434D29B8314C63316914A6F641B611F6FE80F25B50871B2F5C15C897961
          B1D04D48B7986D8ACAB7EC44BA427BB04898E6F23EE404E799702D9E9F9C2F09
          4E0E529827E1729268834DBF2AC706AC7C782F22D9F231DC2CC63A4BB0245BBB
          066B6409143521610E52EE7B20F1C0871F7EA83A8F40195954354AC3A07467F0
          1C46C80EC81BD7C64A11039862684B4B4B8D953C3452902FE27C297B8B49BC70
          AF87E34580B45F9C87EC6AFCF850414101321A8D974DD65879E29EDFFBDEF7DC
          64A31A1680C76A7D7DBD8F1357F79B6FBE79E899679EE9F11832143790B6F1C1
          071F2C5CBA746929EF7B2C787C44B662BA4680FAFCC081038CC228886CE7CC99
          E3E3C4DCCEFFAEE7E32D74D2492719FFC318C1C22C5E0C93D09F5493AD082C9C
          F73021FCCB03E1E2790F63CE6913C52C6F89205C8CB7F1CC1D671119C263389C
          62D1E67D8A0E52E1B101474C6CADC1AF80C876D2A449CD58405AC0966C19D384
          9BF590061706D424ABE3203C118260E1A8813D280C60CB1261740EAAFB20313D
          08168313FB522041322B535520D26891B50AC488E204F81E5A766363A3911F96
          6BAA5C0EB7F9387187B0CA0489F29FBEF1E3C7E3FF23789B2723FB1508563441
          81D89179E7D8638FCD0AC205B0AA86230D5F98F4AF5DBBB6F3A5975EEA4A91B6
          1BFAE77FFE67DFF5D75F5F3263C68C3294316612D9AA1CA444B2A5851048998F
          8D00FFBD862F9C0C67385C031A2EAA43C5DDD0CC09FDB1BAB6B8679B0EB225D0
          368D010F840BB8312B4383AE97FBD32DA4FB616044E4E67601907D8483941B6F
          64022C6E1B376E341CD7CCC57F235FE836FFFDDFFFBDD53BB24D8D1B6E83A75E
          D01876900607C8B654751C06D8EAD5ABED9CA4F6B241134DD42A4ED42AE1250C
          8D95728D12C18AFBB372D27A2AC987EF40BA3367CE348A22545757B7F2763572
          4D382884451876212EC40BF9C260229F1085703211F79C29131588FCF8E38FCF
          0A072A113031C30CBF6DDBB69E75EBD675BDFDF6DBBDC9205EE4AC3EEDB4D37C
          975C7249C1E2C58B4B787F63ECF8D1B7D8B3253332E546B6235B9C837DDAB973
          E706F971B5FC3B43F361094E03E8315D63B2427FACC836EC8D4C7BB669225B00
          737A17DA88F9012B83EAFE3626752B3F8A201BD2ECA3FAD42D847B526E64AACB
          ED782A1B3463BBF1465686FE4016C28F05646B86441A7BB63639A4A1793B916D
          C8B88EA75ED01876100609460EDCF995EF1CC211DAAD620F15A0D8359875268A
          FF20B28576B260C1024378408850F6209865F013DEA72040729222472A1C8773
          2098296524346C24B180D6C3AF7F88FFAF8EFF8FD2B59167E7447E6C11AEB777
          EF5E433B172735BEC7754106D0C0A8AD59041FFA8E2F6A423B77EEECE18B8E6E
          2E247AB76CD9128CD3B12AB468D1A2BC254B96B0A54B97161C77DC7125FCDD96
          98B9640DAB05BC35B1EF2A1622B0225BBC07BC67936C715C1D6ADE463DCCF027
          5B274FE708B2459C2D695069205B82A1054E9D3A150B27AB3D49ABEFE9994034
          308D4370C062014B589437B0D3FB95BC917DD23D9CE26CC5F6511A592728BD91
          45B2253332930A1B487DE39A6CF9A725AB2490463484890CB3CC04D531108CEF
          BEFBEE6081E4E889814904ED16831E66A488BD1B10241CA1108A03AD0BF18344
          DAF81F4CC55C5365E3C78F579A0C2178B047421FC0DCEB339258405073B470F2
          6CE4F781DB60A1F91C45F47C683F2609E2E3C4F48ED4B6134E38C1B8773669B9
          22B0BF8B02000D0D0DC8AD1BE0EF20C04931C0854788FF1DE2EF2564B5DF0B2D
          966B383E2E74FD300B9F72CA29C81855386DDAB422BE3082200DE78D25071294
          668425039608D95A01B2C5E2873C384DB2359CA4104AC18F69222F75420AC916
          3FC94B370A49205B65E80FAC37B0CAE09DA5916C8176AED9D6EDDFBFDF77ECB1
          C75223C4728F7DB15C5405BB779CC2E7A7F7A1245BC522285EB2A50733C8964E
          D2C852A87279AA8E83008520B500ED85447937E3FAD056B1AF4AC298B4579897
          E1290CC72968B674BCD826317B0E0433345524DCC0B528AB0B17EC217E1DA4B9
          AB33F7FCC2644BD7C4B13817664EF1FA10EAD0C840B83055672BE18AE07D07F2
          0D72920D70020EECDAB56B800BD401DE3FFD5BB76E0DAE5BB7CE48DFB878F1E2
          BC134F3CD1C789308F936D1E27C5FCCACACA82D2D252BCACB0539D1CF48F7D74
          5832E00C27277017C916E300EF0F5ECBD8CFE763A289BF8F26B9BD29D66C9502
          D445E80F55D3720AFD51916D44E80FC8168E38205B878A5B49076F4F802FAEF6
          C03780CF0FAC8661BE2D12DA8EF9D66D3E9B5543A3FAC34B793E8BFE0689B94D
          684115C1DC648F62E675B12D1645B6782F889A90C836266F64E17B4AFEA1EC2C
          8D2C8234E0A631A99A0C0D36ACEAE0D8A4982058E142BB0DAACE87608599105A
          12CA8381E02040603E8649980B70E3387292524D402261D278B0178BD53FCCC1
          14A70B01CF35E45EB3BD45AA6BA02D6803260CA5A2A4948FD0C4A02D5B98CB73
          06B4974EFDEA0439E81F7BF2886F86539C2C50559AAD8A6CC5F3E2255B8F0E52
          4A01EAA0D5026EC9D632CE9699DEC89C6C7D9942B600BF7FDFC2850B6BF83CAD
          40251C9B43119A87B0A980FC8F24BC43DB52A1AAC76043DED04EEF53393644CD
          161632DE2F8DFCFC66DFE0C562215B4204D932A60937AB210C3A9889100E1425
          6531E9DF7BEF3D63E5AD48C64D717488B99D2C5FBBACAC0C264823993788923C
          8EF9AA39ECA804B89D94E26AF3E38F3F3684360813C40DD2254F64F97AF41D48
          01B99FE939C8AC0C73324CDE88FFD5700751B345D03FC8167D887D7559B3459F
          C3BA20EED9826C4DCFE5167ECC41F19A402691ADCDF51216FAC317903E6C7B20
          F429CD66E4F0F3C22FE2FFFDBFFF17E0F38326864C20E2DF20DB1A96E02A4031
          E468168118DB5AB14D369AAD23D99266CBC76FB34DFEF898C996314DB8590D61
          E08130E1A11C95590A0260DDBA75F2FE2D0D26C4C062758B811ACE914C9A233C
          803148B16A2753F231C71CC3A64C99C2E47D3A2F6DC6F521E021A0B0E2848919
          F7C275ED08574C8B270A769C7FFAE9A71BDED3B960568E17B21919FD4A642B1F
          A3225BECBB43B3E568E70BB17AD46EC5D64292C956341526C28C9CB0D09F4C23
          5B0073040B502C98110FEF00EA4F689120B8F0E2229677A948D70850221DF17E
          566D61661BF06E299FB15DA7CAA93C0DC0410ACA02940DFE5E06787B1A5A5A5A
          3A6C62C15D85FE300BB245E895963C590C6140639044048DD3A047F92F084C08
          4A69F220CCC4483AC13F3399E4FE0F6D73F1E2C5C680C5C085C0C53E29883111
          A65BB40F1A2B4C95F81D8E57D09C41C056C02200DA3AED010344B8640AD5B047
          AC642B84FE9083543BBF46031F0BA8D96A994F3B96F60920410B0D0D0D2C6089
          DDB3B5831BB235FAE6A38F3E32CCC8092C4410378870B9866B3816BA80BC088F
          EA4B571749FDF34739599237B244B6B0521CB2B886676F64F91F14E7AC09378B
          41394C39A21CA668E0217C03199E14DA2DAD66A1394CA37F8AA5F04060A41D43
          9840BB154D8EF102718AC87C65EEAB18AB71AC3EEDAE8FD25964DE16DB8BBD66
          0A61D15043E52085858A8A6CEDBC91F961ED9C681AF83B0B92C31C2181DAAD5B
          B2757B43BAB01DD93A85FE44902DC61DED7D679AFF00DE178816961F8F6DA382
          0406BCBC4F8B22F65427DB0D1353BA46A7CD6F710F1D96BD02BA3F6D59C1E260
          922DE2C2F12E934EB674318D2C8540B851A61032F9C2042B159827A142996222
          C289700E062A56C6706CDABA756B789F159A10AE9328932D3453B40FC40B4D01
          1A2E6206ED40357C450D17E722EB144259B439590D3BB215C3ACF0FE896CC974
          6FEED91A291BA1D9F2CB35F0EF2D5325C6D3460922D98AB00BE7B043BC648B38
          DB22225B8C45C42B678A195904DE1D16AF8B162DF2BA4086D7F2017A7E2FFE19
          02E82498EDDD9868013F1BAABD1D0E575298A645B29D68FEB40AFD4999662B3F
          B846164220DC883D588084E7DAB56B0D4213CC5D72859E88BD2C539884F8CAD8
          076243180FCE430810082DD6BD5B8BF61B851490EA11D7046922B391DD24479A
          479C23122E0801C491287377B641F446A6AA2832D9CA9A2D912D1633708EC287
          7FD78EEA3032D92638F447A5D912705F2AAE4189EEFD2C528B127FE2F87EE17A
          560E3B9E427F329D6CA93F316791BCC423E1F6F0CF7E2A041023E10258D8B875
          90C24D40B2B5E6FD07BFB4265B31D77B84BF0AFC4D62205BBBD01FC015D932A6
          0937AB21102E928D47B8E81231627F09092714845BCF074CDBEBAFBF1EA51D63
          5FEED4534FF571A18284FA865081C085B34CA2CCC9A280C78A14ED03012037B2
          8D07A141B6205D799F0E0E533049A3AD1A437043B6042CB0B00541E12C780F78
          EF10DCFCBB4EA46CE45F07C5F79360AD96042AE245B18894C916FE06BDE6F7F8
          A0216EB214855C1C674BB6CCF44646DA4DCAC495C9648BF782F87424A4F1086C
          3585B3F73B25B4509022FA19F1826E355B40E9216D8108B2258864CB65095F83
          0FD4238B1DB336679392E2D61B39E23A56B9A935E1663104C2851D362A431408
          177BA4628626164DB830CB44C4E84183418EDD4D9B36F9702E9C2F1077AB8ACF
          8CA3ED616F652C0AB01788EB639FD88E70713C2696265C67C8642B3A4859912D
          AC0500FA11D6063301462FFFFE3B7E7C7F9AC896317BE2B4633D57755D99B06F
          C92CC81619BF281357A692ADF150BC5D454545C133CE38C31FC33B8A4CE46071
          BE4D2D5B1F9316FF2E002B849BAC579071905711FBF9E29E2D912DFFFA904D9C
          AD57B28D805D21084DB8590C81705170BE44FC9F070D17ABC5889C8CA4E172E1
          E2C3B92043382541D37143B86E049148B888C9C53D40044E840BAF6B39AFB248
          B876E7E61A886C69CF56245BF118D193DD8CDF34B60F40B6FCBBDEBEBEBE1ABE
          E8EADBBE7DBB6FC78E1D2185908D0994577BC68C19BE59B36681D08AF9D85339
          48C97012945E81F290AD7C71D96656A982D9B880F78311676B969EF3C11203B2
          CDF4318677C3E753D399679EE925A393712A1B2CEB17B187AABA7E32E030AE44
          072925D99219997FDC90AD133C932D639A70B31A6E9CA6EC345C36E83805F38F
          1C9816E21A2E1CA67C309DE13A147B99C83D5C00291B4108681F043C4CCA7690
          F770CD7E301C44E0E8A53104CA20853D7C902D9295C810355BF429C2C1A0D956
          5757639CC089A5968FA101ECE55754784910E40CBC37846FA07DBFFDED6FAD1C
          A45209685A10B4BD4C0A35A1AD8C61E22310E08BD2BDD75D771DE2522956CE29
          4521002DBF55FCA72A265E01744A0973CF37380E63AB9F09A65A1BC2B5F54686
          73275F043991AD1707A983723F004E644B37D1C852B8215C84F5C094A8205C32
          A3510E6503E4A50CC28556042103C7196846D8FB13D3345A01429404B8D36A78
          D7AE5DC63E2E8E05E1428BB603080224AD729A320B2168B0C1F78FF27AE85B38
          CEC05C2FA61A44BF6121866328CE168097389258F0EF06F862AB81BFFF404949
          890FC7241A942AB4AAAA2A6FE6CC9955FCEFFC749969A5059C31B1C8710C8B4E
          8CD34CF78017DA77A0B7B7B7EBDC73CFC5EF98DF5869D1A4153BD8277C076DAE
          D1AE5FCCBE910FC175A135DAA58E94817D622CF8FBC57BD87823BB225B96186F
          E498C956EC508D2C8440B85129D36860C2FC8A385C455A47AAAA829569384B15
          8E836644A91611B603618BF4892862605595474CB4010F4E8BCA445180798E4C
          7454C4DEEDF122DC9C9B6B8069187D8577A1487C62BC6B79CF1BC7515629FC2F
          152483B1833666025463DB6ACC651AF8BB0BF17E6C9A3D7B760BB27F618BC504
          B68C40BCD0D8C5D5326401B479C882289271614E8E2814E012204538A74564B3
          F242B670908279DF03D9A28D4E6664D7A13F76D0849BC5904AF361951995690A
          2137D0621480FB3D3C0331F0C3AA21698CD5D5D5C1F9F3E7FB916802048CEBA1
          40000A05C84249245B103C551972FB0CA203869BFD61AB42DA99AE81A41AD457
          4E852544D0B1E6FF5257576D10E9EE3225ACC65C2601DAF8B469D382B366CD3A
          C817CA6D5C2BF74D98302124F429881629A70ACDDF31EFB1CA4156A9A895AA93
          B3141B9435E5E66780B9E31A78213730FB7AB662E80F39484591ADB0670BF2EE
          B4B916916DC2427FEC90992358232170934B194E49D8C713CD867408FFEC6383
          2BDC694C70B3374937F4777FF777709231CCB898D0A3478F36420D90C1468EDF
          14C916DA51321D2B34120F61BB21A9C858568DEE8B61056C0560416C3A7835F2
          F9DA222C7A9D323D39167DB0D042BDEEB7BBC9220544902D0119E610A1207823
          D7F176755A3C9F1BB225D0DEB5ABD01F3B64FCE0D6881DC204C08A750653844C
          20B3D0FBEFBF6FFC54989569A04525BF0041736D363465CA141FCAE291699292
          5388FBB8A9225B2AD3371C05622603EF3B9119C4EC80F7477BA399F81ED10FC3
          C431CA80698D32B680D07673016CB51769A7E10D1EE09C873AD95086FE886664
          68B60E640BB80DFD8972140364B2BDF4D24BD9A38F3E6AFCB48326DC2C863421
          A2925F90F629E71F1600731282DCB117A3F4565AB26489E17485B01184EE8074
          91B3D8AC16633830816C8164912D99B9A159239B14F696351207FECE06BEFBEE
          BBDA1D3B76F4258308695C1C3A7428B474E9D24AAE9D600B24D1A13D718312B1
          C0237938902EE604125BC0B782E282A59CE964C10A3F9F1758E446465483DB0D
          6D74225270769BE73A859459922D1CA4B0B565EED9D6F14F6702427F2CC9D62D
          C1AA3A48234B210D5CCB0206C8876CE365B9870DEEADC0241DE1FC004DA4A2A2
          62E0C4134FCCC3EA1231B998D8D07EE1118CB25F082949A6664B648B7B41B020
          DE5623A1C07E5ACDFDF7DFDF5D555565F47322355DBC3B78CA9F7DF6D9ECE493
          4FA6AA564022651325C590E1F3721F6CBF7871F84B2764B2B500B267D5863B23
          3EC2C5C90895F2EA8D8C3DD6F09EADD7D01F05D93A85FEB87590B2F5467649B4
          3EC72F34B2078A7A939355C7A17418924B580C742A425F229C1F1E3720DD9933
          670E4C9D3AD5BF7EFD7A1F427E30C129C424999A808A6C75BDDB840202AC86F7
          67F7EEDDBB8D10306C3D24A27F710D78B4CF9F3FDF377AF468F85F8DE6DF5525
          A8DD468E647E4D2C14E1FC87C415A29BB391918ADFCFC8B7CC7F626EE4B3A19C
          CBC631F0F2A7B6A2C007C896C2E932D1DC4D6DC582178B2398911D32AB81E8A0
          E5F6D1B95E20F48151258979CB2015E58DAC7A1CE6E08D4C64CBDF099E85BC91
          134AB65026E09BF2DA6BAFC9ED12FFA634A2796CC8F1AC483E4E4BA62C87B48F
          0BB3B0D2DC830418205EC5A4C30576B3C18901ED236ADF830BA110523B8E1933
          C6B765CB1623062ED90289C8B6ACACCC3023C3614B936D4281F70D2FF52ED53F
          1354D3960417B4A2588B158B6311E651102C846EA7C7EB80994ACDB68038C2F3
          0466648C6B2A45E81616F1A34905DA08B2C59CB0AB1D2DF41D48AA5D6CAFE5C1
          D1B991E9FD4126D03680D3FDA8C41E0AA3C4EC8D4C0E5242E84FBCDEC8D4BE30
          D9E25E53A64C610F3DF410F58D48B479669B40AE50468A99943ED7AA211A590C
          69B24725C020C0D398323A290404999E30A0B0D20C2F9BC963B9A4A4A4F98C33
          CEC8FFE69B6F4653759F6441936DD28101000186F76EE9A11AD385A3C716B44B
          08D478060C34B476F3236AB25EEAAC8AC795F27696F1671D8D548D5CB335B45D
          2F9AAD59352868FE9ED081C9DB1175499A13289389F4A7F0A77039275AF83107
          2966DFEA201B6FE464C0966C91790C911542D59FA4902D6422165AA6A5831E1A
          048B318BC51988D6AFB88E78EFA8C6686431A4C981013245751C4C8528D507F3
          8CEA326C9070A139D03E1B8D9D20170075E5E5E58738C6F2493F0E7B5CC9245C
          98F5B41939A980000379258C6C6D0A11C014194F4509B413DB1EE4FC13950AD0
          45CCA8D82EE35F18C35C98973536368E45D93DAF6664B37E709013761317DCBD
          5C0BF38999BCBCC2BC1E16B6FE238F3CB2822F8C8BE49CD754E39616CD2EDF97
          23E1DA3CB7682D73BA1969B6E1CB3A9077442A4F7A1E64F50209E2FD489A6D3C
          A13F22D91AFD006B1FAC7EC23B433BE00303B22D92CE75F3FCEE0FD218BE5008
          3AECC396A88E45C62968B97C5233857080E6F09DF9136142489C6B981DB930EA
          E2F719C3CFC177B15420710D225BECA95865B5D2880B44B611C840B2156BDF8A
          756E1D89D64D1B416EF805E924D9A0E7ED48D717332F69B6A9F5D4534F6DB8FA
          EAAB8DF6C45AAD0AFBB2CDCDCDC642F617BFF8051514519288C767271F0D2F84
          0BF281A7AFDB55358E43E2888E7007DB9BDB95DEC8B48F0E4D3E99A13FD8B345
          5F07024635409C37D6EC6FCA45E0896445684995E5500C680C400CC4A8418801
          86C106938D457931B11626568E9840D8E3C3CAAF9225793C69B24D3A8613D946
          ED2FC742B4366D0DA746DDB973A76FFAF4E915FC77B705D3C39740B338311C78
          E59557BAAAABAB7DB1FA37E09CE38E3BCEF7EEBBEF062FBAE8A2F1BC2DE54C31
          873D3E3BCE07D9B4D99D2BB51724886DA542E61E2075ECD9DAA56B24D892ADE9
          B436C07F1A9AAD0B6F6447B2E597682593FC1B6FBC21A63985365BC98634DAB8
          43D5B4B4CA0128F29B62C214C9C750E629B99EAC0408E43AE1EF88E206C980E8
          8DACC9362988709E119181640B471B6C6F443973256A3CD81062544E7297A078
          F698CDF3669B4427A52A16BFFC465F1E60A639DE05E1E29DC14256C898ABBD71
          0071B64D2E8F8DF2110144CDD6459CAD5B6F64C0205B64A642A10ED48436FB00
          1A39DEF39804F47154E334B21C0A01621BEF882416080181E385C5BE130433CC
          5023598AC8160E520873D07BB6094752C8D6B870B4376B5234DB44B4D5A6ED32
          6225DD0362BBE38C79C5DE297C31BC68992A8816AB2833AFA0855263F1FEE450
          176573CD732817B31B728E205B9AE326D986B81C02BF6281E076CFD6A97D20DB
          365CFFD0A1436249CF02F31A23E2EC5B25B4D4CA01288407262C04DF08D57170
          9C42152098962DBC968DC3D8E02449DA18D2649B549050C4DE5AB3EA80049966
          95641B83591542B79E6B38EDBB77EFF67DFDF5D7E1E209679D75165BB1628591
          94E0F5D75F0FFF64CCB597B2234A4B4B7D5880EED9B32774C1051740CBF32A90
          BBFC7EFF81975F7E39D62A4BBEBEBEBED0D9679FEDE37D806722CB522C664E3A
          672F93324DA538BE58F446B622DBB01939D1DEC8C5C5C586B7B350BC058E5AD8
          6E8B752163EBA16CF9A546F641A16DC0AD1D832B4F3E0E831D4E0330B120CE2D
          1D81FE3AF427A9208144E63ECB7CB99E2FEC926C63B847CBFBEFBF7F109EA3A8
          DF2B3A1F09049B5460210AE1BF6CD9B258344C239EFDA5975EEAC7B383BC6301
          E24F7FFCE31F538CADADF3944D3B706C13134CBD0E199EBC94D7C345A28AD45B
          7884E34BA53732C53E9B648BC42520493BB2AD76D11761B2A57B40B130C722E2
          AFB18089C5FAA2BA27BE3312B008CF9AAFA5570E4141BACAB85C1AF448D5884C
          2EE9203A4C34ADD9261509255B9B051984201C4F22C816E405539ED362CE5C78
          F5EFDAB5EB604B4B8B91280171DFF46F3668B65415CB85D694C712A4E1121003
          CBDB8E442FA5E5E5E5AEF7F8F01C5D5D5DED1B376E6CE39A55D80BDA03701F08
          F05EAED18790BFBCAAAA0ACF8739EC269DA2480A20C406B97D8AF700B29DC05C
          24741010B698B848FC31C26CBF8A6C0D3332D7E67B4C6FE400B336237B225B1C
          D3DBDB1B7AFBEDB7A96D783E582DF2586C160302CCE7B0FC613CF69BD71243A1
          F2B404CB2158989631D08A54C79259079A2E902AC2236FE4134F3CD1205D4DB6
          0987926C458802D84AFB716182C4620E646B848FD07B44F1F3AFBEFACA48034A
          156CEC00820D0402FDFEC1E06E996CB1A7DB2F9D02E13BCEBC6FD24C335C4BCD
          F73A2E3959F7C738960D8B043FB70531A8279F7CB2912BD97C4610FF58E64C14
          58B08010DBA22E1EFD2EC5748A4E24A4DC9E70205C2C1240B6111636996CFBFB
          FB6BF975FA6C1CA4DC902D1011FA034B09B6CCF865BD3CA70A30C9C3FFC14821
          CAECB367699372AE4131F841B6308FF955C792A68B70A154989535D9261D1088
          8D4E0725603F4F4C901232436C02CDCDCDBDDBB66D1B8931E5866CA92D0A4D18
          820D0E3F72A616085F08F2A497F3892591451C09614016786F48346364593AEF
          BCF3C4FF8338B07F59C6A24DDDE82384F021714D943540418C7EB30F211BF090
          4E648BE3413ACDF2756DC8362A8E577490E2CFD883BC21686F02C8164E81C622
          03A6F88F3EFA88218318BF2CEE3F8579D3E00901F37DA0D2914CB2966DD1922C
          07A1980418B413AC8E45C51F94D94B36F1911919A13F9A6C130EBC742F211AF1
          00644B8508C2645B5353D3C635DB31BDBDBD86661803A98BDEAFD06C7BA5FF83
          7040F2995F3BCF1B28394518489FFABBDFFDCE6A6F54B59F686BCD300E8ABC96
          57EB80DB6341B613E43642B31552688A64AB6C321B225B2784C916CF8790C786
          86065A2CB92DD3270227E27D345B3CB3ADA39E966639080B2107B35425FD9F9C
          9640B628209FECFA9FB827E26BE120A5E36C9302901399D4E07C229A61D1D110
          847EF3771CDB2D9D0FC7A702F3FF58D163BF2A285D836244ABCDEF886CFBB840
          6DDEB469D3E8FCFC7C2F15654438912D4CAAE3D2DDC9494014D902F0CC4E8457
          71A20BCA3BB429A24885B8674B64CB016DBC16D59D6CC8D675E80F33C9166678
          D4FD46CCADD93E7151E816D06AE129ADCA7F2B132DCD259F7C90460EC2625254
          22452395F8423C6EB2C996EE3561C204366FDE3C23ADA446C2219ADC605AAC63
          917BA120AA31E6DF102AD02E7A59A4473BB4121A0872616E3BB20D7081DA1227
          D91264B2A5FBE614D9524D564051C1C71676D9B8BC5E4B756DBA8EF8351BAA08
          15D66C550E52D06CF9F786666B710B32753B999129ED6778AFFABDF7DE339CF4
          4C60E10853B2178F649C0C6D59653E162B08C19C5F6C7E0A99E488A509378741
          13C3CCE062E4529E3A75EA38FEF7E8AD5BB7E6E16F7C9F2C88648BF27E454545
          59AFD9D2BE5F229FD1E15A22B18ADEA9749248B68676C106059E2A7C0C8D87D0
          E910AE4FC7A9CCC8BD7BF7EE6DE5DACB683E8E1241B6B5661BC3450658F6912D
          096747B2CD4458902D08B29AA9C996427F0C3332AC211697F6E28D1CD66C8149
          9326B1471F7D546C9B65D534C5B568DE1C64EA7D647C87B951667E6C43A8B257
          B269B8024815E6964020E0E3641B5ABF7EBD9F6B99539A9B9B637124F004107D
          7575B541B60842CF66B2C5B3E1936CD3BC7C5BF3A72834C4FF610BC12DD9AA4A
          F689642B3B48F5EEDEBDBBF58B2FBE3034DB38CD95A2662B6A1415E627DB00B2
          25C7B670C70D33B2254438B15969B61EF66CDD926D789C20290AEEC38662C261
          D676AB49C8162119A3CC8F9808C5B2B841764A370D57A06401200178219F72CA
          29884FABE2443812E5C492796F225BD4EECC76CD567C3638BB209908B47A2A10
          11CB7393701B3162846186575C478EBB9457E8F1922D41E98DCC1772AD5CA08E
          32C9369ED8C65C25DB08019FE9640B58386346798C4BA13FDDFDFDFD7566E88F
          EAB2B1782387C7090AB2BCF9E69BE2316EB55B007E0C187BAA501FDC03E37E14
          8B1C97B6E33C3B259C8623E4CC3C46599450C8704648768A3722DBE38E3BCE6B
          EDCE610BD41A7EEBADB70CA70D98D1A1D1C75ADD06C7439080B42FBDF4529547
          B7289820801A58A40087A028377FB7225BDAB3F54CB67BF7EE6D8119391EB235
          9F874A42CA490F34D96620249911614626D87823272CF447C46BAFBD46D7F1AA
          DD8264F731F57E72BED92ED26A5D8FF1EC96721A4A58A4C18BC545DE1368CF16
          640B6FE47834BCE1840F3EF8803DFBECB3095BC4E03A28347EC51557B0C99327
          1BDFD9906DBD74BA1BB29D28FC4D642B4319FA2391ADE767132B43F1DFF7F205
          4A2FBF968F8F9B5C20DB61B7672B42115684D2842164E7C27A7EF5EAD5A3F9FB
          AC14F76C5982437F4498642B82C68E1B8244DB54E3DE4DEC2E659882864C99A7
          F05D61764B3A8D2828C8D64B39AB9821926D2E69B6BDBDBDECFAEBAF373C24E3
          754083E91FFBEDC83004B2ADAAB28D6A90C9161D0D33B217B2555611626AB2ED
          DBB76F5FF3679F7D16B38394943FBB6FF4E8D17B5F78E18520C60CB252314DB6
          190D22DC77DE79877DFFFBDFA77CCF465EF6356BD68CE2E317757CFD2E437FDC
          906D948394D877B0FE08F052C737AA9CA209BFD92EAB549A38BED36C8F32EF73
          764B3B8D0828C8160388F6219206D11B197BB648DC9E0B640B2061C86DB7DD16
          B7B314C89AC8F6F2CB2F37FAD266DF3656B2253332BC9121C8DAA56B58792307
          38D9B66CDEBC39E6D01F4565A8406767E7FE6DDBB60DC0143F7FFE7C4DB6190E
          8C471470C74FD3AFC077E0C081D0B871E3C4AD0771ECA92086FED8212AF447EE
          3B897061FE8539C8C9E90A402945310E9DC6BE5D69463C0F92CAB4331B64BFC4
          D3309009649B2BA13F22E0057EFBEDB7C745B844B6B4673B71E2443BB2A5D01F
          F19F5EC8D6C91B392AF4C774904A94664B95A1829C70F7D4D5D5F56FDFBEBD82
          FFADC936C321C91871CC503E6D2F64EB29CE9620F69D40B862ACB9D575E97BC4
          DBD6B1C8A42E805D2DE75EF31CD9B12F0AB921F5721C0E641B8F07A923204873
          956C013837FDE10F7F30AAE3005EF73541D4B46021B235F7C0E810559CAD38E9
          ADBC91097185FEECDAB5ABF5CB2FBF8C7BCF56AE0C65FE6FF72BAFBC32B2A0A0
          209BE26C690E34F3F7D864BEC76113FA63050BBF10916CA131626C2532CE3682
          DC2CC816004942BB75634E56EDDD8AA664B96DBDE63951D58C10FB2BB543136E
          B6C361CF56936D928167464AB9A79F7EDAD054BD3C3FEDD95656561A7BB6D8CB
          A424250AC8A13F14B64021102A81277A927AF54606D9B671B28D2BF4C7AE58C5
          860D1B3AEBEBEB4B531CBB9C34D0B3959494B475777737E0B9B916AFC97670DC
          407B54115A44173217640B28F66FA7BB781490668DF993DA45DECD935874AA46
          68C1FB990BCDD684769ACA66A4CB410AC8C5D01F2BE0D9111604AF491410F702
          C4D95E72C92546D175896C31B9B15F44B98F5B59E48487172599D0201820A4C4
          55789EF97F32918168558E1E304557B248B20DECDEBDBB45486A9170B245BCF2
          8E1D3B52FA9E92093C2B7C1766CF9EDD3776ECD8FD1B376EEC9F3871A28F2F5A
          8C779685644B0BB444912DA0F44656F59D44B8549CC5C99C1C5527D804EDDDCA
          E753394257648B36E4A604CC015890AD5B37FBB8409A2DC83613427F28CB53BA
          40957150520D65E9E0B549FDE2D46E84FF1C76D861469F0A9A5E906BBE35EFBD
          F75E37886AF1E2C521147CB8F5D65B7D9C044310EC3FF9C94F50E4DCB8D7CE9D
          3BD935D75C137AECB1C77C9CC4426D6D6D6CE9D2A5BE193366B0F5EBD7B3B973
          E7C2AB3474C71D7720FC068E5E3816DA35F665ABA46709709268213332B5D32B
          C88C8CCA50683BDA4AFD04B2C527C68A4219053299E3DD617F9ACF8BEEE5CB97
          EF5FB26489EF9D77DE096101164B99BF4C02C6F22F7EF10BE33DD5D7D78FE6CF
          4C63A6271008D4F267EFDBB3678FEFDB6FBF0D617C555656FACE3DF7DCD0860D
          1B7C93274F26B2B505BF76FDA64D9BDABABABA8C905DDE6F2145C9462BB84DFF
          4939C2C5D4A1589042BB95C38010F6B35B6CA2E27A44C406D9E21A9A70B310E9
          225BD1412A93C836CB346B23F31227C7DE96961643E345C80CF688C5FAB22033
          788A42D8C32C0D92858022020329C33909EF0BDF632100E078641D8313148BAE
          A6D2DBD4D4D4CAFF6F3848C5BA670B60AF160444A12300AE0727B36C225BB41F
          DB29C71E7BACD1DF1CAD975D765903DE07FA60B883E61727501F7FCE724EB046
          C5313E3E3AF9F3D63EF7DC7341A1424FF8E7CF7FFE731F1FB3D5C86AE7D087FD
          A5A5A50D7FFBDBDF0EB5B7B787172F1EC7859BEC5248740173B25C250B64394D
          713C69B74E08932D1E3FAB249186A583941B37FBB840640BA71E84FE64821999
          EE8F185864B819CEC29BC0C9A899BFE34E2483909F558653E935F9FF206C08B4
          458B16152D58B0A0523E7EEBD6AD2D9C984B468C18511C8B56460404813967CE
          9C0807298093B96146264D7EB8BF2FD26EA74F9F1E7676DBB76F5FEBCB2FBF7C
          882F787C9C9C86F7033243BB359292CC9B376F2487416AFC3907F6EEDDDB585B
          5BDB874537FA80FA03C07B9D3F7FFE684EA4239DDE71676767FB175F7CD13678
          7A4C0B30F25076CA0D0F8D15613DB2E91BE1442A7332B4E180C33531902BCC7B
          1BE76BC2CD226402D9C2412A13E26C717F0838E42D469627686DD9009091A8C9
          2603E83715A1E2DE8972608210969F2191D7CF2488FD99ADCF28CF77A7F9EF56
          3ED0026DB82FBE089A70B3040E649B746F6490EDD1471F9D11DEC8B4678BCF5F
          FFFA57F6EEBBEF1A8B80E16EA204B8E00E257BCF0FFDA42A5E817BB3048D232B
          D219EEFB992A9079DC7CBEA4BFBF343EE3507ED141D81DEF734BB8A1F827ADDB
          311BF270BEDB36E902F4D9040B2FC194926D266590126238D9AA55ABD8DFFEF6
          B7F0F7C39D6C353434863734E10E6358906DCABD91E11092097BB6223EFEF863
          F6D4534F0D76086F53366A151A1A1AC30B99211D353C2353C8169EA6B4A79809
          648B767CF9E597EC91471E89D5A35143432385C8A5F9997E09A9E11916648B78
          3198914B93796FD1410A9AAD97D01F3AAEAEAECEF0484D3440FCDF7DF79DB16F
          AB355A0D8DE1814C58A8A7EC59D3DD000D6FB048106E159C9D50C413FA43C7D5
          D4D4B0CF3EFBCC880D4DB4B7264AE16DD8B0C1F04CCE464F500D8D6C01791F03
          7CDE0EE48A96AB097718C1826C913900354C5342B693264D32BC91BD38488964
          FBF9E79F1BD749A4199A262FE26D1164AFA1A1312C106C6A6A6AD9B9736737B6
          7FB2218AC0099A7087092CCCC829215B0013221EB2ADAFAF679B366D0A57BA49
          C6C4A218C76C9FB41A1A598060414141C3ABAFBEDA8E8A5A80265C8D8C800BB2
          4D499C6DAC492D902F16A65E987CB1E79BCCFDD56C9FB01A990B2FF322539C0C
          D304C422D74F9E3CB97DE5CA953EE4186F6E6E0E69C2D5483B6C1CA468CF3625
          641B6BBA46E48C05D9CAB97E3534B209981394AB1A5065EB12B34CE17F726C38
          9D4FC443C76419F040A8FAD32EFF63B8564CF2024DB8190C17649B54806C5149
          66E6CC996153AD265B0D8D4850DDE24F3EF9C418F320CAA953A7864B2A12917E
          FBEDB7C607FF47210378F9A33C218EC162B6B1B1916DDEBCD9F071C05C410190
          AAAAAA6CF3B8AF83668BED2514DDD8BF7F3F3BEDB4D30CB245493D146D27D0DF
          7211F7E10C4DB8198A74912DADAE896C8F38E2084FE713296BB2D5C87650C107
          902D727537343418639FEA4063FB0400E18268111F8EFF171717B3050B16A04C
          9D41AE44B6345F8079F3E6190BDD6C9837A64C80C9B89E3F5F3B1C27CD127BC6
          F312C96AC2D5480BD215FA239AB250CD2556B2C5CA75DDBA75C664D2E1391AD9
          0815D902702C049912886CBFFAEA2BE31C68B444B6F069804F8448B6389EC896
          AAEC0C47507637F4117FA67EFEFBC1CECECE8EF7DE7BCF5860C0518A4CEA9A70
          35D2867485FEA8C836162710C4C0420041C3D59AAD463682C816A40133B248B6
          C8BC467306E48972835BB76E8D225B902B345DD42156912D34DFE1EC5485E7E5
          1A7E88F7918FF741CFF6EDDBBBF8F3F9E87F6CC8F7A48B936A27BEB021DC12E6
          A248BD5393CCFBA1DE2DDCA247B134F0DFF07DA359080B33B258C038A920B23D
          FCF0C38DBFBD922D6260B107D5DCDCACC956232B6145B693274F36CCC832D97E
          FDF5D7C6BC52912DCEC53528514B36912DFA08CF01F331F6696D6A1CB770523D
          885F6C0817F568C725A87970D602C14F4847DF0CDFB79A65C884D01FECD912D9
          025EE26C21343EFDF453236523A57BD4D0C836908394684606D9C2018A169944
          B6DBB66D33E655595999A1F9921919252C45B2C5FC417C7B36902D40E6E42FBF
          FCB26FF7EEDDBC3BFC832A6DA44CC01F6061106E33BEB0215C14B6AF88B35974
          BF5636A8E58E37FF4E6DDFA4FA861AD1C824B28D65B263C50EE101CD5693AD46
          B682C8162660988201AF648B3D5B9C0BC226072984DCCD98316358EFD98A8083
          542010A85FB56A55377F5E1FC8170B090924D30638A91A0F6E43B820C6FC389B
          15BE9FF97B1E4B8749399B36A4872388E03059172E5CC8A64F9F8E1485F9FCFB
          C96CD09C9C54C864EB852C713C84088487265B8D6C85E820E544B6A2831491ED
          B871E30C13B4EC2085F983643298F35914FA837AF1F52D2D2DED28914999E5B2
          E8F9E28226DC34031E7BD8DFF9E10F7F689899F2E169100A25956CC9E403A120
          9B91BD00D7C01ECD810307F49EAD46D682F66C65B2C59E2DED4D624E41B305D9
          02205BECD912D952E8CFFAF5EB8D452ACE8319399B345B0E84FED475777777A0
          AF20D7903F5D13EE1034E1660010B707C782F3CE3BAF9093564A1CA4202066CD
          9A65EC1BC502080D3884A0DD10481A1AD906F24FC05847A206902DC803DEC8D0
          6C29190CC864D7AE5D86373240492D886C711C7C1B6009A23D5C38278A643BDC
          F76D3960333ED8DEDE6E84FE904C4835D1521891689ACE24807021DCE1229DD4
          7D420D6B98A6DCD061871D36AAB0B0303F999A22EE85493E6AD42883E82916CE
          8B4732261356EB10223ACE56239B81F18DC21B0873C31C81A68A2C5200999191
          0B187598292D23B24395979787C916A4B36FDF3EC3248DFF8390714CB668B666
          EC7D775D5D5DB72F3D2B07E2AE5E4EB4ED9CD37CFC67469ADBFE3FE09ADF51C7
          15A1B30000000049454E44AE426082}
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
        VirtualWidth = 390
        VirtualHeight = 140
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = True
        Scaled = True
        PixelOffsetModeHighQuality = False
        InterpolationModeHighQuality = False
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000A9000001DC0806000000AD4D8A
          E9000000097048597300002E2300002E230178A53F7600000A4F694343505068
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
          D0A7FB93199393FF040398F3FC63332DDB000064434944415478DAED9D099C5C
          5595FF6FF59EEE4E7792EEEC3B9026200981100264214824AC864518C5419D61
          0851119145C6BF28A2C8A06C0E2A8A8ECAE0E7A37E20B81150868C840425200C
          3BC89AADB3F5924EEF7BD7FFFC5EBF537DDFABB7D7ABAA57D5F7F7F9D4A793AA
          57EFDD77DFB7CE3DE7DC2D76E59557960A217A85AEFBEFBF5F282985AD783C1E
          F8BB31827422FD6DE43714A44AE950AA90D6D2DF267E4341AA940E294BAA1479
          294895222F05A952E4A520558ABC14A44A9197825429F252902A455E0A52A5C8
          4B41AA1479294895222F05A952E4A520558ABC14A44A9197825429F252902A45
          5E0A52A5C84B41AA1479294895222F05A952E4A520558ABC14A44A9197825429
          F252902A455E0A52A5C84B41AA1479294895222F05A952E4A520558ABC14A44A
          9197825429F252902A455E0A52A5C84B41AA1479294895222F05A952E4A52055
          8ABC14A44A9197825429F252902A455E0A52A5C84B41AA1479294895222F05A9
          52E4A520558ABC14A44A9197825429F252902A455E0A52A5C84B41AA14792948
          95222F05A952E4A520558ABC14A44A9197825429F252902A455E0A52A5C84B41
          AA1479294895222F05A952E4A520558ABC14A44A9197825429F252902A455E0A
          52A5C84B41AA1479294895222F05A952E4A520558ABC14A44A9197825429F252
          902A455E0A52A5C84B41AA1479294895222F05A952E4A520558ABC14A44A9197
          825429F252902A455E0A52A5C84B41AA1479294895222F05A952E4A520558ABC
          14A44A9197825429F252902A455E0A52A5C84B41AA1479294895222F05A952E4
          A520558ABC14A44A915728901617178B818101F1E31FFF38DBF7A394874A09D2
          F5EBD74F9C3C7972634F4F8F686D6D15E79E7BAEF652520A53A95AD2DAFEFEFE
          A62BAEB8423CF0C003E2BCF3CED33E50A02A85A99420FDF6B7BF7DD871C71D57
          4FA0F63537378B499326253E54A02A85A59420BDE38E3BEA8E3EFAE85EFAF79E
          F2F2F281CECE4EC3010A54A5309412A4DFFDEE77EB3EF4A10FE1247DF4AA8FC5
          6203E68314A84AA92A2C48F1FF3E7AEDA157BFF94005AA522A0A1352084DFF5E
          310C6A0CE7E70F14A84A411536A41040DD27862DAB02552965850D29FE013065
          8B6A900255C9AFD261496550E1A3AA604A2925A50352590A54A594956E482105
          AA524ACA04A490025529B0320529A4D2534A819449482105AA926F651252959E
          520AA44C5B52C7F4948254C94A998654960255C993B2092984B17D68FA0D2750
          A02AC9CA36A4503BBDF60B05AA928DA2002904500FD06B487E53819A3EF97966
          B1582C67CA9A54F610218514A86994C53392C9B37B8031BBCF33096E942085B2
          06AAC33D78791A597D883EEECB909B965460F1D990C57149DFCFC47D4609524E
          4FA51DD4B09BBA28359D1ECB524AAF32FD6FB118815416EA1F9917E4B37BE8D5
          25EC2D6E5AEF2F4A900A610435D460CA6719F1D0F0100BC5F0832CD4DF2FD13F
          C3C9FAF4BF78219DD62FBDDC2B2FF30F133056D1AB52BF1FBCBC168281C53DB7
          D0AB3B93F7163548658506AA87F2319495FA5FC0C835EDA7B9C75F3C4C589D6E
          FDEFA06B4586F0501DEE1170D6E8F756E05076CBA2D91C8F1F6233BD3A44065C
          9D28430AA504AA4BB950930052B62E610B0500A887C47093690B6C2A0FD6E63E
          713FE3E935C1A16C5C0F6EF760770CEEAD49BFB7D0EEC7E3FD7912CFBB4F27A4
          509B18F6517D81EA103014D1AB9C5ED5F41A93CE829B040B7B500C77600C8891
          879F286890076B53F7B82FACD4516AF515910C1DDE33074A8516C708610D2C16
          AD3B24D21454A504E9EDB7DF5EB760C182944FE44100B5417808A66C522D7813
          950E8B394E583FBC4C0980B6EAF794E4BFDA3D58ABFAB53A968EC38F0F0BC999
          9B7619CEF88103070676ECD8D1BF67CF9EC10F3EF860F0E0C183DA054A4A4AE2
          63C78E15471D7554D1D4A9530BE6CF9F5F3066CC18B83F4516E7918556AF89CA
          D44F65A03FB138CA9C6657C655B1FBEEBBAF6ECE9C396270703013A90857501D
          6EA6420C377DB0300CAD6381E5733955927CDF1EEA40B64608B6607D5AA5F76C
          ADAA1BA400430C37ED13ECEEADADAD6DE8FFFEEFFF7A366FDE3CF0BFFFFBBFBD
          CF3CF3CC8070D1840913629FFEF4A78BFEE99FFEA978E9D2A525C2BAF5E1FA84
          1FBE1FA0CA654E958D9420FDED6F7F5BB770E142F1E69B6F8A828282C027F252
          4EBD126C4175F0CB6AC588CFE908671895EAD17AC8E540F001BFAECFEA403E97
          1DA492D59AA0DF6BD23DF6F6F6C6B66EDDDAFDAB5FFDAAFB17BFF845C27F0480
          E673C2A2CAEFB3858508D2D8BDF7DE5B7CE28927C28F2FB6B9A704A8E63207AD
          D794207DE49147EA2EBCF042F1DE7BEF69A01616A623F648AA84241FF598638E
          11B367CF361F8F267D8A08D0B4D343152D2D2DB03CDABFB1C615B7160CE1D0D0
          90A066509496968AAAAA2A515D5D2DD04C06FCB1C2A235E9F766993077B2A47A
          133F4958FC00FFF18F7F885FFEF297AD3FFEF18FBB19384028C3E7268696BF73
          D65967C51E7CF0C1CADADADA4A9B6704BF1B01AF2150CC0AA41B366CA8BBE8A2
          8BB4FFBCFBEEBBE2ADB7DE4A37A8AC36BD123428E6CD9B27E6CE9D2B5F7B2CBD
          260BEB948BA500E5BE7DFB045607ECEEEED6200498F88B97650550A5E3FAB82E
          FE16151569C0CE9831434C9C3851FBBF07C996AF597F797B00C3F0A2F99D6E75
          AFCF3EFBECD097BFFCE5662FCD7A00C5DF7EFBEDB2BABABAF1422475B1E2FFC8
          A7369ABF146270E8AD8ED892F28960511954BB5F7F886AA36B1C78E18517E21F
          FBD8C762471F7D345F0C9536D1E986B9A260251B1A1AC4AE5DBBB4458001A3DC
          E4F3716EC18CFC97BF0740A74F9FAE59F8CACA4A43B3EDF2A0E0A3C2A5F15279
          F8554E13263F11CDFBA64D9BFAAFBEFAEA660A8A863C9C27A9E977B3B46C8DB7
          6CD952B662C50A04A356A062BC7062A9C5AC36F7F2C9002A9A1858964C804ACD
          ED81934F3E39DED8D8282888039CE3ED6E942BA9AFAF4FECDDBB57BCFFFEFBA2
          A3A323F1A30A53B81EDF3B40C58BDD010FA0C24F854BE3D611C07EA841141489
          4B2EB964BF13685E9B7C2FC751305676DC71C759D53BFCECDDF27D64DD923294
          9906957CC386D34E3B4D8B6C6DD232890ADABF7FBF06E7810307347FD243F9BC
          14DEB6E671FEFEFE7E817D050E3BEC30FC904459599966B55DFC5780BAD7E173
          042EB384299F49C0147EF18B5FDCEFD4C4EBE0C1C20EAE5BB72EF6894F7CA280
          02E0027A3F4EEFC7E0BA3DFDF4D3F1EF7DEF7B83E40259F5EB27D511D567C5A4
          4993AA2D3E83AF7D50AE0FBF4A0BA4900C6ABA84EB0D0C0CC4C9FFEB5BB26409
          B5B04585662BC5FF879F494D9FD8BE7DBB0608A0B1F33585871495CD7784D5F7
          640B4E2008F4D2D5D4D478B1A8967E9D2EF8DC0628C86D29BAFBEEBB9BFFF33F
          FFB3CBA5ACFD14F8145E76D9657013D0B1C163120CC7D0AB87FCDA5EB2CADDF5
          F5F58E0E3622FF6DDBB6C19A9A035558D19D429A26E417D4B4418A7F6732989A
          3973A640EF971CAC7099C83A68D9070445F8DCA375E7812368B286F47FCB2A92
          5EA56224D96D2BFC60615561C18F38E2082DD8F3F023E660CADC6B867406576C
          9CFCD082DFFFFEF7039FFBDCE71A1D9AE7385DB79F9E0B024BBCCC6924805420
          8CC06A5DBBDFFDEE77DB6EBCF146C71FEF7DF7DD57F4D9CF7ED62A1EC00F0D3F
          B8685852F9C49904159138FC3EA4A3702DBE3E7CD5575F7D55F33D4B4A4A9CAC
          270B56084D2DF27D83FA4BAB25B9E360E3C68DFC4F3C5086159D0648CB14DB9D
          1C65E2741602AB458B16B93D381478BF5E26063529387CFDF5D70BC98A36C979
          5093E2679D7556FFE38F3F5EAB9753E8E7EAEAE9E9697BE9A597E23B77EE8CE3
          4703AB4875092B3B568CFCF8061E7EF8E166B2AA83C20654B811BB77EFAE282F
          2F1F2B8CAD117EE83BE43AF0A3B4412A2B53A002C059B366097430A02C7BF6EC
          112FBFFCB256360E58ECEA418CF4FEF48B118BC5A3A3D01C023C3C30DCE4A018
          1996C7D65648DF010435FAF7922B4EB7E48015A01E7FFCF16E0F0EE7DF2B5D67
          965E2EADECB0A2F42CFA3FF9C94F363A9CA397AE39518C00DAF7CE3BEF34AE5A
          B52A4E7E67D283993C79F2D017BEF085C1AF7EF5AB7029D8AD18F8FEF7BFDF74
          F5D5572755240758FFF55FFF557CF9E5979B8339FCD010E92786F8F901352390
          021E72E8B5883A13A022389932658A78EEB9E7B4F71C00C59BB05078B8EC3301
          465802F4AA94086FFE29A045AA05F95BF60763FA790086ED4DCBA06A5F4AAE43
          BE3E7E40078445C044FE7F3159D083B7DD765B87391AD7FF8F3D0DF88703F5DC
          70C30D8D77DE79A79744EE00F9D265E4C3D7EAE5E83DE184131A5F7CF145CB7B
          22E80B9F7AEA29DCF718619D03D67AC8FC3CD38C400AC1177BE595573450E117
          A633E267CB09601DCA042B08380129AC1FFC4A64082ABC5DC556B076B0CA1870
          017801027A832AEDBE005011F9C35571A9C73DFA5FE446136310366FDE5C70FB
          EDB7373CF1C4135603AEE30F3DF490B8F8E28B27E965E9A368FEC06F7EF31B4F
          3D0DBA06A88C1554A7DAB03F722D5A172C58D0493F80028B1F449C82D30A3214
          55C20829ACE86E2E77E42C297F86E8F6B5D75ED39AE17483EA22583D000AA000
          277CBCB1C27F44EF24B8013C30189AA05FC7D202A12E00295A0187BAC4B9D074
          56F1D7D0D493AF384891FA01F3C13A34E843AFD4AF2DC8F7DCC756DB8FEAEAEA
          FADE7EFBEDA962B875E959BB766DCB1FFFF847ABEBC57FF5AB5F95D20FC1DC13
          85FAD82574572A6390CADDA26E963442A072972A0A8B878D26B0485834EB72AF
          9339E0E2CFE4A4BD7CBBD2B9D04C03D601FD7A49CD3F0753180B404DA918376E
          9C537DA2201C7DC39F2CFAED6F7FDB75D555571DB44ABC93051D204B8A7B44AA
          A96BDAB46907AD7C500F8A77757561D81EC64388471F7DF4E0473FFAD15EAB6B
          7EE94B5F2AA6200E7E6CB15417B0F26809FAF89E3D5F3815487FF7BBDFD59D7F
          FEF98913B95D5806151177267C5493127DFE62184E1ED6660094EF03E060635F
          005A565686C8372EDD438C3E8BE187E621AD85A60E5D9DB026B0D8687A0D370E
          F704F5825D05172F5EAC6522BC08B9516ABA911E6A9581E17F3FF3CC3362D9B2
          65DAF5288A3F409079EA26B5D2ADB7DEDA4F8114C60914EED8B1A36DEEDCB99D
          56C72D5FBEBC68EBD6ADB8CF32A96EE1FA60C38F2EB98EBD2825487FFAD39FD6
          5133A3E5FDBC0E70E5E3641F3543A02235B347AFACA444B82C3D4514A7E02B4E
          516E01FADE01A97C7F0014A3A39083C53DE0DF36DDABFC906041002A1E92E500
          18061569298B515D967AF7DD770BE939B4DC71C71D9D5690363434A0B303D6AF
          E0E9A79FDE43814DE0DE95254B960C3EFFFCF368C62BC8AAB657545474581D47
          FE75C1FBEFBF8F56430E9E50EF301000DB57F094F2C8FC356BD668291F3F3D4B
          0C2AAC14F948DAE8A30C808A3BE5690E68FA107C180ACD5D95E417C6C94AC450
          A643870E6923A49067C58014949D473BA1791E3F7EBCF6170355D0DD8AE17DDC
          1D6CBA36DEC00F05A92434FD88962DE71FC18AAE58B142EB3E7513BA4109D266
          0CC593DF674849B847FC20041DB717DDA0412B70C68C1903BB77EFC68F1B0062
          808FA52505A47FFDEB5FC7D38F5CCE8EC89066CE926222DEFCF9F3B5A169E8ED
          09625161B5909ECA10A810AC5902542A03DA700DD09A9A9A418A5AB5AE55749F
          A22300968D87EBB15FCA43F478985E7979B9365C105D9D3B77EED4BA84F103E4
          4E05BE65FD61C1FAECD3FF3F53984630712B8320EAF0C30F77BD1919522B4BDA
          DCDC1CA37F6B7E2445FFF5679E7966E04A962185259D397366A755EF56E42045
          3F3440834581D38F5F7F90A61F4977809AA160AA810003A89504132256003144
          112C7C2D6DCC018BE144B9184CDC2F8F35E5B1A4F837029E638F3D56B3B8F0B9
          E941DA81CA832E905900A849CD10AEF7E10F7F581B63E0A4B7DE7AAB8402A796
          9B6EBAA9CD0AD26DDBB6C5962E5D0A9FB4807E407BA995086C493FFEF18F0FFC
          FAD7BF06F0C574AE763A57F49B7B861482E5C0E00938FD68FEFC822A07531900
          15FE6513FDB05AC897AC212B38A1B6B616D78FA1D946738B1F0ECA057F149612
          23EFD152E005F83060054D7B7B7BBB062560E2EECEE38E3B4E3BFE85175ED03E
          B770857073C819A2F9AF1123497643BD6092A39B6F8AC069C3860DEDD75D77DD
          21AB48FBE69B6F8E7FE31BDFC0F9F18368A5F2217F1BC89A922119A01F217E54
          180ED8BA7AF5EA2EAB6B5E70C105F8E154EAD7942185ABA3B92519B7A4B28F89
          260F0F090FD62FA878D8484F6528E13F44C01DFCC8473E524CB0550328F89D80
          0D800232B83188B6E541CBB270BF7009904EC310404E4B01565854B42ECF3EFB
          ACF60394BE2F4F83816501307385857F8CEF53A4EC781B4841FDCFFFFC4FDF67
          3EF399069BB19F0374AF18948C606DE8DBDFFE763D595D67F36C2DE45B399F3C
          40E01FBAE5965B0C9D077CFDAF7CE52B65B7DD765B9530CE2B43E0883CA9E633
          650552BE30838A8471AA16359D3E2A0740188904D030420A80A2FC48A8639412
          7E6890EC8B9ACBCBF39D002ADC04FCD0D825A06656FBFBE28B2FDAD5011E9AA5
          35E5F20152FC48EC6E832C7521418AF4D07EB2748641D23C6EF4B9E79E2B3DF1
          C413F9FC087890BBF5D3E314FFE0830F104C6A3D5DF4EF1E728FE0AEC42CAE17
          7FECB1C72ACE3EFB6C738F538F7EBF99ED71B25AC1842D092C112C2A46A3FB29
          8CD9474D27A80C1FFB8D2837F9A5DA4BEEEFF7D24901353535696935B802780F
          E74594FEF6DB6F6B105B34FBF08B11C8218C477F7CE2A172D7EE51471DA5FD90
          9C7EEC5BB66C29255FF180397882A4BE7B641234DAA97E9BC8A541B3EB05D438
          9D7B80FC51F8EEB0C003B7DF7E7B0B594BCB41D5B8DEF3CF3F5F4D109BFBEE79
          EC4166FBEEED96D961501144D12F5803D64F81B2909ED28045348D2C855C0E3F
          DF0754B0CAF881A145401DC0654006E4E9A79FB61A26888A7B4F0C37F5497395
          70FCD4A953E31490C61CCA13A7E0A994AC69DB35D75CD362573EDD37456F97D6
          0B44E76EA11F40FB3BEFBC83FFDBDD687F7D7D7DF1F4E9D36BF5EF89CD9B37B7
          9D76DA699D76D34ABEF0852F94DD7BEFBDDCD4CBF709D7A69DDFC8AA25950B11
          06A8484FC1DFCBC4E829E47BBD26D19DCA2D4F48844E3EF964CD7DC1FB70294C
          F58574141E9E61DE3CDF3FEAEDD4534F75FCD150935F40F014FEF0873FDC6733
          C8442BDE430F3D5478F1C51773373044DE496FCBBFFFFBBFF7FEFEF7BFE71EB4
          38B91743746C11418C8706EBAB5D988C4607B9713CEDDA52F4BD0ABA86B9A987
          1BB25D04F047B95E83CAD382657A976202D4A8A7A7780E7F90256264BFFAEF7F
          FFBBD6FC0354F8B89839F0D4534F699903D33D700085D157E8724C3C5CD41DFC
          E2934E3A495454543895294E0167D99FFEF4A716748F3A15912CAA208B8A1F83
          DCEFCA4B590EE9D7C6AF4B0EAE86B66EDDDAB972E5CA76E10028A2FA071E7860
          7C555595D9AFE1A63EF323F3BD402A5BD4254B96B80D9E482A1C47FD08A6D20D
          2A9F17161583A78380CACD3E7A9F1048E1DE01D8B265CBC4B66DDBB40C82697C
          2BFAF33107087E299AFC22B93CB0BCC814607CAC5379308D997E04A5DFFBDEF7
          EA1DACA9A6C58B170FFEF297BFAC264BC9D35EECBA0B0728481A78F0C107DB28
          92779CB98AE69F7CD7EA33CE38C3EC8B421C206A8A9C25E542E16121C7880A9F
          3C79722441E5481D7F91A30C022A1F8FFC28AC29FE22CB81FB86DB82CE025393
          8F87FFBE18B65C80B4543E172C31EAD84B5990D8A726B997FCC2031EA62BC7E9
          C718BFF5D65BC7D0DFE2891327C6C86A1720E86B686818DCBE7D7BFC0F7FF843
          0F418F00C9B502C842575030554DCFD87C5D24EF791C6C342DA95C38808A4AC7
          008A69D3A6E50CA8412A15DFC7082434F9F871A29E0000260472F7B12E34B13B
          C4B0F541045D2E4C4D7E5D5D5DFCC8238F8C799806ADCD81A7A6F99053100559
          053EE6E574EC8E330BCDFCFDF7DF3F01A05B7C8C5622318931D290429C3F04A8
          B02C00D54F41D9DF838F9ACE602A555019A6BFFDED6FDAC013584E824C8313D6
          1596558AF4F10FF43EE141A2CBD11074D071711DD2021B480D4D2B9A7DBA46D9
          F3CF3F7F10BD506E65B55A9CCC0A563BAD59B3A6F8073FF8C1F8238E38C21CCD
          E31C866583B2B2824990959E658B8A843F7C2D3F85E5600AE9A94C808A6BAE5A
          B54ACBF77AB5FC0C13E658A18CF83720450F125251F0514D90C26743E0E21752
          5ECBDE30F814D1FE8B2FBE584656B5D9AEBB340CC182DE74D34DE3E9395A9977
          E461D10D9AF2A26559598E9C4143AF0EF7FDFB2970A6D25300024D34067AF809
          F81826748962A514B826DC8385EED7902D297A7EF0E638F97B00F595575E29A5
          00AEE39BDFFC6693D735A1BCEA8B5FFC62F9D5575F5D75D861875955087E3800
          D430BD3A672C290B158EC9677E21E5429B2D6A3A7C5400D1D3D3A3411A247DC6
          3E29321BEC93BEF1C61B563E29FC36581CF8A44845197A9E60853114D0065234
          A70015E92B833F8BA6FF9D77DE29C14ACE7FFEF39F9B1E7AE8A11E3FFEA6D5E7
          18757FF9E597579F77DE796330B4D1EAF6C570BAA9CDFC414E41CA4D7E5048B9
          E01C4CA12B321DA032A4A79D769A674BCAC76084148F8282E544FE1565DCBD7B
          B7AFE81E65401D39E46E79D81F524918DC6C801CC29C26B2A825F4B7E72F7FF9
          4BCBB66DDBFACCFDFC4E02ACA79E7A6AF1EAD5ABCBE9554165899BA27879FD7F
          0634E5FD00E47A08AAAC42CA85C7B90012464F85DD851A0452AB3C2946F163AC
          2DF2A4389F294FCA032F2CF3A448FE630C04D63BB5B83EAC30A0E0EE46DC3C40
          B51C910258E985B1A0FDBB76EDEADCBE7D7B2FD24DF4C3197CF3CD3707799567
          0A140BE6CE9D5B3879F2E4C21933661493AB52463FB252FA3B6891629287E261
          E643A880723D0455D621E51B90D353F001C35AC63108A410EE0D513CFBA3E86D
          422663EBD6AD8915F524C10AC21A022C406A483FC10AA313C4C6DD90C7683218
          F007D0F5C94B319A13EBDAC8A996969682D6D6D6C243870E0DD26BA8ABAB6B88
          CA1D272B1FA76BC6A8292F44CF11E67949CDBA617308E9DFDDFA3D246D4296F5
          8D1DA20029DF04AF9CF7FCF3CF27E619A52ABF90F2E758BD0FBE275B4CF4DD63
          3A0A5B7A537DF142B3497DF7F0B9715D87BE7BF42C21E8B21A9134563FA73CF0
          D8505CE121492F9CB7C6E1E589F043E335A242B3A072BD06556420E51BE19E1E
          1EC09C2AA87E20E5CF30710F5614DF83300A0AFE2472A616DF055C1878818272
          223F21D4D1D4A953354B6A736D5E082C699D7D5D68FE912D98209C47E35B7D37
          E6723CA68EF0266AB24F3A720205A9BD00282C2AA619A702AA5F4B0A0B2E030A
          AB79CA29A768BD4C18C26751165E7F14D6CE72F815C693A29E6CAE2D2F74E1F4
          107061C08A3495B709FDD6C235780FAA5E976B2A489D6E08E79741B568623DC9
          0CA9BCB69479943EFC4F6419D044F3FC798CFCC2BFB1AE7FCCFA89ED10C3D630
          6919751E5C82A6DE616A3382264063863426462C217FC6D60E90C26263204899
          E9584311F4179A71DEA5B95378D82B35510805A9F34D31A8B06CBC2EBEDF723A
          5952FC1B40C2BDC0C610482D710A0CF78681CEC86DD2F187366EDCD84B7FCDCB
          F9F0A87CCB394E380F2636C212DB88FBFCD91FE53552CBA49790AEC95B45F6EA
          AF2E31B21F56A1743C0410FBC4C8FAAC81A420F570639CAFC41CA320A072CF16
          FC4ACCDB423A88DF039CF03FD18CF36E23B09E3886008D931F1A23C83BE8B8FD
          04F1D0CE9D3B4BE8DA985A0C2B26AF8B64B91905EA0703711CC60DF02A75A5FA
          39AB84BF3DAB5011B090ED626405C050A520F57873B816B6BF41176A508BCAF3
          ECE5394FBC30045EB0A8F80CB94C747F4E9A34893C83A1567A35D3714398FB4E
          40633511DE5A11960C81079A5EF8A2494F13A9A7952B573AED05D52446165DE3
          01CAE61B336F5B236C3EE7E52AE16BF2C0E7947B4514A43E6ED06C51FD065356
          EB9C72B30EBF1170220AC7F4E7D2D2D25E7ABF99DC84CE8A8A0A6D8133B802E8
          6CB090E50A26B0C8E8A102F076B72586412F93FEAF7DDDE2386ED20B6C3E97BF
          67BB35781029487DDEA4DC55E935EAE7A61DC97879AD7BEE09424F125E9872CC
          2B8DD067F03FF7D1DF3E3D588AE39A3C2F5F8C58A9A43D9878E415464961CA08
          ACA9DBAD8964F0E006C04A03E2216104917D4F0E9CACCE0357A4415EE7292824
          0AD200372A8F98F702AA397002B05CF1E645C94CD39F010826D8A119D5A0C482
          B3E41A30A096ABEA71021F4318F1C3F021C08828BFF5924B2E110F3FFC300329
          5B4FB6AA83175F7C3126E5B1EB21CF3997F39D8D08FA74172510250AD280376B
          06D5C947F5922775C89D02D4BDF4793F05571888AC1D2E86078060485ED242BA
          0014536B00A9D7F54985BEF6A93E971DE6DCAB2F0360B12A09F7F7F3050DEB89
          D279BB9425CD20A47CC35E410DDA772FA997C0DB47AE40DF238F3C827C27FAE7
          014412A0BC011A7A97907AF278AD4358D34A0C37DD417B2D866EBEF9E65E7D06
          6995E933F3AE27BEA4204DF1A6BDA4A75285541F11A52D9E4BCD7D095D03E9A6
          A425CF3908E39493C7EBB4D031E8B172755C3DAA5B5FEBC93C3005E929741AF8
          1E34AD200DE1C6DDD253412195FD53586A0C38C1BAA54E5B0821F18F0E001F80
          2265E4BECAAE3FF5D0F56151D94F6550614D3BFC9E2CA721855219991F966450
          6151CD4DBFDF0126898AD1FD4BAC5A0238B1189A958FC9C7C17AC28AF27B2EEA
          BEF2CA2BF7FFE4273F091B504DF7DE7B6FDF17BEF005DE658405FF1A1D07BEAC
          694E438A878F4839DB907205D8A5A7825852DC171627ABAFAFD79631E70578AD
          EA08C70250E44479B4BEDBF90F1C38B067CA942976FDEDA1540902BDDADA5A80
          2AA7A60C7BD77B51CE428A078FA61537808783262EDB92414530C5ABE2798514
          D6101B3C60BC28FEE23B78CF695712008A261EF3973CCC266058D0CCA3572895
          914CAE3AF7DC73071F7DF4516D030761F44DF7F9394F4E42CA237B90D8C6A060
          6C0A81496EFC20C3BAA9A01581EBC3FA6DD9B225919C074C587A118975BC8749
          74E8B30780B0BA001B50E338EE3AE55D48CC2E405CDFF309FFE62178F2B5DD8A
          48166EDFA4499362E99AA20C59ADB5CFD717C373B13C37F9390B291E2E86B5A1
          69C583FDDCE73EA72DC0E0652DD04C084B8D63515A796131A7FB9301B32ABBBC
          2714846920585E12CB9FBB559730EE31D575C92597343FFCF0C37E16BF0D2C7D
          A948F3C266BE9AFC9C871411359A45FCFF9FFFF99FB52916DC479E4D50AD200D
          5439D2D2E4F83162CE3DE639A13FDE61F30B0612C3EA40B53CF50339516C705B
          942E2B6A129631E7ED70B80C3C1FCB731D84A1AC43CA0F73EDDAB5E2231FF988
          769CC53E4819532A90CA16157062A008FAF531F004011227E9E5632D84E61429
          1F583139824737E5403A9B7A96B40714AC28C6C106F24BF306524EF9E086300A
          FD9C73CED11E6CB67C542B48AD821FABB2A12560BF14034F00279611E2A6DDC3
          3D21F18FE924685231109A87E00DBDF8E28B8D279C70C25026217DFDF5D78BE9
          F9CA7E094649D57B3D4FDE402A5B4D348BD862E7939FFC64D640B582D46EA89E
          FC82B0D6130647E32F8F8E920177B89744F42E862185644807366FDEDC70DA69
          A765A43218D2575F7DB588E28589D2471821B5DDEB79F20A5286115615EF5D7F
          FDF55A6ACACB5287614B8614C20F07BE24E6F573F003C1C7C431F02F01235EF8
          3F5E5CE600C120BE80292518D16480F4E73FFF79E3E5975F9E913A6048376DDA
          5472FAE9A7CBBBA28C6E4821A47890CEB9EEBAEBB4144DB621E5D551E4A17A2C
          6E01AC1E4408990A0427BC15B776CAD75E7BAD69E1C28519F549B1282F190B19
          52748DEEF57A9EBC84149FE1BDA842EA65DE7D88320C68DEB3674FF38C1933FA
          3209293DA772F2ABABA5B2C85BB1BB4A419A260585348D6240B0E522B6A629C8
          440A0AC15E63632386168E95CA007FB9C5EB3914A46952042165F5AC5DBBB605
          23FC33A16BAEB9A6F09E7BEE41D7A8BC0B090699747B3D8782344D8A30A458EF
          B471C58A1519F14B5F78E185D2C58B17637A893C52FF03E1632A8982344D8A28
          A40C4A070532EDD806329D5ABD7A75C1934F3E095FB44CBA76622F26AF5290A6
          49118554AB3E7AC59E78E289A633CF3CB33FE5B33968CB962D6564B1C70B63F0
          66D845C48B14A469528421650D5D72C9258D0F3FFC70A86BE0B33EFBD9CF16DD
          77DF7DE8659207B7A03B74BFF0396B54419A26E500A4E858183CF7DC739B366D
          DA146A37E9D2A54B639B376FAE292B2B2B367D64D8D1CEAB14A469522E400AB5
          B5B50D5D7AE9A5CD8F3DF6D840EA6713D806A8F091471E194BD0F3C4BE40239F
          642948D3A45C811482455DBF7E7DF3030F3C30E867833048B6C068E2EFBEFBEE
          6AB2A0E6B9F7483761D453A01F8282344DCA2548750D5279DB3FFFF9CFF7BCF7
          DE7B861DED20F32E77F27B8B172F2EB8F3CE3BC79015C534119EC3C280CAABB0
          049282344DCA4148B5AAEDEEEEEE7DEAA9A7FAC8AAF65150E518FDAF5BB7AEF4
          C20B2F2C3EF5D4534B74EB69BE298009407B450A2BEC2948D3A45C85548CC034
          B06FDFBEA11D3B760CB4B4B40C525D6B43B7B0DD4D4D4D4DD1ECD9B38BA64C99
          824AB59B8682000980F68B14008514A469528E420AD9ED26E2B67B88BCA019FA
          E5112825A5B7B23D4932A814A4B927BBAD72781F26CB3453B6EF59416A529E43
          CAE2B5F0E173C27ADAE640A370BF0A5293F20C52F89500506ED21114C1720250
          C775F2A372AF0A5293F20C52808841219AA5B4985098B60DC2C29482D4A43C83
          1482B544BF3B66A0CA1635A1A8DF9382D4A43C83D4B06AB3189E926C502EDC8F
          82D4A43C8354162F3A9173A02A484DCA6348A19C0455416A529E430AE51CA80A
          52934601A490B6058E18DE052F2D7BD4875A5805A951A3045228674055909A34
          8A208564500D8AD27D2A484D1A659042910755416AD2288494859EA956F39B51
          B8DF9C80149FF39633A834ACF989B5EBD3A1510C2964B98C4EB6EF39D290F2FB
          5BB76E15BFFBDDEFB48D14202CB378FEF9E76BFBC1870DCE288714B25C04428D
          27B5811402A00F3EF8A0612F245ED4F6B2CB2E13CB972F0F151E05A926808A75
          5223D1C71F694861396FB9E5166D1B1AF38AC958D016CDFE37BFF9CD507D5705
          6942910135D290EED8B143DC76DB6D497B7E32A458F27BDDBA75A2AEAE2E3450
          15A4060154F8A9599D4E12694871CC8F7FFC635B48B124F8BFFCCBBF88638F3D
          56411ABEE485CA922C2A94A9BA8834A4AFBEFAAAF8C10F7E600B29B69CB9F6DA
          6BB55D3EC20248416A292C438E31A959B1A89186F495575E113FFCE10F6D21C5
          4E1F37DC7043627F2405695A852927D8112FE3A0E634A4801390025605694694
          1550731AD2D16049FBFBFB63EDEDED05DDDDDDDADFBEBEBE586F6F6F0C3EF8C0
          C0404CAFD338EAA8B4B4344EE58EE32F05954363C68C89E345650E7355680CF1
          C328FFA4497CE9AA1B05A949518014F0B5B6B6161C3A74A8A0A5A5053B26F751
          9DF5353636F63534340CECDEBD7BE0830F3E18A4D710BD173FF2C8230BE6CF9F
          5F3877EEDCA2C99327E355327EFCF892DADADA12AAA3422AFB105E046C586B9A
          5A82AA201D059092B50494054D4D4DA2BEBEBE77FBF6EDDD6FBCF146CF5FFEF2
          973E5E640C503A9D63E2C4895A01B140D9F1C71F5FB470E1C2D2BABABAB2E9D3
          A78FC1523BF4F9604545452AB026768D16190255416A52362085E524F80A77ED
          DA3544AFAED75E7BAD9BCAD0C396329573035A00FBE10F7FB8E4E4934F1E73D8
          61875510B0C5D3A64D1B806B10F0B4F2BE4E07449A13FE0A5293320D2959CEC2
          BD7BF7C6FEF18F7F74FEFDEF7FEFDCBC79736F18705A096EC1B265CB8A09D80A
          7A6E953367CE8C915B3044CF20956B35EBAF8414A4223F20A573C5A81E0ADF79
          E79D3E82B3E3E1871FEE7CEEB9E706533FB3BB962E5D5A78C61967949D74D249
          63E10E4C99326508C1570AA744B3DF2EBF1126A89186F4E5975F16F7DD779FB6
          E7A8BCF96CAE438AE69D7CCE42AA83CE4D9B36B56FD8B0A1371D96D34D9FF8C4
          274ACE39E79CCA134F3CB172C68C192285C00A0F07BB931856841E154B3FEEDC
          B953DC73CF3D1A38F80C6917BEF95C851480D27D153CFBECB3EDFFFDDFFFDD46
          9086B2E67D50C1AA12AC95748FD5471C7104BA9A83828A40AA5E7E6354408AF7
          DF7CF34DF1AB5FFD0A516DC2A2E62AA40074C78E1DB1AD5BB7B6DD7FFFFDED99
          6ADEDD84E0EA4B5FFA52E559679D358EFCD6580A16157DFC86897D613C934843
          8AADBBF1DEFEFDFBC58F7EF423B16FDF3E0D5458D45C8394CA1B43804496B3ED
          3BDFF94EDBDB6FBF9D967D98820AA05E7BEDB595E79F7F7EF5E1871F1EA37A0E
          420656EC8335D55A8751614901233E43E084A923647D12A0623A49AE404AF711
          A31F1A2C68E7CD37DFDC1235405900F5A69B6EAA3AFBECB3ABE6CE9D8B7A0F42
          07A69F60785F68D634529022158226919CF9836BD7AE1D4B0FB7189FC36A32A8
          08A41A1A1AB4E37305D2F6F6F6D8DFFEF6B79E3BEFBCB325051F1417C60E2105
          FABFE582C4F5D790F40A24A4A9E88734EE231FF948456D6D6D103AB0262A5648
          D1B678CCBBE61E87D04DC508D4DD3FFDE94F89D1A19905FA20511E2F0A4B8AB4
          14CE41BF7C71FDF5D7471A52FCE8DE7AEBAD815FFCE217872808F4BC0DB724DE
          84C1CF60595428AFE6ECFB09938128A67A1DBF78F1E2329FFE2927F943B5A691
          8374F87E62F573E6CCE9BAE69A6BCA4B4B4BA7EB379B8004DFBFEBAEBB3470BF
          F295AF447914540C56FF91471E6925EBD4EE33CD1404CEA42A17C3FEA1EF00ED
          EB5FFF7AC5A5975E3A7EDEBC79B100C97EF8A67BF5BFF9D5DC0B09D2EAEAEAAE
          55AB56C5CE3CF3CC49F45EB57C0EDCF4EEDDBBC5430F3D243EF399CF4416528C
          58DAB66D5BCFB7BEF52DBFCD3C9AF5621FC7BB09900E081F5615FE29B956D56B
          D6AC194BF243095B530C926E933F08FA7C220B2935E15D679D75566CF9F2E593
          E9BD2AE9E613E7C2443DF8AAD4244512D25DBB7689DFFCE6372D37DE7863A78F
          221409FB3D9652119AED7EE103D47FFDD77F2DFDD297BE34819E71918FE17EFC
          9C70CF003561C5F30E528AE0BBBEFFFDEFE333ECBB3E5158409A8EC11E61418A
          94D3962D5BBA6FBBEDB6433EAC68BA0065F90215D6949E41D579E79D575D5E5E
          1EF7FA3D5D3816BB3BF7F21B790529BDEAC9DFEC222B84E9CCF83F201D272C40
          4DE5E6AD1416A44D4D4DB1071E78E0E00D37DCE0D58AC2F72CF1786C2A8265EB
          F77A30ACE9D7BEF6B59AD9B3671706B0A69CDCD7947790D20D751D75D451B1AB
          AFBE9ADFB304356C8505E99B6FBED9F78D6F7CE3E0C30F3FECC58AE2A4E95937
          C85A80D45330056B4AC6623CC507E50166E3A2AB14015422431004D4C8428A1B
          447EF4A73FFDA97C0A0451E34CC786AA302045C0F4E4934FB65F77DD755E7B96
          1024157A382E2CF17E4E9E1EDC1D77DC51B17EFDFA099595957E69C1F1DB458A
          3D50918614411172A27C3DFD730452D5A6E343531890D2FDC57FF6B39FB57CF5
          AB5FEDF270C94C5B51D680F0B88FFDEAD5AB8B1E7CF0C18953A74E0DF243D29E
          65E266F3C992D2AFB66BEDDAB5B1152B56C04FEB933E4B2BA86140FAD65B6FF5
          A2FBD363539FEE60C94EA8B75EAF07BFFAEAAB350B162C1813E03AD8B3F420FF
          276F2045745F5B5BDB45BFE0D8A9A79E3A597F1FD314E465B3D3026A18903EFD
          F4D3EDB7DF7E7BC79FFFFC672F7E5F6958650F20FCF83DF5286DDCB8B1FA9C73
          CE191BE01A180CBD8FFF9357908E1F3FBE6BC99225B10B2EB88093F9E86A6B12
          463F8A4175DA2EDB97C280145DA0DFF9CE77BA3CF8A3D96AEA599E9BFCEF7FFF
          FBE5575D75D58400D780B5DE99B8E17C8214CDFDE4C99363D75F7F7D2DBD375E
          FF1CE98C466184528EFAF9BDC00A03D26F7EF39BCD3FF8C10F7A3C748386DDB3
          E457F811F57939F0DA6BAF2DBDEBAEBB2606BCC6FB22853EFC48422AF43CE94F
          7EF213BC079F141693FD212750A15EFD3B81600D03D2CB2FBFFCC0CF7FFE732F
          B9C86CF9A32CCF9022787AF2C927A704BCCE7BFAB5F20B527A751D7FFCF1B175
          EBD6E13D589BA9F42AD38F03A80D7259C408A8F05DF1E06B82DC54AA9062D0CB
          B265CBF66DDBB6CD8B3F9AE9D493599E83A749932661E2E0F480D741CF5362A7
          68DF858C2AA448E663D9F13BEEB88383252750F9187C8E7407962B849BE0DB87
          4A1552E476E91EEB3D5E2EDB90423D5E0FA4FB9F11F01ABBC5F03A52F90529BD
          BA6095F4269F65076A4CFA2E1E3A07030CAAE7E83F0C4B5A5858B8DBE3F5B20D
          A9AF34948274A4D234480992AE534F3D3576D14517A12F4E6E3ACDA0260DB095
          CB28869B7DCFA05A414AE5F035B07AE5CA957BB76EDDEA25B59333811305B198
          6BA62015A63CE985175E183BEEB8E300197EEDC8B7D935FD56E9A94439C508A8
          AE922185D07C63915EAC265D5656E609D4EBAFBF7E1F45C25E7CD26C43EA79B0
          C905175C50F0DBDFFE765AC0EBE427A4D4BC76CD9E3D3BB67EFD7A44F6482263
          A002461405051569AC1AE1624D654819C8EEEE6E317DFA74B168D1224FA0FEEC
          673F6BF8EA57BF8A95F05CEB5064374FEA79A0C9ADB7DE5A4CF73439E075F213
          520C7A3EE38C33B8C7A94AAF4C0CA20D0AAAD0CF335938806AB6A498957AE491
          478AF7DF7F5F8C1F3F5E1C7FFCF1AEA06EDAB4A9F99A6BAEE979E38D37BC540C
          2E94D96DFF46D4EB505706FDE10F7F28FDE8473F1A244F0AE567742FE5492BE8
          354D7F1F3E14BAD89C404D5A97C824806A9BEF33FBA4B0A2AB57AFC6C826F1CC
          33CF68BE19B9208EA0EED8B1A3F5F39FFF7CD7E38F3FEEC54A652B57EAD91F85
          5E7DF5D5CA050B168CF37ABC49F99727A5E8B89E2C58171629B8F1C61BF11E9A
          7B80E50554CB3D324DB205D529BAC74CD5E79E7BCE15D4CECECEAEAF7DED6BAD
          F7DC738F1748F1E5C09D0F29C873BF3DEAB8B5B575425555554580EBE0F9BC27
          F2B1C709901E76D86131F283F8431954BC67E5A322D97C48984683DB94CF1254
          27482180FAFCF3CF6BC1149A7EEC716A01EAC0860D1B0E5E7CF1C5BDC21B7C99
          0EA07C5951725D6214084EA26715A48CF04577F37F721E524C4FC0DCA0952B57
          36D2B95B4E3AE924CE93328800153E6581B006B554FF2C31BF9D2BC50154838F
          EA254FEA0554F2610F7DE6339FE92217C1ABB5CAA46FEAC78A8A2D5BB6942E5F
          BE7C62C041CB9831BA9FFF93F3909A96D93137DB0CA20C9655D36F59190E6594
          C1B784F4C31FFEB0A8AEAE36CCA97203957E6CDD5FFFFAD75B6EBBED36AF3064
          AAD9F71CD143D3A64D8B5300584D3FD2B101CB965FE349CD6B4151937FA0B8B8
          D80D54ABA87FE40BCEB0F2F1E562D8A72DB48AEE8F39E61841FE7102428F1635
          4E16A8E9924B2EE9F5908A62A57B329EE7A1792C6AC90AAFB8E20AF4DC057547
          1291BD56E1F906A9BEB44ED27282BA641F5506D558488B4AB1029534868E9D46
          9016CA795208D358709F3367CE349C8341E560CA0C6A7B7B7BC7BA75EB5A7FF3
          9BDFF85DB9A458846F517D030A2BFAE28B2F564C993225C8385208AD08E6380D
          DA3D0B2FCA0548F121408545F505AA53A5D894790C45E6D3366DDA548895FBF8
          185ED90FF73A6BD62CC3396450B16BB429E13FF897BFFCA5F9F4D34FF71A4025
          8A2E86410DCB47F5D5C4B3EEBDF7DE82ABAEBAAA86EE23688743D2768FF96A49
          B5AF0A6FA0A232B0635B52E0E476F3DBB76F178F3EFAA838F3CC33CBDF79E79D
          19566E024045D30F8B6A0E946450919E628B3A3030D0BE7EFDFAD69FFFFCE741
          EA18517F91086E557D2FAFC3A21FE3D04B2FBD3476C28409E3025C9FB33486B8
          222F2C292FFDB866CD9A968B2EBAA89C202DD52D2983C9A026CA2092A37EC31A
          446E15C3D77EF2C927C5C18307456565252CD85CA9A20DC7CAA09A7786969BFE
          C58B17B35F3BF4DE7BEFB59035EDDCB56B5710CBC823BB0A8537587809C84070
          F239FEF6B7BF159F7CF2C9F04553E968C0B4919497808C1AA4DA83A726B3E7E2
          8B2F6EA55F31FADB4BF49533F82EEDA27E803A5504F8F5E2FA1B376EE43214D3
          FF3548F56528C561871DA6AD368DDE279C0FA02E58B040603304B345C51AAA7F
          FFFBDF13097F5854BAA7DEC71F7FBCE5BCF3CEEB17A9F99AF8AED3FAA40C684A
          FA8FFFF80F4CDBA9A6675519E0EBFCACDAF56711B8A7497E3E812B2C5D909E72
          CA2988987BE6CD9BD74A51F578FADC2BA8689A60413A121F7884F4B1C71EE3FF
          262C299527C6DDA288FAA9F94BACD98FB29A41E5BFF5F5F51AA8147888254B96
          682D447F7F7FC73DF7DC73E8C61B6FE4F246522B57AE1CFAE31FFF58555D5D8D
          0C4A10CB9FDFABEA31A448E263D41181D1B370E1C2D6B973E78EA3634A5D4065
          A1627D3BEA6C498504292C29FAECE9C10D92552F20F862AFBFFE7A62BB1E2750
          A98917AFBDF69AC08E1E3806E7A3FB6DA568BFED97BFFCA5D9124642D4620C3E
          FBECB3156420D082A532181B2927E4AFFBFD3C033B4516525821E42809881EF2
          01DBA802AB1D40B51AF0ECAB72AC20D5CB1C9B3367CE3E2A03A64E97C34A0254
          5ECF1F653607537C3FEFBEFBAE762CB5080CEA1059E643575E796547D44005A0
          9B376F1E43F7817453AA035E38819F7F2B3D5B418A9B23BF10A0B652459A2DAA
          53D42FFC548E1DA438059563E7F9E79F3F403F9819E48F962213002BC97B4BE1
          AF398FCA7AE79D779240A5FB3E74EDB5D7B6FFE8473F62FF329B8ACF9F3F7F70
          D3A64DE5D47A85012802257457876245B50246195234B500520F60B4A69FAC9A
          D9477504350C48A9CCBB28EAEFA188BD9802A169C81BBEFDF6DB1A8008A2CCA0
          9A97A4C4B16FBCF186062AAC2EBD3F44C0B7DE7DF7DD1D5FFEF2977170B6C693
          0EFDBFFFF7FF04BDC6545454A0890F63C820EF359AB7BB8F5841AA7D9541A5C8
          BF75D6AC5913E83BC56182EA0429BD76353737F77CEA539F82552FA2724EA657
          C53FFEF18F3835E931BE07DC1B20641F55BE36835A5757A7C1ACBB05ED2FBFFC
          72DBC73EF631EC5F9F49ABAA65017EF7BBDF159E7BEEB915546EB83261FC5060
          4531E229E588DE50D81C813421807ADC71C70154ABA83F29A2F45A596E90D20B
          D986D8E1871FAE593E3A2786AE55BDF5D65B710A92626C51CDE929BE3EFECD3E
          AA0C2ACEDBD1D1810DC87A6EBDF556B6AAE982554B537DF6B39F8D7FEB5BDF2A
          A9A9A941041F648CA8DDB951FFA16F849B73904208A68E3DF6D8D6D9B3678706
          AA1748F19F73CE39478BEEF5AD7B26D17903830AABAB6B883EEB6C6A6AEAB8F7
          DE7BFB1F7CF041ACB71F93AE9FF273C6352EBBEC32E43F0BA96CE5541EE495C3
          9C11601892E7A5CE3D173E1721855C40B54C4F39559A1748F1FDB3CF3E5BBE1F
          CDA2D23F01AA9676B203D52AEA9741D58F19C0B499B6B6B6CE071E78A0EF4F7F
          FA134664C95900AF4F9DCB1EA760337ED65967899B6EBAA968D2A44958AD1996
          33EC9156189F8A663EE54D1C2C6F265721E5A89F82A9360AA6AABDE451538514
          FF81259545652820203550E1770240DCA3BE9289C147954145D0C53EAA0954FD
          9FF16E8C496D6C6CEC7EE8A18706B76CD91227FF157E790CBB9A0863AF937652
          D4595959D91072B34B972E8D53590BC9872F2D2929C1082FACA5958EB954B836
          16F3306CA4A620952A02A092C5B24AF8DB065356E7F40A29051A86FB4519A9CC
          0514F51B4095A37E0655AE7094410EA6708CCDC4BE417ABF175DABF4B78F5EFD
          F482C585D51AD2CB09EF031B2F602B1B049425F4FF127DF452BAA7A5F8320641
          94D3900A29EAB769FA87F44A941796B0AC483F909A2B0EE5ECECEC8C8D1B37AE
          96CE3B9EA27E5B509DA27E0750A326AE5F5E3DC62005A9C56919D4E38F3FBE95
          4030A7A7D0978F2EBA6EE100AA5F48E5CAC35F34C1F42341F96BE83E6A389892
          D353F051D1DD6B061550BFF9E69BE6A83FAAE27A352FC19954A7A15D300F204D
          08A02E5EBC18A0B2454D7C245C404D0552FE379F4B02550BA6DC40C5BFD947C5
          4214471F7DB4611C4004655E7A33A15103E9C9279F2CA64E9DEA1B5208A02E59
          B2A49D20AFF6026A2A909A2B50868AFE8D11ED1AA81C4C71D36F052A3EC3710C
          2AEA35A2CA28A07A5D06FE6EDA4741F5F6F606BA718A6607C8A2764F983061AC
          C91AD9821A145273259A40AD428A8A9AF302F23DE3C5C5C5312B50250B1C4550
          E5401403475AAC0E4AA7C58F24A4184F0A4B1A14529C0F4B35522012AFAAAA8A
          7901D56A3C29DFA77081D4AA3279D43EBD5741D79E489096A01BD50954737A2A
          42A0220F8AFEF8A4E58B32E18E440A527C0630AFB8E20AED3D8C86C77B418411
          F5986A6CB31C8E0CAAA6C71F7F9CCB111852BB0A1D1C1C84DB3181FCD32A804A
          F79404AAF9BB88FA114C31A859F04FD98262622302A4A4154F32559EC8418AF7
          AEBFFE7A6D9EFB962D5BB411F17EF7B4641F0F738C30CDB8B6B6D672291C2159
          D4AD5BB7C6DBDAB4DED49420B5A8D4C42AD454A66AF2516B76ECD85128D7875B
          D49F2550918785F56C15C626DF50C64C289290F26C5140F3C20B2F24F6B5F753
          58405A5E5EAE595287559A012AFA9BBB5A5B5B634F3FFD749CAE9332A45615FB
          D7BFFE552C5FBE1CEF173FF7DC73939B9B9BCB710CCA89E9D30B172ED4321A6E
          A0664868D601A8E57A5199CE38441A52BC0F40B14A885F50F1F0C78C19A3415A
          5353E3648590F007A81D185BB962C58A62FA6ECA90CA958B600893F91A1A1AC4
          CB2FBF2CF439FD93FBFBFBB51DFDE09A54545468561F6BA09AD353DCF4CF9F3F
          5FAB973441828B62A81DE0B4DDFE3C1B29B148438AFE6F80D9D1D1A14D6CC35F
          AFA0FA8094CB7660DBB66DAD2D2D2D89D9A27C9F2220A47CCF283720C4F5012C
          A0832B42906251DAF17AF7AEA0204F03157FF5F2B29B9018E17FE289271A16A8
          F0FBBCA57B620DEAF78666BDC3E9CBD9CAD9460E52E44631B878D9B26509B0F0
          42D3FFE28B2F7A06D52FA4BA0E3CF4D0439D04D46122244859043F564B169FFE
          F4A7C5860D1B34D0605911F90B1D544C97C1C26854E641FA5B80F9555299E3AF
          BCF28A764FE89912CE23A2CC95633E16AD07AC26FCF10EE1B24D4EB63B142205
          29A7A0962E5D2A56AD5A25E6CC9963E87921BF51FB9E175003428AC5623BC837
          1D8B72C6872F100AA42C291F2B8B41D516C7A0720F2E5AB4A86BE2C489284219
          068D88E1B9561AC8B82F9FE0E03E30E7A84FBF8F5EFD2F0FAD0B3CED26138A24
          A4E871C27235801401037FD76C519DA2FEA090767575C5A405CB428714B20015
          D7D0F65005A854F618D54DF7D8B1631BD6AC598301D118FFA92DB9A303CB4BEF
          14E9EFCBE31406C50894BCBB082F56D62F8C30461A4E566421E5643E2045F3A6
          1F3384B12488C409D462A4A7EC2A3520A44879C59F7CF2C9981EDC640A5256C2
          A2A29DA77BE8A31FE35E0CD1831B007F945A90185C01FD5ECC534D78E81E6418
          802C3D23C31854F998A82A92909ABB45A9D9EBA407D4400F0C0F2F4E3E63FCA9
          A79E02A4D8F0C172BC640A900AB325A572EDC24C00FCF7BCF3CE0BE581BA812A
          467662E92730F7363737F7CE9C3933B662C50AADB22EBDF452F1EB5FFFDACB43
          B58452886883E9703FBE949179F710DE23489A8E39E69883F04BB15D0DA26531
          3C0D02DD3549A032A48896FDEC66670529BD76919BD183F4D099679E397CF319
          04550C37D398CBDE4BF71D237F35CE6BF8FB7A603902A5599186D43C0A8AFEDD
          4C116E3322FFEEEE6E8C21C51731FA3CC9A2E29CD464C709D241B2C445412145
          844DFEF19E6DDBB675625F29723D42994BCE72001523FD4122838AA0073D64BC
          D669A2D2C37041A2AC9C8254172F3EA095418C6CE8C0A0723309EBDB3F69D2A4
          A6A54B9796D135C6C53C90655E8E1C2EC7AA55AB06C88AC292F548D7CC04A858
          2570AC18011580EE17A64D6B15A4F6CAE6A0672B50B187131E6A02547A0D923F
          B78F9AFDAEE5CB9757E913E61C0702386CECD04FD0EFA373A40554C802D602FD
          9E2AC4280635572185DC2C2A344050EDA76B75A1CB53481B38D89DD4658B9C7E
          7A0F80384E45494536A06225EB4A61DDF41B948FB0E632A4901BA8DA4827F25D
          BB172E5C189B3B772E3E2FD73FB7B4A81EF6714210C3A01A2B247DC1147E5400
          55B6A8A306D45C87144A5A204B0C83CA7BB3C397EC863F7AF6D967F3E7B6A0BA
          40CAFD94001580F48834585405AA51F9002964052A7C54F8A098F2D085374C0B
          3B600452D2D6D85E76C4D3950D50AD7C5480BA57FF9B97517FBE400A19765ED3
          C5DD875AC2D50429DEE76DCA132B9FF880540823A823274E6FD4EF164CE51DA8
          F9042964056AD2AA23929272AC3E2185A208AAE1DE735DF9062964092A648295
          2D4E8DFED2E401D2B8FE3DD99F05A858B0CBB0E39C4A4F85A37C84144A5AFED1
          61BE3CAC28ACA9B6EB9B0748791B6EDE55599EB086EB1A769E53A0A6AE7C8554
          5E032A218B759CD89AC237D5A672786CEE318ABD478C045E8EA06A17CA7CD4CF
          C19441B9086BBE420A19407559D4010F1816A9C0630A0AD9026C0F894120B57C
          3A915D5051FE729187A0E633A45062F410FE63B78E93AE39F42AF16849E56009
          3B7644015434FD705BEC40CDD9A83FDF2105248009962F460F26A9A0308EC37F
          E2D855A4D223A48919A6FA693C839A81A8DF0C6AAF5E07390B6ABE436A58A9C4
          65B1B10974AD5A1F29280ECEF8C1E70AA806E502A8A31A52B902E86F255D6BAA
          3CC7C92105854225EDFA26B2002AE423EA4F0255416A71B1A842AA6F5B3E9320
          2DF008A955572C147550F708533E37EAA02A4883436A6549E5A6BF46FA7F94D2
          53F0CF114C256D391E555815A4E15BD2A4DCABC83EA8E6F454A75E2F3901AA82
          740452ECD8312B8825C57B3675C0D33FB44B09056A20294847202DA3EBCF0862
          49F5F744AAA06621EACF09504735A4A6145435960EF711DD6361592CCD9D80D4
          A142AD40458E153D620A5417294847FEAD6DC4E0314F8A2FF266AF9A0F2A97D3
          A23EF021021879E6271415503BF4FB3180AA208D0EA41CE8CCA4D798003D4E96
          33472DEA44DB30578C0CB2E66B67233D65E7A3A265C0407174F7F62948B30CA9
          A9CC783080B4D8478F1382A626CB8A31AEBD244B06552B86C840300579045516
          5A89FD565DC999D6A884D462A81E52458027E67364BE3C5B75A46246B6C8B1AC
          3731D2F40B91FDA81F4DFF189BAFB5509D358A2C4B413A0C09D693D216970A30
          7D245741E57BE775A7ECF41ED5DB90C8A2461DA41680024E00A32D1811005228
          08A85014D2536E90EEA47AEB1559D4A882549E2DAAAFD487F24CA66BA0B9D720
          0908296439B72A20A8998CFAE5B10656CA7D4B8ACD5AFD5C2C0A90620CA93ECA
          1E239FA671D9702D8F13F1EC0A15045473D3CFCA14A86841668BE1E0D1ACDCF7
          49EFBCF3CE3ADECAC6EBC5A200A9AEA2C6C6C669030303655855DA07A48EB728
          8621B56DFA6D2A1D513FFAFA398FAA7D45A419544887555EEC8D951FD1FD0D37
          DC5087A5C3B1582DB67871ABBCA840FAFEFBEFC70E3FFCF0290D0D0D63A91CF1
          638E39263663C6F0AA3C2E90F6D17B184524AF1B6A254B1F55AB34E7F414832A
          844BD3CFE70A433AA8B83E60CDAF3CE9BA75EBEA264E9CA8ADE58E35E60198DB
          C5B2052956485EB56AD5F0C2FB4343B574AD094D4D4DDAFE50B8FEB1C71EAB2D
          81EEB0F423BED740DFC356DAE675430DB7298C03508C95E6DCF4670DD4282B25
          48AFBCF2CA3A9CC02BA8D982143B7950931E3BE5945370A15A7DAA88A0E65E2B
          07AE832D77B07439607CE28927AC201D20CBBB7DD2A4490C8E553767E2564570
          50EDD253A316D49420BDEAAAABEAD0CC032C195444CD5615970D48E99CFB3B3A
          3ABAB0FEFEA5975E8A287602FB968014DBEDA0BCFAF2E5DAF68AD8CF13D0E298
          EEEE6E71FAE9A703525864791EBF5DC063569851BFE6278A1CDA39240CA504E9
          1D77DC5107D076EFDEADBDE1066A3620A573ECBBE0820BFAE81A53E95CE55C0E
          33A4BCB3333EE3FDA1F057F749B191C24E913CE3321BA05A76C7E633A829438A
          4D595F7AE925515F5FAFBD893DE64F38E104ADB934839A0D48A97C6D142455D2
          354A6428CC905A8921D59BFB5EB2C67BE9078839F79902D5EEDCA30AD45092F9
          00CB0BA8998414E7292B2B839F19AFA9A989C9E923BF90620B497DF7E41E7D39
          72278B6A17F5E37D44FCB6A0DA3C10737A8A0F1E35A0A69C278525D577FAD0B6
          C996415DB264892198CA34A4769B8DF985D49427457A864135D4870801540F51
          FFA8033525486FB9E5963A40802003720335D720E52DBE8F38E208DE679E01B1
          03D50EA6447D8BF0D2532CC72183F9A094F3A4E816C5DE9F80C2C9A2024E1C93
          4B90CA95447EAD06AA18010DA022E2EF371D9E4E50F12182A94AD3B9F21AD450
          F2A4F04BE7CD9B9700157F01E19E3D7BB403274F9E2C4E39E5146D1B4658D55C
          8394CF879DA3914BA5968317D8C3E820CC6137839AEE60CA33A8A31ED2F5EBD7
          D7B1BF79CC31C768CDA2EC7F02C4BD7BF78AD2D25271F6D9676B90E6A22565E1
          38F4F3E39CB80FC947B5B2A8E94E4F6160CCA8003525486FBEF9E63A74236253
          5A54049A7EB6A82C743B3637376B6339731D5208C7A26CE846D5B71B37839AC9
          F4145BD4BC0EA65282F49E7BEEA983CF8907DDD1D1A1055088F665501178BCFB
          EEBB9A4BA08FDF8C0AA4F1A6A6A618CA8E327ABE693D980A086A3AD253E6999F
          42E419A82941FA9DEF7CA76ED1A2450203359C4065F8BC46F71859050878BFFB
          2072815473281B1A1A869E7FFE795CB7C04F45B8809AB63CAA4D1931BC0E16B5
          4CE429A8A1F4382169CF8335002A604324CCA032205E2145D72A86CEF17EF741
          E4C1921E7AE59557FA77EFDE5DE31752EDE67550251F359BE9295FA0CAE7CB05
          A56C49113001085813585406159580261EC1142EC22F2748618501E6273EF109
          ED7DF8BA9C83F52B0748BB08AE83AB57AFEEBAFEFAEBCBE93D4CC20BF4C438E5
          86915348B3D1F5B2999E927751C92B505382F4F39FFF7CDDD2A54BB55C28FC47
          44F11C8C7476761A40F5D2DCE333BC77C30D3768E99EAD5BB71A067CF811438A
          94D1840918F814C7FEA27860DD1B366C88E35A54DE0A3A0E0F36B501026451D1
          23851600A0EADE0440457ACAECF0CABB2E3B8997F13156BA33A818B08C1F5D29
          3F5F910779D49493F90013A0D6D6D65A820A717ACA2D706248AFBBEE3ACD5D40
          FAEAB5D75ED3ACABDFCA644831C0845C8726FAFE005FE799679E893537370354
          CC144D19526EFAD9A2969797CB3EAA15A8E65CA79DD20E6ADE43CAC97C275091
          A2F291278DD3C38E5D74D14587D6AC5983F74B77EEDC59F4C61B6F140729207D
          7F80AEB90F5614D739FFFCF3B5F71F7FFC715EAB311448B5CAD0418545C5E01A
          13A87679D44C802A37FD8E53AFA3AA9420FDF297BF5C8741C188C231E2085604
          4D3FE0C3FF012AF2A4B0A05EF2A45285D6632E117AAAAEBDF6DAA2175E78010B
          895507A84C6DD0335DA70B3E33CFD979ECB1C7E439F7A140AA5508950FF78811
          530EA09AA37EAB5CA7E11989610BD862FA6E501F35E7404D09D2BBEEBAAB0E30
          A249E6A171665001E4DB6FBF2D962D5BA6591AA76E51AECC9292923D148475FE
          DBBFFD9B66F1E838D42096F79EE0B38C962B986CDCB8312D9042B81FB426E407
          6BE9A9AAAAAAB0F2A80CAAF121048BFA730AD494C7932E58B0407CF0C107E2D5
          575FD54E063F105604A0C2C2024A44FBB02A6E034CA48AC4E8942E3CE8CB2EBB
          2C86E3DBDBDB712CA67F8CF751C68C430AE19E60512B2A2A04F2C835353561A4
          A7203FA0F23DE67CD41FCAE210481301D4575E7945FB00A0C2A2C247C5C3C2E7
          5EA27B6182149F4973E5BDAE5D242B2B906A85D57D54CE309840B54B4F71D4EF
          949E0AE2A3FA6AFAE5F34541A1AD6002A0B66FDF9EB0A868EA91926150BD24F3
          850952BC71DE79E7595DDB2BA8598354AB200B507DA4A79CE6F5070515C15489
          A9AE230F6AA86B41C162BEFFFEFBE2F5D75F4FF8A80C2A1E561048EFBFFF7EBB
          650BBD809A5548B54A4A0635DBE929AC82E109D4BC8414B20315FEA55B9E54D8
          400A050435EB906A15152D50732EEA0F1D52B69632A863C78E15AB57AFD61E54
          5048210B50712C075356CD632420D50AAA838A0012C126024B1D00959E72515A
          967E9441858F0A0B72D65967F9CA930A0B48211750CD8A0CA45A41F5BE7EB436
          082CB14E812E940F517FAAA0265D4F7E2626B9816A097D3694B6F54919548C25
          7DEFBDF7344853B5A42C1FA0460A52ADA0FAF41A7683AAAAAAF89E6550657909
          A6FCE651DDD25389ED7F4404564B49FB22BAB8A9868606AD79F39B27C51B5690
          421E97D68E1CA45C2768551050628037E64C89D4400D929E9241E5A83F2EBD6F
          D802C8EA7C995246567AF63AE859F88014F2104C451252ADF2F4A61F836FE6CE
          9D2BDF7BB6D35391033552CB910B9F90422EA0461652083F5CF44A618514D370
          442750797B7027A50354CB736542390F2964032AB6BC4137E33EFD5CB173CE39
          27AE1F1F232B162F2E2EAEA06B670D521E2B8B3A9C3D7BB6792569A7F414CAEC
          066A03BD0E99DFCC4550F30252C80254581D6CD8002BDA031F501FAA17DBB367
          0FF60F1DA2E83AA591F961084D3EA27CCCEBB258EE1C65C78F6C4064373D9555
          50F30652C80CAADE151B3B74E850FCE31FFF784C0F50C4830F3EA85D73C68C19
          955486A922CB90228F0C4811F15BC82E3D154AD4CFCFC5243750339A9ECA2B48
          21069587CCAD5DBB36B1728A18DE69A342DF36BC70DFBE7D252FBFFC72A9DB32
          EAE994B4FA5FD284414969494F41166BF8338068F2F103CE3AA8790729CE75CF
          3DF7889933678A952B576AFFC7E06931BC19035EC5FA200F6DE2E00B2FBCE06B
          718874E9E8A38F8E53941FB380D44B7A8A8329A7F4941F1F5506759A30FAA8F8
          456359F48C45FD7907A9C58DC17A7210C59FC5F5154C627E5730095B7ACE7488
          02A7BE458B161593652DB498782883CA3EAA2C375059610553190535AF20B559
          E123A9394C65999D740865E9EDED6DBCE0820BFA317BD56576AC17509D140454
          34F9183D5528B2104CE515A4163754A3BF0CD6256A9042540F4DE4A21C9C3F7F
          FE38AAA389C23998CB06A8F21EAC190535AF20359503CDD36C61F1B019525E1E
          C8CF5A5069120A7E60E7CE9D6D9FFBDCE7F0FFC4D6E60EDF4905545C0F09FF43
          C25F7A2A2BA0E633A4DA763876C7F19802044EA954424802687B31BEF4A8A38E
          8A5100850201D4C92EDFC3C2067B2CDEF7E2A3BA826A51A742B8831A7AD49FAF
          90E21CB0A2254EC723358555A9F7EDDB97586F344BC2C4BC1DA80B4C11BFF0C2
          0BF97D375011C0C09A765A7CE61754833C585494AB486400D47C85140FE808B7
          635179C8A562E7149429E8BA5321A84D0C3FE01896E9C1963C92DC40E5599F49
          51B618B676B07A61822A8F7B305BD4B444FDA316523E9E87CDA13C59021585DE
          C3F76BDA499A65072AA000DC1D0EE7F7022A14248F9A11504735A4FC1D9EDA01
          FF147E6A8641C540925DF21B2650F9415B055300615FE240E71DA0D319F54FD5
          AF21836AF9E351900680545616404581B1E725404D0C2574A8CF31F4AAD2EF0F
          7EEC41FD1C6EC10ED7492641C55FFC805206355F21C539668AE1E5657C09A0A2
          6CC8A1A6517C9F49AB887800D55621811A767A2A6550F3155208839E270A673F
          CC5248EEBFF5D65BDA621741D646752BA65E1E3CB87D4282800175B8275BD93D
          749B5EB894A37E9B73A7253D95CF90A2CF79965E61BECEC193E5DE78E38D2102
          3546658E85949E72EC83B78234948B8604AAD5AEDB160A1DD4BC82D4E286382A
          F6654DF573C4FBFAFA1A366EDC583866CC98DA1073A84837C1EF4B1A1F982E48
          2DEA05728BFAF93D641E1279581750D312F5E715A436E540443C4EF8031503A5
          B03A74CBEBAFBF1EDBB56B17D6189F44AF44E7408028150304E07FB689E47C66
          5A0175A81B40048B6ADE624748FF47790F7099ADEEDB27A81CF57BB6A87905A9
          C30DF140134FA7A05723F9A587A89CB11D3B76C4F5355663C71F7FFC04AACCF1
          64610BE4CD2AB882F1D7A2B201E721FD65399225DD80BAD48D0CAAB91E7033B0
          A2704D86F81E7D9CDB2D3DE509D4D1022984E166E8CF2FD32BCD6C3586F46B22
          E2EEE573491587E17EB0A64588FCF16A6969D1EE81AF49600FF5F7F70FEA7B8F
          22ADD4A93F0CDB42650A5097FA91372D93EB24692E7F008BE7393D356A20F570
          538015A0CAFDFA8012C18CDDC651701726597D80008B41A57FF77477771F2058
          7BB1B7D5B66DDB6C0B9169383DD40F8FBD05544C0B2082FFAC057829043976A0
          728E3861513DB813BE145948BDDE9C87BD3BF10146F44FD62B38E9DC168144C7
          DEBD7BF7C1D2620332ECC0822181AC6CC2E9B16ED05980812300132D81C14549
          01D44ABD1E651F151D12B0A8BDC201D4BC86D4E546CDCDBD950026A64E8C11FE
          022FF85C083830972AEBE3007DD48BD52095910F534FC0070235AF20755B93CA
          C779B8B250A96802BD66F4B9FCAD623822F67DED6CC80254F97E02DF83CD0FC0
          0E54FCB07BCCE770188FE0499183D4A262926ED8E339B8423168BA56F8B3A290
          615DFCA8439A4EF904952D6A688A1CA4A672C0FA2525CC3DFA545C993CBADF2F
          A4A8682C9133EA21851CF2A8E660CAB2E94F45518694B79C6916A6ED687C42AA
          2C694872F051D99D4A0BA8518694A78F70B79E066A80E67EAC5E899E7BAAC448
          2FCDFE446114A49AB2016AD421E5A17ABDFA0D7B06D5B4B0C47491BCA39C9B10
          34B58A1C88EE33AD80517F60451D528C802A11C65E134F031BF4F3F0B148E4BB
          CD8397CB8E72C31F1D72BAC668960F5039478BF790B7C5E014B8709E17EFCA05
          48793B6D5B48B583DD93C7B6D3A34DE5C6AF7FAF48DE96D15B858E22986D8229
          2FEB0DC0CF471D7BB2B0B90829FAA60150D26A101E92C76E16B553BF8E23A04E
          79BFD104296403AA97C140007587F0E0ABE622A418AD8F5FEB1EE112793B2CDE
          856609B073B3845F34FAB811D13B354331FDFB85FA717DC28355CF7759D43382
          D5A91EBE0A7FB5DDEDA05C8494078A009004A8DA17FC0F6CE02F78B9F931FA75
          E5B53EE16F21B86A161EFCE47C96A99EE197567BF81A863E36B81D94AB907293
          8D514FBB135FF0394CCC47779DDBE61149739D461BA490549748475579F88A21
          CD67A75C87B457BFCEA07089FA53E83BC66822E46BDDE659195621198D90427A
          3D73078A9B505F07DD0E4A1BA474CC9EFEFEFE4E3C2C6C25EE75789BC3946637
          48AD6F30F8B2307E820008EEC74EE130A67234487F7EF861CF15CE113E0EDC2E
          2C0260B36277DC7187B6DF7DBA2C298EC5768F9017502D7A9C8A85314F6A0729
          9A97A441CF21408A8E00B7C518845E06DECA67B4430AD90E32D765B980859562
          5FFFFAD7672E5DBA146BD017792D8413A4E89D191A1A8A2D58B0A075DEBC790D
          13264C88633511961BA8A61F8BDC6CD8418AE009BF46C08426193E6ACAD64C82
          14D67C8C87AF18E6FD8CD65E2AD3F39357EE63E159A137AFD3EB3963EBD6ADAB
          5DBB766D2F9DDC53FFB61BA4BCBD23B68B993D7B76637979798B7925119B05BD
          EC46D933A86E9022B0416AC910C4846049BD46AAB0E0F562940F48B1699179AA
          0F5CA21E5F2724C5AEBCF2CA89AB56AD6AACAAAA1AEB05543F904E9D3A15EBC8
          1FA0F75A0D17A50778F6D9675B17C81E54582A340F6E900AE190DA08B0E2863C
          1CCD49F871EC152A700AFD9C1AA474E2C633CE3843949696561150B01C318066
          9777F40229B91083D3A74F2FC4DAA1741E1EAC91105D4BAC5EBD3A4899E56E37
          3B480D2BD525DDB47F50656B2A3F053E51BF0830526B3429A591F98094C06AC4
          8E6ED86D98FE56118453B0221DD6533205459E7D52B2A20756AC5851D9DDDD5D
          A1FB67B06CDAA8222C324B9F61F3305827582AD75E07495E2C29436A9BAC7703
          C9A252012A7A52CC16D572DA8402D5A850209D32658AD8BF7F3FAC60F19C3973
          667CE8431F22868AE30303033173BED14B744FFFAFBFE28A2B7AE89C33E8FBF0
          49D05CC3AF6C2D2B2B8B9D7EFAE9380E81CE61C2C31A43A6E69713EB6E909688
          911F81635FBFC78AC5B9CA85D182269D5B019AAC942115C3F0682A21911F3993
          54B870E1426DAB44794B44AF909225AE2718BB962D5B564C4D3B7C5D44C81AA8
          4D4D4DAD9FFEF4A761A90BE8B82384C31A43163E2ADE808F8ADCA5174811F5F3
          B846C7153CBC56AC1A60E25FA140CACB23D2DF128267068159545757D7432E40
          517F7F7F910C8BD73C297DA76BCD9A35001DB94E03A81458B58E1F3FBE908E39
          5CFF9E0C6A724193C140B90125524E4E90E2BAB0E4086CF60B1F63445DA650CB
          F76B28A752B242B5A4A412AA68EC9C5644A01E3CFFFCF37BE96F22EAF79BCC9F
          3F7F7E6CDEBC79784F06156EC481B56BD7021C793567CBA55B6CC4FE2C7C4134
          BB7690F206B0906175B9442528B0D2AED021A517FC4824605BC87744AEB34A4F
          4F798694544FEF197A9CC430A880A68CC01FA220AD79D5AA5513CDF723BC83AA
          DD83FE1D9C97F71EB58374AFDD7915A8E9555A20A5179AF816045504AA969EA2
          F72623C9ED1552E2B08BFBEE2569A0D2F1D80A5CC0EF9D316386796131C81628
          F33DE8D7F46249F99C3131B23ADCC88914A86953DA20A5570B053F8DD5D5D5DA
          E659F5F5F5B0A893B16AB297E61E9674D2A449B1934E3AC95CC204A8484F1D7B
          ECB1310B50BD5A548694D73085DC20E5CD150E08878C8252780A1B52003443FF
          7B109BBA126862D6AC59DA9EF31454559594944C22480BB0A7676F6FAF394FAA
          650308BC767AED474E14BBD559A8988E9D4AC7C2A2C6C9A25A81EABA0EA66956
          287299B0A65E20459F3C062B5BEEFEA114AED26149F100F1D05BE8C135A27768
          EEDCB9E288238ED0BA3A5B5A5AAAC8AA4E7AE9A5970AB045A15DB72841D7FEEE
          BBEFEE9F3973665209F5E38BE9783750E5D1456EA0F23AF2D01EE10E29BE7850
          2850D3AEB021059CD5FA5F80A145C3959595E2B4D34EC33E9E68EAE373E6CCA9
          D9B56B578D1DA4D4C48B69D3A6614BC50E7AF08651EBA682171716164E210B3D
          46F6514D42F48E7378199C807203CE6EE10D52FC08760B8B754D15B0E1295448
          ED46D16FDCB851FBFBD7BFFE3576F0E0C13881554E30C2AF348C58B780140F3B
          697A855C787A01D4248B6A92AF69B0BABC428A7499E50C51056A38CA08A41040
          7DF4D147F9BFE81E04005E20C54776A0A20B55CBA372D32F07532621698F66DC
          0D54760BFC5A52DC5357D2C914A8292BECE6DE560078FDFAF5FCDF72BAB05748
          39E2474083883A69DAB0D947C577162D5A149B3E7DBAD947F50AAA561C313230
          0472831473AA0069625967056838CA982585E878FEA75F4BEA0AAA2E398F6A17
          4CD982EA12F57B81145DA8CDFACB704EA5E0CA1548B5B28A1150F70BFBF9EE5E
          D253B28FEAB66A1B47FD6DFAB5ED2095A78AA805CB42542E41AA9557B880EA23
          3D2547FD6EA0F23C1B5861374B0AB135F5B5F39B92B532EA938600A92C575011
          F50F0E0E6A5DA8144C09F8A87C881806C88F4565A504A956710A545F8A9425E5
          1E27B27C6D757575E5BDBDBD452E0FD41154A4A78A8A8AFC80EA78BFFA77FC40
          0A1F1956B83BE9640A54CF0ADB92C27F43340CF8BA85F470BC5852313C090D69
          A5DD9FFAD4A70A0F1E3C38CDC3C3B40395D3532504E834821F7FB5F494042ACB
          30CFC87092E4600AE0E1044851A1F97782B4543FB6512FA7823380D23AC04498
          ACAC1748853EC064DCB87118995FAD4FEEB32DBF70F651139B08101C5308D442
          D9A25AF8A8B6A09A2A8A47EDA3FC3B8533A433F5721806BC2858BD2B929062A8
          1E46E66370CA92254BDC1656754B4FC9BB5D68A062A2A003A8964DBF85450590
          3562644D523B48678891958A1D535F4AD68A24A4421FAA575D5D1D3BF5D453BD
          AC00EC353D65B0A88B162DD202B414D25368FAE197E28721A7A0AC201DD4CBD6
          2954D4EF4B91851496B4AAAA2AB672E54A2E2140C5F5EC165A9077FE48ECCF6E
          210D540AA60A317D8A2CB5A8A9A9490554961F48AD2B54816AA9C8424AAF2E14
          EEA31FFDA810C635D5BD80EA164C5560F4D4C0C040617979B958BC78B1201F98
          410D9A9E9217277383B4523FBFA1E957905A2BD290E2A1498B94F959FC1F7205
          959AFC04A8B0A89845602A879F600A404ED1FFDA410A0B8FE0A946BF0FC3E25B
          0A526B451A52BC619AE3C4C203768AFA599EA27E34FD656565E2C4134F944165
          F98DFA1140613D290C34B183146BF7A3EEE0CB22EAEFE4F329252B5548B1625D
          93F45EE890E27B3C1ED52437507DA5A782826A753EFDBEDA8471A68215A410A2
          FE0F2C4FA8A0D514794BCABD58E90655E8E9291954AF795407A504A95640056A
          CA9062D6649BF45EDA20851C40F5929E728BFA2B0988C9B0A863C68C11279C70
          821C4CF1317E83293F90065E202DDF9512A4FC0F09BEB4420A6512540EA6BC82
          6A331E75B65E1F7690E2FDF7C570C602F7815159DD76E71E8D4AD5929AAD49DA
          21854CA0FA4D4FD981AA45FD048316F5F7F7F71BA27E537ACA7617618B608A37
          CF9283242B48857E1C72AD86C97DA3195028F296549643D3EF373D65B7079021
          8FCAA0C247ADAA4A6C2D24836AB98FA80DA8289793258DE9C7E01E7AF5F2F5CA
          E71CADCA2948CD4A313D656B5187EB25AE59546EFA4DA0B2FC6C783B46BF169A
          733B48516EBE88A1FE0C051C65C0461552CB15ECAC84E5214B4A4ACC6F7B8DFA
          1D4115527ACA01543F513F9FD70BA48EDB128E2650A306290BCD1C2FCBD8AFFF
          9B07199BD79D8F63B0C8BA75EBC49E3D7BE4738405AA219862504DC194EBC665
          A673CADBF7B8416AB9409A76B251026AD8901AD6821252A2DF27A45682A5EAD4
          5F0C6FA22C086A2A2A2AC4F2E5CBC5F0BABB9ADCB6FFF615F59BBB504DA0A25C
          F0239D4035E465C5C8103E4E4159418A1FFE78BD2E0DE75690BACBCE9226D682
          12C12DA9A18C221932008B043DFC56C3D40C808A257DA407183AA8B806F2A82E
          A026A27E9BF5FB39EA77B3A4BC3F296714126BEC2B48DD650529A0031430651D
          421A891E8225D5CA6BBAF6A07E0D00A6C18A078715FC4E39E51441D1397FCF0F
          A8963BFFEA305662A600A27E800A8B6AD1F40354C09EB461834565034834FB4E
          961490CED4EB146E0502B551B52959D890224789D1E9800F159A08264282D450
          76910C2B5C8C7EF8A8FAA87E2E278E750395E5969EAA2C2C2C4C02D554262F4D
          BF5C179CC990B7D196219DA5D7959CF9183503A7D3E193F224B5B07D522F82F5
          C210B956DC180633A359467FBC7EA329A7A718545854F651972E5D8A3DAC1275
          2AFC83CAF203A9F543C94350A31ADDA72A40D640373704AB7ADC71C789C30F3F
          5C5BB497DE73DB01583E876BD46F032A0BA026B6D7F1203F9022EFDA2B4641D4
          9FAF9042788000A40F37595757A735CBFAE43B3750FDA4A73070BA40EE99B2F0
          51BD822AE74FDD20C57118AFBA57F8DC632AD7940B905A45F75E6598FD79E491
          478A9933670A00A5831A7AD4EF104C2581EAB2B3B41BA4B5FAB106B7221F418D
          2AA403FAF9ED7AA4FC2831FA08378BA67FF6ECD9BC539F5750B1F85883481D54
          AF3E6AAD7EDD46E10EA9D0CB7720F160F20CD4A841CA50A0C2911928D5CF59AE
          FF958FF1747FFAB1801E16B507378C3E7F1F79549601040B8DC56A7E04AAB6FC
          3A02B61441E53DDE118C72EED90ED24EFDFEF87EF36A885F54213547B0382F80
          45645221FC595379D412FA4DB514D539E79CC3F710467A0A1B5688F1E3C74FA0
          73D7223F0B8B0A1FD522EA47AA0CB07B8DFABD406ABB64BB7693390E6AD42135
          E702918705AC35FA39FC0AE7DC8BA81F3BA10022A902520615DBA71716164E20
          286A61511D40F5D3850A4867E9F7EEC59222CD86DEB8BCD90C2DD72095AF8DB9
          EB9384FF0C8196BFC5C829A48DD0B5696AFA53494F71F3EE1554BFC19410F690
          F2B9E6EA9F1F90CF97CB8A3AA4F2B5AC4A6AD81857787303701C9AFD2E34FB0B
          162CD0227E1FA0BA055389914E0C2A7CD4152B5668035F4288FADD209DA33F07
          43FDE732AC518514D60ED60A953E209C857300AAB1C2BB9092DA2586979AD436
          9CA8AFAF973F6750EDC0F70C2ABD6A9149A8ADADD5564A81054F218F8A32C1FF
          F40229D4A4D7654E07535183D42CC0C4C3F3B877C5CAAAE23DF893E384772556
          634657277C54BDAF9F15567A4A0315FE2AC6132005865D024DA0FA0DA6A01AFD
          25843DA4DC359DD3FDFC5185D46CC150F95DFA39BB6DBE13D3CF5929BC2911ED
          E33F365351D003C4394B27D9A6A7F4D14F89A61FA062353F693C014B03958EF3
          0AAA174B6A0B29972D171455480D6594AE87A61F6E002ADFAA79C4F9668A9187
          E474CE985446ED219A4095A77AA404EA134F3C81692E0650D9A29ACAD341AEC1
          017A0D620D551788E42E543748CBF417BB5023379903A0E602A489B24AD784D5
          410AC70AD432BD0C051ECE99E8DFE732DACCEB4F29E10F10B00EEA9E3D7B12A0
          4E9C3851732FBABABA445B5B1B82ABF8B871E33450E9A12459548BF1A8857A99
          AA4CF531472443CAF58DD454837CCE5C502E416A160043736D1558C9FE9AEDBD
          EBF78087867EF2189551AB0D0750BDA4A76C2DAABEBB8A062A7C5444FD0016FF
          46703565CA94F882050B62C5C5C51D04EFFEF2F2F224AB677A6028FF34313279
          111FCE11C9908ED1EB3BE9B9E402A8518354060796709C18D943C94AF053F9E1
          98CB365B3837FBB68975078B2A37B14EE7B48DFA87F7AD886B3F227DFC80060A
          5ED81268DEBC79E2431FFA90B6F12FFD7F5F494989DB132AD2EBB353BF8739C2
          DA924ED18FC5F990D9C89965D1A30AA99CCC07180810EC9A6FB65CE6E00001D4
          340FF731A45FAF87CBC9720135507A0A6016C0A40EFBCE09A794B7074240857D
          AC6065E9E1602B753BB7C6EA79E05AB3A5F3DA41BA5BD86CAD1E4550730152BC
          272F502B2CBE0348DB8411D442BD2C56DF315F6FBF90165EF308AA5330E56651
          8BF4B225597AEE099306A738F9DFE6E761D7DCDB416AB9485AD440CD0548F97D
          F3D6DEF2F138160190397D13C8EA795C242DD5A89F772BE11D57E09FC6C78E1D
          1B03A4FA9857792BF5A43CAA69162A433A438C8C6B708374ACF4AC84DDB9B3AD
          A8432A5F8B2D2A9AF0628BEF24369D1523968177AF73535210E6026A2AE929DB
          75AB00C6D1471F2DE6CC996355278EA04A0FB2442F13DC1D37483918E41DA80D
          E78C8A720552BE1E3E47CA65B2305A59BB914585FA75CA85BD3565ED10522ACA
          4A69B0A800691C415142117EDFC48913BB972C5932B6B0B0D0EC0670D90FE975
          9AD43C9B1E247CDE296264C0B71DA43C3171503F6F9BE9BA9100369720E56BE2
          185853AB9E2554BE796D4FEE99716BF2F9BB89F25A2960D4CFB2021540155454
          54C457AD5A3548C15339164A13C9590D2E2777E7BAA9507F1EB8273905656549
          F11E2F1514B9897DB906290B039F393F287FAF518CF85772B33A59B843CAEE42
          A2BC764A537A8A07624363F4FBB3CB237B05553E9F1BA4E81E466ACA3240CB26
          A8B90A29847193C5A6EFC95B37CAEB2EC94027D5814806DC75C7E914D3538666
          1B0060BA35FAF4E7CE9DEB56472C1EE1E4456E90423C320C2A1111CAA3461552
          76E413CDB6E9FB903C479D25AF6EC7DFF5DABB6518C8EC06291426A8C8911E3A
          74485C76D965F2B1B22F6925AFA0E2FBF8A1229B20E785CD90EE1423E93158EA
          763E81B2A4C932F4A9DBC8AA9B12D1F92E3132DBD42E756525C734949D520CA6
          92D62045648F1E2749E6A0473E27FE0F989240B588FA4BF57A28D1EBC8CE9272
          6F1D9E0D7EB4590735AA9072A539818A66DCBC713DFC2A34656648A709F79151
          812085C20675C3860DE217BFF885FC969345B505D542DC2982E70277CA0A52EE
          0D437DC1EA223597580C2E1B8A2AA46C319C402DD7AF252BE396941526A8070F
          1E949B7DD96D718AFABD36FDA88F41FD6507E92CFD3A31BDFEDB853163325CB0
          0C411B5548857007D56B73EF1629B37CFBA466A5989E32808A9902987FA52F08
          1C36A8E6CC8710C99072509A141F184E9401505381F4FF03C5F708BC4470FE0F
          0000000049454E44AE426082}
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
        DrawStyle = idsBottomLeft
        VirtualWidth = 0
        VirtualHeight = 0
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = False
        InterpolationModeHighQuality = False
      end>
    Left = 760
    Top = 131
  end
end
