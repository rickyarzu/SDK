object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 355
  ClientWidth = 652
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniEdit1: TUniEdit
    Left = 112
    Top = 45
    Width = 177
    Hint = ''
    Text = ''
    TabOrder = 0
    EmptyText = '+99-(999)-999-9999'
    InputMask.Mask = '+99-(999)-999-9999'
    InputMask.MaskChar = '_'
  end
  object UniLabel1: TUniLabel
    Left = 40
    Top = 54
    Width = 50
    Height = 13
    Hint = ''
    Caption = 'Telephone'
    TabOrder = 1
  end
  object UniEdit2: TUniEdit
    Left = 112
    Top = 93
    Width = 177
    Hint = ''
    Text = ''
    TabOrder = 2
    EmptyText = '999.999.999.999'
    InputMask.Mask = '999.999.999.999'
    InputMask.MaskChar = '_'
  end
  object UniLabel2: TUniLabel
    Left = 40
    Top = 102
    Width = 26
    Height = 13
    Hint = ''
    Caption = 'IPv4:'
    TabOrder = 3
  end
  object UniLabel3: TUniLabel
    Left = 40
    Top = 150
    Width = 26
    Height = 13
    Hint = ''
    Caption = 'IPv6:'
    TabOrder = 4
  end
  object UniEdit3: TUniEdit
    Left = 112
    Top = 141
    Width = 241
    Hint = ''
    Text = ''
    TabOrder = 5
    EmptyText = '****:****:****:****:****:****:****:****'
    InputMask.Mask = '****:****:****:****:****:****:****:****'
    InputMask.MaskChar = '_'
  end
  object UniEdit4: TUniEdit
    Left = 112
    Top = 189
    Width = 177
    Hint = ''
    Text = ''
    TabOrder = 6
    EmptyText = '999999'
    InputMask.Mask = '999999'
    InputMask.MaskChar = '_'
  end
  object UniLabel4: TUniLabel
    Left = 40
    Top = 198
    Width = 53
    Height = 13
    Hint = ''
    Caption = 'Post Code:'
    TabOrder = 7
  end
  object UniMemo1: TUniMemo
    Left = 408
    Top = 45
    Width = 185
    Height = 217
    Hint = ''
    TabOrder = 8
  end
  object UniShowMemoButton: TUniButton
    Left = 192
    Top = 288
    Width = 113
    Height = 25
    Hint = ''
    Caption = 'Show in Memo'
    TabOrder = 9
    OnClick = UniShowMemoButtonClick
  end
end
