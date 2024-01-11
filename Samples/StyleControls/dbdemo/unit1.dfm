object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'StyleControls VCL - HighDPI - DBDemo'
  ClientHeight = 547
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object scDBText1: TscDBText
    Left = 142
    Top = 392
    Width = 67
    Height = 29
    FluentUIOpaque = False
    TabOrder = 0
    DragForm = False
    DragTopForm = True
    GlowEffect.Enabled = True
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 2
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    ShowAccelChar = False
    UseFontColorToStyleColor = False
    Caption = 'scDBText1'
    DataField = 'Field1'
    DataSource = DataSource1
  end
  object scDBEdit1: TscDBEdit
    Left = 9
    Top = 328
    Width = 121
    Height = 21
    FluentUIOpaque = False
    UseFontColorToStyleColor = False
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomBackgroundImageNormalIndex = -1
    CustomBackgroundImageHotIndex = -1
    CustomBackgroundImageDisabledIndex = -1
    PromptTextColor = clNone
    HideMaskWithEmptyText = False
    HidePromptTextIfFocused = False
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
    RightButton.StyleKind = scbsDropDownButton
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
    Transparent = False
    BorderKind = scebFrame
    CustomDraw = False
    FrameColor = clBtnShadow
    FrameActiveColor = clHighlight
    Text = 'scDBEdit1'
    TabOrder = 1
    DataField = 'Field1'
    DataSource = DataSource1
  end
  object scDBComboBox1: TscDBComboBox
    Left = 135
    Top = 328
    Width = 145
    Height = 21
    FluentUIOpaque = False
    ItemIndex = -1
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ImageIndex = -1
    ItemHeight = 15
    TabOrder = 2
    Text = 'scDBComboBox1'
    StyleKind = scscbDefault
    ShowFocusRect = True
    DataField = 'Field1'
    DataSource = DataSource1
    EnableValues = False
  end
  object scDBTimeEdit1: TscDBTimeEdit
    Left = 8
    Top = 361
    Width = 118
    Height = 21
    FluentUIOpaque = False
    UseFontColorToStyleColor = False
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomBackgroundImageNormalIndex = -1
    CustomBackgroundImageHotIndex = -1
    CustomBackgroundImageDisabledIndex = -1
    PromptTextColor = clNone
    HideMaskWithEmptyText = False
    HidePromptTextIfFocused = False
    WallpaperIndex = -1
    ShowUpDown = True
    ShowMSec = False
    ShowSec = True
    Transparent = False
    BorderKind = scebFrame
    FrameColor = clBtnShadow
    FrameActiveColor = clHighlight
    CharCase = ecUpperCase
    MaxLength = 8
    TabOrder = 3
    Text = '00:00:00'
    DataField = 'Field4'
    DataSource = DataSource1
  end
  object scDBDateEdit1: TscDBDateEdit
    Left = 135
    Top = 361
    Width = 145
    Height = 21
    FluentUIOpaque = False
    UseFontColorToStyleColor = False
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomBackgroundImageNormalIndex = -1
    CustomBackgroundImageHotIndex = -1
    CustomBackgroundImageDisabledIndex = -1
    PromptTextColor = clNone
    HideMaskWithEmptyText = False
    HidePromptTextIfFocused = False
    WallpaperIndex = -1
    BlanksChar = ' '
    TodayDefault = False
    CalendarWidth = 200
    CalendarHeight = 150
    CalendarFont.Charset = DEFAULT_CHARSET
    CalendarFont.Color = clWindowText
    CalendarFont.Height = -11
    CalendarFont.Name = 'Tahoma'
    CalendarFont.Style = []
    CalendarBoldDays = False
    CalendarBackgroundStyle = sccasEdit
    CalendarWallpaperIndex = -1
    FirstDayOfWeek = Sun
    WeekNumbers = False
    ShowToday = False
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
    RightButton.ComboButton = True
    RightButton.Enabled = True
    RightButton.Visible = True
    RightButton.ShowHint = False
    RightButton.ShowEllipses = True
    RightButton.StyleKind = scbsPushButton
    RightButton.Width = 15
    RightButton.ImageIndex = -1
    RightButton.ImageHotIndex = -1
    RightButton.ImagePressedIndex = -1
    RightButton.RepeatClick = False
    RightButton.RepeatClickInterval = 200
    RightButton.CustomImageNormalIndex = -1
    RightButton.CustomImageHotIndex = -1
    RightButton.CustomImagePressedIndex = -1
    RightButton.CustomImageDisabledIndex = -1
    Transparent = False
    BorderKind = scebFrame
    FrameColor = clBtnShadow
    FrameActiveColor = clHighlight
    MaxLength = 10
    TabOrder = 4
    AllowNullData = False
    DataField = 'Field5'
    DataSource = DataSource1
  end
  object scDBCheckBox1: TscDBCheckBox
    Left = 336
    Top = 282
    Width = 64
    Height = 33
    FluentUIOpaque = False
    TabOrder = 5
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
    UseFontColorToStyleColor = False
    Animation = False
    Caption = 'Field3'
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
    ClickOnDataChange = True
    DataField = 'Field3'
    DataSource = DataSource1
  end
  object scPanel1: TscPanel
    Left = 0
    Top = 0
    Width = 573
    Height = 81
    Align = alTop
    FluentUIOpaque = False
    TabOrder = 6
    CustomImageIndex = -1
    DragForm = False
    DragTopForm = True
    StyleKind = scpsToolBar
    ShowCaption = False
    BorderStyle = scpbsHorzCenterBevel
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
    WordWrap = False
    object scLabel3: TscLabel
      Left = 12
      Top = 9
      Width = 28
      Height = 13
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
      UseFontColorToStyleColor = False
      Caption = 'Style:'
    end
    object scComboBox1: TscComboBox
      Left = 47
      Top = 6
      Width = 145
      Height = 23
      FluentUIOpaque = False
      Style = csDropDownList
      ItemIndex = -1
      WordBreak = False
      SelectionStyle = scstStyled
      SelectionColor = clNone
      SelectionTextColor = clHighlightText
      ImageIndex = -1
      ItemHeight = 17
      TabOrder = 1
      StyleKind = scscbDefault
      ShowFocusRect = True
      OnClick = scComboBox1Click
    end
    object scCheckBox2: TscCheckBox
      Left = 331
      Top = 50
      Width = 96
      Height = 25
      FluentUIOpaque = False
      TabOrder = 2
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
      Caption = 'Row select'
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
      Left = 212
      Top = 50
      Width = 106
      Height = 25
      FluentUIOpaque = False
      TabOrder = 3
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
      Caption = 'ShowFocusRect'
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
    object scLabel5: TscLabel
      Left = 11
      Top = 56
      Width = 71
      Height = 13
      FluentUIOpaque = False
      TabOrder = 4
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
      Caption = 'SelectionStyle:'
    end
    object scComboBox2: TscComboBox
      Left = 97
      Top = 50
      Width = 94
      Height = 23
      FluentUIOpaque = False
      Style = csDropDownList
      ItemIndex = 0
      Items.Strings = (
        'scstStyled'
        'scstColor')
      WordBreak = False
      SelectionStyle = scstStyled
      SelectionColor = clNone
      SelectionTextColor = clHighlightText
      ImageIndex = -1
      ItemHeight = 17
      TabOrder = 5
      Text = 'scstStyled'
      StyleKind = scscbDefault
      ShowFocusRect = True
      OnClick = scComboBox2Click
    end
    object scCheckBox7: TscCheckBox
      Left = 213
      Top = 6
      Width = 97
      Height = 25
      FluentUIOpaque = False
      TabOrder = 6
      TabStop = True
      OnClick = scCheckBox7Click
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
      Caption = 'Scale styles'
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
  object scDBSpinEdit1: TscDBSpinEdit
    Left = 9
    Top = 289
    Width = 82
    Height = 21
    FluentUIOpaque = False
    UseFontColorToStyleColor = False
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomBackgroundImageNormalIndex = -1
    CustomBackgroundImageHotIndex = -1
    CustomBackgroundImageDisabledIndex = -1
    PromptTextColor = clNone
    HideMaskWithEmptyText = False
    HidePromptTextIfFocused = False
    WallpaperIndex = -1
    Increment = 1.000000000000000000
    UpDownKind = scupkLeftRight
    Alignment = taCenter
    ValueType = scvtInteger
    MaxValue = 100.000000000000000000
    MouseWheelSupport = True
    DisplayType = scedtNumeric
    Transparent = False
    BorderKind = scebFrame
    TabOrder = 7
    DataField = 'Field2'
    DataSource = DataSource1
  end
  object scDBProgressBar1: TscDBProgressBar
    Left = 106
    Top = 290
    Width = 100
    Height = 20
    FluentUIOpaque = False
    TabOrder = 8
    Options.Size = 0
    Options.Offset = 0
    Options.StyleKind = sctsStyled
    Options.Color = clBtnShadow
    Options.ProgressColor = clHighlight
    Options.FrameColor = clNone
    Options.FrameWidth = 1
    Options.CustomImageIndex = -1
    Options.CustomImageProgressIndex = -1
    Options.StyleColors = True
    AnimationTimerInterval = 50
    TransparentBackground = True
    CustomBackgroundImageIndex = -1
    MinValue = 0
    MaxValue = 100
    Value = 0
    Vertical = False
    DataField = 'Field2'
    DataSource = DataSource1
  end
  object scDBTrackBar1: TscDBTrackBar
    Left = 221
    Top = 286
    Width = 100
    Height = 29
    FluentUIOpaque = False
    TabOrder = 9
    TransparentBackground = True
    ShowFocusRect = True
    JumpWhenClick = False
    MouseWheelSupport = True
    MouseWheelOpposite = False
    CanFocused = True
    MouseSupport = True
    MinValue = 0
    MaxValue = 100
    Value = 0
    Vertical = False
    ReadOnly = False
    TrackOptions.Size = 10
    TrackOptions.Offset = 2
    TrackOptions.StyleKind = sctsStyled
    TrackOptions.Color = clBtnShadow
    TrackOptions.ProgressColor = clHighlight
    TrackOptions.FrameColor = clNone
    TrackOptions.FrameWidth = 1
    TrackOptions.CustomImageIndex = -1
    TrackOptions.CustomImageProgressIndex = -1
    TrackOptions.StyleColors = True
    ThumbOptions.StyleKind = sctsStyled
    ThumbOptions.StyleColors = True
    ThumbOptions.UseCursor = False
    ThumbOptions.Width = 0
    ThumbOptions.Height = 0
    ThumbOptions.NormalColor = clBtnHighlight
    ThumbOptions.HotColor = clBtnHighlight
    ThumbOptions.PressedColor = clBtnHighlight
    ThumbOptions.DisabledColor = clGray
    ThumbOptions.CustomImageNormalIndex = -1
    ThumbOptions.CustomImageHotIndex = -1
    ThumbOptions.CustomImagePressedIndex = -1
    ThumbOptions.CustomImageDisabledIndex = -1
    CustomBackgroundImageIndex = -1
    DataField = 'Field2'
    DataSource = DataSource1
  end
  object scDBMemo1: TscDBMemo
    Left = 296
    Top = 321
    Width = 186
    Height = 94
    Lines.Strings = (
      'scDBMemo1')
    TabOrder = 10
    FluentUIOpaque = False
    HidePromptTextIfFocused = False
    PromptTextColor = clNone
    WallpaperIndex = 0
    Transparent = False
    CustomBackgroundImageNormalIndex = -1
    CustomBackgroundImageHotIndex = -1
    CustomBackgroundImageDisabledIndex = -1
    UseFontColorToStyleColor = False
    ForceDataChange = True
    DataField = 'Field6'
    DataSource = DataSource1
  end
  object scDBLookupListBox1: TscDBLookupListBox
    Left = 8
    Top = 445
    Width = 302
    Height = 94
    DataField = 'Field1'
    DataSource = DataSource1
    KeyField = 'Field1'
    ListField = 'Field1;Field2;Field3'
    ListSource = DataSource2
    SelectionStyle = scstStyled
    SelectionColor = clHighlight
    SelectionTextColor = clHighlightText
    ShowFocusRect = False
    LineColor = clBtnFace
    RowCountFixed = 6
    TabOrder = 11
  end
  object scLabel1: TscLabel
    Left = 8
    Top = 426
    Width = 98
    Height = 13
    FluentUIOpaque = False
    TabOrder = 12
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
    Caption = 'TscDBLookUpListBox'
  end
  object scLabel2: TscLabel
    Left = 327
    Top = 426
    Width = 115
    Height = 13
    FluentUIOpaque = False
    TabOrder = 13
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
    Caption = 'TscDBLookUpComboBox'
  end
  object scDBLookupComboBox1: TscDBLookupComboBox
    Left = 327
    Top = 445
    Width = 165
    Height = 21
    DataField = 'Field1'
    DataSource = DataSource1
    DropDownWidth = 200
    KeyField = 'Field1'
    ListField = 'Field1;Field2'
    ListSource = DataSource2
    TabOrder = 14
    SelectionStyle = scstStyled
  end
  object scLabel4: TscLabel
    Left = 325
    Top = 487
    Width = 214
    Height = 38
    FluentUIOpaque = False
    TabOrder = 15
    DragForm = False
    DragTopForm = True
    GlowEffect.Enabled = True
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 5
    GlowEffect.Offset = 2
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    WordWrap = True
    UseFontColorToStyleColor = False
    Caption = 
      'See many others DB controls with a lot of advanced features in c' +
      'omponents pallete!'
  end
  object scDBGrid1: TscDBGrid
    Left = 0
    Top = 81
    Width = 573
    Height = 156
    Align = alTop
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    FluentUIOpaque = False
    TabOrder = 16
    AlternateRow = False
    SelectionStyle = scstStyled
    TransparentEditor = True
    Wallpapers = scGPImageCollection1
    WallpaperIndex = 0
    BackgroundStyle = scgbColor
    ShowFocusRect = False
    LinesColor = clNone
    CustomBackgroundImageIndex = -1
    CustomOverContentImageIndex = -1
    DataSource = DataSource1
    Options = [scdgTitles, scdgIndicator, scdgColumnResize, scdgColLines, scdgRowLines, scdgRowSelect, scdgAlwaysShowSelection, scdgConfirmDelete, scdgCancelOnExit, scdgTitleClick, scdgTitleHotTrack]
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnGetCellParams = scDBGrid1GetCellParams
    Columns = <
      item
        Expanded = False
        FieldName = 'Field1'
        PickList.Strings = (
          'Item1'
          'Item2'
          'Item3'
          'Item4'
          'Item5'
          'Item6'
          'Item7'
          'Item8'
          'Item9')
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Field2'
        Title.Alignment = taRightJustify
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Field3'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Field4'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Field5'
        Width = 70
        Visible = True
      end>
  end
  object scDBAdvancedComboEdit1: TscDBAdvancedComboEdit
    Left = 8
    Top = 393
    Width = 122
    Height = 21
    FluentUIOpaque = False
    UseFontColorToStyleColor = False
    ContentMarginLeft = 0
    ContentMarginRight = 0
    ContentMarginTop = 0
    ContentMarginBottom = 0
    CustomBackgroundImageNormalIndex = -1
    CustomBackgroundImageHotIndex = -1
    CustomBackgroundImageDisabledIndex = -1
    PromptTextColor = clNone
    HideMaskWithEmptyText = False
    HidePromptTextIfFocused = False
    WallpaperIndex = -1
    CustomDraw = False
    MouseWheelSupport = True
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
    RightButton.ComboButton = True
    RightButton.Enabled = True
    RightButton.Visible = True
    RightButton.ShowHint = False
    RightButton.ShowEllipses = False
    RightButton.StyleKind = scbsPushButton
    RightButton.Width = 15
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
    BorderKind = scebBottomActiveLine
    FrameColor = clBtnShadow
    FrameActiveColor = clHighlight
    AlternateRow = False
    ListBoxDetailPosition = sclbdBottom
    ListBoxDetailWordWrap = False
    ListBoxIndentMargin = 10
    ListBoxHeaderUseStyleColor = True
    ListBoxWallpaperIndex = -1
    ListBoxLineColor = clBtnFace
    ListBoxHeaderStyle = scahsDefault
    ListBoxWidth = 0
    ListBoxHeight = 0
    ListBoxSelectionStyle = scastStyled
    ListBoxShowItemTitles = True
    ListBoxShowItemDetails = False
    ListBoxShowLines = False
    ListBoxItemHeight = 16
    ListBoxHeaderHeight = 20
    ListBoxSelectionColor = clNone
    ListBoxSelectionTextColor = clHighlightText
    UseFilter = False
    TabOrder = 17
    Items = <>
    ItemIndex = -1
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
    DropDownCount = 7
    Text = 'scDBAdvancedComboEdit1'
    DataField = 'Field1'
    DataSource = DataSource1
  end
  object scDBNavigator1: TscDBNavigator
    Left = 8
    Top = 251
    Width = 310
    Height = 27
    FluentUIOpaque = False
    TabOrder = 18
    CustomImageIndex = -1
    DragForm = False
    DragTopForm = True
    StyleKind = scpsTransparent
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
    StorePaintBuffer = False
    WordWrap = False
    DataSource = DataSource1
    Animation = True
  end
  object scCheckBox4: TscCheckBox
    Left = 337
    Top = 251
    Width = 49
    Height = 25
    FluentUIOpaque = False
    TabOrder = 19
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
    Caption = 'Flat'
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
  object scCheckBox5: TscCheckBox
    Left = 404
    Top = 251
    Width = 71
    Height = 25
    FluentUIOpaque = False
    TabOrder = 20
    TabStop = True
    OnClick = scCheckBox5Click
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
    Caption = 'TabStop'
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
  object scCheckBox6: TscCheckBox
    Left = 485
    Top = 251
    Width = 78
    Height = 25
    FluentUIOpaque = False
    TabOrder = 21
    TabStop = True
    OnClick = scCheckBox6Click
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
    Caption = 'Animation'
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
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Field1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Field2'
        DataType = ftInteger
      end
      item
        Name = 'Field3'
        DataType = ftBoolean
      end
      item
        Name = 'Field4'
        DataType = ftTime
      end
      item
        Name = 'Field5'
        DataType = ftDate
      end
      item
        Name = 'Field6'
        DataType = ftMemo
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 32
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 128
    Top = 88
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
    Left = 512
    Top = 344
  end
  object scStyledForm1: TscStyledForm
    FluentUIBackground = scfuibNone
    FluentUIAcrylicColor = clBtnFace
    FluentUIAcrylicColorAlpha = 100
    FluentUIBorder = True
    FluentUIInactiveAcrylicColorOpaque = False
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
    Left = 512
    Top = 280
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Field1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Field2'
        DataType = ftInteger
      end
      item
        Name = 'Field3'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 208
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 288
    Top = 88
  end
  object scGPImageCollection1: TscGPImageCollection
    Images = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000001D60000017B08060000006F98AA
          6A0000000970485973000093A3000093A301D1B2F0C600000A4F694343505068
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
          D0A7FB93199393FF040398F3FC63332DDB00001A6A4944415478DAEDDDCFAE6C
          C759C6E13A51240BA4D8130403838CC4802002032E80090C8914DF0F43EE2796
          C210265C42F8134F9090C013E489CD20B204985E3E7BE17DCEEADDBBBAD7576B
          D557F53C526B9F44E9A3AE5D7BBD3F39B14FDE7CFBEDB7058031BCF9FB7FFEF0
          F2E5E3B33FC7C4BE7823AC0063B9C4F593CB974FCEFE1C93FA5C58010624AEA7
          1156805189EB2984156064E27A386105189DB81E4A58016620AE871156805988
          EB2184156026E2DA9CB002CC465C9B12568019896B33C20A30A34B58972FE21A
          4F580166F414D685B8C6125680193D0BEB425CE3082BC08CDE0BEB425C63082B
          C08CAE847521AEFB092BC08C5E08EB425CF711568019DD08EB425C1F27AC0033
          7A25AC0B717D8CB002CCA822AC0B71BD9FB002CCA832AC0B71BD8FB002CCE88E
          B02EC4B59EB002CCE8CEB02EC4B58EB002CCE881B02EC4F575C20A30A307C3BA
          10D7DB841560463BC2BA10D797092BC08C76867521AED7092BC08C02C2BA10D7
          2D61059851505817E2FA2E61059851605817E2FA3D61059851705817E2FA96B0
          02CCA8415817E22AAC00736A14D6C5EC7115568019350CEB0F2EAF3FBBBC7EF3
          EC339E247F58971F8E6FFFE28F1F7E2F30ADDF78FAFAEBB33FC8231EDDBD55A3
          FD5BA2FAE3CBEBB74EF896F4425881292D51FDD3A75FFFB2248C6B876115D5B7
          841598CE1AD50F9EFEF53725615C3B0BABA87E4F5881A9BC1FD555BAB8761456
          517D97B002D37829AAAB5471ED24ACA2BA25ACC0145E8BEA2A4D5C3B08ABA85E
          27ACC0F06AA3BA4A11D793C32AAA2F13566068F74675D57D5C4F0CABA8DE26AC
          C0B01E8DEAAAEBB89E1456517D9DB00243DA1BD555B7713D21ACA25A475881E1
          444575D5655C0F0EABA8D613566028D1515D7517D703C32AAAF711566018ADA2
          BAEA2AAE07855554EF27ACC0105A4775D54D5C0F08ABA83E465881F48E8AEAAA
          8BB8360EABA83E4E5881D48E8EEAEAF4B8360CABA8EE23AC405A674575756A5C
          1B855554F7135620A5B3A3BA3A2DAE0DC22AAA31841548A797A8AE4E896B7058
          45358EB002A9F416D5D5E1710D0CABA8C61256208D5EA3BA3A34AE416115D578
          C20AA4D07B545787C53520ACA2DA86B002DDCB12D5D52171DD1356516D4A5881
          AE658BEAAA795C77EC9EA8B625AC40B7B24675D534AE8FEC9EA81E4258812E65
          8FEAAA595CEFDD3D513D8CB002DD1925AAAB2671BD67F744F550C20A7465B4A8
          AEC2E35ABB7BA27A386105BA316A5457A171ADD93D513D85B0025D183DAAABB0
          B8BEB67B134675F9DE7E79797D7CF2E71056E074B344751512D75BBB376954D7
          EFE9274FAFB3082B70AAD9A2BADA1DD797766FF2A8AECE8CABB002A79935AAAB
          5D71BDB67BA2FA8EB3E22AACC029668FEAEAE1B8BEBF7BA27AD519711556E070
          A2FAAE87E2FA7CF744F5A6A3E32AACC0A144F5BABBE3BAEE9EA8563932AEC20A
          1C46546FBB2B18CBEE89EA5D8E8AABB0028710D53AF7844354EF77445C851568
          4E54EF531310517D5CEBB80A2BD094A83EE656484475BF96711556A01951DDE7
          5A5044354EABB80A2BD084A8C6781E16518DD722AEC20A8413D5584B60FEF1F2
          FAFD22AA2D44C755588150A2DAC632D46FCEFE10073932AAABC8B80A2B104654
          D9EB8CA8AEA2E22AAC40085165AF33A3BA8A88ABB002BB892A7BF510D5D5DEB8
          0A2BB08BA8B2574F515DED89ABB0020F1355F6EA31AAAB47E32AACC0434495BD
          7A8EEAEA91B80A2B70375165AF0C515DDD1B576105EE22AAEC9529AAAB7BE22A
          AC40355165AF8C515DD5C6555839D5FA27C9E4FE219C83A8B257E6A8AE6AE22A
          AC9C6689EA1F3DFDFA57455C7B26AAEC35425457AFC5555839C51AD5F50F14FF
          B2886BAF4495BD468AEAEA565C8595C3BD1FD595B8F64754D96BC4A8AE5E8AAB
          B072A897A2BA12D77E882A7B8D1CD5EFBA7369C8B5B80A2B87792DAA2B713D9F
          A8B2D7D0515DACDDB9125761E510B5515D89EB794495BD868FEAE27977DE8BAB
          B0D2DCBD515D89EBF1668BEA974F5FEFFDD9E465534475F17E779EC5555869EA
          D1A8AEC4F5383346F5574FBFDEF333CAF7A689EAE25A779EE2FA6B61A595BD51
          5D896B7BB34675FD998AFA599DD954515DBCD49D4B577E28ACB4103D54E2DACE
          EC515D89EBE3A68BEAE25677849568AD064A5CE389EABBC4F57E53467521AC37
          DE4BA8D6C324AE7144F53A71AD376D5417C27AE3BD84396A90C4753F51BD4D5C
          5F37755417C27AE3BD84387A88C4F571A25A475C5F367D5417C27AE3BDEC76D6
          0089EBFD44F53EE2BA25AA4F84F5C67BD9E5ECE111D77AA2FA98B37FC67B22AA
          CF08EB8DF7F2B05E06475C5F27AAFBF4F2B37E26517D8FB0DE782F0FE96D6896
          21FDFCF2FADFB33F48874435466F3FF34712D52B84F5C67BB95BAF0323AE5BA2
          1AABD79FFD9644F505C27AE3BDDCA5F76111D7EF896A1BBD3F039144F50661BD
          F15EAA6519147115D5D67E7079FDB8F4FF2CEC21AAAF10D61BEFA54A96A8AE66
          8EABA81E63E4B88A6A0561BDF15E5E952DAAAB19E32AAAC71A31AEA25A49586F
          BC979BB2467535535C45F51C23C55554EF20AC37DECB8BB2477535435C45F55C
          23C45554EF24AC37DECB55A3447535725C45B50F99E32AAA0F10D61BEF6563B4
          A8AE468CABA8F625635C45F541C27AE3BDBC63D4A8AE468AABA8F629535C4575
          0761BDF15EFEDFE8515D8D105751ED5B86B88AEA4EC27AE3BD7C6796A8AE32C7
          555473E839AEDF45F5B29BA2DA88B0325B545719E32AAAB9F41857513D80B0CE
          6DD6A8AE32C5555473EA29AEA27A10619DD7EC515D6588ABA8E6D6435C45F540
          C23A27517D57CF7115D5319C1957513D98B0CE4754AFEB31AEA23A9633E22AAA
          2710D6B9F4F05F49F5ACA7B88AEA988E7C0645F524C23A0F51ADD3435C45756C
          473C8BA27A22619D83A8DEE7CCB88AEA1C5A3E93A27A32611D9FA83EE68CB88A
          EA5C5A3C9BA2DA01611D9BA8EE73645C45754E91CFA8A8764258C725AA318E88
          ABA8CE2DE25915D58E08EB98443556CBB8CE18D5B3FFE6B01EED796645B533C2
          3A1E516DA345104495E71E797645B543C23A16516D2B320CA2CA35F73CC3A2DA
          29611D87A81E232210A2CA2D35CFB2A8764C58C720AAC7DA138A4C515D1FACAF
          2EAFFFB8F3BDFF70F687EFC0ADE772F7FFD1F8A3BB97D14F3FFBF4B7CBDBEF65
          069F0B6B7EA27A8E47E29A29AA8BE5C17A24AA0B617DEBDAF3B93BAA0B61ED96
          B02627AAE7BA27AED9A2BAF8BDCBEBDF1F7CAFB07EEFF9731A12D585B0764B58
          1313D53ED4C4356354F758BE27FF72F687E8CCF2BCFE4179FB57FF21FFBBA8B0
          764B589312D5BEDC8AEB8C51F5372A1D4058BB25AC09896A9FAE054554694658
          BB25ACC9886ADF9E874554694A58BB25AC89886A0E4B60FEEDF2FA9322AA3424
          ACDD12D624443597E5A17A73F6873888A89E4458BB25AC09882ABD12D513096B
          B784B573A24AAF44F564C2DA2D61ED98A8D22B51ED80B0764B583B25AAF44A54
          3B21ACDD12D60E892ABD12D58E086BB784B533B345F59BA7AFB3FC632999896A
          6784B55BC2DA9119A3FACBA75FCFF407296424AA1D12D66E096B27668DEAFA87
          91CFF6A7146522AA9D12D66E096B07668FEA4A5CFB23AA1D13D66E09EBC944F5
          5DE2DA0F51ED9CB0764B584F24AAD789EBF944350161ED96B09E44546F13D7F3
          886A12C2DA2D613D81A8D611D7E3751BD5BFFAAFBFFEF0F2E5E3B33F47A52F2E
          AFAF1F7DF3DFFEE86FAAFE73C2DA2D613D98A8DE475C8FD36D541797B0A61AD6
          CBEB3F1F7DB3B06E09EBC1128555541F23AEED751DD585B06E096BB784F520A2
          BA8FB8B6D37D5417C2BA25ACDD12D603886A0C718D9722AA0B61DD12D66E096B
          63A21A4B5CE3A489EA4258B784B55BC2DA90A8B621AEFBA58AEA4258B784B55B
          C2DA88A8B625AE8F4B17D585B06E096BB784B501513D86B8DE2F655417C2BA25
          ACDD12D660A27A2C71AD9736AA0B61DD12D66E096B20513D87B8BE2E755417C2
          BA25ACDD12D620A27A2E717D59FAA82E84754B58BB25AC0144B50FE2BA354454
          17C2BA25ACDD12D69D44B52FE2FABD61A2BA10D62D61ED96B0EE20AA7D12D7C1
          A2BA10D62D61ED96B03E4854FB36735C878BEA4258B784B55BC2FA0051CD61C6
          B80E19D585B06E096BB784F54EA29ACB4C711D36AA0B61DD12D66E09EB1D4435
          A719E23A745417C2BA25ACDD12D64AA29ADBC8711D3EAA0B61DD12D66E096B05
          511DC388719D22AA0B61DD12D66E09EB2B44752C23C5759AA82E84754B58BB25
          AC3788EA984688EB54515D08EB96B0764B585F20AA63CB1CD7E9A2BA10D62D61
          ED96B05E21AA73C818D729A3BA10D62D61ED96B0BE4754E79229AED3467521AC
          5BC2DA2D617D4654E79421AE53477521AC5BC2DA2D617D22AA73EB39AED34775
          21AC5BC2DA2D612DA2CA5B3DC655549F08EB96B0762B7F58F7B884555479AEA7
          B88AEA33C2BA25ACDD9A37ACA2CA0B7A88ABA8BE4758B784B55B7386555479C5
          997115D52B84754B58BB355F5845954A67C455545F20AC5BC2DAADB9C22AAADC
          E9C8B88AEA0DC2BA25ACDD9A27ACA2CA838E88ABA8BE4258B784B55B73845554
          D9A9655C45B582B06E096BB7C60FABA812A4455C45B592B06E096BB7C60EABA8
          122C32AEA27A0761DD12D66E8D1B5651A59188B88AEA9D84754B58BB35665845
          95C6F6C455541F20AC5BC2DAADF1C22AAA1CE491B88AEA8384754B58BB355658
          459583DD135751DD4158B784B55BE384555439494D5C45752761DD12D66E8D11
          5651E564B7E22AAA0184754B58BB354C58FFF0F2E577CEFE1C0711D53E5D8BAB
          A80611D62D61EDD63061FDF0F2E52797D70FCFFE2C8D896ADF9EC755540309EB
          96B0766B8CB02E2688ABA8E6B0C4F5772FAF7F2DA21A4658B784B55BE3847531
          705C4595A909EB96B0766BACB02E068CABA8323D61DD12D66E8D17D6C5407115
          5528C27A8DB0766BCCB02E0688ABA8C21361DD12D66E8D1BD645E2B88A2A3C23
          AC5BC2DAADB1C3BA4818575185F708EB96B0766BFCB02E12C55554E18A99C3FA
          ED5FFE64F9E7A23F3AFB5095BE2A6F77EC312FF448583B9520AEA20A2F983CAC
          D39C5D5813EA38AEA20A3708EB1C6717D6A43A8CABA8C22B84758EB30B6B621D
          C55554A182B0CE7176614DAE83B88A2A5412D639CE2EAC033831AEA20A7710D6
          39CE2EAC9DB8C4F1E17F9E6B79EFC5D1711555B893B0CE717661ED4440581747
          C55554E101C23AC7D985B51341615DB48EABA8C28384758EB30B6B2702C3BA68
          155751851D84758EB30B6B2782C3BA888EABA8B2CB6558979FC98FCFFE1C95BE
          B8BCBE7EF4CD6FFEEE9FAEFEFBC23AC7D985B5130DC2BA888AABA8B2DB4CC32A
          ACC27A8DB01EAC5158177BE32AAA84986958855558AF11D683350CEBE2D1B88A
          2A61661A566115D66B84F5608DC3BAB837AEA24AA89986555885F51A613DD801
          615DD4C655540937D3B00AABB05E23AC073B28AC8BD7E22AAA3431D3B00AABB0
          5E23AC073B30AC8B97E22AAA3433D3B00AABB05E23AC073B38AC8BF7E32AAA34
          35D3B00AABB05E23AC073B21AC8B35AEFF534495C6661A566115D66B84F56027
          8575F1A3CBEBBF8BA8D2D84CC32AACC27A8DB0D2CE9B377F7EF647A8B0EFC1E2
          9A54A3521ADCFF4F7FFEB354DF835F7CFA59DDF7A0667FDFBC4975F6CB99E2EF
          5F5869465867956A548AB00A6B3061A51D619D55AA5129C22AACC18495768475
          56A946A508ABB0061356DA11D659A51A9522ACC21A4C5869475867956A548AB0
          0A6B3061A51D619D55AA5129C22AACC1849576847556A946A508ABB0061356DA
          11D659A51A9522ACC21A4C5869475867956A548AB00A6B3061A51D619D55AA51
          29C22AACC1849576847556A946A508ABB0061356DA11D659A51A9522ACC21A4C
          5869475867956A548AB00A6B3061A51D619D55AA5129C22AACC1849576847556
          A946A508ABB0061356DA11D659A51A9522ACC21A4C5869475867956A548AB00A
          6B3061A51D619D55AA5129C22AACC1849576847556A946A508ABB0061356DA11
          D659A51A9522ACC21A4C586967E2B05E86F5C3CB978FCF3E5CA52F2EC3FA75E0
          EF976A548AB00A6B3061A59DB9C39AEAC1AA1ED63AA9CE5EDCBFB0061356DA11
          D6340F96B0C61AF6FE85B58AB0D28EB0A679B08435D6B0F72FAC558495768435
          CD8325ACB186BD7F61AD22ACB423AC691E2C618D35ECFD0B6B1561A51D614DF3
          60096BAC61EF5F58AB082BED086B9A074B58630D7BFFC25A4558694758D33C58
          C21A6BD8FB17D62AC24A3BC29AE6C112D658C3DEBFB0561156DA11D6340F96B0
          C61AF6FE85B58AB0D28EB0A679B08435D6B0F72FAC558495768435CD8325ACB1
          86BD7F61AD22ACB423AC691E2C618D35ECFD0B6B1561A51D614DF360096BAC61
          EF5F58AB082BED086B9A074B58630D7BFFC25A4558694758D33C58C21A6BD8FB
          17D62AC24A3BC29AE6C112D658C3DEBFB0561156DA11D6340F96B0C61AF6FE85
          B58AB0D28EB0A679B08435D6B0F72FAC558495768435CD8325ACB186BD7F61AD
          22AC8D5CBEB11F5CBE7C74F6E7A8F4D52F7EF6F36FC27F57614DF360096BAC61
          EF5F58AB086B23D9BEB197B086FF70096BA2FB17D650C3DEBFB056C9B6FFC2DA
          86B0061B7658EBA43A7B71FFC21A2CDBFE0B6B1BC21A6CD861AD93EAECC5FD0B
          6BB06CFB2FAC6D086BB06187B54EAAB317F72FACC1B2EDBFB0B621ACC1861DD6
          3AA9CE5EDCBFB006CBB6FFC2DA86B0061B7658EBA43A7B71FFC21A2CDBFE0B6B
          1BC21A6CD861AD93EAECC5FD0B6BB06CFB2FAC6D086BB06187B54EAAB317F72F
          ACC1B2EDBFB0B621ACC1861DD63AA9CE5EDCBFB006CBB6FFC2DA86B0061B7658
          EBA43A7B71FFC21A2CDBFE0B6B1BC21A6CD861AD93EAECC5FD0B6BB06CFB2FAC
          6D086BB06187B54EAAB317F72FACC1B2EDBFB0B621ACC1861DD63AA9CE5EDCBF
          B006CBB6FFC2DA86B0061B7658EBA43A7B71FFC21A2CDBFE0B6B1BC21A6CD861
          AD93EAECC5FD0B6BB06CFB2FAC6D086BB06187B54EAAB317F72FACC1B2EDBFB0
          B621ACC1861DD63AA9CE5EDCBFB006CBB6FFC2DA86B0061B7658EBA43A7B71FF
          C21A2CDBFE0B6B1BC21A6CD861AD93EAECC5FD0B6BB06CFB2FAC6D086BB06187
          B54EAAB317F72FACC1B2EDBFB0B621ACC1861DD63AA9CE5EDCBFB006CBB6FFC2
          DA86B0061B7658EBA43A7B71FFC21A2CDBFE0B6B1BC21A6CD861AD93EAECC5FD
          0B6BB06CFB2FAC6D086BB06187B54EAAB317F72FACC1B2EDBFB0B621ACC1861D
          D63AA9CE5EDCBFB006CBB6FFC2DA86B0061B7658EBA43A7B71FFC21A2CDBFE0B
          6B1BC21A6CD861AD93EAECC5FD0B6BB06CFB2FAC6D086BB06187B54EAAB317F7
          2FACC1B2EDBFB0B621ACC1861DD63AA9CE5EDCBFB006CBB6FFC2DA86B0061B76
          58EBA43A7B71FFC21A2CDBFE0B6B1BC21A6CD861AD93EAECC5FD0B6BB06CFB2F
          AC6D086BB06187B54EAAB317F72FACC1B2EDBFB0B621ACC1861DD63AA9CE5EDC
          BFB006CBB6FFC2DA86B0061B7658EBA43A7B71FFC21A2CDBFE0B6B1BC21A6CD8
          61AD93EAECC5FD0B6BB06CFB2FAC6D086BB06187B54EAAB317F72FACC1B2EDBF
          B0B621ACC1861DD63AA9CE5EDCBFB006CBB6FFC2DA86B0061B7658EBA43A7B71
          FFC21A2CDBFE0B6B1BC21A6CD861AD93EAECC5FD0B6BB06CFB2FAC6D086BB061
          87B54EAAB317F72FACC1B2EDBFB0B621ACC1861DD63AA9CE5EDCBFB006CBB6FF
          C2DA86B0061B7658EBA43A7B71FFC21A2CDBFE0B6B1BC21A6CD861AD93EAECC5
          FD0B6BB06CFB2FAC6D086BB06187B54EAAB317F72FACC1B2EDBFB0B621ACC186
          1DD63AA9CE5EDCBFB006CBB6FFC2DA86B0061B7658EBA43A7B71FFC21A2CDBFE
          0B6B1BC21A6CD861AD93EAECC5FD0B6BB06CFB2FAC6D086BB06187B54EAAB317
          F72FACC1B2EDBFB0B621ACC1861DD63AA9CE5EDCBFB006CBB6FFC2DA86B0061B
          7658EBA43A7B71FFC21A2CDBFE0B6B1BC21A6CD861AD93EAECC5FD0B6BB06CFB
          2FAC6D086BB06187B54EAAB317F72FACC1B2EDBFB0B621ACC1861DD63AA9CE5E
          DCBFB006CBB6FFC2DA86B0061B7658EBA43A7B71FFC21A2CDBFE0B6B1BC21A6C
          D861AD93EAECC5FD0B6BB06CFB2FAC6D086BB06187B54EAAB317F72FACC1B2ED
          BFB0B621ACC1861DD63AA9CE5EDCBFB006CBB6FFC2DA86B0061B7658EBA43A7B
          71FFC21A2CDBFE0B6B1BC21A6CD861AD93EAECC5FD0B6BB06CFB2FAC6D086BB0
          6187B54EAAB317F72FACC1B2EDBFB0B621ACC1861DD63AA9CE5EDCBFB006CBB6
          FFC2DA86B0061B7658EBA43A7B71FFC21A2CDBFE0B6B1BC21A6CD861AD93EAEC
          C5FD0B6BB06CFB2FAC6D086BB06187B54EAAB317F72FACC1B2EDBFB0B621ACC1
          861DD63AA9CE5EDCBFB006CBB6FFC2DA86B0061B7658EBA43A7B71FFC21A2CDB
          FE0B6B1BC21A6CD861AD93EAECC5FD0B6BB06CFB2FAC6D086BB06187B54EAAB3
          17F72FACC1B2EDBFB0B621ACC1861DD63AA9CE5EDCBFB006CBB6FFC2DA86B006
          1B7658EBA43A7B71FFC21A2CDBFE0B6B1BC21A6CD861AD93EAECC5FD0B6BB06C
          FB2FAC6D086BB06187B54EAAB317F72FACC1B2EDBFB0B621ACC1861DD63AA9CE
          5EDCBFB006CBB6FFC2DA86B0061B7658EBA43A7B71FFC21A2CDBFE0B6B1BC21A
          6CD861AD93EAECC5FD0B6BB06CFB2FAC6D086BB06187B54EAAB317F72FACC1B2
          EDBFB0B621ACC1861DD63AA9CE5EDCBFB006CBB6FFC2DA86B0061B7658EBA43A
          7B71FFC21A2CDBFE0B6B1BC21A6CD861AD93EAECC5FD0B6BB06CFB2FAC6D086B
          B06187B54EAAB317F72FACC1B2EDBFB0B621ACC1861DD63AA9CE5EDCBFB006CB
          B6FFC2DA86B0061B7658EBA43A7B71FFC21A2CDBFE0B6B1BC21A6CD861AD93EA
          ECC5FD0B6BB06CFB2FAC6D086BB06187B54EAAB317F72FACC1B2EDBFB0B621AC
          C1861DD63AA9CE5EDCBFB006CBB6FFC2DA86B0061B7658EBA43A7B71FFC21A2C
          DBFE0B6B1BC21A6CD861AD93EAECC5FD0B6BB06CFB2FAC6D086BB06187B54EAA
          B317F72FACC1B2EDBFB0B621ACC1861DD63AA9CE5EDCBFB006CBB6FFC2DA86B0
          061B7658EBA43A7B71FFC21A2CDBFE0B6B1BC21A6CD861AD93EAECC5FD0B6BB0
          6CFB2FAC6D086BB06187B54EAAB317F72FACC1B2EDBFB0B621ACC1861DD63AA9
          CE5EDCBFB006CBB6FFC2DA86B0061B7658EBA43A7B71FFC21A2CDBFE0B6B1BC2
          1A6CD861AD93EAECC5FD0B6BB06CFB2FAC6D086BB06187B54EAAB317F72FACC1
          B2EDBFB0B621ACC1861DD63AA9CE5EDCBFB006CBB6FFC2DA86B0061B7658EBA4
          3A7B71FFC21A2CDBFE0B6B1BC21A6CD861AD93EAECC5FD0B6BB06CFB2FAC6D08
          6BB06187B54EAAB317F72FACC1B2EDBFB0B621ACC1861DD63AA9CE5EDCBFB006
          CBB6FFC2DA86B0061B7658EBA43A7B71FFC21A2CDBFE0B6B1BC21A6CD861AD93
          EAECC5FD0B6BB06CFB2FAC6D086BB06187B54EAAB317F72FACC1B2EDBFB0B621
          ACC1861DD63AA9CE5EDCBFB006CBB6FFC2DA86B0061B7658EBA43A7B71FFC21A
          2CDBFE670AEB07972F1F9DFD392A7D7509EB37E1BFEBDB07AC775F5D5EE167BF
          0C6BAEFBFFF4B3C8EF41AAB317F75F7FFF75614D75F6CB99E2EF3FD9FEFF1FD8
          834CD4505F89770000000049454E44AE426082}
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
        VirtualWidth = 120
        VirtualHeight = 100
        TileOffsetX = 0
        TileOffsetY = 0
        Proportional = False
        Scaled = True
        PixelOffsetModeHighQuality = True
        InterpolationModeHighQuality = True
      end>
    Left = 464
    Top = 192
  end
end
