object UniLoginForm1: TUniLoginForm1
  Left = 0
  Top = 0
  ClientHeight = 183
  ClientWidth = 342
  Caption = 'Login'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ActiveControl = UniEdit1
  OnCreate = UniLoginFormCreate
  DesignSize = (
    342
    183)
  PixelsPerInch = 96
  TextHeight = 13
  object UniFieldSet1: TUniFieldSet
    Left = 0
    Top = 0
    Width = 342
    Height = 145
    Hint = ''
    Title = 'Login Credentials'
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 552
    object UniEdit1: TUniEdit
      Left = 88
      Top = 40
      Width = 180
      Hint = ''
      Text = 'UniEdit1'
      TabOrder = 1
      FieldLabel = 'User Name'
    end
    object UniEdit2: TUniEdit
      Left = 96
      Top = 88
      Width = 180
      Hint = ''
      PasswordChar = '*'
      Text = 'UniEdit2'
      TabOrder = 2
      FieldLabel = 'Password'
    end
  end
  object UniButton1: TUniButton
    Left = 260
    Top = 151
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'OK'
    Anchors = [akRight, akBottom]
    TabOrder = 1
    OnClick = UniButton1Click
    ExplicitLeft = 470
  end
  object UniButton2: TUniButton
    Left = 8
    Top = 151
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Cancel'
    Anchors = [akLeft, akBottom]
    TabOrder = 2
    OnClick = UniButton2Click
  end
end
