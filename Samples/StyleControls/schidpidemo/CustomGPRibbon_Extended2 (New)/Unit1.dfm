object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 485
  ClientWidth = 907
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
    Width = 907
    Height = 485
    Align = alClient
    FluentUIOpaque = False
    TabOrder = 0
    BlurBackground = False
    BlurBackgroundAmount = 5
    BackgroundStyle = gppbsColor
    CustomImageIndex = -1
    DragForm = False
    DragTopForm = True
    DrawTextMode = scdtmGDI
    FillGradientAngle = 90
    FillGradientBeginAlpha = 255
    FillGradientEndAlpha = 255
    FillGradientBeginColorOffset = 25
    FillGradientEndColorOffset = 25
    FrameWidth = 1
    FillColor = clWindow
    FillColorAlpha = 255
    FillColor2 = clNone
    FrameColor = clWindow
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
    TransparentBackground = False
    StorePaintBuffer = True
    Sizeable = True
    WallpaperIndex = -1
    object scPageViewer1: TscPageViewer
      Left = 1
      Top = 1
      Width = 905
      Height = 483
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
        Width = 905
        Height = 483
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
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
        StorePaintBuffer = False
        BackgroundStyle = scsbsPanel
        object scGPPanel5: TscGPPanel
          Left = 0
          Top = 0
          Width = 201
          Height = 483
          Align = alLeft
          FluentUIOpaque = False
          TabOrder = 0
          BlurBackground = False
          BlurBackgroundAmount = 5
          BackgroundStyle = gppbsColor
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
          FillColor = clWindow
          FillColorAlpha = 255
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
          TransparentBackground = False
          StorePaintBuffer = True
          Sizeable = False
          WallpaperIndex = -1
          object BackButton: TscGPGlyphButton
            Left = 51
            Top = 19
            Width = 50
            Height = 50
            FluentUIOpaque = False
            TabOrder = 0
            OnClick = BackButtonClick
            Animation = True
            Badge.Color = clRed
            Badge.ColorAlpha = 255
            Badge.Font.Charset = DEFAULT_CHARSET
            Badge.Font.Color = clWhite
            Badge.Font.Height = -11
            Badge.Font.Name = 'Tahoma'
            Badge.Font.Style = [fsBold]
            Badge.Visible = False
            Caption = 'BackButton'
            CanFocused = False
            CustomDropDown = False
            DrawTextMode = scdtmGDI
            Layout = blGlyphLeft
            TransparentBackground = True
            ColorValue = clRed
            Options.NormalColor = clBtnText
            Options.HotColor = clBtnText
            Options.PressedColor = clBtnText
            Options.FocusedColor = clWindowText
            Options.DisabledColor = clBtnText
            Options.NormalColor2 = clNone
            Options.HotColor2 = clNone
            Options.PressedColor2 = clNone
            Options.FocusedColor2 = clNone
            Options.DisabledColor2 = clNone
            Options.NormalColorAlpha = 0
            Options.HotColorAlpha = 20
            Options.PressedColorAlpha = 30
            Options.FocusedColorAlpha = 255
            Options.DisabledColorAlpha = 5
            Options.NormalColor2Alpha = 255
            Options.HotColor2Alpha = 255
            Options.PressedColor2Alpha = 255
            Options.FocusedColor2Alpha = 100
            Options.DisabledColor2Alpha = 255
            Options.FrameNormalColor = clWindowText
            Options.FrameHotColor = clWindowText
            Options.FramePressedColor = clWindowText
            Options.FrameFocusedColor = clWindowText
            Options.FrameDisabledColor = clWindowText
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
          end
          object scGPCharGlyphButton4: TscGPCharGlyphButton
            AlignWithMargins = True
            Left = 0
            Top = 100
            Width = 200
            Height = 50
            Margins.Left = 0
            Margins.Top = 100
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
            TabStop = True
            OnClick = scGPCharGlyphButton4Click
            Animation = True
            Badge.Color = clRed
            Badge.ColorAlpha = 255
            Badge.Font.Charset = DEFAULT_CHARSET
            Badge.Font.Color = clWhite
            Badge.Font.Height = -11
            Badge.Font.Name = 'Tahoma'
            Badge.Font.Style = [fsBold]
            Badge.Visible = False
            Caption = 'Documents'
            CanFocused = True
            CustomDropDown = False
            DrawTextMode = scdtmGDI
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
            Options.FrameWidth = 4
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
            GlyphOptions.Index = 246
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
            TabStop = True
            OnClick = scGPCharGlyphButton2Click
            Animation = True
            Badge.Color = clRed
            Badge.ColorAlpha = 255
            Badge.Font.Charset = DEFAULT_CHARSET
            Badge.Font.Color = clWhite
            Badge.Font.Height = -11
            Badge.Font.Name = 'Tahoma'
            Badge.Font.Style = [fsBold]
            Badge.Visible = False
            Caption = 'Reports'
            CanFocused = True
            CustomDropDown = False
            DrawTextMode = scdtmGDI
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
            Options.FrameWidth = 4
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
            GlyphOptions.Index = 128
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
            TabStop = True
            OnClick = scGPCharGlyphButton5Click
            Animation = True
            Badge.Color = clRed
            Badge.ColorAlpha = 255
            Badge.Font.Charset = DEFAULT_CHARSET
            Badge.Font.Color = clWhite
            Badge.Font.Height = -11
            Badge.Font.Name = 'Tahoma'
            Badge.Font.Style = [fsBold]
            Badge.Visible = False
            Caption = 'Settings'
            CanFocused = True
            CustomDropDown = False
            DrawTextMode = scdtmGDI
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
            Options.FrameWidth = 4
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
          end
          object scGPCharGlyphButton1: TscGPCharGlyphButton
            Left = 0
            Top = 433
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
            TabStop = True
            OnClick = scGPCharGlyphButton1Click
            Animation = True
            Badge.Color = clRed
            Badge.ColorAlpha = 255
            Badge.Font.Charset = DEFAULT_CHARSET
            Badge.Font.Color = clWhite
            Badge.Font.Height = -11
            Badge.Font.Name = 'Tahoma'
            Badge.Font.Style = [fsBold]
            Badge.Visible = False
            Caption = 'Close'
            CanFocused = True
            CustomDropDown = False
            DrawTextMode = scdtmGDI
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
          end
        end
        object ClientPanel2: TscPanel
          Left = 201
          Top = 0
          Width = 704
          Height = 483
          Align = alClient
          FluentUIOpaque = False
          TabOrder = 1
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
          object scPageViewer2: TscPageViewer
            Left = 0
            Top = 34
            Width = 704
            Height = 449
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
            object scPageViewerPage4: TscPageViewerPage
              Left = 0
              Top = 0
              Width = 704
              Height = 449
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
              BackgroundStyle = scsbsFormBackground
              object scLabel2: TscLabel
                AlignWithMargins = True
                Left = 3
                Top = 10
                Width = 698
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
                Caption = 'Reports'
              end
            end
            object scPageViewerPage5: TscPageViewerPage
              Left = 0
              Top = 0
              Width = 704
              Height = 449
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
              BackgroundStyle = scsbsFormBackground
              object scLabel3: TscLabel
                AlignWithMargins = True
                Left = 3
                Top = 10
                Width = 698
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
            object scPageViewerPage3: TscPageViewerPage
              Left = 0
              Top = 0
              Width = 704
              Height = 449
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
              BackgroundStyle = scsbsFormBackground
              object scLabel12: TscLabel
                AlignWithMargins = True
                Left = 3
                Top = 67
                Width = 698
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
                Caption = 'Recent Documents'
              end
              object scAdvancedListBox1: TscAdvancedListBox
                AlignWithMargins = True
                Left = 3
                Top = 120
                Width = 313
                Height = 326
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
                SelectionGlow.Color = clHighlight
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
                    Caption = 'Document 1'
                    Detail = 'C:\My Documents\Doc1.doc'
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
                    Caption = 'Document 2'
                    Detail = 'C:\My Documents\Doc2.doc'
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
                    Caption = 'Document 3'
                    Detail = 'C:\My Documents\Doc3.doc'
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
                    Caption = 'Document 4'
                    Detail = 'C:\My Documents\Doc4.doc'
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
                    Caption = 'Document 5'
                    Detail = 'C:\My Documents\Doc5.doc'
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
                Width = 704
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
                  Animation = True
                  Badge.Color = clRed
                  Badge.ColorAlpha = 255
                  Badge.Font.Charset = DEFAULT_CHARSET
                  Badge.Font.Color = clWhite
                  Badge.Font.Height = -11
                  Badge.Font.Name = 'Tahoma'
                  Badge.Font.Style = [fsBold]
                  Badge.Visible = False
                  Caption = 'scGPCharGlyphButton1'
                  CanFocused = False
                  CustomDropDown = False
                  DrawTextMode = scdtmGDI
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
                  GlyphOptions.Size = 40
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
                end
                object scGPCharGlyphButton6: TscGPCharGlyphButton
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
                  TabOrder = 1
                  Animation = True
                  Badge.Color = clRed
                  Badge.ColorAlpha = 255
                  Badge.Font.Charset = DEFAULT_CHARSET
                  Badge.Font.Color = clWhite
                  Badge.Font.Height = -11
                  Badge.Font.Name = 'Tahoma'
                  Badge.Font.Style = [fsBold]
                  Badge.Visible = False
                  Caption = 'scGPCharGlyphButton1'
                  CanFocused = False
                  CustomDropDown = False
                  DrawTextMode = scdtmGDI
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
                  GlyphOptions.Size = 40
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
                end
              end
            end
          end
          object scGPPanel1: TscGPPanel
            Left = 0
            Top = 0
            Width = 704
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
            object CloseButton2: TscGPGlyphButton
              AlignWithMargins = True
              Left = 659
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
              Animation = True
              Badge.Color = clRed
              Badge.ColorAlpha = 255
              Badge.Font.Charset = DEFAULT_CHARSET
              Badge.Font.Color = clWhite
              Badge.Font.Height = -11
              Badge.Font.Name = 'Tahoma'
              Badge.Font.Style = [fsBold]
              Badge.Visible = False
              Caption = 'CloseButton'
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
            end
            object MinButton2: TscGPGlyphButton
              AlignWithMargins = True
              Left = 569
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
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
            end
            object MaxButton2: TscGPGlyphButton
              AlignWithMargins = True
              Left = 614
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
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
            end
            object scGPLabel2: TscGPLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 563
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
        end
      end
      object scPageViewerPage1: TscPageViewerPage
        Left = 0
        Top = 0
        Width = 905
        Height = 483
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
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
        FluentUIOpaque = False
        StorePaintBuffer = False
        BackgroundStyle = scsbsPanel
        object scGPPanel2: TscGPPanel
          Left = 0
          Top = 0
          Width = 905
          Height = 180
          Align = alTop
          FluentUIOpaque = False
          TabOrder = 0
          BlurBackground = False
          BlurBackgroundAmount = 5
          BackgroundStyle = gppbsColor
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
          FillColor = clWindow
          FillColorAlpha = 255
          FillColor2 = clNone
          FrameColor = clBlack
          FrameColorAlpha = 50
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
          Caption = 'scGPPanel2'
          TransparentBackground = False
          StorePaintBuffer = True
          Sizeable = False
          WallpaperIndex = 0
          object scGPPanel4: TscGPPanel
            Left = 0
            Top = 0
            Width = 905
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
            object CloseButton: TscGPGlyphButton
              AlignWithMargins = True
              Left = 860
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
              Animation = True
              Badge.Color = clRed
              Badge.ColorAlpha = 255
              Badge.Font.Charset = DEFAULT_CHARSET
              Badge.Font.Color = clWhite
              Badge.Font.Height = -11
              Badge.Font.Name = 'Tahoma'
              Badge.Font.Style = [fsBold]
              Badge.Visible = False
              Caption = 'CloseButton'
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
            end
            object MinButton: TscGPGlyphButton
              AlignWithMargins = True
              Left = 770
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
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
            end
            object MaxButton: TscGPGlyphButton
              AlignWithMargins = True
              Left = 815
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
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
            end
            object scGPGlyphButton1: TscGPGlyphButton
              AlignWithMargins = True
              Left = 690
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
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
            end
            object scGPGlyphButton6: TscGPGlyphButton
              AlignWithMargins = True
              Left = 725
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
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
            end
            object scLabel1: TscGPLabel
              AlignWithMargins = True
              Left = 98
              Top = 3
              Width = 589
              Height = 28
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
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
              GlowEffect.Color = clBtnShadow
              GlowEffect.AlphaValue = 255
              GlowEffect.GlowSize = 7
              GlowEffect.Offset = 0
              GlowEffect.Intensive = True
              GlowEffect.StyleColors = True
              AutoSize = False
              Alignment = taCenter
              ShowEllipsis = True
              Caption = 'UWP - Ribbon - Demo'
            end
          end
          object scGPToolPager1: TscGPToolPager
            Left = 0
            Top = 34
            Width = 905
            Height = 145
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
            DrawTextMode = scdtmGDI
            TabsBGFillColor = 10114859
            TabsBGFillColorAlpha = 0
            TransparentBackground = True
            FrameWidth = 0
            FrameScaleWidth = True
            FrameColor = clWhite
            FrameColorAlpha = 70
            BorderStyle = scgpbsNone
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
            TabOptions.MouseInColor = clWindowText
            TabOptions.FocusedColor = clWhite
            TabOptions.NormalColorAlpha = 50
            TabOptions.ActiveColorAlpha = 0
            TabOptions.MouseInColorAlpha = 20
            TabOptions.FocusedColorAlpha = 0
            TabOptions.FrameNormalColor = clHighlight
            TabOptions.FrameActiveColor = clHighlight
            TabOptions.FrameMouseInColor = clHighlight
            TabOptions.FrameFocusedColor = clHighlight
            TabOptions.FrameWidth = 4
            TabOptions.FrameNormalColorAlpha = 70
            TabOptions.FrameActiveColorAlpha = 200
            TabOptions.FrameMouseInColorAlpha = 0
            TabOptions.FrameFocusedColorAlpha = 255
            TabOptions.FontNormalColor = clWindowText
            TabOptions.FontActiveColor = clWindowText
            TabOptions.FontMouseInColor = clWindowText
            TabOptions.FontFocusedColor = clWindowText
            TabOptions.TabStyle = gptsBottomLine
            TabOptions.ShapeFillGradientAngle = 90
            TabOptions.GradientColorOffset = 30
            TabOptions.ShapeCornerRadius = 0
            TabOptions.StyleColors = True
            TabSpacing = 10
            TabMargin = 10
            ScrollButtonWidth = 20
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
              905
              145)
            object scGPGlyphButton7: TscGPGlyphButton
              AlignWithMargins = True
              Left = 867
              Top = 3
              Width = 30
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 4
              Anchors = [akTop, akRight]
              FluentUIOpaque = False
              TabOrder = 3
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
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
            end
            object scGPGlyphButton8: TscGPGlyphButton
              AlignWithMargins = True
              Left = 832
              Top = 3
              Width = 30
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 5
              Margins.Bottom = 4
              Anchors = [akTop, akRight]
              FluentUIOpaque = False
              TabOrder = 4
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
              CanFocused = False
              CustomDropDown = False
              DrawTextMode = scdtmGDI
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
            end
            object MenuButton: TscGPButton
              Left = 3
              Top = 0
              Width = 93
              Height = 34
              FluentUIOpaque = False
              TabOrder = 2
              TabStop = True
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
              CanFocused = True
              CustomDropDown = False
              DrawTextMode = scdtmGDI
              Margin = -1
              Spacing = 1
              Layout = blGlyphLeft
              ImageIndex = -1
              ImageMargin = 0
              TransparentBackground = True
              Options.NormalColor = clWhite
              Options.HotColor = clWindowText
              Options.PressedColor = clBlack
              Options.FocusedColor = clWindowText
              Options.DisabledColor = clBtnFace
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
              Options.FrameDisabledColorAlpha = 255
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
            end
            object scGPToolPagerPage3: TscGPToolPagerPage
              Left = 0
              Top = 35
              Width = 907
              Height = 110
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
              HorzScrollDirection = scgspsdLeftToRight
              VertScrollDirection = scgspsdTopToBottom
              TouchScroll = False
              StorePaintBuffer = True
            end
            object scGPToolPagerPage2: TscGPToolPagerPage
              Left = 0
              Top = 35
              Width = 907
              Height = 110
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
              FillColorAlpha = 0
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
              HorzScrollDirection = scgspsdLeftToRight
              VertScrollDirection = scgspsdTopToBottom
              TouchScroll = False
              StorePaintBuffer = True
            end
            object scGPToolPagerPage1: TscGPToolPagerPage
              Left = 0
              Top = 35
              Width = 905
              Height = 110
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
              FillColorAlpha = 0
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
              HorzScrollDirection = scgspsdLeftToRight
              VertScrollDirection = scgspsdTopToBottom
              TouchScroll = False
              StorePaintBuffer = True
              object scGPToolGroupPanel1: TscGPToolGroupPanel
                Left = 449
                Top = 0
                Width = 320
                Height = 110
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
                CaptionFontColor = clGray
                CaptionFontDisabledColor = clNone
                DrawTextMode = scdtmGDI
                DialogButtonColor = clWindowText
                ShowDialogButton = False
                StorePaintBuffer = True
                SeparatorColor = clWindowText
                SeparatorColorAlpha = 50
                object scGPButton5: TscGPButton
                  Left = 24
                  Top = 10
                  Width = 84
                  Height = 76
                  FluentUIOpaque = False
                  TabOrder = 0
                  Animation = True
                  Badge.Color = clRed
                  Badge.ColorAlpha = 255
                  Badge.Font.Charset = DEFAULT_CHARSET
                  Badge.Font.Color = clWhite
                  Badge.Font.Height = -11
                  Badge.Font.Name = 'Tahoma'
                  Badge.Font.Style = [fsBold]
                  Badge.Visible = False
                  CanFocused = False
                  CustomDropDown = False
                  DrawTextMode = scdtmGDI
                  Margin = -1
                  Spacing = 1
                  Layout = blGlyphLeft
                  Images = scGPVirtualImageList1
                  ImageIndex = 4
                  ImageMargin = 0
                  TransparentBackground = True
                  Options.NormalColor = clNone
                  Options.HotColor = clWindowText
                  Options.PressedColor = clWindowText
                  Options.FocusedColor = clNone
                  Options.DisabledColor = clNone
                  Options.NormalColor2 = clNone
                  Options.HotColor2 = clNone
                  Options.PressedColor2 = clNone
                  Options.FocusedColor2 = clNone
                  Options.DisabledColor2 = clNone
                  Options.NormalColorAlpha = 255
                  Options.HotColorAlpha = 30
                  Options.PressedColorAlpha = 50
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
                  Options.ArrowSize = 9
                  Options.ArrowAreaSize = 0
                  Options.ArrowType = scgpatModern
                  Options.ArrowThickness = 2
                  Options.ArrowThicknessScaled = False
                  Options.ArrowNormalColor = clWindowText
                  Options.ArrowHotColor = clWindowText
                  Options.ArrowPressedColor = clWindowText
                  Options.ArrowFocusedColor = clWindowText
                  Options.ArrowDisabledColor = clWindowText
                  Options.ArrowNormalColorAlpha = 200
                  Options.ArrowHotColorAlpha = 255
                  Options.ArrowPressedColorAlpha = 255
                  Options.ArrowFocusedColorAlpha = 200
                  Options.ArrowDisabledColorAlpha = 125
                  Options.StyleColors = True
                  HotImageIndex = -1
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
                end
                object scGPButton6: TscGPButton
                  Left = 122
                  Top = 10
                  Width = 82
                  Height = 76
                  FluentUIOpaque = False
                  TabOrder = 1
                  Animation = True
                  Badge.Color = clRed
                  Badge.ColorAlpha = 255
                  Badge.Font.Charset = DEFAULT_CHARSET
                  Badge.Font.Color = clWhite
                  Badge.Font.Height = -11
                  Badge.Font.Name = 'Tahoma'
                  Badge.Font.Style = [fsBold]
                  Badge.Visible = False
                  CanFocused = False
                  CustomDropDown = False
                  DrawTextMode = scdtmGDI
                  Margin = -1
                  Spacing = 1
                  Layout = blGlyphLeft
                  Images = scGPVirtualImageList1
                  ImageIndex = 5
                  ImageMargin = 0
                  TransparentBackground = True
                  Options.NormalColor = clNone
                  Options.HotColor = clWindowText
                  Options.PressedColor = clWindowText
                  Options.FocusedColor = clNone
                  Options.DisabledColor = clNone
                  Options.NormalColor2 = clNone
                  Options.HotColor2 = clNone
                  Options.PressedColor2 = clNone
                  Options.FocusedColor2 = clNone
                  Options.DisabledColor2 = clNone
                  Options.NormalColorAlpha = 255
                  Options.HotColorAlpha = 30
                  Options.PressedColorAlpha = 50
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
                  Options.ArrowSize = 9
                  Options.ArrowAreaSize = 0
                  Options.ArrowType = scgpatDefault
                  Options.ArrowThickness = 2
                  Options.ArrowThicknessScaled = False
                  Options.ArrowNormalColor = clWindowText
                  Options.ArrowHotColor = clWindowText
                  Options.ArrowPressedColor = clWindowText
                  Options.ArrowFocusedColor = clWindowText
                  Options.ArrowDisabledColor = clWindowText
                  Options.ArrowNormalColorAlpha = 200
                  Options.ArrowHotColorAlpha = 255
                  Options.ArrowPressedColorAlpha = 255
                  Options.ArrowFocusedColorAlpha = 200
                  Options.ArrowDisabledColorAlpha = 125
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
                  ShowMenuArrow = True
                  ShowFocusRect = True
                  Down = False
                  GroupIndex = 0
                  AllowAllUp = False
                end
                object scGPButton7: TscGPButton
                  Left = 223
                  Top = 10
                  Width = 82
                  Height = 76
                  FluentUIOpaque = False
                  TabOrder = 2
                  OnClick = scGPButton7Click
                  Animation = True
                  Badge.Color = clRed
                  Badge.ColorAlpha = 255
                  Badge.Font.Charset = DEFAULT_CHARSET
                  Badge.Font.Color = clWhite
                  Badge.Font.Height = -11
                  Badge.Font.Name = 'Tahoma'
                  Badge.Font.Style = [fsBold]
                  Badge.Visible = False
                  CanFocused = False
                  CustomDropDown = False
                  DrawTextMode = scdtmGDI
                  Margin = -1
                  Spacing = 1
                  Layout = blGlyphLeft
                  Images = scGPVirtualImageList1
                  ImageIndex = 6
                  ImageMargin = 0
                  TransparentBackground = True
                  Options.NormalColor = clNone
                  Options.HotColor = clWindowText
                  Options.PressedColor = clWindowText
                  Options.FocusedColor = clNone
                  Options.DisabledColor = clNone
                  Options.NormalColor2 = clNone
                  Options.HotColor2 = clNone
                  Options.PressedColor2 = clNone
                  Options.FocusedColor2 = clNone
                  Options.DisabledColor2 = clNone
                  Options.NormalColorAlpha = 255
                  Options.HotColorAlpha = 30
                  Options.PressedColorAlpha = 50
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
                  Options.ArrowSize = 9
                  Options.ArrowAreaSize = 0
                  Options.ArrowType = scgpatDefault
                  Options.ArrowThickness = 2
                  Options.ArrowThicknessScaled = False
                  Options.ArrowNormalColor = clWindowText
                  Options.ArrowHotColor = clWindowText
                  Options.ArrowPressedColor = clWindowText
                  Options.ArrowFocusedColor = clWindowText
                  Options.ArrowDisabledColor = clWindowText
                  Options.ArrowNormalColorAlpha = 200
                  Options.ArrowHotColorAlpha = 255
                  Options.ArrowPressedColorAlpha = 255
                  Options.ArrowFocusedColorAlpha = 200
                  Options.ArrowDisabledColorAlpha = 125
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
                  ShowMenuArrow = True
                  ShowFocusRect = True
                  Down = False
                  GroupIndex = 0
                  AllowAllUp = False
                end
              end
              object scGPToolGroupPanel2: TscGPToolGroupPanel
                Left = 217
                Top = 0
                Width = 232
                Height = 110
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
                CaptionFontColor = clGray
                CaptionFontDisabledColor = clNone
                DrawTextMode = scdtmGDI
                DialogButtonColor = clWindowText
                ShowDialogButton = False
                StorePaintBuffer = True
                SeparatorColor = clWindowText
                SeparatorColorAlpha = 50
                object scGPButton3: TscGPButton
                  Left = 21
                  Top = 10
                  Width = 82
                  Height = 76
                  FluentUIOpaque = False
                  TabOrder = 0
                  Animation = True
                  Badge.Color = clRed
                  Badge.ColorAlpha = 255
                  Badge.Font.Charset = DEFAULT_CHARSET
                  Badge.Font.Color = clWhite
                  Badge.Font.Height = -11
                  Badge.Font.Name = 'Tahoma'
                  Badge.Font.Style = [fsBold]
                  Badge.Visible = False
                  CanFocused = False
                  CustomDropDown = False
                  DrawTextMode = scdtmGDI
                  Margin = -1
                  Spacing = 1
                  Layout = blGlyphLeft
                  Images = scGPVirtualImageList1
                  ImageIndex = 2
                  ImageMargin = 0
                  TransparentBackground = True
                  Options.NormalColor = clNone
                  Options.HotColor = clWindowText
                  Options.PressedColor = clWindowText
                  Options.FocusedColor = clNone
                  Options.DisabledColor = clNone
                  Options.NormalColor2 = clNone
                  Options.HotColor2 = clNone
                  Options.PressedColor2 = clNone
                  Options.FocusedColor2 = clNone
                  Options.DisabledColor2 = clNone
                  Options.NormalColorAlpha = 255
                  Options.HotColorAlpha = 30
                  Options.PressedColorAlpha = 50
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
                  Options.ArrowSize = 9
                  Options.ArrowAreaSize = 0
                  Options.ArrowType = scgpatDefault
                  Options.ArrowThickness = 2
                  Options.ArrowThicknessScaled = False
                  Options.ArrowNormalColor = clWindowText
                  Options.ArrowHotColor = clWindowText
                  Options.ArrowPressedColor = clWindowText
                  Options.ArrowFocusedColor = clWindowText
                  Options.ArrowDisabledColor = clWindowText
                  Options.ArrowNormalColorAlpha = 200
                  Options.ArrowHotColorAlpha = 255
                  Options.ArrowPressedColorAlpha = 255
                  Options.ArrowFocusedColorAlpha = 200
                  Options.ArrowDisabledColorAlpha = 125
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
                  ShowMenuArrow = True
                  ShowFocusRect = True
                  Down = False
                  GroupIndex = 0
                  AllowAllUp = False
                end
                object scGPButton4: TscGPButton
                  Left = 125
                  Top = 10
                  Width = 82
                  Height = 76
                  FluentUIOpaque = False
                  TabOrder = 1
                  Animation = True
                  Badge.Color = clRed
                  Badge.ColorAlpha = 255
                  Badge.Font.Charset = DEFAULT_CHARSET
                  Badge.Font.Color = clWhite
                  Badge.Font.Height = -11
                  Badge.Font.Name = 'Tahoma'
                  Badge.Font.Style = [fsBold]
                  Badge.Visible = False
                  CanFocused = False
                  CustomDropDown = False
                  DrawTextMode = scdtmGDI
                  Margin = -1
                  Spacing = 1
                  Layout = blGlyphLeft
                  Images = scGPVirtualImageList1
                  ImageIndex = 3
                  ImageMargin = 0
                  TransparentBackground = True
                  Options.NormalColor = clNone
                  Options.HotColor = clWindowText
                  Options.PressedColor = clWindowText
                  Options.FocusedColor = clNone
                  Options.DisabledColor = clNone
                  Options.NormalColor2 = clNone
                  Options.HotColor2 = clNone
                  Options.PressedColor2 = clNone
                  Options.FocusedColor2 = clNone
                  Options.DisabledColor2 = clNone
                  Options.NormalColorAlpha = 255
                  Options.HotColorAlpha = 30
                  Options.PressedColorAlpha = 50
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
                  Options.ArrowSize = 9
                  Options.ArrowAreaSize = 0
                  Options.ArrowType = scgpatDefault
                  Options.ArrowThickness = 2
                  Options.ArrowThicknessScaled = False
                  Options.ArrowNormalColor = clWindowText
                  Options.ArrowHotColor = clWindowText
                  Options.ArrowPressedColor = clWindowText
                  Options.ArrowFocusedColor = clWindowText
                  Options.ArrowDisabledColor = clWindowText
                  Options.ArrowNormalColorAlpha = 200
                  Options.ArrowHotColorAlpha = 255
                  Options.ArrowPressedColorAlpha = 255
                  Options.ArrowFocusedColorAlpha = 200
                  Options.ArrowDisabledColorAlpha = 125
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
                  ShowMenuArrow = True
                  ShowFocusRect = True
                  Down = False
                  GroupIndex = 0
                  AllowAllUp = False
                end
              end
              object scGPToolGroupPanel3: TscGPToolGroupPanel
                Left = 0
                Top = 0
                Width = 217
                Height = 110
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
                CaptionFontColor = clGray
                CaptionFontDisabledColor = clNone
                DrawTextMode = scdtmGDI
                DialogButtonColor = clWindowText
                ShowDialogButton = True
                StorePaintBuffer = True
                SeparatorColor = clWindowText
                SeparatorColorAlpha = 50
                object scGPButton1: TscGPButton
                  Left = 3
                  Top = 5
                  Width = 82
                  Height = 76
                  FluentUIOpaque = False
                  TabOrder = 0
                  Animation = True
                  Badge.Color = clRed
                  Badge.ColorAlpha = 255
                  Badge.Font.Charset = DEFAULT_CHARSET
                  Badge.Font.Color = clWhite
                  Badge.Font.Height = -11
                  Badge.Font.Name = 'Tahoma'
                  Badge.Font.Style = [fsBold]
                  Badge.Visible = False
                  CanFocused = False
                  CustomDropDown = False
                  DrawTextMode = scdtmGDI
                  Margin = -1
                  Spacing = 1
                  Layout = blGlyphLeft
                  Images = scGPVirtualImageList1
                  ImageIndex = 0
                  ImageMargin = 0
                  TransparentBackground = True
                  Options.NormalColor = clNone
                  Options.HotColor = clWindowText
                  Options.PressedColor = clWindowText
                  Options.FocusedColor = clNone
                  Options.DisabledColor = clNone
                  Options.NormalColor2 = clNone
                  Options.HotColor2 = clNone
                  Options.PressedColor2 = clNone
                  Options.FocusedColor2 = clNone
                  Options.DisabledColor2 = clNone
                  Options.NormalColorAlpha = 255
                  Options.HotColorAlpha = 30
                  Options.PressedColorAlpha = 50
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
                  Options.ArrowSize = 9
                  Options.ArrowAreaSize = 0
                  Options.ArrowType = scgpatDefault
                  Options.ArrowThickness = 2
                  Options.ArrowThicknessScaled = False
                  Options.ArrowNormalColor = clWindowText
                  Options.ArrowHotColor = clWindowText
                  Options.ArrowPressedColor = clWindowText
                  Options.ArrowFocusedColor = clWindowText
                  Options.ArrowDisabledColor = clWindowText
                  Options.ArrowNormalColorAlpha = 200
                  Options.ArrowHotColorAlpha = 255
                  Options.ArrowPressedColorAlpha = 255
                  Options.ArrowFocusedColorAlpha = 200
                  Options.ArrowDisabledColorAlpha = 125
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
                  ShowMenuArrow = True
                  ShowFocusRect = True
                  Down = False
                  GroupIndex = 0
                  AllowAllUp = False
                end
                object scGPButton2: TscGPButton
                  Left = 114
                  Top = 10
                  Width = 82
                  Height = 76
                  FluentUIOpaque = False
                  TabOrder = 1
                  Animation = True
                  Badge.Color = clRed
                  Badge.ColorAlpha = 255
                  Badge.Font.Charset = DEFAULT_CHARSET
                  Badge.Font.Color = clWhite
                  Badge.Font.Height = -11
                  Badge.Font.Name = 'Tahoma'
                  Badge.Font.Style = [fsBold]
                  Badge.Visible = False
                  CanFocused = False
                  CustomDropDown = False
                  DrawTextMode = scdtmGDI
                  Margin = -1
                  Spacing = 1
                  Layout = blGlyphLeft
                  Images = scGPVirtualImageList1
                  ImageIndex = 1
                  ImageMargin = 0
                  TransparentBackground = True
                  Options.NormalColor = clNone
                  Options.HotColor = clWindowText
                  Options.PressedColor = clWindowText
                  Options.FocusedColor = clNone
                  Options.DisabledColor = clNone
                  Options.NormalColor2 = clNone
                  Options.HotColor2 = clNone
                  Options.PressedColor2 = clNone
                  Options.FocusedColor2 = clNone
                  Options.DisabledColor2 = clNone
                  Options.NormalColorAlpha = 255
                  Options.HotColorAlpha = 30
                  Options.PressedColorAlpha = 50
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
                  Options.ArrowSize = 9
                  Options.ArrowAreaSize = 0
                  Options.ArrowType = scgpatDefault
                  Options.ArrowThickness = 2
                  Options.ArrowThicknessScaled = False
                  Options.ArrowNormalColor = clWindowText
                  Options.ArrowHotColor = clWindowText
                  Options.ArrowPressedColor = clWindowText
                  Options.ArrowFocusedColor = clWindowText
                  Options.ArrowDisabledColor = clWindowText
                  Options.ArrowNormalColorAlpha = 200
                  Options.ArrowHotColorAlpha = 255
                  Options.ArrowPressedColorAlpha = 255
                  Options.ArrowFocusedColorAlpha = 200
                  Options.ArrowDisabledColorAlpha = 125
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
                  ShowMenuArrow = True
                  ShowFocusRect = True
                  Down = False
                  GroupIndex = 0
                  AllowAllUp = False
                end
              end
            end
          end
        end
        object scGPPanel3: TscGPPanel
          Left = 0
          Top = 457
          Width = 905
          Height = 26
          Align = alBottom
          FluentUIOpaque = False
          TabOrder = 1
          BlurBackground = False
          BlurBackgroundAmount = 5
          BackgroundStyle = gppbsColor
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
          FrameColor = clBlack
          FrameColorAlpha = 50
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
          object scGPSizeBox1: TscGPSizeBox
            Left = 879
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
            Width = 873
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
            DrawTextMode = scdtmGDI
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
            ShowEllipsis = True
            Caption = 'Status text'
          end
        end
        object scLabel4: TscLabel
          Left = 24
          Top = 211
          Width = 28
          Height = 13
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
          AutoSize = True
          UseFontColorToStyleColor = False
          Caption = 'Style:'
        end
        object scComboBox1: TscComboBox
          Left = 22
          Top = 236
          Width = 226
          Height = 25
          FluentUIOpaque = False
          Style = csDropDownList
          ItemIndex = -1
          WordBreak = False
          SelectionStyle = scstStyled
          SelectionColor = clNone
          SelectionTextColor = clHighlightText
          ImageIndex = -1
          ItemHeight = 19
          TabOrder = 3
          StyleKind = scscbDefault
          ShowFocusRect = True
          OnChange = scComboBox1Change
        end
      end
    end
  end
  object scStyledForm1: TscStyledForm
    FluentUIBackground = scfuibNone
    FluentUIAcrylicColor = clBlack
    FluentUIAcrylicColorAlpha = 50
    FluentUIBorder = True
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
    Bitmap = {}
  end
  object PopupMenu2: TPopupMenu
    Left = 496
    Top = 224
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
end
