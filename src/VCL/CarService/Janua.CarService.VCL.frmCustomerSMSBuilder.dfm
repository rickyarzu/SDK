inherited frmVCLCSCustomerSMSBuilder: TfrmVCLCSCustomerSMSBuilder
  Align = alClient
  Caption = 'Customer SMS Builder'
  ClientWidth = 1230
  OnDestroy = FormDestroy
  ExplicitWidth = 1246
  TextHeight = 15
  inherited StatusBar: TStatusBar
    Width = 1230
    ExplicitWidth = 1230
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
      inherited lbContentVariables: TLabel
        Left = 759
        ExplicitLeft = 759
      end
      inherited grpURL: TGroupBox
        Width = 1005
        ExplicitWidth = 1005
        inherited edtMobileUrl: TEdit
          Width = 408
          ExplicitWidth = 408
        end
        inherited btnTestUrl: TButton
          Left = 663
          Width = 74
          ExplicitLeft = 663
          ExplicitWidth = 74
        end
        inherited edtCustomerMobileUrl1: TEdit
          Left = 486
          Width = 171
          ExplicitLeft = 486
          ExplicitWidth = 171
        end
        inherited edtTestTinyUrl: TEdit
          Left = 743
          Width = 257
          ExplicitLeft = 743
          ExplicitWidth = 257
        end
      end
      inherited advmSMSTemplate: TAdvMemo
        Width = 737
        ExplicitWidth = 737
      end
      inherited edPhoneCustomerTo: TEdit
        Left = 910
        Width = 91
        ExplicitLeft = 910
        ExplicitWidth = 91
      end
      inherited rgEngine: TRadioGroup
        Width = 242
        ExplicitWidth = 242
      end
      inherited pnlSmsTestConfig: TPanel
        Width = 997
        ExplicitWidth = 997
        inherited AdvPageControl1: TAdvPageControl
          AlignWithMargins = True
          Left = 431
          Width = 562
          Height = 445
          Align = alClient
          DoubleBuffered = True
          ExplicitLeft = 428
          ExplicitTop = 1
          ExplicitWidth = 568
          ExplicitHeight = 451
          inherited tabPreview: TAdvTabSheet
            inherited edTestSMSTo: TEdit [0]
              Width = 548
            end
            inherited advmTemplateJson: TAdvMemo [1]
              Width = 548
              Height = 200
              ExplicitLeft = 3
              ExplicitWidth = 548
              ExplicitHeight = 236
            end
            inherited lbEdtTemplateSID: TLabeledEdit [2]
              Width = 548
              ExplicitWidth = 548
            end
            inherited grpMessage: TAdvGroupBox
              Width = 554
              inherited advmSMSTest: TAdvMemo
                Width = 280
              end
              inherited memParamsDestination: TMemo
                Left = 298
                ExplicitLeft = 298
                ExplicitTop = 21
                ExplicitHeight = 103
              end
            end
          end
          inherited tabJsonMessage: TAdvTabSheet
            inherited memJsonMessage: TAdvMemo
              Width = 554
              Height = 415
            end
          end
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1011
      end
      inherited memTemplateParams: TMemo
        Left = 759
        Width = 242
        ExplicitLeft = 759
        ExplicitWidth = 242
      end
    end
  end
end
