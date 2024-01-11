object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'StyleControls VCL + SmartEffects - Modern Application Demo'
  ClientHeight = 499
  ClientWidth = 677
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 350
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Touch.ParentTabletOptions = False
  Touch.TabletOptions = [toPressAndHold, toPenTapFeedback]
  DesignSize = (
    677
    499)
  PixelsPerInch = 96
  TextHeight = 13
  object scPanel1: TscPanel
    Left = 50
    Top = 0
    Width = 627
    Height = 499
    Align = alClient
    TabOrder = 4
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
    StorePaintBuffer = False
    DesignSize = (
      627
      499)
    object scPageViewer1: TscPageViewer
      Left = 0
      Top = 0
      Width = 627
      Height = 499
      Align = alClient
      TabOrder = 2
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
        Width = 627
        Height = 499
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
        Wallpapers = scImageCollection1
        WallpaperIndex = 0
        CustomBackgroundImageIndex = -1
        FullUpdate = True
        StorePaintBuffer = False
        BackgroundStyle = scsbsFormBackground
        object scLabel2: TscLabel
          Left = 30
          Top = 30
          Width = 87
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -23
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
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
          Caption = 'Page #2'
        end
      end
      object scPageViewerPage1: TscPageViewerPage
        Left = 0
        Top = 0
        Width = 627
        Height = 499
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
        StorePaintBuffer = False
        BackgroundStyle = scsbsFormBackground
        object scLabel1: TscLabel
          Left = 30
          Top = 30
          Width = 87
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -23
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
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
          AutoSize = True
          UseFontColorToStyleColor = False
          Caption = 'Page #1'
        end
        object scButton7: TscButton
          Left = 30
          Top = 100
          Width = 155
          Height = 35
          TabOrder = 0
          TabStop = True
          OnClick = scButton7Click
          Animation = False
          Caption = 'Edit Animation...'
          CanFocused = True
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
          StyleKind = scbsPushButton
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
      end
    end
    object scSplitView3: TscSplitView
      Left = 0
      Top = 0
      Width = 0
      Height = 499
      Anchors = [akLeft, akTop, akBottom]
      Enabled = False
      TabOrder = 0
      StyleElements = []
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
      Color = clGray
      StorePaintBuffer = False
      AnimationStep = 25
      AnimationType = scsvaInertial
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
      Placement = scsvpLeft
      HideControls = True
      Animation = False
      DisplayMode = scsvmOverlay
      object scLabel7: TscLabel
        Left = 30
        Top = 30
        Width = 87
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        StyleElements = []
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
        Caption = 'Page #3'
      end
      object scLabel28: TscLabel
        Left = 24
        Top = 77
        Width = 186
        Height = 37
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        StyleElements = [seClient, seBorder]
        DragForm = False
        DragTopForm = True
        GlowEffect.Enabled = True
        GlowEffect.Color = clBlack
        GlowEffect.AlphaValue = 150
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        AutoSize = True
        UseFontColorToStyleColor = False
        Caption = 'StyleControls VCL'
      end
      object scLabel13: TscLabel
        Left = 30
        Top = 138
        Width = 191
        Height = 39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
        WordWrap = True
        UseFontColorToStyleColor = False
        Caption = 
          'Create Windows 10 Modern Application with set of advanced compon' +
          'ents and controls! '
      end
      object scLabel14: TscLabel
        Left = 24
        Top = 214
        Width = 41
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        StyleElements = [seClient, seBorder]
        DragForm = False
        DragTopForm = True
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
        Left = 80
        Top = 203
        Width = 139
        Height = 36
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
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
        GlowEffect.Color = clBlack
        GlowEffect.AlphaValue = 100
        GlowEffect.GlowSize = 7
        GlowEffect.Offset = 0
        GlowEffect.Intensive = True
        GlowEffect.StyleColors = True
        GlowEffect.HotColor = clNone
        GlowEffect.PressedColor = clNone
        GlowEffect.FocusedColor = clNone
        GlowEffect.PressedGlowSize = 10
        GlowEffect.PressedAlphaValue = 120
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
  object scSplitView1: TscSplitView
    Left = 0
    Top = 0
    Width = 50
    Height = 499
    Anchors = [akLeft, akTop, akBottom]
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
    Color = 9787667
    StorePaintBuffer = False
    AnimationStep = 25
    AnimationType = scsvaInertial
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
    Animation = False
    DisplayMode = scsvmDocked
    object scButton6: TscButton
      Left = 0
      Top = 0
      Width = 50
      Height = 50
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = scButton6Click
      Animation = False
      Caption = 'App Title'
      CanFocused = False
      CustomDropDown = False
      Margin = 0
      Spacing = 10
      Layout = blGlyphLeft
      Images = ImageList1
      ImageIndex = 0
      ImageMargin = 50
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
      UseFontColorToStyleColor = False
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
      WordWrap = False
    end
    object scButton2: TscButton
      Left = 0
      Top = 50
      Width = 50
      Height = 50
      Align = alTop
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
      CustomDropDown = False
      Margin = 0
      Spacing = 10
      Layout = blGlyphLeft
      Images = ImageList1
      ImageIndex = 1
      ImageMargin = 50
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
      UseFontColorToStyleColor = False
      RepeatClick = False
      RepeatClickInterval = 100
      GlowEffect.Enabled = False
      GlowEffect.Color = clHighlight
      GlowEffect.AlphaValue = 255
      GlowEffect.GlowSize = 10
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
      WordWrap = False
    end
    object scButton3: TscButton
      Left = 0
      Top = 100
      Width = 50
      Height = 50
      Align = alTop
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
      CustomDropDown = False
      Margin = 0
      Spacing = 10
      Layout = blGlyphLeft
      Images = ImageList1
      ImageIndex = 2
      ImageMargin = 50
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
      UseFontColorToStyleColor = False
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
      WordWrap = False
    end
    object scButton1: TscButton
      Left = 0
      Top = 449
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
      CustomDropDown = False
      Margin = 0
      Spacing = 10
      Layout = blGlyphLeft
      Images = ImageList1
      ImageIndex = 4
      ImageMargin = 50
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
      UseFontColorToStyleColor = False
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
      WordWrap = False
    end
    object scButton4: TscButton
      Left = 0
      Top = 399
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
      CustomDropDown = False
      Margin = 0
      Spacing = 10
      Layout = blGlyphLeft
      Images = ImageList1
      ImageIndex = 3
      ImageMargin = 50
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
      UseFontColorToStyleColor = False
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
      WordWrap = False
    end
    object scSwitch1: TscSwitch
      Left = 53
      Top = 177
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
      Left = 102
      Top = 178
      Width = 79
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
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
      UseFontColorToStyleColor = False
      Caption = 'Overlay mode'
    end
    object scButton5: TscButton
      Left = 0
      Top = 349
      Width = 50
      Height = 50
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = scButton5Click
      Animation = False
      Caption = 'Page #3'
      CanFocused = False
      CustomDropDown = False
      Margin = 0
      Spacing = 10
      Layout = blGlyphLeft
      Images = ImageList1
      ImageIndex = 5
      ImageMargin = 50
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
      UseFontColorToStyleColor = False
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
      WordWrap = False
    end
  end
  object scSplitView2: TscSplitView
    Left = 677
    Top = 0
    Width = 0
    Height = 499
    Anchors = [akTop, akRight, akBottom]
    Enabled = False
    TabOrder = 0
    CustomImageIndex = -1
    DragForm = False
    DragTopForm = True
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
    StorePaintBuffer = False
    AnimationStep = 25
    AnimationType = scsvaInertial
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
    HideControls = True
    Animation = False
    DisplayMode = scsvmOverlay
    object scLabel4: TscLabel
      AlignWithMargins = True
      Left = 11
      Top = 10
      Width = 229
      Height = 30
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
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
      Caption = 'Options'
    end
    object scScrollBox1: TscScrollBox
      Left = 1
      Top = 50
      Width = 249
      Height = 449
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 1
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FullUpdate = True
      StorePaintBuffer = False
      BackgroundStyle = scsbsFormBackground
      object scListGroupPanel1: TscListGroupPanel
        Left = 0
        Top = 0
        Width = 249
        Height = 150
        Align = alTop
        TabOrder = 0
        AutoSize = True
        RowCount = 3
        RowLineMargin = 20
        RowHeight = 40
        GroupColor = clWindow
        GroupColorAlpha = 255
        Color = clBtnFace
        Caption = 'scListGroupPanel1'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clBtnText
        HeaderFont.Height = -15
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        HeaderHeight = 30
        HeaderMargin = 10
        HeaderAutoColor = True
        TransparentBackground = False
        object scLabel5: TscLabel
          Left = 20
          Top = 46
          Width = 53
          Height = 13
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
          Caption = 'Option #1:'
        end
        object scLabel6: TscLabel
          Left = 20
          Top = 85
          Width = 53
          Height = 13
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
          AutoSize = True
          UseFontColorToStyleColor = False
          Caption = 'Option #2:'
        end
        object scLabel9: TscLabel
          Left = 20
          Top = 122
          Width = 53
          Height = 13
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
          Caption = 'Option #3:'
        end
        object scGPSwitch1: TscGPSwitch
          Left = 170
          Top = 41
          Width = 44
          Height = 20
          TabOrder = 3
          Animation = True
          FrameColor = clBtnText
          FrameOnColor = clHighlight
          FramePressedColor = clBtnShadow
          ParentColor = True
          State = scswOn
          StyleKind = scswsStyled
          ThumbColor = clBtnText
          ThumbOnColor = clHighlightText
          ThumbPressedColor = clBtnText
          FrameColorAlpha = 255
          FrameOnColorAlpha = 255
          FramePressedColorAlpha = 255
          ThumbColorAlpha = 255
          ThumbOnColorAlpha = 255
          ThumbPressedColorAlpha = 255
          ThumbShadow = False
          FrameSolid = False
          FrameOnSolid = True
          FrameInside = False
        end
        object scGPSwitch2: TscGPSwitch
          Left = 170
          Top = 82
          Width = 44
          Height = 20
          TabOrder = 4
          Animation = True
          FrameColor = clBtnText
          FrameOnColor = clHighlight
          FramePressedColor = clBtnShadow
          ParentColor = True
          State = scswOff
          StyleKind = scswsStyled
          ThumbColor = clBtnText
          ThumbOnColor = clHighlightText
          ThumbPressedColor = clBtnText
          FrameColorAlpha = 255
          FrameOnColorAlpha = 255
          FramePressedColorAlpha = 255
          ThumbColorAlpha = 255
          ThumbOnColorAlpha = 255
          ThumbPressedColorAlpha = 255
          ThumbShadow = False
          FrameSolid = False
          FrameOnSolid = True
          FrameInside = False
        end
        object scGPSwitch3: TscGPSwitch
          Left = 170
          Top = 120
          Width = 44
          Height = 20
          TabOrder = 5
          Animation = True
          FrameColor = clBtnText
          FrameOnColor = clHighlight
          FramePressedColor = clBtnShadow
          ParentColor = True
          State = scswOn
          StyleKind = scswsStyled
          ThumbColor = clBtnText
          ThumbOnColor = clHighlightText
          ThumbPressedColor = clBtnText
          FrameColorAlpha = 255
          FrameOnColorAlpha = 255
          FramePressedColorAlpha = 255
          ThumbColorAlpha = 255
          ThumbOnColorAlpha = 255
          ThumbPressedColorAlpha = 255
          ThumbShadow = False
          FrameSolid = False
          FrameOnSolid = True
          FrameInside = False
        end
      end
      object scListGroupPanel3: TscListGroupPanel
        Left = 0
        Top = 150
        Width = 249
        Height = 110
        Align = alTop
        TabOrder = 1
        AutoSize = True
        RowCount = 2
        RowLineMargin = 20
        RowHeight = 40
        GroupColor = clWindow
        GroupColorAlpha = 255
        Color = clBtnFace
        Caption = 'Login information'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clBtnText
        HeaderFont.Height = -15
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        HeaderHeight = 30
        HeaderMargin = 10
        HeaderAutoColor = True
        TransparentBackground = False
        object scLabel12: TscLabel
          Left = 19
          Top = 46
          Width = 55
          Height = 13
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
          AutoSize = True
          UseFontColorToStyleColor = True
          Caption = 'User name:'
        end
        object scLabel17: TscLabel
          Left = 19
          Top = 85
          Width = 50
          Height = 13
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
          UseFontColorToStyleColor = True
          Caption = 'Password:'
        end
        object scPasswordEdit1: TscPasswordEdit
          Left = 86
          Top = 81
          Width = 120
          Height = 21
          Cursor = crIBeam
          TabOrder = 3
          FrameColor = clBtnShadow
          FrameActiveColor = clHighlight
          Transparent = True
          BorderKind = sccebNone
          ContentMarginLeft = 0
          ContentMarginRight = 0
          ContentMarginTop = 0
          ContentMarginBottom = 0
          PromptTextColor = clNone
          PasswordCharImageIndex = -1
          PasswordCharSelectedImageIndex = -1
          WallpaperIndex = -1
          CustomBackgroundImageNormalIndex = -1
          CustomBackgroundImageHotIndex = -1
          CustomBackgroundImageDisabledIndex = -1
          UseFontColorToStyleColor = True
          Text = 'password'
        end
        object scEdit2: TscEdit
          Left = 88
          Top = 43
          Width = 108
          Height = 21
          UseFontColorToStyleColor = True
          ContentMarginLeft = 0
          ContentMarginRight = 0
          ContentMarginTop = 0
          ContentMarginBottom = 0
          CustomBackgroundImageNormalIndex = -1
          CustomBackgroundImageHotIndex = -1
          CustomBackgroundImageDisabledIndex = -1
          PromptTextColor = clNone
          WallpaperIndex = -1
          LeftButton.ComboButton = False
          LeftButton.Enabled = True
          LeftButton.Visible = False
          LeftButton.ShowHint = False
          LeftButton.ShowEllipses = False
          LeftButton.StyleKind = scbsPushButton
          LeftButton.Width = 18
          LeftButton.ImageIndex = -1
          LeftButton.ImageHotIndex = -1
          LeftButton.ImagePressedIndex = -1
          LeftButton.RepeatClick = False
          LeftButton.RepeatClickInterval = 200
          LeftButton.CustomImageNormalIndex = -1
          LeftButton.CustomImageHotIndex = -1
          LeftButton.CustomImagePressedIndex = -1
          LeftButton.CustomImageDisabledIndex = -1
          RightButton.ComboButton = False
          RightButton.Enabled = True
          RightButton.Visible = False
          RightButton.ShowHint = False
          RightButton.ShowEllipses = False
          RightButton.StyleKind = scbsPushButton
          RightButton.Width = 18
          RightButton.ImageIndex = -1
          RightButton.ImageHotIndex = -1
          RightButton.ImagePressedIndex = -1
          RightButton.RepeatClick = False
          RightButton.RepeatClickInterval = 200
          RightButton.CustomImageNormalIndex = -1
          RightButton.CustomImageHotIndex = -1
          RightButton.CustomImagePressedIndex = -1
          RightButton.CustomImageDisabledIndex = -1
          Transparent = True
          BorderKind = scebFrame
          FrameColor = clBtnShadow
          FrameActiveColor = clHighlight
          Text = 'Admin'
          BorderStyle = bsNone
          TabOrder = 0
        end
      end
      object scListGroupPanel4: TscListGroupPanel
        Left = 0
        Top = 260
        Width = 249
        Height = 150
        Align = alTop
        TabOrder = 2
        AutoSize = True
        RowCount = 3
        RowLineMargin = 20
        RowHeight = 40
        GroupColor = clWindow
        GroupColorAlpha = 255
        Color = clBtnFace
        Caption = 'scListGroupPanel3'
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clBtnText
        HeaderFont.Height = -15
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        HeaderHeight = 30
        HeaderMargin = 10
        HeaderAutoColor = True
        TransparentBackground = False
        object scLabel18: TscLabel
          Left = 20
          Top = 47
          Width = 53
          Height = 13
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
          Caption = 'Option #4:'
        end
        object scAdvancedComboBox1: TscAdvancedComboBox
          Left = 106
          Top = 40
          Width = 98
          Height = 25
          TabOrder = 1
          UseFontColorToStyleColor = True
          AutoComplete = False
          Animation = False
          CheckedListMode = False
          CheckedListWrap = True
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
              ProgressBar.Min = 0
              ProgressBar.Max = 100
              ProgressBar.Value = 0
              Header = False
              Enabled = True
              Caption = 'Item1'
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
              ProgressBar.Min = 0
              ProgressBar.Max = 100
              ProgressBar.Value = 0
              Header = False
              Enabled = True
              Caption = 'Item2'
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
              ProgressBar.Min = 0
              ProgressBar.Max = 100
              ProgressBar.Value = 0
              Header = False
              Enabled = True
              Caption = 'Item3'
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
              ProgressBar.Min = 0
              ProgressBar.Max = 100
              ProgressBar.Value = 0
              Header = False
              Enabled = True
              Caption = 'Item4'
              Checked = False
            end>
          ItemIndex = 0
          DropDownCount = 7
          Style = sccbColorCombo
          HideSelection = False
          SelectionStyle = scastStyled
          SelectionColor = clNone
          SelectionTextColor = clHighlightText
          SelectionGlow.Enabled = False
          SelectionGlow.Color = clHighlight
          SelectionGlow.AlphaValue = 255
          SelectionGlow.GlowSize = 7
          SelectionGlow.Offset = 0
          SelectionGlow.Intensive = True
          SelectionGlow.StyleColors = True
          ShowFocusRect = True
          AlternateRow = False
          ShowItemTitle = True
          ShowItemImage = True
          ShowItemText = True
          ShowItemDetail = False
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
          ColorOptions.NormalColor = clNone
          ColorOptions.HotColor = clNone
          ColorOptions.PressedColor = clNone
          ColorOptions.FocusedColor = clNone
          ColorOptions.DisabledColor = clNone
          ColorOptions.FrameNormalColor = clNone
          ColorOptions.FrameHotColor = clNone
          ColorOptions.FramePressedColor = clNone
          ColorOptions.FrameFocusedColor = clNone
          ColorOptions.FrameDisabledColor = clNone
          ColorOptions.FrameWidth = 1
          ColorOptions.FontNormalColor = clWindowText
          ColorOptions.FontHotColor = clWindowText
          ColorOptions.FontPressedColor = clWindowText
          ColorOptions.FontFocusedColor = clWindowText
          ColorOptions.FontDisabledColor = clGray
          ColorOptions.TitleFontNormalColor = clBtnText
          ColorOptions.TitleFontHotColor = clBtnText
          ColorOptions.TitleFontPressedColor = clBtnText
          ColorOptions.TitleFontFocusedColor = clBtnText
          ColorOptions.TitleFontDisabledColor = clBtnShadow
          ColorOptions.StyleColors = True
          CustomImageNormalIndex = -1
          CustomImageHotIndex = -1
          CustomImagePressedIndex = -1
          CustomImageDisabledIndex = -1
          CustomImageFocusedIndex = -1
          CustomArrowImageNormalIndex = -1
          CustomArrowImageHotIndex = -1
          CustomArrowImagePressedIndex = -1
          CustomArrowImageDisabledIndex = -1
          CustomArrowImageFocusedIndex = -1
          ListBoxHeaderUseStyleColor = True
          ListBoxWallpaperIndex = -1
          ListBoxHeaderStyle = scahsDefault
          ListBoxLineColor = clBtnFace
          ListBoxWidth = 0
          ListBoxHeight = 0
          ListBoxShowItemTitles = True
          ListBoxShowItemDetails = False
          ListBoxShowLines = False
          ListBoxItemHeight = 25
          ListBoxHeaderHeight = 20
          ListBoxSelectionStyle = scastStyled
          ListBoxSelectionColor = clNone
          ListBoxSelectionTextColor = clHighlightText
          ListBoxCustomSelectionImageIndex = -1
          ListBoxCustomHeaderImageIndex = -1
        end
        object scCheckBox5: TscCheckBox
          Left = 20
          Top = 77
          Width = 98
          Height = 29
          TabOrder = 2
          TabStop = True
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
          UseFontColorToStyleColor = True
          Animation = False
          Caption = 'scCheckBox1'
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
        object scCheckBox6: TscCheckBox
          Left = 21
          Top = 118
          Width = 98
          Height = 24
          TabOrder = 3
          TabStop = True
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
          UseFontColorToStyleColor = True
          Animation = False
          Caption = 'scCheckBox2'
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
          Checked = False
          ShowFocusRect = True
        end
      end
    end
  end
  object scStyleManager1: TscStyleManager
    ArrowsType = scsatDefault
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
    Left = 352
    Top = 16
  end
  object scStyledForm1: TscStyledForm
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
      494C01010600D800D40118001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000004040
      4080313131700000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000009090930FFFF
      FFFFFFFFFFFF0909093000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000A9A9A9D0FFFF
      FFFFFFFFFFFFA9A9A9D000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000031313170FFFFFFFF4040
      408040404080FFFFFFFF31313170000000000000000000000000000000000000
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
      00000000000000000000000000000000000004040420E1E1E1F0A8A8A8CF0000
      000000000000C4C4C4E0E1E1E1F0040404200000000000000000000000000000
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
      000000000000000000000000000000000000797979B0FFFFFFFF101010400000
      00000000000010101040FFFFFFFF797979B00000000000000000000000000000
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
      000000000000000000000000000010101040FFFFFFFF646464A0000000000000
      00000000000000000000646464A0FFFFFFFF1010104000000000000000000000
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
      0000000000000000000000000000909090C0E0E0E0EF04040420000000000000
      0000000000000000000004040420E0E0E0EF909090C000000000000000000000
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
      0000000000000000000024242460FFFFFFFF4040408000000000000000000000
      000000000000000000000000000040404080FFFFFFFF19191950000000000000
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
      00000000000000000000A9A9A9D0E0E0E0EF0101011000000000000000000000
      000000000000000000000000000001010110E0E0E0EF909090C0000000000000
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
      00000000000010101040FFFFFFFF404040800000000000000000000000000000
      00000000000000000000000000000000000040404080FFFFFFFF101010400000
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
      000000000000646464A0FFFFFFFF010101100000000000000000000000000000
      00000000000000000000000000000000000001010110FFFFFFFF646464A00000
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
      000000000000FFFFFFFF797979B0000000000000000000000000000000000909
      09300909093000000000000000000000000000000000797979B0FFFFFFFF0000
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
      000009090930FFFFFFFF3131317000000000000000000000000024242460FFFF
      FFFFFFFFFFFF2424246000000000000000000000000031313170FFFFFFFF0909
      0930000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040420FFFF
      FFFF909090C00000000000000000000000000000000000000000000000009090
      90C0909090C00000000000000000000000000000000000000000000000009090
      90C0FFFFFFFF0101011000000000000000000000000000000000000000000000
      000010101040FFFFFFFF1010104000000000000000000000000040404080FFFF
      FFFFFFFFFFFF4040408000000000000000000000000019191950FFFFFFFF1010
      1040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      64A0FFFFFFFF1010104000000000000000000000000000000000000000009090
      90C0909090C0000000000000000000000000000000000000000010101040FFFF
      FFFF646464A00000000000000000000000000000000000000000000000000000
      000009090930FFFFFFFF40404080000000000000000000000000040404207878
      78AF787878AF0404042000000000000000000000000040404080FFFFFFFF0909
      0930000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0110E0E0E0EFE1E1E1F009090930000000000000000000000000000000009090
      90C0909090C00000000000000000000000000000000009090930E1E1E1F0E0E0
      E0EF010101100000000000000000000000000000000000000000000000000000
      000000000000E1E1E1F0A9A9A9D0000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A9A9D0E0E0E0EF0000
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
      00000000000040404080FFFFFFFF242424600000000000000000000000000000
      00000000000000000000000000000000000024242460FFFFFFFF404040800000
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
      00000000000001010110A8A8A8CFE1E1E1F01919195000000000000000000000
      000000000000000000000000000019191950E1E1E1F0A8A8A8CF010101100000
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
      0000000000000000000009090930C3C3C3DFFFFFFFFF646464A0191919500101
      01100101011019191950646464A0FFFFFFFFC3C3C3DF09090930000000000000
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
      0000000000000000000000000000010101106363639FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF6363639F0101011000000000000000000000
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
      00000000000000000000000000000000000000000000040404202323235F3F3F
      3F7F3F3F3F7F2323235F04040420000000000000000000000000000000000000
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
  object seAnimationList1: TseAnimationList
    Left = 528
    Top = 16
    object seAnimation1: TseAnimation
      Effect = '[ FADE ] - SmoothDown'
      Rotation = krRotate90
      Time = 150
    end
    object seAnimation2: TseAnimation
      Effect = '[ FADE ] - CircleSmoothOut'
      Time = 150
    end
  end
  object scImageCollection1: TscImageCollection
    Images = <
      item
        Bitmap.Data = {
          66990000424D6699000000000000360000002800000072000000720000000100
          1800000000003099000000000000000000000000000000000000726D6A716B6A
          6E6A676F6A686D67676D6867746E6D746D6B726C6A706B6A797472746F6D746D
          6C706B6A746E6D716B6A756F6D746E6D6F6A686F6A686F6A686E6A67746F6D74
          6D6B746D6B756F6D746F6D6D6767746F6D716C6A6E6A67746E6C726C6A6F6A68
          726D6B746F6D716C6A77726F726D6B6F6A67746E6C716C6A746E6C726C6A746F
          6D716B6A6F6A67716C6A716B6A756F6D716C6A746D6C746E6C6F6A67726C6A71
          6B6A746F6D746F6D746F6D726D6B746E6C6F6A676F6A686F6A68756F6D716B6A
          726C6A6D68676E6A677C76746F6A6A726D6A746F6D756F6E726D6B75716F7772
          70787472777471746F6D7772707A7474777270746F6D75706E77747176726F78
          74726D6A6775706F726D6A76726F75706F746F6D797472787472746F6E726E6D
          777271746F6E77727076716F76716F777271797472746F6E746F6E746F6D746F
          6D716C6A77727074706E777271726E6C0000746F6D746D6B726D6A746E6C726D
          6A726D6C78747176716F746F6E716C6A7A7472746E6D746F6E746E6D746F6E72
          6D6C756F6E746E6C706B6A706A6A716C6A726D6B78747179747277716F777270
          777270706B6A746F6D746F6D6F6A6A746F6D746E6C6F6A68746E6D746E6C726E
          6C797472777270746F6D75706E777270746F6D746F6E76716F726D6A726D6B74
          6F6E726D6A746F6D726D6C746E6D746F6E746E6C77727075716F7A7474797472
          777471777270777270746F6D746F6D726D6B77727176726F787472726E6C716D
          6A7E7876726D6B77727076716F77726F716D6B777270746F6D7A747277727076
          716F777270777270777270746E6D746F6E76726F75706F7874726D6867746F6D
          716C6A75706E746F6D726D6C777270777270716C6A716D6A77747174706F7672
          7074706E777270787472797472767270777270767270746F6D746F6E79747276
          726F7C77767672700000756F6E75706E746E6D746F6E716C6A6E6A6778747276
          716F75706E726D6C787471716C6A746F6D746F6D746F6D746F6D777271777270
          746E6D746F6E74706E76716F7B76747A76747A75747D77767B7674746F6D7774
          7176726F746F6D777270746F6D716D6A75716F74706E726D6C7A757477727174
          6F6E746F6E75706E746F6D726D6B75706E706B6A746E6D75716F716C6A77726F
          726E6C746F6D746F6D716C6A75706E746D6C75706E75706E76716F746F6D746F
          6D716C6A746F6D746E6D777270746F6D746F6D716C6A6F6A687D7774716C6A74
          6F6D746E6C746F6D6D6767746E6C726D6B75706E746F6D746F6D746F6D756F6D
          746F6D706B6A6F6A68746D6C746D6C746F6D6A6764726C6A6F6A67746F6D706B
          6A706B6A746F6D746F6D6E6A676E6A67746D6C6E6A67716B6A6F6A67716C6A72
          6C6A726D6A6F6A676F6A676D67676F6A676C6766706A686E6A6775706E716C6A
          000075706E77726F74706E746F6E716C6A6F6A68777270746E6D746F6D746E6D
          797472726D6B746F6D726D6A746F6D706B6A746E6C77726F716C6A716C6A716C
          6A726D6B75706E77716F746E6C76706E76706E6E6A67746F6D726D6B726D6A74
          6E6C716C6A6D6867716B6A706A686C6765746D6B716B686F6A676F6A676F6867
          6F6A676D67676F6A676D67666F6A676E68676E6867726C6A6E6A67706B6A726C
          6A6D67676F6A676F6A67716B6A726C6A726D6B726D6A716B6A6D67676F6A676D
          6867716B6A6F6A676F6A676A676468646278726F6D67666F6A676F6A67706A67
          6A66646E67676D6767716B686F6A676E68676E6867716B6A716B6A6D67676C67
          65706A686F6A67746D6B6A6764726D6B6E6A67726D6A706A686F6A68716C6A70
          6B6A6A66646C6766716B6A6D67676F6A676D6767706A67706A68706A686F6A67
          6F6A676D67676D67676C6765706A686F6A67746F6D6F6A670000716A686F6A67
          6D67676F6A676C67656B6764746F6D726C6A706A6A706A68746F6D6F6A67716B
          6A6F6A67706A686E68676F6A676F6A676D67666D67666E6A676D6767726C6A72
          6D6A746E6C746F6D746F6D6F6A6776706F726D6B726D6B75706E746E6C706C6A
          74706E746F6D706C6A77727075706E726D6A746F6D726D6B746E6C726D6B746F
          6D6F6A68706B6A726D6A6F6A68746D6B6F6A67746F6D746F6D726D6C746F6D72
          6D6B77716F77727076716F746E6C726D6A6D6867706B6A6F6A67746E6C716B6A
          706A686D67676A66647A74726D6767726C6A706A68706A676D67666F6A676D67
          67726D6A716C6A6D67676F6A67746D6B726C6A706A686F6A67716B6A706A6872
          6C6A6A66646E6A676C6766726C6A6F6A676D6767706A68706A686C67666D6767
          726D6A6D67676F6A67706B6A746F6D746D6C746F6D726C6A726D6A716C6A726D
          6A6D6867726D6B716B6A746F6D6F6A680000746E6D746F6D746F6D746F6E6F6A
          6A6F6A6776716F746F6D746E6D726D6B787270726D6A746E6C726C6A726D6A6D
          68676F6A67726C6A6F6A676E6A676F6A676F6A67726D6A716B6A726D6A746F6D
          746F6D6D6867746D6B6E68676D67676F6A676E68676B6765716B6A6D67676A66
          64716B6A716A686F6A67716B686F6A676F6A676F6A67716B6A6F6A676F6A6770
          6A6A6F6A67726D6A6D6767746E6C756F6D726C6A726D6B6F6A67746D6B746E6C
          746F6D746F6D726D6B6E6A67726C6A6F6A68746F6D726D6B746D6C6D68676B67
          657A74726F6A6A746F6D726D6A746F6D6F6A67746F6D726D6A76716F726D6C71
          6C6A726D6A746F6D756F6E716C6A726D6A746E6C716B6A746D6B6C67666F6A68
          6C6766716B6A706B6A6F6A67716B6A726D6A6C67666A6764726C6A6C67666F6A
          676E6A67726D6A746D6B726C6A6F6A676F6A676D6766706A686A67646F6A676D
          6767706A676B67640000726D6B726D6A716D6A726D6A6F6A6A6E686775706D72
          6D6B706B6A716D6A77716F6F6A676F6A676F6A68706A686D6767716B6A746D6B
          6F6A686D68676F6A68716D6A746F6D746E6D746F6D77716F74706D706B6A746E
          6D726D6A706B6A726D6A6F6A686D6867716B6A6F6A686D6766746F6D746D6B71
          6B6A726D6B726D6A706A686F6A67726D6A6D67676E68676E6A67706A6A746F6D
          6F6A6A746F6D746D6B6F6A676F6A676D6766716B6A726D6A746E6D726D6A6F6A
          676E6A676F6A676D6766706A686F6A67716D6A6D67666B6765797471706A6A74
          706D746E6D75706E716D6A746F6D746F6D777370746E6D716D6A726D6A74706E
          746F6D726D6B746F6D746E6D746F6D75706E6D6767716D6A6F6A6A746E6D726D
          6B706B6A746D6D746E6D6F6A686B6765726D6A6D6867706A6A6E6867726D6A74
          6F6D75706E706B6A716D6A6F6A67746D6D6F6A67746E6D6F6A6874706D706B6A
          000076727076717077737076717074706D74706E797473777371777270777370
          7E7875726D6D74706D777270777270726D6D76717077747174706E726D6D746F
          6D726D6D7874727874727772707A757379757474706E78747276717076717075
          706F746F6D726D6B76727077727074706E79757378747276727077727075706F
          75716F74706D7A757374706E74706E726E6D746F6D777270706D6A7671707772
          7074706E74706E746E6D76717078747278747175706F74706E74706E74706E72
          6D6A75706E706B6A726D6B6D68676D67677B76746F6A6A746F6D746E6D746F6D
          6F6A68746E6D716D6A777270746F6D716B6A746F6D76717074706D6F6A6A746E
          6D746D6B6F6A68746E6D6A6664716B6A6D6766726D6A6D67676E6867706A6872
          6D6A6E6A676A6765716B6A6D67676F6A676F6A68746F6D746E6D746D6B726D6B
          726D6A706B6A726D6D706B6A74706D726D6A746E6D6F6A670000746F6D75706E
          746E6D74706E746E6D726D6D75706E7671707672707773707E7875726D6D746E
          6D75706E74706E716D6A746E6D74706E746E6D716D6A716D6A726D6B75706E76
          717074706D76716F777270726D6A77737074706D767170767170726D6D746E6D
          75706F74706E746F6D7874727A757476716F75706E746E6D746F6D746E6D7670
          6F726D6A75706E726D6B746E6D74706D6F6A6A746F6D76716F74706E74706E72
          6D6D76716F79747278737175706E746E6D726D6A716D6A6E6A6774706D706B6A
          746D6B6D67666B67667A75736E6A67716B6A706B6A746E6D6D6767716B6A6F6A
          68746F6D716B6A6E68676F6867726D6A706A686F6A676F6A67726D6A6F6A6774
          6E6D6A66646F6A686D6867726D6A6E68676F6A67726D6A6F6A676F6A676D6767
          726D6A6E6A676F6A676F6A67716A686F6A676F6A676F6A676F6A676D67656D67
          676B67656F6A676D6765716A686D67660000716B6A716B6A726D6A726D6B726D
          6A706B6A746F6D746E6D746F6D746E6D7A7472706B6A706B6A746E6D746D6B71
          6D6A75706E76716F74706E716D6A716D6A746F6D74706E777370767170777270
          767170746F6D76716F746F6D75706E75716F716D6A726D6B746E6D746E6D716D
          6A78747277737075706E75706F74706E74706E746E6D777270726E6D74706D71
          6D6A726D6A746F6D6F6A67746E6D75706E74706D746E6D706B6A75706E777270
          76716F746E6D746E6D746E6D726D6B6E6A67746F6D6F6A67726D6A6D67666B67
          657873706E6A67726D6A6F6A67746D6B6D6767726D6A706B6A75706D76706F72
          6D6A726D6B76706E746F6D726D6B746E6D746E6D726D6A76706E6F6A68746E6D
          706B6A746F6D726D6B726D6B74706E746E6D726D6B6D686775716F726D6B7470
          6D746F6D777370777371777370746F6D726D6B6E6A67726D6A6F6A67746E6D6F
          6A6A75706E716D6A0000706B6A726D6A726D6B726D6B726D6B726D6A746F6D74
          6F6D746F6D746F6D7A74726F6A68716D6A726D6B746E6D6F6A68726D6A726D6B
          746E6D706B6A716D6A716D6A746F6D746F6D726D6A746F6D746E6D716D6A746E
          6D716D6A716D6A706B6A6F6A676E6A676E68676F6A686D686774706D75706D74
          6E6D726D6B746D6B726D6A716B6A75706D6F6A67726D6A6F6A67726D6A746D6B
          6F6A67716B6A746D6B746F6D726D6A716D6A726D6B746F6D746E6D726D6B716D
          6A726D6A746E6D706B6A77716F706B6A74706D716D6A6E6A677974726F6A6774
          6E6D746E6D74706E6F6A6875706E726D6B77727075706E726D6A726D6A76706F
          726D6A6F6A686F6A67706A686F6A68746D6B6A6664706A686D6767706B6A6E6A
          676F6A676F6A676F6A686D67676A66646F6A676B67656F6A676E6867726D6A74
          6D6B746F6D726D6A726D6A716D6A746D6D706B6A726D6B706B6A75706D6F6A67
          000076716F77727174716E726E6D76716E726E6B74706E74706E74706E74706E
          7C7674716D6B726E6D777371777170726D6B77737177737176716F746E6D726E
          6D76716F77717077716F77716F7A747377737174706E77727176716F77727176
          716F746E6D746F6D74706E777270726D6B7974717A747277727077716F74706E
          746E6D74706E797371746E6D74706E726E6D746F6E76716E6F6B68746F6E7772
          7077727074706E726E6B77716F77716E76706E746E6D726E6B726E6D74706E72
          6E6B797471716D6B77716F716D6B6F6B6A7E7876716D6B77727076716F777371
          726E6D77727176716F7A7473777271746F6E746F6D7A7574777270746F6D746E
          6D74716E726E6D7773716F6B68746E6D6F6B6A74706E726E6D746E6D746E6D74
          6F6E716D6B6E6A68726E6B6E6A67726E6B716B6A726D6B746E6D746E6D726D6B
          716B6A716B6A726D6B6F6B68726D6B6F6A68746F6D6F6B680000746F6D74706E
          746F6E726D6B76716F746E6D76716F74706E7774717774717E7877726E6D746F
          6D777270746E6D6F6B6874706E76716E76716F726E6B726D6B726E6B77716F77
          727074706E777371777271746F6D77737177727177727174706E716D6B716D6B
          746F6E746F6D716B6A797471777271777371777170746F6D746E6D76716E7A74
          72746E6D777271726E6D74706E777270716D6B76716E77727177747177717074
          706E7772707A757477737177717074716E746F6E74706E746E6D7A7472726E6D
          77716F6F6B6A6E6A687C7774716B6A777170746F6E777270726E6D7A74737773
          717A7574797472746F6E74716E79747177727077716F74706E74706E76716F79
          7471716D6B74716E726E6D7A757474706E74716F77717077747274716E726E6B
          777471726E6D7774727773717A75747A76747C77767A77757A75747773717974
          737774727A76747671707C78767772710000716B6A716B6A716B6A716B6A726E
          6B716D6A746F6D726E6B746E6D746E6D7A7674716D6A726D6B746E6D746E6D71
          6B6A746F6D74706E777271716D6B726D6B746F6D77717074706E746F6E77716F
          77716F726D6B726E6B726D6B726E6B726D6B6F6A686E6867716B6A716B6A6F6A
          6876716E746E6D726D6A726E6B726D6B6F6B68726D6A77716E6F6A686F6A686F
          6B68716B6A74706E716B6A746F6D746E6D746E6D746F6D716B6A746E6D77716E
          746E6D726E6B716B6A726D6A726D6B6F6B6877716F716B6A726E6B6F6B686D68
          677A74726D6766746E6D6F6B68716B686B66646F6A676E6867716B68716B686E
          68676E6867716B68716B686F6867726D6A6F6A676F6A68716B686E6867716B6A
          6E6867746E6D6F6A676F6A686F6A68746E6D6D68676B6765716B6A6B6765716B
          6A6F6A68716B6A726D6B746E6B716B68716B686E6A676E68676E6A67716D6A6E
          6A6777716F716B6A0000716B6A726D6A716B6A716B6A746E6D716B6A746E6D72
          6E6B726D6B726D6A7A74716E68676F6B68746E6B726E6B6B6765716B6A716B6A
          746F6D716D6A6F6B6A716D6A74706E74706E746E6D777271777270746F6E7671
          6F746F6E746F6D726E6B716B6A716B6A746F6D746F6D716B6A77717077737177
          717074706E746E6D726E6B726D6A77716F6F6A68726D6A6F6A686F6A68746F6D
          6E6867746E6B726D6B726D6B746E6D6F6A67726D6B76716E726E6B746E6D746E
          6D726D6B726D6B6F6A6876706E716B6A746E6D6F6A686D68677A74716E686774
          6E6D716B6A746E6D6D6766746E6B716D6A76706E746F6D716D6A726D6B77716E
          746F6D726D6B746E6D716B6A6F6B68726D6B6D67656F6A676D6767716B686D67
          666E68676E68676F6A686B67656D67656F6A686D6766726D6A726D6A716D6A72
          6D6B726D6B716B6A716B6A6D68676D68676E6867716B686E6A67746E6B6D6766
          0000746E6D726E6B716D6A6F6B6874706E716B6A726D6B716B6A726D6B6F6A68
          77716F6D67666E6867746E6B726E6B696563716B686F6A68726D6B6F6A686F6A
          686F6A68716B6A726D6A726D6B746E6B746E6D6F6A68746E6B726E6B726E6B72
          6D6B6E6A676F6A68716B6A726D6A6E6A68726D6B76706E76716E746E6D726D6B
          726D6B726E6B777270716D6A746F6D716B6A746E6D7771706F6B6A746F6D746E
          6D77727177716F726E6B77716F79747177727076716E74706E77717076716E71
          6B6A777271726E6B77716F716D6A6F6B687A74726F6A68746F6D726E6B777170
          6F6B6877716F74706E77717077716F726E6D746E6D77716F77716F726D6B7470
          6E716B6A726D6B74706E6F6A68746F6D716D6B777270746E6D726E6D746F6E76
          716F726E6D716B6A746F6D716D6B77716F746F6E77716F76716E74706E746F6D
          726E6B716D6A716B6A6F6A68726E6B6F6A68726D6B716B6A0000726D6A6F6B68
          6F6A68716B6A746E6B726D6B77716F76716E74706E746F6D7C76746F6B6A746E
          6D77727077716F6D686776706E726E6B77716F746E6D716B6A726E6B77717074
          706E746E6D77737177716F716B6A746E6D746E6D746E6D74706E6F6A68726D6B
          76716E726E6B6F6A68746F6E76706E74706E74706E716D6A716D6B726D6B746F
          6D716D6A746F6E716D6B746F6D777270716B6A76706E74706E77727177716F74
          6E6D777271777271777371777371746F6E77716F74706E716D6B777371726E6D
          777170726E6D6F6B6A7A7472726D6B76716E746F6E77716F716D6B7974727470
          6E777271777271726D6B7771707A747276706E746E6D77716F74706E74706E77
          71706F6A68746E6D716B6A76716E716B6A6F6A686F6A68716B6A6F6B686D6867
          716D6A6E6A68726D6A716B6A726D6B726D6B716B6A6F6A67716D6A716B6A6F6A
          686F6B6A746E6D716D6B76706E716B6A0000716B6A716D6A726D6A726E6B746F
          6D716B6A746F6D76716E746F6D74706E7A7573716B6A746F6D77716F76706E6E
          686776716E726E6D74706E746F6D726D6B716D6B746F6D74706E746E6D76706E
          74706E716B6A716D6A726D6B746E6B726D6B6E6A676E6867716B6A716D6A716B
          6A746E6D746F6D74706E746F6D726E6B716D6A746E6D777371716D6B746E6D71
          6B6A746E6D76716E6F6B68777270746E6D77717076716E726D6B77727076716E
          746E6D726D6B716D6A746E6B746E6D6E6A6777716E716B6A746E6D716B6A6E6A
          687A7472726E6B777271746F6E74706E726D6B7773717771707A747377727074
          6F6E7773717A777479747274706E77747176716F777271777371726E6D767170
          726E6D7A7472746F6E746F6D74706E777471767170746F6D777472726E6D7773
          717771707772717772717A747377747279747376716F74706E74706E77727174
          706E7A7473746E6D0000716D6B726D6B726D6B746E6D76716E716D6B76716E74
          706E726E6B74706E7C7674716B6A746F6D77716F76716E6E686777716F74706E
          76716F746E6D716D6B716D6B76716E746E6D746F6E76706E74706E716B6A726D
          6B726D6B726D6A746E6D6F6B686F6B68746E6D716D6A6E6A68746E6D746F6D72
          6E6B726D6A6F6A68726E6B716D6A76706E6F6A68746E6D726D6B76716F777371
          746F6E777270746F6E7A757377737174716E7974717974727974717772717671
          6F76716F77716F716D6B777371726E6D7A7573777270726E6D7C7774746F6E77
          716F777271777170746E6D7771707772707A7573777271746E6D777371797471
          797472746F6E777170746E6D74706E777170716D6B74706E726E6D76716E746E
          6D74706E74706E777271726E6B716D6B76716E716D6B74706E746E6D746E6D72
          6E6B726E6B6F6A686F6A68716B686E6A676F6A67726D6A6E6867726B6A6D6766
          00006E68676E6867716B68716B6A716B6A6D6766746E6B746E6D716D6A726D6B
          7A7573716B6A716B6A746E6D726D6B6B6765746F6D746E6D746F6D6F6A68716D
          6B716B68726D6A726E6B74706E7A7472777371716D6A726D6B726D6B726D6B74
          6F6D6F6A68716B6A77716F746F6D726D6B74706E77727076706E74706E716B6A
          726D6B716B6A76716E6F6A68746E6D716B6A746F6D76716E716D6A77716F726E
          6B77716F777371746F6D77727177737177716F777270726E6D746F6E726E6D6F
          6B6A777371726D6B76716F74706E716B6A7A767476716F77716F777271777270
          726D6B77716F7772717A76747974727671707974727A7573797471746F6E7471
          6E726E6D76716E777270716B6A74706E746F6E7A7473726D6B74706E726E6D74
          6F6E716D6B6F6A68746F6D716B6A746E6D726E6B726D6B746F6D76706E726D6B
          726E6B716D6B726D6B726D6B777371746E6D797471726E6D0000746E6D746F6D
          77737177717076716F74706E7A747277716F726D6B746F6E7A7472716B6A716B
          68746E6D726E6B6B6765746E6D726D6B726E6B716B6A716B686F6A68716B6A71
          6B6A726D6A746F6D746E6D6F6A67716B68716B686F6A67726B6A6F6A686B6765
          6E68676D67666D67666F6A68746E6B726D6A6F6A686E6867716B686D6766726B
          6A6D6766716D6A6D67666E6867716B6A6B66646E68676D67656F6A67726D6A6F
          6A68726D6A726D6B726D6B716B6A6F6A686F6A68716B686B6665726D6B6F6A68
          746E6B726E6B6D686777716F6F6B68746E6B716B6A716B686E6867746E6D716B
          6A76706E726D6B6E6867726D6B76706E746E6B6F6A68726D6A716B6A746E6D74
          6F6D6E68676F6A676E6867726D6B6E68676F6A686F6A68716B686D68676B6765
          716B6A6E6867716B6A726D6B746E6D746E6D76706E6F6A68716B6A6F6B686F6A
          68716B6A726D6B716B6A74706E716B6A00006F6A68726C6A726D6A716C6A716B
          6A6F6A67756F6D75706E726D6C76706E7A74726F6A676F6A68746E6C6F6A686A
          6664746D6B716B696F6A686F6A686F69676E68676F6A676F6A686F6A68756F6D
          756F6D6F6A676F6967726D6B726D6A746F6D726D6B6F6A68726D6B746F6D726D
          6B726D6A726D6B726D6B726D6A6F6A67726D6C716B6A756F6D6F6A68756F6D71
          6C6A726E6D797472726E6C75706E726D6B756F6E797472726E6D77726F777270
          78727176716F726E6C756F6D726E6C6C6766756F6D716B69746E6C716B696C67
          65756F6D6C67656F6A686F69676F69676C6765716B69716B69746E6B726D6A6C
          6765726B69746E6C746F6D716B69726C6A726D6A716C6A726D6A6C67656F6A68
          6F6A68726D6B6E68676F6A686F6A686F6B696D68676C6765716B696F6A68716C
          6A716C6A726D6A746E6C756F6D716C6A726E6C726D6B6F6A68716C6A746F6D74
          6F6D77726F6F6A6800006F69676F6A68726D6A726C6A726D6A726C6A756F6D72
          6E6C726D6B746E6C7A74726F6B69716B6A756F6D756F6D6B6765756F6D726C6A
          726C6A6E68676F69676F6A68716B696F6A68716B69756F6D726D6A6F69676E68
          676F6A68726D6A726D6B6F6A686E6967716B69716B696F6A68726D6A746E6C72
          6C6A756F6D6F6A676F6A676F6967716B696A65636F6A676965636D6766726D6A
          6D6765716B696E68676F6A68726D6A6D67656F6A67726C6A726C6A726C6A6E68
          676F6A676F6A68696563726C696D6765726D6A716B69696563756F6D6E696772
          6D6B726D6A726D6B6F6967726D6A726C6A75706E75706E716C6A756F6D77726F
          777270726D6B746F6D726D6A746E6C75706E6E6A67726D6C726E6C7772707570
          6F777371777372787372726E6D716C6A75706F75716F77727077727076726F77
          7271777371746F6D777271777270746F6E746F6D77727076726F7C7776726F6D
          00006D67666F69676F6A676F6A676F6A676D6765726C6A6F6A676F6A686F6A67
          756E6C6C67656D67666F6A676F6967686463726D6B6F6A67716B696E68676F6A
          676F6B696F6A686F6A686F6A68746E6B716B696D67656B66646E68676E686772
          6B696F6A686D67666E67666D67666E68676F6A68716A68726C6A716B696D6766
          6E68676E68676F6A686C67656F6A686B66646F6A67726D6B6E6867726D6B6F6B
          69716B6976706E6F6A68746E6C76716F726D6B726D6A6F6A68756F6D726D6B6C
          676675706E726D6B76706E746E6C6D686777716F716C6A76716F77727077726F
          726D6B76716F75706E797472777270716D6B7974727C777479747277726F7672
          6F76716F7A75737A7674746F6E7974727874727A757476727077727077727179
          7472726E6D726D6B76726F76716F77727176716F756F6E76716F76716F726E6C
          756F6E777270726E6D746F6D777271746F6D7772706F6A670000716C6A726D6A
          75706E76716F75706F726D6A77727076716F746E6D756F6E7C7674726D6B746F
          6D76716F76716F6E696778727175706E75706F726E6C726F6D75706F76716F77
          727175706E7A747277726F716C6A726D6A726E6C756F6E76706F75706E726C6A
          726E6D726F6D746F6D77727077727175706E777271726E6D75706E726E6D7873
          72726D6B76716F726D6B726F6D777270726D6B777270726E6C756F6E76706E72
          6D6B75706E77716F77716F746E6C726D6C756F6D746F6D6A6665756F6D6F6B69
          756F6D726E6C6F6A6776706F716B6A77726F756F6D756F6D6F6A68756F6D746E
          6C77716F756F6D6E6967756F6D77706E75706E726E6C716C6A726D6B756F6D75
          6F6D6D68676F6A68716B69726D6B6F6A686F6A68746E6D726C6A6D67676D6766
          716C6A6F6A68726D6A726D6A716C6A756F6D746F6D6D6867726D6B726D6C716B
          69716B69746F6D6F6B6976706F6E696700006D67666E68676F6A676F6A676F6A
          676A6563726C6A726B696E68676F696777706E6F6A68726D6A756F6D746F6D6B
          6765756F6D746E6C76706F726D6B6F6B69726C6A726E6C746F6D716B6A76706E
          746F6D726C6A716B6A746E6D726E6C726E6C726D6A6F6A676F6A686F6A69716C
          6A756F6D756F6D76716F77726F726C6A726E6D726E6C746F6D6F6B69746F6D72
          6D6A726C6A76706E726D6B77726F746F6D726D6B77716F726D6B76716F76716F
          76706E726E6C726E6C746F6D77726F6D6867777270726E6C777270756F6E726E
          6C7A757375706E77727076716F76716F726E6C78737175706E787271756F6E6D
          6867756F6D787371777270756F6D726E6C746E6D76706F756F6D6F6C6A726E6D
          76726F777271746F6D746F6D756F6D76716F6F6C6A6E6967746F6D6F6B6A746F
          6D75706E726E6D777271787472716D6A746F6D756F6D726E6C746F6D77727071
          6C6A7772706D686700006F6A69746E6D75706F746F6D756F6D716C6A76716F75
          6F6D726D6B756F6D7B7574726E6C756F6E77716F7772716E6A6777727177726F
          76716F726E6C726D6B75706E76716F756F6E746F6D7A7472787371726D6C726D
          6C75706E746F6D77726F756F6D6F6A696F6A686F6A69726D6B76706E75706E75
          706E77726F726D6B726D6B716C6A726D6C6F6A68756F6E726E6C746F6D787372
          726E6D77726F726D6C746F6D797472726E6C75706E76716F77716F75706E756F
          6E726D6B76716F6D686777726F726D6C78737175706E726D6C7A7472756F6E77
          737175706F756F6E746F6D7873727772707A7473777270716C6A76716F7A7472
          77716F746F6D726D6B726D6C76716F756F6D6F6A68726D6B756F6D76706F726D
          6C716C6A716C6A726E6C6F69676D6867756F6D716B6A746E6D746F6D6F6B6974
          6E6C726D6B6E6867716B69726D6A6D6867716C6A756F6D6F6A68756F6D6D6766
          0000716D6A756F6E77726F746F6D76716F736E6D756F6E76716F726D6B756F6D
          797371726C6A75706F77726F7772706B676578737177727076716F756F6D726D
          6B726D6B756F6E746F6D736E6D78737177726F736E6C746F6D756F6D736E6D74
          6E6D726D6B716B6A6F6A68716D6A706B69756F6D756F6D75706E77726F726C6A
          706B69706A69756F6D6F6A67726D6A6F6A68726C6A746E6D6E6867756F6D6F6A
          68726D6B787371706A69736D6B76716F75706E746F6D726D6B726D6B746F6D6B
          676577716F6F6A68746E6C726C6A6E6967756F6D6F6A67726D6A726D6A716C6A
          706A69756F6D756F6D76716F726D6B706B6976716F77727078727176716F736E
          6C756F6E76716F756F6D6F6A68726D6B736E6D756F6E716C6A736E6D736E6C75
          706E706B6A6D6767726D6B716B69736D6B746E6D726C6A76716F736D6B6E6967
          756F6E756F6D726D6A716C6A75706E716C6A76706E6D68670000706B6A746F6D
          77726F746F6D77716F726D6B77726F787372726D6C746F6D787271726D6B746F
          6D76706E7772706D676777716F76716F76716F756F6E746F6D77727078737275
          6F6E746F6D79747278737275706E75706F777270767270797472777271726D6C
          726D6C716C6A726D6C77727076716F797472787271736E6C746F6D736F6D7772
          71716C6A726D6B726D6A736E6D77716F726D6B77726F726D6B736F6D79737275
          6F6E77727079747279747276716F75706E76716F75706E6E69677A767375706E
          77726F746F6D726D6B7A7472726D6C756F6E726D6C736E6D736E6C77726F7671
          6F76706F726D6B6F6A68746F6D79737277727076706F736E6D76726F77727077
          7270706B6A716C6A736E6C75706E706A69716C6A726D6B746E6C6F6A686B6765
          726C6A746F6D756F6D756F6D736E6C75706F76716F6F6A69756F6E75706E726D
          6A716C6A76706E726C6A7872716F6A690000746F6E7773727A76747B77767F79
          777874727A76747A747375716F7772707F79777772707974737B77747B777472
          6D6C7D77767A76737A767476726F7773727974737D79767874727772717D7776
          79747275706E756F6E76716F756F6E77727077727175706E75706F756F6E7672
          6F7C77767A76747B76747A767375706F777270746F6D77726F706B6A746F6D72
          6D6B726D6C76706F716C6A76716F716C6A746F6D79747276726F7A76747B7674
          7A767479747276716F76716F7873726F6A68787270736E6C75706F75706E726D
          6A7A7472726D6B75706E756F6E736E6D726D6A77726F77716F77727075706E72
          6D6B76716F78737176716F756F6D6F6A68726C6A736D6B756F6D6E6867726D6B
          736E6D756F6D716C6A716B6A75706E76706E716C6A6D6867706B69726D6A746E
          6C736E6C716C6A756F6D756F6D6F6A68746E6D76716F716C6A716C6A77727071
          6B6A756F6D6D676700006D6767726D6A736E6C746F6D75706E726D6B746E6C76
          716F716C6A736D6B7B7673736D6C736D6C77726F7772706F6A6777716F76706F
          777270716C6A726D6A736D6C756F6D746E6D706B6978727175706E706B69706A
          69716C6A716B6A756F6D726D6A6D67676F69676F6A68726C6A756F6D736E6C75
          6F6D77716F6F6A68726D6A6F6967706A686B67656F69676D68676F6967716B69
          6F6A67726D6A6F6A686F6A68736D6B6F6A67726C6A746D6B726C6A736D6B706A
          68736D6B756F6D6C6765746E6C726C6A736D6B726D6A6E6967787371706B6971
          6B6A6F6A68726D6A6F6A6875706E756F6D756F6D726D6B706B6A75706E777270
          756F6D756F6D6F6A69746E6C75706E756F6D706B6A736E6D736E6C77716F736E
          6D726E6C77727079747275706F6F6B6A756F6E76716F787372777271736E6D75
          716F75706F726D6B7873727A7473746F6D736F6D787372746F6D787371726D6B
          0000716D6B76716F756F6E76716F77727175716F77727179747275706F777271
          7F7A7777727076726F7A74737C7776716D6A79747277727177737175706F756F
          6E76726F7A747278737275716F7C777679747275706F7672707772717672707B
          767479747275706F7672707773727772717A76747A74737A76747F7A77787472
          7C77767773717A7673746F6E767270777270756F6E7974727874727A76747672
          707874737F7A777974737B77767D79767D77767A74737974727974727A747372
          6D6C797472777270787372777271777271817B7A797473797473777271787472
          75716F7C77767A76747A7674787372746F6D7874727F79777B77747A7674726E
          6D7874727A7674797472736F6D7772707772707A767375716F75706E7A747379
          747275706F6F6A69736E6D75706E777270756F6D726D6B746F6D746F6D716D6B
          777270777371726D6C75706F7A767475706E787371716D6A0000716D6B77726F
          75716F77727177747175716F7772717A747275716E77726F7D77777772717774
          717A76747A7674716D6B7A74727772717A7474746F6E746F6E75716F7A767477
          727177716F7A747175716E706B6A726D6B736E6D756F6E78747277716F716C6B
          736E6C726D6B726E6B77716F756F6E75716E7A7472736E6C756F6E726D6B746F
          6D6E6867726C6B706B696F6B68736E6C6F6A67726C6A706B68706B6977716E74
          6E6C756F6D77726F77716F746E6C716C6A736E6C726D6B6C6765756F6E716B69
          726D6B716C6A6C676577716E6D6767716B6A6D67676F69676D6765746E6B726C
          6A6F69676E67676B6765706A67756F6D716B68716B686B6765706B67726C6A72
          6C6A6D67656E68676F6A67716B696E67676E6767726C6A746E6B6F6967686563
          6E67676E6867716B68706B686C67656F69676E67676A65636E6867706B676B65
          646D6765726B696B6765726C6A6B656400006E6767716B6A6F6A676F69676F6A
          676E6767726C6A756E6C6E67676E6767756F6D6F6967706B68746E6B736E6B6B
          6564726C69706B68736E6B716B6A716C6B736E6C77716F746E6D726C6B787471
          756F6D6F6B68726D6B716B696F6B68726D6B706B686E68676F69676E68676F69
          67726C6A706B68716B6977716E6F6967716B696F6A67726E6B6D6767706B696F
          6967706B69756F6D726D6B736E6B726C6A716C6A77716E736E6B77716F77716F
          77716F756F6E726D6B77716F7772716F6A68756F6E736E6C77716F726E6C6F6A
          687C7774716C6B77726F726D6B746F6D726E6C78747177727177716F746F6E71
          6C6B7772717D77767A7472787471726E6B756F6E75716E756F6E6F6B69716C6B
          75716E77716F746F6E726D6B7772717A747275716F706C6B77747175716F7A77
          74777471736E6D75716F75716F716D6B77716F787472726D6B75716F78747272
          6E6C7A7472716C6B00006C6765706B68706B686E67676F6A676E6767716B6973
          6D6B6E67676F6967756F6D6E6767716B69746E6C756F6D6C6765746E6B706B69
          726D6B6F6A676F69676F6967736D6B706B686D6765776F6E6F6A676D67676E69
          676F6B68706B69746E6C756F6E6F6A67726C6A716B69726C6B726C6A746E6D74
          6E6D77726F716C6A736E6C716C6A736E6B6E6867736E6C706B6A6F6A68726E6B
          716B69716B69706B686F6967736E6B6F6A67726D6B756F6D746E6C726D6B716B
          69736D6B726D6B6C6765736E6B716B69756F6D726E6B6E69677A7472726D6B72
          6D6B706B6A706B696F6B6877716E756F6E756F6E746F6D716D6B75716E7C7774
          756F6E756F6E6F6B68746F6D77716F746E6C706B69716C6B756F6E77716F7571
          6E726D6B75716F77726F75716F6D6867736E6C726D6B77716F756F6E726E6C74
          6F6D736E6C6F6B69756F6E77716F6F6B69726E6C77726F716C6A77716F706B69
          00006B6765726C6A6F69676E6867716B696E67676F6A67746E6C706B686F6A67
          77716F6F6A676F6A68736E6B776F6E6E676777716F726D6B726D6B6F69676F69
          676E6767756F6E736E6B6E686777716F726C6A6E68676E67676F6A686F696773
          6E6C726E6B6E69676F6A676E68676F6B686F6A67716B69726C6A756E6C6E6867
          716B696E6967716B696A6564716B696E68676E6867726C6B716B69706B69726C
          6A726D6B77716F726D6B756F6E77716F77716F756F6E756F6D746F6D75716E6E
          686775716E746F6E756F6E736E6C6F6B68787271706B69726D6B6F6B686E6967
          6F6967756F6D706B68716B69706B696E6967726C6A787271736E6B726D6B6B67
          65716B69736E6B706B686E6867706B68716C6A716B69726D6B6E6967726D6B73
          6E6B716B696A6564726D6B6F6A67726C6A716B696E6867716C6A706B696D6767
          726C6A726C6A6C6765706B68726D6B6E6867726D6B6D676700006E6967756F6E
          736E6C746E6D77716F726D6B736E6B7874716F6B686F6A687872716F6B68706B
          68736E6B736E6B6B6765756E6C6F6967726C6A6E6867706B686E6767756F6D72
          6C6A6F6A67776F6E726C6A6F69676F69676E69676F6967726D6B726D6B6E6867
          6F6A67726C6A716B6A726D6B726D6B726D6B756F6E716B69736E6C716C6A736E
          6C6E6867726D6B6F6B68716C6A736E6C746E6D726E6B77716F756F6E78747175
          6F6E77716F77716E77726F756F6E75716E78747277716F6F6B6977716F77716F
          756F6E736E6C6F6B68787271706B69726E6B726D6B726D6B6F6B68777271736E
          6C756F6E746E6D706B6A746E6C7A7472746E6C746E6C6F6A68746F6D77716F77
          716F716C6B726D6B746F6D77726F77716F726E6C75716F7A747275716F6E6A68
          77727177726F78747277726F726E6B756F6E726E6B6F6B69756F6E756F6E706C
          6A736E6C756F6E706B6977726F716D6B00006E6967726D6B726C6A716B69756F
          6E6F6B68716C6A77716E6F6A686F6A6777716E6F6967716B6A736E6B77716E6E
          69677A7472756F6D756F6E716C6B726E6B706B6A77716E746F6D716B6A77726F
          726D6B706B69706B69726D6B726D6B756F6E77716F716D6B726E6C756F6E746F
          6E77716F77716F777271777271726C6B736E6C726E6B726D6B6E6867706B686E
          6967706B69726D6B726D6B736E6C746F6D736E6C746F6D746E6C756F6E756F6D
          756F6E736E6C746F6D756F6E746E6D6E6967726C6B726D6B746E6C736E6C6F6B
          697A74716F6A67726C6A726D6B706B696F6B6877726F716B6A756F6E746F6D6F
          6B68756F6E7C777475716E75716E716C6B75716F777271777271726E6C736E6D
          746F6D7A7472777471736F6D77716F78747277726F6E6A6875716F756F6E7874
          7177716F726E6C75716F726D6B6F6B6877716F75716E706B69756F6E756F6E70
          6B6A77716F726D6B00006E6867726C6A6F69676E6867716B696F6A67706B6874
          6E6C6E68676F696777726F6F6967716C6A716B6A736E6B6C676577716F756F6E
          736E6C706B69706B696F6A6877716E736E6C706B6A77726F746E6D706B69726D
          6B736E6D736E6D77716F756F6E716C6A726E6B736E6D726E6B75716E746F6D75
          716E7A7471726E6C736E6C726D6B726D6B6D6767726D6B6F6B68716C6A756F6E
          746F6E756F6E746F6D746F6D77716E756F6E777271787471777271726E6B736E
          6D77716F746F6D6F6A68746F6E75716F77726F746E6D706B697A74726F6A6774
          6F6D736E6C736E6C716C6B7A7472736E6D77727177726F75716F77726F7B7774
          777271777471746F6E7874727774717A7674726D6B726E6C746F6E7772717571
          6F726D6B756F6E756F6E726E6C6C6767726E6B726C6B756F6E756F6E706B6973
          6E6B706B696E6967746F6D756F6D6F6A67736E6B756F6E6E686777716F6F6B68
          0000726E6C77716F746F6E726D6B77716E736E6C726D6B75716E706B69706B69
          787271716C6A726C6A726C6A756E6C6C6765756F6D716B69736E6C6E68676F6A
          686E6967746F6D726D6B706B68756F6E726C6A6E67676D67656E68676D676572
          6D6A6F68676C67656B67656E68676F6A67716B69726C6A726D6B756F6C6D6765
          6F69676F69676F69676A65636F6A676F6967716B69726D6B6F6B68726D6B736E
          6B716C6A77716F726C6B77727177716E75716E716C6A706B68746F6D756F6E6D
          6767736E6C746F6D756F6E746F6D716C6B7C7774706B69726C6A716C6A726C6B
          6F6A6877726F756F6E777271746F6E736F6D7772717D77777874717A7472746F
          6E7774727A74727A767475716E75716F77727177747177716F746F6E77726F7A
          747277716F6F6B6877726F77716F7A74747A7472736F6E787472777472736F6E
          7A76747A7774777271787472787472746F6E7B7776746F6E00006E6867706B68
          6F6A676F6A68736D6B716B69706B68736E6B6E6967716B6977716E6F6A68706B
          69726C6A746E6C6D676777716E726D6B736E6C6E6967726D6B6F6B68746E6C72
          6E6B6F6B68756F6E726D6B706B69706B69706B69706B69746E6C736E6B6E6867
          6E67676F6A676F6967726D6B746E6D746F6D77716E6F6B68726D6B726C6A716B
          6A6E67676F6A686F6A67716C6B726E6B726C6A726C6A716B696E6967726D6B6F
          6A67756F6D746E6C726D6B726D6B716C6A746E6D726C6A6C6765716C6A726D6B
          746F6D726C6A6F69677A7471716C6A736E6C756F6E746F6D6F6A6877716F736E
          6C75716E726E6B726C6B736E6C78747175716E746F6D6E6967726C6A736E6B75
          6F6D6F6A68706B69726C6B726D6B706B686F6A67716C6A726D6B6F6A67696563
          726D6B716B6A77716F736E6C6F6B68756F6E726E6C6E6967756F6E75716E6F6B
          68746F6D77716E6F6A68777271716C6A0000726D6B77716F736E6C736E6C7772
          71746F6E746F6D77716F706C6A75716E7A7474716C6B726E6C75716E75716E72
          6D6B7A7472726E6C756F6D706B6A726E6B716C6A77716F77716F736E6C787271
          756F6E746F6D716C6A716C6A726D6B77726F756F6E6F6B696F6B68726D6B726D
          6B746F6D756F6E77726F7A7472736E6C77716F77727175716F706C6B746F6E75
          6F6E75716F77727177727177747175716F736F6D78747277716F7A74747A7472
          7874727774717772717A7472777271726E6C777271787472777471787472736F
          6E7F7A7777726F77726F777271777271736F6D7A767475716F77727175716F75
          716F7874727F7A777A77747C7776736F6E7772717772717A747477726F75716F
          746F6E77727175716F716C6B77716F77726F75716F706C6B78747275716F7A76
          7477727175716F787472736E6D706B6A777271787472726E6B77716F7A747274
          6F6E7B777477727100006F6968756F6D726C6B756F6E79727275716F77726F79
          7472726E6C756F6F7A7572706C69756F6E726D6C736E6C6D6767756F6C726C6B
          726D6B6F6867726C6A6F6A68756F6D756F6D726D6B756F6E726E6C706B696F6A
          686F6A68706C69756F6E736F6C706C6A726C6B736F6D736F6C75716F75716F77
          726F7A7572726E6C75716F756F6D736F6D6E6867726C6A706C69726E6C756F6D
          756F6D756F6D75716F726D6C77716F756F6E78727177726F756F6D756F6E726C
          6B77726F77726F726D6B756F6F78727277726F787272726E6C7C7775756F6E75
          6F6F75726F77726F726E6C7A757277727177726F726E6C75716F77726F7E7876
          7772717A7572726D6C77726F7874727A7572736F6E736F6D75716F7975727772
          6F726E6C75726F77726F75716F706C6B777271736F6D7A7572777271736F6D7A
          7572726E6C6F6C6975716F77726F726D6C77716F797272736F6D7C7775756F6F
          00006D67656F6B68706B69726C6A756F6D736E6C726C6A756F6C6F6A68726E6C
          797271726C6A736E6C726D6B756F6C6C6765756F6E706B68736E6C6F69676F6A
          686F6867726C6A736E6C6F6B68756F6E6F6B686F6A686E68676D67656D676570
          6B686F68676A65636C67656D67656E6867726C6A6F6A68726C6A756F6C6F6968
          6F6A686F68676F6A686A65646D68676E68676F69676F6A68706B686F6967726C
          696F6A68726D6B726C69736E6C726D6B726C6B726D6B6F6A68756F6C756F6C6D
          6867726C69726D6A726C6A726C696E68677A7572726C6B726C6A706B69736F6C
          6F696777716F726E6C726D6B6F6B68726D6C706C6977726F726C6A736E6C6E68
          67726C6A726C69726C6A6E68676F6A686F6A68726D6B726D6B6C6765726D6C72
          6C69726C696A6564726C696F6A68756F6C726C6A6F6967726C6B6F6A686E6867
          756F6E756F6C6F6967736E6C77716F6F6B6877716F726D6C0000726D6C756F6D
          726D6C726C6A77716F726E6C726C69736E6C6E6867726D6B77716F6F6867726D
          6B726C6A736E6B6C6765756F6D706C69736E6C6F6867726C6B6F6A68726C6A72
          6C68706B68736E6C6F6A686F68676F69676F6A68726D6B756F6E706B686C6765
          6E68676F69676F6A68756F6E6F6967726D6B78726F726C6A736E6C726C6A726D
          6B6C67676E6867706B68706B68726C69726C69726C69726E6C756F6D77716F75
          6F6E756F6E736F6C726C69736E6C6F6867726D6B736E6C6E6867726D6B756F6D
          726C6A726C6A6A6564756F6E6F6A686F6B68706C69726E6C706C6977716F726E
          6C736E6C6F6A686F6A68706C6979726F726C6A756F6D6C67656F6967726C6A73
          6E6C6F6A686F68676F6967726D6B706B686C6765726D6B706B68726C6A6C6765
          726D6B726C6A756F6E726D6B6F6967726D6B6F6A686E6867726D6B756F6E6F6B
          69736E6C77726F6F696777726F726C6A0000726F6C77726F756F6D756F6E7A75
          7275716F77726F797572726E6C7772717E787775726F7975727A75747B777573
          6F6D7C77767772717C777675716F7874727772727A76747A75727772727A7574
          77726F736F6D726F6C75716F78727278727275716F6F6C69726E6C756F6F756F
          6F77727175716F7A75727C7775756F6D77726F736F6D75716F6F6A68726D6B72
          6D6C756F6D736F6C736F6C756F6D77726F756F6E7A75727A76747F7977797472
          7772717B76747772717A7674797572726D6B756F6D78727277726F75716F706C
          6A797472756F6F75716F756F6E756F6E726F6C79747275726F787271756F6D75
          6F6F75716F7F79777A75727C7775756F6E75716F7974727A757277727175726F
          777271787271777271726E6C77727277726F75716F706C6A77726F756F6E756F
          6E756F6E706C6A756F6D726D6B706C6977716F77726F706C69756F6E79727272
          6E6C797472756F6E0000726D6B77726F736F6D77726F7A757277726F756F6F77
          726F6F6C6977726F7A7572756F6E7A75727874727B7675736F6D7C777577726F
          7B767575716F7974727772727B77757975727772727A757275716F726D6C736F
          6D756F6F75726F78747275716F6F6A68726D6B75716F726D6C756F6E756F6E78
          72717B7574736F6C756F6D726D6B726E6C6F6A68706C6A736F6D756F6D736F6C
          726E6C726D6B756F6F726C6A77726F756F6E77716F756F6D726D6C77726F736E
          6C75716F756F6C6F6968736F6C756F6C726D6C736F6C6E686777726F726D6B73
          6F6C726C6A726E6C6E686777726F726C6A756F6C706C69726C6A726E6C7A7572
          756F6E77716F6F6867706B69726D6B756F6E6F6968706C69726D6B726C6A726C
          696F6968736F6C756F6D756F6E706C6A756F6E726E6C736F6C756F6D726C6B75
          6F6D706C6A6F6A68756F6D75716F706C69756F6D75716F706C6A756F6E726C6A
          00006E6867726C6A6F6867706B68756E6C726D6B726C6A756F6C6F6967726D6B
          77716F6F6A68726D6B736E6C756F6D6F686775716F6F6B68736E6C6E6867726C
          6B726C69756F6C726C6A6F6B68736E6C706B686E68676E68676F6A686F6A6872
          6C6A6F69676965636F69676F6A686F6A68706B686F6A68756F6C756F6E726C6A
          756F6D726E6C726D6B6F6A68726C6A726D6B6F6A686F6A686F68676F6A68726D
          6B6F6A68756F6C726C6977716F756F6E726E6C756F6D726C6B756F6C726D6B6F
          6867726D6B726C6A6F69676F6A686B656477716F706C69726C6B6F6B68726C6A
          6F6B6877726F726C6B756F6D726D6C726E6C756F6E7C77757872727A7572726C
          6A756F6E756F6E7A7572736F6D736F6D75716F75716F736F6D736F6D7A75727A
          7572797472736F6D77726F75716F77726F75716F736F6D756F6E6F6C69726E6C
          7B76747C7775756F6E7772717B7674706C6A797472736F6D00006F6A68756F6D
          726D6B76706E777270736E6D736E6D77716F6F6A68736E6C77726F736F6D7772
          70777270787372726E6C797472736E6D797472736F6D76716F75706E79747275
          6F6D736F6D787372736F6D706C6A726D6C726D6A756F6D76706E736E6C6D6766
          706B6A736F6D736E6C77726F76706F76706E787371726D6A766F6D736D6C726D
          6B6E68676F6967736D6B706B69706B696F6A67706B69706B696F6A68726D6A6F
          6A67756F6D726C6A706A68736D6A706C6A736E6C736D6B6F6A68726D6A726D6A
          706B69726C6A6C6765766F6D6F6967706A686F6A68706B696F6A6776706E706B
          69726D6B706B69706B69726D6A7A757276706E77726F6D68676F6A68726D6A76
          6F6D706A696F6967726C6A756F6D726D6C706B6A756F6D726D6B736E6C6E6967
          736D6B726C6A726D6B76706E706C6A736F6D6F6A67706B69766F6D76706E6F6A
          68736D6B77716F706A69766F6E706A6900006F6A67736F6D706A69756F6D7771
          6F736D6B726D6B736E6C6F6967706B69766F6D706B69706B6A736E6C766F6D6E
          686776706E726D6B76706E706B69706C6A706A69756F6D736D6B6F696776716F
          726D6A706C6A736E6D736F6D77726F7974727772706E6A67726D6B736F6D736E
          6D76706F76716F7873717A757376706F77727076716F736E6D6F6A68706D6A78
          7371736F6D726D6B736E6C736E6C76706F736E6C777270736F6D78727076706E
          736F6D766F6D726D6A76706F76706E706C6A76706E756F6D726D6B736E6D6D68
          6777726F726D6A726D6A726C6A736E6C706C6A76706E726D6B756F6D736E6C73
          6E6D756F6D7A757377726F787270706B69726D6B76706E777270726D6B706C6A
          736E6C76716F736E6C706C6A77726F777270787472736E6D77727076716F7570
          6E777270736E6D756F6E726D6C736E6D7A7573787371706C6A756F6D77716F70
          6B6976706E6F6A69000075706E79747275706E7974727B777478737176716F7A
          7573726D6C7773727E7A7776716F7A7573777371797472736F6D797572736F6D
          7A7573736F6D77727076716F787371777270726E6D78737276706F726E6D7570
          6E76706F76706F79747276716F6F6B6A736E6D736F6D726D6B76716F76716F78
          73717A757375706E78737177727076726F726D6B726E6C78737276716F76716F
          756F6D756F6D76716F726D6C77726F756F6E7A757377727076716F7974727670
          6F7A7572787371736E6D797472787271777270736E6C6E6967787270736E6D73
          6E6D736F6D756F6D736F6D777270736E6C76706E736E6C706B69736E6C7A7472
          76706E76706E6E6967726D6B756F6D766F6D706B6A6D6867706A68726C6A706B
          696D6867726D6A726D6A736D6B6E6967736D6B706B696F6A67706B696D676672
          6C6A6C67656E6867756E6C736E6B6D6765706B69756E6C6C6765706B696B6664
          0000726D6C787371756F6E7974727B777477727076716F777270706D6A756F6E
          7A7573726D6B76716F736E6D77716F726D6C777270736E6C77726F706C6A736F
          6D736E6C777270766F6D726D6A797472736E6C706C6A736F6D736F6D756F6E79
          7472777270706C6A75706E77727076716F7974727873727A77747D777776716F
          7A757377727077727175706E736F6D7A75737A757379757276716F756F6E7772
          6F736F6E7974727975737B77747A7572756F6E7A7573756F6E79747278737173
          6F6D77726F77726F756F6D726D6C706C6A7A757475706E76726F76716F76716F
          736E6D79747276706F77727076706F736F6D76716F7A74727973727A7472726D
          6C76706E7772717B777476706F736F6D736F6D76706F756F6E736E6D76716F76
          706F76706E706B69736D6B736F6D726D6B756F6D736E6D76706E706C6A706C6A
          797472777270706B6A76706E787371736E6C777271706C6A0000706C6A76716F
          706B6A756F6D777270736E6D76706E777270706C6A726D6B77716F706C6A766F
          6E736E6D777270726D6C787371726D6A76706E726D6B766F6E726D6B76716F76
          706E726D6B797472736F6D706C6A726D6B726D6B736E6D76716F726D6B6D6867
          706C6A756F6D726D6A736F6D736F6D736F6D787270706B69756F6D706B69726D
          6A6D67666E6867766F6D736E6C736D6B706A68706B69706A686E6867736D6B73
          6D6B76706E756F6D726D6A756F6D726C6A736E6C76706E6F6A67726D6A726C69
          6F6A676F6A676B6664736E6C706A68726C6A6F6A67726C6A6F6A67766F6D6F6A
          67706B69706B69706B69726C6A77716F76706E756F6D6F6A67726C6A726D6B76
          706E6F6A686F6A67706B69736D6B6F6A676D67676F6A67726D6A726D6A6E6967
          706C6A736E6C726C6A726D6B706B69726D6B706B696E6867756F6D766F6D6C67
          65706B69756F6D6F6967736D6B6D68670000726D6B7A757475706F7974727A75
          7376716F7773717A7573726E6C76726F7B777475706F7975727773717B777575
          706F7D777776706F797472736F6D76716F736F6D787271777271726D6B7A7573
          726D6B726D6B736F6D736F6D736F6D79747276706E6F6A69726E6C777271756F
          6D756F6E736F6D76706F787270736E6D76716F706B69736F6D6E68676F6A6777
          716F736F6D736D6B706C6A726D6B736E6C6E6867766F6D736F6D79737176706E
          726C6A766F6D736E6C736E6C77716F706C6A736F6D736E6C756F6D726D6A6D68
          6777726F726D6B736E6D706B69736E6C6F6A6877726F726C6A736F6D736F6D75
          6F6D76706F7B757377726F787270706C6A736E6C76716F787371706C6A726D6B
          736E6C766F6E726D6B706C6A736F6D76716F777270736F6D76716F7772717670
          6F77727076706E76716F726D6B726D6B7A75747B7775706C6A7672707A757476
          706F7A757376706F0000736F6E7B77757772707A7775807A7A7A75737873727A
          757476716F7773727D777776727077737176716F787372736E6C797472726D6B
          787371726E6C76706F736E6D77727176716F736E6D797472726E6C756F6E7671
          6F76716F76716F7A757277726F706B6A726E6C777270736F6D77727076726F7A
          75727C77757772707A757376726F777371736F6D736F6D7B77757A7572777271
          736F6D76716F777271726D6C7974727974727A7574797472736F6D7772707670
          6F7974727A757476706F787372797472777270777270706C6A79747276716F76
          716F726D6B736F6D706A69797371726D6B77716F736E6C76706F76706E7A7472
          7873717B7774736F6D76716F7A75747A757476716F777271777271787372756F
          6E706C6A76706E77727078737276706F76716F76716F756F6D77727076716F77
          7270736E6C706C6A7772707A77746F6A6876716F7A7472756F6E79747275706E
          0000726D6B777271736F6D76726F7D7777797572797472787472736F6D76726F
          7B777476716F7874727772717B777475706F7A757476716F7A7573726D6C766F
          6E736F6D76706E76716F736E6C787371706C6A6F6A68726C6A726C6A736D6C77
          716F736D6C6E6A67706C6A756F6D706B69736D6C706B69736F6D77726F726D6B
          76716F726D6A726D6A6F6A686F6A6877716F76716F736F6D706B69726D6A766F
          6E6F6A6877716F77726F78737177716F726D6C76706E756F6D7873717A757375
          6F6D77726F76706E756F6D736F6D6E6967777270756F6E777270756F6E77726F
          736F6D7A7573736F6D777270766F6E76706E76706E7A747276706E7A7573736E
          6D76706F777270797472736F6D726D6B76716F777270736E6D6F6A67736D6C76
          706E76706E726D6C736F6D736F6D736E6D76716F756F6D766F6E726D6B706B6A
          76716F7872706E6967736E6D76706F726C6A756F6D706A6900006F6B69777270
          736E6D756F6D797371756F6D756F6D77716F726D6B736F6D797372736E6C7671
          6F76706E77726F706C6A736F6D736E6C756F6D6D6867706B696F6A68736E6C76
          6F6D726C6A756F6D6F6967706A686E6867706B69706B69736E6C706A696A6563
          6C6765706A676D67656F69676E6867706B69756F6D6F6967706A68706B69706C
          6A6F6A686E696777726F736E6C726D6B6E69676F6967706A686D6867736D6B73
          6E6C77706E736E6C6F6A68726D6A726D6A766F6D77726F726D6B76706E756F6E
          756F6E756F6E706B6A78727176716F77726F736F6D76706E726D6B7A7573736F
          6D76716F736F6D76716F76706F78727077716F777270706C6A736E6D736F6D76
          716F726D6A6F6A67766F6E77716F726C6A6D6867706A68726D6A706B686B6664
          6E68676E68676F6A676F6A67706A686F69676D68676C6765706B68736D6B6A65
          636F6967766F6D6F6A67726D6A6F696700006F6A68756F6D706B69706C6A7873
          71736F6D726D6B736E6C6F6967726C6A76706E706C6A736E6C736E6D756F6D70
          6D6A77727077727177716F706D6A766F6E736F6D76706E777270736E6D77726F
          706B6A726D6B6F6A67736E6D736E6C76706E726C6A6D6867706B6A736E6C736E
          6C76706E736E6C756F6D76716F706B6A736F6D736E6C726D6B706B69726C6A77
          716F756F6D76706F726D6B76706E76706E706B6A76706F76716F77726F77726F
          706B69726C6A706B69736D6B756F6D706B69756F6D726C6A726C6A6F6A676C67
          65736D6B706B69706B696E6867706A686F6A6776706E706C6A736D6B726C6A73
          6D6B726D6A77716F736D6B76706E726D6A76706E736E6D76706E736D6C706B69
          736E6D77727076706E6F6A68736E6C76716F77726F706B69726D6B736D6C726D
          6B736D6B736F6D736E6D6F6A696F6A69756F6D77726F6D6766726D6C77727072
          6D6B77726F736F6D0000736F6D7A757276716F76726F7C77757772717772707A
          757475706F7975737C77757672707A75737772707A757476716F7B77757A7573
          797572726D6C7772707772717A75737A777475706E7B7774736F6D76716F736F
          6D7873727874727A7573777371726D6C76716F78747276716F7A75747772717B
          77757D77777773727A777479757377737275706F75706F7C77757A7573777270
          75706E77726F777271736F6D7873727873717C77757B7774736F6E7773717672
          6F77726F7A757276716F77727076706F76706F726E6C706C6A77726F736F6D76
          706E726D6A736F6D726D6B79747277726F77726F77727077727076716F7D7775
          7873727A7574736F6D7772707975727A757377727075706E7772717A75727670
          6F706C6A736F6D76716F76706F706B6A726D6B726D6A726D6B736E6C736E6D75
          6F6D706A696F6A68766F6D7872706D6766726D6B766F6D706A6976706E726D6B
          00006C6765726D6A6F6967706A68746E6C706A686F6A68746E6D6F6967766F6E
          77716F746F6D746E6C716C6A746E6C6E6867726D6A726C6A726D6A6D6765706A
          686F6A68736E6B746E6C6F6967756F6D6E6867706B69706B69726E6B716C6A72
          6E6B706A686A66646D67666F6A67706A69746E6D6F6A68746E6C746E6D6F6967
          736E6C716B69726E6B726E6B726D6B787270756F6E726E6B6F6A67726E6B726C
          6A6F6967726E6B746E6C78726F787270726E6C76706F746F6D78727078727174
          6F6D746F6D746F6D726E6B6F6A686F6A68766F6E726D6A736E6C6F6967746E6C
          716B6978726F726D6A736E6B736E6B746E6C746F6D797372756F6E746E6C6F69
          676F6A67736E6B736E6B716B696F6A68726E6B77716F736E6C6E6967726D6A73
          6E6B736E6C6F6A67716C6A706B69726D6A726D6A716B69736E6C6E69676E6967
          746E6C76706E6E6767726D6A766F6E6F6967746E6C6F696700006E6967746E6C
          706A69726D6A77726F736E6C726E6B766F6E706B6976716F7A7472736E6C7670
          6E726D6A766F6E6F6A68726D6A736E6C746F6D6F6A68716C6A726C6A756F6D76
          706E706B6977726F6F6A68716C6A706A69726D6B726C6A77716F746F6D6F6B69
          726D6B746F6E746F6E787271746F6E797472787372756F6E76706F726E6B726E
          6B716B6A6F6A6878726F756F6E736E6C716C6A746E6C746F6D6F6A68736E6C73
          6E6B766F6E78726F706A69736E6B726D6A76706E797472746E6D746E6D76706E
          736F6D726D6B716C6A787270726E6C736E6B6E6967726D6A706B6978726F726D
          6A736E6B746E6D726E6B746E6C7B7572766F6E746E6C706A69746E6C766F6E74
          6E6C726E6B706A69726D6B76706E736E6B706B6A76706E766F6E76716F726D6B
          746F6D746F6D766F6E726E6B736E6C77726F706B6A6F6A68726D6B78726F6C67
          65726E6B77726F716C6A77716F726E6B00006F6A67756F6E736E6C746E6D7670
          6E726C6A716C6A766F6E6E6967746E6C756F6D6F6A67746E6C716C6A736E6C6F
          6A68746F6D756F6E777270706B6A756F6E726C6A78737176706E716B6A77716F
          6F6A68726C6A706B69746F6D746F6D76716F726E6B6E6967706B69726E6B746F
          6D76716F726C6A76706E766F6E736E6C76716F736E6D76706E716C6A716C6A79
          7472756F6E746F6D726D6A76706F756F6D716C6A76706F76706F797371787270
          726D6A76706E736E6C76706E766F6E716B69726C6A726E6B726E6C6F6A676F69
          6777716F726E6B746F6D706B6A736E6D716C6A79737277727076716F736E6B73
          6E6C726D6A78716F746E6C726C6A706A68746E6C726E6B726D6A726D6A6F6967
          726E6B76706E726D6A6F6A67736E6B756F6E76706E726C6A726D6A736E6C7670
          6F726E6B746F6D76716F6E6967716C6A736E6C7A74726D6767756F6E77726F70
          6B69766F6E716C6A0000746F6E7873727672707873727D787778737177727076
          716F726E6C7873727B777476706E78727176706F756F6E726E6C756F6E756F6E
          787371726D6B76716F746F6E7B7775797472736F6D797472746F6E76716F7570
          6F767270787271797572777270746F6E756F6E78737276726F787371756F6E78
          727078737276716F7A757376726F77727075706E76706F7B75737873717A7574
          7672707B777579747276716F7A75737B7775807A78807B7876716F7975727874
          727A75737A75747873717974727873727672707873727672707F78777B77757B
          7877797573797574797574807B7A7F7A787D78777D78777B77757C7877807B7A
          7B77757B77757874727B77757B77747B75747974727672717B7775817B7A7B77
          75746F6E7772717873727B777477727177727076726F76716F746F6E76706E78
          7371716D6A726E6B77726F7B77746E6967726E6B76706E6E686776706E6F6A68
          0000706B6976706E726D6B736E6C77716F726D6B726D6A756F6E716C6A77726F
          7B7573736E6C77727077726F746E6C716C6A76706E756F6E78726F716C6A726E
          6B726E6C787270787371746F6E797572726D6B756F6E726E6C76706E736E6D77
          727076706E716C6A706B69746F6D716C6A76716F716C6A76706E76716F756F6E
          777270746F6D76706E716C6A746E6D787270766F6E76716F726D6A76706F766F
          6E736E6C756F6D78726F7973717872716F6A6876706E746E6D766F6E746F6D72
          6D6B756F6E736E6C726D6A726E6C6E696777716F726E6B746E6D726D6B726E6C
          736E6C79747277727078727177726F7772707872717A7572787371756F6E726E
          6C77726F77716F766F6E746F6D726D6A726E6B766F6E736E6B6E6766726C6A71
          6B69756F6D716B696F6A676F6967726C6A6F6967726C6A76706E6E6867706B6A
          76706E7B75726F6A68756F6E77726F736E6C7B7573746F6E00006F6B68746F6C
          706B68726C6A766F6E6F6A68716B69736E6B6F6968726E6B78726F726D6B736E
          6B736E6B716B696F6867706A68716B69726C6A6A65646E68666D6865726C6A76
          6F6C6F6867726D6B6B66656E68666C67656F69686F6968736E6B706B686E6866
          6E6867706B686F69686F69686D6865726D6B706A68706B68746F6C6F6A68726D
          6B6F6B68726D6B76706F726E6B766F6E716C6A746F6C766F6E726E6B766F6F76
          6F6E7A74727A74726F6A6876706F736F6C76726F77726F736F6C766F6F76726F
          746F6E746F6E706C6A7A7672766F6E766F6E726E6C746F6E736F6D7A7672766F
          6F76726F766F6F76706F76726F7C77767C77767873727772727B76747B767378
          7372787272766F6F77726F7B767376706F726D6B766F6F746F6D76706F736F6D
          726D6B726E6C76706F736F6C76706F7A7472706B696F6A68766F6E7C76736F6A
          68766F6D76726F706B6977726F6F69680000726E6B787270746F6E77726F7C76
          74766F6F766F6F787270736F6D746F6D7B767377726F7973727B777479747276
          726F777270766F6E7A7372706B69736F6D726E6C77726F787270726D6B77726F
          726D6B726E6C716C6B726E6B746F6D766F6E716C6A6F68686F6A68726E6B726E
          6B736E6C726C6B76706F746F6D726D6B76706F706B69746F6C716B6A716B6976
          6F6E726E6B746F6C706B69746F6C726D6B706B69766F6E76706F7972707A7372
          706B6976706F736F6C766F6E736E6B706B69716B6A726D6B6F6B686F69686C68
          65766F6D716B696F6A686F69686F6A686F696877726F716B69726C6A706A6870
          6B68716C6A766F6E746F6C726C6A6F6968746F6B766F6E726C6A716B686F6968
          716B69766F6C716B696C6865716B69726C6A736E6B6F6A686F69686F6867716B
          696F6867706B68726D6B6D68656B6665726C6A79726F6A6564736E6B746F6C6F
          6A68766F6D6F6A680000726F6C7A7672746F6F7A74727C77767772707772727A
          747276706F7772707F797776726F77727078727076726F716C6B787372787272
          7A7472726D6B766F6E746F6E77726F7A7472736F6D797372716C6A736F6C726D
          6B76726F766F6F76706F76706F726E6C736F6D7A747276706F76706F766F6F7A
          747276726F726E6B766F6E726E6B76706F726E6B746F6D76706F726E6B766F6E
          716C6A766F6E736F6C706B6977726F76706F7972727972706F6B68766F6E726E
          6B736E6B766F6F6F6B68706B69716B696F6B686F69686F696876726F716B6973
          6F6C716C6A736E6C716B6A797270736F6C746F6C726E6B736E6C746F6D787270
          766F6E726D6B726D6B766F6E766F6E766F6E746F6D726E6B76706F7B7673766F
          6D6E6867726D6B746F6D766F6D726D6B706B69716C6A766F6D6F69686F6B6874
          6F6C6F6A686F6968726D6B77706F696564726D6B766F6D6F6968766F6E6F6968
          00006F696876706F726D6B766F6F7A7372736F6D726E6B76726F706C6A736F6C
          7A7472716C6A726E6B77726F726D6B6F6B68746F6D746F6C77726F6F6868726D
          6B726E6B766F6E76706F716C6A76726F706B69736F6C716C6A746F6D736F6D74
          6F6E736F6C6F6B68716C6B746F6D736F6D746F6D706B6978727077726F746F6D
          777270726F6C76726F726D6B766F6E797272766F6E777270736F6D76726F7670
          6F736F6D7A74727872727C77767C7776726F6C77726F766F6E76726F76726F72
          6D6B726D6B726D6B726D6B726D6B736F6D7B7674746F6E76706F726E6B726C6A
          6F6A68766F6E716C6A726C6A716B69716B69736E6B77726F746E6B716B6A706B
          69766F6D736E6B726D6B726E6B716B6A716C6A7B767376706F6F6B69766F6E74
          6F6D76706F746F6C716C6A6F6A68766F6E6F6B68726D6B76706F706B68706B69
          736E6B7973726E686877726F787270716C6A78726F6F696800006F6B69746F6D
          706B69726E6B797270736F6C716C6B76726F726D6B76706F7A7672766F6F7772
          707A7673797472736F6E79737276726F7A7672726D6B76726F726E6B76726F78
          7270726E6B77726F726D6B746F6D6F6B68716C6A706B69726D6B706B696E6867
          6F6B68736F6C736F6C736F6C6F6968746F6C726C6A726E6B746F6D706B6A746F
          6D726C6B736F6C787270746F6D766F6D726D6B76726F746F6D726D6B77726F76
          726F7A74727A73726F6B68766F6D766F6E76706F77726F746F6E726D6B716C6A
          716C6A706B69716C6A787270736E6C746F6C716C6A726D6B726E6B77726F726E
          6B736F6C726D6B736E6C76726F7A747277727076706F726E6C77726F76726F76
          706F76706F76706F736F6D7A767276726F6F6B68766F6D766F6D766F6D766F6F
          726E6B726C6B78726F706B6A716C6A787270726E6B6F6B68746F6C7972706B67
          65766F6F76706F6F6968797270706B6800006F6968746F6C726C6B726C6A7670
          6F706B686F6A68746F6C726E6B736E6C7A7372736F6D76726F76706F736E6B6F
          6A68766F6E766F6E76706F6F6B69766F6E726D6B76706F766F6E716C6A76706F
          716C6A766F6F716D6B746F6D736F6C766F6E726D6B6E68686F68686F69686F6A
          68726D6B6F6A68736E6B726C6A726C6A736E6B6F6A686F6A686E6866706B6876
          6F6D726C6A706B696F6A68726B696F69686E6866746F6C726C6A766F6D76706F
          6D6865726C6A716B69716B69726C6A6F69686F68676F6A68706B686F68676D68
          65766F6D706B686F6A686E68666F6A686F6867726D6A706B686F6A686F6A686F
          6967716B68746F6B716B68706B686F6868726D6B746F6B716B696F69686F6968
          6F6B6878726F726E6B6F6968746F6D766F6D726C6A726C6A706B686F6A687670
          6F6F6B68726E6C7A7472746F6D706B6A77726F7C7774716D6B7A747278727073
          6F6C7C7673736F6C00006F6867726D6B706B69726D6B797372726E6B716B6A74
          6F6D726E6B76706F7A7472726C6B746F6C77726F736F6C716C6B76706F746F6D
          7972726F6B6876726F726D6B76726F746F6D726D6B76726F726D6B746F6D6F6B
          69726E6B746F6C746F6C706B696E68676D68666F6A686F6B68736E6B6F6B6876
          6F6D736E6B726D6B76706F716C6A726E6B6F6A68726E6B76706F746F6D736F6C
          716B69726D6B726E6B716C6A77726F76706F7973727972706F6968746F6C716B
          69726C6A746F6C716C6A706B69726D6B726C6B706B696F6B68797270736F6C72
          6D6B706B69716B6A706B68766F6D726C6A706B69716B6A716B69746F6C78726F
          726D6B726D6B706B69746F6D766F6E736F6C716B696F69686F696877726F726D
          6B6C6865726D6B736E6B716B69706B69716B6A6F6A68766F6E6F6A68706B6976
          6F6E6F69686E6867726D6B76706E6C676576706F746F6C6E68677A72706F6A68
          0000726E6B7772707672707772727C7774746F6E766F6F76726F76726F777270
          7F79777772707A76727C7776797372746F6E7873727973727A7472706B69746F
          6E736F6C77726F777270746F6D787270736F6C76726F736F6D76726F7974727C
          7877777272746F6F766F6F76726F76726F7A767276706F7A747278727277726F
          78727076706F79737276726F7772707B76737974727A747276726F7872707672
          6F76706F7A76737A76737F7977807A787772727A76747772727C78777B767479
          73727873727974727A7673787372777272807B7A7B77767A76737772727A7673
          7873727B76747873727772707B76747873727B77747D78767772707974727772
          707A76737A747279737276726F76706F787272807A777A7472726E6C78727276
          726F76706F766F6F736F6D736F6C797372726E6C746F6D7A7372736F6D716D6B
          76726F7A74726F6B697A7672797272726E6C7D7876746F6E0000726E6C76706F
          76726F746F6E7A7472726E6C746F6E787272766F6E76706F7B7672746F6D766F
          6E79737277726F726E6C76706F77726F7A7472726D6B76706F766F6F79747279
          7372746F6D76706F726E6C76706F726F6C726F6C766F6F797372726E6B706B6A
          716D6B746F6E746F6D797372766F6F7A76727974727974727A7472746F6E7872
          7076706F77727079747278737276726F766F6E77727076706F726D6B7A747279
          73727C77767C7776746F6E7A747276706F7A76727B7674787372787372767270
          76726F76706F76706F7C78767974727872727872727772707872727A74727772
          6F76726F78727076706F7A73727C7674777270787272746F6E7A74727A747278
          727277726F76726F7873727F79777A7673746F6F7974727A767279737276726F
          77727276726F7C77767873727A76737D7877787372766F6F7B7774817B7A7773
          72807B7A7F797776726F807B7978737200006F6968726C6B6F6A68716B697670
          6F6F6A68726D6B766F6F736F6C726E6B7A7372726E6B726C6A766F6D716B696F
          6868726E6B736E6B77726F6F6968726C6B726C6A766F6E746F6D726D6B726D6B
          6F6A68726C6B6F69686E6866716B69746F6D6F69686E68666D6866706B69716C
          6A766F6D726C6B76706F766F6D736E6B746F6C706B69736E6B6F6A68746F6D74
          6F6D706B68736F6C726C6A726D6B726D6B6F6968736E6B746F6D76706F78726F
          6E686776706F726E6C7872707A7372766F6E746F6E736F6C726D6B716C6B726F
          6C7A7372766F6E76726F76706F736F6C766F6E77726F746F6D746F6C726D6B73
          6E6B766F6E797270716B69736E6B726C6A766F6E766F6F726D6B726D6B6F6A68
          726C6A77726F766F6D6F6968726D6B726E6B716B69706B68706B69716B69766F
          6D706B686F6A68736E6B6F69686F6A68726D6B77706F6D686776706F766F6E6F
          6A68797272726E6B0000766F6F7974727772727672707D797776706F76726F7A
          747277727076706F7B767477726F76726F7A747276726F736F6E7873727A7472
          7B7674726F6C76706F7672707772707A76737A74727A767376726F7772727672
          6F746F6F7873727C777676726F746F6F746F6F76726F7873727C78767974727C
          78777974727973727C777676726F7A76747772707A76727A76737974727A7673
          7B77767A76747A76737772727A74727973727C77767C7776726E6C7A7472766F
          6F7A76727C777679747276706F777270767270726F6C716C6A7B767376726F79
          7372746F6E76706F7772707C77767A74727873727772707A76737B76747F7877
          7872707A76737973727A76737A767277727078737278737276726F7B76737973
          72726F6C766F6E76706F766F6E726D6B736F6C736F6C787270746F6D746F6E76
          726F726C6B716C6A766F6F7B76726F6A6878726F77726F706B6A7A7472726D6B
          00006F6A68726D6B716C69706B6977706F6E6967706B69746E6C6F6968716C69
          746E6C726D6A6F6967746D6B706B686D6865716D6A746E6C746F6D6C66656F69
          68706B696F6968736D6B716C69726D6A6F6967726D6A6F69686D6866726D6A72
          6D6A6F6A686F6A686F6967706B696F696877706E706B69746F6D736D6B716C69
          736D6B6F6A68726D6A6F6967716C69736D6B746F6D746E6C736D6B77706F746E
          6D726D6C77706F77706F7A74727A7472706B6977706E746F6D7A74727A747277
          726F746F6D736E6C716D6B716D6B706B697A7472746F6D746F6D726D6B736E6C
          746F6D78737077706F77726F746F6D746F6D7873707A74727773707A7472736E
          6C777270797472746F6E746F6E77706F76706F7B7673777270716D6A746F6D77
          706F746F6D746F6D746E6D746F6D797372746F6D746F6E77726F736E6D746F6D
          766F6E7A74726F696877706F77726F716D6B7A7473746F6D0000706C6A77706F
          716D6B746F6E7A7673726E6C746F6E797472746F6E7772707C77767873727772
          707B7674777270706C6A77706F7873707A7472706C6A746F6D77706F77706F79
          747276706E77726F746F6D76706E746F6E706D6A777270777270746F6D77706F
          726E6C77706F7772707A767474706E7E78777A76747772707B77747772707B77
          767773727874727A76747A76747A76737873707A747377706F736E6D78737078
          73727B76747E787676706F7A767377706F7C77767A767478737277706F746F6E
          736E6C706B696F6A69797472736E6C76706E726D6B726D6C726D6B77726F746F
          6D76706E726D6B746E6D77706E79727076706E77706F726D6B766F6D77706E74
          6F6D746E6D736E6C716D6A7A747276706E6F6A68716D6A736D6C716D6A706B69
          706C69736D6B77726F736D6C736E6C746F6D716D6A6F6968726D6A7872706D68
          66766F6D766F6D706A6877706F736E6C00006D6866736D6B706A68706B69766F
          6D6D68666F6967746E6C6F6A68746E6C77706F746F6D746F6D77726F746F6D6F
          6968746F6D746F6D77726F6F6968716D6A76706F746F6D77706F726D6B746F6D
          706C69706C69706C696F6968746F6D746F6D726D6B746F6D746F6E76706E7770
          6F7A747376706F7B76747A747276706F77726F736E6D76706F716D6B746F6D77
          706F77726F77727077727077726F746F6D746F6D78737077726F7B76747B7674
          746F6D777270746F6D7B76747B767477727076706E746E6D706C696E6967706B
          697B7673746F6D77706F736E6C746F6D77726F79747278727077726F77727076
          706E7A74727C777478737278737277727077706F777270746E6C726D6B736E6C
          736E6D7A747277726F736E6D746E6C766F6D76706F746F6D746F6D736E6C7770
          6F726D6B716C6A746F6D736E6C736E6D77706F77706F6D6865746E6C746E6C6E
          6866776F6D736D6B0000716D6B77706F736E6D7772707B7674736E6D746F6D78
          7370746F6D77726F7B767478727077726F77726F77706F706B69766F6E77726F
          77706F6E6968706B69736E6C766F6E77726F716D6A77706F746E6D746F6D736F
          6D716D6A77726F746F6D726D6B736E6C716D6B736E6C746F6D777270736E6C79
          7472797472746F6D777270736F6D777370746F6D746F6D787372777270777270
          777270787370746F6E746F6D7772707873707E78767F787774706E797472746F
          6D79747277706F746F6D716D6A736D6B706C696E68666E6967797372736E6C76
          706E706B69726D6B746E6D77706F746F6D76706E746F6D77706F797372787270
          746E6D746E6D736D6B746E6C77706E736D6C716D6A736D6C736E6C7772707770
          6E706B69746F6D76706E746E6D746F6D746F6D76706E797472746F6E746F6D77
          706F736E6D76706F7974727E7876706D6B7974727A7472746F6D7A7673766F6E
          00006D6866706B69706A68726D6A77706F6F6967706B69746E6D6F6968746F6D
          77726F746F6D736D6B77726F76706E706C6A76706E78737077706F706B69746F
          6D746F6E746F6D77706F716D6B787370746F6D736E6C726D6C716D6A77727077
          726F736F6D76706F746F6D76706F777270797472746F6E7A7673787370746F6D
          797472746F6E777270736E6D736E6D79747277727076706F7772707874727770
          6F736E6D7772707A74727C77747F7977746F6D7A74737772707C77767A76747A
          747377727076706F777270716D6C716D6C807A78787372787370746F6D77706F
          766F6E7A747276706E77706F77726F77706F78737077726F746F6D746F6D746E
          6D766F6D77706F746F6D736E6C77706F76706F7B767477706F6F6A68746F6D76
          6F6E746F6D726D6B716D6B77706F7A7673746F6E76706F777270736F6D746F6E
          7772707E7877706C6A787370787270726D6B797472746F6D00006F6A68726D6B
          6F6A68726D6B766F6D706B69716C6A716C6A6E6866726C6A77706E736D6B726D
          6A77716F736D6B6E6866716B69746D6B716A686C67656F6A68716C6A716B6973
          6D6B6F6A68726D6A6D68666D67656D67656D6765716C6A6F69676D68666F6967
          6F6A686F6A68716C6A716C6A726D6A77716E746E6C706A68746D6B6F6967716C
          6A6D68666D6866726D6A716B69706A68716B69746E6C706A686E6866716A6873
          6D6A7872707973716F6A6877706E746E6D797371746F6D736D6C726D6B716D6A
          736E6C6F6A686F6A687B7472746F6D746F6D746F6D736E6C766F6E77716F766F
          6D746F6D746F6D746F6D77706E797371746F6D716C6A716C6A746E6C746F6D73
          6E6C716B69726D6A746F6D78726F766F6D6D6866726D6A726D6A736D6B716B69
          716C6A746E6C77706E6F6A686F6A68746F6D6D6866716D6A726D6B77706E6F6A
          6878727077726F716D6A78726F746F6D00006F6A68726D6B716C6A746F6D766F
          6E716B69726D6B76706E716D6A76706E77716F766F6E726D6A79737277716F71
          6C6A746F6D7A747277706F716D6B746F6D77716F77716F787371736E6C787270
          726D6B706B6A716C6A6F6A68746F6D736D6C6F6A68726D6B716D6A736E6C7670
          6E76706E746F6D7A747279747276706E787270746E6D746F6D706B6A726D6B77
          726F77716F77716F77716F77716F736D6C716D6A76706F787371817B78807A78
          74706F7C76747874727C78767A767378737278727174706E746F6E726D6C6F6A
          697A7472746F6D76706E736E6C76706E76706F77726F746F6D746F6D746F6D77
          716F7973727A7472746F6D746F6D77716F78727179737277726F76706F787271
          77716F7C777477716F6F6A68746F6D766F6D726D6B706B69726D6B726D6B7771
          6F736D6C726D6B766F6D6F6A68716B69726D6A78726F6E6967746F6D746F6D70
          6B6978716F736D6B0000706B69746F6E716D6A746E6C77716F726D6C736E6C77
          706F736E6C76706E797472787270726D6B797472746F6D6F6A68746E6C797371
          736E6C6F6968716C6A766F6D736E6C77716F716B6A77716F716C6A716D6A706B
          696F6A68746E6C726D6A6F6A68706A696F6A68706B69716D6A746F6D726D6B78
          727076706E716B6977716F716C6A726D6B706B69716C6A77706E746F6D746E6C
          726D6A766F6D736E6C726D6B746F6D7872717C76747C7774726D6B78726F746E
          6D79737177716F766F6E736D6C726D6A736E6C6D68666F696877716F736D6B76
          6F6D716D6A746F6D76706F78737177726F787270746F6D77726F7974727C7776
          77716F76706F76706E77706F76706E746E6C726D6B726D6B746E6D787270766F
          6D6D6866706A68746E6C716C6A6F6967716D6A726D6A746F6D716B696D686672
          6C6A6A66646F6A68706A68746F6C6C6765726D6A746F6D716D6A78726F736D6B
          0000746F6E777270746F6E78737278737274706E74706E797472746F6E787372
          7C77747B76737772717E7877787472736F6D7873717A747277716F716C6A716D
          6B77716F76706E777270736E6D787372746F6E76706F726E6C726E6C77726F74
          6F6D726D6C726D6B726D6C736E6C77716F77716F76706F7C777679747277726F
          7C78767772717B76747873727874727C78767872717772707872707974727772
          7077716F7873717974727E78767F7977746F6E7C78767872717B767378737277
          716F746F6D746F6D726D6B6F6A686F6968787270746E6C746E6C726D6B76706E
          726D6A746F6D726D6A766F6D746F6D736D6B766F6D787270736E6C716B69716B
          6A746E6C76706E746F6D716C6A726D6B76706E7C7674787270716D6A77716F78
          737177716F736F6D77716F7873717B747378727076706F787472706C6A726D6C
          77706F78726F706B6A77726F7B7673746F6D7A7472726D6B0000716C6A726D6B
          716D6A746E6C736D6B716B69716C6A76706E716D6A766F6D77716F746F6D726D
          6B78727077716F706B69746E6D77716F76706E706B6A726D6B78727177716F77
          716F716C6A77716F716D6A716D6A736F6D726D6B78727076706F746F6D74706E
          746F6E77716F7873717A74737A74737C77767C7776746F6D7B747374706E7873
          72736F6D76716F7A747378727177726F77726F78737277716F746F6D7872707B
          7673807A78837C7B7772707F7A78787271807A787B76747B76747974737A7473
          79747276716F74706F7F7A787C77747C77767873727A76737A74737A74737974
          727A747377727077726F7A74727C767478727076706E77727078727078737178
          727076706F7872717A74737E78777B7674746F6E7B76747B76747A747376716F
          7772707C77747C7876787371746F6D77726F716D6A76706F77716F7B7673706B
          6A7872707A7472746F6D7B747277727000006F6A686F6A686F6967716C6A716B
          696D68666D6765726C6A6F6967746E6C766F6D736D6B706A6877716F716C6A6D
          6765706A68746E6C716C6A6C66656F6A68726D6A716C6A726D6A6F6967716C6A
          6A66646E68666A66646E6866706A686F6A686E68666D68666E68666E68666F69
          676F6967706A68736D6A736D6B6F6966736D6B6E6866716B696D68666E686670
          6A686F69676F6A68716B69706A686F6A686F6A68726D6A746F6D78726F797370
          6F6967746E6C706A68746D6B716C6A716B69716D6A746E6C706A686E68666E68
          66766F6D726D6A736D6C706A68726D6A726D6A766F6D746F6D77716F716C6A72
          6D6B78727079737176706E726D6B736E6C77726F77726F77727076706F746F6D
          77727079747278737276716F78747279747278737274706E76706F7C77767B76
          7479747277726F797472746F6D7872717974737B7673706B6A7872707B767477
          716F7E78777874720000726D6A736D6B726C6A746F6C746F6D716B696F6A6874
          6F6D716C6A766F6D77716F766F6D726D6B7A747277716F6F6A69746F6D77716F
          736D6C6F6968716C6A746F6C736D6B726D6A706B69766F6D6D6766716B6A706A
          69716B6A746F6D726C6A6F6A686F69676F69676F6967716B69706A68716B6973
          6D6B746F6C6F6A68726C6A6F6967706A686D6866706A68726C6A716C6A716B69
          736D6B746F6C726C6A6F6A68726D6B77706F7B75727A74726F6A68766F6D726D
          6A77716F736D6B746F6D726D6B746F6C726D6A716C6A6F696777706F726D6B74
          6F6C726D6C77716F736F6C77716F726D6A766F6D716B6A706A69736D6B766F6D
          736D6B706A68706A68736D6B736D6B736D6B706A68706B69726C6A77706F746F
          6D716B6A746F6C766F6D746F6D706B69716D6A79727079727077726F726D6C78
          7270706B69736F6C746F6D7A75726F6A687A73727C7674746F6D7C767577716F
          0000716B6A726C6A706B69736D6B746F6C706B69706A69746F6C706A68766F6D
          78726F766F6F736D6B787270746F6D6F6A68736D6B736D6B716C6A6A66646D68
          66716A68706A68716B696F6867736D6A6A65646D68666F68676D6866726C6A6F
          6A686D67656D67656F69676F6A68736D6B726C6A726D6A766F6D776F6D6F6A68
          736D6B6F6A68726D6A6F6A686F6A68726C6A726C6A716B69746F6D746F6D726C
          6A6F6A68726C6A766F6D77706F79726F706A6877706F726D6A77706F736D6B73
          6D6B706A68716B69716C6A6F69676F6967746F6D706A68726B696F6967716B6A
          706A68746F6C726C6A77706F6F68676F6967736D6A746F6D736D6B716C6A706B
          69736D6B746F6D736F6C726D6A726D6B736F6C7A7472746F6D726D6B76706F79
          7371766F6F716C6A726D6A79737178726F77716F726D6B7A7472726D6C76706F
          77726F7C7674726D6B7B76747C7775746F6D7A7472746F6D0000746F6D746F6D
          726D6A77726F797271746F6D736F6C7A7472736F6D7973717A75727973717772
          6F7C777677726F706B6A77726F797371777270716C6A746F6D78727077726F79
          7371746F6D7A7472716C6A74706F77716F74706F79737276716F736F6D726D6C
          726F6C736F6D787270736F6C766F6F7973717A7572746F6D7A7472746F6D7770
          6F746F6F746F6D79747277726F76706F77716F77726F76706F736F6C76706F7A
          74727C76757D7776746F6D7A7472746F6D7A7472746F6D77726F746F6F76706F
          746F6F736F6D726D6B7A7472736F6D766F6D736F6C77716F746F6D797371746F
          6D7A7472746F6D746F6D7A74727B7573787270746F6F746F6D7972717A747277
          716F76706F74706F76716F7C76757B767577716F7A74727E79777A767476706F
          777270817A79817B797B76747772707D79767772717A75737A76747E79777470
          6F7C78767F7A787772707D78767872710000726D6B726D6A6F6967746F6D766F
          6D726D6A726C6A746F6C706A6977716F766F6D76706F746F6C78726F746F6D6F
          6A68746F6D766F6F736D6B6F6867716B6A726D6A726D6B77706F736F6C766F6D
          6F6A68716B6A716B6A716C6A746F6D736D6C716C6A726D6B716D6A76706F7872
          70746F6F77716F7A747278726F736F6C77726F746F6D746F6D726D6B726D6C78
          7271746F6D746F6D77716F77706F736F6C736D6C726D6B7972717C76737C7674
          746F6D77726F76706F7A757377716F7A747277706F746F6D76706F736F6D726F
          6C7C767476706F77727076706F78727076716F7C78767974727C767576716F77
          716F7A74727A757277716F746F6D736F6D77706F77716F77716F746F6D726D6B
          726C6A7A7371766F6D726D6B736D6B77716F736D6B6F6A68706B6978726F746F
          6D746F6D6F6A6877716F6D6867726D6B726D6A77706F706A69746F6D7A737174
          6F6D7A757276706F000078737279747276716F7B76747C76747973727872717B
          76747873727D78767B76747D79767A76747D79777C767474706F7A75737C7776
          7A7472716C6A746F6D7973717872717A74727772707A7572726D6C746F6F736F
          6D736F6D78727177726F736F6D746F6D726F6D76706F77716F726D6B7872707A
          737277716F746F6D79727076706F76706F736F6D746F6D77716F736F6D746F6D
          77716F746F6D726D6A726D6B746F6F77726F7A74727C7673736F6C77716F736F
          6C7A747276706F77716F77716F76706F787371746F6D76716F7E797776706F78
          727077726F77726F76706F7C767477716F7A7573746F6D77726F7A74727C7776
          7C7675777270746F6D7A757278727179737278727176716F787271817B7A7C77
          7576716F7974727A75727A757374706F7872717D78767B76747A767376706F7B
          7673726D6B76706F7872717C7876746F6F7A74727F7A7874706F7C767476706F
          0000746F6D736F6C706A6876706F78727077716F746F6F766F6F736F6C77716F
          77716F7A737277716F7B76737A7573736F6D7973727A7573777270706C6A7671
          6F78737176706F7A757276716F797472726F6D7A76737A75737A75737C777678
          727176716F77727176716F7974727A76737772717A75727E79777B7674787371
          7D79767A747277727174706F76706F78737176706F7772707A75727973727670
          6F736F6D746F6D7872707A75727D777576706F77726F736F6C7B767378727077
          726F77716F77716F77716F74706F74706F7C7674777270797372787371797472
          7772707E79767974727E797777726F7A7673817C7A817B7A7D79767974727A75
          737C78767C78767C77767C78767C78767A7573817C7A7D78767873727C78767E
          79777B76757873727A76747E79777E79777B767576716F817B7A74706F777270
          7A75737D7876746F6F7A74727C7775746F6F7A757377726F0000706A68726D6B
          726C6A76706F78726F746F6D726D6B76706F746F6D78727177716F77726F7771
          6F7B76737872706F6B69746F6D77726F746F6C6F6B69716C6A736D6B736F6C76
          706F726D6B726D6B6F6A68726C6A716C6A726D6B77716F746F6D716C6A716C6A
          6F6A69726C6A76706F726D6A746F6D797371766F6D736D6C77706F726D6A726D
          6A6D67656D6866726C6A6D6866706B69736D6B6F6A686F69676F6967706A6872
          6C6A766F6D79726F726C6A736D6B6D6867746F6C726D6A746F6D726C6A6F6A68
          6F6867706A686F6A68766F6D706A68726D6A716B69716B69706B6978726F6F6A
          68736D6A6D68666F6A68736D6A766F6D726C6A706A686F6967736D6B736D6B74
          6F6C706A68706B696F6A6877706D726C6A706A69716B69746D6B726D6A6F6A68
          726D6A7A7472797371736F6C6F6A68766F6D6D6867706A69736D6B7872706F6A
          69736D6B78726F716B6A77706F726D6A0000746F6F74706F726D6B7872707B76
          7377716F746F6D77706F726D6B77716F787270797270736F6C7A7472766F6F6F
          6A69736D6B746F6D746F6D6C6765706A68736F6C726C6A77716F716C6A726D6B
          6D6867706A69716B69716C6A746F6C716B696D68666D67656B66646F6867716A
          686F6867706A6878716F746F6D716B69766F6D726C6A716C6A6F68676D686771
          6B696F6A686F6A68726C6A716B696F69686F6A68726D6A746F6D746F6D79726F
          706A68736D6B6D6866746D6B726C6A716B69726D6A726D6A706A686F6A68716B
          6977706F736D6B746F6C726D6A726C6A726D6B78726F706B6978726F716B6A72
          6D6B78727078726F746F6D746F6D726D6A766F6D746F6D76706F736F6C726D6B
          706B697A7371746F6D726D6B746F6C766F6F746F6D726D6B746F6D7B7572766F
          6F726C6A6F6A6877706F6D6867716C6A746F6D7A7371706B6A746F6D7A737172
          6D6B787270746F6D0000706A686F68676F6968746F6D77716F746F6D736F6C74
          6F6D726C6A746F6C746F6D77706F726C6A78716F746F6D6F6867726D6A746F6C
          76706F6F6A68746F6D746F6D746F6D787270726D6B74706F706B6A736F6C726D
          6C716C6A79737177716F726D6C716C6A706C6A76706F787270736F6D77726F7A
          75727A7371736F6D77726F77716F76706F716C6A716C6A79737276716F77716F
          77726F746F6D726D6C736F6D77716F77726F7972707C767476706F77716F726C
          6A7A7371766F6D766F6F746F6D736F6C726D6A726C6A726D6A77726F736D6C74
          6F6D736F6C726C6A716C6A797270726D6B77716F726C6A726D6A7972707A7472
          78727076706F726D6B77716F7A747279727176706F777270736F6D7A74727972
          71736F6D746F6F7A757277727074706F746F6F7C767579737277726F746F6F7C
          7675726F6D7772717772707C7675706B6A746F6D7A7372726D6B797371746F6F
          0000736F6C726D6A736F6C797372797271746F6D76706F766F6F736D6C787270
          797371797371736F6C7A737177716F726D6C746F6D746F6D746F6C6D6967726D
          6B746F6C726D6B746F6D706A69726C6A6F6967706B696F6A686F696776706F74
          6F6D726D6A6F6A686F6A68726D6A77706F726D6A766F6F77716F78726F726D6B
          746F6D726D6B736D6C6F6A68706A69746F6D716C6A706A68716B69716B696D68
          666F68676F6A68716B69746F6D7972706F6968736D6B6F696877716F746F6D73
          6D6B76706F746F6D746F6D76706F7772707B76747A76737B7674787371787372
          77716F7C777576716F7C76747772707872717C7776817B797C767577726F746F
          6D7B76747C76757C777679737274706F746F6D7A75737A7472746F6F7772707A
          74727974727772707873727F7A787B76747A747276716F7A7572716C6A746F6D
          746F6F7C7673706B6A77716F7B7673736F6D7A7371746F6D000077726F746F6D
          746F6D7A7472797471736D6C746F6D777270746F6D77726F7A75737A75737771
          6F7C77747C7775746F6F7874727C77747C7775716D6C7874717874727773707C
          7774746F6F746F6D716C6A746F6C746F6D726D6A78737177726F716C6A706C6A
          716C6A746F6D77716F716C6A746F6D797370797370746F6D77706F746F6D7770
          6F736D6C746F6C7A747274706F77716F7A757477716F746F6F746F6F77727078
          73717C7777817B7874706F797471736F6C7C77747A747277716F77727077716F
          746F6D7873717874727D79777C77757C77757974737974727974727C77757974
          727F7A787A75747974727F7A78827C7B7F7B787A77747772707C77777C78777C
          78777C777579747377716F7F79777C777577716F7873717974727A747277716F
          7874717D78777A77747873717773717D7877736F6D77716F77726F7C7777736F
          6C7A75737C777777716F7C7777797472000077726F746F6D746F6D7873707872
          70746F6C746F6D746F6D736D6C77716F79737077706F746F6C77716F746F6D70
          6A68746F6D77706F77716F6D6868746F6D736D6A706C6977706F716C6A726C6A
          6D6866726C6A716C6A726D6C77706F746F6D706C696F6A68706C69726D6A746F
          6D716C6A726C6A7A7471776F6D776F6F787270736D6C746F6D706C69726C6A78
          7370746F6C746F6C746F6D746F6C716C6A726D6A77716F7772707C77747F7977
          746F6D77716F736D6C7A7473797472746F6D77706F726D6A6F6A69726D6A746D
          6C746F6D746F6D746F6D726C6A746F6D746F6C77716F736D6C797471736D6C74
          6D6C77716F7C757377706F746D6C6F6A6877706F77716F78737077716F77706F
          746F6F7D79777C777477727077737078737179747177716F77706F7C77747974
          72777270746F6D7A7573706C6A74706F7974727D7877716D6C7974727C777474
          6F6D7C7774797472000077706F746F6D746F6D7A7473797471746F6D736D6C77
          706F726D6A746F6D77706F746F6C706A68746F6C746D6C6F6A68736D6A746F6D
          746F6D6D6866746F6D736D6C716C6A746F6C706A68726C6A6D6867716C6A706C
          69706C6977716F78726F6F6A686F6A69726D6A736D6C776F6F716C6A746D6C7A
          747279737177706F77716F746F6C77716F716C6A736D6C77716F746F6D736D6C
          77706F746F6C746F6D736D6C746F6D77706F7A7573817A77746F6F787370746F
          6D7C777477726F77706F787371746F6D746F6F77706F77726F78737178737178
          7371746F6F77706F77716F7A757377716F7C777477706F7974727C7774817B78
          7F7977797472746F6D7C77757A75747A747377727074706F736D6C7C7774776F
          6F746F6C746F6D746F6C77716F746F6C736D6C79747177716F746F6D726D6C79
          74716F6C69726D6A77706F7C7774716C6A77716F7A7573746F6D7A747277716F
          0000746F6D716C6A716C6A77706F78726F746F6C736D6C77706F736D6C77716F
          7C777478727077716F7C77757A7473736D6C77706F77726F77726F6F6A69746F
          6C736D6C726C6A787270726C6A746F6D6F6A68716C6A706C69716C6A77716F77
          716F6F6A696F6A68736D6C746F6D77716F736D6C746F6D7A747278737077726F
          77726F746F6C77706F736F6C746F6D78737174706F77726F787471746F6D7770
          6F746F6D746F6D77716F7A74717D7775746F6D787370746F6D7A757377706F77
          706F77706F746F6D736D6C746F6F77716F79747177727077726F746F6D736D6C
          77706F78726F726D6A77716F746F6D7A74737A74727F78777A7573777270746F
          6F7C77757A75737C77757C7775797473777370817C7A7A75747772707C77757C
          77757A7574777270746F6F7C777478737177726F746F6D7A7472746F6D726D6C
          77716F7D7777746F6D7C77757C777477706F7C77747974720000746D6C726D6A
          716C6A746D6C77706F716C6A716C6A746F6D716C69746F6D78726F746D6C706A
          68736D6A746F6C6F6968736D6A736D6A746D6C6D6866736D6A706A69706A6874
          6D6C6F6867716A686D68656F69686F6968716C69746F6D776F6D6F69686F6968
          736D6C736D6C746F6C716C6A746F6F7A747177726F746F6C746F6D716C6A736D
          6A6F6A686F6867746D6C726C6A726C6A746D6C716C6A736D6C6F6A68746D6C74
          6D6C776F6D7A7370706A68736D6A6F686877706F716A68706A68736D6A726C6A
          716C6A716C6A746F6C746F6D746F6C746F6C716C6A6F6A68706A68746F6C6D68
          66736D6A706A68716C68736D6A77706F746F6C706A686F6968746D6C726C6A74
          6D6C716C69716C696F6A6878716F746D6C706C69746F6C746D6C736D6C706C69
          6D6866746D6C746F6C746D6C706A68746F6C6A65646C67656F696878726F6D68
          66736D6A776F6D706A68736D6A726C6A00007C78777A77757A77747C77757F79
          777974737974737F7A777874727D7977827C7B7F7A787C77777F7B79817B797A
          7775817C7A7F7B797C797774716F7C78777A77757A75747F7A777A77757D7977
          7874727C77757A77747A75747F7A777F797777727074706F7974737874717C77
          747773707974727D79777D79777A75747C77747874717A777477737177716F7C
          77757A74737A75747A757478747279747374706F7974727974727C7774817B78
          77716F787370746F6D7C777477737077716F777270746F6F746F6F746F6D746F
          6D78727077716F78737077716F7772707773707A7473736D6C787370746F6D77
          716F7A74727C7774797370746F6D726D6C77716F746F6D776F6D746D6C746D6C
          716C6A77706F746F6D706C69736D6A746F6C736D6C726D6A726D6C7873707772
          6F776F6F726D6A746F6C6D68656D6866716C6979736F6D6866726C6A746D6C70
          6A68736D6A716C690000746F6D716D6A736D6C777170797471746F6D736D6D79
          7471716D6A77716F7C777477716F77716F7A74727A7472726D6C777270797371
          7974716F6A6977716F77716F746F6D7A75737771707A747374706D75716F746F
          6D736F6D777270797271716D6A706C69746F6D75716F777270746F6D7772717A
          74737A757377716F79747274706D77717077716F77716F7A7574746F6D77716F
          77716F77716F75706D736F6D7972717974717A75737F797777716F7A7473746F
          6D7D79777973717974737C777579747175706F7771707974737A74737974727A
          77747771707771707974717D797775716F79737177716F77706F7973717C7774
          77716F75706D746F6D77717075706D77727075706F75706F75706F7C77747973
          71746F6D75706D77716F77716F746F6D716D6A797270797270756F6D726D6C77
          72706F69696F6968716C6A7C74726D6966736D6A77706F716D6A756F6D746D6C
          000077727075706F7974717772717C777477727074706D7A757477716F797371
          7D787579747277716F7A75747D787574706F7C77747C7774797472726D6D7974
          727A75747773717C78757973717C787574706D77717077716F75716F7C77747C
          777474706F746F6D746F6D77716F79737175706F7772707A74737C7775777371
          7C77757974727A747375716F7772707A75747772717772707A74737772707973
          71746F6D7A75747A75747C7774817B797973717C7774746F6D7A757377706F77
          716F75706F77716F746F6D74706D777170777271777271797471777170777371
          7974737D78757773717A77747974727A74737D79777D79777C7774797472746F
          6D7C77747773717A75747973717974717773717C777479747275716F79737179
          747277716F736D6D736D6C79727077716F77706F746F6D797471716D6A726D6C
          746F6D7D7774716C6A746F6D77716F726D6A77706D746F6D0000746F6D736D6C
          746D6C746F6D77716F746F6D736D6C797471736D6C7772717A74727772707570
          6D7972717C7774746F6D7974727A7574777271706C6A77716F777371746F6D79
          7371746F6D797472726D6C746F6D716D6A74706D77716F777271726D6C726D6C
          726D6C77706F797371716C6A746F6D756F6D77716F716C6A77716F746D6C746F
          6D6F6A69726D6A77706D736D6A726D6A756F6D746F6D746F6D736D6C77727077
          716F77716F7C7472746F6D797371726D6A797270726D6A736D6A736D6C706A69
          706A69716A69746D6C736D6A716C69746F6D706A69736D6C746F6D77706D726D
          6A777170746F6D756F6D7973717D77757A757377716F716C6977706F716C6975
          6F6D736D6A726D6A716D6A746D6C746D6A716A69736D6A746F6D716C69716A69
          706A6977706D77706D736D6A706A69756F6D6D6967706A69736D6A7C7573716D
          6A746F6D77716F746D6D756F6D736D6A00007973717772717773717A75737C77
          747772707771707A7473746F6D75706F7C7573797471746F6D7A74727C777471
          6D6A77727077727075706D6D696875706D75706D75716F7A7472777271797471
          74706D746F6D736D6C726D6C77727077716F716C6A716C6A716D6A77716F7973
          71736D6D746F6D77706D77716F716C6A77706D746F6D75706D706A69746D6D75
          706D746D6D746F6D77727077727075706D746F6D7C77747A75747C77747F7977
          77716F7A747277716F7C777577717075706F77716F746D6D716C69746F6D7772
          7079747277716F7A747275706D77716F77716F77716F716D6A77716F746D6D74
          6D6D77716F7A747277716F77706D716C6A77717075706D7A747277716F75706F
          75706D7A747279747277727077727177727177716F746F6D746F6D7974717974
          72777170746F6D7A7573706A69716D6A746F6D7D7774716C69746F6D77706D73
          6D6A746F6D75706D00007973717974727A75737A75747D78777A75737974727A
          7573746F6D77716F7D78757A7472746F6D7C77747C7774726D6C797371777271
          77716F6F6A6975706F75716F75706F77716F746F6D79747275716F74706F7771
          707974737C78757C777577716F746F6D74706F797472797472736F6D75706F79
          73717C7774746F6D77716F777170777271746F6D77716F79737177716F746F6D
          77706F75706D746F6D726D6C77716F7973717972707D77757772717A7472746F
          6D7C7574746F6D736D6C75706F77716F726D6D726D6C75706F797371746F6D79
          7371736D6C75706D77706F77716F736D6C75706D75706D77716F7973717C7774
          77716F77716F706A6977706D716C6977716F746D6C77717075706D77716F7771
          6F746F6D756F6D756F6D736D6C736D6C726D6C77717077716F736D6C716D6A79
          73716F6A69716D6A77716F7A7471706A69746D6C756F6D736D6C746D6C716C69
          000075706D756F6D746F6D77716F7C777477717077716F797271746F6D777170
          7D78777C777477716F7974717A7574716D6A77716F77727077716F716D6A7771
          6F746F6D75706F797371746F6D77727075716F736D6D746F6D75706F7973717A
          7472746F6D716C6A716D6A77727077716F706C69746F6D77716F797471746F6D
          77716F77716F77716F736D6C746F6D77716F746F6D736D6A746F6D736D6C736D
          6A706A69756F6D77706D77716F797371746F6D746D6C6F696877716F716C6970
          6A69736D6C736D6C716D6A726D6A746F6D797371746F6D77716F726D6A75706D
          77716F777170716C6A756F6D726D6A746F6D77716F7A747277706F77706D726D
          6A756F6D746F6D777170746F6D756F6D75706D77716F756F6D746D6D77706D77
          7170746F6D726D6A716D6A7974727C777475706D746F6D7A7473726D6C746F6D
          77716F7A7472746F6D746F6D77716F726D6A746F6D736D6A0000756F6D746F6D
          746F6D736D6C797371746F6D746F6D756F6D726D6A746F6D79737177716F736D
          6C7972717771706F6A6977716F756F6D77706F6D6967736D6C726D6A716D6A75
          706D716A69746F6D716C69706A69716C69716D6A77716F77716F726D6A716C6A
          716C6A756F6D77706F6F6A69756F6D77716F7A7473736D6D777270746F6D7570
          6D726D6A716D6A77706D746F6D746F6D77727077706D746F6D736F6D77716F79
          73717972717C777477716F7A7473736D6D797471736D6D736D6D746F6D746F6D
          6F6A69716A69736D6C77716F736D6C77716F736D6C75706D75706D797471716D
          6A777270746F6D746F6D7974717D78757A74727A757377716F79727177716F7D
          7775777271746F6D746F6D77716F746F6D726D6A736D6A756F6D716A69716A69
          706A6975706D77716F726D6A706A6977706D6D6966716A69746F6D797270726D
          6A746F6D797371746F6D746F6D746D6C000077706F77716F756F6D75706D7C77
          7477717077716F77716F75706D77716F7A75737A7473746F6D79727179737170
          6A6977716F77706F797371706A6977716F746F6D736D6D75706F716D6A797371
          75706F726D6C716D6A75706F797472797371726D6D716D6A746F6D77716F7771
          6F6F6A69726D6A77706D79737175706D777170746D6D746F6D706A69726D6C77
          706F736D6C746D6C77716F77716F74706D736D6C7772707973717972717A7472
          756F6D797371716C69797371736D6D726D6C736D6C736D6D716C69736F6D746F
          6D7771707772717A7473746F6D777371777271797471746F6D77727177717077
          716F7A74727D787579747279737177716F7C77747771707C777479747177716F
          777270797371777271777170777271797371777170777170746F6D7A74727A74
          7275716F74706D7C7775746F6D75706F7771707C7774746F6D75706D79737174
          6F6D777170746F6D00007A75747C78777A75747C7877817C797D79777C78777A
          75747974727C7775817C797A757375716F7A74727A7573716D6A777270797472
          797471746F6D77716F7973717974727A77747771707C77747773717772717771
          707773717C77747C7775736F6D746F6D77716F79747379747374706F7773717A
          77747C77757974717C7875797471797471746F6D7772707C7774797472777371
          7D79777C7775777271777170797472807A79807B79807A797A75737C7774746F
          6D7C777477716F75716F77716F75716F75716F77716F7772717C77757A75737F
          7A787A75737A75747A7574807A797772717A75747973717974717A77747D7875
          7A757379737175716F7A74737771707A757377727177716F77716F7772707771
          6F746F6D75706D77706F75706D777170746F6D7A75747A757477716F75706F7C
          7774736D6D746F6D75716F7A757474706D7772717D787577727179747277716F
          00007973717A747377716F7973717C777479747177727177716F746F6D777270
          7F79777C77747771707C77747C7774746F6D7973717A7573797472736F6D7973
          7177717077716F777371736F6D79747277716F716D6A746F6D75716F7C77747A
          7573726D6D726D6D77716F777271797371716D6A746F6D77727077727075706F
          797271746F6D77716F746F6D77716F7C77757773717A74737C77747C78777771
          7074706F7772717C77757C77757F7A787C77757F7A78797471817C7A79747279
          74737974737A77747974727773717974727C78777A7774807B797C77757D7977
          7C7877807B797773717974737C77757D78777C7877817B797D78777C77757772
          707C77747771707C77757772707772707974717A74737772717773717772717A
          74737974737974727771707C77747C777575716F75706F7A7574746F6D777170
          7973717C7774746F6D7974717D797777727079737179737100007A77747C7877
          7975737C7977817C7A7C78777D79787D78777A77747C7877847D7C7F7A797974
          727F7A787D797775716F7974737C78757C77757571707A75737974727974737C
          7774746F6D7C777577737175716F75706F7771707D79777C7774716D6A74706F
          75706F777271797371746F6D75706D7A74727A75747772717A75747772707973
          71746F6D75706F7C777575716F7974717A747279747177716F726D6C746F6D77
          72707974717A747277716F7A7472736D6D7A747274706D77727075706F736D6C
          726D6A706A69706A6977716F746F6D79747177706F746F6D77716F797270716C
          69726D6A726D6A756F6D77716F7C757477716F77716F736D6C797371746F6D77
          727077706F736D6C75706D746F6D726D6A746F6D746F6D77727077716F746F6D
          706A697A7471777270716D6A716D6A77716F6F6968716C6A746F6D77716F716A
          69736D6C797270726D6A75706D736D6C000075706E777270746F6D746F6D7772
          6F736D6C75706E77716F746F6D77716F7A7472797271706A6977716F77716F6F
          6A69746E6D75706E746F6D726D6A777270726D6A746F6D797270716D6A797271
          746F6D726D6A716C6A726D6A77727077726F6D6966726D6A736E6D756F6E7772
          6F726D6C77716F7A74727A76747A74727C77747773717A7472746F6E77716F7C
          777677726F7973727A77747A7473777270746F6E746F6E7A76737A74727A7673
          77716F7A7472726D6C7A7472726D6A746F6D746F6D746F6D726D6A716C6A736E
          6C77726F746F6D7A737177716F75706E77716F797371726D6C746F6D736E6C77
          727077706E7A7472746F6D736E6C706A69756F6D726D6A746E6A716A69716A69
          726D6A726C6A706A69716A696F6A68726A69726C6A706A696E6967756F6D726D
          6A716C6A716A6A77716F6E69676F6A69746F6D75706E706A69746F6D7A747273
          6E6C77716F746F6D0000}
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
        DrawStyle = idsTile
        TileOffsetX = 0
        TileOffsetY = 0
      end>
    Left = 332
    Top = 89
  end
end
