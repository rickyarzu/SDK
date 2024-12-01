object fmConnect: TfmConnect
  Left = 192
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Connect To Database'
  ClientHeight = 166
  ClientWidth = 330
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
    Width = 330
    Height = 122
    Align = alClient
    Shape = bsFrame
  end
  object laDBName: TLabel
    Left = 8
    Top = 39
    Width = 77
    Height = 13
    Caption = 'Database Name'
  end
  object laUserName: TLabel
    Left = 8
    Top = 67
    Width = 53
    Height = 13
    Caption = 'User Name'
  end
  object laPassword: TLabel
    Left = 8
    Top = 95
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
  object edDBName: TEdit
    Left = 108
    Top = 38
    Width = 215
    Height = 21
    TabOrder = 1
  end
  object edUserName: TEdit
    Left = 108
    Top = 64
    Width = 215
    Height = 21
    TabOrder = 2
  end
  object edPassword: TEdit
    Left = 108
    Top = 91
    Width = 215
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object paButtons: TPanel
    Left = 0
    Top = 122
    Width = 330
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object buOk: TButton
      Left = 68
      Top = 10
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object buCancel: TButton
      Left = 184
      Top = 10
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
    Width = 215
    Height = 21
    TabOrder = 0
  end
  object dlgOpen: TOpenDialog
    DefaultExt = 'gdb'
    Filter = 'InterBase database files (*.gdb)|*.gdb|All Files (*.*)|*.*'
    Options = [ofReadOnly, ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = 'Open SQL File'
    Left = 6
    Top = 214
  end
end
