inherited frmVCLCSCustomerNRSMSBuilder: TfrmVCLCSCustomerNRSMSBuilder
  Caption = 'Pickup SMS Builder'
  ClientWidth = 1234
  OnDestroy = FormDestroy
  ExplicitWidth = 1250
  TextHeight = 15
  inherited StatusBar: TStatusBar
    Width = 1234
    ExplicitWidth = 1234
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
      inherited lbContentVariables: TLabel
        Left = 735
        ExplicitLeft = 735
      end
      inherited grpURL: TGroupBox
        Width = 1009
        ExplicitWidth = 1009
        inherited edtMobileUrl: TEdit
          Width = 424
          ExplicitWidth = 424
        end
        inherited btnTestUrl: TButton
          Left = 662
          ExplicitLeft = 662
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 502
          Width = 154
          ExplicitLeft = 502
          ExplicitWidth = 154
        end
        inherited edtTestTinyUrl: TEdit
          Left = 749
          ExplicitLeft = 749
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 725
        ExplicitWidth = 725
      end
      inherited edPhoneCustomerTo: TEdit
        Left = 934
        Width = 55
        ExplicitLeft = 934
        ExplicitWidth = 55
      end
      inherited rgEngine: TRadioGroup
        Width = 266
        ExplicitWidth = 266
      end
      inherited DBGrid1: TDBGrid
        Width = 1015
      end
      inherited memTemplateParams: TMemo
        Left = 735
        Width = 226
        ExplicitLeft = 735
        ExplicitWidth = 226
      end
    end
  end
end
