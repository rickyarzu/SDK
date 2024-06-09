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
    ExplicitTop = 520
    ExplicitWidth = 876
  end
  inherited Panel4: TPanel
    Width = 976
    ExplicitWidth = 876
    inherited MenuButtonToolbar: TToolBar
      ButtonWidth = 40
      inherited ToolButton1: TToolButton
        ExplicitWidth = 8
      end
    end
    inherited ToolBarTopRight: TToolBar
      Left = 937
      ExplicitLeft = 837
    end
  end
  inherited SplitViewLeft: TSplitView
    Height = 597
    DoubleBuffered = True
    ExplicitLeft = -6
    ExplicitTop = 45
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
  object AdvPopupMenu1: TAdvPopupMenu
    Version = '2.7.1.12'
    UIStyle = tsCustom
    Left = 456
    Top = 184
  end
  object tmrWaitSpin: TTimer
    OnTimer = tmrWaitSpinTimer
    Left = 496
    Top = 288
  end
end
