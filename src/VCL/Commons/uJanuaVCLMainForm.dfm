inherited JanuaVCLMainForm: TJanuaVCLMainForm
  Caption = 'JanuaVCLMainFormModel'
  ClientHeight = 527
  ClientWidth = 835
  Menu = MainMenu1
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 851
  ExplicitHeight = 586
  TextHeight = 17
  inherited StatusBar: TStatusBar
    Top = 508
    Width = 835
    ExplicitTop = 508
    ExplicitWidth = 835
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 835
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    Color = clHighlight
    TabOrder = 0
    object MenuButtonToolbar: TToolBar
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 8
      Height = 36
      Align = alLeft
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 25
      Color = clYellow
      DrawingStyle = dsGradient
      GradientEndColor = clHighlight
      GradientStartColor = clHighlight
      ParentColor = False
      TabOrder = 0
      Transparent = True
      object ToolButton1: TToolButton
        AlignWithMargins = True
        Left = 0
        Top = 0
        Hint = 'Collapse'
        AutoSize = True
        Caption = 'actMenu'
        ImageIndex = 0
      end
    end
    object ToolBarTopRight: TToolBar
      AlignWithMargins = True
      Left = 796
      Top = 3
      Width = 36
      Height = 36
      Align = alRight
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 36
      DrawingStyle = dsGradient
      GradientEndColor = clHighlight
      GradientStartColor = clHighlight
      TabOrder = 1
      Transparent = True
    end
  end
  object SplitViewLeft: TSplitView
    Left = 0
    Top = 42
    Width = 200
    Height = 466
    Color = clHighlight
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 1
  end
  object pgcApplicationArea: TPageControl
    Left = 200
    Top = 42
    Width = 635
    Height = 466
    Align = alClient
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 408
    Top = 272
    object File1: TMenuItem
      Caption = 'File'
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object Style1: TMenuItem
      Caption = 'Style'
    end
  end
end
