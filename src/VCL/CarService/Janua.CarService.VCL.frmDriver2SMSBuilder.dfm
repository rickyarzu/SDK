inherited frmVCLCSDriver2SMSBuilder: TfrmVCLCSDriver2SMSBuilder
  Caption = 'Customer SMS Builder'
  OnDestroy = FormDestroy
  TextHeight = 15
  inherited frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    inherited Panel2: TPanel
      inherited grpURL: TGroupBox
        inherited lblMobileCustomerUrl: TLabel
          Height = 15
        end
        inherited edtMobileUrl: TEdit
          Width = 371
          ExplicitWidth = 357
        end
        inherited btnTestUrl: TButton
          Left = 617
          Top = 14
          ExplicitLeft = 603
          ExplicitTop = 14
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 461
          Width = 150
          ExplicitLeft = 461
          ExplicitWidth = 150
        end
        inherited edtTestTinyUrl: TEdit
          Left = 704
          ExplicitLeft = 690
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 967
        ExplicitWidth = 967
      end
      inherited edPhoneCustomerTo: TEdit
        Width = 14
        ExplicitWidth = 14
      end
      inherited pnlSmsTestConfig: TPanel
        inherited lbEdtTemplateSID: TLabeledEdit
          EditLabel.ExplicitLeft = 0
          EditLabel.ExplicitTop = -18
          EditLabel.ExplicitWidth = 92
        end
      end
    end
  end
end
