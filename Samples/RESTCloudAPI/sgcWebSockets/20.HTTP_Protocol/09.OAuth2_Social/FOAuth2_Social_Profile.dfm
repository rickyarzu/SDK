object FRMOAuth2_Social_Profile: TFRMOAuth2_Social_Profile
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'sgcWebSockets OAuth2 Social Profile'
  ClientHeight = 118
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object Label1: TLabel
    Left = 57
    Top = 24
    Width = 14
    Height = 13
    Caption = 'Id:'
  end
  object Label2: TLabel
    Left = 40
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Name:'
  end
  object txtID: TEdit
    Left = 80
    Top = 21
    Width = 281
    Height = 21
    TabOrder = 0
  end
  object txtName: TEdit
    Left = 80
    Top = 53
    Width = 281
    Height = 21
    TabOrder = 1
  end
end
