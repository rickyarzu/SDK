inherited frmVCLFCSDriverMailBuilder2: TfrmVCLFCSDriverMailBuilder2
  Caption = 'Driver Pickup Mail'
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 1152
  ExplicitHeight = 809
  TextHeight = 15
  inherited FrameVCLMailMessageConfig: TframeVCLMailMessageConfig
    inherited pnlCustomerMail: TPanel
      ExplicitWidth = 1136
      inherited lblMaillMailCustomerBCC: TLabel
        Left = 903
        ExplicitLeft = 917
      end
      inherited lblMailReply: TLabel
        Left = 676
        ExplicitLeft = 690
      end
      inherited lblMailImagesURL: TLabel
        Left = 676
        ExplicitLeft = 690
      end
      inherited lblMaillMailCustomerCC: TLabel
        Left = 903
        ExplicitLeft = 917
      end
      inherited edtCustomerFromMail: TEdit
        Width = 336
        ExplicitWidth = 322
      end
      inherited edtCustomerTestRecipients: TEdit
        Left = 725
        ExplicitLeft = 711
      end
      inherited edtlMailCC: TEdit
        Left = 935
        ExplicitLeft = 921
      end
      inherited edtlMailBCC: TEdit
        Left = 935
        ExplicitLeft = 921
      end
      inherited edtMailCustomerTo: TEdit
        Width = 449
        ExplicitWidth = 435
      end
      inherited edtMailSubject: TEdit
        Width = 601
        ExplicitWidth = 587
      end
      inherited edtReplyTo: TEdit
        Left = 725
        ExplicitLeft = 711
      end
    end
    inherited pgcCustomerMail: TPageControl
      inherited tabEditor: TTabSheet
        inherited frameHTMLEditor1: TframeHTMLEditor
          inherited ToolBar1: TToolBar
            ExplicitWidth = 943
          end
          inherited ToolBar2: TToolBar
            ExplicitWidth = 943
          end
          inherited E: THtmlEditor
            ExplicitWidth = 665
            ExplicitHeight = 449
          end
          inherited pnlFooter: TPanel
            ExplicitTop = 561
            ExplicitWidth = 943
            inherited TrackBar1: TTrackBar
              Left = 593
              ExplicitLeft = 579
            end
          end
          inherited LeftPages: TPageControl
            ExplicitHeight = 449
          end
        end
      end
    end
    inherited grpURL: TGroupBox
      ExplicitWidth = 1130
      inherited edtCustomerMobileUrl1: TEdit
        Width = 394
        ExplicitWidth = 380
      end
      inherited edtTestTinyUrl: TEdit
        Left = 807
        ExplicitLeft = 793
      end
    end
  end
end
