inherited frmVCLCSDriver1SMSBuilder: TfrmVCLCSDriver1SMSBuilder
  Caption = 'Pickup SMS Builder'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 1214
  ExplicitHeight = 828
  TextHeight = 15
  inherited frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    inherited Panel2: TPanel
      inherited lblMsgTo: TLabel
        Left = 879
        ExplicitLeft = 879
      end
      inherited grpURL: TGroupBox
        inherited edtMobileUrl: TEdit
          Width = 406
          ExplicitWidth = 392
        end
        inherited btnTestUrl: TButton
          Left = 643
          Top = 14
          ExplicitLeft = 629
          ExplicitTop = 14
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 496
          Width = 141
          ExplicitLeft = 496
          ExplicitWidth = 127
        end
        inherited edtTestTinyUrl: TEdit
          Left = 730
          Width = 241
          ExplicitLeft = 716
          ExplicitWidth = 241
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 967
        ExplicitWidth = 953
      end
      inherited edPhoneCustomerTo: TEdit
        Left = 944
        Width = 23
        ExplicitLeft = 944
        ExplicitWidth = 9
      end
      inherited rgEngine: TRadioGroup
        Left = 677
        Width = 196
        ExplicitLeft = 677
        ExplicitWidth = 196
      end
      inherited Panel3: TPanel
        Width = 967
        ExplicitWidth = 953
        ExplicitHeight = 447
        inherited edTestSMSTo: TEdit
          Left = 431
          Width = 529
          ExplicitLeft = 431
          ExplicitWidth = 515
        end
        inherited advmSMSTest: TAdvMemo
          Left = 431
          Width = 529
          ExplicitLeft = 431
          ExplicitWidth = 515
        end
        inherited advmJson: TAdvMemo
          Left = 431
          Width = 529
          ExplicitLeft = 431
          ExplicitWidth = 515
          ExplicitHeight = 158
        end
      end
    end
  end
end
