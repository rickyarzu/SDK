inherited frmTest: TfrmTest
  Caption = 'frmTest'
  ClientHeight = 345
  ClientWidth = 423
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 439
  ExplicitHeight = 384
  TextHeight = 17
  inherited StatusBar: TStatusBar
    Top = 326
    Width = 423
  end
  object SpinEdit1: TSpinEdit
    Left = 280
    Top = 48
    Width = 121
    Height = 27
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object Edit1: TEdit
    Left = 280
    Top = 88
    Width = 121
    Height = 25
    TabOrder = 1
    Text = 'Edit1'
  end
  object JvDateEdit1: TJvDateEdit
    Left = 280
    Top = 128
    Width = 121
    Height = 25
    ShowNullDate = False
    TabOrder = 2
  end
  object JvCalcEdit1: TJvCalcEdit
    Left = 280
    Top = 168
    Width = 121
    Height = 25
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
  end
  object Memo1: TMemo
    Left = 280
    Top = 216
    Width = 121
    Height = 97
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 423
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 5
  end
end
