inherited frmVCLCSDriver1SMSBuilder: TfrmVCLCSDriver1SMSBuilder
  Caption = 'Pickup SMS Builder'
  OnDestroy = FormDestroy
  ExplicitTop = -197
  TextHeight = 15
  inherited frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    inherited Panel2: TPanel
      inherited lblMsgTo: TLabel
        Left = 879
        ExplicitLeft = 879
      end
      inherited lbContentVariables: TLabel
        Left = 745
        ExplicitLeft = 745
      end
      inherited grpURL: TGroupBox
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
          ExplicitWidth = 164
        end
        inherited edtTestTinyUrl: TEdit
          Left = 741
          Width = 241
          ExplicitLeft = 741
          ExplicitWidth = 241
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 735
        ExplicitWidth = 735
      end
      inherited edPhoneCustomerTo: TEdit
        Left = 926
        Width = 59
        ExplicitLeft = 926
        ExplicitWidth = 59
      end
      inherited rgEngine: TRadioGroup
        Left = 677
        Width = 196
        ExplicitLeft = 677
        ExplicitWidth = 196
      end
      inherited pnlSmsTestConfig: TPanel
        inherited advmJson: TAdvMemo
          Height = 258
          ExplicitHeight = 258
        end
        inherited lbEdtTemplateSID: TLabeledEdit
          Anchors = [akLeft, akTop, akRight]
        end
      end
      inherited DBGrid1: TDBGrid
        Top = 714
        Height = 61
      end
      inherited Memo1: TMemo
        Left = 745
        Width = 240
        ExplicitLeft = 745
        ExplicitWidth = 240
      end
    end
  end
end
