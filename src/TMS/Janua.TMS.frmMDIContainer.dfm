inherited frmVCLJanuaMDIContainer: TfrmVCLJanuaMDIContainer
  Caption = ''
  ClientHeight = 533
  ClientWidth = 860
  Font.Height = -12
  FormStyle = fsMDIForm
  Menu = MainMenu1
  ExplicitWidth = 876
  ExplicitHeight = 592
  TextHeight = 15
  inherited StatusBar: TStatusBar
    Top = 514
    Width = 860
    ExplicitLeft = 0
    ExplicitTop = 470
    ExplicitWidth = 772
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 860
    Height = 42
    Align = alTop
    BevelOuter = bvNone
    Color = clHighlight
    TabOrder = 0
    ExplicitWidth = 772
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
      Left = 821
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
      ExplicitLeft = 733
    end
  end
  object SplitViewLeft: TSplitView
    Left = 0
    Top = 75
    Width = 200
    Height = 439
    Color = clHighlight
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 1
    ExplicitHeight = 395
  end
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 860
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitWidth = 772
    object pnlLeftBar: TPanel
      Left = 0
      Top = 0
      Width = 199
      Height = 33
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object SearchBox1: TSearchBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 193
        Height = 27
        Align = alClient
        TabOrder = 0
        Text = 'SearchBox1'
        ExplicitHeight = 23
      end
    end
    object FormTabsBar2: TFormTabsBar
      Left = 199
      Top = 0
      Width = 661
      Height = 33
      Align = alClient
      ParentColor = False
      TabOptions.ShowFormIcon = True
      TabOptions.ShowCloseButton = True
      ShowTabsMenuButton = True
      ExplicitWidth = 573
    end
  end
  object AdvPopupMenu1: TAdvPopupMenu
    Version = '2.7.1.12'
    UIStyle = tsCustom
    Left = 256
    Top = 104
  end
  object MainMenu1: TMainMenu
    Left = 176
    Top = 176
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
  object tmrWaitSpin: TTimer
    Left = 296
    Top = 176
  end
end
