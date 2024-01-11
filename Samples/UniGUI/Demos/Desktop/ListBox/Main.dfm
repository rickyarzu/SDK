object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 557
  ClientWidth = 542
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniListBox1: TUniListBox
    Left = 24
    Top = 40
    Width = 192
    Height = 201
    Items.Strings = (
      'A'
      'B'
      'C'
      'D'
      'E')
    ItemIndex = 3
    TabOrder = 0
  end
  object UniListBox2: TUniListBox
    Left = 24
    Top = 288
    Width = 192
    Height = 233
    Items.Strings = (
      'A'
      'B'
      'C'
      'D'
      'E'
      'F'
      'G'
      'H'
      'I')
    TabOrder = 1
    MultiSelect = True
  end
  object UniLabel1: TUniLabel
    Left = 24
    Top = 21
    Width = 60
    Height = 13
    Caption = 'Single Select'
    TabOrder = 2
  end
  object UniLabel2: TUniLabel
    Left = 24
    Top = 269
    Width = 54
    Height = 13
    Caption = 'Multi Select'
    TabOrder = 3
  end
  object UniButton1: TUniButton
    Left = 222
    Top = 416
    Width = 100
    Height = 25
    Caption = 'Clear Selection'
    TabOrder = 4
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 222
    Top = 385
    Width = 100
    Height = 25
    Caption = 'Multi Select'
    TabOrder = 5
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 222
    Top = 136
    Width = 100
    Height = 25
    Caption = '->'
    TabOrder = 6
    OnClick = UniButton3Click
  end
  object UniListBox3: TUniListBox
    Left = 328
    Top = 40
    Width = 192
    Height = 201
    TabOrder = 7
  end
  object UniButton4: TUniButton
    Left = 222
    Top = 354
    Width = 100
    Height = 25
    Caption = 'Copy Selected'
    TabOrder = 8
    OnClick = UniButton4Click
  end
  object UniListBox4: TUniListBox
    Left = 328
    Top = 288
    Width = 192
    Height = 233
    TabOrder = 9
    MultiSelect = True
  end
end
