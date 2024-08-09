object frameWebBrokerStarter: TframeWebBrokerStarter
  Left = 0
  Top = 0
  Width = 374
  Height = 54
  TabOrder = 0
  object btnStartServer: TButton
    Left = 144
    Top = 16
    Width = 89
    Height = 25
    Caption = 'Start Server'
    TabOrder = 0
  end
  object btnStopServer: TButton
    Left = 256
    Top = 16
    Width = 89
    Height = 25
    Caption = 'Stop Server'
    TabOrder = 1
  end
  object sedPort: TscSpinEdit
    Left = 64
    Top = 17
    Width = 66
    Height = 23
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
    UpDownKind = scupkDefault
    ValueType = scvtInteger
    MouseWheelSupport = True
    Value = 8081.000000000000000000
    DisplayType = scedtNumeric
    Transparent = False
    BorderKind = scebFrame
    TabOrder = 2
  end
end
