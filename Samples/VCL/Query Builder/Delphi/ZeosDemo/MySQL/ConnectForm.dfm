object fmConnect: TfmConnect
  Left = 192
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Connect To Database'
  ClientHeight = 162
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 487
    Height = 118
    Align = alClient
    Shape = bsFrame
  end
  object laDBName: TLabel
    Left = 8
    Top = 35
    Width = 77
    Height = 13
    Caption = 'Database Name'
  end
  object laUserName: TLabel
    Left = 8
    Top = 63
    Width = 53
    Height = 13
    Caption = 'User Name'
  end
  object laPassword: TLabel
    Left = 8
    Top = 91
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object laHost: TLabel
    Left = 8
    Top = 11
    Width = 22
    Height = 13
    Caption = 'Host'
  end
  object laPort: TLabel
    Left = 243
    Top = 11
    Width = 19
    Height = 13
    Caption = 'Port'
  end
  object Label1: TLabel
    Left = 347
    Top = 11
    Width = 39
    Height = 13
    Caption = 'Protocol'
  end
  object edDBName: TEdit
    Left = 108
    Top = 34
    Width = 371
    Height = 21
    TabOrder = 2
  end
  object edUserName: TEdit
    Left = 108
    Top = 60
    Width = 371
    Height = 21
    TabOrder = 3
  end
  object edPassword: TEdit
    Left = 108
    Top = 87
    Width = 371
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
  object paButtons: TPanel
    Left = 0
    Top = 118
    Width = 487
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object buOk: TButton
      Left = 311
      Top = 11
      Width = 75
      Height = 25
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object buCancel: TButton
      Left = 404
      Top = 11
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object edHost: TEdit
    Left = 108
    Top = 8
    Width = 125
    Height = 21
    TabOrder = 0
  end
  object edPort: TEdit
    Left = 269
    Top = 8
    Width = 70
    Height = 21
    TabOrder = 1
  end
  object ZProtocol: TComboBox
    Left = 392
    Top = 7
    Width = 87
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'mysql-3.23'
    Items.Strings = (
      '')
  end
end
