object formPdfDemo: TformPdfDemo
  Left = 0
  Top = 0
  Width = 535
  Height = 524
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'PDF Demonstration'
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = False
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 200
    Top = 164
    Width = 75
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Open'
    Color = 13160660
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <>
    TabOrder = 0
    OnClick = IWButton1Click
  end
  object IWText1: TIWText
    Left = 8
    Top = 48
    Width = 289
    Height = 41
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clNone
    ConvertSpaces = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      'Please select which PDF you wold like to see:')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWRadioGroup1: TIWRadioGroup
    Left = 8
    Top = 96
    Width = 281
    Height = 41
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    SubmitOnAsyncEvent = True
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWRadioGroup1'
    ItemIndex = 0
    Items.Strings = (
      'IntraWeb Cover Page'
      'Installing IntraWeb')
    Layout = glVertical
    ScriptEvents = <>
    TabOrder = -1
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 535
    Height = 25
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
      Width = 535
      Height = 491
      TabOrder = 1
      inherited IWMenu1: TIWMenu
        Width = 535
      end
    end
  end
end
