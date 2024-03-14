inherited frmVCLCarServiceBackOfficeMain: TfrmVCLCarServiceBackOfficeMain
  Caption = 'Pikapp Back Office'
  ClientHeight = 725
  ClientWidth = 1028
  Font.Height = -12
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1044
  ExplicitHeight = 784
  TextHeight = 15
  inherited StatusBar: TStatusBar
    Top = 706
    Width = 1028
    ExplicitLeft = 0
    ExplicitTop = 706
    ExplicitWidth = 1028
  end
  inherited Panel4: TPanel
    Width = 1028
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1028
    inherited MenuButtonToolbar: TToolBar
      inherited ToolButton1: TToolButton
        ExplicitWidth = 8
      end
    end
    inherited ToolBarTopRight: TToolBar
      Left = 989
      ExplicitLeft = 989
    end
  end
  inherited SplitViewLeft: TSplitView
    Height = 664
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = -6
    ExplicitTop = 45
    ExplicitHeight = 664
  end
  inherited pgcApplicationArea: TPageControl
    Width = 828
    Height = 664
    ExplicitWidth = 828
    ExplicitHeight = 664
  end
end
