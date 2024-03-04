inherited frmVCLCSDriver1SMSBuilder: TfrmVCLCSDriver1SMSBuilder
  Caption = 'Pickup SMS Builder'
  OnDestroy = FormDestroy
  TextHeight = 15
  inherited StatusBar: TStatusBar
    ExplicitLeft = 0
    ExplicitTop = 776
    ExplicitWidth = 1212
  end
  inherited frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    inherited Panel2: TPanel
      inherited lblMsgTo: TLabel
        Left = 879
        ExplicitLeft = 879
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
        end
        inherited edtTestTinyUrl: TEdit
          Left = 741
          Width = 241
          ExplicitLeft = 741
          ExplicitWidth = 241
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 967
        ExplicitWidth = 967
      end
      inherited edPhoneCustomerTo: TEdit
        Left = 944
        Width = 23
        ExplicitLeft = 944
        ExplicitWidth = 23
      end
      inherited rgEngine: TRadioGroup
        Left = 677
        Width = 196
        ExplicitLeft = 677
        ExplicitWidth = 196
      end
      inherited Panel3: TPanel
        Width = 967
        ExplicitWidth = 967
        inherited edTestSMSTo: TEdit
          Left = 431
          Width = 529
          ExplicitLeft = 431
          ExplicitWidth = 529
        end
        inherited advmSMSTest: TAdvMemo
          Left = 431
          Width = 529
          ExplicitLeft = 431
          ExplicitWidth = 529
        end
        inherited advmJson: TAdvMemo
          Left = 431
          Width = 529
          ExplicitLeft = 431
          ExplicitWidth = 529
        end
      end
    end
  end
end
