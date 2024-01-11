object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 545
  ClientWidth = 852
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniToolBar1: TUniToolBar
    Left = 0
    Top = 0
    Width = 852
    Height = 32
    Hint = ''
    ButtonHeight = 26
    ButtonWidth = 26
    Images = UniNativeImageList1
    BorderWidth = 1
    Anchors = [akLeft, akTop, akRight]
    Align = alTop
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
    end
    object UniToolButton2: TUniToolButton
      Left = 26
      Top = 0
      Hint = ''
      ImageIndex = 1
      Caption = 'UniToolButton2'
      TabOrder = 2
    end
    object UniToolButton3: TUniToolButton
      Left = 52
      Top = 0
      Hint = ''
      ImageIndex = 5
      Caption = 'UniToolButton3'
      TabOrder = 3
      ExplicitLeft = 49
    end
    object UniToolButton4: TUniToolButton
      Left = 78
      Top = 0
      Width = 8
      Hint = ''
      Style = tbsSeparator
      Caption = 'UniToolButton4'
      TabOrder = 4
      ExplicitLeft = 69
      ExplicitHeight = 22
    end
    object UniToolButton5: TUniToolButton
      Left = 86
      Top = 0
      Hint = ''
      ImageIndex = 7
      Caption = 'UniToolButton5'
      TabOrder = 5
      ExplicitLeft = 80
    end
    object UniToolButton6: TUniToolButton
      Left = 112
      Top = 0
      Hint = ''
      ImageIndex = 6
      Caption = 'UniToolButton6'
      TabOrder = 6
      ExplicitLeft = 103
    end
    object UniToolButton7: TUniToolButton
      Left = 138
      Top = 0
      Hint = ''
      ImageIndex = 5
      Caption = 'UniToolButton7'
      TabOrder = 7
      ExplicitLeft = 126
    end
    object UniToolButton8: TUniToolButton
      Left = 164
      Top = 0
      Width = 8
      Hint = ''
      Style = tbsSeparator
      Caption = 'UniToolButton8'
      TabOrder = 8
      ExplicitLeft = 146
      ExplicitHeight = 22
    end
    object UniToolButton9: TUniToolButton
      Left = 172
      Top = 0
      Hint = ''
      ImageIndex = 4
      Caption = 'UniToolButton9'
      TabOrder = 9
      ExplicitLeft = 157
    end
  end
  object UniButton1: TUniButton
    Left = 274
    Top = 456
    Width = 135
    Height = 57
    Hint = ''
    Caption = 'UniButton1'
    TabOrder = 1
    Scale = bbsLarge
    Images = UniNativeImageList1
    ImageIndex = 6
  end
  object UniPageControl1: TUniPageControl
    Left = 248
    Top = 144
    Width = 489
    Height = 289
    Hint = ''
    ActivePage = UniTabSheet4
    Images = UniNativeImageList1
    TabOrder = 2
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      ImageIndex = 0
      Caption = 'UniTabSheet1'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 489
      ExplicitHeight = 289
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      ImageIndex = 1
      Caption = 'UniTabSheet2'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 489
      ExplicitHeight = 289
    end
    object UniTabSheet3: TUniTabSheet
      Hint = ''
      ImageIndex = 3
      Caption = 'UniTabSheet3'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 489
      ExplicitHeight = 289
    end
    object UniTabSheet4: TUniTabSheet
      Hint = ''
      ImageIndex = 7
      Caption = 'TabSheet4'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 489
      ExplicitHeight = 289
    end
  end
  object UniTreeView1: TUniTreeView
    Left = 18
    Top = 120
    Width = 207
    Height = 393
    Hint = ''
    Items.NodeData = {
      0304000000280000000100000000000000FFFFFFFFFFFFFFFF00000000000000
      000100000001054900740065006D003100280000000200000000000000FFFFFF
      FFFFFFFFFF00000000000000000000000001054900740065006D003200280000
      000300000000000000FFFFFFFFFFFFFFFF000000000000000000000000010549
      00740065006D003300280000000400000000000000FFFFFFFFFFFFFFFF000000
      00000000000000000001054900740065006D0034002800000005000000000000
      00FFFFFFFFFFFFFFFF00000000000000000000000001054900740065006D0035
      00}
    Items.FontData = {
      0104000000FFFFFFFF01000000FFFFFFFF00000000FFFFFFFF00000000FFFFFF
      FF00000000FFFFFFFF00000000}
    Images = UniNativeImageList1
    TabOrder = 3
    Color = clWindow
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 248
    Top = 56
    Images = {
      08000000000000000610000000616464726573732D626F6F6B3B66613B000000
      00060B00000069642D636172643B66613B000000000610000000636C6F75642D
      75706C6F61643B66613B00000000060C00000077686174736170703B66613B00
      0000000609000000706C616E653B66613B00000000060B00000063632D766973
      613B66613B00000000060B000000796F75747562653B66613B00000000060D00
      0000626174746572792D343B66613B}
  end
end
