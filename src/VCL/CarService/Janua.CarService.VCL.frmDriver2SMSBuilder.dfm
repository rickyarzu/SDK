inherited frmVCLCSDriver2SMSBuilder: TfrmVCLCSDriver2SMSBuilder
  Caption = 'Customer SMS Builder'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 1214
  ExplicitHeight = 828
  TextHeight = 15
  inherited frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    ExplicitWidth = 1212
    inherited Panel2: TPanel
      inherited grpURL: TGroupBox
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
        ExplicitWidth = 953
      end
      inherited edPhoneCustomerTo: TEdit
        Width = 14
      end
      inherited Panel3: TPanel
        Width = 967
        ExplicitWidth = 953
        ExplicitHeight = 447
        inherited edTestSMSTo: TEdit
          Width = 519
          ExplicitWidth = 505
        end
        inherited advmSMSTest: TAdvMemo
          Width = 519
          ExplicitWidth = 505
        end
        inherited advmJson: TAdvMemo
          Width = 519
          ExplicitWidth = 505
          ExplicitHeight = 158
        end
      end
    end
  end
end
