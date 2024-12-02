object fmConnect: TfmConnect
  Left = 193
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Connect To Database'
  ClientHeight = 210
  ClientWidth = 328
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
    Width = 328
    Height = 166
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
    Left = 10
    Top = 76
    Width = 53
    Height = 13
    Caption = 'User Name'
  end
  object edDBName: TEdit
    Left = 108
    Top = 34
    Width = 215
    Height = 21
    TabOrder = 0
  end
  object edUserName: TEdit
    Left = 110
    Top = 73
    Width = 198
    Height = 21
    TabOrder = 1
  end
  object paButtons: TPanel
    Left = 0
    Top = 166
    Width = 328
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object buOk: TButton
      Left = 68
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
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
  object chLoginPrompt: TCheckBox
    Left = 110
    Top = 101
    Width = 198
    Height = 17
    Caption = 'Prompt for password'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
end
