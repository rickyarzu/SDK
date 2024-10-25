object dlgVCLCloudWhatsAppTestSetting: TdlgVCLCloudWhatsAppTestSetting
  Left = 0
  Top = 0
  Caption = 'Impostazioni e Test WhatsApp Message'
  ClientHeight = 269
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
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
  object Edit1: TEdit
    Left = 192
    Top = 29
    Width = 241
    Height = 23
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 192
    Top = 69
    Width = 241
    Height = 23
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 192
    Top = 112
    Width = 241
    Height = 23
    TabOrder = 2
    Text = 'Edit1'
  end
  object edWAMesage: TMemo
    Left = 439
    Top = 29
    Width = 323
    Height = 106
    Lines.Strings = (
      'edWAMesage')
    TabOrder = 3
  end
end
