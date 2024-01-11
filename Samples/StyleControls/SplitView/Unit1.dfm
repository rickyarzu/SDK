object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'StyleControls VCL - Modern Application Demo'
  ClientHeight = 409
  ClientWidth = 668
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
    668
    409)
  PixelsPerInch = 96
  TextHeight = 13
  object scPanel1: TscPanel
    Left = 50
    Top = 0
    Width = 618
    Height = 409
    Align = alClient
    TabOrder = 4
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
    Color = clBtnFace
    Caption = 'scPanel1'
    StorePaintBuffer = False
    DesignSize = (
      618
      409)
    object scPageViewer1: TscPageViewer
      Left = 0
      Top = 0
      Width = 618
      Height = 409
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
      object scPageViewerPage2: TscPageViewerPage
        Left = 0
        Top = 0
        Width = 618
        Height = 409
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
        TabOrder = 1
        Visible = False
        WallpaperIndex = -1
        CustomBackgroundImageIndex = -1
        FullUpdate = False
        BackgroundStyle = scsbsFormBackground
        object scLabel2: TscLabel
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
          Caption = 'Page #2'
        end
      end
      object scPageViewerPage1: TscPageViewerPage
        Left = 0
        Top = 0
        Width = 618
        Height = 409
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
        FullUpdate = False
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
          Caption = 'Page #1'
        end
        object scLabel8: TscLabel
          Left = 24
          Top = 119
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
          Caption = '<< Use TscButton.ImageMargin =  TscSpitView.CompactWidth '
        end
        object scMemo1: TscMemo
          Left = 19
          Top = 152
          Width = 337
          Height = 145
          Lines.Strings = (
            '//  Buttons use TscGPVirtualImageList, which can be HQ scaled!'
            ''
            'procedure TForm1.scStyledForm1ChangeScale(AScaleFactor: '
            'Double);'
            'begin'
            '   scGPVirtualImageList1.SetScaleFactor(AScaleFactor);'
            'end;'
            ''
            '// scGPVirtualImageList1.SourceImageList = ImageList (48x48) ')
          ReadOnly = True
          TabOrder = 2
          WallpaperIndex = -1
          Transparent = False
          CustomBackgroundImageNormalIndex = -1
          CustomBackgroundImageHotIndex = -1
          CustomBackgroundImageDisabledIndex = -1
          UseFontColorToStyleColor = False
        end
      end
    end
    object scSplitView3: TscSplitView
      Left = 0
      Top = 0
      Width = 0
      Height = 409
      Anchors = [akLeft, akTop, akBottom]
      Enabled = False
      TabOrder = 1
      StyleElements = []
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
      HideControls = False
      Animation = True
      DisplayMode = scsvmOverlay
      object scPanel2: TscPanel
        Left = -250
        Top = 0
        Width = 250
        Height = 409
        Align = alRight
        TabOrder = 0
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
        Color = clGray
        Caption = 'scPanel2'
        StorePaintBuffer = False
        ExplicitLeft = 6
        object scLabel7: TscLabel
          Left = 38
          Top = 38
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
  end
  object scSplitView2: TscSplitView
    Left = 668
    Top = 0
    Width = 0
    Height = 409
    Anchors = [akTop, akRight, akBottom]
    Enabled = False
    TabOrder = 0
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
    HideControls = False
    Animation = True
    DisplayMode = scsvmOverlay
    object scScrollBox1: TscScrollBox
      Left = 1
      Top = 50
      Width = 249
      Height = 359
      HorzScrollBar.Tracking = True
      VertScrollBar.Tracking = True
      Align = alLeft
      BorderStyle = bsNone
      TabOrder = 0
      WallpaperIndex = -1
      CustomBackgroundImageIndex = -1
      FullUpdate = False
      BackgroundStyle = scsbsPanel
      object scListGroupPanel1: TscListGroupPanel
        Left = 0
        Top = 0
        Width = 232
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
          Top = 86
          Width = 53
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
          Caption = 'Option #2:'
        end
        object scLabel3: TscLabel
          Left = 20
          Top = 123
          Width = 53
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
          Caption = 'Option #3:'
        end
        object scGPSwitch3: TscGPSwitch
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
        object scGPSwitch4: TscGPSwitch
          Left = 170
          Top = 81
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
        object scGPSwitch5: TscGPSwitch
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
        Width = 232
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
          UseFontColorToStyleColor = True
          Caption = 'User name:'
        end
        object scLabel17: TscLabel
          Left = 19
          Top = 85
          Width = 50
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
          UseFontColorToStyleColor = True
          Caption = 'Password:'
        end
        object scPasswordEdit1: TscPasswordEdit
          Left = 86
          Top = 81
          Width = 120
          Height = 21
          Cursor = crIBeam
          TabOrder = 2
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
          TabOrder = 3
        end
      end
      object scListGroupPanel4: TscListGroupPanel
        Left = 0
        Top = 260
        Width = 232
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
      Caption = 'Options'
    end
  end
  object scSplitView1: TscSplitView
    Left = 0
    Top = 0
    Width = 50
    Height = 409
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 1
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
    Animation = True
    DisplayMode = scsvmOverlay
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
      Images = scGPVirtualImageList1
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
      Images = scGPVirtualImageList1
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
      Images = scGPVirtualImageList1
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
      Top = 359
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
      Images = scGPVirtualImageList1
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
      Top = 309
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
      Images = scGPVirtualImageList1
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
    object scButton5: TscButton
      Left = 0
      Top = 259
      Width = 50
      Height = 50
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = scButton5Click
      Animation = False
      Caption = 'Page #3'
      CanFocused = False
      CustomDropDown = False
      Margin = 0
      Spacing = 10
      Layout = blGlyphLeft
      Images = scGPVirtualImageList1
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
    object scGPSwitch1: TscGPSwitch
      Left = 57
      Top = 156
      Width = 42
      Height = 20
      TabOrder = 6
      Animation = True
      FrameColor = clWhite
      FrameOnColor = clWhite
      FramePressedColor = 5912332
      ParentColor = True
      State = scswOff
      StyleKind = scswsStyled
      ThumbColor = clWhite
      ThumbOnColor = 9787667
      ThumbPressedColor = clWhite
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
      OnChangeState = scGPSwitch1ChangeState
    end
    object scLabel9: TscLabel
      Left = 108
      Top = 157
      Width = 79
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
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
      Caption = 'Overlay mode'
    end
    object scLabel16: TscLabel
      Left = 106
      Top = 190
      Width = 63
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
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
      Caption = 'Animations'
    end
    object scGPSwitch2: TscGPSwitch
      Left = 56
      Top = 188
      Width = 42
      Height = 20
      TabOrder = 9
      Animation = True
      FrameColor = clWhite
      FrameOnColor = clWhite
      FramePressedColor = 5912332
      ParentColor = True
      State = scswOn
      StyleKind = scswsStyled
      ThumbColor = clWhite
      ThumbOnColor = 9787667
      ThumbPressedColor = clWhite
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
      OnChangeState = scGPSwitch2ChangeState
    end
    object scGPSwitch6: TscGPSwitch
      Left = 57
      Top = 224
      Width = 42
      Height = 20
      TabOrder = 10
      Animation = True
      FrameColor = clWhite
      FrameOnColor = clWhite
      FramePressedColor = 5912332
      ParentColor = True
      State = scswOn
      StyleKind = scswsStyled
      ThumbColor = clWhite
      ThumbOnColor = 9787667
      ThumbPressedColor = clWhite
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
      OnChangeState = scGPSwitch6ChangeState
    end
    object scLabel10: TscLabel
      Left = 105
      Top = 212
      Width = 56
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      DragForm = False
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
      Caption = 'Inertial animation'
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
    Left = 352
    Top = 16
  end
  object scStyledForm1: TscStyledForm
    DWMClientShadow = False
    DropDownForm = False
    DropDownAnimation = False
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
    OnChangeScale = scStyledForm1ChangeScale
    Left = 440
    Top = 16
  end
  object ImageList48: TImageList
    ColorDepth = cd32Bit
    Height = 48
    Width = 48
    Left = 448
    Top = 206
    Bitmap = {
      494C010106000800640030003000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C00000006000000001002000000000000020
      0100000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000040404200404042000000000000000000000
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
      0000000000000000000000000000909090C0909090C000000000000000000000
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
      0000000000000000000040404080FFFFFFFFFFFFFFFF31313170000000000000
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
      0000000000000000000000000000000000000000000000000000010101102424
      2460797979B0909090C0A9A9A9D0FFFFFFFFFFFFFFFFA9A9A9D0909090C07979
      79B0242424600101011000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009090930FFFFFFFFFFFFFFFFFFFFFFFFE1E1E1F0090909300000
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
      00000000000000000000000000000000000019191950797979B0FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF797979B0101010400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A9A9A9D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090C00000
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
      0000000000000000000010101040909090C0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090C010101040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000031313170FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3131
      3170000000000000000000000000000000000000000000000000000000000000
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
      00000000000051515190FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8
      A8CF3030306F0F0F0F3F090909300000000000000000090909300F0F0F3F3030
      306FA8A8A8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF515151900000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0420E1E1E1F0FFFFFFFFFFFFFFFF4040408040404080FFFFFFFFFFFFFFFFE1E1
      E1F0040404200000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000101
      0110909090C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3F7F010101100000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101103F3F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7979
      79B0010101100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009090
      90C0FFFFFFFFFFFFFFFFA8A8A8CF0000000000000000A8A8A8CFFFFFFFFFFFFF
      FFFF909090C00000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000001010110A9A9
      A9D0FFFFFFFFFFFFFFFFFFFFFFFF787878AF0404042000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040420787878AFFFFFFFFFFFFFFFFFFFFF
      FFFFA9A9A9D00101011000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000024242460FFFF
      FFFFFFFFFFFFFFFFFFFF09090930000000000000000010101040FFFFFFFFFFFF
      FFFFFFFFFFFF1919195000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000909090C0FFFF
      FFFFFFFFFFFFFFFFFFFF3F3F3F7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F3F3F7FFFFFFFFFFFFF
      FFFFFFFFFFFF797979B000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010110E1E1E1F0FFFF
      FFFFFFFFFFFF515151900000000000000000000000000000000051515190FFFF
      FFFFFFFFFFFFE1E1E1F001010110000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000051515190FFFFFFFFFFFF
      FFFFFFFFFFFF2424246000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000024242460FFFF
      FFFFFFFFFFFFFFFFFFFF51515190000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000051515190FFFFFFFFFFFF
      FFFFE0E0E0EF010101100000000000000000000000000000000001010110E0E0
      E0EFFFFFFFFFFFFFFFFF51515190000000000000000000000000000000000000
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
      00000000000000000000000000000000000010101040FFFFFFFFFFFFFFFFFFFF
      FFFF404040800000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004040
      4080FFFFFFFFFFFFFFFFFFFFFFFF101010400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040420FFFFFFFFFFFFFFFFFFFF
      FFFF242424600000000000000000000000000000000000000000000000002424
      2460FFFFFFFFFFFFFFFFFFFFFFFF040404200000000000000000000000000000
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
      000000000000000000000000000000000000909090C0FFFFFFFFFFFFFFFF7878
      78AF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000787878AFFFFFFFFFFFFFFFFF909090C00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000909090C0FFFFFFFFFFFFFFFF8F8F
      8FBF000000000000000000000000000000000000000000000000000000000000
      00008F8F8FBFFFFFFFFFFFFFFFFF909090C00000000000000000000000000000
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
      000000000000000000000000000019191950FFFFFFFFFFFFFFFFFFFFFFFF0404
      0420000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040420FFFFFFFFFFFFFFFFFFFFFFFF1919195000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010101040FFFFFFFFFFFFFFFFFFFFFFFF0909
      0930000000000000000000000000000000000000000000000000000000000000
      000009090930FFFFFFFFFFFFFFFFFFFFFFFF1010104000000000000000000000
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
      0000000000000000000000000000797979B0FFFFFFFFFFFFFFFF404040800000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFF797979B000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A9A9A9D0FFFFFFFFFFFFFFFF646464A00000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000646464A0FFFFFFFFFFFFFFFFA9A9A9D000000000000000000000
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
      0000000000000000000001010110FFFFFFFFFFFFFFFFFFFFFFFF010101100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001010110FFFFFFFFFFFFFFFFFFFFFFFF01010110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000024242460FFFFFFFFFFFFFFFFE0E0E0EF040404200000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040420E0E0E0EFFFFFFFFFFFFFFFFF24242460000000000000
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
      0000000000000000000024242460FFFFFFFFFFFFFFFFA8A8A8CF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A8A8A8CFFFFFFFFFFFFFFFFF24242460000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C4C4C4E0FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFFC4C4C4E0000000000000
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
      00000000000000000000797979B0FFFFFFFFFFFFFFFF31313170000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031313170FFFFFFFFFFFFFFFF797979B0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000024242460FFFFFFFFFFFFFFFFE0E0E0EF01010110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010110E0E0E0EFFFFFFFFFFFFFFFFF242424600000
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
      00000000000000000000909090C0FFFFFFFFFFFFFFFF10101040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101040FFFFFFFFFFFFFFFF909090C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C4C4C4E0FFFFFFFFFFFFFFFF4040408000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000040404080FFFFFFFFFFFFFFFFC4C4C4E00000
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
      00000000000000000000A9A9A9D0FFFFFFFFFFFFFFFF09090930000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000009090930FFFFFFFFFFFFFFFFA9A9A9D0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000024242460FFFFFFFFFFFFFFFFE0E0E0EF0101011000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010110E0E0E0EFFFFFFFFFFFFFFFFF2424
      2460000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000909090C0FFFFFFFFFFFFFFFF404040800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040404080FFFFFFFFFFFFFFFF9090
      90C0000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000909
      0930FFFFFFFFFFFFFFFFFFFFFFFF010101100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010110FFFFFFFFFFFFFFFFFFFF
      FFFF040404200000000000000000000000000000000000000000000000000000
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
      00000000000000000000E0E0E0EFFFFFFFFFFFFFFFFF01010110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040420FFFFFFFFFFFFFFFFC3C3C3DF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005151
      5190FFFFFFFFFFFFFFFF646464A0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000646464A0FFFFFFFFFFFF
      FFFF515151900000000000000000000000000000000000000000000000000000
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
      00000000000000000000909090C0FFFFFFFFFFFFFFFF10101040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101040FFFFFFFFFFFFFFFF909090C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C4C4
      C4E0FFFFFFFFFFFFFFFF19191950000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000019191950FFFFFFFFFFFF
      FFFFC4C4C4E00000000000000000000000000000000000000000000000000000
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
      00000000000000000000646464A0FFFFFFFFFFFFFFFF31313170000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031313170FFFFFFFFFFFFFFFF646464A0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040420FFFF
      FFFFFFFFFFFFE0E0E0EF00000000000000000000000000000000000000000000
      0000000000000000000051515190C4C4C4E0C4C4C4E040404080000000000000
      0000000000000000000000000000000000000000000000000000E0E0E0EFFFFF
      FFFFFFFFFFFF0404042000000000000000000000000000000000000000000000
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
      0000000000000000000024242460FFFFFFFFFFFFFFFF797979B0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000797979B0FFFFFFFFFFFFFFFF24242460000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000024242460FFFF
      FFFFFFFFFFFF909090C000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040800000
      0000000000000000000000000000000000000000000000000000909090C0FFFF
      FFFFFFFFFFFF1919195000000000000000000000000000000000000000000000
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
      0000000000000000000004040420FFFFFFFFFFFFFFFFFFFFFFFF040404200000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040420FFFFFFFFFFFFFFFFFFFFFFFF04040420000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000040404080FFFF
      FFFFFFFFFFFF4040408000000000000000000000000000000000000000000000
      000000000000E1E1E1F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00000
      000000000000000000000000000000000000000000000000000040404080FFFF
      FFFFFFFFFFFF4040408000000000000000000000000000000000000000000000
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
      00000000000000000000000000008F8F8FBFFFFFFFFFFFFFFFFF404040800000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFF8F8F8FBF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000040404080FFFF
      FFFFFFFFFFFF4040408000000000000000000000000000000000000000000000
      000000000000E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3DF0000
      000000000000000000000000000000000000000000000000000040404080FFFF
      FFFFFFFFFFFF4040408000000000000000000000000000000000000000000000
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
      000000000000000000000000000019191950FFFFFFFFFFFFFFFFE1E1E1F00404
      0420000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040420E1E1E1F0FFFFFFFFFFFFFFFF1919195000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000019191950FFFF
      FFFFFFFFFFFF797979B000000000000000000000000000000000000000000000
      00000000000051515190FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF515151900000
      0000000000000000000000000000000000000000000000000000797979B0FFFF
      FFFFFFFFFFFF1919195000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000A8A8A8CFFFFFFFFFFFFFFFFF7979
      79B0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000797979B0FFFFFFFFFFFFFFFFA8A8A8CF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010101040FFFF
      FFFFFFFFFFFFA9A9A9D000000000000000000000000000000000000000000000
      000000000000010101105050508FC3C3C3DFC3C3C3DF3F3F3F7F000000000000
      0000000000000000000000000000000000000000000000000000A9A9A9D0FFFF
      FFFFFFFFFFFF1010104000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000010101040FFFFFFFFFFFFFFFFFFFF
      FFFF313131700000000000000000000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      3170FFFFFFFFFFFFFFFFFFFFFFFF101010400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0E0
      E0EFFFFFFFFFFFFFFFFF04040420000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040420FFFFFFFFFFFF
      FFFFE0E0E0EF0000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000051515190FFFFFFFFFFFF
      FFFFFFFFFFFF2424246000000000000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      000000000000000000000000000000000000000000000000000024242460FFFF
      FFFFFFFFFFFFFFFFFFFF51515190000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007979
      79B0FFFFFFFFFFFFFFFF40404080000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000040404080FFFFFFFFFFFF
      FFFF646464A00000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000A8A8A8CFFFFF
      FFFFFFFFFFFFFFFFFFFF31313170000000000000000000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000000000000000000000000000031313170FFFFFFFFFFFF
      FFFFFFFFFFFF8F8F8FBF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      1040FFFFFFFFFFFFFFFFFFFFFFFF040404200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040420FFFFFFFFFFFFFFFFFFFF
      FFFF101010400000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000001010110A8A8
      A8CFFFFFFFFFFFFFFFFFFFFFFFFF797979B00101011000000000000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      000000000000000000000000000001010110797979B0FFFFFFFFFFFFFFFFFFFF
      FFFFA8A8A8CF0101011000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008F8F8FBFFFFFFFFFFFFFFFFFA9A9A9D00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A9A9A9D0FFFFFFFFFFFFFFFF8F8F
      8FBF000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000101
      0110A8A8A8CFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1F040404080000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000040404080E1E1E1F0FFFFFFFFFFFFFFFFFFFFFFFFA8A8
      A8CF010101100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010101040FFFFFFFFFFFFFFFFFFFFFFFF646464A000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000646464A0FFFFFFFFFFFFFFFFFFFFFFFF0909
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005050508FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5050508F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000024242460FFFFFFFFFFFFFFFFFFFFFFFFA9A9A9D0040404200000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004040420A9A9A9D0FFFFFFFFFFFFFFFFFFFFFFFF242424600000
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
      0000000000000000000010101040C3C3C3DFFFFFFFFFFFFFFFFF000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      00000000000000000000FFFFFFFFFFFFFFFFA8A8A8CF10101040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006363639FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4040
      4080040404200000000000000000000000000000000000000000000000000404
      042040404080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6363639F000000000000
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
      0000000000000000000000000000000000001818184F8F8F8FBF000000000000
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      000000000000000000008F8F8FBF1818184F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000024242460FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA9A9A9D0797979B04040408040404080797979B0A9A9A9D0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2424246000000000000000000000
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
      0000000000000000000040404080FFFFFFFFFFFFFFFF40404080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000090909308F8F8FBFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8F8F8FBF090909300000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000101010407878
      78AFE0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0
      E0EF787878AF1010104000000000000000000000000000000000000000000000
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
      0000000000000F0F0F3F1818184F3F3F3F7F3F3F3F7F1818184F0F0F0F3F0000
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
      0000000000000000000000000000000000000000000037373777565656940000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000565656941B1B1B54000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FFFFFFFFF1F1
      F1F80707072D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000707
      072DF1F1F1F8FFFFFFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0420404040804040408040404080404040804040408040404080404040804040
      4080040404200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000024242460646464A00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F1F1F8FFFF
      FFFFFFFFFFFF757575AD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000757575ADFFFF
      FFFFFFFFFFFFF1F1F1F800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      3170FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF313131700000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000024242460FFFFFFFFFFFFFFFF646464A000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADADD2FFFF
      FFFFFFFFFFFFFFFFFFFFF1F1F1F81B1B1B540000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B54F1F1F1F8FFFFFFFFFFFF
      FFFFFFFFFFFFADADADD200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      64A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF646464A00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363639FFFFFFFFFFFFFFFFFFFFFFFFF646464A0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000037373777FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADADADD200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADADD2FFFFFFFFFFFFFFFFFDFDFDFEFFFF
      FFFFFFFFFFFF3737377700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A9
      A9D0FFFFFFFFFFFFFFFF6363639F3F3F3F7F3F3F3F7F6363639FFFFFFFFFFFFF
      FFFFA9A9A9D00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006363639FFFFFFFFFFFFFFFFFFFFFFFFF646464A00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FDFEFFFFFFFF37373777D4D4D4E9FFFFFFFFFFFFFFFFF7F7F7FB1B1B1B540000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001B1B1B54F7F7F7FBFFFFFFFFFFFFFFFFD4D4D4E937373777FFFF
      FFFFFDFDFDFE0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006363639FFFFFFFFFFFFFFFFFFFFFFFFF6464
      64A0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5E5
      E5F2FFFFFFFF929292C10000000056565694FDFDFDFEFFFFFFFFFFFFFFFFC4C4
      C4E0000000000000000000000000000000000000000000000000000000000000
      0000C4C4C4E0FFFFFFFFFFFFFFFFFDFDFDFE5656569400000000929292C1FFFF
      FFFFE5E5E5F20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010101040FFFF
      FFFFFFFFFFFFA8A8A8CF00000000000000000000000000000000A8A8A8CFFFFF
      FFFFFFFFFFFF1010104000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363639FFFFFFFFFFFFFFFFFFFFF
      FFFF646464A00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009292
      92C1FFFFFFFFE5E5E5F200000000000000000707072DC3C3C3DFFFFFFFFFFFFF
      FFFFFBFBFBFD373737770000000000000000000000000000000037373777FBFB
      FBFDFFFFFFFFFFFFFFFFC3C3C3DF0707072D0000000000000000E5E5E5F2FFFF
      FFFF929292C10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010101040000000000000
      0000000000000000000000000000000000000000000010101040909090C0FFFF
      FFFFFFFFFFFF646464A000000000000000000000000000000000646464A0FFFF
      FFFFFFFFFFFF909090C010101040000000000000000000000000000000000000
      0000000000000000000010101040000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006363639FFFFFFFFFFFFF
      FFFFFFFFFFFF646464A000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001B1B
      1B54FFFFFFFFFFFFFFFF0000000000000000000000000000000037373777FBFB
      FBFDFFFFFFFFFFFFFFFFC4C4C4E00000000000000000C4C4C4E0FFFFFFFFFFFF
      FFFFFBFBFBFD3737377700000000000000000000000000000000FFFFFFFFFFFF
      FFFF1B1B1B540000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010101040FFFFFFFFE1E1E1F06464
      64A019191950000000000000000004040420909090C0FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF313131700000000000000000000000000000000031313170FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF909090C00404042000000000000000001919
      1950646464A0E1E1E1F0FFFFFFFF101010400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006363639FFFFF
      FFFFFFFFFFFFFFFFFFFF646464A0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBFBFBFDFFFFFFFF1B1B1B54000000000000000000000000000000000000
      0000C3C3C3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3
      C3DF000000000000000000000000000000000000000037373777FFFFFFFFFBFB
      FBFD000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C4E0FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE1E1E1F0646464A0E1E1E1F0FFFFFFFFFFFFFFFFFFFFFFFFE0E0
      E0EF5050508F0101011000000000000000000000000000000000010101105050
      508FE0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1F0646464A0E1E1E1F0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      639FFFFFFFFFFFFFFFFFFFFFFFFF646464A00000000000000000000000000000
      0000000000000000000000000000000000000000000009090930101010404040
      4080404040803131317010101040090909300000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6D6D6EAFFFFFFFFADADADD2000000000000000000000000000000000000
      0000000000001B1B1B54F7F7F7FBFFFFFFFFFFFFFFFFF7F7F7FB1B1B1B540000
      00000000000000000000000000000000000000000000ADADADD2FFFFFFFFD6D6
      D6EA000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000031313170FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0EF2323235F0101
      0110000000000000000000000000000000000000000000000000000000000000
      0000010101102323235FE0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3131317000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006363639FFFFFFFFFFFFFFFFFFFFFFFFF646464A000000000000000000000
      0000000000000000000009090930646464A0C4C4C4E0FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E051515190101010400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000757575ADFFFFFFFFF1F1F1F8000000000000000000000000000000000000
      0000000000000000000000000000ABABABD1ABABABD100000000000000000000
      00000000000000000000000000000000000000000000F1F1F1F8FFFFFFFF7575
      75AD000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010110E1E1E1F0FFFFFFFFFFFFFFFF3F3F3F7F5050
      508FC3C3C3DFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FBF01010110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101108F8F8FBFFFFFFFFFFFFFFFFFFFFFFFFFC3C3
      C3DF5050508F3F3F3F7FFFFFFFFFFFFFFFFFE1E1E1F001010110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363639FFFFFFFFFFFFFFFFFFFFFFFFF646464A0000000000000
      000009090930909090C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7979
      79B0040404200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000707072DFFFFFFFFFFFFFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF0707
      072D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000646464A0FFFFFFFFFFFFFFFFA8A8A8CF000000000000
      000000000000090909305050508F5050508F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005050508F5050508F090909300000
      00000000000000000000A8A8A8CFFFFFFFFFFFFFFFFF646464A0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006363639FFFFFFFFFFFFFFFFFFFFFFFFF646464A03131
      3170FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0EF8F8F8FBF5050
      508F3F3F3F7F5050508F8F8F8FBFE0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2424246000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F7FBFFFFFFFF373737770000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000037373777FFFFFFFFF7F7F7FB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009090930FFFFFFFFFFFFFFFFFFFFFFFF10101040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101011019191950404040804040408019191950010101100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101040FFFFFFFFFFFFFFFFFFFFFFFF090909300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006363639FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF6363639F0909093000000000000000000000
      000000000000000000000000000000000000090909306363639FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF646464A0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C4C4C4E0FFFFFFFFADADADD20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4C4C4E0FFFFFFFFC4C4C4E00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000909090C0FFFFFFFFFFFFFFFFFFFFFFFF09090930000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0110646464A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6464
      64A0010101100000000000000000000000000000000000000000000000000000
      0000000000000000000009090930FFFFFFFFFFFFFFFFFFFFFFFF909090C00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363639FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA8A8A8CF04040420000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040420A8A8
      A8CFFFFFFFFFFFFFFFFFFFFFFFFF646464A00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000056565694FFFFFFFFF7F7F7FB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7FBFFFFFFFF565656940000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000024242460FFFFFFFFFFFFFFFFFFFFFFFFE1E1E1F0101010400000
      000000000000000000000000000000000000000000000000000009090930C4C4
      C4E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC4C4C4E00909093000000000000000000000000000000000000000000000
      00000000000010101040E1E1E1F0FFFFFFFFFFFFFFFFFFFFFFFF242424600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031313170FFFFFFFFFFFFFFFFFFFF
      FFFF6363639F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006363639FFFFFFFFFFFFFFFFFFFFFFFFF2424246000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000707072DFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF0707072D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000009090930E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFF2424
      2460000000000000000000000000000000000000000001010110C4C4C4E0FFFF
      FFFFFFFFFFFFFFFFFFFFA8A8A8CF5050508F5050508FA8A8A8CFFFFFFFFFFFFF
      FFFFFFFFFFFFC4C4C4E001010110000000000000000000000000000000000000
      000024242460FFFFFFFFFFFFFFFFFFFFFFFFE0E0E0EF09090930000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000009090930FFFFFFFFFFFFFFFFFFFFFFFF6363
      639F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363639FFFFFFFFFFFFFFFFFFFFFFFFF04040420000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000037373777FBFBFBFDFFFFFFFFFDFDFDFE1B1B1B5400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001B1B1B54FDFDFDFEFFFFFFFFFBFBFBFD1B1B
      1B54000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000009090930C3C3C3DFFFFFFFFFFFFFFFFFFFFF
      FFFF2424246000000000000000000000000000000000646464A0FFFFFFFFFFFF
      FFFFE0E0E0EF191919500000000000000000000000000000000019191950E0E0
      E0EFFFFFFFFFFFFFFFFF646464A0000000000000000000000000000000001919
      1950FFFFFFFFFFFFFFFFFFFFFFFFC3C3C3DF0909093000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000909090C0FFFFFFFFFFFFFFFFA8A8A8CF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A8A8A8CFFFFFFFFFFFFFFFFF797979B0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005656
      5694FFFFFFFFFFFFFFFFFBFBFBFD0707072D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000707072DFBFBFBFDFFFFFFFFFFFF
      FFFF565656940000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010110C3C3C3DFFFFFFFFFFFFF
      FFFF1010104000000000000000000000000001010110FFFFFFFFFFFFFFFFFFFF
      FFFF191919500000000000000000000000000000000000000000000000001919
      1950FFFFFFFFFFFFFFFFFFFFFFFF010101100000000000000000000000001010
      1040FFFFFFFFFFFFFFFFC3C3C3DF010101100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000009090930FFFFFFFFFFFFFFFFFFFFFFFF040404200000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040420FFFFFFFFFFFFFFFFFFFFFFFF101010400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADADD2FFFF
      FFFFFFFFFFFFE3E3E3F100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3E3E3F1FFFF
      FFFFFFFFFFFFADADADD200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C4C4E0FFFFFFFFFFFF
      FFFF0101011000000000000000000000000019191950FFFFFFFFFFFFFFFFA8A8
      A8CF000000000000000000000000000000000000000000000000000000000000
      0000A8A8A8CFFFFFFFFFFFFFFFFF191919500000000000000000000000000101
      0110FFFFFFFFFFFFFFFFC4C4C4E0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000646464A0FFFFFFFFFFFFFFFF646464A0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000646464A0FFFFFFFFFFFFFFFF515151900000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E5E5F2FFFFFFFFFFFF
      FFFF929292C10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009292
      92C1FFFFFFFFFFFFFFFFE5E5E5F2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
      FFFF0000000000000000000000000000000040404080FFFFFFFFFFFFFFFF5151
      5190000000000000000000000000000000000000000000000000000000000000
      0000646464A0FFFFFFFFFFFFFFFF404040800000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E1E1E1F0FFFFFFFFFFFFFFFF09090930000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000009090930FFFFFFFFFFFFFFFFC4C4C4E00000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000707072DFBFBFBFDFFFFFFFFFFFFFFFF3737
      3777000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000037373777FFFFFFFFFFFFFFFFFBFBFBFD0707072D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
      FFFF0000000000000000000000000000000040404080FFFFFFFFFFFFFFFF5151
      5190000000000000000000000000000000000000000000000000000000000000
      0000646464A0FFFFFFFFFFFFFFFF404040800000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009090930FFFFFFFFFFFFFFFFE0E0E0EF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E0EFFFFFFFFFFFFFFFFF0909
      0930000000000000000000000000000000000000000000000000000000000000
      0000000000000000000037373777FFFFFFFFFFFFFFFFFBFBFBFD0707072D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001B1B1B54FBFBFBFDFFFFFFFFFFFFFFFF37373777000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C3C3C3DFFFFFFFFFFFFF
      FFFF0101011000000000000000000000000019191950FFFFFFFFFFFFFFFFA9A9
      A9D0000000000000000000000000000000000000000000000000000000000000
      0000A9A9A9D0FFFFFFFFFFFFFFFF191919500000000000000000000000000101
      0110FFFFFFFFFFFFFFFFC3C3C3DF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010101040FFFFFFFFFFFFFFFF909090C000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000909090C0FFFFFFFFFFFFFFFF1010
      1040000000000000000000000000000000000000000000000000000000000000
      000000000000929292C1FFFFFFFFFFFFFFFFE3E3E3F10707072D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000707072DE3E3E3F1FFFFFFFFFFFFFFFF929292C10000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010110C4C4C4E0FFFFFFFFFFFF
      FFFF1010104000000000000000000000000001010110FFFFFFFFFFFFFFFFFFFF
      FFFF191919500000000000000000000000000000000000000000000000001919
      1950FFFFFFFFFFFFFFFFFFFFFFFF010101100000000000000000000000001010
      1040FFFFFFFFFFFFFFFFC4C4C4E0010101100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFF5151519000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000051515190FFFFFFFFFFFFFFFF3131
      3170000000000000000000000000000000000000000000000000000000000000
      0000D6D6D6EAFFFFFFFFFFFFFFFFABABABD10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABABABD1FFFFFFFFFFFFFFFFD6D6
      D6EA000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000009090930C4C4C4E0FFFFFFFFFFFFFFFFFFFF
      FFFF2424246000000000000000000000000000000000646464A0FFFFFFFFFFFF
      FFFFE1E1E1F0191919500000000000000000000000000000000019191950E1E1
      E1F0FFFFFFFFFFFFFFFF646464A0000000000000000000000000000000002424
      2460FFFFFFFFFFFFFFFFFFFFFFFFC4C4C4E00909093000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040404080FFFFFFFFFFFFFFFF4040408000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040404080FFFFFFFFFFFFFFFF4040
      40800000000000000000000000000000000000000000000000000707072DF7F7
      F7FBFFFFFFFFFFFFFFFFC4C4C4E0373737770000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000037373777C4C4C4E0FFFFFFFFFFFF
      FFFFF7F7F7FB0707072D00000000000000000000000000000000000000000000
      0000000000000000000009090930E1E1E1F0FFFFFFFFFFFFFFFFFFFFFFFF2424
      2460000000000000000000000000000000000000000001010110C3C3C3DFFFFF
      FFFFFFFFFFFFFFFFFFFFA9A9A9D05151519051515190A9A9A9D0FFFFFFFFFFFF
      FFFFFFFFFFFFC3C3C3DF01010110000000000000000000000000000000000000
      000024242460FFFFFFFFFFFFFFFFFFFFFFFFE1E1E1F009090930000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031313170FFFFFFFFFFFFFFFF5151519000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000051515190FFFFFFFFFFFFFFFF3131
      3170000000000000000000000000000000000000000037373777FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBFBFBFDF7F7F7FBF7F7F7FBF7F7F7FBF7F7F7FBC4C4C4E0C4C4C4E01B1B
      1B54000000000000000000000000000000000000000000000000000000000000
      00001B1B1B54C4C4C4E0C4C4C4E0F7F7F7FBF7F7F7FBF7F7F7FBF7F7F7FBFBFB
      FBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFBFBFBFD37373777000000000000000000000000000000000000
      00000000000024242460FFFFFFFFFFFFFFFFFFFFFFFFE0E0E0EF101010400000
      000000000000000000000000000000000000000000000000000009090930C3C3
      C3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC3C3C3DF0909093000000000000000000000000000000000000000000000
      00000000000010101040E0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFF242424600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010101040FFFFFFFFFFFFFFFF909090C000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000909090C0FFFFFFFFFFFFFFFF1010
      1040000000000000000000000000000000000707072DADADADD2C3C3C3DFC3C3
      C3DFD4D4D4E9F7F7F7FBF7F7F7FBF7F7F7FBF7F7F7FBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5
      E5F2000000000000000000000000000000000000000000000000000000000000
      0000E5E5E5F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FBF7F7F7FBF7F7F7FBF7F7F7FBD4D4
      D4E9C3C3C3DFC3C3C3DFADADADD20707072D0000000000000000000000000000
      0000000000008F8F8FBFFFFFFFFFFFFFFFFFFFFFFFFF09090930000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01106363639FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6363
      639F010101100000000000000000000000000000000000000000000000000000
      0000000000000000000009090930FFFFFFFFFFFFFFFFFFFFFFFF8F8F8FBF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009090930FFFFFFFFFFFFFFFFE1E1E1F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E1E1E1F0FFFFFFFFFFFFFFFF0909
      0930000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000707072D53535392535353925353539253535392FFFFFFFFFFFF
      FFFF0707072D0000000000000000000000000000000000000000000000000707
      072DFFFFFFFFFFFFFFFF535353925353539253535392535353920707072D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009090930FFFFFFFFFFFFFFFFFFFFFFFF10101040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101101818184F3F3F3F7F3F3F3F7F1818184F010101100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101040FFFFFFFFFFFFFFFFFFFFFFFF090909300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C3C3C3DFFFFFFFFFFFFFFFFF09090930000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000009090930FFFFFFFFFFFFFFFFC3C3C3DF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1F1F1F8FFFF
      FFFF929292C10000000000000000000000000000000000000000000000009292
      92C1FFFFFFFFF1F1F1F800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000646464A0FFFFFFFFFFFFFFFFA9A9A9D0000000000000
      0000000000000909093051515190515151900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005151519051515190090909300000
      00000000000000000000A9A9A9D0FFFFFFFFFFFFFFFF646464A0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000051515190FFFFFFFFFFFFFFFF646464A0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000646464A0FFFFFFFFFFFFFFFF515151900000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000757575ADFFFF
      FFFFF7F7F7FB000000000000000000000000000000000000000000000000F7F7
      F7FBFFFFFFFF757575AD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010110E0E0E0EFFFFFFFFFFFFFFFFF404040805151
      5190C4C4C4E0FFFFFFFFFFFFFFFFFFFFFFFF909090C001010110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010110909090C0FFFFFFFFFFFFFFFFFFFFFFFFC4C4
      C4E05151519040404080FFFFFFFFFFFFFFFFE0E0E0EF01010110000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101040FFFFFFFFFFFFFFFFFFFFFFFF040404200000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004040420FFFFFFFFFFFFFFFFFFFFFFFF101010400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FDFEFFFFFFFF1B1B1B54000000000000000000000000000000001B1B1B54FFFF
      FFFFFDFDFDFE0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000031313170FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1F0242424600101
      0110000000000000000000000000000000000000000000000000000000000000
      00000101011024242460E1E1E1F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3131317000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000787878AFFFFFFFFFFFFFFFFF909090C00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A9A9A9D0FFFFFFFFFFFFFFFF787878AF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6D6
      D6EAFFFFFFFFD6D6D6EA00000000000000000000000000000000D6D6D6EAFFFF
      FFFFD6D6D6EA0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C3DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE0E0E0EF6363639FE0E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFE1E1
      E1F0515151900101011000000000000000000000000000000000010101105151
      5190E1E1E1F0FFFFFFFFFFFFFFFFFFFFFFFFE0E0E0EF6363639FE0E0E0EFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3DF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040420FFFFFFFFFFFFFFFFFFFFFFFF6464
      64A0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000646464A0FFFFFFFFFFFFFFFFFFFFFFFF04040420000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001B1B
      1B54FFFFFFFFFFFFFFFF00000000000000000000000000000000FFFFFFFFFFFF
      FFFF1B1B1B540000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010101040FFFFFFFFE0E0E0EF6363
      639F1818184F0000000000000000040404208F8F8FBFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF313131700000000000000000000000000000000031313170FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FBF0404042000000000000000001818
      184F6363639FE0E0E0EFFFFFFFFF101010400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000024242460FFFFFFFFFFFFFFFFFFFF
      FFFF646464A00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000646464A0FFFFFFFFFFFFFFFFFFFFFFFF2424246000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F7FBFFFFFFFF757575AD0000000000000000757575ADFFFFFFFFF7F7
      F7FB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F3F000000000000
      00000000000000000000000000000000000000000000101010408F8F8FBFFFFF
      FFFFFFFFFFFF646464A000000000000000000000000000000000646464A0FFFF
      FFFFFFFFFFFF8F8F8FBF10101040000000000000000000000000000000000000
      000000000000000000000F0F0F3F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006363639FFFFFFFFFFFFF
      FFFFFFFFFFFFA9A9A9D004040420000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040420A9A9
      A9D0FFFFFFFFFFFFFFFFFFFFFFFF6363639F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000929292C1FFFFFFFFF1F1F1F80000000000000000F1F1F1F8FFFFFFFF9292
      92C1000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010101040FFFF
      FFFFFFFFFFFFA9A9A9D000000000000000000000000000000000A9A9A9D0FFFF
      FFFFFFFFFFFF1010104000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006363639FFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF646464A00909093000000000000000000000
      00000000000000000000000000000000000009090930646464A0FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF6363639F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000707072DFFFFFFFFFFFFFFFF0707072D0707072DFFFFFFFFFFFFFFFF0707
      072D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002424
      2460FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1F0909090C05151
      51904040408051515190909090C0E1E1E1F0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF2424246000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5E5E5F2FFFFFFFFADADADD2ADADADD2FFFFFFFFE5E5E5F20000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A8
      A8CFFFFFFFFFFFFFFFFF646464A04040408040404080646464A0FFFFFFFFFFFF
      FFFFA8A8A8CF0000000000000000000000000000000000000000000000000000
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
      000004040420787878AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7878
      78AF040404200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000037373777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF373737770000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      64A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF646464A00000000000000000000000000000000000000000000000000000
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
      00000000000000000000101010405050508FC3C3C3DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3DF5050508F101010400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFDFDFEFFFFFFFFFFFFFFFFFDFDFDFE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      3170FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF313131700000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000090909300F0F0F3F3030
      306F3F3F3F7F3030306F0F0F0F3F090909300000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADADD2FFFFFFFFFFFFFFFFADADADD2000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      04203F3F3F7F3F3F3F7F3F3F3F7F3F3F3F7F3F3F3F7F3F3F3F7F3F3F3F7F3F3F
      3F7F040404200000000000000000000000000000000000000000000000000000
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
      000000000000000000000707072DFFFFFFFFFFFFFFFF0707072D000000000000
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
      0000000000000000000000000000F1F1F1F8F1F1F1F800000000000000000000
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
      0000000000000000000000000000757575AD757575AD00000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000600000000100010000000000000900000000000000000000
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
  object scGPVirtualImageList1: TscGPVirtualImageList
    ColorDepth = cdDefault
    PixelOffsetMode = scgppomDefault
    InterpolationMode = scgppimDefault
    Width = 24
    Height = 24
    DefaultWidth = 24
    DefaultHeight = 24
    SourceImageList = ImageList48
    Left = 540
    Top = 206
    Bitmap = {}
  end
end
