inherited frmMDIRibbonToolbar: TfrmMDIRibbonToolbar
  ClientHeight = 539
  ClientWidth = 876
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 892
  ExplicitHeight = 598
  TextHeight = 17
  inherited StatusBar: TStatusBar
    Top = 520
    Width = 876
    ExplicitTop = 520
    ExplicitWidth = 876
  end
  inherited Panel4: TPanel
    Width = 876
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 876
    inherited ToolBarTopRight: TToolBar
      Left = 837
      ExplicitLeft = 837
    end
  end
  inherited SplitViewLeft: TSplitView
    Height = 478
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 478
  end
  inherited pgcApplicationArea: TPageControl
    Width = 676
    Height = 478
    ExplicitWidth = 676
    ExplicitHeight = 478
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
