inherited frmVCLCSCustomerNRSMSBuilder: TfrmVCLCSCustomerNRSMSBuilder
  Caption = 'Pickup SMS Builder'
  ClientWidth = 1234
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitLeft = -153
  ExplicitWidth = 1236
  ExplicitHeight = 828
  TextHeight = 15
  inherited frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    Width = 1234
    ExplicitWidth = 1234
    inherited Panel2: TPanel
      Width = 1017
      ExplicitWidth = 1003
      inherited lblMsgTo: TLabel
        Left = 887
        ExplicitLeft = 887
      end
      inherited grpURL: TGroupBox
        Width = 1009
        ExplicitWidth = 995
        inherited edtMobileUrl: TEdit
          Width = 424
          ExplicitWidth = 424
        end
        inherited btnTestUrl: TButton
          Left = 634
          Top = 14
          ExplicitLeft = 620
          ExplicitTop = 14
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 512
          Width = 100
          ExplicitLeft = 512
          ExplicitWidth = 100
        end
        inherited edtTestTinyUrl: TEdit
          Left = 736
          ExplicitLeft = 736
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 989
        ExplicitWidth = 975
      end
      inherited edPhoneCustomerTo: TEdit
        Left = 934
        Width = 55
        ExplicitLeft = 934
        ExplicitWidth = 41
      end
      inherited rgEngine: TRadioGroup
        Width = 207
        ExplicitWidth = 207
      end
      inherited Panel3: TPanel
        Width = 989
        ExplicitWidth = 975
        ExplicitHeight = 447
        inherited edTestSMSTo: TEdit
          Width = 529
          ExplicitWidth = 515
        end
        inherited advmSMSTest: TAdvMemo
          Width = 531
          ExplicitWidth = 517
        end
        inherited advmJson: TAdvMemo
          Width = 531
          Height = 314
          ExplicitWidth = 517
          ExplicitHeight = 308
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1015
      end
    end
  end
end
