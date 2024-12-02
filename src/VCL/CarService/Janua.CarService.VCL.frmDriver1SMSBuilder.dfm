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
        inherited lblMobileCustomerUrl: TLabel
          Height = 27
        end
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
          ExplicitHeight = 23
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
        inherited lbEdtTemplateSID: TLabeledEdit
          Anchors = [akLeft, akTop, akRight]
        end
      end
      inherited memTemplateParams: TMemo
        Left = 745
        Top = 133
        Width = 240
        Height = 116
        ExplicitLeft = 745
        ExplicitTop = 133
        ExplicitWidth = 240
        ExplicitHeight = 116
      end
    end
  end
end
