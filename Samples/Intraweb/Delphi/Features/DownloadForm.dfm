object formDownload: TformDownload
  Left = 0
  Top = 0
  Width = 464
  Height = 330
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'Download demonstration'
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWLabel1: TIWLabel
    Left = 19
    Top = 240
    Width = 358
    Height = 16
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Please see "IWButton1.ScriptEvents.Onlick and also see: '
    RawText = False
  end
  object IWURL1: TIWURL
    Left = 19
    Top = 262
    Width = 309
    Height = 17
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    ScriptEvents = <>
    TargetOptions.AddressBar = False
    TargetOptions.Height = -1
    TargetOptions.Left = -1
    TargetOptions.Menu = False
    TargetOptions.Resizable = True
    TargetOptions.Scrollbars = True
    TargetOptions.Toolbar = False
    TargetOptions.Top = -1
    TargetOptions.Width = -1
    TargetOptions.WindowName = '_blank'
    TerminateApp = False
    URL = 'http://blogs.atozed.com/olaf/20061113.aspx'
    UseTarget = True
    FriendlyName = 'IWURL1'
    TabOrder = 3
    RawText = False
    Caption = 'http://blogs.atozed.com/olaf/20061113.aspx'
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 464
    Height = 29
    HorzScrollBar.Range = 193
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 491
    VertScrollBar.Visible = False
    Align = alTop
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    TabStop = True
    inherited IWFrameRegion: TIWRegion
      Width = 464
      Height = 491
      TabOrder = 2
      inherited IWMenu1: TIWMenu
        Width = 464
      end
    end
  end
  object IWRegion1: TIWRegion
    Left = 12
    Top = 49
    Width = 313
    Height = 177
    Cursor = crAuto
    RenderInvisibleControls = False
    TabOrder = 1
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = clNone
    ParentShowHint = False
    ShowHint = True
    ClipRegion = False
    ZIndex = -1
    Splitter = False
    object IWButton1: TIWButton
      Left = 230
      Top = 8
      Width = 75
      Height = 25
      Cursor = crAuto
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      Caption = 'Download'
      Color = 13160660
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWButton1'
      ScriptEvents = <
        item
          EventCode.Strings = (
            'ReleaseLock();'
            'GActivateLock=false;'
            'return true;')
          Event = 'onClick'
        end>
      TabOrder = 0
      OnClick = IWButton1Click
    end
    object lboxFiles: TIWListbox
      Left = 7
      Top = 8
      Width = 217
      Height = 153
      Cursor = crAuto
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      BGColor = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FocusColor = clNone
      AutoHideOnMenuActivation = False
      ItemsHaveValues = False
      NoSelectionText = '-- No Selection --'
      Required = False
      RequireSelection = True
      ScriptEvents = <>
      UseSize = False
      Editable = True
      TabOrder = 1
      SubmitOnAsyncEvent = True
      NonEditableAsLabel = True
      MaxItems = 0
      FriendlyName = 'lboxFiles'
      ItemIndex = 0
      MultiSelect = False
      Sorted = False
    end
  end
end
