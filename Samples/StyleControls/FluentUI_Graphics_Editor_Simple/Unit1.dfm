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
    object ClientPanel: TscPanel
      Left = 0
      Top = 91
      Width = 900
      Height = 368
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
        object scCheckBox1: TscCheckBox
          Left = 36
          Top = 19
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
        object scLabel4: TscLabel
          Left = 35
          Top = 158
          Width = 33
          Height = 16
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
          AutoSize = True
          UseFontColorToStyleColor = False
          Caption = 'Style:'
        end
        object scComboBox1: TscComboBox
          Left = 35
          Top = 180
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
          TabOrder = 2
          StyleKind = scscbDefault
          ShowFocusRect = True
          OnClick = scComboBox1Click
        end
        object scCheckBox2: TscCheckBox
          Left = 36
          Top = 61
          Width = 277
          Height = 35
          FluentUIOpaque = False
          TabOrder = 3
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
          Top = 102
          Width = 133
          Height = 35
          FluentUIOpaque = False
          TabOrder = 4
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
      end
      object scPageViewer3: TscPageViewer
        Left = 500
        Top = 0
        Width = 400
        Height = 368
        Align = alRight
        FluentUIOpaque = False
        TabOrder = 1
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
            Font.Color = clHighlight
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
            Font.Color = clHighlight
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
            Font.Color = clHighlight
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
            Font.Color = clHighlight
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
            Left = 113
            Top = 139
            Width = 246
            Height = 28
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
            TrackProgressColor = clHighlight
            TrackSize = 2
            TrackAlpha = 50
            TrackRounded = False
            TrackProgressAlpha = 250
            ThumbBorderInColor = clWindow
            ThumbBorderOutColor = clBtnShadow
            ThumbColor = clHighlight
            ThumbHotColor = clHighlight
            ThumbPressedColor = clHighlight
            ThumbDisabledColor = clGray
            ThumbShapeStyle = scgptssRoundedBorder
            ThumbCursor = crDefault
            ThumbUseCursor = False
          end
          object scGPTrackBar2: TscGPTrackBar
            Left = 113
            Top = 76
            Width = 246
            Height = 28
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
            TrackProgressColor = clHighlight
            TrackSize = 2
            TrackAlpha = 50
            TrackRounded = False
            TrackProgressAlpha = 250
            ThumbBorderInColor = clWindow
            ThumbBorderOutColor = clBtnShadow
            ThumbColor = clHighlight
            ThumbHotColor = clHighlight
            ThumbPressedColor = clHighlight
            ThumbDisabledColor = clGray
            ThumbShapeStyle = scgptssRoundedBorder
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
            Left = 122
            Top = 264
            Width = 45
            Height = 35
            FluentUIOpaque = False
            TabOrder = 4
            TabStop = True
            Animation = True
            CanFocused = True
            CaptionOn = 'On'
            CaptionOff = 'Off'
            DrawTextMode = scdtmGDI
            FrameColor = clBtnText
            FrameOnColor = clHighlight
            FramePressedColor = clBtnShadow
            ParentColor = True
            State = scswOn
            StyleKind = scswsStyled
            SwitchWidth = 40
            SwitchHeight = 20
            ShowCaption = False
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
            ThumbMargin = 3
            ThumbMarginHot = 2
            ThumbMarginPressed = 4
            FrameSolid = False
            FrameOnSolid = True
            FrameInside = False
            FrameWidth = 1
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
    object scGPPanel2: TscGPPanel
      Left = 0
      Top = 0
      Width = 900
      Height = 91
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
          GlowEffect.Color = clBtnShadow
          GlowEffect.AlphaValue = 255
          GlowEffect.GlowSize = 7
          GlowEffect.Offset = 0
          GlowEffect.Intensive = True
          GlowEffect.StyleColors = True
          AutoSize = False
          ShowEllipsis = True
          Caption = 'StyleControls VCL - Fluent UI - Graphics Editor - Demo'
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
  end
  object scStyledForm1: TscStyledForm
    FluentUIBackground = scfuibAcrylic
    FluentUIAcrylicColor = clWindow
    FluentUIAcrylicColorAlpha = 50
    FluentUIBorder = True
    FluentUIInactiveAcrylicColorOpaque = True
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
    Left = 40
    Top = 320
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
    Left = 128
    Top = 320
  end
  object PopupMenu1: TPopupMenu
    Left = 232
    Top = 320
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
          89504E470D0A1A0A0000000D49484452000001BA000000660806000000BD7C54
          65000000097048597300002E2300002E230178A53F7600000A4F694343505068
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
          D0A7FB93199393FF040398F3FC63332DDB0000D6444944415478DAECBD07BC5D
          55953FBEF63EFDF6F7DE7D2FBD41E8841A94DE045140B0CFA863C782E3E80CEA
          28D6B1223640111DFD8F5D61146CA808D27B0B24844E0A213DEFF676FADEFFB5
          CE3DE7BDFB5A921742D1F9ED7C6EDE2DA7ECB3CBFAAEBE9894125EACEDB1F517
          C06CEBD790D79703ECB89B797CA5F025A6F89DE3AB862F7B3BD7B0E2EB4C7537
          86AF105FE5EDDC67EA33451682E1CF00F873F0B3BF2B4392012933A0E974C110
          02CF07DF1360A414608AC6182832701DFCB111F7737735BAA1812F0D5F4AFC34
          108F01DD871E86EE1BECC4B5783CC6268DB3AA849D2B2B33DA1F5FBD24B5A69D
          4F83E6326032195B165D33541B1F9FFB94FFD1794F9945CD11200CEFF1664B5E
          F0E41A6806818A93C5F1C060EF4C5A7C6AEFC590B5C2D4E51B17BA6F7EF4A526
          989D5CDC4F0EBEEE5CB8C7C3ADFF9CFF447F186834C9348F01530D70EEBE0CBC
          55B7015347FAD8173F373D531B5F6E7C1D168F432A7E06FAAE89AFCECE0CA485
          375DA6EF07C7CCBA039FDE9BEAB034BEB2DD11C6E10EB13B4CE2EC8612FF423C
          D6CDEDCEB1C261A0D686BB3EFA0BC8E0320947A66CA419F13332035AF60317BD
          B6BEE61D47F79B5B3B3A4CBDB6938B4CB63FB0878A0FBCDD38E5AEF395ECA55E
          CEBE77BE1282861D0F259FDD81F4398F817EE43690214E97A350978271F7E2F1
          FA52A67C2E193290422AB38E03A57830C7CFF572FF0981A70FF53119F4F673D7
          F6E9EE6BD487017CA93DE3C505D7EB83C37FB50D6FB888EFE9375A0415989AE6
          D058D05A20DA44FBAC119FB3BDA6C7F7A635599F76CFB902E1F0060837AFC5BB
          AB531E15F72BD5D377FADB82EE7ED99D8D9EA72F1E530961505117ECE7F37C51
          0311F6F7F68919BCED2CAB344A1F5F01D215FDF40DD01E7F3103DDBACDEF83F9
          A91FC5FB61BB8D1E861E984FF13B0D104D7A6507D7A1453508536F34BA0E1199
          D2B41F067B261AA783A8BD0BDF370126129E1D355A50FDCCCC06A2FC4CB373C3
          A5AE70CB8CF08D2EAECE7B29184B4EB6787E4E46FA080661D000C6E89977E704
          B39E17C4D74E5ED31C0D04EDEE8BABBAE33DD0EC6B7C77C35E70E5B639D98640
          E451FDE4BA118B006EAABDC46AB6BEB5EF7DEA297D5B559086577545F0A72D5B
          619D6DC3917D053866A01F2C5598010FE0F8BB4EF7EF72AD41BC4E772E852A97
          98ADD27587DE929EC9C34C2038313D4DA6E81056D640E7BACF434447BA4F4640
          4C0049E347C74580324247F118A6444712F1A1CD4EC0470C54A37B91A95B17E8
          0E40A0BB0B2F382936126529467F032D3C245D6F1F96AB041B3D4BB9A93A647A
          0237AE1A7584EED38CEF3B71FCB70F7434FE44080D05FCD0DD333B7CFBE5EF32
          9DC1425E710204D3B107E3C55997C28064A3EB60FC3DA3B90A992A421D9A7BD4
          FFECBEF4173F49073F9D95EE0CCF4178E688832118276D82D45B9E947C4E9BC9
          B6462468E7B782A46960429D7312E3030770EEB7DC4E6A61B9D2774C3F17A1D1
          D325BA6215763FC19D4ED3E2791CA149926BD270B694FAAAB7E06888220E08FD
          46C050DB89EBD1FEA735A9C4E7D0DC4F06E20928D0B589DEF9B02B7B14012EDC
          FA0C845BD675D9483615691DB307929630623B02E49D6909C360C4EF1B44DBD4
          F9FB022F0C3204BAC1F89993E7F3B9A59436BEF676116CE8A498A1102EBCB881
          AE347C32148D9B76668A0AD0E582A73A92BEA7497777709D547CADA91A0D342D
          CAE96F2069E1C2F92AEED5E2AE487344FC06999692DEA35797DD07FFA84AA79E
          C1A957477857D03CA44F6DE3B07F16FAFEA7E5103E4CE9DB8974B73B16DC73D1
          6873D0E6B554925634B775074A77FFB9EA20F3CEFA6016548F230F9CCC29F23B
          9A6F08DEF8C882C7BC7F9DF7A431DBC4C712868F1444A2A48B3B114536DCFBAF
          7BE8F8CE5F2A330B607452489AF137CEFA9868DC7CD84DC141566B2008345A07
          25442BE40E6D68FFE57C90ED72C2DED086220245C79471E5481A5F89A29E3A38
          1F8F5140DA2D08CB9BBBD29F32C2D91268CB78BCDB30C55AA483B1B7F0BAC15F
          C075A9B3F1A8094B8988541A0235D857776B571F7EBD586C212086AAFCDDF01C
          FE99B5FBEB8FDBD974C843351E9BC9890AD2D0C15A0BEEFFE8CF701851081E8B
          26D4DF1C8A46C02C51BBFF876F70379F72C0A05171380E556FBF19225C682ACC
          D5511E4E292CB4712C7C213564434CFA1B938F31E708E402024D7553EAC6E641
          2B7E0DF3BEFB50CEBF6EA6EE8A686B4965A003A9373F05C6CBD74753203B534A
          0D23D78C6E11861D75EE89211F3C2C034107254856ADF41D8FD2DCCC4126BDD1
          75D295C287E18593E646C6B8676C98E09697AFDF3D9C6F3C900FD43EFC3DD25C
          90D4B923BA94341E5F330DA39A062FBE07FD461A8654FC3ED1B6B0F87DA27571
          61A7408F45EC8DB49B106C5A8373D4DC19E92E0D63B53DD4BFD6B39C871C24DA
          8DE8596589940728D101CF203F2A44F2FBC838338D57DB7FDBD2297FE551C684
          2C2250AB2F6AA0F3AA43A0F3E11D1DD68BF8DB7B18E2F0B6A7B654E2EB68535C
          87EED3257ED3E58E489A6BBE0244F51C7CDFDA859190FDCC485BC1E6C74B9DBF
          7C96E02DCBBA0A2619F78C45EF4424247494997B35CDE3DE67287D0B72327038
          723D44089FED827B2E5BC4ADE2006B8AE67901C8E64F36ED119CB7FAA04C33D4
          2CA4D400894021148934BE33A4FAADF7CD7B52BE7BD6D3DA806E734F2850F7CC
          E03F561DECFD6EDBFC34825C011289D037FCD38B9BAA7F3EF04E5259AA5D95A5
          749891036FE595E02CBB1C98168FE4A8445FC2B37DE01C94813D41DFFFD5A0CE
          3A147FD170F357C15F7313788F5F83E35DEB0548DA70446C689D34600A0256C0
          5978E7C025F093DC7B7146C66896E8DC7E1004CCB27EC3A1B7F887A6EBA108B4
          8054965C09948E50946FADDF9B7F73E3E2542D502D508284D5194B544806434E
          FCE2EFFF0DDE7EE723F8C308C31DABB5986240D35DF7A6C34BCBBEF9863EBDE1
          23673E4A0C488AB3141649A92B6B41F0D78D2E72231C3A8827FBE6399C34CB60
          1915528884593B940A9BB82758C04CE9A4787B4EE781F6117FF89191BBA49D6E
          6F9CAB85A0E38D38E8876E85F4DB9E0475FF2A8E2912D1608CD490680EF07998
          0B7EABC38B4B6C758FD7E5C1AD66B970C35666FF52B570B4A984AD3180025D82
          5E7E01D773AF3417F54B32E2D9FCCACC2D57E25C2A24CD116AEC8C9669B24673
          9887514926D17CF4685A188B05F1B889F8FB08189BF118EDB81163E7BB10AC7D
          3462F0B6037649BF682E8C9EEF1275EBCEDD6F6CCBC6AF448350465AE6B24C01
          B43D0E24C6A777AC9367A5BFBE52344A5BCFBD5F74AEDB62F082567851039DAC
          937E68A768333DE8F6802EE1F268C0A702BB1D4985D4A6C37D8DDC593A4B5002
          380FBA1471DA5893C2F5DACF54AB61DFFEDDC05F754B1F33463735997922AD42
          77FD450B5E0644F8B4A67EE0AB7C7DDFD3D23CDD9F966E3B5970F6743BF03CB5
          D816C1D21C6502AE3BF6AA665FF33F9FDE5F4549260BA3124C77548512A2D810
          6DD8D7CC5C27B6B9A6BCA33AA48112A691F8A720D91C08800B75A772D341B7E9
          0B0D3B1F0885C6A08E122F88F636B06F4429BBB52D012BDA54B40E22B5A6C499
          D6161E0ED649E7477A4BE93BDD21C6730926A4D702E7EEEF42F0CCB2EEDD78F4
          7F625FA35921F099604B23A03B67E0ABF03FB97F230E28F99A8EA775AC43A8D8
          5F5CF044F3D30B1E1541102DEB84536E2B4C044C0DD4357686BFE3F1A5EA6DB5
          223DAF1E8F8D07BD009B31E18357DD03175C71233E9009F1354895637108853D
          3757BAEF676F515A7B0CF629B6DFAB42642995B5EF2FF9F53F6FF4E46335BCBE
          888858223B909CEB1FD8A77A672F3094A545355777A52526516912B575342B50
          D576739F65D73A333FF1742AF7E4B64C883C4D0096E4A60FD6994F83F99AB5C0
          07DCEEB901F2E18E1A108B8257C341973E849ED4F67D1B63465F11446020D079
          0874C308740504BA5E3BD18B01E8A231EEED53A8A43A85FAFDD55C63797FA858
          A9784D900964978CF5F173D29C98F19AEB3614C941A6908F7071FC9A21748DBA
          38DD8558FF6027121E81ECF6EDBC4943664FFA1E04EB1EEF821DEFC5D4495B62
          96E8350125F7DB193B3EF5B5D7FEC7E2731B08744821F208744B80DEC76D3CED
          664C61ADB0E1D7873FB21CDC9535EB450D7450DF693BD6CE8054B209135B4AEF
          04133519D8C1B9C42D4FDFB08B6786A58FE102390217C84EF92BF43664A76491
          5905E9ADBEB56ADF78513FB762480B89FD66AEBEF82457348759B071A5CE9411
          6526112286E4C1E1B9992DFDC0D7707DDF537332F434F06D24BE6C773BABECCE
          4673415CA1A9F22074B96CFE78F322E72BCFEC9D5AEFA4D3A0920423472559C1
          C208F4E8134A3CD0C34547DF7966E71B8B1FEC7C64FE53C5C0D7699311710919
          0A8A9D1BBE0CC1868780754978A41E8EC7A584632794FED9609DF071A4FAB834
          44B43F79D74CC5BAF233E92E71D3875B1E02FB8E8B708E3DB2DD4526D3F81968
          A3F672B451BF34FC7FA3320F0E9A7D27B891AD3C627EBA2A9850114BD3CDDAAD
          87DE2C2CC9FC40B25E6D051DD8C20EB4142564355FD57E539E0D5F5DBFB785C0
          9702D5E771FFBB6AFA8940477B24D21FEAD06EDDF58B7737B79CBAEFA05EE9A8
          B14E201A334B65EEB261BF7CD18A360B39CB8016ED4302CF20EE073D1FAE2589
          521DB35FB5C8084F9BAD9B785EAEE54B6DA27447FA63057CD340B9CD6BCCBD6A
          99DCEBE25B7399F565CB852C1EAE48756E43EA476FE920896AEB4B87A5BA6F55
          489F4B6621838123A70EBD0C78FF7EE47C4273A421D0B9CDEC41087447F6A941
          3D15CF4977CEBB805F82E96A5E764F2380EB87312A4B3DB49C6786072AB76982
          91CD88B1784D3477F92EA3CF5AE8AE337C2B520281ACC3D3B7D84C7F2260A97B
          910EA8914393B08FE3D2DB5F97ED2333C03C1D5F0C46EDBC3B264CB180282A5B
          21D8B87AA2C038B1256065C1282AD2DA24FAEBC4F71EEF88A4C6C7D34B815190
          A3E3ABD1F19303DD0409BAAB92E0B5B0E27586CF5B0E2F6EA06BB09D5DAA0950
          4D66241FDF12554F62C8A701ED83EDAB2C69E3EC92A7A5740F8070F893BBEA65
          990745CB4ABB5A6E5FFB5F86EC94D2ACCB23854CC9D7CDE3FEDDD7F73E5911CD
          2D788F55C27FEA46D57BFC860C126E7DC4D72B0024186A5BDBFF948EBEF74929
          6560CF8CF43BB801489DC9A6B425BDC02D715649E31B95ABBEDB12ACF1D97507
          C045CFEC9345D2A123A8018CE5E27B3F77BFF3F5F0DD339F2E5FBACF83795370
          13418300A0C3F43482D34AE8FCED0BDD3B75CF4EB8F0B20CC1510A7323498EA7
          FA51987368579BAAA22147AC08908287A12FA4140E39D281A22331AE82FFE435
          E0AFBA1525C57A029E743D02B0C4598518A5803E94D910EC33E73E70181D2212
          2F39051CABF1AB03EF72DF3463BD1F045A1A46ED3CBD5425024F85850ED33DED
          F1569EBDF7F1C3F5DB9A03B95895E922112A2308CB1ED565ECE4C2140DEC60F3
          EBF71FBEEFA23767153BC8322146D63531EB2A63A50BEF6F792B1B411E4CEEE1
          DDA7D20290EBAA099E08970CE9F69B16E970509F9A2DB9321D20C9E56CDCDA92
          08788A223A0BCD56664DA575F07FFE599F7BF58ABC2F4D2D8CB6308E25281D96
          765B3CD509F90C07CC973F0DDAC179308E39857621311A2340D7CA1C80407714
          4A74CD740FD051A3E729C1CE490FBB7BDD16610C2D610474B5C1E1BF90A7E5A0
          E08606A32690676B4AE8324732B2FCBA2C754F8D177E2D98BAD5C4BB93DE27D1
          F3109F811C43CE16DE1EBE2CBFD592FE02DC47C4E0840409892D7FFB442A5287
          2368963777C12E7A620E3B689339ABD0D884F1ABBBB6B1875D8FA5482F32463A
          47F9BE3A3256086E3C530075CF25B80DC7F0EA0913377A2E3E373378553402FB
          1F05E8A8E5E2D7CE2C9E8468D046E030560A98EC582290D353F9450A827E08B6
          5C887FCD281A609ACDC08555647AAA63DFF67DDB7FF2867E163BB3CB50ABA64E
          3A4FA80B966A914A92E1DAD053B45020D8BCD2EFDC72A929ED32011E4F9E5476
          90FF06B5611EF26A61BCE44D390883BF27671594EE507063A2757F27DF79FFE3
          47180F36F35924EABDCE2AA38D0C22811EFCC7DCA72A172E5EA16B42E90B0427
          50AF90DA11A55AB06FB910C26DAB12952F6D46021A3AA64ADBDD3CF65CD0169F
          828C4A03893F4F2348CAFB5B259B2BBAF402070ECECF34F2F821085C1A3B3752
          6712806E7B0CDCFB7F08C1B67544E208BA88354954395128024A74ED321F92FB
          CC5D8EAC2A094021DDDB4460F6CE9DBDA67ED9DE0F4A19AA3294ACD7F6400B28
          510525DF45EA1C5577F5871A7DF2D8E527E69A4C9A919383C24B831DC7BFFFC3
          3F02D58D9C51222717E4C94538A455EEF9D95B45EDC07945B5E98E5C8D285E9F
          C19A3F78D86EFC75BD9B81140EBADCE1BA6751DF43A9230B60BFEF809477D4A0
          A6190ACB357D618E5EBAE7047C30AF60787E41692CFAE5DDDE92CF5F9F313636
          331E6954BBA62672FD2446AC4303967B571FE4BF5800510FE9C748BD8B401734
          B34B08E84C94E8FAC601DDA8AAEBF96DE3344B1241CE740C777379B0746D1EDF
          67E335307D13C8C49630F71C25394729FEA0CC72D79B48D1727887A90D690ADD
          576F88DAEB84A8BD214B622028AD84F94F4203B64F4311ECA4D38EC20F44A3DC
          B5DBB1ED025E6F28C2980339E1AC247F317C0C9549DA323C886E1F22C075428D
          B7BC9C26098FED820EED7EE4E2A501B3C4C20815051BD355B25B264E61D4222A
          CC14D6F847023A063D2EEBB07367EE48028CEC22B073EEBF135A587B3BC8F6E9
          7895699BC5BAEEDF8AAE86DB9E2CDB377E052790D40D4006FB8E79F487DBDA5E
          C720C8B5DA5DC7ADF831B8AA3233638A5629F056FE497A4F5C9B61D23571D977
          5DC603E271D40E2BCC6D9B47BC5D57E71E92974E83161A118567AB4679AE5AE2
          C69F43014543E9CEB785D2F8F6863D830B9ED93755F74C0BC18EC59EEF120417
          86EA3B1F9CBDB675E19E0F21F1E585402834C7A548AC4640B26FFC12049B1E4B
          A42E028F44EDB18DEC9B4ADF7C48BDF24BB84568D8C05010E93EB5EA3EFB2B6B
          1EA04DAD80EFC21B171C1C7E67FFE3F8906699380FB85F851D79D72B5AD4E560
          F383E03E78058495F589A34BE2406020D075CACACCDA3E8B9E168EDF49239A16
          48BD345FF56BD71D7653B88FE1B841A0F6C5CF4D8D18921A8C1AFB9358C6E8B9
          903E041E8ECDCB1E3ACEBCBDD19741064082A597DEF5A707BCAFFEE266E46214
          8A6A88E2902C6874965DFCBAFAEAB71F5334B774B45EEE993C2B5737C3E16F3E
          D4511B24A9B169AD0925EA2F82EAFEFD6AE74307A6C580CE52AE94592F1C134B
          D66D825CE79874665A9DCCDA5AE3B00F5FA9146F5F9D0F03CD90A3B4303217E0
          A442FE0B43907E471E644BD073A49814C80BA42A5B86CEF411E206990C9571F7
          E83A2F3C7F4C5C12E23422794BA649356C9686B65D4DA25011F9AFE984136CAF
          C50E78C8D488B4CF52F79794C18B2D105E7E5471B79D7323F9095AD23EA02D1A
          AFD2A4BD3447569058EB4400BC63671505873BF091C60D83286D02E9B93BA3CE
          ECC69FE2DA524241CEC7CCCD2178154D70331A088D4702A6E644825E4B28BC29
          70D3BB0870BD4F4402AA1168D08FDB26EF6709117BC72556E58E01BBF0C50D74
          3B6FA31B3F98896E1860D755730997337D15082958EC4390BBFF2C2E885D612A
          254A2B3A1245566DFFFEA34C7636E5898C1011E6857D2AE9D33FAD46467A1908
          18CFC7D24A530D8329BA126E7EC477EEBA540BEBDBB28C240B35B6DD791456A5
          34F4BD4FF5CDA3DE5990BE6B206052479F6F0E783AADEBAC22599AA43B24E6CE
          5A3BDDFACDF03C419E88BEE4882742A6953038B130CCF64FD7D328BEA45192A3
          734965D8625A0AFCF5F7A034F74D60A36672DA18C41C55909E76404341E6D4CF
          02CFCD26BB1C5715CDBAB3B6B973CC3DBFC39565E67178BBEB2A0CDC946E36DE
          3B6BEFE0530B0FD68A66DA083D0A42238B12D2122303A2B919EC1BBE82C46073
          027651203AFE97F2C16ABE67C6CF9ABF334F2B8240C00955FB27FBDEDF7AFB8C
          7561E01B492C547427E812EC44AD447DED4D6A5052153F78B05DD04F7AE8B874
          5D60FFC83A9BD24B977EE72FE1DB6E7F98D7C188A42064E6834DAF5D527AF8F3
          A75B7EC6CA294E2813B21CF9D270A87C6E59CB79BA2572A0463198BBA2FAD3B1
          C724557A27CCD49D33E7EACAFC8C92B3436975F9869E154B944E481664B430CC
          E8F539BF5D611FF1DE2B7281D4B231D845B62C94471B997FCE43E1EB4338A622
          D51D1B8A9FEFD8B5C24B2ACDCC41792E3A89B494B4C4018D40E5D94A4F3B6A23
          92268CB5CD35FBAB7734539D2707044F9B91534D6C237E96F78BD5748415A2AA
          0C7E1DB99447FAA3DD3D9D3EF3687CEAA2799A279AAFC94050CC00EFE0C087E4
          57B463671516C7D7893052650A04BD29C14EC6D21B5D5065BC3D686928A915DA
          FDA62A34723914142224BA319CC8594ABC08632E7ED7C0F326302B24C9D1A133
          EC212878B9E873CFE38FF7D67C7103DD34BC2E274C018CEA862772933B7F8DE9
          C7CC916C11CC80B0F409DC6683A48599EE7D89240E32C5F0DC47AE6EB8CB7FD5
          CF545CD121791265EAA9533F1928030B850C6C6FC4A3B89777A185D74D2C82C0
          669AE07584FFD4DF426FD5CD1951D962B1AE69989864265AD0D2169FD0499DFC
          817EE93B6A3746E539270ACFB69102974211740A92E12AB29252F1A2583A5CEE
          48FD3419A254102A64F0899C3780009C5496F8D1BEE14208B63E926440191333
          478E95FAFEAF0073E9BB238F4AF2005575CB3F63D99FBDBF0CAFCB82AAE56194
          98E228E2AC789DD651438BDA9F5B78883C6D70BE21425F130882F8BBCF5464B2
          3BC3D0B9E14B4804B626601739BD90E7E5C7FABE607FA3F0090B821A3F24DDAC
          DD75C8AD018A335E285922CD25AEE364A3200E3B09F4D6E33ED81C64852B81FE
          EFAB0FD62ED9B42732443E034D6D2EDA506ADC7CFE15A04891437CC9B2489F1B
          D66EFFE3DBDDF2D17B15CD6DED919839C29B82CE3AB76EF6AB973CD4B1C06449
          82855D6DDDFDE74B056956E7ECF97AF8963D4CD393907543A94FD0D3C888E842
          674EAA31FFD7CB9B47BCEBD7D900F4DE90812A68CC1EBC662EA80B352EBDC84E
          174DA81A342B9B67BED6F3B581412E1C6D1215267D4EBC5F9FABF09A89317364
          3CF52BE5A1E13FA5248F985688E7F1D98C2BC04842015CC1C26AF3DC554D5EF8
          35324B72BC443BDE6E3DB91D9B1A071BC27C43B45FC145E315881A6903012F71
          5669C57D9E9A86C6E026DB0DF0D73D1E396E31D955AA9113289D49D21A496ED4
          5A3353E0A5D43C824F460812ED5827EFE55D1594687E6CEE7047758C80856902
          3C04B456DC8F4941B70F05D902BE14A1446E4F7133E33989B21BFDA3025DD292
          F439A3EEE63BD7763D668E9C9FEA6F411EF4B5B8801A30FD0C287280E919336C
          6C1EEE5CFDC9344AF0A96EF827738D43DF5AD7979C4DC1E2F6981B4E00BA9ED0
          1AC63566F519A2F68CE72EBF4A09D6DC822B22546295150B1BAC9A3EEDE3A02D
          3C84C06E57E37A9EEF4623928E5F6AC243CAD140B0C4D59E3687DDB51F08706E
          BB1825BAE5E363E68870949067F49419FB40FA155F4446C5A62BE9AAAA69DF5D
          FF48FB834FDCA5A1B8539C8455ED7E0E030F2FD238BC30E45E75D899CA1CDDB4
          02B74361E6760476ED6194222F40B0DB945828720874D90FF75F20BE5D388F81
          5F63B3D4A076CB613789BD34D70D84422097242E4866B7153F77B296236D034A
          73EC9E66BF72D28AE3B336134624AFE7D3A54BBE75B578DBED2BF516E871CC5C
          CBDDF0BA83CBF77FF39FFA5427307B62E618D2A060D896A50B56B461D8478989
          478465771006D221585CC870D0E4F6C797A461AF8292293B2283CC3D9F689860
          CC2EEAB597BDFAD2F6C0EDCFF4D9904BC59A55C448514AFF535E16BE85525D4D
          647004F2D11932F07DADAF343CF072046EBD9F0B7B3CD825F3D49B496677365A
          4D5D47A29E983925742A83C37F46021B16A11B3347F7DD1D210F5D0D84D4036E
          AD28F1814B51C26FA77BC41916FFDFB51D538846E49611F9631BB80D0C901368
          61E4BF8C4734657B6947D4DE644A6F5E0E3831BFD37056C1C794ED3A046B1E05
          DF64D09C9D06BB6090D41E019E6FC5F9F54281FB56F609299D825768E482B492
          F6238937DA998249DFE7BED3D0DA6145AF64021EA654A94C191E858008E9C082
          399D5980C7F5AA3213DBA0F98F0E744933E3074E38E11D3DF4AEE9F723696E10
          C2AD1740575898B686220D8AD6273BB5BA7DDB654138FC481FD991487057FA16
          56D2677E19253B9416C6B91B6D17E8A2DF25A50AB3D8C01EA173EB25E02EFB5F
          726CA1C5CD44077C6D8FD32AA997BD77403A4D3A6178573AFE0235222E34B749
          0ECEC49B8B98149ABB68F130330FCEED1781F7F8ADC0CC9173693D10B16CE051
          0DA6A7C03CFE23A00CED8F3BC7652AE39912A2D5A1775D196EF0DD01DCC4264C
          CD1D77431E7CB7332B956B7C70C121E293F397A470AAC853C6616601DC15BFC2
          71FF7562173411E8FABF9F7D0B9C5BFC012E71C4155FB33F3CFFF1E6C58B57AA
          10E84E20582AEEE3F87474C9C4D65526DB046E67AC3CC6B8A956CC801A4830B5
          CA69773FE5FCF0BB7F654A200650703754C489D6817DA5DBAE3A47153CD5C7C3
          700C91CBE9BCF6C315EDF6B59B3D7240212FCBDD6DD742A9556A598D39470F69
          DE39FB587A27907DA11CA76D41021C1A2A7261EDD22B5FF235264A6A91BC6A20
          916A0DB087FE320F943D75263B6224568D4BDF0BB955696497C8466E490E4126
          C5853F9198773F27996476357E6D7C1B88D7608FCAD2E8E49A0F55738D65FD82
          EF9698B9A475130A488D33A552558ADF0E407B6A600235E3D090FEACB66CBC46
          4A7F2E44B173614EF2C255B853369B4C5D971D898B1CBFA6393956F18618FED7
          50748ECBE1E822E3D3E4B16A6A87CE2A8CABB80DEAF04C7E0BE05C42AFAF08EB
          FA8D451A0DC18498610F56FADDFEACE08125C63D0479D171A13A1DB5D3AC1815
          A5A9B55102C46D39AA521D3396A4BAB4907F1B748A600A237EB0916B6AFF5780
          2E1A67E84A004920E3540F4E1B6B17ED553A84DB3E07D25F84779B36AD20D561
          3766EED1EB2BF6ADDFEDE799882326AB4FCB3AF603AEB6CFC9F8BEE94C102C92
          399C1AE8BA7F152D03A1E7B4FFF4918CB4AB690AFC2510D5F73BAD64BEE4DD59
          E9DB942F90806E77118117BC912764B0E94194A8BE81BBC14B8624520F43D786
          13C5CC19079D05E6D27781B06BB4C92CC61579F27DBF776EAE6D4D8366F4BA2D
          53732089251BFB3D47E9CE31B9527EFAB837C30C554F07226C631FA4BBFC97E0
          2EFF7D02745A5AC2E0BDFAE1FEA933FF0C36D3F4C87CE319ADCFEFF1B0F39F0B
          1E273CF644A091FA35F23A8551424DEB932CFF655573B4AFACDF877F6AF54105
          503D5213B6B153D5BB3EFE1358BCA59669829EA79314F05B0F7DF3CCE6DAB71F
          35680C8F8D99CB20F85CF38C5BFEF1A338F7A948BFFB5CE58754F0AE69704570
          FC1CBDF36E043BA47BFD72FC5E1492B903A9D681DFF84B7DBFAF5F5FE840211D
          77B783525D35F5AA1CE4BF3604916E4C44D24DA48C47C929E0D2AB77CC79763B
          BDAFE19873F25C5024C7484690912501A32AED1D7B186EBFC5F6C29E040E4C09
          B970868786AFD1116CFB65D71B7177C4CC8DE42705613ABC707995E7FE3080BD
          1FBB0615A88BF6916D31FC3125F23DE204F8245269911328C8ACC307BF8CF075
          274AC57E06CF1FEFB8D7755661AC2DBD3D5BA2F6CF9AB45F82D25D23765661DB
          7556A1DCE3AEE6C333E90DC0261FD9FE9085562AB0CA0BDBF352287DA5248C49
          E29EB48880A1982EF0D5AAEB4D678BB98D52DFA515C99344EA63C2A30465FBC3
          7F83CE40579519A1471C72FB7F08E8929604F35A53FC9E24F29D769A2FD97C19
          84B573E2B530EDD6074818656BB8DCB9EE8B86B44BE908FA1CF0D599FBD6AC53
          3F49314B1DCADC3E71A0A6003A96288746F6A1C18C1C6B5F7D1E17D5A7FBA270
          7402BA7D5F5E315F7A4E0A81CEFC87023A45EB0673DFFAADC8432C968D46B283
          403797A5CD8C34A45E716124F981085595ABE6FF6E7EA2F5A69537AA52338B64
          1D8551CE81D607D95A92B0814495383217A6A2969F3EEA0DEE0CC34A0781EF20
          D085E380CEE0C4D582D17EFDD0EF5A3798472397EEA8E4388ADBDA3B28536F7F
          63D1C3E1CB0AC3B86F153F14DC94A3B1485140B8CA45B83554B5A3971F9F5EE3
          A491A085014A73A5CB2EB926F8E7BB1F55DBA0253173FEF0318B4BF7FCE25F72
          C893A75938BA7E94A80E00943E7B6F3358EF9103147BAED3C4D138E5C095DE07
          9758F6F133F54CCB97E3AB85303F67FAB36E5C3E7CECBFFCC86CC3605FEC514B
          6B72584028FB2F9C09D69B72E49747DF277946A3395042DB918CD59B99256133
          7B204A0B469A0B8F03C8F160476D7AE9B0C6AD2E48926F8FC98062D58AA59B6C
          CB593728B8BE9B63E6243E744A80BAB5A40E7DC240E1666CEA338ECC807D4435
          DC76BE09CC31583A7098CAFDD8050D244AD512573B4A7701B31EB295FE6F68A0
          D6B3A45E9EC45B337656511BA275B22B9A67A6C19B9F01A5AEC44E00933AAB10
          4A7ABC0B7493B4288C07C1AD39A73333C8F9D94218C5F18D09F7A2EB25C1E309
          73478047EA4C94EE6AB2A6D773E478C981272AD5310497A43B3DD401EF01BAD0
          BB8E2BFF07812E6934E829809198131A641BA6CA06BFBD468E47AD1390DF7C7F
          1C183EED3EE3A2C54DA3E81DF7EEFFB1BD276EE867B1E6930FEC51B38EFF2870
          ABE0C9D0DB81678B1C27D18D6F4C635A4A69FFE9634CD4D6F547404769AEF67D
          59C93AFA0379E9928AE2054F86BB7B1A0927A107EDAB3F12E5A6EC510026992B
          689E2BF4FCFA41678379D85B50A8EA00A92C37F98EB3CF2D3F0F5A8C1788F988
          0734F1E22BC3586FC471B13B915F7EF9E993DEE1CEE04A3AF01C9B9939E1AEB8
          1CDC07AE4C808E8E2F6424D42E4FBFBEF5B6C1CB5510956C94F93B920A158120
          D4F9E89C55CEA7E73F0919CDF1A3B83A11D97A02957440AA6FFCF32347AAFF3B
          3C2F1FE502D5D5FAD2C736B47E7FE16F6909F6094AA506A1F0E6A4AACB2EFBA7
          B072E8FCA2DA19A365A00C288DBF6DF09A3F7AD246A9350AF4DC15823FDDA6E0
          EACACECFF0FAD70FCFF04E208B729CC318A9BCB2ABB60D1FFD9AFF4F28AD7028
          565F7633D620B9D6F6D4A178F5DC5EAB7B924D2756C74981E0D60C956CAB9D5E
          AC35D3FBE425D70D2E929CA9A363107FDEF97458A36D929839CB4D755695FBAB
          77E410E4122FD0CA6E18D738A10005B0690D65E0129B59771761C46736C29710
          446E38D87C2947E628C533A2D9BE6EAB0836DA400A3F0439506799903A6506B2
          3FCC146D4ADACA1C9EB9C9E7D9DFA5401FCEC2C4301016CF980DFEEC8668BC9A
          A3B488C0A89988312C2676139C55109460ABB50D6A7A237A3F32EFC81820B0B1
          AC9FAD2108E5118012DA4BE3DE9B0F33298595989BBA6047BA16C93A2DB5DD2E
          9965C3569C2C7954C5CE2A639C8D22B01331D821E8FD5F06BA6440C7979C995E
          235C699D086105418E8F9885A6DBFA996E59FEDA3B4BF62D97A49986C498C0B3
          0D8EBEDFAB9AD609EF56A43DCE016594AEEE74F711E4AC60F3F2C0BEF1AB699C
          F974E438638363BEF4ED6DE380330690D0EF72CCE08BAA459EC90A38F7FE00FC
          D5B78EB77275AB03C4D21C7D611EFD6FA02D388632A0A8AAA21AD794D6B74F5F
          F1B7D801654CB2D8449AEB6DBD790D71B906DEC1D9C1D29D47BD414DF98E1648
          D989E4AABBBE0DFE9ABBC9572EC99EA1A09836BCCC3824386DE85A6847426330
          9A4582DCAB85E2EF67B5DAFF366BAD7FCEBC55528BF21F0125B056CF5FBD447C
          6BC39E0550020D71C0C975BCF21D9FFCB99C516D5B2E44A5499042743A8F7FEC
          65B5C7CF3BB5A8365CBD67B3335D61DE9A6658FAEC7D2D0541CE9A66CCDCB36D
          59F0A577EE7E29F7C4595A7F3B90BD7921239BB237982E1F73FA7F7BC57B9F1E
          0CC0E8BACCC6762E72192E5C38238AAB13A570D4FD625C8E452685AB04B5BA9D
          DACBABE50F4BF95A31C7F1AB71D25D726E6283DA99D256935439C1D1654A69B0
          740DD3FC6A51928BCFEE8999A33610314122ED71EBA1322F7EAD00D21B6B33E6
          BC2ECA1F6889F6B13944924EEBB71B82F2171FA15213DD743714DB612AC8D0F5
          41F6CD0BC13AB688A0C92DD91E02663CDDE6FDDF63CC5C819292484DE9ACC2A1
          29BD391D51FEB029DD3D73A0B4D4782C93AC3F11A3A04440370C55BDDE0B7405
          645232D8D1CAC2D65C5D135A3A0EF64EC267A4A2709DF1486D8ADB4884424492
          A30963CD4D4C910A253268D68C7AB0D52C65F03A29BC6792E775844E8A285C90
          43DECBFE9F07BA67D72249EE4464C6CFEDDAE4A69FFDA47B152987506213DEE3
          D7D5ECDBBF478E224AD71A63D5D3AFB82060B921E4D6427F547B96CC59EC6748
          44526EEFDED1F10AB7FAF5F6755F0DC30D770D2029E5920ADC64E755D3A7FF97
          05AA61E2EADA06CF7FDAA4DDDCA8F44C01DCFB7F02EE837FE8753EE98E750C32
          4092AB8080658A903EE3A2581B23755533947F79F01AFB975BD76AA019BD4097
          0C64E2EA4CEFC7A71DC26DD6ACFCF088B39C7366EF930EECA6830C4C186E7B0A
          3AD7514C657418491E240556F1532B8BB73D7CF65DF090BE3F3969267DCCC4D7
          5621540525797ED5E0C6CE29FDDB64D9D7E14FE5597279A33F2B54CF8A8AD4A6
          CDF2877F73B7FBD9DFDCAA74408BC20F14F003778F74E996DFBDDFF4F399BC62
          FBB2D7B69BD758E5C2873BCEBDDBFC2C8AB1F6F33CEF26785279EBDE56FBECF9
          7ABEEE13011C07744504BA337E8040B77628A0B2793DF184910BE13C0DFA7F30
          13D4C564DE1C43C37A130293D421941019386137CAC59773DB5A149593898BB4
          4EA6CEDC91876192966D4C4ED55049B5062A3737D2EDD503A1629AF1F9BB2F66
          4EAA12785051667C8A3375631F881E9053C095F611A570CBA753BCAF29EDDB87
          EDADE72E039E5290AD8A028ABA7EC6121CE984B67485CCBF6F4FC8BE713E4A79
          BA295A9A0E7ED1E57DBF7479EEB73AF0467E126795E45EA43EA88BFA2B43517D
          3B325A4D2B3E84D48724BD8604745B10E86AA34047E331808064CFB487EC8297
          EF0BBBB432A91BE8AB2AD79FAA3A8E2344C810988BBAAACCCC685AE88BC8ED13
          BA7B22B15577E33EA5E2F83C686D31B72A0DBD9953854ACE2A63EA4246563B26
          FF1FD0ED728B40EE2410D5F7C512FC2EAF678D1237936AD27BE26F2DFBF6CB48
          6D199983414DD733675E14809911242974074574C18DC7951064379B3E88ED03
          1DD3B3297FD52DBE73C7653950C388FC2336B6ACE3FFC3D7161DDD2FDD167264
          ECC59A1D65E79BA223E3B11AEC9BBF1EA5EF1A578A37B1AB502BE1F085A34017
          8D1FEE37C5BCBEBAA9F5BA95374023F0FB719C7BABD627C4D08D5F6918E13411
          45DC76E7A38B5F52FDFA01279A61BB2AA5A2BBD26B42E79AF3BBEA533EE20493
          104169E09947CCBA171ED1F749802E69446892B23F548B0FB958DE5D034C6823
          056535A53DD0766BD79DFF2B985369E67DE09968F164447DC5D75FED6C38E3A0
          41B5ED8FC91FA873682DAF04F58B5776AC4021F1F759C7764DB719489AD5B7ED
          65B5CF5A6814EABE48F7025D6869905FB9A97CF4EB7F1432470E8A6E42C53135
          E6904781ECBBFB21FF952110E549D77E4F9E512A5A1FFA4AD068D8A98576A5EF
          582354B2792E3C2D1275C6B6C45925A9DD16C0A82ACD8CE7A597DB2467C040F7
          B60E0F96AE4FA1245740619C7EDBB5BA95635BBC5E19D208DE56FA7ED460999B
          29666E54C5184573CE29875BBE82C3A4A744BBDD18FECF15E02DAFA19C1E49F6
          E31DA65CFCD410EDC053675B50FCE212300ECA7189D21DB8790EEAE68E52FC56
          C8CCD519A4299948289ACC5985435D364E6B87D5770D00B713008A52E88D03BA
          88B9446053B37EA632A7332B8BC0A3C71E9151C61F55E1C62DEB1BF6F9776FA0
          44F52CC4FFF72A98F20B2F9D030BFB0C4A2DC782302270494AC0911467087642
          B0A0D5D4DAEEB0594A874CA4F19E892A7464FCFF1FD0ED4A8B1C4F4E86B0F69E
          5DB5C9F5361597EA204FF505EE237F6A3877FE7F5DD77F9A1B073ADA5E2735AD
          133FAC23A1EC308EEB5DC482DD04A04BFA307E3EC9AF4DA7205DDEFAFDA714D1
          7CBA40F63FBC76A02D38AA6E9DFC9182F45A89FBF38B7731EC5463512C4FE76F
          9F8370CBAAC41E36EE8091A4BBA5C88D1EE9BC75E227409D7948377E0E250194
          EA825BCA1BBC331FBC96B702270F9A9964609F3ABC0039D1D986357CF34B5F23
          F7C2E38330E880A24977C5FF82B7F28F44AA122718220A44B023D022A03B76E6
          4DF08071D878A04BEE93780A4FB49F20B49234F7915FDD2E3EF3BB3BF406E803
          F825D7A1EDAD79EFD1E5873E7F56416BB816F4A82C91590EEC5096CEBFA705B5
          50A64189989BE777DE25A4C8EBE98B87A6EDD9695E74C598125BE48C12CCBC65
          F9F0F16FFA91D184C17E364A14CBA39790A0EF6B40FF2F6701CB523AAA491FA1
          B720288FE2B8A5E748A6343AA93DC266E6C02C025E860B67B218DBC9C21360FC
          71782D84355199B9F5773E937E11412F8999ABEC86711D899963DA869232E3B3
          F82C4E6A4CCC9C022D51FE605D345F9EE5F99A53BD64955FBBEC29AE0C18C95A
          1B4F9CBA408ECC8DF4450BA5BB30FB867950F8D0DEC02DAE4A47C3F56204CC7C
          C0E6F9DFA8CC789272678E552D2763A14235DCFA0947DA4B8B485D92A4CD1545
          2AF6567318AA468D802E8BDD250D461D418EA583545674E30CA2F475B81E5537
          94FE597F591DD49C205D30157A3EF0847471D5B64E9C9315FFB24F3FDF7B28A5
          850E692C238922053D0E482C0A45E07EA0F88DAD668937B456418922D547998D
          1737D03562A07B3175315157468E27BB6C931B774524BEAAAE86C3AB4BF60D5F
          CAA12862C4419E520A56B18E3C17B47D4E4139C0756510DB6B2703BAC8CB725C
          7F18D23624BC9DBF5DE0051B970F20F157487861665F2DFDCA2F5130791A42EF
          EF2123CA0E1B95DE8942096EF82A6C27AD6D92F28B6C0A4DF2EA57E71E06D6F1
          1F8E7C1465E045959A55550F6EAB6CF0BEB4EE21B8AEB4DE4288C8E1984F9565
          07E1C3ADFDE9F057B5CF185A980A9CB6C78C6C106C5A069D6B2F00D60DEB2162
          4BF6C126F4947BCAE0D5AE4CBD1CDE34F4BBDEDA74E35BA28E33A0371E2C6534
          FFEDCABBC32FFFE616645FF50272C394B419FC3EAB72DBF5EF099DC142516D7B
          BDCA570A27685CBDCE6DFEFC093B0D267FBE1C50C6B640164E99A3B73EB45F8A
          955C31463D4C29C1EC1929FBD0CF5D55D9EBD23BFA3A504882C6A3346EBD9789
          5CC9FF3A0FB4BD74DC32DB25124951DCB820A8144AD86ABAC6CC562B7D80D649
          2DCE2348192CCAD0C5A6436D380A3C9D81CACD15CB59DF5B676E77E4D88C9336
          53429B4C85172F0979FAD6811E7243F4DD97C1FC52B8F9AB3A3351B4A9DAEDCD
          6FB91B97919F410666BC37EBF8D6B54BA274273D612B4503063E770058471529
          039829DA19A4144D5B19F886CFAC951486909B703E39C0F8F3B6055BBF4CF4AA
          BF8B9FE00890E54DA92D602B8E86070D063CF08B4E7F73C819249565E2171105
          EFABA6A2FEE6B1B27DC1B22DE97E431967F704BFE186CDB959DD7EE7BE0370DA
          82BCA6A95C090391786626739A38ABD092A8E2BD59536BF5C7921D31952FEECC
          286BB6FC13E4B52760405FB1ABAE22BBB78D389E9C4B553160373A271610B0B2
          CCCC37EC3BBFEFFA8F5E3710675494B89442E12B75EBD8F7082AC9232920C06B
          875DA09363818EF351D5667C3AD3D3A960E3CAC0BEF16B69EC732A0A6DF6C131
          96BEB5631C7876BF749B549FEEEFDF01859A6A80F7F095E03E785592FD64B296
          A4FD1ACD638A7B8FA5B2602E7D27688B4E00E1B6C91AAEAB9AAEF852BAF7D6B6
          846F5C7E2DDFE43959D0F4549CAA3D19648E20671F539855BEFD8857EB02274B
          30C52655A57D739C0D4549D23645E78CF16A4DFCA84F1EFA23DC639E84476C57
          DB458777ED55AA22866A6DB8E933BF84C19AADB8A04495D115F082EAE1F387EF
          F8C3391904B96C6FD46C1453C7A1F4DF8FDBDE1D5BFC1C685199A6E73B398005
          B6D03E7D78BA71F0A0D6DFF0A435466DA9ABD26856CBAF3CF16BC2ABA6067B3C
          2E27243220A794D4EBF250B878086473877B719C744CEA4CDFE561BBDEC81FE1
          B5537BA603359FED3AABEC14A5E1086C9ED559571A2C5D67866ABA10DF6342DD
          4AE23F157A8CF8AA21EED51D90DD9E98B98CC3FB7E5AE1D9AB8BE362E6C801A5
          126EFC6F947CFAB3C01BCDF2E71E159D1BB66ACCE46332B5EC604CA891DDAEC9
          0CE65BC70D42EECD0B413F28AFC81647E98A05BC70B5CDFB2ECF800F13424128
          385D54CE698AD62B0651AAD37154438F7BA535D975812A54B2CB99193F559E6D
          CFA4524A66BC1C89A3A890CAF2D1AADDF9E49D1B949A1B1655CE26A849696DA0
          74E7B881682CC81AC1C78E98C596CECC18811B24D7490A1D4760C724953391C3
          787F941CC30CF6A78E54F0C55DBDE0B2C75046E515D8CBBA029664BE05396DF5
          0BE7F89ED8E42AEF7F368E2753B5A87020530D2E9ADB2A9D1BBEA188FAFA3C4B
          0AD29364E7B1B632B077C73AE15CCE0B73A9DAB587C45876B3A5F6005D94586E
          64903494E654FBE66F83FFF49D51991F8449A1141793349795B82411185F88BA
          5DCF498B125DFDE9A3201B1B27E61319DB68C312874A2A26328687D108A04467
          BCE41DA0CD3F0A470EF12C7014460E8AAA26373A4DF73BCF3C2C2F5C7DBF8E80
          9A43CAA5477422F4BDBC6E55FF70C869E284EC603A1041871919E12EA3B8B9DF
          25CE30892BFAA4E59E28EFE5A933AE80EB536742942565870F4A5733E12357DC
          065FB8EA76141F4C2A8713150E56C1731EFCF6EBCA9BCE5A52E46E60F4AAB9F0
          61C2BA2B4B1FBBBB19BA2ACBC59E96CFE78E52509ACB1FD8A7D63E7C404AD738
          F48FB190A140D0999F6A2FFDAF5FD7F6FEC6ED7D2D28A662D3C50469AE7B3802
          DD2BB3D0FFE3595D3BDDCE65DBA3BD466067255E5C28DDB5436E354A83A7704F
          2BE650A6B3980CA65267467F42C5700C774B7568F85A2E993A2059146CEF2B8C
          9558E4A1C8467CBA3DDCA6CBB6B4E08AA72A94C8143EB57416CC4581291053D2
          DE6ED61E49755A6BC3CAE0974D5037E5C6A82C19B20BB5B75644E3AC0C2FB841
          E7FAADCEB60F2E03DEA78FAF6EBE33AD9B522E946DE18816D3B92C7E69098522
          30D9615960BEAB0C7DDD65DAA314D23046CD8C74D113D5770C8BE65914549E65
          DDD239E5B59967E86F5132D99CDF9EEB5B81D917AB2CA95522A64B53E4F9B7AF
          776FD8D028E475252DC79A06C6AB4A4317FB8724AEF5CA0579F98997CC560337
          A4BED8D0DDCF49C502AE48B5316C94DD6173B8A84ACD67CC1B7E5103DD8F9F68
          474C4C2075305903165BBF80A5B94F83C1ABCFAF741781DCC920AAEF7DB68E27
          DB6BB438FBBA655E64CDBEF5BFA5BFE6B62C829D9638544817A8CC4CCB3CFC2D
          BE76C0E92A632C901ED5A353BB925C52043192EA42C6530396F7F8751E655941
          82AB75A562AD69BDEC13529979601E7CF29078CE32613CAF0D990408362E03FB
          B66F8C490A33D5E130AAC2241513115227E21128AE70DEFE0878E700CFCCC42F
          FC28EFA5C2154D2A8AF7D76DEBFC2FAE5BC1EE2B6FD0C33084058521EF27079C
          204FEC9F970A9C968F20E7FB6B6FC37E7C3B491C1D799CC1E4A10951CB11D0CD
          FC03DC689DB23DF5E568E73515166D2CC31FBF7C15141B362D8A91CAE12AB8AD
          9B6FFA60BDB9CFCC41B54EA5572605BA00812EFF02005D8E39C2FFE651596756
          4619EC043DD5C891ED760752C11E57DE3AFCD20F5CA13760C6001BF5E69B22E7
          AC049E5760E0CA39A0EEA1ED487D39BE8D7756F138A933CD3976B570B4E16903
          280D080DA53ECEE4481785E406B24461C77437768AE59B1449D95DB81625AA46
          A9AD3A6CFB3645E1DFB9A50DF76C6D434AE550F302B86B733BC2BE004FB8FC15
          7BC2A22C025D38697FE398390461916E28C5AFDB2C754FB1AB15ECCE23E1ACF4
          E70F879BBFCB99D53083F5CDE69677DC83CF2F2C5059DF24D74C1C6CA84D55C2
          2C09D2B0A51356D599969CF9B323A94AB70A4126C5CC871BCA8CFF4A23E91B5B
          DC948235AB6F47A03B4307DEE9A3B83647719B1B529BCC9087ACCF2DD4663883
          14189E181388DEB45443D52F7B704BE77F1E1936FB4DB55F4EEC6BA2E21CB917
          7DB04381DC27AB7EF3D87962E9504AC3318C624BA1AB31E9A6CC90DCDD90DA5C
          6B69AD221329965257BFD8816ED4198CDC7C1C61C222F33A38A5FFB5A0511DCD
          E7638BEE5EC7931D35228A7994183494D6DAC1EA5B6CF7A1AB0CD1AEA6236786
          588983CCA6AD1417B68D25674B75E1715C0ADF03CF165101C4483719229135AD
          60DB13A173EB770CE90EE7A2323F0E78C641AF6E1A87BFB95F7A9DA46AFA8B77
          014CA351AE4AEF913F8173EFCF604412DEC12930AAF620F98F165B140B14D930
          A910DDD2B783B6F8D4EEA1DDDC8964BB8B9C40AED8F07858F65C78EFBCFD4053
          54330851022095A5DF8ACA0085C3AB08E892C4D13473534ACEC4CA7E3BFB0EF8
          68FFC5D1246DB7991ABCF1FA9570C9FFDC40B5969298E1247B3E029DD3BCE996
          0F359A7BCF1CD46AB60E6CD4E614471794BEF370C77BA014E441678967E1F3D1
          0CF0A4F5EF07A46AC7CFD6B2554FE67A559652E10CF9F3EACBCEFAB6935A5E29
          FA6069AC6B70AE6CAF8F24D5157F341B8C93D3203BD3DE9BBDD96D222E910BD7
          0E9554A3632D0A504A533AA93DD56E201A55C7088394BD36D4DD6D603A1B2CA6
          18394676DB6E8E86D69315A77EFEDD1BA1EA06912FA717D725A2B34DA5CB84BA
          A18073970CC19BF72B42E04DCA30C73173058F67FE54E6FDFF53C0471C173307
          75517E7F4BB44FC9F2BC6397BFFC68D0FCD53ACEF31A495CE3BD2C9304F5B5F8
          19733062AB9C74EFD33135D1F45B039F3910B26F9C87BC979A63C6236D65E617
          2957CAD8901BD209454077A602BC3D401E979BADADB2A637B82AD5EAC2D63C43
          154A4A74976164BF5439D39E6EBACEFB6E5A07ED40162D856972943D0DE2394F
          FADA5BFA28AAE163476A4CBDF1F35317110F42B5168996251EA6C409F86BB2EB
          AA010BFB41986C4EEAF2CEDF0DD025CD1329986BDC088764BE0273CC1B9E5B32
          BDFB1D4F76F2AE328B4433C3F4B4082B6B9BDEA37F0C83B577A591D81A3D795C
          289CB2A92D38CAD10F7EA3AACCD84340E077493457F470DBE3A17DFBA520EB1B
          FA939839A617ABE9333F6F31ABCF8C1D505EAC95C5A7DDA8D69CF73802DD3D3F
          9BCCDB727B2D49099782EE2623B7E44EB4AEA840F8C03C308FFBD88874878C3F
          19D87514F04286BCA3083C25B6B83894A7D4B9FD12F01EBB2951592689A3B72B
          39D34E7D4CDB170E9D7D673783F7F65A210DDFBEF88FF0AE5B5646598EE396D4
          A823D565E78E3F9C53AD1C3A7F40ED8C092A8E86C95458E3A172D0BC7045DB94
          7AD4CBE7C33E8BC291CC2F4E2BEDAF1E918988DB6825BCA887CCCF5BCE9C3F2E
          2FBFE4FD97E75D48251E75631C77266B5111CE232C18F8F56C90F62E13831E67
          156207C2900B8F0AE9BA925B7EE2E125706329615B678A6A3155D7299BDA70C7
          A772E8C135CFD4AB3F7EB414689C098D4FAD4E20F09B99D2E0FB27CC079464C6
          AB2F63C99C022E454519FA2242C2AABE715E969E68BE7C5854CEB198E180BFB6
          656F3DF77E109D308F227B6F756D8051E9A837A174AFAD72B2B2E011308A865F
          1AF8EC08D06599F184A3CCFC1C4C0E746F23890EF1CBED6FAB1DD898DE4C09C7
          EC19F6A053F0F37DA21BC2917841FAAAC2F91BAE59E5ACAABBB9414BCD8AB175
          F4E8984E4F5FF23026030D5262216D04BACACF5EB690AE9C1A0F748A54BC8D28
          D1D5547F20C337F0F9E91F8ABF3BA0A3E64B93624AE1A4BE77C2DEE99F3E378E
          2A91E3C94971C693DDEA78B2B38DEA16E0E23510DC7437D8F450CBB9F37B8AA8
          0D67C873327136176DF09839D03497BE2660668EE2A558B86D6DE0AFBE05894B
          AD0F9888C8BE74A1651EF9EE40DFFF957DDD98B9176D45F15D6ABB20D18D6FBD
          F5AB92A0612A518BD7B650B23B11B4BD4E039E9B13A50AC3059854F9A6852198
          9145A2733338777D37F680EDDA5D214E1C0DDB59A104740FE807C0D1B3EEC2A3
          A608692389206DC22B6E7D142EBBF45A30C2B0479B3592D68C5497DEA6572E19
          BEFF276FCE6AD531B91021EE6FA02BACFCF507DBC18A8A9F0723F24CDB09C3E0
          B36A94CC19CE5B926A1F334B1FA879D21C27CDC9200DC3279CF6039E5BB9B518
          829670F63B0CB8268714FD500B8A7F9C0BB22176D64E37591B1FCA414D50985A
          129E41315E2A52694A1E79F3BA86FCCBBA3AAC6EE0C6F2852407138E00A7B088
          239E32956044ED5192FBCE71F3E0C8D959088211BA12C7CC51029C4C9B67FFD6
          E0FD3F288E4BCB45D910CAE1A64B43293329946D9A5BDE712FF8AB9AC8B22803
          30F1E9A3C2B530F95E9F5011BDE71C5FD4FDE1FE4FED2F736F5E00A2A1A144B7
          A6A3CC3A5FC1591918732CCA78A2FACE6D087469C6DBF9F5A9CDB2ADB6653A48
          55E6756647FB29C6311A978AAA71F3C6671AEDF7DCF8B4B62867EC4CE62133EE
          E7C83D9D50B4E7A4B5DAFF9EB6A782CC8611871C24FD22D565739B59F54B46A3
          7F91F90B481B4FB8CF09D0058FFD7497CE2345CCEFF92BF1490B38EBDBB78309
          5C0F218EF2B1F97F833D53FF0B06ABEC3EB07B6E1D4FA6372424693096639AC5
          85536F064FDFEB7A2B7E9B12EDB21597DAA16996C2065B86E052FD43A0A44E06
          A4A2AAE22C0ACF0AD445C7D652A79CD727ED46C2E1BD90018A2AF41013E8729B
          CF6AF6986A82BFEE76B06FB9B4EB71B96B042FC94A92893F77B3A0104B8A3DE4
          F941305FF22E50661D8402B74ED25DF49782D4FDD5378073DBA510A56CEFF2C9
          8953C048CCDCF66E4A8AB1D70FFD06AE4D9D3ED14EA729906F39F0B51FDE0867
          AC5C031A124A6FACB74D02AA5C411AD5DC77C6F06D7F7E0F63820DB270C23453
          2C9DED0BA85CB4B2C31EED825D92CDFFB958130A825CE64D7B9AF577ED67A5D6
          35451F673DAAA810587361AAF192F7FDAAB9E72F96156DC819AC2B2113C1DB61
          ED3822A2DA223DB2D331CAAFF2ECB76A12CA61428F4B536483C379D8D6F1E5D7
          966D825B36B44825C90C954B4A2519D5BC4A3243761BF59D2672C2DC7710DC2E
          3D71011C3698EA05BAD801451508A7253EF40583E98FE6C66440E1D011CDB3AB
          A2F4AF195ED8EC357FB3C9AB5CF81876828F2F15147739BAF7544C16F5731060
          928070096DE9895AF1AB0741EAE4212E5BD92CCFDCDAE0831765294E1F605C9F
          AAEFACCAC6D9039EB6CD7C26BD0902163833ECA1E6805728C6B5E112C075904F
          507FF8F0B0FDBD47B6A5060CB56F9C034A925DA5374143120F181D87121C8E0F
          943FB574967FF2DC9C150792C7CE4551518BB0A1D7CB9B0C3BDBA7DD6DCDCEFD
          5684DBE6D7FE6E810EA06BB7F3840933F407E0B4813320C5B73C7BB023906B9E
          8CC2D073EA7832DDA64499CBB9966656DE0F37AE687A2B7F0FFEFAFBB38C64BB
          0432C6FA2C753F05F88962E6CEF80AF252F9B40CDD32740B29BE102D2A1CCA46
          75F1B4A0494F43DF7BF02C55A94C33BBEACB7B7FD17504D975EE3EC94A62C57D
          8A3669A4C0C2E5A0CEDA1778FF42D0161E07DEA37F88345BC1A647F0373B0139
          5283D206DDA1EA2D69144F779D791C9C317865B7E391EA54890C3CACE3C307FE
          7A2F5CFCE71B612B0A1D41CCDF745FD1FF49207CE4096A40B379FFF7FEB9B1FE
          3587F7A15497C69F27040D6B9C7570EF37BEF150277CB416A4038EAC118F38EA
          DDBB3604E46759CCFEC2A1E9C052F9A01B122E8C3AA00419DD2BDEB37AF8A56F
          FB795A76784176073009B8DE8946D57A4218B86C1658676550FAD86DFB959807
          927A4813A9705D85B5551B2EB86FB3BE6CB8CD0ABA4A21C9A42CA5F1EAB5BDD2
          39A9EE5C8C94031AC344D8086EAF5A58804F2C9D054197114952D3E9202C1B41
          A5CA07BE3B808F35C63E85535B09377FDF95C100795AB66A973C256BDF5FA545
          B6B9894E266C07E348D25616C6534C328C3683B27944BF37E3074720932C70C1
          F50965F6873DA6AF1DC4A71805C6687F154AC1E62F020FFB8B0DAD069B525B99
          64A235C31EF4FBDDBE8218053ADA072E01DDC5CBB7DA3F7EAC640E59EA809CD8
          E7DE02B9894A5EC63FB28617D64F59906B7DF9F8055AD0F19320A2A85412B11A
          2184F567D2C352A8E5C2A2F4F771129B2DE7DE373C37AACBE70BE8BA4D8227D3
          30A82D87D3FA5F056975C3AEAB32779FE3C9F8FC88BBAB99B80C49BAD3A818B3
          BFEAB68EBBF23786686E23E98D927B8F5D34411433D7328F3BD7D3F739A55F3A
          8D169EB75384F7396851BE3A3214A380E4F494BC074528A472B5626CA605BEEB
          03AF67107C7E0FCE7DCF1AECE8CCC4332F7156A10D18C898AC45CEAEFEE8FB9E
          5A7703306A1BD9A967A1D3AB72108E58703754591AF6379B70CE8CF5D0503438
          F2894D70F4631BC1D146A538A633F057BA60FFB98D4B4250AFB2C85E470E2924
          D5B5F7280E5F7FDF87A4560F28CC40ED754AA14639CB1071024B618DBBB6F9F6
          F79EB015C797996EBDF68830EF0EC4880AAE7EF29074E388A256283B223D22CD
          1185D39051ED57CA671EF2E5407BC62DFA60AA712EB628A7E554179511FDEF72
          14DC68807403B05E9781C2D7F6C0D1D6704EEC6735F1BD0B80D4913450FFF348
          097EF668A9100A9941C0F6644CB8B7736AE2E8A4C6C78D64E747B08745391D7E
          76EA22203B9F94B11A51AA0A2895BA3AFB3C0764D05B9D00A01B8D5D0AB75C84
          CF37C7E279AF59BB6C15E04BE359757C4ED6DE466B767CC5F838187D62BFA52F
          1A4AD168CEF8EF23401D3254E965D24AF1E2064BDF96C71531C6568653D016F5
          37D744ED9F0638AF9A35BD1925731611D00D79FD6EA1AF07E8C846DD50394B6D
          68FBAD7FBD791D1B7682FEB41A95A09AACA20431981A8C02387343E1ED91374A
          DF3B65A14C49960A44B413FBE2310655A8EE36B35CDF663607E61A7F500A99FB
          7CFF8997B4BCC78FCDFE03005DB785528B72D3EE6DFD1496642E82ACB676E7C9
          65BC4444FB593B9E90884D8BA8D7C84B0F423B6F77D578EBAAD718CB302D0DD2
          A935DDE5BF0E82A76FB784D7D1693BB06E6C6AC0AD425B3FF0F542DFFF156497
          4B82955F28113585AC1ED54FB1375A5BC0E35E9C344F422EC8448512F550D770
          63D0F8D102DE45C98245C556BD477F8B60F7AB670B76D4085D923452B428BACE
          2A9333304481938D3769CCDC542DAA22BFF070088EFC0808DC933A0F21A73911
          9F4AAA4BA9AB636F18D9906514286DFFA505EEFD36EFFCB139C025D7BB9DF69D
          B56F3FAAB2F21B676A1C098AD674292BD2A49BDDE0E0D43CD9B8718B175CB7D1
          339A8E4C81C1BCA8FEE1AE336A1C7C99A3723C5F5A9AD151701918772116A48D
          F6D28F5D5E9B7BC58A820B99344C9101251A9F11C71B01EADE8F001F1AA6F4C1
          A01D792FB034827DDB077DFF4340DFEF4C50661D82E3D99E98256827DB488037
          82D0D30D177EBDAA0A57AEAE9A29950F20A14EBC0223375C022D5F8E22123D81
          A130D0221BC284DA9723CC129DF786BDFAE04307CF20F565B7802B79CA2BD58A
          3AF33F708F06C571DDEA02DDE6EF4A190CA678C16B562F7E12EAFFBD9AC712DD
          786FCB91C78151A0F5E2CFDD60F48929E53CD1F0CB857FDD4B143EB018448D6C
          73EB6D65E6F9488EFD317632B2CDC9606629DC748989BC6B4101211A5ACBDB98
          DA420906DD4167A031E0F617713FF70E0DD11F555539DFD0F43A1FB97D3D5FDB
          F032198DA771C8F8148037B204BC5056CE5B3AD37DF55EFD466047DC6652D940
          52F2E88EDA2E6D341B294B7B34333FF75321DB85BA7DD7EB4DF0ADE7A6C2F80B
          0174DD9154C0413A59549F8097E63E06F3CC6B8113684DF588D114A018E41C00
          A279364ECF7EB13D6EDA1B84C0271FBFEF3053F147A25290664927A4854E33B3
          3B335174139C7295AA61BBC2AEB4C3E127C3B0B28171232378FF7C24004553C9
          CDCA48AF43BD212EF98552595256710B25B9D6C6D466D9511D954B66C5E32604
          93B62A79406057740648B365E2770A4C540BED644BC0EE770876BFDC1D60472D
          A97966C4FD4A32FED3EAA2BED2A64B9E695A15EAA9269E8A20671DF7EF7149F9
          28A71F326F3BE874ACB5E44545158D9057DEB3D9726FE9906E33B218711E76BC
          59A9DA8A8BCF52D69F7E4021BDD136A09B0B7E4220340539F7EBBCF940D96F5F
          B1CA81276AC87D685CC527230FD4E9872008C8E511EAFE6B69DA19324965D943
          88C9CB326704C507570D1F7FD60F744764FA63F5EBB89839D695DE7800DA5E8F
          455FAB086CEA3E4F03334437039E377A348D23D34D300E7D23680B8F077210EA
          4A77530C1FDE52517AC6B89B5B033A5E08D7AFAFC355AB6B50767C18B6039ED5
          95044C46F651DB1770D08005F3B2A3C1DFA4E75C3EDC81675A1ECAA71C199668
          B093F24B7ABC669A21956FC23BFEE0E485B0386FA683501422A053B794D5191F
          471A110E4E32DF95B044B9258FCAB34CBDDDFECB96A0FCE987C895368D84AED0
          F31493AD9424513587D1F082B1EB301015A5DF7066FEE4A5A0F4E929E95A9C17
          BFD7E1E91BC929666C56166655C3CD5F77653830088CF6B3D2D966951A15BD3A
          48A0A34AB5B4A03D97EAC52515C4139B2179552A943DBDE30BE78A272BE17756
          6CD5523ACFA374670839E933F0961F365FB3677FFDE347CE51828E6F44E9C77A
          1D508037D7A537BA8ED21A5864FD9499FA06DB597696176ED92BCF343BFC8702
          BA649E4369802B543834FB6D3838F33548AB1BC79A3793979F47D27B2A88C69B
          62A7939E5D339D6E934B3072434CE76D2A43E5AEA851F066F7479D8371709E49
          4FA6A5278C3853FC4E73FA3BD128AD17019ECA1433645C0D6537E68BCBD0234E
          8C36567D37DF73BA0D173C7336A437FB2DB563A06841524FAF3705925F495C7C
          DB1486446E1052414A0D599824A57560DADC470276BB458D397AD1B1B1778992
          9CC358FBC24E07E147856F171E06E671E775BF10D3C275225894615EC775C679
          9F0ACDEF57A1FED92DE42F18D92C34705C9E096A1BCE3A30B8EF5B6FCE805033
          5ACD5660A274C7BAD208B8A4CEFCF1E3B677EB264F6B903AD31C7156D9B94DC9
          90A03B22F5860546ED9C0353D9F52D91EB754011AAC214CFAE9E71D297EC70AB
          31180055E28E08D148C80B49704CF74019D80CEA412B417FF99D5D75278D70C2
          5E4C3AA0DD504475C1810878FF82E7EF8904DC8D424314CE47970076A8E187B0
          A6EA004A6951C6925F3D5989E2DC08C01EA9D8602050110E2A8C25A595680C22
          AFC03A82E1470F990167EFD907A6DE53E20EAFB5ADE9C19FD7D6E08FF8DA8292
          07058DB3B18E4E1480E0D4DCB071D6E23EEF332F9D93165E5810546E57AD54D5
          9991EA3289BF1C1D55464E228B6BE1966F5AC01B2ACF40B379D506287FE531A2
          F4195C0359983A203C59BF30C9EF916A911C50C82E671E525044D3CAF1C21FEA
          BCF0F30CCEFA580714056CD13AB9224AFFDE074A25D274E06A2B3D955BE34926
          29C7641AF76E7DC829DA4577602060C1482D39182DB2EAE3B81B214AC84F966D
          E733776F8215A54E7A414ECFB2A4A055BCB79029F0912929FDE8D445E1C2B496
          0AC26815E4E3F54FA60FBFAAD72B1B53F5BE41F51E7D66F68F22D8B057DD5D76
          76861936AD2DFF4505746456FE3D3F1D2ACF0AE8469B275360F10A9CDAF75A98
          61DC89ABCBC7F5D387C0F62A9C1AE4F6BCBDB1B3B3280411765D43436AC44803
          D7F6D7B4A171F93AB06FDA8A9BADDB7F869483F2C7153EB837688B33C879FB99
          B8320811C3DDA5CEA4854475A1CC48AC6589B307230EF9F9AE3536BE99086CBC
          A5B63B1BD35B90BCB2D869620C708D94BF0999682237E8E6BC0C0CBA03447D0D
          DC45743C3DCBB49D559891891C469C7B7FBEBBC08E5A22C125255B12CF5102E4
          9D5FB8E4D832EF30B08E3D2F76299BD63491AA2F0F1C392BAE79D26F790CB92B
          DE67F1CE95815EFBFC564D54DC882A51F28A34545BA5250B9B0F9F7F9AB2F1D5
          07E6CD2DC8AE7703962793EE645A63ED524736AF5DEF883F3CEDA6503431F142
          89DBFCF65AA4B23CAC4F6D7DFCB00C7302312166CEEB4F39FB7EF3BAF2815FBB
          26D7814236C6C0384724199AD3A02E5E01C6293780B2C7A651C96D1A4DC629DD
          B4798722E0BD15B4C2100CD75BE02088192A8387CB76046CF4571D17F7461F75
          650463688E8BFF3F7BDF011FD755A57FEEAB336FAA9A2DB9DB715C53EC74C7A9
          C424248400A164B3D400BBF4A5FD97CE86CE529785856593A526840021816421
          8590DE9CE2743BEE4DB66549339A3EF3DABDFF73EE9B278DA4912C39B29DEC6F
          2F3F115B9E79E596F39DFA9DFA1A4BD77F110172D5F438FCEBEA59B8B9D92886
          13B212197EBFA7E0C0971EDD0BEB07AA7202EAF7194C74221A82DEAA5BFCC8CA
          4EEF5DC74F4FF38AA772A197D58EFFC8B1E843948C32D2BD48B93A199EF980C3
          4B172441CDFB4A522D17AFDF05F9ABB680D75BD3154B4BD47BD0355BDB6643CA
          0A5EF4FA63AF9CEEB77F6B05CA2E4674638E36E3A31C94FEF66157A1EE99F6F1
          FDBCFFC3AAF0636DF54EE3D283B123BE9B322E8951A15DC8CEC12CDB5999EE27
          BC580B02A026026DA0B1EF9F74516B86AAF5555CE7E6AD03EE77D6F5A869534B
          463516C18D482D7BFCAACB73EF3E669AFD8FC775983E4A08119C3FC9D0820A34
          D8AA8B20D7A3219AA5E7447F2962B12DB6BBFEF48AB3F1F43433CBF47CD54305
          74212DCB84079315310AFC497915DAB6A92901BAA0CA46030F2DBCC5911BE06C
          E506E0955780F0EBFCAB84032C6C377550C3C05B4495B856B09FCD899E773D8A
          BA03BE85459E3AB918746A7D1F55476371021297CD81F8455D047E11E148BF3C
          09EF1713076936C213FA52E86F44CF12C30D5EDE67EDE765AD92A4B61D30BEC6
          49E1F90A05B4E36ECC4FA3D51DF32CD95140C880D5E4935524D83D3FA596DD8B
          1FF4065A1462AFF92E2891B42C5598C420A5A615B4982F4ABB0A3CBFD9E3859D
          9AA8F62B2C92E46AD77CDFEF5DA295FE538FD76ECD69417E878652B3E47AA69E
          DFFACED5F6CE2B4E895467A5935AD9D5655070C49C08A9A3312FAA42E19EBD4E
          F5963D8EBAB3C86382529ED8984A1A795E13268ACA2FAE88578F4EA96D797778
          CD1C3734A1D6AA7DE79CFF63667457DAEBA4CD74AD8C8088CF222530CFBC07F4
          558F018B3B07248A1977887AEC73DA1CB869CE87E1965D15E8AFD8D2BD4885DB
          D4F72CAA2AE31DBE309E454A8D2CFAA7EF9DD461C1D757D5412E505A436EEE90
          805ADA9C94C8423F376D19801F3FD72BE379C610A84ACF007E5F438BCFFDC88A
          E9CA057353A8EB473CAE6DE957A67FC144C9D102CDB21245748097D6B8BCF826
          B4E623AA62D52A5E9FE396FFB407F2D7ECC093E34594989A68C292D2FC1D7D91
          6331ADDCF1CD15A814A422A2123595E49F0A4AFA5AEA96D008B60A25B3F97D5F
          288BDAB1D49AC7A82BD319724FEE8C7713D0919E2D3BB0D379C5735C48BA092A
          1E8FA1024B5DC55903E0859E821AF55851D128786047AEFABB2D036263AEA6A1
          3EA1A2B1ECBD61418BFF0FC74D537C8F47F09B34B7142F941E219427E4322DF7
          9B03EDBAAF79F3E2FFA998B11EC7797EB5EDBEB08A808E6E553B544017874916
          A16AA8AC6F620BE16E7606A2C754193AC120008DA08AF746FF0ED4AA4A20A606
          5768A1924C53AABCE83ABD1F7E029C2D2572559236459B384C7D15923FCEE625
          E109DF981783B6AF1D0BE6B294227C1113555FAB0B8EFF352C250D0337B7EAEE
          8FF43B19336BA8A26951EB5873EBE2A128A2055845A083AEEA743A4026AE1D69
          C423B3C80E78397263DACFDF08F613D7851C94476ED413D122AB3F08DA9CD351
          344E6AE949984E23226F5EDC35E0EFBDD714D53E0B484A488E628A5DE1D42562
          15257654CD59BB385ABA4AB1DC2D79D96195725854B02B42550BEBBFF42AB1E9
          4367268D8C6351AF66A1367767C63456F5B928DCB3DFF5AEDE5835894B1934AA
          8083306B8BD6CBA00C4BB4662A9F39CEAA9DD4A6C533B64835821CB5E071DA62
          85453FBCB3B8ECAB77B43B1033EB3EBF1C825C455BB0018C73EE03ED981D41DD
          FC14A96A3A42CF97958BE12EF31448317B5453C17106C931D28A659A3E829230
          10DCAE3D7F014C8B6AA125672A0A91A1F07AB98C507CAEAA2268921BC410F03B
          D98A075F7C6C2F3CD15791746075BC23CF68D2E5823208E115B393E2DDCBDAD9
          DC4447015ABF5B84E8FDED28D647278D1098A202222AC75778E9B5BAA8AC8C81
          51F2D4A4522EDFB95F147EBD13AAF7F7A94A524F300DAD3B312EBF65CDCFD8D9
          B62B8F11A9B7CF637E464F333D5750677C2402A29A1E4124ED8ADA09FD7EDFA7
          D06AAC256088A2AD46FFD813E98582510225882D0F1230F88CDB1A570B14836F
          73D2492614A381E0398CDD9155C8355D31D1EA760B35CF7E2E5B8353A6C5C0D4
          19B1F84685909F0B29DB08E478412F524BA084220CB490BDCC82D80F62BA3500
          EE86534BCE86B35A9959228BE6D0B4E941A0938DF626F31DDC36F0303B199E65
          4B1121A61EE8E288256FE0FF332A95E7450CC98F87D65C29FFF3ED30F0ED0DC4
          1C1EC38BD3BB376BD2499A5E51D47C1440AAB0D674CA56F6C6F294CECB5E1CB5
          AAC9C5415EFAC3A00CC0925E2EED8BEE1F55F839626E009AC70D6854C8DF1FF7
          627C46A5937E69D53F38B9AED8D4D6C8F7A072FBE781E70FD8DDE0D08DBA0110
          59FD61D0E79D1164074E6E90BB322EBC72D67DE157A8F53B71D47B47BB81E95C
          F3AAA7B4A64B8C9DEC577E332751FEF580C16B35BCBB7467FAAAE6162A0B5B2A
          0F5DF33623B7744632D2EB988AED354D5641C1CC0D058AFBAAA27CDB6E5B3CD4
          E344CA54E7158A502EBC0569ADFAE679A638A15D8F165D91660DF12202B9DAB4
          98937C7E47FF0567FFC0AA41225D6782AC7288668DE31F81E8E537068F3EC52A
          1F21C576D6099F30DE0135205AA109216858844F0FD94F345304469F5CD909AF
          9E9F0EEBDF4C4DF5B467CBC9CAD3E594301807074DDE339319656EB4627A9E46
          EF4FBE3D9FB2386BF89D07F614E1AB8FEF93B1C0888C0106A0809899ECABBAFA
          8C982EAE58328DBF7EFEA28CDEFE2DA1C6EF6E97B0D6EC7CE025516B2B7067A9
          CB7B3E6501B70C962C5505AAD5B91F6E82F26DFB80671C93C5B590F127DC8183
          324954BC6CF4DCE94EDB178FC14BE971AA0D503BBF68336D7307881135733C91
          F5F6FF2B073FDD06CCC17F6324AF24851C25A014F512ECB17A80F82EEB63302E
          2964BF1FAF947293E5163B65C6DD78C2577CB5C1BAA3FFD261A8288C05A15154
          BCD018C0AD232823B35A5F13922332FE8CF7CCEF8EEDE165ADDC2A78A23C2D72
          EB40BB714F1A1F20EAE766666A0FBD31C9142F4204882F09A0D310D82801E54F
          CA453287964DA927AF7E0E71CDCE106B6189D88490AABFD84B4AF60425A1E5AB
          0FF6F3FDEF7F02144B25DAE5F1FA400DFAA671F18AA2E23B4A5A87B6CF2D9331
          3C66AA1682200101396B2627C45F7A83C9F9114A79677CB75F556B08ED6AAAC9
          67C2EC45B2801B0F62E3A0C35224B04BBA09985199AE7026E8F04CBA3336B198
          F8857D50B9F5B3F514BDC33F3161F249F4159FC53F4F9A798B5C451D4C8B96DD
          1DFFE3F2EC7369D0ACBAA0E0F5FE4CB2065F098C0590713FA6E312742D2C7B9B
          571AA51F1AF1DAA359252C368F40A9569D91C8EFB964B9B7E9FD67C76AD3DA12
          7AC15661B46090D7A35CAB98AE14B7E63DBBE0097957597088B79B1D53286218
          AB06C90BC3744AAE11B8D632675C7EB59B786CA003CFA046B6164B9633E6EB7E
          EF6A8B760461047F186BFD940802BA0849FA4FE86F87C794A3203A31E7090954
          DA97797C9842D9E3B0B2C3821F9D3317F5254957A222C8459E2CA52AAF7E7E95
          D8578BE1747285BC755DD1B2F870D776F8CC9C1774B49F4D5429A89F964D0939
          0A2ECD8EBC0DBFDD9C85BBBA0B50C26BA149486E50E5C469B1E483FB4AB1FEAA
          03AF98D9E65EB16879F69825DF136AE2EE161491CD889803F79F0625E1B517C5
          C0E52A2FBC360EC63E50DB58A97A6FC6CFFEDB4670371515D0140BADBB7AA775
          393C943705C40BBBEB9A53C1589AD079211953127FCD2BED3F6A4121D9D8EA87
          E13DCA3C7B459E172E6C07A512668F0E52B411D0E58D02113A13D764937D2B97
          2082E798D8CFF3EDB536AFC54925F0B3519F0DC68A4322899051263CA1B4A9E9
          FD432382BC134E412F0FF444F7B7A305C97C11ED9B6DFDD24BE8EBA935553BDE
          B1E23C7D5ED9DD76423B332B87AC603C14D8071CA45D1510F4EF50CE41644C4E
          516C6EF4B0719E4E164FC189621DCEE4E4587F9B8C14CA118797BC6AFF679E01
          FB892CB0A83AD13E50612BFB326EB5122FB8DCBAA80B5A3EB604F45996824A38
          5977B453480A4EAD697BF886851B58EC8FF655078C9C86878034E34605602497
          A12C26AFFF34E3DEF371A7F6457CD39F539A49E578F4B9834AB221F694DADA9F
          82F3C25F274BFEFCA287EC663E7D1144CFF9A46C120B7C527B3D603F514D9567
          9F1FF076DDDE22DD957290DB4C2FA06C46544379227AF0F7059A233320D5A199
          2A73A5A3B5A424CF70AA37B5C44A575722BCBFCA82AEB0940E5C29396D46F1FE
          5FBD571D38716E9239C2AA77276FE6CE142898ED7AA84BBA2E11E0B48A27283D
          7C54177634745869BE553EEE1BB7E48EFFF2ADE9024C8F51085BE85ACEFA87AB
          CAFAA2ED262FCA787758203C6827D6D798CE810D2FC2DB4107F3C3FABB61BD32
          07C1FD80401732DBC8F893CB056FC5A9FEEFF3E6431BFE972C3B4DE1B1DD8E69
          9FFCE439DE7ED78880EA8799B83E70A5A202AB9CDFB25F7C6ED656766A3213D1
          D03AF28422CB65C8BAA3649527F615E1DBEB7A6077C901541EE0BF5E318F7833
          D3573EBC27B6295F61ABBBDADDEFAD5E948BA51EB445F2EA18530A8961CC248D
          7B43016AD79517A5D5361F785744782D5116434455A132F0DD17A074CB5EE003
          AEAAC4548D68C578CD73B51951D1F2D1C5609DDF09A264A658E4D9AAEC50E0A3
          C23EDC65E9A1BDDEE7EFBFD202A1A502320D69C90DBA2308E84A68D1ED45A063
          CD3548569FD7245E5A45EBAE12F5A3C536BB454B39C9041A92FA8864150786A8
          010D685084E95E1EF3335B933B22B8191378BF1C025D698EF50B88EB1BE81B49
          9989AE2A05FBE935AED7BDCC3AE259971AE2E19DEC15B0852DC05379E83A86D8
          384FA789C7618578A6EEF63EE8415F8E28712D3FF0834DC44C80DA93417E7069
          524FF01AE162CA7474D4ACAA4A5287D8855D907CE77C505B0D53D4788CDAC1C0
          CBAF5F1CB1FB471CE61677C7F7104D644B3D383D726E1A59CA1BE7B619D1AC20
          A0B3BCA837ABDC15021D7D77F2828F382AF3DD50F9DB956851558727701FC241
          F9206ACB3CB05EF9059447D1C9269FD08883A2A5855318F0B6DCA00BAF12930D
          77296F9EB56701E6A8414342990F810091F141F4E37C16E341675E25B0EE54CF
          51DA3A4BBC74262BFFC44854FF92D7826C4F023CD755C1CEF59EB3D8D9F2FEB3
          22FBCE5F9434FBAA3A23FA0E364A780DFB4583841ABECE32CB32E2CDB8F5A9BE
          D3DE799D6103D5CC690CA2352772E9CD15FDB867A3C21ECC5E1D6F84240207E5
          DE27CDFB77EA697095F62AFCF3B8FA234D20A5F6CBA27F7CA82A9512506B9D2B
          96B783E74A97A5A1698EFA2FDB8FA97E65E7520374BB0D46EF241B7CAD80169E
          F3FE995BE1DFE6AD577585478831A14E1B469D89E407BFF3E47EF8C3D601F8C5
          9A79B064469C3DBE239FF897B57B637B2B8EF2D1E3BAC43B972CABF8CA530525
          F527C6A26B5193F1A375D694D1610095CA04661478E17542544EA33DA22A965F
          713697DCE2EF7643E58E7DA0240D48BC6936C42E9E014A4AA70CF138080BD48E
          AF5498F92CB92C1B951502D1017FDF0F6CE17676006178F0FC99D11B82C16E6B
          0FD4341BD8D835A083040C14A723CA83849BA84DAF7658BA50637E5060DEACA3
          64480386F3CC8A08A8B5B2566E67019D6116814E34001DC87B10D8313448B233
          4A4714E834DC0BCFB1E5B0969D284B0B0EE5F0F06EF3C42E38573C58AF063828
          BF952C0C67A652E459C7DBF7964780175D72B48FC74C30DE0817B54686AD9F77
          BCE8696DD0F1BD95A0C475861BB0851259E0C8D6C04D7610CD97D317E977068C
          BC89DAD748AAA1D065996D325F7506F711072D484CE99F55E9E23137A6E19F49
          6E1D34E33E35692DFFCF3F0347C03B2CB13A11A4BB4757BF17F4856B0E262E17
          C48B54D3F176DE56E103EB5BF1CF75D2F64816D8B2BABB4F84FB84494497AE4C
          4A88DB8360E745A53B33680B2658845594D492AAF3D831D1D28FB9E56ECD51E9
          39092B6142A96CA7E3C56D1F38436CF987D3136E341A33B21505C6605619F7D5
          15C6BCB43A70CEEB7E5C4D3DD4D3EE8265D075227F7F3DD757AC5744B57E1CC3
          E76E1EA96DDC0B32D60D93CC56260D6A0BEB820F18EFC53F8F0B74E41E23414C
          8B3440D6DB744B871F9E3D07A6056D75148DF168B76D55563D7D96E8F6F43650
          FC91B1E7F059B9BC8EAF963ACC2AFFE3E275707ABACFF47D4D174216ED3A4ADD
          11F77D04BB35F35370DC9C243CB26900BEF2F8DEE480ED27BA62BAB8EADCD9AC
          4D4F7A1ED78BA0EDAF68D33F8D16643E25014934B92F937CF70570DB2A7EFFA7
          35612F8CB1480D7F67E3DF3D4E7A86D66E520897E1168983DFAE32EBA1BCDAF1
          AF64318EAC99ABF1FCA5199E7D4F0BDE3B5667D420901BA5A9D18D77C5BAC156
          9D41A08B69EEE0A206FD7F54F9C38627AB381A57F36D762BB43829B2C60C1EE0
          C13020A7B89C2AD46A412FE6F6587B5B1521BB54CBDA4B8EBBB6CDBC07A699B7
          373E9221D75305F588011DC5E59E674BE101760AF5109FF2B8DCC821EAB1BF37
          F25B208667841F9C2A1FAF1FF672E6CA67A172572F31873727470DC644392F83
          03CCA0C80B6E3972626B007696AA0A4F50D6570E5E1E492AB29C007F4A3BE2BB
          85C73C023D7AFE91C91263015DB3B9A414E59CE55965043A3AD7F4EF07555337
          F4943AD41EFA7770773C7AE83330EB201739F59D602C79F5C1801CC85202D534
          45A537EB6EFE2D0A02C5087616250374D5807552A64D93B82EF5715003464EB1
          03FFDC9B90C565F54EA1C06B9E3AADB304DE725EF9FDBC78F9DAAC212AB690CD
          66F0A913B0BFB0F3FC13AB1B3EB946CF9C382F65F6D54CD90D61628795D1AAD7
          BAACE28CBF3E5358FDE65F266B9048088809E3B40720F2869B83D2812012270F
          27AE055774790EFCBA0AA8085F463754EE0E9EA550DB0F5B294DC8BD4F52F519
          36133E8A40678DED390A6BE642BA2ACF465CF8F1B973E158EA34105873514DF5
          FDD54F9CEB3C546CB5C0A8A60F608C0625015C2946145E7D5DC75EB866E15364
          625B1E57A495AA102D0D7E6A5D6F59DEF8A6AD39B8774F51B374A5BDE271F5DB
          AB67893366C4158F227D3C5665AC9667D65A5F49FF3E21C1C76F9A551924AB08
          B3C02B67B83C779905FE7403B42AA70A63193C11262277ABCB62F714D569DF44
          E4F3DA465C418037BBDFEFFF982ADCAEB0666ECC165F4C20BAC6F641D1CC4957
          26CDD61DBD0BA0EC49DD06B555159625FB6065AA079129A80EC05BC471F9E325
          AE293EF052841BE5CE6A8711F7623111B0C9CA35A7841E5B712A39A350193072
          B2471DABD7EF059B42039D0DC051F1EF369BFFE811013ACAB0ACE2D6FB83F21A
          5C09F390C5E51A8790F1540F81EE66E9A33F08A0A34360299696AFDCB55FF47E
          641D99FDF5B6F74D777A1887F2EADF1D8FB10006AF41343F19A74A492A89BF9F
          8B3ABA1F0AFE43DD336C2AC620D0ED8C750B57719B015D38424115C6D99A11CD
          4A818640979D55992162AE65D4B9305F542F3DA647C1EB5E07953BBF79B0BDEB
          2636EAE914E6C957042037F9E4131A51043614325ACEDD7C3D884A4F0A147A68
          62BCE9406BEE28DC5BCE78D60D797B8C60692A1CC456B4EC2A312A5F96BFF36D
          6006AFAAB35794BC0D8B62A51F30ABF6585E04E69B2A0CA8D8BA5ECD3FFA9DB7
          78BBDF702C0A1F3DA1171D7584A535EA9E54AAE0B4444B9D7F79A170D27BAF33
          5955B4093C792C5500EB033F01962C90AA42C298E3D3D5F0956AB56EDDE19EEA
          2B4610AD216F29A70A2B05F4E8DC5A84DB10E50E34B26C0416D3045A0CD101DC
          C95AE1FF19EF41D96336F32035D6CCE5F02F25624E39676602BE79FA6CA07E73
          F84C9AA6B9C61FFB67545EFFEC2A150C97FAC78DF43E34AE3E0CFBBD60157267
          BEA1A3DBBFF6E8A75047E631B4ADC90AF73543857FFCEB7678685F095AA31A98
          01954C5BD5E3D1D53313A56FA145E9573DAA495540E81EF07891A995B2D27295
          C6E2F7A6804C9AE6D61D89BAB2E01D459E7917DE094D446711AE9FCD99B1C355
          127771167D04BF6BB7D4CB1086BEABA2E2BDFFCB255E39A11DB45EA3DE9873CC
          DE8A3837F087FE19F0D9BD7351500634761BB233C0F1F57A64578169560E66C7
          B392B9EACCB65DD0AAD97046EB1EFD84B63D49A24A1BF0E8DDD4822E7427E646
          155DA88A87DA5559ABFA9EE2E355BD248542EA2ECB4CB8EE047486D20B0B623F
          1863431E66A0A34827B9E4FFCACE85FDAC4382CFE11AA41C9E2A9E8063C5FAC9
          665E06345F0A2BB388EAEC7FD75A49F3C5A292FF6E649D4BF8F941F257186243
          68E6E218F93D4738BC5F9F6B89CE6B57919789BE4BB1F423D5756032234C272E
          EE8EED1555B5A6AB41224A738D3398A330E9860071A4FB57A078C924DDB8835A
          1E7943680E2BF062995E988A965509AA777D0978AEE790B92F294D5E9BB10CAC
          0BBE8472E4A042AD41BC4835B9D77D5781F73FD9026A440D322C75DC8047734A
          649371BAF19F247869D075229F416305A5684F4232E980CCF056C02D38EAF499
          03DADCB7274B3FEF8F947EDC2FF800B5FE224CE33C0285E2FED547951EFFD165
          6A65567B422BBB1125F041312944A41C93F29C7B31C351AB6E69DA7D2FD827BF
          F7770677582B27666A8888C8A5BF03FDF47520CAF8405154623C56286FB6DCE2
          B331A8EE8AAA6E51D399C955D95919C513B749D10737797CD96F3B7B408D743A
          49EE8AA870A1319643D63D293FE326C09119F079FDCD7097722C6A63A33E1AD6
          CC4961EEE13BA5117CBEB66A162C6F8D523901D3146E657CADF69AE74EF31F2E
          B6A440F51B3B7A875C9DB43FC32CE26619C46570CC813B8E7B105ED9DA637ABE
          2695394D55E0F69D79597A600EF16FB6E0CCC6D1AACB7DF5DC39C5F3BA1251AF
          EA2524C51A5D9A276C10D1024BDE6E2BC96B624C1D6896AC122AD02EDEBD843F
          B6A82C467BCE612CBA5DC7CF47E5CFF05A3B99DCC2CBE7F5F381B7D33B26EB35
          731918A36383A679704BA60BDEB8E1640436AD5E8189431DC1D746A5075C1DFA
          8B673295ABE2E2B94FC39A69DBA2AF9FB53ECE18D7CA82B908C50E5A86013BAB
          EC75A1502844A93F0315F00FCA819714D005EC270C6E55D6C03E9836E585E107
          1A0EDE7189D80C678B07269B79497C824C496AC5ECB75F80E2AF7712C80DEB95
          34EA55838518E94E1AC993D86C086123D02D8CBB44AE5ACFC0A47BBD1C804ECE
          15CA3E0FADB91AD5D4D88A1D57859A84D16CE4D0F0BB66C16762502868422DCE
          2DCDA61E44B13A39EC94C42B892DA572EB95E0ED7BFE9058759461A9B6CC80E8
          B99FC6BDD23A597AAF7050CD5C82577BFBBDAD7FB040F8518957C0710E3A8BC0
          6692CB7202D9CD8DD3AB903B13BF5771416CC1FD68C7EB79140CADBB8ADAB5B2
          AC2F3EB7DD79A2E4673EBCCFE15BDD2893E5CDE411A93A82B1C2EE379D606FFD
          C0998AD31E3315946A5E22A2F8A60A91FD45CF8B1A4EDB83DBDD853F7900DA9E
          DC667960A6B8B41EA3425BF21C44DFFE6B5C4541CED752698395CF3ED2C26ABB
          4C7C2F3402225C6741B5F148CB88FB5595BA2994E28B2B4EEBEAAC6976392941
          44C37CF0E5447D6F9097A0A98B88B4CC3B9463E07BFAA5D28BD47093C69A3959
          009D457DE0332774C29B96B651AB01D09888540413AF78E60C7B6DB1D504CD69
          4C9A0AAD4BB2765C183B8B380851F85AFF1DC73CECBDB265BF8A4047BBAFA221
          B851B7F22BEEDCD1C89E224B1CD0AACBAD9C1E2BFE1B5A75AACB897894AE1B93
          B5FF744CFC9632E8FB0A4AEC4EA624FE27094A2D5A6F3FDFAC66D50F9CCAC0EA
          7572CD4B8B9999F57BBEC6853BBB2D48406163F656D410CCEEC875C085CF9F16
          DC968D6B5C87F479F4DE219B0C0A67DC1FAAEF1FD7BA9BBDA66B9376C1B46D6C
          AE95A7568A72360A6E443E7BBD9EAEC8823FA3E5EB4344F67C978DAEA02D7A35
          184D88FC0F2BD051F2C926B608EE61A7CBB8DCE11E0474C7880DB05A3C3C99CC
          4B3A0471A62B39777B49EC7FDFE3C02BBECE343656CD5C183FC88C73BD5680D1
          69D8E1A8039DD3007404901366C33FC243023351F338AAE3668C01281A459C6C
          964493AC9996DB6C482DDD677EA6C36EE36DB5566ADF4356EDA46BE7C67E4A5D
          760577D6DF027CA06F6AC10EC52C4B7482B5E6F3A058ED20BC83EA8F464FD40E
          5AACEC6DFFA3CB0736A689320C2F8E574FE0DE5A404C284E907072A0314A8FC0
          35D25072946A2036B640F0F628306DC1623371EFBD29A5A4B851BBA7DCDFFF96
          3D8AC2651CBAEE0211C2806AD589C5CAB8335DD5F6C4FEB31743AD3309F3AE5F
          0B6EC4645ACD4500F46278C6EAB31A01A5633F44DFF92B60AD59A61950CCAD8B
          157A6E9E86C00629C5E461D6E501C988794DA1F4957CECE88A98F1C6FDA434C6
          B93D587CDBE825186542D30BF4B2167897F1A19145E344B545674C0A732AECBE
          60760A3E8D4057EFD6433573E675FBE754DEF2C2490AE80E9DFDC6BD1C36161D
          E99BA6E74B8E782F0E9E9E41A073D1A2D311E8E8B124D06D1EA8C1BBEFDE1902
          5DD88C95FE3D5BF378F56BA7CF82B36726C2AEE466FDFA66BD9793077EBAC0A2
          8F5494C45F222CBA2E29CB35C4988A38C0584ABA0A655E7C558E67DF43345F61
          DBACC19AB9611B89C9982DBC7EFD29F0A76C67DD826B3AC2B0460C9AFA50EADC
          E89E260DB82E2B2F2E98BEC59B1129D9AD8ACF2F99F32CD7187710D8E40D8850
          8A9CEB4FE63BE1C1CC2CB0F0BEBBAB2DB83B9F835F9EFA4F43C529E14B1D2EA0
          2390DB2A29BE564BFFF804934F68420C1802057AC9836E16479997B3602FACE1
          F7C9679860E6654AA6F93356EB79C723E012CD97A5B612C72534DF28212DCE78
          C91263D5DC055C8F0EEFD3E75A5EDD7519A9CFC3CBA9CC80D64B665F22E055B3
          664EE48C3CB31527A68A0332ACCB79E04C642C2F5A9B519D4E94424931B53DFD
          E4ED9999023FB7039C75D780BBE7599935C25EAC1BB3CEAF1839EDED602CA3D6
          4F07154EA4F969432CD2FCECFAACBFEB8E343E98562F502297A513C84F6F8209
          39CD0C663A579485B9996AEE5AA8120AAD4EC6A2D332FA82D79978BF388BB14C
          E68A3D35FBAE0AB136D2BA593068FEA1591650277BC4B222F31640273F9CCA65
          1281AC4740E96281DABE0F226FBD0E94AE5E6A95582D3D1FCBEEFDC3F48862F1
          16C6C481F6C2C881320B6F58518B4A44943B5FD3AFB79C544CB903608AA1231D
          2A9B61E1B11CAAFC8529E374DD8C6A8AA5CC2420A17282D022F3F268C17D63F5
          2C58333785332C657B54D35CFFF2F5A738D7F7CDB240731B39284370ED83D172
          69647215A5DCD849C5CF3C7CDC836299558C795CA13DED68BA0A5F59BB076EDB
          99C79BC929A673DF5ABF661F5A75FE8A760BBE7FE66C4905C08712190938C8C2
          D3E474F3440D783ACF9237F96AFA9A042885583D216122734CA4398E28AEE9F3
          FBFF1917AE275D774136F34E512AA344BECB37AD841B7A67E3138C793C83EC47
          68EA466B9E67CB55BC38BD92626B4EB4D092DAEF9E397D1BBC6AFA56F98DEBF7
          2C83F5C576409D0A72D544E02A65325907DE76D47FC32F4FFB6070A1B049F2E1
          003A8AC36D61F3D1925B2D016E82A504B478B40969F6424D42ADFFD0E63D2817
          1681DDA5FC16942279FCF301A55AC08012D372C5DFEF12D96F6CA0DE4FC48032
          56475FFA1D6D888171AE1976A0569A7E9F41C5CF38032392516AF0F22B1E0F0B
          44A960BCE2299EBB3FD287AA6B9558CC29A03C16C3BA9C43C1C4C0ACF20C40B0
          8B122B111C92641C212D3B6A604BED7C9CF53783280C042B7490AC29E4B2348F
          BF147F2E1BB717DA0146029882824150028A266A99583D01C5C67F1A00B60405
          863F898B37053AB2EA0C043A3C8CB9B6A0B01C81CE6C45A07BBD01AA99601664
          9C072AB5BEB7EC91EDEB6188E16202F6AF8A77B5B8B6E46988BCFE66C650F6A2
          75E4D93D91FE9D5775AA68DBB73175D220170E09F90876B6E02C9F585A72675E
          DE17A35479BF025A8375372A59850ED30DEA29F03DED12FC7335FC150961FA4B
          86DAF5CC4B1AF0A3B3E6C822EE3AA0C410E86A97BF70927F7DEF9C24A86EB32C
          EB3C0C57469B27AAA135F7BE995BECFF3CFA69CD730D9AC7B286C0B609ADB9F7
          DFB35326E1D43D97F45D3A2383998515B4E47EFE8A79B0388819365E55ABBF87
          15587794B3D156625A7F4969FB0F8DC51E4FA2048D0C76036C369FC192D544E5
          54B4E4DEC7048FB403AB91CB724CEF9466D8F00104B9FFEC3E1ACFCCB899AC21
          0973E3BA900C0F4900C297A1CFE830E4D61C6246F1F58A5C47AE045840FF09C1
          6DA4ABD48BC192F473F0DDE33F0717CDB94BDEE590031D811A01CA0DCA25B80B
          AC89269F8474514518AD252930A4594E5ACB27A05B219E859327C690225BB128
          49BD90FBF74D90FBC916CAB40C35AD6623EC49461B63AC54D2F1AC399FDC96E6
          8AB4D7F1ED15545E10119ECCEA9A6A211FC6410E478703DAB896E4FBE34A2567
          14795F24C35CC58BA2A546AC068D09FE72FEC86539BD3A8D28825404B9184C20
          ABEE454F886EA1F59587EA03DF037FDF261438FEA44B0F88DECB587E21444E7D
          77BDC3F5419DAD205EA4453D7FCF3D257FFF632D68D9B1201940C9025B4C2548
          DEC106FD1A0675F9D411E8F07AB9169994E23BC06233FAF5A32E8DE3ED4830F6
          B194E296AFCA41FECB7D012574B046740642E2F2910A1BBE34EA32965B33563D
          EC19E7DD1547A124E99F99A2E4D092AB9636473BB4983F965B6D128B86F2CB67
          DCCD69656B7EADD87EF6004B1E5F4E7905B0C4F0D3476792C042C633E9F07D57
          BB18FEA8AE424153498B40A99680426ECBE3D172FAD1B973C372021A7104BAEA
          E5EB4FF5AFEF9B39D2A26B1C612671D814B431518DA185523E2FDD97FBEB310F
          A221ABC63CC1AA086AC428065F7A6C2FDCBDA7287BD7C110330B81015999F241
          5C44DD9FBF723E2CA046AF7ED3A96B68F04AD64D04BFAFE499B5CE565A7F6E31
          AD37261BA836BAB202CBC3056E5678F99C32CFBD450361B401A33E6EB2662E8C
          3B0EDF3C08340F15DAE0A20DA740DE5787924F46ED31390F8D619A4AFD673C6F
          0483B0D7E270A5CAABCFEF81953C370949230B97CFFD357C73C5570F07D0F9F0
          377616EC6073260A72B4C874800E947C419F91410B9844F1A8EC6480107F09BF
          1567B152E74B1D73D0F58905BC34F06F1B217FD55602BA6669F08D2304BBC183
          35E2DDC63A24E48FC823D095BBAE5B05C692A4C24B5EBCDED960AAEA2FE87D2C
          CA4F86E0215CDCF353DD0876AC2103D068DDD5D0BAB30B7A11B2664E4550A378
          9E599F3787DAF3447CD3256B0EAD0822830DE99F0EFD505414C63A78FB9E06F7
          855BC0DDF95C10BD9A8075474E3C25D622E3722CDE892B76D006385A736A4AF8
          95ACB7E58688708BD10071D18263B3714F4DD7C7B7E69A5A6F4D868A7BA1EC83
          D8146603E3FE736A6AFBCAA23AE3EC76FCB314B20C778BF3440DFADFD0DD8CDA
          89F6113D5C435283E681E97BD607AEF2D5B97B5B445166F5811A875AE6DE74A6
          F7D6F6A4DEE21EA855D3E8DF8C6D8D48C0E33585B20AF3E9530A767A45DED4D3
          5E8A7B52A8374E8C4C644014F076B269F079E32D9085785A051E267B15A995CE
          D29608FCD7397365F7A2FAD72D12ECBFE99F5979EBC613142E945650BDB029F0
          C8270D2D94910A1CA5CD676E5CFA98F7FAB6BDA8C5C87FAE923577E3E62C7CF5
          897DD06ACADF85A409F4DF0168389B04C2EF5DDE016F5BDA1EC6E99A8D30F339
          8885095460784B85999B0A2CFAB4CF8C753AD3B7128851F4910BAFCB13B5331C
          513D1E95B3A3A3A016D1C89084CD00CDE38EF25FC86D79DCD367C2B3A5F47871
          3902EB9015C987C937806E74CD360AEA30E9681C401141E5879386B367FECFA1
          053A6ABDB39BCD863BD839527198405C4E8321ED6AA21A3C096F32CD08542624
          10A9BCE144F10C5A754F4A0B6F9C212D3A16510B957B7BA1FFD34FA3CC916D8A
          438AA0F10E2BFD1B810859A5B4C8CD583F1A3F6FF3AA9F69F9D86291BC7C0E25
          A4D03C84B4475331D20C780C77B7EB806E538DA946E53B50333868362A0007D8
          38533206AD7155A8E59256F6078C1CB93325EB0165559ADC8499954EEA1A6C0A
          2601F9B0D70F4AEBCE2981B3FE267036FF0D44A5322E2FA604392B09D1F33E0F
          6A7A2E42332DFB413346B7816A1ABCB823E36DBD318D7FAE2781F84560C75449
          57C0A331CE3E9F08D01172FA06882DF8E74A5A6E4DAF064A725E565BF05AB4E4
          FC185AA3A4C9DB32892EAA40F66D7BA1767F39B4EAC6B8B38157AE42F4ADBF01
          6DE9D6385AB8A9FADDC81AEDDFF6FDD9648191CB722CB73F218BE7576D077CEE
          314343C39A2BC2E39A12D14DC5D49B914D0F7D5FD4935534916F3F2B275ACFCA
          25706D62385BA18B34F09A0441C9EA3DCA72F111FDEDA90E280C32A1D085C845
          F88D5533E1EC3983313AFA7E02ADBACACDFD5DEEBFEE3D4A7938DB1907CD89D7
          2940C6CA261EFABBAFE6CE4EF795EF58BE56D5D1DEF5819554DCF20EBECE3BEF
          DC0E7BCBAEEC93074189033D0FC98D5CE345E9B94E9E16837F3F674EA3B539D6
          6870335338D540A04D5641CDD6D05A7351D715D260139A0A7EBB014AD9025633
          EAB155D6381F2387A639F0BBDED970D90B278F077256FD5D42F03F50DEC27843
          ABBF4BB4E17774CD30E9681C60210221EBD0011D596F7B581782DCD9B2B46382
          71B9647D32262BDCC3CC441A13AAB3A242F58BC4DF60AED8315E0666C8CB9667
          A62A7A3FBA0E4F472F597574AFF4D04C8E3942EB8EDE8936DE583461545290D1
          8F8A3B9D3F3D85A8000D3C8E2FBA30BA61C411D4D2153073F7B3D3DC024BEA08
          F668AC38B0986FE68B606B340235DD07BD2482D61B8796A6262CBE17CC4130AB
          DA8A3728F988F95C138ACE4184597047861186A0D74C83D7BD169C677E07DEFE
          2D41A2CA48394F4967561AA2E77C5672590A57367A3CD8BB0699768A01BCD49D
          F3B6FDA11514BDAEC9FA8832F3706DDA8DE62C28E19808D06938B7DD28ECF6A6
          03F7A5E4172C22C8D94A7C4E3BF8F660FB15F9502915326FDB03B5BBC6023A55
          9662192B1F04F3A2DBD1A2AD52A7AD202B59F65381FCBE3F4E2F963759ED8AC9
          9BD79D520FD39A5B648A524B9DBD4C5667478EEE9201ABDAE61EB077F6ABE567
          775A6ACA8A339529E3B83D094C7DE0ACA8A5BD72DB59037AF2D85212C12E221A
          7A2CE35BD470120A1FD3DFA93EAA1CD596801AF18EC8CC427211CE8CE9B2507C
          76DAC45FF8F438D2054FB1BAA2AFDA9FDA7E0CFCA677B69173F5241AB1CD3A0B
          0CBD1B576AED8A9F597FD2DFA0437764020A23FA2F95C1F79EDC0F7FDC3600A6
          3A988042F316BA0C87C93169921253CBD973600502DE3856DDD0BD8727AB80CC
          15A2A096A86F1409D4BE3262CFD026CE377B1F2A25D85049C0ABD69F02BB6806
          95A6CF3052A91F6699062F431935E39076A84D8F7DE89A6D2C8226A5AF080730
          720E09D0C1869FCA8E04C47C42AEC109329F48EB095E5C1ABD599F8C305965CC
          97A3E76AC5F93F9FDF2D5D98E3587604BE2ED318354F85DE8F3F09B5B519023B
          AAAD0B4DEA03339E04A3F9411050E2552FDFF685E59078E36CC68B1EDD9336DB
          545858A4B24D73412BFD4559E3EF836949625A52A8F1141E770F54B7157295D3
          F863301B76C75090F93E68B40687DA5D48BB9CD68ADAB13BF577A5DF118BB956
          7FFF239F804359F8C2076FEF53603FFA3310E5CC30A714D158194BCE83C899FF
          04A24A4AEB8BEAFD33D4A1A0B03DE36EBBB185A991FAA1A6A2F0483FB0E5D120
          AF73AC22F103011DB9895D048AE775AA3896DBD7AF794ACB92AC36F7A234F8E4
          B6129441387868591C91EA337D50FA752E4C4AA9DF4395569C92CC82F9DA1B40
          5BBC33D0F0DDC138342811704B1B637DDDD774597A8B9B8666EC1D5CD8DE4069
          20B16AB13FEB93AF05EBD8398CE99A42D61CE9808AA173B727C7B37F7E02767D
          E5F7BAA2EB49256646EA31D031018F57151B5F279F3EA9E04E3B3F6B29512FC9
          6B810B8CBE6409E09B95AEEA478C7745F02CA808D7D25527CD1904913971033E
          7942A7A4FFA2A4775FC8E419B46F85A298B5EAED7D33BD8F6F5FCE3694539650
          FC04F1C1C0484B2E0095FEAB8F7AD67D4FE74EC3F3253FA34C4079B6BF221350
          A84D0F63F54CDB4086C96EE6E12C13F092DB922EBC2069C2174EEA82656DD6C8
          849471773104602743314D364CF85FB77EDFA68A14B96F9FAFC6E1D5CFAD829D
          B6359E35474640687890D2343C0C85D398405D64A15584BF6BDF07E7A5FAA1CA
          55D099801ED780AF741F0D4F165A8312C9D18037D8E3AE61A3F3FA338F49F87D
          48804E20D0DDC74E878D6CE1449BA8D20327616A1A8F865A0C2D2881DD98E6B2
          8B4FD72606E002B4ECC601BBC0AA43306211343DAA3EF47EEC49A83ED8076ADA
          D051E31C8A711CDCB3BAA2E6F7EBF362BCF357A7D16FAC7AB078AACA095A35B0
          D587D8A9E527D971690BAACC9700A7E3D6E268A4780A821DD1D3DBF36167ED54
          F184991279D307A326022EB9436D51D1A4D3E16E6CCD5283C3932833B1C1820E
          E57E663354EFFA26F0622EAC3CC3DF5B1059FD5150A71F33D94EE1638D56341D
          2DE195FABD2DBF37855B4DA00CAE77F1F6F17CA48AC0E6A3C0D2DDE6E505E301
          1DC565A8E3F4765CD36C8B2C2FA092022D3AA02F7AAB029A9106EE0F0AD9C16F
          190CFCBD2EF4BD6A2F880A3D0ACA6A0D77513407EAB20D609CB11694AE6C4029
          2D06E3D0F261B4046477FDACCBABEE8A9035370A0804E7C4C797EDFAA70BFDB6
          8B4F62FAB464D42FD5C21AB5A08593C053A6A95C89EA76E9C9EDCEBE1FDFCE06
          6E7FD2D2DB9268DD2963871082EA3AEEE5B5B2D1EE16A7BFB697C5E6D929C185
          C5839923E2547695FA0AF133ED3C96824A581A648700537639BC6D712BFCD389
          5DD2E959071702AB88A679E4FBABBE77D309E2DABE195AC533E2A0B91634267B
          7946FEBCD67DE53B8F7F40F11C93FEADAA29CCCF383EFCC39D3B206BA3D4095C
          96244708204860678280B580027E6E713A02EF3BA643BEE429D3E3D4F15DB60A
          3A88116634869484E18621C4B2EB3FCDB34AD072EBF37438E9A9B3D1928B8E65
          71D10893F546B6E2AADF8DC90EE4BF5AB40EDE327D5750F33E62B8A8DFDC9C9D
          0E5FDF73143C8D80E7CBFEBCA3EED72C03587683812671C0430274F7BEB00136
          B0459369BB33D5F1281AD2D500C1248FE9C7956057B7ECC6217BD6E4B5041E00
          223ECAB950FA4337E4AFDD01BCE43125A612854E02C68FDB351B4C7822AB44D4
          EAB4FF3C118C85094DB83C2C0E9F8A85896AE0A477C3ACFC6DCA7971B4EC748F
          788B44A5B210B6B9FDD0CA7AD8F4081EB508021EC3B94015BF5C59219EF5178A
          6D96090E8220F5397BD937829D822164ECCE1FD809EEC63F83B3F15E09C59153
          2E03E3B8BF43CB6ECA886B828C3B2D5AF57BD715FCEE3BDBE4F204696D78E4A9
          FADCC4C33C07CD80163588D73536B61B0FE854BC76811250E2D2D6921F173575
          C69945B5FDF876046AD97FADD937A94970FEB33D50FA452F68B332609C7D1FA8
          4B3705EE5C119455D4FD9A41FC5AC8049472F68174AEFF6F2D2D4A84376BD524
          FC722D3BFFBBEFB0DB2E5BADFABDF984F0B85FEFD8D1682ED00B4921AD25A3E0
          F415CAFDBF7F98676E5CAB3A7BB309C5C485616CAC82739943231CE6FA35B510
          3BBA526B5D9533E34BAA49AF0C06E2B5A83103BEA45F066B9525A8B556A92690
          DCB683B2886263E7CE4CC05B17B7C1D2B668A3CB30829FD555D5B75F28279D6F
          ED5D003FDF375FB6F192CFC2157B792A6BDFB5FC1198A6DB518F2BE423B6A93D
          CFD5CFF7C1CF366420AE93177618334B1F2589512DDF0AB4245F353B09274CB3
          60416B5416CFF93E3FC864DE831FD276D75CF8D28EA5F0C55D4B0E5414DE584C
          3FDC655907B96B17AF83CBA7EDC6791C9B86915CA4E4DABC31DB055F460BEFE9
          7C5BB31286B08429649B0AC7A864954302743FD94851AF096BB73429113874CC
          1F3411268C430D444D5917881D70BEB81367664CE32C74B511B97B554DEA7EF9
          CE1E285EB7132A0FF4515B1D95692C51D768C763790847502F56F5071297CD81
          D64F2F25D0240D850ED8549806E49E6C774077FECCCE171996A6CDE0B74336BF
          86DFCB93B8070518A207E5D273CA526D1BCC8B11104250F8EBCC103D55B4EED4
          E9B0CFE26038A80090243FFC74362FA941D2DB94B5DBCEFA3F81B77BADB4E698
          1952014EC9A07DD12A2D2F2D92F3F73DE8E04F0BAEA686D824EAC18DA0550D4B
          E3C99F8DE7070DF0C0BA1363031D7532F0118036A04070534181B80B2CD29ED1
          175D1E43C8215720B92C47BB60C8104454AFDCF12DF0BA378212438CB55C594E
          31629753F20929ADD401CF738B5A5FF7B55D865F565B9936EA38306EBBA5D8F1
          F3F247FFF243A867F929E1CAD8E38194DD08A88AA95AA6EDE5CBB5EEAFDF0499
          1B1E8E80AE25D578441FC79D29CFA44C5651A0D0BA7A80B79C5A4C28961FD3CA
          A0E4585CFC407F35DCA31C8313452C0D4E5904B45772618B68D9B54734F8F6E9
          336159BB256FE307D61D09D828593C687554BFD7BDD0DF5C8D81817FF771A93E
          3E731B2C302B86C7EB2E4B438527F695E07DF7EC84A41172630F7633CFA11557
          8CA0A1FD4A043802D6AE9489CBC4293F72AAF6D7A407B92CBFD6BD083EBF7DD9
          7845E1344226181A0436D961FF8AC075CDA227E1AD68C9F99E3E2101A9EA0EEC
          AEC6E12BBB8F865FF4CE0197C289A3ADC90326AB1C12A0FBD9C6EA44994F587D
          725E3C51EFF883268010AC691651980F7ABA781C968A8D07227C0E81D9639656
          15355FE47EB419CA7FD90B3C4B754892BB2E09CD495D87DE9B81CF8B5EBF796C
          CAEBFCD52A141A2868F894D6CC2535B0A34FB1E30A8FB0935B7470151578F1D5
          E236B743F43BA88A784C32FDBAB46DB40D6CA9788A1D1B298365A18CC2DFA91C
          BF53592CB6382BC433960555B4060D52165E4E0C2D876C902B9357071003B43A
          104CE9A07DD08A568A016AB4C8F35B2AFEFEB5162FEE88318D0867422F2F1590
          33E2BCC4BFCCD2829A06FA69D6249512A87A109D76B6049D0B88E6B752D0165C
          E22BE9C5ADE0DB8385C9A3BEAC47C1DDF12054EFFF010C92B88DDED96181B47C
          38A31D723BAFEAAA9636463BB4E4A89A39267CDF658A9A5976C7177C3D154DF1
          AA8387874D34F55C66EF32434548502AC54737BBBDD7DEA7E4EF793EA6185A8C
          1D283B1331C81ED08B89A59572C779593D3ABB96D41C3CD39E02B7A92BC42FD4
          73612F6B25EBCEA53383F2413E17B912899E8B3A1ABC79612B2C6A8F52E64A78
          2B830A1CD1F209CB6144F09E9AE907D477454D61BCB7E6C1271FEC866D053BA4
          FA92AE5E2E845B70FCFE336724F82757764267D294FD73FD23087034A823C19F
          FABBE075CF9D1E80DCD82D0943AB5476FE85C03330848A086C67A6FBE0EE631F
          02B26BFD49C4B289668CE1BDAFED9907DFDCB3109E2BA465154B9367192B59A5
          704880EEE71B27ECE98A42C8E87DE807699B6396200489191A5C24EE80D962EF
          81C08E4118D85598AD2434C7DB5186FC2FB743E1DA9DA8F16A28A214EA10DE58
          FFD148192450DD1B6051B5DAFE8DE321724AAB8A969D64FD87A9894D1908566D
          7DD052F8B3724114412B5203D33E4D3C5E3E513CEEFA60518A35813109D41AC2
          7C8500AF06BAF2383B51D9C0165982386080333C8E94AC523A833FA2CE82BD09
          8F58F3FF0FEC82A1A8C3BD86533B68DFD09EB540B71C54E98B68D971BFF7B124
          DA2586ECAB2A0749425E22EE5F60F3B5C0A022001C34319520CBB2E480D862C9
          5C6BFA955B72B4AE33724AE72AAA990BB3FC46EF3D0D0DBD423794FFFC6990BA
          6873F9446798AC12192F51512BCADCDF92EDBF2B9D54A37C74CD9C108C3B5E76
          E6C75F539DFE8E73A27ED531F07707E3FB3564F14322E22911A3D2FDD5DF8BEC
          CD8F6BCEFE7C528D1151B47CD831DD9968DDD97E45C9775DDAE7C696942DDDF4
          937107D46E35297EA6BD02EE50571065171E7467D0152659853D0E96C6E0D327
          74C1EA5909C9A0524FF70F8BE91B83FD92889C6EA79A2AFCD753FBE1AAE7FB64
          CD9CA867277AA8E0220866CE9811AF7D02412EA1AB9349343964434375B7DB89
          C0C5CF9F0A4F9753CDE2648D236C7114F27E0E658C23C89D96CAC02DCB1E8176
          D5034F0C530CC3B86123FF26DDC881111E38EA9050F034B839D305EFDBBC02CA
          54A8AE8DB28F4212FC905444865B8F24D0850F3455C2FD4023529FD43153F65D
          DC9F04721788BBEADD2E26F40E51999410552BC2E59CCA0F0AD7ED04674301CD
          25A6A33A52275E1D74674AD2593EE05493EF5E006D9F5B0E7EC69ECA182535CD
          6C27097C1B5BE374B3AE948252A415060AAFE6B7791114820856942CD0183391
          5A8F2A390B3D6D0FEB8407D92A44B4544247EB0EC18E9B60E75E276E33D2224F
          C0D90B2F8F46B0FF1B066559267133E94C4F96FCEC3365B4EE22A2D21B070525
          2C53EABE4AC70D6277D35159A6A272ADEEE6A4B6267904B91728CE17705A12EB
          8BD992D517BC2E029A1507EE11C88DDE7B0414281F6A8FFC04DCED8F48E7E718
          63D065458D53FDAADEBFF95B739866F9ED4C176C441E22F34BB54AFCF879038B
          7FF709D52F5489EA8C0463E37E0AC30421D933FDDB58C9124C860B14D0B5D644
          A5B6799FB3FD13BF82CAC6BD16A3E43E4D1D37594570C6FD9252D6D37E71FE3F
          ED5114D34B69458A6D83B85F5D043FD7CE834D6C16B3A08662950FBAC2A8989C
          1255A8B8FCF2456D70C1C21632F982BE75C13307FEDE6011502F51E1C68D19F8
          FED3BDA0AB83A5F76904CE78CDF34B5F3F6B6EEEDCB949F02B9E8632B9B1AB80
          175EE7706E3A0DADA86E270A17AD3F059E2DA59A014AE368AC990BE3BCC1F372
          154E4964E0B6658F420B5A65DE608B9EC10E0F344F68CD4BCECF602F0BF26CC9
          1ADA50260EBE3B55DBAA08964F155BE06BDD0BE186FD737172DD66650E61B24A
          E07D3B8240978021BEB3C3310ED80540D4BB1412D0CD167B26D3B3CE943F0C6C
          25AAD982B2A57EBA0DF23FDF0EBCE2918517B2470854C05DBFE08AF88533A0ED
          8BCBC98B64C8A689535A33E7C437B1A3F277B333530854B8BDF4CA1A7E77F528
          D8822067D1C287EC2C8DFAB94CD1C55D5642C093118787D8C9CA736C793A0235
          A50251EF58B1217FA678A8D5036324AFDFFF8D433B64C1322E19829BC9F1B417
          78EFE3AEB77F6D1CFC5A140DF6FA5AD212723C7C715C9B24AFCB49FCBF4C84BA
          47043A10CA5DEE96D5F91757D5D4D1543347EB981B7DCB80F4DAD9742BD4EEBB
          7A889974F418725951CD1C53F2DDBFEE2C56F7986D68CD4546B92C5DDFD7D256
          FFA26B3EECE9D3D349FC3B09B3468141022AEC4D38FC814637EB6D1C74BE2C66
          68381D46A5E7E777F9FB7EF017D52FD6126A226AD5695DC6635671CC4E67207D
          42DE4BAE2CA5440DE2D40727878F7383B61AFEA09E8E824A574C541445F00C32
          33B38A969781BAC4C5F352F0A6A35A6056128D537FF84BABA88FDCB8290BDF45
          6B8EEAE5EA5C96268A096AACEABFF7D869F977AE9C66F8652FD20072E1E03024
          F02B70188C8200986D78FB8693E19A7DF37025C64D19185933D7D0B34E12FFC1
          932BEF8115F11CD4D960C25B2425B9AA16299376C42B99807941902F29450C45
          4C78D548406E302A394926ABD4F07AFF8D40F7EDBDF3EB357DA374EF104C0F4D
          87F109001D09F6C3CD7A210F021C0050280B738EE886F3C5DD92046E821D0E68
          841940B2853DD315CFDD5E86E26F7741F98E9E40DEE0CE56107A6297CC84E4DB
          E6511B41CABA9CCA18A5A682D75101B3F427E5D55A05AC9887AAD842D89A47A0
          A323893F4AE3A6A49DA1C0506A7FD8D430AB81ABE420C96E515E1573C0B0F07B
          A20DB2B94BF86D097C512A3D78B9F4C7FBDF34EA2CF0CC04D5AC895A7FC1EF7B
          42E599E792324346D1C364155EAF751041128A16AE3703DFF594F6E5596DE6B9
          69A9390BDED43A67AA097E760B54EFF90608BB02E310A2043573E4878B81935F
          97ECDF775387A525BDD1357364CDE5AB85AE0F5F589CF9FF2E31BCFE02654B36
          826C48783E566D6AC8CF4A6778AC4C6A543859548DE87675FBFE6AFF6F1E84FE
          1B1E3679CD4DAA49CB182F76275CE6F9B6929D7E51C66D39259FF66B10A3A242
          D28E1F51E6FBDFD22FF506201E31C025715CAE3F878CA29175472ECC2B96B4C1
          5BF127E4A2A486AA7FDC3A00DF7AB20722432047D1A5760439E3BDCB3BBC772C
          6B67BE4774FD071C5EFD9E87340B9A984FAEDEB700FE71EBB1E3C5E4C23176CD
          1C02D177E63F079F98B9152D5DB571B164C35AA65B656FEF3AE099ADE06EBB5B
          B2111185ABDA753C184B2E06B5F338E28CC52FCA165DA3CA8EC26C50C7D3E153
          BB96C0F7D1C29396DDE87E78EA9100BAA9AC999BCC9870BB1B2A263F5FDC8380
          B767221D0E460EBD7E2F1F55BD9AA229DCD9561A0CE03353017D5E0C78D9A342
          D9D06539555C93AD0850EAC3ECE4F2536889A135878A78AD7009BFD54D40995C
          9634EFF1FA67E9BEA47DD17A34B6D020915640D5BF88A069FC41B958CF426B8A
          2428656CBE86DF1E576535159B2A0BF4FFC6E44658279A00DC5CA0458B3CB3BE
          EAF73C60F14A6F8C6956C0A6368AA880516355848154565F70A9CA8C441A850A
          65C5559ADD829AC6551FFC31B85BEF1F8FFE6C88BB959CA406CBECBA7A8667F7
          1B1D8AD1A466CEF31DAD25D6BFE4C67F062D114D23F884DDE5C33116E179B339
          188F114326AB28BAAA2A49AB92B9FE01B7E7A777B1CA0B7BE36A228273A4A863
          F569431BC351E37EFFDC7FD88B5685DF2EFC20A98C0ECD06D699FBB8F12EB2EC
          9268D911871629138324C31EC11FA505C58DC18B13B07553781448DA0EF6104A
          945D3F79E2B4B8F8EE59B3A54798924E98A09E45D207E74BEF687D25408A6FAE
          8821D0092DDB2927542090BB6ADF7C78EFE61575D0187729C6AE99E30A2CB14A
          B0F6F8FB515DE630C47D542779D72305AFFB3151BDEF0708666EE016AF7F840C
          3B665A60AE7C33CACA3371FFC5A91348482812BAB0879E199FD1C39FA74A69F8
          BB8D27C0D6722228331DB6B0871FE88E8435478384FC84BA1D5083D6C5622B9C
          23EE9B6C27F2708441696AE963A37547F70CD40C34EA84CB83BABCC0753B55DA
          99A981D7DA076D853F2A171271B38947A7768E78A8B4506CF63CC991285D0CE1
          F335269534B614A1CFE514E0951AE8FA1F955747AB108D5352CA4AF16C699578
          3489739281A9298198CA11D65A3532EA8741EDFF8D6511F49EE4CEB4408FB9C2
          CEE779DF3AE1F73E1E64FC2A8D9E3F32F26CC122AD056DF6050E8BCD209725CD
          CB502CA571A8065A73DBA17AC7BF0453D8DCA931E4B2C29DADB540A9F86C22DF
          7D5D47AB96F0A3A38004058D5FB6B38BFFF4293BB1725EDCEBC9130A34CA80F1
          09CF478FD01539685935F98CA49A53E311CF2FD6CA850737885D57FE56E78E9F
          66AA32565634F32B4A71FA45D942CB19F9A8971B2C7E67D48EFD2AF515FD3FD2
          5FAD758A818442731F8C6AFD195C990B3B225352630C869A86430441AD8520E4
          8767CD81E33A2CE6A381A80ACDAEA9683A0B61178C122F1A811ED95E6B63BAAF
          6BBAD0A2BA502D9F91E527AF3FAA05D18B1D94EC71D5BE797590F30F047263D7
          CC21A8C5F0BB8FADB81796464B8D71391A4954D0AAA0A86EE5D62F80DFBF8521
          C8858C56E1B925CDA0221CF0D59676308E7D13E88B2E08AC3BDF8BD6C39E2437
          87D87B80AC3B0F7AEC085CD53317AEDCB1342843A8BFC39100BA78FD010F0763
          7E38C24CA809812B01DD72B101CE100F8D5757379111B68D0FB55BD1F0E7A9AA
          970B872C27D8008B8BF72867525C8DA1655ABC94FFD96E8501E25F08F939436D
          9F34C2D02A0B1B44D2906D86884D651D5BA13EC656A689F2C812D5D2C5E2762D
          09255472D5ECA49FEED00E9A63DA5761F242A368F6EB733DD27AF8DF32E8E0A7
          5025D698162DF1F2AE8AB7E77E0DAAFD115014293804F75DC5485594B917288A
          D9DA029CA816A1B9B22259601250BDF73BE06E7F68BC0494A19AB90878DE80D9
          B7ED3F66188AC9DB2413E588AB52CD5CFBDFADCECFF9D2651ACF951368AF908B
          ABB10FD95884E7071AA13531964B8F9255A24C65A63A2D551AB8E95177EB477E
          A6A99649964833EE59D9FA0721A56FEE7BF6784CE5ED8207ED76888F0C273BF3
          636D8D73837A06FED2A57D179612F930BE4B350C6D24076A9E72C5B276F1A195
          D31977042AA13C9F3573B5016340C15B471450EA317D299CA944DC35B961B7DA
          AD2CE5C6A997A32560D04472EAF77D51896C14F3BABE6F165CBEE1A4610031CE
          18BB66CED3E10333B6C18F163E0DBEAF354E0665C252E947A921C189F6510C46
          AB53724DD1BAAB3054BCB4B92781B1F435A0A4E7927BD3906DA486BC6183B750
          D10A454B1CBEBDFB68F8E4B66303AB14FF7E24808E5E2A143E876384DC68136E
          774314592D90870BF95D28416B63B1A54C668496521863381401E51604277D1D
          1C575AAB9CDC42AD8810DC0A97F0DB9CE9D0E77844DEDB50E7547F96D0C26DE4
          8DCBAA28B7329054FFA2BC2A8EA01FC5F7AF9DCBEFB78F862D31B40C87D7C71C
          F9111EB8706E69F3FB30A45484165E6301E961CEDD1E7986A7FCCCD569EA440C
          B42895649518B19CF88E4C01140A8A793582C087CA0EF7465AF3C39E9328CDEC
          67AE07E7E93FC0385E7B12FCADF57915681BE57AFE38BD5A7836D6A1C647D7CC
          F19AEBE91DC9FE631EF8AA0F3527C52B760D055EA3FB298CF31CECC484D6DD78
          C92A68E5B218E27861FB27AFF50BF7AE3799A1856EB751D743ABAE30FDD5D962
          CB69F9B85740615C6FE68A1F2EA0842DBECFF847D8C866E143DB94F61AB892C3
          0CC2A173C5EBBF23E0A285310A8E6459115F5935934598E6E6D56266AFD543C9
          9F498D135B4DF31EF7F8EF2E67A2AC73AD3CA734D334B80C43189C0D16C88756
          E541792FA85EEECB3B96C1953BD112D20EA87F8FAC991B22A046FC4D22B83C70
          DC0370AC5568B4E608B8E3CC4C159C4DB78A7A8213C99D148CAD18805C530105
          043C97CA478D9597C9F89D740A7337CCA41FE5A923E0BEA97F866455A10CCD23
          017461FED6E1B2E86813F2C9DE8F92525EC7FF02D350F13D8838DD9118290D9C
          E80E989BBF5559233325F11DEC656263FE0C713F1E07D3F189D66378317B63ED
          8A7407E079CEABE018F7B1D5DA06B658C6E666C3DEC285FCAF31016A45BCB462
          738D5A25093912DE744A43200BDD99B4E7681F28F5CF1D90EDFC900D3CAD4C0B
          5A990977CA75BD607D193171B246854A95D99620DB918E51F42F824EEBCFDF08
          B5C7AF1F16331931866AE688BBAA0D6DC7BFA5B3FB6F6E4BE9ED5E7CA4CB52F8
          9C31856517FEEC83D5C4490BA25EB6A453D668C347C66B643CE9D985F1DBB744
          10DC22DE4031B7E1B5DF06B4325B98AA34A326430B54A9259697335D6FE835FC
          0A2A8862D053401D49B35B59077CC6B8026F12A17657F49D46EEC51078074375
          547BA732C65F333F0D1F38AE83C554CDCFB352DFDED83E8509D65A8FC51D901C
          9E131F0D837CC28D796D764B3CEA47E21EF3434D3CB46CAB3049A54102DDCE25
          70E58E03B29FD0086BE6680CEF598716DC7BD09ABBFAA8671AB32C6924988A32
          28BBD5AEDEF3754A70D27027857DF70EF4DE5CDE43487792505B3A217AE63F83
          929A09C2B3D1641421D563151A94588A37F6DA51387FFD694704E80E98E63F85
          23147293BE175971AF47A06B45E5F7650274A60ABCBD0A66FE26E522AD08F1B8
          092EE592974F154F5497888DA88D526570448CD0401BDADBB33E0D01721B9BCB
          EE606BD21A7854BA5ABE44DC46E4D79A077A3F1CE67A9EF1DE1786E28A4D1B44
          8E188D75358DF18D439A1045FC98F6BA5F80BBE33EC9A2A2A4668376D479D236
          D0679E24157841492253770E433283D05D1F0AFF301EDC54E3671AE2563507E5
          5B3F8BFF1D18CF9A1B563357DB17E9EFBEAE53C66B9832AACF1CD5CC555B2F3E
          31BBE0BFDFAFFA7BB24994378D547C23E33C63BD4F9DD47AC2D47A349A974D28
          2C053EAF6DFDE07FDBA5C7B79A8A65B635BD86A0DC12D637FF43BB9962F8ED62
          88F19DCA0BFAA92DF9F7F557C1EFD4D578986A8DF78ED4E75FAA0A7E506FC7E7
          244DFB7DC774986BE624757A7B5B78D96D89ED2E134A3B1B640C9DF0FAA25DEE
          958915A7ABDAA1A69D16AA458CF0A16CC350999B706844939D034C38EE9933A0
          CF8934CB5C0C07C98E1434AB99F33438299183C756DE0B9C2BC087B68329A9C1
          35A3587DE8C7E06E91094E236B7927F2DE819BD6C7F7D34D3016BD12CC956F93
          97109E1395440A2348414232EA23555E70B8E274134E40193928F3720DBF17E6
          C1EE0335677D298D16B2EAF640D7C01DCAB9511BCC28655EE2BB38D3A0AFBC5C
          3CEF1D2DB6526B2D043C5D9385C843ECDF390435BB0A86FE47E562A2024BF8A8
          DA9D0A8F5556F2A7E31E4433417B9897C4A04D1F6A9524CC269AD8D448024B82
          288C6F4C5A039EF0831A28061FF801389BEE0FAC2451B7AB5405B4CE05A02F79
          2D68334F083C56DE945B788D0CF563BF5F1DE4AA777D03FC815D816DD17C0CD1
          7C9174B620B7F3A7334AD59D91762DEE9B235D9628E9F07FBC6FD12F3FECC58E
          9993F0AB36BD79A370084173BCB9A7B5A589A17D4A42969E6E22AEE7B15CB411
          351935FA7FF36061E7E7AF53D554AC596C10E522F8AA29FAE77FA0DB178C7708
          77B0AE4F765EC78910BDAC05DEABBF0F1C9C3075F423A92E4AFAA8A650B354EF
          53A77645E2AAD24265040A57CBFD6636D717E96F57857A209007182B6946BA33
          FD42D24DD63AAAED96C9F524825DA8A2709884AB9E368A8BB73BEAC9B3610FB5
          E0690E7474ED0E18B2C2866AE610D4E28A0F372D791CD6B4F4A135A7365E3A89
          8A54D1CFEEF02BB77F1EFFEA47F0560763C5878A4E15DFA80042F1D58EB9A02F
          C533346325045AA36C586D4343680C4DE623067461DCEC609AAC4E744CB89CA0
          D9A07D3D4BEC858BC45F2753387EA407CD2B819D31002DA587D949B09BCDB214
          F075E2AE54C1AFCA563C7C1D4F40C1E3A0535D5D1890F735A8980FB155EC6976
          1C5EC3656928145FC36F8B9808807E40EAFC5219B47728AE1306C127BB8949B0
          91900D09B8C34EF0531E7B9440F71002DDE6FB472576C846A0F8E4DAF485601C
          7F1902DE2920ECDC545A77071E68658A6A06AAF77E17FCCCAEF1924F6804CA45
          503367E7D6A6FAF7DDD21ED7D35E2A681ED6F8E28CF9F972BEE5C295A5A3FEE3
          3D8697AB50D1F6C89AB930CE33568C86D6A5919F365CB7281CD8BA0B9B1EF78D
          F89CA6C62389DE6BEE1BD8FDE5DF333565D1338C041BC987A920D0CDFB60B70F
          C3816ED08AA187785859089FD3DF8693E20C43A58AEBCB7282371CDD0A1F3B75
          8602558FA8BE740514BFA6D8FDDDD65EB2C0526C74D6479DB74C34B0A1304ADA
          1CB393B9A77855049AC2CC4A1724DDB8DCD778ED4925AB50FE902D5458B8EE5C
          D8EB9A63015D6885D1185E33E71AF0A1599BE1878B9E02CF19D6C83A2EDB4CB9
          D54AF9B6CF8128F7297597E5584DA82732422F854C56C11F612E5F0391D3DE8F
          E7A7A004E408F2F90E6DF7820932A384DA358D61BED52918A17B9416F8A05E90
          E8C066897DB20BF9CBC475D938622AB80901AAB70366571F554E30F2908C6AE0
          290E185E0B0C944F114F38B3C53EA143AD9E3FCEF51EE8E2B72AAF4CF954CA8E
          6BF24A7EB73F1BF69808F4242C8E3CF95E30420149835CA92F069C4212D88964
          CD1DD4180FE8C2417632B32C308E5E03C6B2D7C9F47E2A9C3D1C8345D2507DE0
          7BE0BE701FFE79DC8F86344FD2F8148E9AD97D4D97EFE6B50EA68E765972DBB5
          230BA667165DFB61A198465A38DEC846BAE3D5CC85826C5497EDFA08B31D0FE4
          6AA13D3B32794A5513D1E4FE9FFD2DB7E3CADF80D1966E67C44E34D21AA5261E
          0AF4CDFF60375AB87E4783EB7230C330C82E63F075FD4D700F2C01EEBB5247B1
          7406AB3BE370D9C25638AE3D4ABDE38632548592DB1BDD6F17CC423BAA9EA36B
          0D99B0F151AA1AD7C25833FD4EF5991FC5EF8ED5198511AF1B7EA618F123E536
          3B6DA6DD740AFFAED75F4B622F04FBBB79635208C893FF71DBB170F5BEF9CD5A
          F1D05AB540B39A395491D7A4FBE0CFCB1E059D055D1BEA830CDF28331205FBF9
          1B85FDD875E4B20C33BC27D2AC7A229FA1DE6A39D02D113DF753A0B62EA49EC4
          01535543C8EA48933AD727433E146DC6A9B2EEE2F5EBBDA88403023802BA9908
          782F23F76538342A4C55C189542056795459E96F8379517C0F04319FB83C6B1D
          D05F9E2B76FB1467A75645DBD8BC980D86E5A0A5778C78A174A6782851A7FB7A
          29F5A3230149077E3871ECC18FC68EC521330C5D7B4ADCB413013A39C8A58977
          D6179C0891333E0A94522D5C9AF617D5B17CFC67D34C70B7DC09B5C77E7AA0DB
          34A6FF538FF2D2C0C3A97CDF9D6DADAAE537032BE1976AD9395FF93B7BDADBCE
          B2BCBE02B5D09E4CCDDC44E2AE8D59C4E3CCEAA8320A1D812EB6FF6777E5765E
          F95BC59896EA8026AE4BEE32C79A57EB9BF1E61E0D41AE43D2240583F65CA1F1
          2106B809DF99F67158D2D90155C793DD0D564CB3648AA6E709A33E774C139ADD
          6BF667FBA2FD6904B251F386565831EEC64AA66F88A497A4DE6D817587523A67
          1420A7E70D9FF1A42A1413C67667DA1C6DE936BBC56DB55B122637269CAC4209
          29BFEA9D0DEFD870F2C8849491B154B2CC2B434B0570E3E2C7E0F56D3D231350
          F025D49AA8159CCA5FBF0CA2B4DFC09DD498F93D72CDBDFADC86D45D13B1FAE4
          5E418BBBA4B6CE81D845DFC0CDE78E22257929005D3891B47874A06AF0E20A7C
          A7AC201D053E5C88401730A4BCEC802E1C1105785241DCEF619DE547D849EA5E
          E8B474707562A24360237B82DC9A8609B64AEF19856AF162719B9E162552645F
          4A35734153D27A9C04C6B6323518D2F6E9332161EC78830E71E8169BB2649509
          035D7D9075A7CF5D01C6319782DAB11404C5ED0E4187044A92E199CD50FACBE7
          825488F1816E2801C500AFBA2BDA8FD69CAA98BC3DE0941E7E69B2DECC05D373
          8B7FFB71A25E4A0ACF6FAC990B890BC61262619243160EEC45A0EB98E35C87E4
          C8486F84A526A3CAFE9FDE55DA71E5AF4D737A7B5B135731F3CB6A71FA259942
          EBAA7CCC1D404B76889A9A9E6B482197A46B0628177D07526D889944DDE9D71B
          A436C49289FD0C012BB32BD6ADDA8AD38AD6D9B09BFA32D69628CDAC76D29D4C
          043D7DE80ED4B054E19EE2D77A22FB79CEC8C775AEC7C7486291EE195BB5CB51
          CF92C92A31CF4AE1D3441A985508E8686F0F53E634D5855FF4CC832B369E3892
          DFB231BB79B83BD9D3E16BF3D6C367E76D00CF1D46AE21BB07303351AAFCF58B
          E0753F4B4DA7E8EC4660ECB3D838B7A1021A664B8FA714B9B8C2FDCC8CF1E879
          5782929C411E91615CCA2F15A00BC7107DD6C1250884FDED265C3337DE20A0BB
          58DC51B7E82616A72376A1A1A7518635E4A4B9F64734E8A4C6C86A633FB386EF
          932B844FCDFAB0C0BA73D15AD3ECE7D852E779B6D42C423C1A019B987E297B5A
          B8B23134AB9C27EE738F165BD09A335FAC6B702A47A355415A7A33EB5F661C32
          8D519B244F52B07B42153657C5FF6FEF3BE024ABAABCCF7DA972EA303D33DDD3
          130812060749CA224A3090FC548C2C065074F753575DD8155D5D054557F930A7
          75774DBBE6802B2ABAAE828820489C19188630A12775F754E8EA8AAF5EBADF39
          EFD5AD7E55F5AABA7BA64747F0F843E8EEAAF76EFE9F73EE39FF63BB35B01762
          A589885411ACD2A2783AA0815F24D091504B89BA3274DAEB411DFF2B3CCAB149
          4B998A4019DDA8E2E8B77F02ECC947E67300FA8109E4085472B765D09A1BC8A8
          292B1AC480E234ACFCAAF7BFDC58F61AB4E6F2E54E6BCE4F5C10D83AF00ED2F9
          0E1191CBC7FA3CA72BF292C9521A7B54DBF2D28F1AC6C44C468A685D917FDC41
          60519DDC9AB7EC33986C0DF239D608A160B53ECF715AB463CE85C8B3DE88676B
          973E25F2C4C8C5599E8A4C574A6A7958E26D151570913AF5949928ACA82F9739
          73628E17AE4407B4EDEB8B8660A7E1978CAA5AD5F745A788212589BFEB755F49
          2E4F13ADB952D40EEBA3D59511B4EE9216B3FC0A601BB30A455E1610B84ED97C
          06ECA8C7444580DE75E6B804A36A031E38F1B730AC187E9A2F2FAF530995CC27
          7EED34FEF01FD4422A5BD66BDE03E7AA294D7ED7BE91B9F4FB1CCE85193AF952
          086D7809B1A8B4558439DC804E884804A4C95E8C0B492CDA2589E624EBE628BE
          1D9ECBEF74A330FD2211AD4FEB07D53D3C6C5C9F3BAA4577EFD345F44DB9DDF0
          C28195B8802417B0E28A06A3D1D45CB0017EA66E19B0AB36EB7E9E42913FB6FB
          21983674180D45E1E3473D1312F85D6BE9AA57AB9E7567A8333058BD8F6DE0BB
          D8185185B91A539C571A1BE061FB18FE680A418E36C0E19433478B5DB823020B
          E8E2B0C75844B69DA2A9977FB01B1A9B8B103E7900E22F1993E4212DEC944DC2
          745AF8F32941DE469D636CA005DD2B11B9AF1C08D035FB020E59772B9F06A167
          BE09E4D4381E7F06DD3FC0C1BA33A9906A63CB4F40BFEB1B2045E6FD785B9E1B
          5A7485ED9F596DD8756918C1A03B5AD1720C65209E3BF6FB57E211ACA5B9C369
          2F2E2639BC93B5A7D767C852EA67CD05DDF145A5B0A64C7EE597A5DD1FFD7E38
          34303C10F075867DD3879E5BCC0F9D3B13B2CA30E87B66BB3B954837E2831079
          EED5C092A35ECDDB3911AE5545E6B251562BB93DD1C984CCA5B8AFCDEEDD1AB5
          F388D23A5B415B042D3B1AAF5E679E1BD7A0388A5457EAB54268D69ED166C2F8
          33B1A504B2BCD0FF999255571D6D76A09172861A03297C6BD48656B08AD91C6F
          1710A806DD490F9C050F5493A21A80B84B85AEFE5B1A7C64CDC3F09ED55BC1B2
          DA1637BE436EF04659AFDEFC1E9CFD59A5E9B2547AB4D1656382DEFB52806DAF
          85CF712EB268D1593E8B2E093EF6A9C315E848444D2A683678BEC34914F05BB2
          6002BAA31BC0B9BDD8F9999B57272BCD2C5A04A50A82918E078F8A18F1F97D8F
          C264A30E3AAED9AF4D6D73C95D5D219793B0D010AC5685E3F0AA656BC0703CE0
          D2F0BBDBF50ADC98DD09AD2AD55633140FBF7BC1F223E087EBCF86F0D2821D49
          54062B416F294246B75DD58DE3EA2C873430E81E0F2790CD1CFC6B964C44CE1C
          0D42708002157F8E2B7263CB6C3D7BD583604DD5BD9A4BF8FFEA9A188FBF6C0C
          9297AC51F0E710D7DDD2304D76FF79DF9B82B93B64DAE88B52A20E18E844B76C
          D70A0165F5E9105AFF72970289370E220595AC394B87DACFDF05BC56840590FE
          B4DC56B40C5123CBEEFCDC986CEBF25050100AB71D5D49C7F2C77CF7EF414E44
          D2F8736710CA425850FC1C96419F9B2F2D2128B54096426AB2BE7DBAB4E545FF
          E2C8B17050100A8E3723BB29B7E66FF75A4CB5287F4EF8E3A80F6DEE72B2BC23
          CFF93B50D79DD59C93B6E170EF92A90290CD9CC2BEC814D7657D90B57F86398C
          CF8E55575412663C6E49D6426B52A2F1C5C214D85AD48AF5825664A664C725CE
          C43D7377023CE3D48E52DC8C56071B192D6A4752D875D13711AC525224DBB966
          CF51702D258ECB963F57B5BDFF8E0463E11ADC7DC21DB012AD3A5F3155975F14
          95A96263E3B7A1F1E07F53008A08C6E9355FBE3BBF40E907745E7E9D0D396960
          9CC7CE73EFE8E4E6FA68B9CC0F67A0F30F5C08FAD7AE1324C94BE2B2144240B7
          42AAC045D64D60E09EFEEAF436285926C46505BE9B9D80BB4A59082390551A35
          D79AF38A39F739CD08ACEC8E339A004EEEE13B426BEFA2656BE1C613CE414065
          60394B0A76AED522534E8BBB58482992ED66F9119AC0C32531DC9F3347E01B94
          2E22B1901431B7576BD36FBE873B25338A969DF0ED3BDC74AABC66D7E22F1D83
          C4ABC621747C2AE4345081B629FC635E2B8D9E21F8F81CF093D72EA4F1070974
          42C845260FAD046DFD4B405DF31C17015D0B6F91D61DD5FA32367F1FF47BBFB5
          D0F6B442CAE5281885DBD3D9A91F0F87B4116330608574025DA609747E0B6521
          B97300FE04E1F6C39F364B3F460DD6FC7C67DA4952194A5A3BFFE1EBB5DCF77F
          1FC7B605514F9135571E3CB3541A7E413E6ECDB6A8BF003AEFE648871D5805D1
          177CB8E9A1697B542B4251E2526D32B2BF38ABCD76E6CC21F8388D9819CDAFAA
          8EAA8EE4841078FC562CAD3BADD94FE1CA6C8F0C2592082EA99C713D172A98FB
          43794D427BA619AC0281FD63B61B6C15B762D6586D651CDF99F0F166EA8A6CCD
          DC52493BE7DE7F3605A4F8D309DA827028D2F2AC8169B875FD1DA89BB7DDCDB9
          E9045C2FD56ABFB81A15800A299BFDEE648302863AA55F72B9ABD4A0D2518D3C
          FB6F415D7B362A727551A1A5657DFE39001D094D7A18445EE31C97A17F312C55
          4DB796C4D528FC6EF25770E3639F0445526177B53877C746BCABC20A63872E32
          0EAC065CE882DDF3D00224B05BF2C00409E60E0D31AE8793F873E6F23D3E1365
          51C5CA7FE021A3FCBD5D517948CB04F4A2EE54ACB29450CCE8B92354D95D46ED
          218400283812E70B65162E1CA1D92E68225828E101DD63B71D14D0B9627BB977
          DAFA178076F4792ECB8A1B99B9C03D4C519676762BD47F7B031E40D585587324
          2DBA27043A3D7BCB407EFFCD43E1D048632010E82CA7E1BA2E7F701548612DC9
          1DA7B3B0EA7C40D539EEC2DA109E1A5A0B21E87F5FD3797086E4582852F8E97D
          C55DD77CCF732932D61DDA6F33139129BBE6ADFBD0FA3329774EB0B174E6F381
          832B267A165A736BCFE8A4726BDD2523C8D986646577C62768DD74E5CC21D0E5
          46AB2B8C84152797A55F49A7CFFBD32778B33F2279BEED7DF8DC3069AABADCA8
          E7B5222FAB9518FE8C169E9B23DBA91D5323B8C5AC0ABEB7345E1D0B3BCCCE70
          F04C324A2B9254A370C1C3A74B3FCFAD1846AB4EB81BDB81DE91E1E7C7DD0DE7
          65A63BAB13A4DC48CBFA6CA376F35544D125E308FA93CC83E698F6761182838F
          FA51C4B94A0DCE535ECA8C43ECFC0F79EB8BBB353E8BFEF7FDB9009D101A743F
          43BD389C3BB59D83960482DCED53BF81CF6FBCD6BD3B73414DFA13E5D3990DB8
          68642D7C1FC12E7C68C0EE7015BFCB82C02548EB53E5B4AACE7E65472D77CD43
          B2B2223C842B21F82EC04D03E61504BC6AEC82954EFAFF1E09EA785473EA36BD
          67BE6095D69D0B789AEDFCFE4352805021AADF763D587B36F6631C5994901D2A
          2507217CDA1B405EF1742FB1CD9EE72A9BDA826BB87EDB27C1DA7D7FBF1A73ED
          6336771746550A1AA58D89DCBEEF8D686AC61C0AFC3C471BCEB07263EF7A89B5
          EC75CF09D9652AFD0C9D91BB2220056061FB56DCB991F40348FA5CBBE5413D97
          18BDABB2F5959F30EB8FEE1B90D3B148500156AB2C17D6FCCDA41E59531F406B
          2ED23496BBEFFAF0BF9435A741F8F4B77AAF6CBF5670DD74CDBC80E2DEE874A3
          A29687D19AF36BC364595596E9C3B343FA40CC922C01E624FE1A6F9D169CF85C
          5B32745334A2E4961DD52C840A8D7CB8201BCC482A5CE915AC229992594B5889
          C2AAEACAB003CE80182E255C9D79FB6327353EBBEBE865A01ADDC4CD24086EF7
          6EF82D9C4C95C3DB812E8DE7649D80AEFAD3AB28FE733E8B4EF4ADEDAE50B411
          7A53C479D4701C724CD6CCF0B3DF01F2CA93895D28DD7C469B42F0E706747F14
          8991253775AB0B72EE12960E03669436B083A576631EBCC892576B7969D7136D
          3E3A14C9D71E042C8CA952D4DC5DD3B3EFBCDFB6F6D5D3AECB92F7DD502406AF
          59651692F5A18F3C1D62E7AD90EC92196E9AEBFDEE48681309469F4EC68DEE97
          519EDABE8D50BFE5A34B06722D71BC6015ED98E742E8C44B408A0E35ADBB1EEB
          42D6C0294D41F5A757F6E0C7EF3B0791E6E899B815B23B3E372ED9356998293C
          30BCDDAEE8C5A1979F5E5DF3B14B9955AC92E5470742A7BB5744B72E96E7B1DF
          DC8A1A7BFE4188CBF1303C7EC5172BB3B73E1C456B33130072CCD1A56A627DAD
          B8E2E2E9885D8781E61A0A0C40A1889CF88B6E00161B268BC5FF9CD69D96E228
          8D5CB8909F0A4F0FA85CF587D453008A297329BBA6324E35C7A34D97A5785F10
          534B673FAD669B3AAF185CAE4D0455091140DF15DB63EB8A4E4C3649698E01C9
          2F524332D0AA1B2DA58D74CA924CD7E5A7680DF37D3B8F2D7F78C7F169504C09
          3A13C4DD7120A0BB1D816EA6BBDE1C63162A5535FDF75F0273DBEF167247E79F
          5B5185C186B9F2614E8FCF97D09A2BBB51AF7FF577E0D48B8263B4EDACF85352
          801DB61253C892BB053EBFF93A6F3F488751FE1C82DD0508763F5C7FCEA10850
          598430CF61126B5E05105DF474110F505CF09AB25460478B960E0D41B914E8D6
          90331A9F7EDB7D8DEA2F2643F28036D06499F735D49540EA246E3A3516964BF1
          978E39C9578F8394D16208767458F64AA9A0360D34DB4240D7C755CE5C70A9DF
          722D58935B971EE844C7B00552240AEA91CF03F5A817008B0C045877CDF23B1B
          BF0DC6A61B6191443F73C123CCBDC8CD4F7C7995619594214973825C88AE76CE
          4D3BBFF2EDE7DB236F7A9E86565D0A47BB1830AE7E2AB6A0795AACB4BBD7C87D
          1852E3C55B37CF3EF1B62FA1A5121D662145E96441E1161A582ACF1E79E56EEE
          38CE1037DC82C924EDA4C5E0050745D07A50573FAB13E45A77C9E4B2AC2AB5FC
          9ED83EB95999A0FD7DC00BC3FA607DC048276DE6F8B97817737F09D0BBD2B8EB
          CEC4765825B5D2980EEFA7EAE474CFD595C3C6DD4C78293B5A5BE184EDD030FE
          2C2BAAE17C64F7D18DF76E3F2104726FA0BBED843BE039C97C27D0B9A4D6A8E4
          CDD8F9275CFE546ED4E466D42501F87C8796B0DE4599AD5E9F31682D02539DD8
          85A848C697CBE098C9E678B4DA492057E7EC2F40E717BA93FBEDE4ADF085CD1F
          F2A8FB0ED5E974306219EE9DDD8F0E4D80CABCE2829B6983932F43FD47F778BF
          5465A8FDDBAF21F19E1743F8A5CF045E3DE89C2FDA5C82B12238678EA30D9954
          C2A5AFEFACCE7CEA518680D5196E2E128FE91020800AB21C28EFA366E78C99D4
          9BD6F181771F2B3B6537D2ACD702162C172459E8936348A578ACC90770A37F6C
          B1C0B278E15E04A0140941E8D42B405D77361E2EBED435045C93CAEFDCFF8385
          BA2CFDD256B0178D99D9E2FD89CAF44DCBE24AD2EA5D4B8CC6B566CC8C5DFD62
          18B9ECACB06358716E5835548A82C6D67F2775200752AF9CB9145A97FAE617FE
          73C3A9DA2925198F775973DCBD9B2B8EBE7A7F35BAA696426B2EDE0C40E9BEEB
          C3E3535E711C44CEFA270FF1DA1F35179D0AACBC3BB6B75A93EB1480D2963347
          E90371335618AF8C472CD9750B8AE02AE11A5F742503F0ACBB4AC0F708EC641B
          7177477C97E430670881B7D3B26316B36ACBF56533038D0CD186C515C5E4DFCD
          8EDAAFDE7A2A51730A4BAB3DA7D656E0BCC149F8F9F17775A61634EFB37995A9
          31DDCA6E81FAAD1F055ED795A6652772120F96022C8F53D0083FEBCD6ED42B2A
          7734F66DF7C1A865400341EEC55B4FF90BD009490890DB742DD8EE7DC6610872
          425093BCC00D5039174264D91DEA3B3BC2FC9042FA3118B76E81EAE7FF07AC1D
          D360E5F7B73E421760DAFAA321F3832B9B5CF907B5AE44CE1CB930829248717A
          58DCA9DBFAE42BEFB4EC6C23C16272D2A7A90BF74EBEF96FA5F9BC40BA2AA762
          E513AF58650C7E603DA3884DE81D75BA08A00B41EDD71F44B07BE48FB7943C3F
          3B84CF780B68479CE3A61170548C0874299FC92EEC3890B6F8EF4999CB16E7B0
          DCAEAF8D4AC4732929BC173831348FAAB8384B9163479DB59FB84C09AF1B4958
          7937B030A8DA3B1DFAC2BAEBC784D1F51EF034F82CB4070845954C4CD9FDF11F
          95F6DDF0334D1BC90C7A35F9DABFEB34A446ECC85A6EF49269AFEE1CB48A2453
          43E7488B696C4349885D78836B1D777091B6EE6F11580CB4E6727B627B931297
          FD69146ECE1C025F6E7565DC51B89420CA2F98B370E6E3FE9C0F187A913747F1
          9DB03F9CAB65C3F988EA2899AE31608E9D31D2FBD1CA246ECC4145B2E1915A82
          9FB8F14C667853D19DC4EF487064A402F76CF81DA465B3D3AAA3F1C0FDC6CB4C
          8D1BD6FE87C078F0DB604D3DC610C6A37864911BF3A0941A6E4151597634449E
          F77E523A42CD9A746D01286899C28FF68FC1C55B4EFB0BD0910890FBFC26BA93
          638797BBB297985E34E60F9E7E88035428317E200EE6A60928BDEB9B606C7E14
          A183D60CA5A4CD2D6E4E34D8AB97C3E02D1F403BEAA0825FFD39739D8757EB33
          524C91D19AAB15AEDFA248198D02503A35613AA43A531102096511E866122F5F
          551FBCC605BA18F4CEC514AE4B6AD37EE8E186A194026BEFBD9E3527EACAFFB1
          C4A501D640193BC12B5FB26203D87BEF41D0BDAED9B8037AAA9F6A8BACBA99D9
          4DF1DAD48F96459584DD9FB39273C32ED5CBD113C6F5551F7805C4D68F47D0DA
          8B39BA4155C683C639D49CA35E21F2DDEF08C899639A92B2CBF5D9CDE75FE380
          CE07A590160AB0E63837596EECD22933BC4A1F748C96B5D19D3387F0113AE995
          10DAF032B49EBBB24BBC9C398EC6A164E727627B5117B0063A069BACB9E2B2FA
          4875481F48A035E7E7F615EBAA575F45A5F2F9EE28E96F65684FB6C71DCC28AA
          B33C11DB0396640D35A331E7DCB1380CA8AFE4D6545691936F5866B654B055FB
          999B9E0D4FD46368D539C1CC2568D59D9E2CC04FD0AA1BEC063B520ABD92394A
          A84AB5181BF77D15CC6DB7A3755756F0F848608B175285A2B38F16D17D8196B4
          63177E8CA29A192A1D69982BBAEC0A5518FFF9CC08BCEC9153FFE2BA24A1C093
          DB9B96DC210A3CF147882EED60B7C0EEDC26D82DA11B93ACB8A8064C95A17CFD
          4D50FFDEEDA891EDC7DD26D666C0175052FFFA66089F7722F0DA01F3690BD2E6
          5E918D88BC2CCEAB5675F2B5773976AE91615A5B95E8EE82907312443FE5E0B3
          F2C937AE3333EF385A75CA6E5250AFD24E221885167830072895C4322A50BFFD
          9360EF7FEC4FE318E0CD12408A02EAAA672090E7C1CE6F5F6C108A5FFC073143
          8DDCE436CBEFFBDE72BBB62B9C96A34EDCBDBD0B16E6C25DC3AE39A6554E9E7E
          B43D7AD58BA4D8294724EC42456EE6D935BABE33573770BE28CBEEB9662C2569
          B2B9E7133FA94DFFFBAFE2CA402215C0A5C76C5D2A8F5C982FA54F2EC5EC6A1B
          9F657BAE6433672E72D67BF0604D765A736D3973B9707E361B2A0C295CF68389
          9B33973412B9D1DA4ACD924C0254B1B6FDD47641F79DA2A2067D67A196D05C9D
          384F62C495B93D3E5137642383165E5B4E1A394254472D20D051ADA1611C0645
          522CEB92474EB1BE931D0B816CF5AE2661A9707A2A0F371D77370C693AD8F8B3
          AF7182AF52261A38A6C64C676607D4EFFC34AEC77DF82B27827F11747B0B8DBE
          2DF2065443275E0CA1135F454A47DC374EAE10C8DD5B49C3191BCF74F39F890F
          E3290D741478F2DBC95FC3171EFAF0A10A3CA183D5EF8AA1CDB3A042880B16D3
          80F347D6B8012A91A50A5021904B46C0BCE709A87EE617A0FFE65E00F77EBEFF
          7A74B06B89AB5E0E89AB2F06275B3E10EBC1CF48DFCB35A848712554FAE644B5
          F0912D4C4AA9C3D0BE517A510A059109336E3A1529A1CEAEF8D6E920A7D518B7
          7A2691FBF3BF68C307223995BDD1EFF9773036FE6CBEB2370CE62A803B708872
          185D864F090E06E484F893761902B8CE2D5698BC7119D4B6455352C4998FEDC4
          D5C6AD62AD125A3D541D7EF51930F892D334251D8B3B0D93FA1E44A0ED7739B7
          BA04BEE859F040696EBE380FCBA968A474C7D699C72EF994AA0C2583EEBD2800
          C550D3566EFC4DFB24E08EBF827857CE1CB52AFAFCF783BCFC84E6DD671BA763
          2B67AE211BD93DB1BD44AF95EC0840C1D385E757575699C43789A057F5B5B917
          534C50E2BBBF1E5FBF71EEB4BE88545AD9119FA818929996DB5DAA02E8F20874
          9439B8CC0D48514CEB33936B67DFF1F8899926D0F5E6A344CB6E7D7C06DE35BA
          1D5E3BB2AB13EC48346FEDE0284B2A8DAF63EDFE03180FFF372A83BB24DC27D4
          9E5EAC2EFE7E352800454A0CF3C839EF0716C9A8F8A438F85C96742FC79903AF
          7DF464F85676AC556EE8290B745EE0C92DF085CDD71DAAC0133FE3B75F0495D4
          4195106A13CB70EFEC2840453B58CBAE0572DB60E6F2CF82335B70F9581726A8
          39854290FAFC1B2174EE7AE0F54557BA11964310EBBC10D505BA6F4D5410E840
          4ABA40D75D38738E90598C73678833054C105B5B6EE8BA13ECE859CB4244FE0C
          BD03518435479B3D901E8D69713077DC06FA5D5FF0E8DF82815E6EF65354CAF6
          B3FA8BF4863F4E31BAC549A7E54129D735CE5971F2FB23BCF244342687ED246E
          23A96F7A07A59D19B6EEE846495B9E36575FF7D72C79F6F151A7AC87B965D7F0
          EF41AC33A43288EAE24231A079ED04478921749A53C5F2A3AFF9B469E52A0352
          4C8B04B5C731A4C2C845053D7DF26CC62A41D49733D756BF8E2C6365F404889C
          FD5EF76EBCE31C6EE6CC5182262F4E46A7CCAA5223D7605B9F1DC62B49233EBB
          B2BE3C6A33B7B99D397341D28F3124D67C77F018FB6AE689F7F8802EC8A2E38A
          A36411E888649E222F2545318C6B268ECD5EBBF3384A31F003633033106D1D47
          824F1FB909DE3EF638E28F82DB4BEA6C17BD97F66A9D8512BA53DA8B60F74337
          0581DBB68A6B2709C1C12A22F2B3806AA8113DEFBDA0AC3891940EDC93ACC5A5
          2A3575A0D76F7B3A7C636A755BA9A1A724D045D092BB73AA79277768024FFC41
          0B9DE24FFCEC590871D1826077FEF06AF8D1D39F77E0012A04726904B9BB10E4
          AE40909B295388C9A21EE1E0D9137BE37990BAFE7270A666176BD509D762D71D
          894F643CCE62940737F99ABBB8B5B71E93924ABAB92D7A25D8D273E21DCF61BC
          6E1722670ED5873F7E92C41BB6B89B0B7AA71F8045804BFBC3541CB7893B40FF
          DDE7BC4704B38E849A7DD45D72E976771F555EF6D7663C90EA1D875AB4E63808
          0B892C3B036C365BDF1331F67C63395DDC26E5981D09988FB6E1A2BF39865561
          AA5C499E79ACB3F6D36F502489C59DAA4E56362DBC20B017762987E0794AC8F1
          30DF75C38D957D9FF969243CB26CA0EB5E0E4F7CAB2C5733A7958B639766C3FA
          640B68026BE091451C7DC13F8332725C673A418BD51F81ADB13F9CCB1742C501
          994B9D3973165A4B082263848771EE295FF3E5CCCD476CDD8FD43AC8F28A2B8E
          6C6D4B4CE8866C0C5315047F1B117CCDE1C6D0FE213D8340ECB86E5845722A9B
          ABC9E2C99BCF904D2E613BB93824EDE6B30322A1990B76EF1B7F14FE66F92E18
          0B573B233249E8399EC229C955A6252CF3F15F80B1E52760E7F7127B10291DC2
          452BE6DA555AB901A6B6FE02089DF8D7A448469B6D6A5D6F285A03AEDD711C5C
          B3633DCE4EDB5C694F39A05324C55D09EFFDFD9B6057659B5B776489653E6675
          FFE768D1D0442DCD80519EDDB235F0C3A73F1FC2B28C8B6C1115762406D26002
          8CDF6E8599377E1A9C6275D120E7095A75D10844DF780EC4DFFD62D4736B8B01
          3B5190B39F454712A72A05B55F4CD68BFFBE0D35C26A428AC971EC43AF828E00
          9DAE2BC3A929CBC3332BFEEB596885CA71EEF05E84BAC2E5498311CCB549AF45
          85A976F3FB503998801E159D44BDBB59EC95E5DEF550F41E6F9E798E09BC9A07
          97869AB9E3409B98D6C5E152264908F52E0D7307B47B0787BA63A59157CAB95F
          0DF2D9FB12512565C599C2E7BB7B6138EE865DA9972347AFD087FFFA4C1838EF
          191179201E752A7A031643D0CE415332B178EEC63B671E7DDB67596460E51053
          991A9433A7A6EDDCD8EBA66C396C0E390DEC873F678ECC1BDA95F48F43746B17
          42E8944B3C0B9D075B7326B30A13F1DD96C39CE1006BAE943063E5D1DA0AB2E6
          FC8404FD8ACFF60BC41273D0AFE86C5B5D37B4E0926869CEEE8AEDD664AE0C76
          7C96EE0F4BA3D515E584151BB0E9DE8C1084F1C2B4A9E9EB1E380B6AB612C291
          1BF0BD8FDA5CEA393F66088E4FCCC0178ED8E406AB50632DA7ABA991E63F0DA6
          456BDCA8716BD7EF41BFFBABA85C1812939BB98C64A65960E2EEE4A10D087227
          5F46946B32AA4934FEB3628C2852F4AE72065EF4C8A990A36BF639CF31BD78E0
          2905745293DEEED39B3E080F4CDF86A3133DE8670688A841B5D0CB55925E899F
          8B1704B70DC961F8A7354F87578EAC03DBB6FA3704018E45343737AE7CDD8D50
          FFF19D7858570E10E43CE1A88049E9180CFEE49F411ECD00D717DC2D117149D2
          8BF2CB6D358D338B2A265A62F5DCBB3781FE879CC64D9E609AD4AFB0A337E60C
          6CA760E406DE7DAC957CDD5ACDA958B8917B6ACFE44EA1F9140128DD755DB498
          1B7C626EBFB3179FA52086AE00974C161D0265FC4204D84CB33C01FED9D651B9
          D80A76F67E1CAF126D54B51995E6C09C557AB888480510658CDC51C19137B929
          95CB5BA2F5C2EF0624A3A824E4904D1A7AFFBB170A56D1CDBA395B2DA7CE38D6
          5AFD914B256D65260E8EA3F40856E914852972DA2A544A4FBCE54B46EDE1DD29
          259D880731A0A0353733FAAA6C2D7D523961CC108B872F67CEF6D69BB21A17E2
          895ECFA4812B5001792174E837ADFB5E04113BA715B2FB23B9A88280D2D94F04
          91FC7865AC11B1C3E26E4E805760047053E877A454F5AAB9D8AB8069172F27D1
          3A383810BB637B6B543D01DBDB6671629BACA815C98E57C7540462019EBA82ED
          9E3422FC88FBCF86BA6780D3DE2405C7EFFE7209A221E8DC2260B36578D7F863
          F09EB12720ADE1FA46EBAE6311FB825524B4EE23A69D7B0C8C476E0207FFCD4D
          0B9C7A05ADE9356E04B13A760AE21B155A71A81D46B3AFEE4324C584E76F7A36
          FC6A6659677574DA77D1A70CD0B9795EB2069FD8742DDCB7EF97B8441387E235
          FD923EFB25418A7B877EA549162E0876192D020F9EF67F600CAD86D6E262CC7B
          B28AEB2A86406658AEC565DEBF1DAAFFFA2B048B8D9485054B91E1CC717BC45E
          FF7C485C77A99740EE2CA84B82DB2E049D794CC163166332632C2AD7EBB767AD
          FC071F66D6941E65613981DABCDCEBAE08ADB959EDE84475D9674E62525C8973
          CBAD9916E42A132EE8DEF725B20AF6F4C350FFCD0DE096070FB65E69333B78C4
          D5E4D133415E768A5757AE2D70887911BFA8BA5AFB7E034EFE216F45C8EE84D0
          78D0A1B284D5579744A85DC9E638099A7572DEE1A906A5FDFF3B68CDFE21A971
          CE5272C4F697840912D7C3E134AC0AB7ECEACA775EC8472E3B4B9522A1B85DAA
          113804552621988A32558EC84389F2C43FFC5763FA2BBF0EA923E9811E39737A
          7243393F727E4E752C187249413C29E3EC97A817D173B03327CEB5C8293E070F
          DDBFC779685B8AD417171418670D5D6EE477C5F7649A4550DB825088B8795575
          D4443049E17FFBEF14E76341A1DF072582F72A5C1B1419A922F846F787F3B3D3
          E1FD31CDD13ABFC70CC99C595319AFC5ACC810B68FE6D3ADD081D3A853AAD5C5
          8F9D043FC9AF10B5E944F91B7FE8755701D736B115180957E11DCB27E02A043C
          0D2D2DCBEE3A5F34AF5F686F2BE10A7788689DE3D8EF42A57B2728EBCE421CC4
          ED6CBA77A42212B7E59A5510D8DEB5F338F87FBB9ED60A3EF13D97F6AFF39401
          3A8AB07C307F0F5C7FFFD5B81AD85CE581A595A0A44F1105586FFE6D3E72D3F9
          8A4E2E58D28A061B4F79118C0F0EE2096223E034D0E250C07A7C121AB73E0C4E
          5987FA377F47143DC01B3ABE3C7CF02FF509511CC62EBF1012D7BEC24B375818
          D8D142262D4C0406CC17D1428B3982969CE994CC7AE5C77B79E93B13B2BD4F4F
          4829350AED793AC484527774A7B0E23BA7F3D031C98853B6A0470084D09CE919
          C15C9BAE256640F5E6778353C9F5BAEA55DD677028B17086AB47BCB20968EEA1
          228252489AAC0E94A38B9BBA360D76EE3EDCE84FB809154D77A660D2389C58BD
          5D8503E642DFDD4C3EB29AB19B657D52AD16EF4B43696322CE14272E69BCA702
          229E87565C8337CC7274FDAAC6F0A567C2E08B4FA3BE87ED6A433816BDDAC69A
          ACC8B19065EC9BA9ECFFF6EFACDC77EF94F07B5499A0EBDE0B11873389E7C65E
          336986868D41D4335A3973BC0139F508706217E0CB455D6A9F38337F034EF55C
          1CFDD6B946ED496327992999F59DF1DD64E90F528D38E8063A2AC3633481CEEF
          8AF67B2FFA8D2D9DEEB4F68CE6F8F62B60DA964F88ED4B39E0D4B6272628EA73
          88415BC5066244D1871A83F991FA30114B0B92EDD6FD9EA218F0E1DD47C3FBB6
          9FD06925D1BA156901428248999BA380CBD652E0A523BBE1DD2BB7C369A92CD8
          B6DAA98BF8825598EE52974BAAC36485520818887D34E73675FB41A9043BEA71
          381DADB969D765E9F89F272C5FFB290174942BB7110F8D4F3EF85EA85339A643
          93101E94F4292C35DA08B46085A92E6AA5F5D2CAFAF9E7172EB605CF5FB916BE
          5D1985E8A3FBA1F4D55BE8EA1C977E15EC3CBD42C64684602ED56FA985A22DEA
          10BFFC02487CF09578781BA4B3CFF72561D5859B634663375F142273C75F668A
          9CD2EAFA1FF266F18B8F837E573E0C9A44EE4CC50B5FE00DA766CF66DE7E949D
          BC7C9DCC759B0028883A0960AE3C101D30818131E4B234B6FC18F47BBED1AF04
          4FCA356F11C0D4A32F05161E8426279FC8FF691F3011A424A93621A7BDFF2EB4
          EE367BEE4CD90375383C8355FCA1EFAD7E519EB09C8052EED6A451BC37AD34A6
          B5A49A32C39EC372BE6015B3EA548DF2F2B7BCD0896F58C392E79EA0CAF83FA7
          6E70291DE3FAE39346F5C11D76EE3B7740E9F6ADB24BD8CC82033428672E735A
          B93472612E66955A39738CEB504090ABC72E066F0EADEE9670731CE7E11AF0CE
          5A775BB6808EC06B676CCF0C02C580C45997928B7F9F899BF1DA686D791CFF9B
          FEE6F781D21D9DA873D84BFC51A6D400B9C7673AF309A344FF3519992E97B432
          599B5D9196A83FE5D695D73A32E7C3A807C8D0C1694996D287761E0BEF9F380E
          7FE8D2373BCF3280FED515DC9CBBB4DA808FAE79182E19DE07497CBE65779DC5
          0A749F8FE2F975F0457C2A92038FD7A370DE9667C1F63A7E456E3B32FD1532CC
          273DD085E4306C2EDC0F9F4290D36DDD651E3F041294A3257E1F94F84C8D4841
          EF882B42A145C7E677495481533715E0FB376C6AB2A98ABEB3365693432B4DB0
          BBEC7C487CE8D5D82B1375B579A3E785E6AAC15C9AC0428A9D12A0455854E68C
          F19A7E7FD1295CBF9535361615A64AAE359079E7D378EACDA8BE57CD38364C70
          6106BD5FE4CC05736D92B284D65CEDE757A33597ED15161069B6A92C8F9C0AF2
          B2D3C93B335F891A415F46567D0DE84AC5AC803DF330D8FBEEF0FE2EB58255EA
          B014EB64692548DBE772042A7655A9ECFDDEB0A3EF8D4410621252C81109577D
          99FAED8A5E06C7A9C74F3D924B21FC8AE5B89474C69E3CD41FDD0772228C16BD
          92A07430080639333ADEC8AE7ED33EC92AC310773C2B1A41AEA63E0D66622F43
          C4E2A858D9AD360BD612EF5938B7BC761A5AD857E37FBBCE9668730EA94A813E
          15C9E6B3E16C5273B4CE3B378ABAD429476D75658C9CEC54D5BB1540E13DD975
          05767A1E7A8D45BFB1F2DF69CB148052516AC55DF1DD612580F60BADB9F2DACA
          BA52C4D63236B344B0421BCD17594B5F9E5A0D573CB1C14DBAEE215AB30F21DF
          EF7A5557F0223311F0D6C54AF0C1D55BE1D2E513A8F769A8837629DAA24E2689
          C8336D89C25CED114E79E0B9B0A596EC7459FAF72F49E1490D74749C4B920CD7
          FEE1ADB0BDF830767FA1F9608B96A08BE55E654384F4F2B57713A81E88480CA2
          BA0D5FFFE213F0FC474AA8461E1257ED0285C0AE06B1D79F0FF1775CE806AAB8
          3976FD8D485AACA40C082D59A4632C24C78CAC414D4A6B86B9ADA23736CE0023
          3E7704FEC819C394C725B4E85EE029CA03D1660DC899636E557863E377A1F1D0
          4DBD5C96B4C9084CCB2C3CE0903587AFA4A2900B293A2A46C62B59C22493DC9D
          BC3201F6145A78A57DF404A5E9CE14637338B933038355980C969284D2CCDD89
          7AF69703925593E372C489312F5471BED24AA6A39B3AD58B6FDA828CA175C7E8
          E29DB76A54763FC38B0B2DAC7C45568FAEAB65EC8A1BBECE7903276314728937
          BA890C19DCA98A9B0E37D77EE18A6B88E974F2EF04A7FE4CFC6B957C64EE1D1D
          028A45C128D391ACA6722530270E2DB942CC8CEAAB6A2BA36839859A60E73F13
          C2CDF1EA579EA79750BF699DB62E111967498BD9C68EE4AE069EEFC312B41139
          339B3966CA4C6457D696876C668BDA779DB977AD4138F281B3604F23EA770B06
          B541B8AFFD1A74EF203B5B4693D386970C4FC2F56BB6C068A806DC56C15E40EF
          45F0C947773D0DDE831667872547E2AF8CEE06E73CA9812E2247E18EE95BE073
          0FBEEF50821C4D6C5005DDC0BC1C9F0495870F6243383049A970E5B777C3F537
          4DC054ABEAC89F56389E19523C0599FF7C2BA8A71E09BC3CAF91E6B924E798ED
          85A6B890B073C9B5EE5449622189361AF10230A766895221BD68BEFC7C96DD94
          47F410350676760B546FBEA65F3580844B002A8574F58897792E4B6EF762C1E8
          D77FC14E8FBA4AC8010BADBBFC83F8FE07DDA0A3C33C5845A45488BB2B77194A
          21A8DB75A954BC376915FF90D21C5D4A486167FE68593101ED3F439FEFB975E6
          06CF2E16979D3F1336A6715EBD6F91CBB2187B3534B46350F3AFE25C4B782073
          3C3DE9EA54AE53F633D19AD15AA0C3ACE4E58433B4EADE03BCB101B1A3DEF2E0
          E0230BDBE2130D47728683AA0380CB0ECB0BA3F51566DC8CD233C3B617816974
          7C2E0EF33384748E4967CE69082DB8F0BEC8F4EC4C68860AAF06457616C6AB63
          46C8D6861184C5BD6A57D929DA4026EA20C76F3A13B6D5E2FDAC3A2132CC1173
          CF1FAC422387E0767CA200FFB8723B5C32BC1754B4D46CA7B7522E40EE5F761F
          0DFFB4E3F826C8B575AF45C906BE3DFCA4063A1955EDF7DFFB769898DDE2EEAE
          43247E7677BF08BF3959049D2A87707D744A3F3684858B26C139F717E1CBFFBA
          0D2296E305DF2C8D2CA47C465FF1520F1290F98FB7817ADA119E6537FFBD9DBF
          6E99D03ECB0B1C277F557A6AB709BDADE5F973E6C865D92841ED960F82333BD5
          2F313C84035F928737803C760EF6B1D18F056321E3EEB970196B50EE272F3E86
          60772F38957D5EAAF91C80560EF01D87523A8BAC92FBD5463DB4527D345C9DB9
          2BCDABDBA231C4F10453B9EC51151DB450F91D8B319E5BFB777B38D3EC21B405
          5DD724AF821E3E170A91B3713EAA6E6B0ADC58C39DCA45B81E4F0116BB0515B2
          9B51A1C985B12D8281A4846DAEF3FA3310ECAEA2A764C075F93150B85CCF6933
          85BDD1C958D809054644E22F6CB2E4A276A43E60A4E4B819A73B3B87536BDA01
          C0AF1C00CC0FFE7E772376574A9A9259DD19DFE5AE65D6412C8D965E6D797DD9
          CC602393B2244BDC1393421E180047EECB2F4DAD81BF7DEC199D0129FD6471C1
          2AC4AA82A0F7B4F82CFCCF31F7C0EA88B7843BEFEF94A67BF2FA3D47C1D5DBD7
          07B5C75F911CC067683C69818ED84FEE98FC357C6ED307C0BDE73874364D2F8B
          0EA0FDBE45040FD0E7683282343FFA5C090E4610E4460B06DCFDDE4D106A3860
          1CBCCBD24F5925DC1276B35F0744574519A02CAC42F885A742EA93AF414387BB
          797C0B109A4811CEEEAFC3B5543966A23C90A0F90AC8998B4263F38DD0B8F73B
          C0827527E63E839305A65AEA5197E0E7D2123896D88007BAE1FC4C2F1590348B
          D213AC5D3F0367669B98992E82DBC34882835534520659B9BE27D4D8FBCDE5B2
          DD90924ADC5E2CAB7DF7585180BACD6656BE2C5F8B1D5D4ED8352F678E128FA5
          30E4E2AF014D1EC4DF5990E58DE32D3BF78FB88A620A48359CAB285A78255B8A
          FF2F48A9EF30F0AC73026BDA4EB34EED74CBC9BE3B04682C026B30D759C8D9CC
          9ED8BE7A59AD6454478D42F0594051983AB1A30CEB8356C6488665AEA07567B7
          72C27C9F1560D18BC459820E7271CA999310301E4FECA852950299CB6DF5191D
          2AAEC059765D79B582BAD12077C3215D653CD76BAC095CBEB17F15BC76EB298B
          013AD1BEA060153A07DB8AA3B604012F219B70C5F209383B998773D2398811B8
          619F4CFCE72785E5F0E1BD47C0C67286C228A19D4ED415718504301744E67EE8
          49097444AF6E3B165C77DF95B073762B1E0287CC9A132278107B957CA7412650
          A0497643A5213805A117EDD5C24421627F065FF8E23678F5BD393C690F3AE044
          90521BCD7F04A849CD3EA8CD7E2D9CC1A229DC55DB6B10B9F0D990FEEC15B8EC
          6DE00B033B61BD88FB0011AC72B06E3B7FCE5CE01DA95B7E670F95BCB9DEBB97
          0BD69D3CCBCA869AB2F64568BD1E49D65CBFE46080C559CA738C3A4C726967AC
          5D370BB0A3BFA59AF371B831AA0811CA4A5BB00A824FCD9A554A3377A79CDC6D
          E9B01277921222C602C7A47D7CF01B56599E5D7E51BE3278EEAC66649B1E17EE
          5EDB97622F86AA7A342AA70654B8BEBE62E7DF45E1320884A648E1C0C529E3D8
          CA15A63DEE48891FA362F69006CC2005864ACC5478ED99153BFB0E8F3F158D6C
          B4A42C09E4C2EED85EB3A49611EC945E55D3DDF9A36090881DAEAEA8AF9042B6
          16E3CC919BD69D7FDE825C814268DD13C8894D43C4D2F16C385FCC870A7104B9
          4ED20A8A002DA235574D194972590AA5ABB3D2419B50E4E5D727D7C2658F9E84
          3376408EA6A060156AB3176C1514ACD2B4F09E912C4044B2DC6923A07BA03488
          5FE4417772E23DC2B3D6D5AF2725D0111354C3AAC33FFCFE72289BA525A16E9F
          EF95E0F985FBB91BE6BB5308264B5DA850BE313EF50B5FDE01AFBF278B3BE0A0
          5328C4E53899FFBDAC362FE0C2FB3759568BDE09C48D19B9E84C487FE60D6E34
          1D580B8EA950A19DC97D31C12A01A3D74A69284290FBCF2DBF5386FAED9FEA57
          7EC7CBF571A024A5D77165FC7CF00225B828E8D9EBDDD4661BA04F5045F777B8
          DB562653D56EB0B6FF109CF25E6866FCD3730ECE337068A55BDBE7EEED820532
          2B551F8DD4F3BFCD307D4A8BCB21273E0FB34ADBB8A0914B7769B39131BDB6E2
          A5598969F6205A71AE2B8BD7C10C9D0CB9E845A80C34BC885A7BFA7ACE8DB509
          902AA9A6896037C7D753A2B85A061EADB3E8AF41CA7C8D31B942F39BC0ED65F1
          CA5F2148BE354E2A105976D84C4BE2F2CCEED81EA3AA54B16F2C4121FE3DDA4E
          66600301AF34521F31061A290DADAC18F14E42B7E2E8CFB9A4DFD301DEC69643
          39730DD9A86F8F4F388AA30CB1760F13B3245B4F9831626949A0B527C8E683AB
          11F884A21BF7186178D643A7C35E3DBA907BBA5EE2775F0BE9CF08D599582EF7
          3C1B3A5D966DC139DE603F5981CED611E8AE80B2913F14A4CD41722097C9E27B
          DDA5411623F4A6A402AFFADFFDF0CDAF3D0ED370D035F54883A4CDD556B1B78F
          88228B42535BD46EA0F23ED10B9E0DA9CF5C0E9C528D160E76A2ADE23E40B889
          AB8B7900CCE5CCF574E330350AFA7D5F0563D3CFFB95DF49BA39738A66AA47BD
          0E975D14AD08AB1FEFA9B87B139AF962A2EF044066418938D6C42FDD7C3B3735
          D27B466901CFF8534BB312757BB08A1C01622F98CDDF9EB2F2BF19A014044A45
          08BB69F3BD79851C5B977526F1F2C845FBADD48955E6189041908BB8DFA2D155
          A090B80C9F9F41A5D486BC33F306C3A9BE4005A60B4B40F0CEFABD06E49AAC01
          0F95402A5A52F43720257F8AA35C21576888D74E32ECD9CB5530871590882C4B
          7224CECA3559AF14434579462DA5142E479A776581EE4C0A4C41E3B53C60A49C
          4C234DEFD5D0E222A577A15E8A88C215656F74B23CAB9606642EB7E5F351FE9E
          E668B93595714AB119E25ECE5C5029AB4021F7E5491BCF8407CA038221E54065
          F1CC2AF30BCD15ED5DE12E6ECB056C0DF45F806EC9456C5E9189BD1062E780E8
          BE4508EA821B7654E1DB373C0683758B6EC00EA6FD22ACBF9F25D7AB2FB166BF
          69012CCA3A253766F82204BB4F5DE631A82C0EEC846529EEA8C43DC042DC7722
          4A8B24D08DC3640D9CFA0CD46EBED2A321623D9F23E38855E4E52783BCF24CCA
          B3EB9542E297CE77CE472AD039E60590D4BA53D80CD69E5B44DB84FBF2702CF7
          13D487CE22AB6EE51B49818A91572AC5FB52BCFC505CB56B32819D0A682631C1
          9169BB169CA9A42C3D7E54D50C8F3620B9A1223BBA3BEE1E803237CAB2167E36
          1423E7C230AE8E0637C766EDFDD7E29F353CBDDD749320F61B51ED3CEC8DA554
          063B5163D1BBB93CF8716C815B4035CDADE58E93BFD2E2E6781858DD6D1A5534
          A0E09342A86816B5D98821994904BC5EF76D946F6722E09532464A4F1B29396A
          45E2B6448E3A3EDF3C12DF66BCA8158B53916C18DFDB953387CF2DAFA82D2FA5
          CDC4005A8C020449895DD0414D89D9CF78F039F06035B548A0E32E459E4B86DD
          5E4DC5735F73EE69E4CC5DB4A4F09192BA982B087156F91525521ABBCE9EBF00
          DDA191CECB64925E17CAC1AEB2C5BC0981EE8BFFB60D5EFF7BCF65799061376D
          84A90720A20C87C8EF59F05D11E5DA452F3C03529F7D831B89B9C03B3BBF08EE
          45C1D9275211821E24B4F644F3BF83B9359B0511F43B3E05D6EE077AD1807A77
          290E94587CA5A3AEBE90EE85152AE809BD73E6BAF29F3A446BCEC5FC94710C0F
          60C70463EB57B0A726FD360DBDD8290E5F090C56613218087865A3A0E8F9DB07
          C031104422B4369AB5ED4C892B710B32A71741CDD812CE41142D3951BBCE03B9
          0A58F21064936FC775D9002A2194456BCE712AE74541AA51246C4FF61B9853E0
          0410EBE0C46659F801531EBA81BE4A2C2F03C042256BF2131698CB9268EDA9CD
          2E901BB1A6CB8DF254643FAF2AB5249A8231C6599002DCB4EE6C62D129C78D98
          B5AA368ACFE654F58014A17A47FBE8F3616263C111293D11DFE998B2392C73C9
          0FA66E099E81C64076796D79C4921B0204BB72E6FA4E0C82DBEB1F7F06FCE7D4
          38FED0B9A438D5C7F168ED3ABB84B8BE727A07E85A040AE9910EB0E30CD49097
          6BA9D72477DDCE05AB74A65E748A08909B9BE7E0F2442DF9FFCF3A70CBAFB2C0
          160000000049454E44AE426082}
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
    Left = 336
    Top = 315
  end
end
