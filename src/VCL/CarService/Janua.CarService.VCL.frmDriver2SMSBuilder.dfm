inherited frmVCLCSDriver2SMSBuilder: TfrmVCLCSDriver2SMSBuilder
  Align = alTop
  Caption = 'Customer SMS Builder'
  OnDestroy = FormDestroy
  TextHeight = 15
  inherited frameVCLSMSMessageConfig: TframeVCLSMSMessageConfig
    inherited Panel2: TPanel
      inherited lbContentVariables: TLabel
        Left = 721
        ExplicitLeft = 721
      end
      inherited grpURL: TGroupBox
        inherited edtMobileUrl: TEdit
          Width = 371
          ExplicitWidth = 371
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 449
          Width = 185
          ExplicitLeft = 449
          ExplicitWidth = 185
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 711
        ExplicitWidth = 711
      end
      inherited edPhoneCustomerTo: TEdit
        Left = 911
        Width = 74
        ExplicitLeft = 911
        ExplicitWidth = 74
      end
      inherited pnlSmsTestConfig: TPanel
        inherited AdvPageControl1: TAdvPageControl
          Left = 428
          Top = 1
          Width = 552
          Height = 451
          Align = alClient
          DoubleBuffered = True
          inherited tabPreview: TAdvTabSheet
            inherited edTestSMSTo: TEdit [0]
              Width = 538
              ExplicitLeft = 3
              ExplicitWidth = 538
            end
            inherited advmTemplateJson: TAdvMemo [1]
              Width = 538
              Height = 206
            end
            inherited lbEdtTemplateSID: TLabeledEdit [2]
              Width = 538
              ExplicitLeft = 3
              ExplicitWidth = 538
            end
            inherited grpMessage: TAdvGroupBox
              Width = 544
              inherited advmSMSTest: TAdvMemo
                Width = 270
              end
              inherited memParamsDestination: TMemo
                Left = 288
                ExplicitLeft = 288
                ExplicitTop = 21
                ExplicitHeight = 103
              end
            end
          end
        end
      end
      inherited memTemplateParams: TMemo
        Left = 721
        Width = 264
        ExplicitLeft = 721
        ExplicitWidth = 264
      end
    end
  end
end
