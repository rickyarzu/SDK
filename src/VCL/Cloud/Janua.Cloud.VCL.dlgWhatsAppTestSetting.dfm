object dlgVCLCloudWhatsAppTestSetting: TdlgVCLCloudWhatsAppTestSetting
  Left = 0
  Top = 0
  Caption = 'Impostazioni e Test WhatsApp Message'
  ClientHeight = 359
  ClientWidth = 1037
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    1037
    359)
  TextHeight = 15
  object lbKey: TLabel
    Left = 32
    Top = 32
    Width = 144
    Height = 15
    Caption = 'Twilio WhatsApp Key (User)'
  end
  object Label1: TLabel
    Left = 32
    Top = 72
    Width = 122
    Height = 15
    Caption = 'Twilio WhatsApp Token'
  end
  object lbMetaWhatsAppPhone: TLabel
    Left = 32
    Top = 112
    Width = 122
    Height = 15
    Caption = 'Meta WhatsApp Phone'
  end
  object lbDefaultMessage: TLabel
    Left = 439
    Top = 8
    Width = 168
    Height = 15
    Caption = 'Messaggio approvato di Default'
  end
  object lbTestMessageID: TLabel
    Left = 32
    Top = 152
    Width = 134
    Height = 15
    Caption = 'Test Message Template ID'
  end
  object lbMessageTemplateID: TLabel
    Left = 32
    Top = 192
    Width = 152
    Height = 15
    Caption = 'Default Message Template ID'
  end
  object edKey: TEdit
    Left = 192
    Top = 29
    Width = 241
    Height = 23
    TabOrder = 0
  end
  object edToken: TEdit
    Left = 192
    Top = 69
    Width = 241
    Height = 23
    TabOrder = 1
  end
  object edPhone: TEdit
    Left = 192
    Top = 112
    Width = 241
    Height = 23
    TabOrder = 2
  end
  object edWAMesage: TMemo
    Left = 439
    Top = 29
    Width = 581
    Height = 193
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'edWAMesage')
    TabOrder = 3
    ExplicitWidth = 476
    ExplicitHeight = 178
  end
  object btnOK: TButton
    Left = 923
    Top = 326
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Salva'
    ModalResult = 1
    TabOrder = 4
    ExplicitLeft = 818
    ExplicitTop = 311
  end
  object btnUndo: TButton
    Left = 811
    Top = 326
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Annulla'
    ModalResult = 2
    TabOrder = 5
    ExplicitLeft = 706
    ExplicitTop = 311
  end
  object btnSendTest: TButton
    Left = 697
    Top = 326
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Invia Test TMS'
    TabOrder = 6
    OnClick = btnSendTestClick
    ExplicitLeft = 592
    ExplicitTop = 311
  end
  object grpTestMessage: TGroupBox
    Left = 32
    Top = 228
    Width = 988
    Height = 84
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Test Messaggio'
    TabOrder = 7
    ExplicitTop = 213
    ExplicitWidth = 883
    object Label2: TLabel
      Left = 176
      Top = 31
      Width = 144
      Height = 15
      Caption = 'Twilio WhatsApp Key (User)'
    end
    object edRecipient: TLabeledEdit
      Left = 32
      Top = 48
      Width = 121
      Height = 23
      EditLabel.Width = 105
      EditLabel.Height = 15
      EditLabel.Caption = 'Telefono Test (Dest.)'
      TabOrder = 0
      Text = '+393409111351'
    end
    object edDate: TDateTimePicker
      Left = 176
      Top = 48
      Width = 144
      Height = 23
      Date = 45595.000000000000000000
      Time = 0.728173495372175200
      TabOrder = 1
    end
    object edAddress: TLabeledEdit
      Left = 336
      Top = 48
      Width = 377
      Height = 23
      EditLabel.Width = 67
      EditLabel.Height = 15
      EditLabel.Caption = 'Indirizzo Test'
      TabOrder = 2
      Text = 'Via Ernesto Cabruna 43, 16166, Genova'
    end
  end
  object edTestMessageID: TEdit
    Left = 192
    Top = 152
    Width = 241
    Height = 23
    TabOrder = 8
  end
  object Edit2: TEdit
    Left = 192
    Top = 192
    Width = 241
    Height = 23
    TabOrder = 9
  end
  object btnTestCustom: TButton
    Left = 585
    Top = 326
    Width = 97
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Invia Test Custom'
    TabOrder = 10
    OnClick = btnSendTestClick
  end
  object btnTestDefault: TButton
    Left = 464
    Top = 326
    Width = 106
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Invia Test Default'
    TabOrder = 11
    OnClick = btnSendTestClick
  end
end
