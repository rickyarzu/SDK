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
      inherited pnlSmsTestConfig: TPanel
        inherited AdvPageControl1: TAdvPageControl
          AlignWithMargins = True
          Left = 431
          Width = 546
          Height = 445
          Align = alClient
          DoubleBuffered = True
          ExplicitLeft = 431
          ExplicitWidth = 546
          ExplicitHeight = 449
          inherited tabPreview: TAdvTabSheet
            inherited lbEdtTemplateSID: TLabeledEdit
              Left = 3
              Width = 532
              Anchors = [akLeft, akTop, akRight]
              EditLabel.ExplicitLeft = 3
              EditLabel.ExplicitTop = 4
              EditLabel.ExplicitWidth = 68
              ExplicitLeft = 3
              ExplicitWidth = 532
            end
            inherited edTestSMSTo: TEdit
              Left = 3
              Width = 532
              ExplicitLeft = 3
              ExplicitWidth = 532
            end
            inherited advmSMSTest: TAdvMemo
              Left = 3
              Width = 282
              ExplicitLeft = 3
              ExplicitWidth = 282
            end
            inherited memParamsDestination: TMemo
              Left = 288
              Width = 249
              ExplicitLeft = 288
              ExplicitWidth = 249
            end
            inherited advmTemplateJson: TAdvMemo
              Left = 3
              Width = 532
              Height = 236
              Align = alBottom
              ExplicitLeft = 3
              ExplicitTop = 7
              ExplicitWidth = 532
              ExplicitHeight = 236
            end
          end
          inherited tabJsonMessage: TAdvTabSheet
            inherited memJsonMessage: TAdvMemo
              Width = 524
              Height = 413
            end
          end
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1015
      end
      inherited memTemplateParams: TMemo
        Left = 735
        Width = 250
        ExplicitLeft = 735
        ExplicitWidth = 250
      end
    end
  end
end
