object frmAllDemosContainer: TfrmAllDemosContainer
  Left = 0
  Top = 0
  Caption = 'Januaproject All Demos'
  ClientHeight = 637
  ClientWidth = 1101
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pntlTop: TPanel
    Left = 0
    Top = 0
    Width = 1101
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 899
    object frameDMVCWebBroker: TJanuaframeWebServerManager
      Left = 1
      Top = 1
      Width = 352
      Height = 47
      Align = alLeft
      TabOrder = 0
      OnAfterStartServer = frameDMVCWebBrokerAfterStartServer
      OnBeforeStartServer = frameDMVCWebBrokerBeforeStartServer
      ExplicitTop = 0
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
  object pgTests: TPageControl
    Left = 0
    Top = 49
    Width = 1101
    Height = 588
    ActivePage = tabTestSer
    Align = alClient
    TabOrder = 1
    object tabTestSer: TTabSheet
      Caption = 'Test Server'
      inline TframeTmsAdvBrowser1: TframeTmsAdvBrowser
        Left = 0
        Top = 0
        Width = 1093
        Height = 558
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 168
        ExplicitTop = 56
        inherited pnlUrl: TPanel
          Width = 1093
          StyleElements = [seFont, seClient, seBorder]
          inherited edtUrl: TEdit
            Width = 1016
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited btnUrl: TButton
            Left = 1017
          end
        end
        inherited AdvWebBrowser1: TAdvWebBrowser
          Width = 1093
          Height = 533
          DoubleBuffered = True
          Settings.AllowExternalDrop = False
        end
      end
    end
    object tabTestConnection: TTabSheet
      Caption = 'Test Connection'
      ImageIndex = 1
    end
    object tabTestVCLApplication: TTabSheet
      Caption = 'Test VCL Application'
      ImageIndex = 2
    end
  end
end
