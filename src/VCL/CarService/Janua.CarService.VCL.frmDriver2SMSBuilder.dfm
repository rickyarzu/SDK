inherited frmVCLCSDriver2SMSBuilder: TfrmVCLCSDriver2SMSBuilder
  Caption = 'Customer SMS Builder'
  OnDestroy = FormDestroy
  TextHeight = 15
  inherited frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    inherited Panel2: TPanel
      inherited lbContentVariables: TLabel
        Left = 721
        ExplicitLeft = 721
      end
      inherited grpURL: TGroupBox
        inherited lblMobileCustomerUrl: TLabel
          Height = 27
        end
        inherited edtMobileUrl: TEdit
          Width = 371
          ExplicitWidth = 371
        end
        inherited btnTestUrl: TButton
          ExplicitLeft = 640
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 449
          Width = 185
          ExplicitLeft = 449
          ExplicitWidth = 185
        end
        inherited edtTestTinyUrl: TEdit
          ExplicitLeft = 727
          ExplicitHeight = 23
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 711
        ExplicitWidth = 711
      end
      inherited edPhoneCustomerTo: TEdit
        Left = 911
        Width = 74
        ExplicitLeft = 911
        ExplicitWidth = 74
      end
      inherited pnlSmsTestConfig: TPanel
        inherited lbEdtTemplateSID: TLabeledEdit
          Anchors = [akLeft, akTop, akRight]
        end
      end
      inherited memTemplateParams: TMemo
        Left = 721
        Top = 133
        Width = 264
        Height = 116
        ExplicitLeft = 721
        ExplicitTop = 133
        ExplicitWidth = 264
        ExplicitHeight = 116
      end
    end
  end
end
