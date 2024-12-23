inherited frmCarserviceMain: TfrmCarserviceMain
  Caption = 'Car Service Main Application'
  ClientHeight = 574
  ClientWidth = 886
  WindowState = wsMaximized
  ExplicitWidth = 902
  ExplicitHeight = 633
  TextHeight = 17
  inherited StatusBar: TStatusBar
    Top = 555
    Width = 886
    ExplicitTop = 555
    ExplicitWidth = 886
  end
  inherited Panel4: TPanel
    Width = 886
    ExplicitWidth = 886
    inherited ToolBarTopRight: TToolBar
      Left = 847
      ExplicitLeft = 847
    end
  end
  inherited SplitViewLeft: TSplitView
    Height = 513
    DoubleBuffered = True
    ExplicitHeight = 513
  end
  inherited pgcApplicationArea: TPageControl
    Width = 686
    Height = 513
    ExplicitWidth = 686
    ExplicitHeight = 513
  end
  inherited MainMenu1: TMainMenu
    Top = 264
  end
  inherited AdvPopupMenu1: TAdvPopupMenu
    Left = 360
    Top = 200
  end
  inherited tmrWaitSpin: TTimer
    Left = 272
    Top = 224
  end
end
