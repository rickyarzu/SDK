inherited frmMDIRibbonToolbar: TfrmMDIRibbonToolbar
  ClientHeight = 658
  ClientWidth = 976
  ExplicitWidth = 992
  ExplicitHeight = 717
  TextHeight = 17
  inherited StatusBar: TStatusBar
    Top = 639
    Width = 976
    ExplicitLeft = 0
    ExplicitTop = 639
    ExplicitWidth = 976
  end
  inherited Panel4: TPanel
    Width = 976
    ExplicitWidth = 976
    inherited MenuButtonToolbar: TToolBar
      ButtonWidth = 40
      inherited ToolButton1: TToolButton
        ExplicitWidth = 8
      end
    end
    inherited ToolBarTopRight: TToolBar
      Left = 937
      ExplicitLeft = 937
    end
  end
  inherited SplitViewLeft: TSplitView
    Height = 597
    DoubleBuffered = True
    ExplicitHeight = 597
  end
  inherited pgcApplicationArea: TPageControl
    Width = 776
    Height = 597
    ExplicitLeft = 206
    ExplicitTop = 45
    ExplicitWidth = 776
    ExplicitHeight = 597
  end
  inherited MainMenu1: TMainMenu
    Left = 360
    Top = 232
  end
  object AdvPopupMenu1: TAdvPopupMenu
    Version = '2.7.1.12'
    UIStyle = tsCustom
    Left = 456
    Top = 184
  end
  object tmrWaitSpin: TTimer
    OnTimer = tmrWaitSpinTimer
    Left = 464
    Top = 272
  end
end
