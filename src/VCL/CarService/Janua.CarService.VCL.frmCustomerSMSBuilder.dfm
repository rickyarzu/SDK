inherited frmVCLCSCustomerSMSBuilder: TfrmVCLCSCustomerSMSBuilder
  Align = alClient
  Caption = 'Customer SMS Builder'
  ClientWidth = 1230
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitLeft = -149
  ExplicitWidth = 1232
  ExplicitHeight = 828
  TextHeight = 15
  inherited frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    Width = 1230
    ExplicitWidth = 1230
    inherited Panel2: TPanel
      Width = 1013
      ExplicitWidth = 999
      inherited lblMsgTo: TLabel
        Left = 863
        ExplicitLeft = 863
      end
      inherited grpURL: TGroupBox
        Width = 1005
        ExplicitWidth = 991
        inherited edtMobileUrl: TEdit
          Width = 408
          ExplicitWidth = 408
        end
        inherited btnTestUrl: TButton
          Left = 636
          Top = 14
          Width = 74
          ExplicitLeft = 622
          ExplicitTop = 14
          ExplicitWidth = 74
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 496
          Width = 121
          ExplicitLeft = 496
          ExplicitWidth = 121
        end
        inherited edtTestTinyUrl: TEdit
          Left = 736
          Width = 257
          ExplicitLeft = 736
          ExplicitWidth = 257
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 985
        ExplicitWidth = 971
      end
      inherited edPhoneCustomerTo: TEdit
        Left = 919
        Width = 70
        ExplicitLeft = 919
        ExplicitWidth = 56
      end
      inherited rgEngine: TRadioGroup
        Width = 183
        ExplicitWidth = 183
      end
      inherited Panel3: TPanel
        Width = 985
        ExplicitWidth = 971
        inherited edTestSMSTo: TEdit
          Width = 525
          ExplicitWidth = 511
        end
        inherited advmSMSTest: TAdvMemo
          Width = 525
          ExplicitWidth = 511
        end
        inherited advmJson: TAdvMemo
          Width = 525
          ExplicitWidth = 525
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1011
      end
    end
  end
end
