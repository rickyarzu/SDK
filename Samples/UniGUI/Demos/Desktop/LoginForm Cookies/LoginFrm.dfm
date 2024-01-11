object UniLoginForm1: TUniLoginForm1
  Left = 0
  Top = 0
  ClientHeight = 134
  ClientWidth = 368
  Caption = 'UniLoginForm1'
  OnShow = UniLoginFormShow
  Color = clBtnFace
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ActiveControl = UniEdit1
  PixelsPerInch = 96
  TextHeight = 13
  object UniCheckBox1: TUniCheckBox
    Left = 136
    Top = 64
    Width = 97
    Height = 17
    Hint = ''
    Checked = False
    Caption = 'Remember me!'
    TabOrder = 0
  end
  object UniEdit1: TUniEdit
    Left = 136
    Top = 8
    Width = 217
    Hint = ''
    Text = 'UniEdit1'
    TabOrder = 1
    Color = clWindow
  end
  object UniEdit2: TUniEdit
    Left = 136
    Top = 36
    Width = 217
    Hint = ''
    PasswordChar = '*'
    Text = 'UniEdit2'
    TabOrder = 2
    Color = clWindow
  end
  object UniLabel1: TUniLabel
    Left = 8
    Top = 17
    Width = 47
    Height = 13
    Hint = ''
    Caption = 'Id (demo)'
    TabOrder = 3
  end
  object UniLabel2: TUniLabel
    Left = 8
    Top = 45
    Width = 85
    Height = 13
    Hint = ''
    Caption = 'Passwoed (demo)'
    TabOrder = 4
  end
  object UniButton1: TUniButton
    Left = 278
    Top = 96
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'OK'
    TabOrder = 5
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 18
    Top = 96
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 6
  end
end
