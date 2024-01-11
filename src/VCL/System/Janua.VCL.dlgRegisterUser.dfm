object dlgRegisterUser: TdlgRegisterUser
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Registrazione Utente'
  ClientHeight = 326
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object Shader1: TPanel
    Left = 0
    Top = 0
    Width = 419
    Height = 326
    Align = alClient
    TabOrder = 0
    DesignSize = (
      419
      326)
    object Label1: TLabel
      Left = 16
      Top = 65
      Width = 82
      Height = 13
      Caption = 'Password Utente'
    end
    object lbConfirmPassword: TLabel
      Left = 16
      Top = 105
      Width = 96
      Height = 13
      Caption = 'Conferma Password'
    end
    object btnOK: TAdvGlowButton
      Left = 294
      Top = 277
      Width = 115
      Height = 41
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Rounded = False
      TabOrder = 0
      Appearance.BorderColor = 15000546
      Appearance.BorderColorHot = 16371364
      Appearance.BorderColorDown = 14983778
      Appearance.BorderColorChecked = 14327846
      Appearance.Color = 16250613
      Appearance.ColorTo = clNone
      Appearance.ColorChecked = 14327846
      Appearance.ColorCheckedTo = clNone
      Appearance.ColorDisabled = 16250871
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 16244937
      Appearance.ColorDownTo = clNone
      Appearance.ColorHot = 16248808
      Appearance.ColorHotTo = clNone
      Appearance.ColorMirror = 16250613
      Appearance.ColorMirrorTo = clNone
      Appearance.ColorMirrorHot = 16248808
      Appearance.ColorMirrorHotTo = clNone
      Appearance.ColorMirrorDown = 16244937
      Appearance.ColorMirrorDownTo = clNone
      Appearance.ColorMirrorChecked = 14327846
      Appearance.ColorMirrorCheckedTo = clNone
      Appearance.ColorMirrorDisabled = 16250871
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Appearance.TextColorChecked = clWhite
    end
    object edUserEMail: TLabeledEdit
      Left = 16
      Top = 40
      Width = 393
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 179
      EditLabel.Height = 13
      EditLabel.Caption = 'Identificativo Utente (indirizzo E-Mail)'
      TabOrder = 1
      Text = ''
      TextHint = 'Inserire la Mail dell'#39'utente'
    end
    object edPassword: TButtonedEdit
      Left = 16
      Top = 80
      Width = 393
      Height = 21
      PasswordChar = '*'
      RightButton.ImageIndex = 0
      RightButton.Visible = True
      TabOrder = 2
      TextHint = 'Password'
      OnRightButtonClick = edPasswordRightButtonClick
    end
    object edPasswordConfirm: TButtonedEdit
      Left = 16
      Top = 120
      Width = 393
      Height = 21
      PasswordChar = '*'
      RightButton.ImageIndex = 0
      RightButton.Visible = True
      TabOrder = 3
      TextHint = 'Password'
      OnRightButtonClick = edPasswordRightButtonClick
    end
    object edFirstName: TLabeledEdit
      Left = 16
      Top = 160
      Width = 393
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      TabOrder = 4
      Text = ''
      TextHint = 'Nome dell'#39'utente'
    end
    object edUserLastName: TLabeledEdit
      Left = 16
      Top = 200
      Width = 393
      Height = 21
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Cognome'
      TabOrder = 5
      Text = ''
      TextHint = 'Cognome dell'#39'utente'
    end
  end
end
