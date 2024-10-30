object frmAllDemosContainer: TfrmAllDemosContainer
  Left = 0
  Top = 0
  Caption = 'Januaproject All Demos'
  ClientHeight = 580
  ClientWidth = 899
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 899
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 820
    object frameDMVCWebBroker: TJanuaframeWebServerManager
      Left = 1
      Top = 1
      Width = 352
      Height = 47
      Align = alLeft
      TabOrder = 0
    end
    object edPassword: TLabeledEdit
      Left = 688
      Top = 9
      Width = 121
      Height = 23
      EditLabel.AlignWithMargins = True
      EditLabel.Width = 50
      EditLabel.Height = 23
      EditLabel.Caption = 'Password'
      LabelPosition = lpLeft
      LabelSpacing = 6
      PasswordChar = '*'
      TabOrder = 1
      Text = 'J4nu4pr0j3ct.'
    end
    object LabeledEdit1: TLabeledEdit
      Left = 496
      Top = 9
      Width = 121
      Height = 23
      EditLabel.AlignWithMargins = True
      EditLabel.Width = 55
      EditLabel.Height = 23
      EditLabel.Caption = 'UserName'
      LabelPosition = lpLeft
      LabelSpacing = 6
      PasswordChar = '*'
      TabOrder = 2
      Text = 'J4nu4pr0j3ct.'
    end
    object btnLogin: TButton
      Left = 359
      Top = 9
      Width = 66
      Height = 25
      Caption = 'Login'
      TabOrder = 3
    end
  end
end
