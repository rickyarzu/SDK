object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 322
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    635
    322)
  PixelsPerInch = 96
  TextHeight = 13
  object scPageViewer1: TscPageViewer
    Left = 50
    Top = 0
    Width = 585
    Height = 322
    Align = alClient
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
    ExplicitLeft = -25
    ExplicitTop = -96
    ExplicitWidth = 660
    ExplicitHeight = 395
    object scPageViewerPage2: TscPageViewerPage
      Left = 0
      Top = 0
      Width = 585
      Height = 322
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
      BackgroundStyle = scsbsFormBackground
      FullUpdate = True
      ExplicitWidth = 660
      ExplicitHeight = 395
      object scLabel2: TscLabel
        Left = 30
        Top = 30
        Width = 71
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = True
        Caption = 'Page #2'
      end
    end
    object scPageViewerPage1: TscPageViewerPage
      Left = 0
      Top = 0
      Width = 585
      Height = 322
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
      BackgroundStyle = scsbsFormBackground
      FullUpdate = True
      ExplicitWidth = 660
      ExplicitHeight = 395
      object scLabel1: TscLabel
        Left = 30
        Top = 30
        Width = 71
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        GlowEffect.Enabled = False
        GlowEffect.Color = clBtnShadow
        GlowEffect.AlphaValue = 255
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = True
        Caption = 'Page #1'
      end
    end
  end
  object scSplitView2: TscSplitView
    Left = 635
    Top = 0
    Width = 0
    Height = 322
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 1
    CustomImageIndex = -1
    StyleKind = scpsPanel
    ShowCaption = False
    BorderStyle = scpbsLeftShadowLine
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
    AnimationStep = 25
    CompactWidth = 0
    CompactHeight = 20
    GripSize = 0
    Opened = False
    OpenedWidth = 250
    OpenedHeight = 50
    OpenedMinWidth = 0
    OpenedMaxWidth = 0
    OpenedMinHeight = 0
    OpenedMaxHeight = 0
    ParentBackground = False
    ParentColor = False
    Placement = scsvpRight
    HideControls = False
    Animation = True
    DisplayMode = scsvmOverlay
    ExplicitLeft = 0
    ExplicitHeight = 0
    object scLabel4: TscLabel
      AlignWithMargins = True
      Left = 20
      Top = 10
      Width = 63
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      GlowEffect.Enabled = False
      GlowEffect.Color = clBtnShadow
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      AutoSize = True
      Caption = 'Options'
    end
    object scLabel28: TscLabel
      Left = 27
      Top = 63
      Width = 186
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      StyleElements = [seClient, seBorder]
      GlowEffect.Enabled = True
      GlowEffect.Color = clHighlight
      GlowEffect.AlphaValue = 200
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      AutoSize = True
      Caption = 'StyleControls VCL'
    end
    object scLabel5: TscLabel
      Left = 27
      Top = 200
      Width = 41
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      GlowEffect.Enabled = False
      GlowEffect.Color = clWhite
      GlowEffect.AlphaValue = 200
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      AutoSize = True
      Caption = 'Home:'
    end
    object scButton10: TscButton
      Left = 84
      Top = 189
      Width = 139
      Height = 36
      Cursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Animation = True
      Caption = 'www.almdev.com'
      CanFocused = False
      Margin = -1
      Spacing = 1
      Layout = blGlyphLeft
      ImageIndex = -1
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
    object scLabel6: TscLabel
      Left = 32
      Top = 120
      Width = 191
      Height = 39
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      GlowEffect.Enabled = False
      GlowEffect.Color = clBtnShadow
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      AutoSize = True
      WordWrap = True
      Caption = 
        'Create Windows 10 Modern Application with set of advanced compon' +
        'ents and controls! '
    end
  end
  object scSplitView1: TscSplitView
    Left = 0
    Top = 0
    Width = 50
    Height = 322
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 3
    CustomImageIndex = -1
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
    Color = 9787667
    AnimationStep = 25
    CompactWidth = 50
    CompactHeight = 20
    GripSize = 0
    Opened = False
    OpenedWidth = 200
    OpenedHeight = 50
    OpenedMinWidth = 0
    OpenedMaxWidth = 0
    OpenedMinHeight = 0
    OpenedMaxHeight = 0
    ParentBackground = False
    ParentColor = False
    Placement = scsvpLeft
    HideControls = False
    Animation = True
    DisplayMode = scsvmDocked
    ExplicitHeight = 0
    object scButton6: TscButton
      Left = 0
      Top = 0
      Width = 50
      Height = 50
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = scButton6Click
      Animation = False
      CanFocused = False
      Margin = 10
      Spacing = 20
      Layout = blGlyphLeft
      Images = ImageList1
      ImageIndex = 0
      TransparentBackground = False
      ColorOptions.NormalColor = 9787667
      ColorOptions.HotColor = 7488782
      ColorOptions.PressedColor = 5912332
      ColorOptions.FocusedColor = 657930
      ColorOptions.DisabledColor = 657930
      ColorOptions.FrameNormalColor = clNone
      ColorOptions.FrameHotColor = clNone
      ColorOptions.FramePressedColor = clNone
      ColorOptions.FrameFocusedColor = clNone
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 0
      ColorOptions.FontNormalColor = clWhite
      ColorOptions.FontHotColor = clWhite
      ColorOptions.FontPressedColor = clWhite
      ColorOptions.FontFocusedColor = clWhite
      ColorOptions.FontDisabledColor = clGray
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
      StyleKind = scbsColorButton
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
      Left = 0
      Top = 50
      Width = 200
      Height = 50
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = scButton2Click
      Animation = False
      Caption = 'Page #1'
      CanFocused = False
      Margin = 10
      Spacing = 20
      Layout = blGlyphLeft
      Images = ImageList1
      ImageIndex = 1
      TransparentBackground = False
      ColorOptions.NormalColor = 9787667
      ColorOptions.HotColor = 7488782
      ColorOptions.PressedColor = 5912332
      ColorOptions.FocusedColor = 657930
      ColorOptions.DisabledColor = 657930
      ColorOptions.FrameNormalColor = clNone
      ColorOptions.FrameHotColor = clNone
      ColorOptions.FramePressedColor = clNone
      ColorOptions.FrameFocusedColor = clNone
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 0
      ColorOptions.FontNormalColor = clWhite
      ColorOptions.FontHotColor = clWhite
      ColorOptions.FontPressedColor = clWhite
      ColorOptions.FontFocusedColor = clWhite
      ColorOptions.FontDisabledColor = clGray
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
      StyleKind = scbsColorButton
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
      Down = True
      GroupIndex = 1
      AllowAllUp = False
    end
    object scButton3: TscButton
      Left = 0
      Top = 100
      Width = 200
      Height = 50
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = scButton3Click
      Animation = False
      Caption = 'Page #2'
      CanFocused = False
      Margin = 10
      Spacing = 20
      Layout = blGlyphLeft
      Images = ImageList1
      ImageIndex = 2
      TransparentBackground = False
      ColorOptions.NormalColor = 9787667
      ColorOptions.HotColor = 7488782
      ColorOptions.PressedColor = 5912332
      ColorOptions.FocusedColor = 657930
      ColorOptions.DisabledColor = 657930
      ColorOptions.FrameNormalColor = clNone
      ColorOptions.FrameHotColor = clNone
      ColorOptions.FramePressedColor = clNone
      ColorOptions.FrameFocusedColor = clNone
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 0
      ColorOptions.FontNormalColor = clWhite
      ColorOptions.FontHotColor = clWhite
      ColorOptions.FontPressedColor = clWhite
      ColorOptions.FontFocusedColor = clWhite
      ColorOptions.FontDisabledColor = clGray
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
      StyleKind = scbsColorButton
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
      GroupIndex = 1
      AllowAllUp = False
    end
    object scButton1: TscButton
      Left = 0
      Top = 272
      Width = 50
      Height = 50
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = scButton1Click
      Animation = False
      Caption = 'Exit'
      CanFocused = False
      Margin = 10
      Spacing = 20
      Layout = blGlyphLeft
      Images = ImageList1
      ImageIndex = 4
      TransparentBackground = False
      ColorOptions.NormalColor = 9787667
      ColorOptions.HotColor = clRed
      ColorOptions.PressedColor = 191
      ColorOptions.FocusedColor = 657930
      ColorOptions.DisabledColor = 657930
      ColorOptions.FrameNormalColor = clNone
      ColorOptions.FrameHotColor = clNone
      ColorOptions.FramePressedColor = clNone
      ColorOptions.FrameFocusedColor = clNone
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 0
      ColorOptions.FontNormalColor = clWhite
      ColorOptions.FontHotColor = clWhite
      ColorOptions.FontPressedColor = clWhite
      ColorOptions.FontFocusedColor = clWhite
      ColorOptions.FontDisabledColor = clGray
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
      StyleKind = scbsColorButton
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
      ExplicitTop = -50
    end
    object scButton4: TscButton
      Left = 0
      Top = 222
      Width = 50
      Height = 50
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = scButton4Click
      Animation = False
      Caption = 'Options'
      CanFocused = False
      Margin = 10
      Spacing = 20
      Layout = blGlyphLeft
      Images = ImageList1
      ImageIndex = 3
      TransparentBackground = False
      ColorOptions.NormalColor = 9787667
      ColorOptions.HotColor = 7488782
      ColorOptions.PressedColor = 5912332
      ColorOptions.FocusedColor = 657930
      ColorOptions.DisabledColor = 657930
      ColorOptions.FrameNormalColor = clNone
      ColorOptions.FrameHotColor = clNone
      ColorOptions.FramePressedColor = clNone
      ColorOptions.FrameFocusedColor = clNone
      ColorOptions.FrameDisabledColor = clBtnShadow
      ColorOptions.FrameWidth = 0
      ColorOptions.FontNormalColor = clWhite
      ColorOptions.FontHotColor = clWhite
      ColorOptions.FontPressedColor = clWhite
      ColorOptions.FontFocusedColor = clWhite
      ColorOptions.FontDisabledColor = clGray
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
      StyleKind = scbsColorButton
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
      ExplicitTop = -100
    end
    object scSwitch1: TscSwitch
      Left = 56
      Top = 189
      Width = 40
      Height = 20
      TabOrder = 5
      Animation = True
      FrameColor = clWhite
      FrameOnColor = clWhite
      FramePressedColor = 5912332
      FrameImageIndex = -1
      FrameOnImageIndex = -1
      FramePressedImageIndex = -1
      ParentColor = True
      State = scswOff
      StyleKind = scswsStyled
      ThumbColor = clWhite
      ThumbOnColor = 9787667
      ThumbPressedColor = clWhite
      ThumbImageIndex = -1
      ThumbOnImageIndex = -1
      ThumbPressedImageIndex = -1
      ThumbWidth = 0
      OnChangeState = scSwitch1ChangeState
    end
    object scLabel3: TscLabel
      Left = 105
      Top = 190
      Width = 79
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      GlowEffect.Enabled = False
      GlowEffect.Color = clBtnShadow
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 7
      GlowEffect.Offset = 0
      GlowEffect.Intensive = True
      GlowEffect.StyleColors = True
      AutoSize = True
      Caption = 'Overlay mode'
    end
  end
  object scStyleManager1: TscStyleManager
    MenuHookEnabled = True
    MenuAlphaBlendValue = 255
    MenuWallpaperIndex = -1
    MenuBackgroundIndex = -1
    MenuBackgroundOverContentIndex = -1
    MenuHeadersSupport = True
    ScaleStyles = True
    ScaleThemes = False
    ScaleResources = True
    Left = 352
    Top = 16
  end
  object scStyledForm1: TscStyledForm
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
      end>
    ButtonImages = ImageList1
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
    Left = 440
    Top = 16
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 264
    Top = 16
    Bitmap = {
      494C01010500D800600118001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101011024242460515151909090
      90C0909090C05151519024242460010101100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010110646464A0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646464A001010110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009090930E1E1E1F0FFFFFFFF8F8F8FBF1818184F000000000000
      00000000000000000000191919508F8F8FBFFFFFFFFFE1E1E1F0090909300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009090930FFFFFFFFE0E0E0EF101010400000000000000000000000000000
      00000000000000000000000000000000000010101040E0E0E0EFFFFFFFFF0909
      0930000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0420E1E1E1F0E0E0E0EF09090930000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009090930E0E0E0EFE1E1
      E1F0010101100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      64A0FFFFFFFF1010104000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010101040FFFF
      FFFF646464A00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000001010110FFFF
      FFFF8F8F8FBF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009090
      90C0FFFFFFFF0101011000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000024242460FFFF
      FFFF191919500000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001919
      1950FFFFFFFF2424246000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000051515190FFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFF5151519000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000909090C0FFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFF909090C000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000909090C0FFFF
      FFFF000000000000000000000000000000000000000000000000000000009090
      90C0909090C00000000000000000000000000000000000000000000000000000
      0000FFFFFFFF909090C000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000646464A0FFFF
      FFFF010101100000000000000000000000000000000000000000000000009090
      90C0909090C00000000000000000000000000000000000000000000000000101
      0110FFFFFFFF646464A000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000024242460FFFF
      FFFF191919500000000000000000000000000000000000000000000000009090
      90C0909090C00000000000000000000000000000000000000000000000001919
      1950FFFFFFFF2424246000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040420FFFF
      FFFF909090C00000000000000000000000000000000000000000000000009090
      90C0909090C00000000000000000000000000000000000000000000000009090
      90C0FFFFFFFF0101011000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      64A0FFFFFFFF1010104000000000000000000000000000000000000000009090
      90C0909090C0000000000000000000000000000000000000000010101040FFFF
      FFFF646464A00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0110E0E0E0EFE1E1E1F009090930000000000000000000000000000000009090
      90C0909090C00000000000000000000000000000000009090930E1E1E1F0E0E0
      E0EF010101100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010101040FFFFFFFFE1E1E1F0191919500000000000000000000000009090
      90C0909090C000000000000000000000000019191950E1E1E1F0FFFFFFFF0909
      0930000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009090930E0E0E0EFFFFFFFFF646464A000000000000000009090
      90C0909090C00000000000000000646464A0FFFFFFFFE0E0E0EF090909300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101106363639F909090C000000000000000009090
      90C0909090C00000000000000000909090C06363639F01010110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101011000000000000000005151
      5190515151900000000000000000010101100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010101040D1D1D1E7E7E7
      E7F3CFCFCFE6F5F5F5FA2222225E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101104040408001010110000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010110404040800101
      0110000000000000000000000000000000000000000000000000000000000000
      00000000000F0000000E0000000000000000000000001F1F1F5AE5E5E5F21717
      174D000000039E9E9EC9484848880000000000000000000000000000000A0101
      0112000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010110A9A9A9D06464
      64A0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1E1E1F0C4C4C4E0191919500000000000000000000000000000
      00000000000000000000000000000000000019191950C4C4C4E0E0E0E0EF0000
      0000000000000000000000000000000000000000000000000000000000000707
      072DD3D3D3E8B3B3B3D60707072B000000070000000537373777CBCBCBE40909
      093100000000757575AD797979B0010101130000000001010113747474ACFFFF
      FFFF1717174E0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000646464A0FFFF
      FFFF646464A00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000797979B0FFFFFFFFFFFFFFFF909090C009090930000000000000
      0000000000000000000009090930909090C0FFFFFFFFFFFFFFFF797979B00000
      00000000000000000000000000000000000000000000000000020707072CBDBD
      BDDCBABABADAA0A0A0CAE3E3E3F14141418131313171E5E5E5F2727272AB0000
      000C000000003C3C3C7CF7F7F7FB585858961616164CB7B7B7D8CDCDCDE59D9D
      9DC8FBFBFBFD1919195000000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      64A0FFFFFFFF646464A000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFF8F8F8FBFFFFFFFFFFFFFFFFF646464A00101
      011001010110646464A0FFFFFFFFFFFFFFFF8F8F8FBFFFFFFFFF404040800000
      000000000000000000000000000000000000000000000000000C969696C4D8D8
      D8EB000000080000000258585896DEDEDEEED4D4D4E96363639F0707072D0000
      0000000000000000000F3A3A3A7ABABABADAF1F1F1F8999999C60202021B0000
      0000959595C3FFFFFFFF02020217000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000646464A0FFFFFFFF646464A0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010101040FFFFFFFF24242460040404208F8F8FBFFFFFFFFFE1E1
      E1F0E1E1E1F0FFFFFFFF8F8F8FBF0404042024242460FFFFFFFF101010400000
      000000000000000000000000000000000000000000000000000634343474E0E0
      E0EF1616164C0000000000000000090909300505052500000000000000000000
      00000000000000000000000000000000000F1212124500000004000000000303
      031EC3C3C3DF828282B60000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000646464A0FFFFFFFF646464A00000000000000000000000000404
      04203131317051515190909090C0404040802424246001010110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001010110FFFFFFFF646464A0000000000000000010101040C3C3
      C3DFC3C3C3DF101010400000000000000000646464A0FFFFFFFF010101100000
      0000000000000000000000000000000000000000000000000000000000026E6E
      6EA8DCDCDCED0606062900000000000000000000000000000000000000000101
      0113020202190000000000000000000000000000000000000000010101129696
      96C4BDBDBDDC0000000900000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      00000000000000000000646464A0FFFFFFFF646464A001010110646464A0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040800101
      0110000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C4C4C4E0A9A9A9D00000000000000000000000000000
      000000000000000000000000000000000000A9A9A9D0A8A8A8CF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0009FFFFFFFF656565A10000000000000000000000000303031C2B2B2B697676
      76AE8A8A8ABC3A3A3A7A0909093200000000000000000000000010101041F9F9
      F9FC1515154A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000646464A0FFFFFFFFFFFFFFFFFFFFFFFF6363
      639F1818184F000000000000000000000000191919508F8F8FBFFFFFFFFFA9A9
      A9D0010101100000000000000000000000000000000000000000000000000000
      00000000000000000000646464A0FFFFFFFF0000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF646464A0000000000000
      00000000000000000000000000000000000000000000000000000000000E1D1D
      1D57E1E1E1F0131313470000000000000000040404208A8A8ABCFFFFFFFF8787
      87BA7B7B7BB1D1D1D1E7D6D6D6EA19191950000000040000000002020217C4C4
      C4E04D4D4D8C0202021700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010110FFFFFFFFE0E0E0EF191919500000
      000000000000000000000000000000000000000000000000000024242460FFFF
      FFFFA9A9A9D00101011000000000000000000000000000000000000000000000
      00000000000001010110A9A9A9D0FFFFFFFF1010104000000000000000000000
      000000000000000000000000000010101040FFFFFFFFA9A9A9D0010101100000
      0000000000000000000000000000000000001B1B1B5438383878717171AAF3F3
      F3F9848484B80000000000000000010101147F7F7FB4D8D8D8EB1A1A1A520000
      0000000000000707072BA0A0A0CAD3D3D3E80909093100000000000000004343
      4383FFFFFFFF878787BA484848882121215C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000646464A0FFFFFFFF19191950000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      3170FFFFFFFF4040408000000000000000000000000000000000000000000000
      000001010110A9A9A9D0FFFFFFFF6363639F0000000000000000000000000000
      000000000000000000000000000000000000646464A0FFFFFFFFA9A9A9D00101
      011000000000000000000000000000000000FFFFFFFFD1D1D1E7828282B64F4F
      4F8E0F0F0F3E000000000000000014141449FFFFFFFF29292967000000000000
      0000000000000000000005050524D8D8D8EB4141418100000006000000000101
      01133D3D3D7D747474ACADADADD2FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040420FFFFFFFF646464A000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000909090C0E1E1E1F000000000000000000000000000000000000000000909
      0930A9A9A9D0FFFFFFFF24242460000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031313170FFFFFFFFA9A9
      A9D004040420000000000000000000000000E9E9E9F405050525000000000000
      00000000000000000000000000002121215CCACACAE30303031F000000000000
      0000000000000000000000000000757575AD898989BB02020218000000000000
      000000000000000000000000000ECFCFCFE60000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000031313170FFFFFFFF1919195000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000024242460FFFFFFFF1919195000000000000000000000000009090930E1E1
      E1F0FFFFFFFF2424246000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000024242460FFFF
      FFFFE1E1E1F0090909300000000000000000FDFDFDFE24242461101010410202
      02180000000000000000000000001E1E1E58DCDCDCED0808082E000000000000
      0000000000000000000000000000868686B9767676AE01010112000000000000
      00000000000D0A0A0A341C1C1C55E5E5E5F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000051515190FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009090930FFFFFFFF40404080000000000000000009090930E1E1E1F0FFFF
      FFFF797979B01010104010101040000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010101040101010409090
      90C0FFFFFFFFE1E1E1F00909093000000000B0B0B0D4F9F9F9FCDEDEDEEEA0A0
      A0CA2727276400000000000000000D0D0D3AF1F1F1F84E4E4E8D000000000000
      0000000000000000000012121244F7F7F7FB2B2B2B6900000002000000000909
      0932767676AED1D1D1E7EFEFEFF7CBCBCBE40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000909090C0FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFFFF404040800000000009090930FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9D0000000000000
      00000000000000000000A9A9A9D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF090909300A0A0A331A1A1A532A2A2A688989
      89BBB7B7B7D800000000000000000000000C45454585FFFFFFFF4E4E4E8D0B0B
      0B360404042231313171D6D6D6EA8F8F8FBF0202021700000000000000006D6D
      6DA7E9E9E9F4363636761F1F1F5A0F0F0F3E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010101040FFFFFFFF40404080000000000000000000000000000000000404
      04200F0F0F3F1818184F3F3F3F7F3F3F3F7FA8A8A8CFFFFFFFFF242424600000
      00000000000024242460FFFFFFFFA8A8A8CF3F3F3F7F3F3F3F7F1818184F0F0F
      0F3F040404200000000000000000000000000000000000000000000000000707
      072BEDEDEDF63131317000000000000000000000000E43434383F1F1F1F8E0E0
      E0EFCDCDCDE5FFFFFFFF747474AC0404042100000000000000000A0A0A33E0E0
      E0EF2121215C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000024242460FFFFFFFF1919195000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000031313170FFFFFFFF19191950000000000000000000000000000000000000
      00000000000000000000000000000000000001010110E0E0E0EF909090C00000
      000000000000909090C0E0E0E0EF010101100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      082EFFFFFFFF53535392000000000000000000000000000000030D0D0D3B1D1D
      1D571F1F1F5A141414490101011400000000000000000000000009090931F3F3
      F3F9363636760000000100000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000001010110FFFFFFFF909090C000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C4C4C4E0E0E0E0EF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000646464A0FFFFFFFF0909
      093010101040FFFFFFFF51515190000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000003ADAD
      ADD2BCBCBCDB0303031C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000055050
      508FE3E3E3F10707072B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000051515190FFFFFFFF24242460000000000000
      0000000000000000000000000000000000000000000000000000000000005151
      5190FFFFFFFF3131317000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040420FFFFFFFF6464
      64A0646464A0FFFFFFFF04040420000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000095C5C5C99DADA
      DAEC0202021A000000000000000A4E4E4E8D3131317100000000000000000000
      000000000000000000000000000019191951717171AA04040422000000000000
      000CA4A4A4CDB8B8B8D90000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010110A8A8A8CFFFFFFFFF313131700000
      000000000000000000000000000000000000000000000000000040404080FFFF
      FFFF8F8F8FBF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000646464A0FFFF
      FFFFFFFFFFFF646464A000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000085A5A5A98FBFB
      FBFD1717174D0202021BB3B3B3D6FFFFFFFFEBEBEBF5B5B5B5D7282828660000
      00000000000010101041878787BAE7E7E7F3FFFFFFFFD3D3D3E81C1C1C560101
      0116BCBCBCDBD4D4D4E90000000F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010110A8A8A8CFFFFFFFFF9090
      90C02424246009090930000000001010104031313170C4C4C4E0FFFFFFFF8F8F
      8FBF010101100000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010101040FFFF
      FFFFFFFFFFFF1010104000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001020202185C5C
      5C99EBEBEBF5D4D4D4E9B2B2B2D50A0A0A3406060628878787BAA1A1A1CB0202
      021B000000004F4F4F8EEBEBEBF51B1B1B54040404236D6D6DA7E5E5E5F2D3D3
      D3E8BFBFBFDD0707072D00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101103F3F3F7FE0E0
      E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0EF3030306F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009090
      90C08F8F8FBF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      021759595997696969A40101011200000000000000002B2B2B69DCDCDCED0F0F
      0F3E00000000848484B8686868A300000006000000000000000C343434749393
      93C20707072C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000191919503F3F3F7F3F3F3F7F3F3F3F7F1818184F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002424
      2460242424600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000008000000090000000000000000000000001A1A1A53F3F3F3F93434
      34740D0D0D3ACBCBCBE439393979000000000000000000000000000000050000
      000C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A0A0A34AEAEAED3EFEF
      EFF7EBEBEBF5F9F9F9FC1A1A1A53000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
