object Form1: TForm1
  Left = 0
  Top = 0
  ActiveControl = scGPToolPager1
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 485
  ClientWidth = 880
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  StyleElements = [seFont, seClient]
  PixelsPerInch = 96
  TextHeight = 13
  object scGPPanel1: TscGPPanel
    Left = 0
    Top = 0
    Width = 880
    Height = 485
    Align = alClient
    TabOrder = 0
    FillGradientAngle = 90
    FillGradientBeginAlpha = 255
    FillGradientEndAlpha = 255
    FillGradientBeginColorOffset = 25
    FillGradientEndColorOffset = 25
    FrameWidth = 1
    FillColor = 15132390
    FillColorAlpha = 255
    FillColor2 = clNone
    FrameColor = 10114859
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
    Caption = 'scGPPanel1'
    TransparentBackground = False
    StorePaintBuffer = True
    object scGPPanel2: TscGPPanel
      Left = 1
      Top = 1
      Width = 878
      Height = 34
      Align = alTop
      TabOrder = 0
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FrameWidth = 0
      FillColor = 10114859
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
      StorePaintBuffer = False
      object CloseButton: TscGPGlyphButton
        AlignWithMargins = True
        Left = 833
        Top = 0
        Width = 45
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alRight
        TabOrder = 0
        OnClick = CloseButtonClick
        Animation = True
        Caption = 'CloseButton'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clNone
        Options.HotColor = clRed
        Options.PressedColor = clRed
        Options.FocusedColor = clBtnFace
        Options.DisabledColor = clBtnText
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 220
        Options.PressedColorAlpha = 180
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
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
        Options.StyleColors = True
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
        Left = 743
        Top = 0
        Width = 45
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alRight
        TabOrder = 1
        OnClick = MinButtonClick
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
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
        GlyphOptions.Kind = scgpbgkMinimize
        GlyphOptions.Thickness = 1
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
      object scLabel1: TscLabel
        Left = 95
        Top = 0
        Width = 388
        Height = 34
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnDblClick = scLabel1DblClick
        OnMouseDown = scLabel1MouseDown
        OnMouseMove = scLabel1MouseMove
        OnMouseUp = scLabel1MouseUp
        DragForm = True
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 2
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = False
        Alignment = taCenter
        VertAlignment = scvtaCenter
        ShowEllipsis = True
        UseFontColorToStyleColor = True
        Caption = 'Custom Ribbon Form - Demo'
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
        TabOrder = 3
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
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
        TabOrder = 4
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
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
        GlyphOptions.Kind = scgpbgkFileNew
        GlyphOptions.Thickness = 1
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
        TabOrder = 5
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
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
        GlyphOptions.Kind = scgpbgkFileOpen
        GlyphOptions.Thickness = 1
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
        Left = 788
        Top = 0
        Width = 45
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alRight
        TabOrder = 6
        OnClick = MaxButtonClick
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
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
        GlyphOptions.Kind = scgpbgkMaximize
        GlyphOptions.Thickness = 1
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
        Left = 663
        Top = 0
        Width = 30
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 4
        Align = alRight
        TabOrder = 7
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
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
        GlyphOptions.Kind = scgpbgkGear
        GlyphOptions.Thickness = 1
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
        TabOrder = 8
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
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
        Left = 698
        Top = 0
        Width = 45
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 4
        Align = alRight
        TabOrder = 9
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
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
        GlyphOptions.Kind = scgpbgkHelp
        GlyphOptions.Thickness = 1
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
      object scGPPanel4: TscGPPanel
        Left = 483
        Top = 0
        Width = 180
        Height = 34
        Align = alRight
        TabOrder = 10
        FillGradientAngle = 90
        FillGradientBeginAlpha = 255
        FillGradientEndAlpha = 255
        FillGradientBeginColorOffset = 25
        FillGradientEndColorOffset = 25
        FrameWidth = 0
        FillColor = 10114859
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
        Caption = 'scGPPanel4'
        TransparentBackground = False
        StorePaintBuffer = True
        object scGPEdit1: TscGPEdit
          Left = 8
          Top = 4
          Width = 160
          Height = 23
          Options.NormalColor = 10114859
          Options.HotColor = 10114859
          Options.FocusedColor = 10114859
          Options.DisabledColor = 10114859
          Options.NormalColorAlpha = 255
          Options.HotColorAlpha = 255
          Options.FocusedColorAlpha = 255
          Options.DisabledColorAlpha = 150
          Options.FrameNormalColor = clWhite
          Options.FrameHotColor = clWhite
          Options.FrameFocusedColor = clWhite
          Options.FrameDisabledColor = clWhite
          Options.FrameWidth = 1
          Options.FrameNormalColorAlpha = 50
          Options.FrameHotColorAlpha = 200
          Options.FrameFocusedColorAlpha = 200
          Options.FrameDisabledColorAlpha = 50
          Options.FontNormalColor = clWhite
          Options.FontHotColor = clWhite
          Options.FontFocusedColor = clWhite
          Options.FontDisabledColor = clGrayText
          Options.ShapeFillGradientAngle = 90
          Options.ShapeCornerRadius = 10
          Options.ShapeStyle = scgpessRect
          Options.ScaleFrameWidth = False
          Options.StyleColors = True
          ContentMarginLeft = 5
          ContentMarginRight = 5
          ContentMarginTop = 5
          ContentMarginBottom = 5
          PromptText = 'search'
          PromptTextColor = 14659214
          Transparent = True
          LeftButton.Kind = scgpebCustom
          LeftButton.Enabled = True
          LeftButton.Visible = False
          LeftButton.ImageIndex = -1
          LeftButton.ImageHotIndex = -1
          LeftButton.ImagePressedIndex = -1
          LeftButton.RepeatClick = False
          LeftButton.RepeatClickInterval = 200
          LeftButton.ShowHint = False
          LeftButton.GlyphColor = clWindowText
          LeftButton.GlyphColorAlpha = 180
          LeftButton.GlyphColorHotAlpha = 240
          LeftButton.GlyphColorPressedAlpha = 150
          LeftButton.GlyphThickness = 2
          RightButton.Kind = scgpebSearch
          RightButton.Enabled = True
          RightButton.Visible = True
          RightButton.ImageIndex = -1
          RightButton.ImageHotIndex = -1
          RightButton.ImagePressedIndex = -1
          RightButton.RepeatClick = False
          RightButton.RepeatClickInterval = 200
          RightButton.ShowHint = False
          RightButton.GlyphColor = clWhite
          RightButton.GlyphColorAlpha = 180
          RightButton.GlyphColorHotAlpha = 240
          RightButton.GlyphColorPressedAlpha = 150
          RightButton.GlyphThickness = 1
          Text = ''
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object scGPPanel3: TscGPPanel
      Left = 1
      Top = 458
      Width = 878
      Height = 26
      Align = alBottom
      TabOrder = 1
      FrameSides = [gppfsTop]
      FillGradientAngle = 90
      FillGradientBeginAlpha = 255
      FillGradientEndAlpha = 255
      FillGradientBeginColorOffset = 25
      FillGradientEndColorOffset = 25
      FrameWidth = 1
      FillColor = 15987699
      FillColorAlpha = 255
      FillColor2 = clNone
      FrameColor = 13027014
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
      Color = 15987699
      Caption = 'scGPPanel3'
      TransparentBackground = False
      StorePaintBuffer = True
      object scGPSizeBox1: TscGPSizeBox
        Left = 852
        Top = 1
        Width = 26
        Height = 25
        Cursor = crSizeNWSE
        Align = alRight
        TabOrder = 0
        GlyphColor = clBlack
        GlyphColorAlpha = 100
        GlyphThickness = 1
      end
      object scLabel10: TscLabel
        AlignWithMargins = True
        Left = 20
        Top = 4
        Width = 285
        Height = 19
        Margins.Left = 20
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        StyleElements = [seClient, seBorder]
        DragForm = False
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = False
        VertAlignment = scvtaCenter
        UseFontColorToStyleColor = True
        Caption = 'This is fully custom form (TForm.BorderStyle = bsNone)'
      end
    end
    object scGPToolPager1: TscGPToolPager
      Left = 1
      Top = 35
      Width = 878
      Height = 150
      Align = alTop
      TabOrder = 2
      Color = clBtnFace
      TabsBGFillColor = 10114859
      TabsBGFillColorAlpha = 255
      TransparentBackground = False
      FrameWidth = 1
      FrameScaleWidth = False
      FrameColor = 10114859
      FrameColorAlpha = 40
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
      TabOptions.ActiveColor = 15987699
      TabOptions.MouseInColor = 15987699
      TabOptions.FocusedColor = 15987699
      TabOptions.NormalColorAlpha = 70
      TabOptions.ActiveColorAlpha = 255
      TabOptions.MouseInColorAlpha = 40
      TabOptions.FocusedColorAlpha = 255
      TabOptions.FrameNormalColor = 10114859
      TabOptions.FrameActiveColor = 10114859
      TabOptions.FrameMouseInColor = 10114859
      TabOptions.FrameFocusedColor = 10114859
      TabOptions.FrameWidth = 1
      TabOptions.FrameNormalColorAlpha = 40
      TabOptions.FrameActiveColorAlpha = 40
      TabOptions.FrameMouseInColorAlpha = 40
      TabOptions.FrameFocusedColorAlpha = 40
      TabOptions.FontNormalColor = clWhite
      TabOptions.FontActiveColor = clBlack
      TabOptions.FontMouseInColor = clWhite
      TabOptions.FontFocusedColor = clBlack
      TabOptions.ShapeFillGradientAngle = 90
      TabOptions.GradientColorOffset = 30
      TabOptions.ShapeCornerRadius = 0
      TabOptions.StyleColors = False
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
          CustomOptions.ActiveColor = 13303780
          CustomOptions.MouseInColor = 13303780
          CustomOptions.FocusedColor = 13303780
          CustomOptions.NormalColorAlpha = 0
          CustomOptions.ActiveColorAlpha = 255
          CustomOptions.MouseInColorAlpha = 40
          CustomOptions.FocusedColorAlpha = 255
          CustomOptions.FrameNormalColor = 10114859
          CustomOptions.FrameActiveColor = 10114859
          CustomOptions.FrameMouseInColor = 10114859
          CustomOptions.FrameFocusedColor = 10114859
          CustomOptions.FrameWidth = 1
          CustomOptions.FrameNormalColorAlpha = 40
          CustomOptions.FrameActiveColorAlpha = 40
          CustomOptions.FrameMouseInColorAlpha = 40
          CustomOptions.FrameFocusedColorAlpha = 40
          CustomOptions.FontNormalColor = clWhite
          CustomOptions.FontActiveColor = clBlack
          CustomOptions.FontMouseInColor = clWhite
          CustomOptions.FontFocusedColor = clBlack
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
          UseCustomOptions = True
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
      StorePaintBuffer = False
      DesignSize = (
        878
        150)
      object scGPToolPagerPage2: TscGPToolPagerPage
        Left = 0
        Top = 36
        Width = 885
        Height = 113
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        CanScroll = True
        FillGradientAngle = 90
        FillGradientBeginAlpha = 255
        FillGradientEndAlpha = 255
        FillGradientBeginColorOffset = 25
        FillGradientEndColorOffset = 25
        FillColor = clNone
        FillColorAlpha = 255
        FillColor2 = clNone
        Color = 13303780
        BGStyleKind = scgspbPanel
        ScrollButtonWidth = 17
        CustomImageIndex = -1
        WallpaperIndex = -1
        HotScroll = False
        AutoSize = False
        ScrollType = scstHorizontal
        ScrollOffset = 0
        ScrollTimerInterval = 50
        TouchScroll = False
        StorePaintBuffer = False
        object scLabel2: TscLabel
          Left = 23
          Top = 27
          Width = 238
          Height = 13
          TabOrder = 0
          DragForm = False
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
          Left = 307
          Top = 27
          Width = 304
          Height = 13
          TabOrder = 1
          DragForm = False
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
          Left = 307
          Top = 70
          Width = 347
          Height = 13
          TabOrder = 2
          DragForm = False
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
          Left = 23
          Top = 71
          Width = 250
          Height = 13
          TabOrder = 3
          DragForm = False
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
      object scGPGlyphButton7: TscGPGlyphButton
        AlignWithMargins = True
        Left = 840
        Top = 2
        Width = 30
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        TabOrder = 3
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
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
        GlyphOptions.Kind = scgpbgkInfo
        GlyphOptions.Thickness = 1
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
      object scGPToolPagerPage3: TscGPToolPagerPage
        Left = 0
        Top = 36
        Width = 874
        Height = 113
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        CanScroll = True
        FillGradientAngle = 90
        FillGradientBeginAlpha = 255
        FillGradientEndAlpha = 255
        FillGradientBeginColorOffset = 25
        FillGradientEndColorOffset = 25
        FillColor = clNone
        FillColorAlpha = 255
        FillColor2 = clNone
        Color = 15987699
        BGStyleKind = scgspbPanel
        ScrollButtonWidth = 17
        CustomImageIndex = -1
        WallpaperIndex = -1
        HotScroll = False
        AutoSize = False
        ScrollType = scstHorizontal
        ScrollOffset = 0
        ScrollTimerInterval = 50
        TouchScroll = False
        StorePaintBuffer = False
        object scLabel28: TscLabel
          Left = 15
          Top = 17
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
          Left = 22
          Top = 68
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
          Left = 79
          Top = 57
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
        Left = 0
        Top = 36
        Width = 878
        Height = 113
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        CanScroll = True
        FillGradientAngle = 90
        FillGradientBeginAlpha = 255
        FillGradientEndAlpha = 255
        FillGradientBeginColorOffset = 25
        FillGradientEndColorOffset = 25
        FillColor = clNone
        FillColorAlpha = 255
        FillColor2 = clNone
        Color = 15987699
        BGStyleKind = scgspbPanel
        ScrollButtonWidth = 17
        CustomImageIndex = -1
        WallpaperIndex = -1
        HotScroll = False
        AutoSize = False
        ScrollType = scstHorizontal
        ScrollOffset = 0
        ScrollTimerInterval = 50
        TouchScroll = False
        StorePaintBuffer = False
        object scGPToolGroupPanel1: TscGPToolGroupPanel
          Left = 449
          Top = 0
          Width = 320
          Height = 113
          Align = alLeft
          TabOrder = 0
          Caption = 'scGPToolGroupPanel3'
          CaptionHeight = 17
          ShowDialogButton = False
          StorePaintBuffer = True
          object scGPButton5: TscGPButton
            Left = 15
            Top = 10
            Width = 84
            Height = 76
            TabOrder = 0
            Animation = True
            CanFocused = False
            CustomDropDown = False
            Margin = -1
            Spacing = 1
            Layout = blGlyphLeft
            Images = scGPVirtualImageList1
            ImageIndex = 4
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = clNone
            Options.HotColor = clBlack
            Options.PressedColor = clBlack
            Options.FocusedColor = clNone
            Options.DisabledColor = clNone
            Options.NormalColorAlpha = 255
            Options.HotColorAlpha = 20
            Options.PressedColorAlpha = 30
            Options.FocusedColorAlpha = 255
            Options.DisabledColorAlpha = 255
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
            Options.StyleColors = False
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
            Left = 119
            Top = 10
            Width = 82
            Height = 76
            TabOrder = 1
            Animation = True
            CanFocused = False
            CustomDropDown = False
            Margin = -1
            Spacing = 1
            Layout = blGlyphLeft
            Images = scGPVirtualImageList1
            ImageIndex = 5
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = clNone
            Options.HotColor = clBlack
            Options.PressedColor = clBlack
            Options.FocusedColor = clNone
            Options.DisabledColor = clNone
            Options.NormalColorAlpha = 255
            Options.HotColorAlpha = 20
            Options.PressedColorAlpha = 30
            Options.FocusedColorAlpha = 255
            Options.DisabledColorAlpha = 255
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
            Options.StyleColors = False
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
            TabOrder = 2
            OnClick = scGPButton7Click
            Animation = True
            CanFocused = False
            CustomDropDown = False
            Margin = -1
            Spacing = 1
            Layout = blGlyphLeft
            Images = scGPVirtualImageList1
            ImageIndex = 6
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = clNone
            Options.HotColor = clBlack
            Options.PressedColor = clBlack
            Options.FocusedColor = clNone
            Options.DisabledColor = clNone
            Options.NormalColorAlpha = 255
            Options.HotColorAlpha = 20
            Options.PressedColorAlpha = 30
            Options.FocusedColorAlpha = 255
            Options.DisabledColorAlpha = 255
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
            Options.StyleColors = False
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
          Height = 113
          Align = alLeft
          TabOrder = 1
          Caption = 'scGPToolGroupPanel2'
          CaptionHeight = 17
          ShowDialogButton = False
          StorePaintBuffer = True
          object scGPButton3: TscGPButton
            Left = 21
            Top = 10
            Width = 82
            Height = 76
            TabOrder = 0
            Animation = True
            CanFocused = False
            CustomDropDown = False
            Margin = -1
            Spacing = 1
            Layout = blGlyphLeft
            Images = scGPVirtualImageList1
            ImageIndex = 2
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = clNone
            Options.HotColor = clBlack
            Options.PressedColor = clBlack
            Options.FocusedColor = clNone
            Options.DisabledColor = clNone
            Options.NormalColorAlpha = 255
            Options.HotColorAlpha = 20
            Options.PressedColorAlpha = 30
            Options.FocusedColorAlpha = 255
            Options.DisabledColorAlpha = 255
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
            Options.StyleColors = False
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
            TabOrder = 1
            Animation = True
            CanFocused = False
            CustomDropDown = False
            Margin = -1
            Spacing = 1
            Layout = blGlyphLeft
            Images = scGPVirtualImageList1
            ImageIndex = 3
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = clNone
            Options.HotColor = clBlack
            Options.PressedColor = clBlack
            Options.FocusedColor = clNone
            Options.DisabledColor = clNone
            Options.NormalColorAlpha = 255
            Options.HotColorAlpha = 20
            Options.PressedColorAlpha = 30
            Options.FocusedColorAlpha = 255
            Options.DisabledColorAlpha = 255
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
            Options.StyleColors = False
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
          Height = 113
          Align = alLeft
          TabOrder = 2
          Caption = 'scGPToolGroupPanel1'
          CaptionHeight = 17
          ShowDialogButton = True
          StorePaintBuffer = True
          object scGPButton1: TscGPButton
            Left = 10
            Top = 10
            Width = 82
            Height = 76
            TabOrder = 0
            Animation = True
            CanFocused = False
            CustomDropDown = False
            Margin = -1
            Spacing = 1
            Layout = blGlyphLeft
            Images = scGPVirtualImageList1
            ImageIndex = 0
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = clNone
            Options.HotColor = clBlack
            Options.PressedColor = clBlack
            Options.FocusedColor = clNone
            Options.DisabledColor = clNone
            Options.NormalColorAlpha = 255
            Options.HotColorAlpha = 20
            Options.PressedColorAlpha = 30
            Options.FocusedColorAlpha = 255
            Options.DisabledColorAlpha = 255
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
            Options.StyleColors = False
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
            TabOrder = 1
            Animation = True
            CanFocused = False
            CustomDropDown = False
            Margin = -1
            Spacing = 1
            Layout = blGlyphLeft
            Images = scGPVirtualImageList1
            ImageIndex = 1
            ImageMargin = 0
            TransparentBackground = True
            Options.NormalColor = clNone
            Options.HotColor = clBlack
            Options.PressedColor = clBlack
            Options.FocusedColor = clNone
            Options.DisabledColor = clNone
            Options.NormalColorAlpha = 255
            Options.HotColorAlpha = 20
            Options.PressedColorAlpha = 30
            Options.FocusedColorAlpha = 255
            Options.DisabledColorAlpha = 255
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
            Options.StyleColors = False
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
      object scGPGlyphButton8: TscGPGlyphButton
        AlignWithMargins = True
        Left = 804
        Top = 2
        Width = 30
        Height = 30
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 4
        Anchors = [akTop, akRight]
        TabOrder = 4
        Animation = True
        Caption = 'scGPGlyphButton1'
        CanFocused = False
        CustomDropDown = False
        Layout = blGlyphLeft
        TransparentBackground = True
        ColorValue = clRed
        Options.NormalColor = clWhite
        Options.HotColor = clWhite
        Options.PressedColor = clBlack
        Options.FocusedColor = clWhite
        Options.DisabledColor = clWhite
        Options.NormalColorAlpha = 0
        Options.HotColorAlpha = 30
        Options.PressedColorAlpha = 50
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 5
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
        GlyphOptions.Kind = scgpbgkUser
        GlyphOptions.Thickness = 1
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
        Left = 4
        Top = 1
        Width = 93
        Height = 34
        TabOrder = 5
        TabStop = True
        Animation = True
        Caption = 'Menu'
        CanFocused = True
        CustomDropDown = True
        Margin = -1
        Spacing = 1
        Layout = blGlyphLeft
        ImageIndex = -1
        ImageMargin = 0
        TransparentBackground = False
        Options.NormalColor = 10114859
        Options.HotColor = 11038538
        Options.PressedColor = 11038538
        Options.FocusedColor = 10114859
        Options.DisabledColor = clBtnFace
        Options.NormalColorAlpha = 255
        Options.HotColorAlpha = 255
        Options.PressedColorAlpha = 255
        Options.FocusedColorAlpha = 255
        Options.DisabledColorAlpha = 255
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
        Options.ArrowSize = 9
        Options.ArrowAreaSize = 0
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
        OnDropDown = MenuButtonDropDown
      end
    end
  end
  object scStyledForm1: TscStyledForm
    DWMClientShadow = True
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
    OnChangeActive = scStyledForm1ChangeActive
    OnBeforeChangeScale = scStyledForm1BeforeChangeScale
    OnChangeScale = scStyledForm1ChangeScale
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
    Left = 784
    Top = 224
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
    Left = 632
    Top = 296
  end
  object scGPVirtualImageList1: TscGPVirtualImageList
    ColorDepth = cdDefault
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
end
