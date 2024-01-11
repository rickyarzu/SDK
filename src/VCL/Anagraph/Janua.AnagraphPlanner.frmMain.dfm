inherited frmAnagraphPlannerMain: TfrmAnagraphPlannerMain
  Caption = 'Anagraph Planner'
  ClientHeight = 709
  ClientWidth = 902
  WindowState = wsMaximized
  StyleElements = [seFont, seClient, seBorder]
  OnDestroy = FormDestroy
  ExplicitWidth = 918
  ExplicitHeight = 768
  TextHeight = 17
  inherited StatusBar: TStatusBar
    Top = 690
    Width = 902
    ExplicitTop = 690
    ExplicitWidth = 902
  end
  inherited Panel4: TPanel
    Width = 902
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 902
    inherited ToolBarTopRight: TToolBar
      Left = 863
      ExplicitLeft = 863
    end
  end
  inherited SplitViewLeft: TSplitView
    Height = 648
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 648
  end
  inherited pgcApplicationArea: TPageControl
    Width = 702
    Height = 648
    ExplicitWidth = 702
    ExplicitHeight = 648
  end
  inherited MainMenu1: TMainMenu
    Left = 360
    Top = 264
  end
  inherited AdvPopupMenu1: TAdvPopupMenu
    Left = 360
    Top = 200
  end
end
