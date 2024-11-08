inherited frmVCLCSCustomerSMSBuilder: TfrmVCLCSCustomerSMSBuilder
  Align = alClient
  Caption = 'Customer SMS Builder'
  ClientWidth = 1230
  OnDestroy = FormDestroy
  ExplicitWidth = 1246
  TextHeight = 15
  inherited StatusBar: TStatusBar
    Width = 1230
  end
  inherited frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    Width = 1230
    ExplicitWidth = 1230
    inherited Panel2: TPanel
      Width = 1013
      ExplicitWidth = 1013
      inherited lblMsgTo: TLabel
        Left = 863
        ExplicitLeft = 863
      end
      inherited grpURL: TGroupBox
        Width = 1005
        ExplicitWidth = 991
        inherited lblMobileCustomerUrl: TLabel
          Height = 15
        end
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
        ExplicitWidth = 985
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
      inherited pnlSmsTestConfig: TPanel
        inherited lbEdtTemplateSID: TLabeledEdit
          EditLabel.ExplicitLeft = 0
          EditLabel.ExplicitTop = -18
          EditLabel.ExplicitWidth = 92
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1011
      end
    end
  end
end
