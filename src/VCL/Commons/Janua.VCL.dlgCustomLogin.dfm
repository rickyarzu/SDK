object dlgVCLCustomLogin: TdlgVCLCustomLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 237
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    534
    237)
  TextHeight = 17
  object HTMLabel1: TLabel
    Left = 260
    Top = 82
    Width = 56
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'Password'
    Transparent = True
    ExplicitLeft = 261
  end
  object lbUsername: TLabel
    Left = 259
    Top = 25
    Width = 82
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'Nome Utente '
    Transparent = True
    ExplicitLeft = 295
  end
  object imgLogo: TImage
    Left = 0
    Top = 8
    Width = 254
    Height = 171
    Stretch = True
  end
  object btnUndo: TButton
    Left = 260
    Top = 185
    Width = 89
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Annulla'
    ImageIndex = 27
    ModalResult = 2
    TabOrder = 4
    TabStop = False
  end
  object btnLogin: TButton
    Left = 394
    Top = 185
    Width = 89
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Login'
    ImageIndex = 28
    ModalResult = 1
    TabOrder = 2
  end
  object ckbShowPasswordChar: TCheckBox
    Left = 357
    Top = 144
    Width = 127
    Height = 20
    Alignment = taLeftJustify
    Anchors = [akTop, akRight]
    Caption = 'Mostra Password'
    TabOrder = 3
    OnClick = ckbShowPasswordCharClick
  end
  object edPassword: TEdit
    Left = 258
    Top = 105
    Width = 225
    Height = 25
    Anchors = [akTop, akRight]
    ParentShowHint = False
    PasswordChar = '*'
    ShowHint = True
    TabOrder = 1
    TextHint = 'nomeutente@keriks.com'
    OnExit = edPasswordExit
    OnKeyPress = edUserNameKeyPress
  end
  object edUserName: TEdit
    Left = 259
    Top = 48
    Width = 225
    Height = 25
    Anchors = [akTop, akRight]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TextHint = 'nomeutente@keriks.com'
    OnKeyPress = edUserNameKeyPress
  end
  object ckbRemember: TCheckBox
    Left = 259
    Top = 144
    Width = 82
    Height = 20
    Alignment = taLeftJustify
    Anchors = [akTop, akRight]
    Caption = 'Ricordami'
    TabOrder = 5
    OnClick = ckbRememberClick
  end
end
