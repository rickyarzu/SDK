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
          DoubleBuffered = True
          inherited tabPreview: TAdvTabSheet
            inherited advmTemplateJson: TAdvMemo [0]
              Top = 223
              Height = 189
              ExplicitTop = 133
              ExplicitWidth = 318
              ExplicitHeight = 141
            end
            inherited lbEdtTemplateSID: TLabeledEdit [1]
              Height = 29
              EditLabel.ExplicitLeft = 3
              EditLabel.ExplicitTop = 6
              ExplicitLeft = -4
              ExplicitTop = -9
              ExplicitHeight = 29
            end
            inherited edTestSMSTo: TEdit [2]
              Top = 59
              Height = 28
              ExplicitLeft = 11
              ExplicitTop = -13
              ExplicitHeight = 28
            end
            inherited grpMessage: TAdvGroupBox
              Top = 90
              ExplicitTop = 0
            end
          end
          inherited tabJsonMessage: TAdvTabSheet
            inherited memJsonMessage: TAdvMemo
              Width = 532
              Height = 409
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
