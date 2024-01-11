object dLoginForm: TdLoginForm
  Left = 0
  Top = 0
  ClientHeight = 139
  ClientWidth = 398
  Caption = 'Login Form'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Layout = 'form'
  PixelsPerInch = 96
  TextHeight = 13
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 88
    Width = 398
    Height = 51
    Hint = ''
    ParentColor = False
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 0
    ExplicitTop = 86
    ExplicitWidth = 396
    object UniFieldContainer1: TUniFieldContainer
      Left = 0
      Top = 0
      Width = 398
      Height = 51
      Hint = ''
      ParentColor = False
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      Layout = 'table'
      LayoutAttribs.Columns = 2
      ExplicitWidth = 396
      DesignSize = (
        398
        51)
      object btnOk: TUniButton
        Left = 46
        Top = 9
        Width = 75
        Height = 28
        Hint = ''
        Caption = 'OK'
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 1
        OnClick = btnOkClick
      end
      object btnCancel: TUniButton
        Left = 284
        Top = 9
        Width = 75
        Height = 28
        Hint = ''
        Caption = 'Cancel'
        ModalResult = 2
        Anchors = [akTop, akRight, akBottom]
        TabOrder = 2
        ExplicitLeft = 282
      end
    end
  end
  object UniFieldSet1: TUniFieldSet
    Left = 0
    Top = 0
    Width = 398
    Height = 88
    Hint = ''
    Title = 'Enter Credentials'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Layout = 'form'
    LayoutConfig.Region = 'center'
    TabOrder = 1
    ExplicitWidth = 396
    ExplicitHeight = 86
    object edtUsername: TUniEdit
      Left = 40
      Top = 20
      Width = 121
      Hint = ''
      Text = ''
      TabOrder = 1
      EmptyText = 'admin'
      ClearButton = True
      FieldLabel = 'Username'
    end
    object edtPassword: TUniEdit
      Left = 40
      Top = 48
      Width = 121
      Hint = ''
      PasswordChar = '*'
      Text = ''
      TabOrder = 2
      EmptyText = 'password'
      ClearButton = True
      FieldLabel = 'Password'
    end
  end
end
