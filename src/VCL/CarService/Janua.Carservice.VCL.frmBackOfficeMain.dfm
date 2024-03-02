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
  end
  inherited Panel4: TPanel
    Width = 1028
    StyleElements = [seFont, seClient, seBorder]
    inherited ToolBarTopRight: TToolBar
      Left = 989
    end
  end
  inherited SplitViewLeft: TSplitView
    Height = 664
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pgcApplicationArea: TPageControl
    Width = 828
    Height = 664
  end
end
