object mLoginForm: TmLoginForm
  Left = 0
  Top = 0
  ClientHeight = 593
  ClientWidth = 400
  Caption = 'Login Form'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimFieldSet1: TUnimFieldSet
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 390
    Height = 519
    Hint = ''
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Title = 'Enter Credentials'
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 400
    ExplicitHeight = 529
    DesignSize = (
      390
      519)
    object edtUsername: TUnimEdit
      Left = 48
      Top = 40
      Width = 295
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Text = ''
      EmptyText = 'admin'
      FieldLabel = 'Username'
      FieldLabelAlign = laTop
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 305
    end
    object edtPassword: TUnimEdit
      Left = 48
      Top = 128
      Width = 295
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Text = ''
      PasswordChar = '*'
      EmptyText = 'password'
      FieldLabel = 'Password'
      FieldLabelAlign = laTop
      ParentFont = False
      TabOrder = 2
      ExplicitWidth = 305
    end
  end
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 529
    Width = 400
    Height = 64
    Hint = ''
    Align = alBottom
    DesignSize = (
      400
      64)
    object btnOK: TUnimButton
      Left = 11
      Top = 6
      Width = 105
      Height = 47
      Hint = ''
      Caption = 'OK'
      UI = 'confirm'
      OnClick = btnOKClick
    end
    object btnCancel: TUnimButton
      Left = 283
      Top = 6
      Width = 105
      Height = 47
      Hint = ''
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      ModalResult = 2
      UI = 'decline'
    end
  end
end
