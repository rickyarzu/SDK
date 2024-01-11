object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 579
  ClientWidth = 911
  Caption = 'MainForm'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UniToolBar1: TUnimToolBar
    Left = 0
    Top = 0
    Width = 911
    Height = 48
    Hint = ''
    Images = UniNativeImageList1
    Caption = ''
    object UniToolButton1: TUnimToolButton
      Left = 0
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'UniToolButton1'
      ImageIndex = 0
      OnClick = UniToolButton1Click
    end
    object UniToolButton2: TUnimToolButton
      Left = 48
      Top = 0
      Width = 8
      Height = 48
      Hint = ''
      Style = tbsSeparator
      Caption = 'UniToolButton2'
    end
    object UniToolButton3: TUnimToolButton
      Left = 56
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'UniToolButton3'
      ImageIndex = 14
    end
    object UniToolButton4: TUnimToolButton
      Left = 104
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'UniToolButton4'
      ImageIndex = 13
    end
    object UniToolButton5: TUnimToolButton
      Left = 152
      Top = 0
      Width = 8
      Height = 48
      Hint = ''
      Style = tbsSeparator
      Caption = 'UniToolButton5'
    end
    object UniToolButton6: TUnimToolButton
      Left = 160
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'UniToolButton6'
      ImageIndex = 12
    end
    object UniToolButton7: TUnimToolButton
      Left = 208
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'UniToolButton7'
      ImageIndex = 11
    end
    object UniToolButton8: TUnimToolButton
      Left = 256
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'UniToolButton8'
      ImageIndex = 16
    end
    object UniToolButton9: TUnimToolButton
      Left = 304
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'UniToolButton9'
      ImageIndex = 15
    end
    object UniToolButton10: TUnimToolButton
      Left = 352
      Top = 0
      Width = 8
      Height = 48
      Hint = ''
      Style = tbsSeparator
      Caption = 'UniToolButton10'
    end
  end
  object UnimTabPanel1: TUnimTabPanel
    Left = 200
    Top = 48
    Width = 544
    Height = 531
    Hint = ''
    Align = alClient
    OnChange = UnimTabPanel1Change
  end
  object UniTreeMenu1: TUnimTreeMenu
    Left = 0
    Top = 48
    Width = 200
    Height = 531
    Hint = ''
    Items.FontData = {0100000000}
    SourceMenu = UniMenuItems1
    ExpanderOnly = False
    OnSelectionChange = UniTreeMenu1SelectionChange
  end
  object UniPanel1: TUnimPanel
    Left = 744
    Top = 48
    Width = 167
    Height = 531
    Hint = ''
    Align = alRight
    object UniButton1: TUnimButton
      Left = 6
      Top = 6
      Width = 150
      Height = 47
      Hint = ''
      Caption = 'Add Node'
      OnClick = UniButton1Click
    end
    object UniButton2: TUnimButton
      Left = 6
      Top = 59
      Width = 150
      Height = 47
      Hint = ''
      Caption = 'Delete Node'
      OnClick = UniButton2Click
    end
    object UnimButton1: TUnimButton
      Left = 6
      Top = 112
      Width = 150
      Height = 47
      Hint = ''
      Caption = 'Clear'
      OnClick = UnimButton1Click
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 96
    Top = 128
    Images = {
      1100000000000000060B0000006E617669636F6E3B66613B00000000060B0000
      006465736B746F703B66613B00000000060C000000656E76656C6F70653B6661
      3B000000000608000000757365723B66613B00000000060E0000006C696E652D
      63686172743B66613B00000000061000000077696E646F772D636C6F73653B66
      613B000000000608000000736176653B66613B00000000060800000065646974
      3B66613B0000000006070000006375743B66613B00000000060D000000626172
      2D63686172743B66613B00000000060D0000007069652D63686172743B66613B
      00000000060C000000626F6F6B6D61726B3B66613B00000000060C0000006361
      6C656E6461723B66613B000000000608000000666565643B66613B0000000006
      070000006661783B66613B000000000609000000696D6167653B66613B000000
      000609000000696E626F783B66613B}
  end
  object UniMenuItems1: TUniMenuItems
    Images = UniNativeImageList1
    Left = 112
    Top = 256
    object Dashborad1: TUniMenuItem
      Caption = 'Dashboard'
      ImageIndex = 1
      object Save1: TUniMenuItem
        Caption = 'Save'
        ImageIndex = 6
      end
    end
    object Email1: TUniMenuItem
      Caption = 'Email'
      ImageIndex = 2
    end
    object Profile1: TUniMenuItem
      Caption = 'Profile'
      ImageIndex = 3
      object Edit1: TUniMenuItem
        Caption = 'Edit'
        ImageIndex = 7
      end
      object Delete1: TUniMenuItem
        Caption = 'Delete'
        ImageIndex = 8
      end
    end
    object Charts1: TUniMenuItem
      Caption = 'Charts'
      ImageIndex = 4
      object Bar1: TUniMenuItem
        Caption = 'Bar'
        ImageIndex = 9
      end
      object Pie1: TUniMenuItem
        Caption = 'Pie'
        ImageIndex = 10
      end
    end
    object Exit1: TUniMenuItem
      Caption = 'Exit'
      ImageIndex = 5
      OnClick = Exit1Click
    end
  end
end
