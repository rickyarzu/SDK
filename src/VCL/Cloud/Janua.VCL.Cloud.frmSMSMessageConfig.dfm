inherited frmVCLSMSMessageConfig: TfrmVCLSMSMessageConfig
  Caption = 'SMS Message Config'
  ClientHeight = 795
  ClientWidth = 1212
  Font.Height = -12
  ExplicitWidth = 1228
  ExplicitHeight = 834
  TextHeight = 15
  inherited StatusBar: TStatusBar
    Top = 776
    Width = 1212
    ExplicitTop = 776
    ExplicitWidth = 1212
  end
  inline frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    Left = 0
    Top = 0
    Width = 1212
    Height = 776
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1212
    ExplicitHeight = 776
    inherited Panel1: TPanel
      Height = 776
      ExplicitHeight = 776
      inherited pnlLists: TPanel
        Height = 774
        ExplicitHeight = 774
        inherited lst2: TListBox
          Height = 254
          ExplicitHeight = 254
        end
      end
    end
    inherited Panel2: TPanel
      Width = 995
      Height = 776
      ExplicitWidth = 995
      ExplicitHeight = 776
      inherited lblMsgTo: TLabel
        Left = 864
        ExplicitLeft = 864
      end
      inherited lbContentVariables: TLabel
        Left = 695
        Top = 112
        Anchors = [akTop, akRight]
        ExplicitLeft = 695
        ExplicitTop = 112
      end
      inherited grpURL: TGroupBox
        Width = 987
        ExplicitWidth = 987
        inherited edtMobileUrl: TEdit
          Width = 314
          ExplicitWidth = 314
        end
        inherited btnTestUrl: TButton
          Left = 640
          Width = 81
          ExplicitLeft = 640
          ExplicitWidth = 81
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 392
          Width = 242
          ExplicitLeft = 392
          ExplicitWidth = 242
        end
        inherited edtTestTinyUrl: TEdit
          Left = 727
          Width = 255
          ExplicitLeft = 727
          ExplicitWidth = 255
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 685
        BorderColor = clGray
        Gutter.BorderColor = clGray
        Gutter.GutterColor = clBtnFace
        WordWrap = wwClientWidth
        ExplicitWidth = 685
      end
      inherited btnSendMailTo: TButton
        OnClick = frameVCLSMSMessageConfigbtnSendMailToClick
      end
      inherited edPhoneCustomerTo: TEdit
        Left = 912
        Width = 71
        ExplicitLeft = 912
        ExplicitWidth = 71
      end
      inherited rgEngine: TRadioGroup
        Left = 615
        Width = 243
        ExplicitLeft = 615
        ExplicitWidth = 243
      end
      inherited pnlSmsTestConfig: TPanel
        Width = 981
        Height = 453
        ExplicitWidth = 981
        ExplicitHeight = 453
        inherited dbgrdParams: TDBGrid
          Width = 421
          Height = 445
        end
        inherited AdvPageControl1: TAdvPageControl
          AlignWithMargins = True
          Left = 431
          Width = 546
          Height = 445
          Align = alClient
          DoubleBuffered = True
          ExplicitLeft = 431
          ExplicitWidth = 546
          ExplicitHeight = 445
          inherited tabPreview: TAdvTabSheet
            ExplicitWidth = 538
            ExplicitHeight = 415
            inherited lbEdtTemplateSID: TLabeledEdit
              Width = 532
              EditLabel.ExplicitLeft = 439
              EditLabel.ExplicitTop = 4
              EditLabel.ExplicitWidth = 68
              ExplicitWidth = 532
            end
            inherited edTestSMSTo: TEdit
              Width = 532
              ExplicitWidth = 532
            end
            inherited advmTemplateJson: TAdvMemo
              Width = 532
              Height = 200
              BorderColor = clGray
              Gutter.BorderColor = clGray
              Gutter.GutterColor = clBtnFace
              ExplicitWidth = 532
              ExplicitHeight = 200
            end
            inherited grpMessage: TAdvGroupBox
              Width = 538
              ExplicitWidth = 538
              inherited advmSMSTest: TAdvMemo
                Width = 313
                BorderColor = clGray
                Gutter.BorderColor = clGray
                Gutter.GutterColor = clBtnFace
                Gutter.GutterColorTo = clBtnFace
                ExplicitWidth = 313
              end
              inherited memParamsDestination: TMemo
                Left = 331
                Width = 201
                ExplicitLeft = 331
                ExplicitWidth = 201
              end
            end
          end
          inherited tabJsonMessage: TAdvTabSheet
            inherited memJsonMessage: TAdvMemo
              BorderColor = clGray
              Gutter.BorderColor = clGray
              Gutter.GutterColor = clBtnFace
            end
          end
        end
      end
      inherited DBGrid1: TDBGrid
        Top = 714
        Width = 993
        Height = 61
      end
      inherited btnSendSmsTemplate: TButton
        Width = 145
        ExplicitWidth = 145
      end
      inherited memTemplateParams: TMemo
        Left = 695
        Top = 133
        Width = 290
        Height = 116
        ExplicitLeft = 695
        ExplicitTop = 133
        ExplicitWidth = 290
        ExplicitHeight = 116
      end
    end
  end
end
