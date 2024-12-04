inherited frmVCLCSDriver1SMSBuilder: TfrmVCLCSDriver1SMSBuilder
  Caption = 'Pickup SMS Builder'
  OnDestroy = FormDestroy
  TextHeight = 15
  inherited frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    inherited Panel2: TPanel
      inherited lblMsgTo: TLabel
        Left = 879
        ExplicitLeft = 879
      end
      inherited lbContentVariables: TLabel
        Left = 745
        ExplicitLeft = 745
      end
      inherited grpURL: TGroupBox
        inherited edtMobileUrl: TEdit
          Width = 406
          ExplicitWidth = 406
        end
        inherited btnTestUrl: TButton
          Left = 654
          ExplicitLeft = 654
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 484
          Width = 164
          ExplicitLeft = 484
          ExplicitWidth = 164
        end
        inherited edtTestTinyUrl: TEdit
          Left = 741
          Width = 241
          ExplicitLeft = 741
          ExplicitWidth = 241
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 735
        ExplicitWidth = 735
      end
      inherited edPhoneCustomerTo: TEdit
        Left = 926
        Width = 59
        ExplicitLeft = 926
        ExplicitWidth = 59
      end
      inherited rgEngine: TRadioGroup
        Width = 258
        ExplicitWidth = 258
      end
      inherited pnlSmsTestConfig: TPanel
        inherited AdvPageControl1: TAdvPageControl
          Left = 428
          Top = 1
          Width = 552
          Height = 451
          Align = alClient
          DoubleBuffered = True
          ExplicitLeft = 428
          ExplicitTop = 1
          ExplicitWidth = 552
          ExplicitHeight = 451
          inherited tabPreview: TAdvTabSheet
            inherited edTestSMSTo: TEdit [0]
              Top = 133
              Width = 538
              Height = 285
              Align = alClient
              ExplicitLeft = 3
              ExplicitWidth = 527
            end
            inherited advmTemplateJson: TAdvMemo [1]
              Top = 133
              Width = 538
              Height = 285
              ExplicitLeft = 3
              ExplicitWidth = 538
              ExplicitHeight = 242
            end
            inherited lbEdtTemplateSID: TLabeledEdit [2]
              Top = 154
              Width = 538
              Height = 264
              Align = alClient
              EditLabel.ExplicitTop = 136
              ExplicitLeft = 3
              ExplicitWidth = 538
            end
            inherited grpMessage: TAdvGroupBox
              Top = 0
              Width = 544
              inherited advmSMSTest: TAdvMemo
                Width = 270
              end
              inherited memParamsDestination: TMemo
                Left = 288
                ExplicitLeft = 288
                ExplicitTop = 21
                ExplicitHeight = 103
              end
            end
          end
          inherited tabJsonMessage: TAdvTabSheet
            inherited memJsonMessage: TAdvMemo
              Width = 538
              Height = 415
            end
          end
        end
      end
      inherited memTemplateParams: TMemo
        Left = 745
        Width = 240
        ExplicitLeft = 745
        ExplicitWidth = 240
      end
    end
  end
end
