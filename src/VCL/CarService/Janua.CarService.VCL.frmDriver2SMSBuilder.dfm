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
        inherited edtMobileUrl: TEdit
          Width = 371
          ExplicitWidth = 371
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 449
          Width = 175
          ExplicitLeft = 449
          ExplicitWidth = 175
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 711
        ExplicitWidth = 711
      end
      inherited edPhoneCustomerTo: TEdit
        Left = 894
        Width = 91
        ExplicitLeft = 894
        ExplicitWidth = 91
      end
      inherited pnlSmsTestConfig: TPanel
        Width = 981
        ExplicitWidth = 981
        inherited edTestSMSTo: TEdit
          Width = 523
        end
        inherited advmSMSTest: TAdvMemo
          Width = 523
        end
        inherited advmJson: TAdvMemo
          Width = 523
          Height = 258
          ExplicitWidth = 523
          ExplicitHeight = 258
        end
        inherited lbEdtTemplateSID: TLabeledEdit
          Width = 522
          Anchors = [akLeft, akTop, akRight]
          EditLabel.ExplicitLeft = 439
          EditLabel.ExplicitTop = 4
          EditLabel.ExplicitWidth = 68
          ExplicitWidth = 522
        end
      end
      inherited DBGrid1: TDBGrid
        Top = 714
        Height = 61
      end
      inherited Memo1: TMemo
        Left = 721
        Width = 264
        ExplicitLeft = 721
        ExplicitWidth = 264
      end
    end
  end
end
