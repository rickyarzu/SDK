inherited frameSearchSelect: TframeSearchSelect
  Width = 414
  Height = 58
  ExplicitWidth = 414
  ExplicitHeight = 58
  inherited pnlFrameSelector: TPanel
    Width = 373
    Height = 58
    Align = alClient
    ExplicitWidth = 369
    ExplicitHeight = 58
    inherited lbDisplayText: TLabel
      Width = 354
      Height = 21
      Align = alClient
      ExplicitWidth = 350
      ExplicitHeight = 18
    end
    object lbID: TLabel
      AlignWithMargins = True
      Left = 363
      Top = 3
      Width = 7
      Height = 21
      Margins.Bottom = 0
      Align = alRight
      Alignment = taCenter
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 359
      ExplicitHeight = 14
    end
    object pnlSearch: TPanel
      Left = 0
      Top = 24
      Width = 373
      Height = 34
      Align = alBottom
      BevelEdges = []
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      ExplicitWidth = 369
      object btnSearch: TButton
        AlignWithMargins = True
        Left = 340
        Top = 3
        Width = 31
        Height = 28
        Margins.Left = 2
        Margins.Right = 2
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 336
        ExplicitHeight = 27
      end
      object edtSearch: TEdit
        AlignWithMargins = True
        Left = 2
        Top = 3
        Width = 335
        Height = 28
        Margins.Left = 2
        Margins.Right = 1
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 331
        ExplicitHeight = 26
      end
    end
  end
  object pnlCheck: TPanel
    Left = 373
    Top = 0
    Width = 41
    Height = 58
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 145
    ExplicitHeight = 56
    object tsCheck: TToggleSwitch
      AlignWithMargins = True
      Left = 2
      Top = 8
      Width = 37
      Height = 42
      Margins.Left = 2
      Margins.Top = 8
      Margins.Right = 2
      Margins.Bottom = 8
      Align = alClient
      ShowStateCaption = False
      TabOrder = 0
      OnClick = tsCheckClick
      ExplicitWidth = 50
      ExplicitHeight = 20
    end
  end
  object JanuaVCLSearchController1: TJanuaVCLSearchController
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edtSearch
    SearchButton = btnSearch
    Left = 160
  end
end
