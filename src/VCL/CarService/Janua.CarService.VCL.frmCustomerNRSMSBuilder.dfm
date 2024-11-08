inherited frmVCLCSCustomerNRSMSBuilder: TfrmVCLCSCustomerNRSMSBuilder
  Caption = 'Pickup SMS Builder'
  ClientWidth = 1234
  OnDestroy = FormDestroy
  ExplicitWidth = 1250
  TextHeight = 15
  inherited StatusBar: TStatusBar
    Width = 1234
  end
  inherited frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    Width = 1234
    ExplicitWidth = 1234
    inherited Panel2: TPanel
      Width = 1017
      ExplicitWidth = 1017
      inherited lblMsgTo: TLabel
        Left = 887
        ExplicitLeft = 887
      end
      inherited grpURL: TGroupBox
        Width = 1009
        ExplicitWidth = 1009
        inherited edtMobileUrl: TEdit
          Width = 424
          ExplicitWidth = 424
        end
        inherited btnTestUrl: TButton
          Left = 652
          ExplicitLeft = 652
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 502
          Width = 144
          ExplicitLeft = 502
          ExplicitWidth = 144
        end
        inherited edtTestTinyUrl: TEdit
          Left = 739
          ExplicitLeft = 739
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 989
        ExplicitWidth = 989
      end
      inherited edPhoneCustomerTo: TEdit
        Left = 934
        Width = 55
        ExplicitLeft = 934
        ExplicitWidth = 55
      end
      inherited rgEngine: TRadioGroup
        Width = 207
        ExplicitWidth = 207
      end
      inherited pnlSmsTestConfig: TPanel
        inherited lbEdtTemplateSID: TLabeledEdit
          EditLabel.ExplicitLeft = 0
          EditLabel.ExplicitTop = -18
          EditLabel.ExplicitWidth = 92
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1015
      end
    end
  end
end
