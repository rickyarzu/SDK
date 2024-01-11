object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 420
  ClientWidth = 662
  Caption = 'MainmForm'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimNestedList1: TUnimNestedList
    Left = 0
    Top = 0
    Width = 217
    Height = 420
    Hint = ''
    Align = alLeft
    Items.FontData = {0100000000}
    Images = UniNativeImageList1
    SourceMenu = UniMenuItems1
    OnBackClick = UnimNestedList1BackClick
    OnLeafClick = UnimNestedList1LeafClick
  end
  object UnimPanel1: TUnimPanel
    Left = 217
    Top = 0
    Width = 445
    Height = 420
    Hint = ''
    Align = alClient
    Color = 15263976
    TitleAlign = taCenter
    TitleVisible = True
  end
  object UniMenuItems1: TUniMenuItems
    Images = UniNativeImageList1
    Left = 120
    Top = 232
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
      Tag = 99
      Caption = 'Exit'
      ImageIndex = 5
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Width = 22
    Height = 22
    Left = 104
    Top = 104
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
end
