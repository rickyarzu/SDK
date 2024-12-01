object fmConnect: TfmConnect
  Left = 192
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Connect To Database'
  ClientHeight = 212
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
    Height = 168
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
    Left = 26
    Top = 116
    Width = 53
    Height = 13
    Caption = 'User Name'
    Enabled = False
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
    Top = 34
    Width = 215
    Height = 21
    TabOrder = 1
  end
  object edUserName: TEdit
    Left = 126
    Top = 113
    Width = 198
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object paButtons: TPanel
    Left = 0
    Top = 168
    Width = 330
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
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
  object edHost: TEdit
    Left = 108
    Top = 8
    Width = 215
    Height = 21
    TabOrder = 0
  end
  object raNTSecurity: TRadioButton
    Left = 8
    Top = 62
    Width = 317
    Height = 17
    Caption = 'Use Windows NT Integrated Security'
    Checked = True
    TabOrder = 2
    TabStop = True
    OnClick = raSpecificUserClick
  end
  object raSpecificUser: TRadioButton
    Left = 8
    Top = 87
    Width = 317
    Height = 17
    Caption = 'Use a specific user name and password'
    TabOrder = 3
    TabStop = True
    OnClick = raSpecificUserClick
  end
  object chLoginPrompt: TCheckBox
    Left = 126
    Top = 141
    Width = 198
    Height = 17
    Caption = 'Prompt for password'
    Enabled = False
    TabOrder = 6
  end
end
