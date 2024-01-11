object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 579
  ClientWidth = 834
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniToolBar1: TUniToolBar
    Left = 0
    Top = 0
    Width = 834
    Height = 32
    Hint = ''
    ButtonHeight = 28
    ButtonWidth = 44
    Images = UniNativeImageList1
    TabOrder = 0
    ParentColor = False
    Color = clBtnFace
    object UniToolButton1: TUniToolButton
      Left = 0
      Top = 0
      Hint = ''
      ImageIndex = 0
      Caption = 'UniToolButton1'
      TabOrder = 1
      OnClick = UniToolButton1Click
    end
    object UniToolButton2: TUniToolButton
      Left = 44
      Top = 0
      Width = 8
      Hint = ''
      Style = tbsSeparator
      Caption = 'UniToolButton2'
      TabOrder = 2
    end
    object UniToolButton3: TUniToolButton
      Left = 52
      Top = 0
      Hint = ''
      ImageIndex = 14
      Caption = 'UniToolButton3'
      TabOrder = 3
    end
    object UniToolButton4: TUniToolButton
      Left = 96
      Top = 0
      Hint = ''
      ImageIndex = 13
      Caption = 'UniToolButton4'
      TabOrder = 4
    end
    object UniToolButton5: TUniToolButton
      Left = 140
      Top = 0
      Width = 8
      Hint = ''
      Style = tbsSeparator
      Caption = 'UniToolButton5'
      TabOrder = 5
    end
    object UniToolButton6: TUniToolButton
      Left = 148
      Top = 0
      Hint = ''
      ImageIndex = 12
      Caption = 'UniToolButton6'
      TabOrder = 6
    end
    object UniToolButton7: TUniToolButton
      Left = 192
      Top = 0
      Hint = ''
      ImageIndex = 11
      Caption = 'UniToolButton7'
      TabOrder = 7
    end
    object UniToolButton8: TUniToolButton
      Left = 236
      Top = 0
      Hint = ''
      ImageIndex = 16
      Caption = 'UniToolButton8'
      TabOrder = 8
    end
    object UniToolButton9: TUniToolButton
      Left = 280
      Top = 0
      Hint = ''
      ImageIndex = 15
      Caption = 'UniToolButton9'
      TabOrder = 9
    end
    object UniToolButton10: TUniToolButton
      Left = 324
      Top = 0
      Width = 8
      Hint = ''
      Style = tbsSeparator
      Caption = 'UniToolButton10'
      TabOrder = 10
    end
  end
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 557
    Width = 834
    Hint = ''
    Panels = <
      item
        Alignment = taCenter
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
    SizeGrip = False
    Align = alBottom
    ParentColor = False
    Color = clWindow
  end
  object UniPageControl1: TUniPageControl
    Left = 200
    Top = 32
    Width = 506
    Height = 525
    Hint = ''
    Images = UniNativeImageList1
    Align = alClient
    TabOrder = 2
    OnChange = UniPageControl1Change
  end
  object UniTreeMenu1: TUniTreeMenu
    Left = 0
    Top = 32
    Width = 200
    Height = 525
    Hint = ''
    Items.FontData = {0100000000}
    SourceMenu = UniMenuItems1
    ExpanderOnly = False
    OnSelectionChange = UniTreeMenu1SelectionChange
  end
  object UniPanel1: TUniPanel
    Left = 706
    Top = 32
    Width = 128
    Height = 525
    Hint = ''
    Align = alRight
    TabOrder = 4
    ShowCaption = False
    Caption = 'UniPanel1'
    object UniButton1: TUniButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Add Node'
      TabOrder = 1
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 24
      Top = 40
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Delete Node'
      TabOrder = 2
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      Left = 24
      Top = 71
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Clear'
      TabOrder = 3
      OnClick = UniButton3Click
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
  object UniTimer1: TUniTimer
    Interval = 10000
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UniTimer1Timer
    Left = 368
    Top = 168
  end
end
