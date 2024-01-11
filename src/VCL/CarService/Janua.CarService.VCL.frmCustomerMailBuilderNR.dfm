inherited frmVCLFCSCustomerMailBuilderNR: TfrmVCLFCSCustomerMailBuilderNR
  Caption = 'Driver Pickup Mail'
  ClientHeight = 782
  ClientWidth = 1164
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  inherited FrameVCLMailMessageConfig: TframeVCLMailMessageConfig
    Width = 1164
    Height = 782
    inherited pnlCustomerMail: TPanel
      Width = 1164
      ExplicitWidth = 1150
      inherited lblMaillMailCustomerBCC: TLabel
        Left = 903
        ExplicitLeft = 931
      end
      inherited lblMailReply: TLabel
        Left = 676
        ExplicitLeft = 704
      end
      inherited lblMailImagesURL: TLabel
        Left = 676
        ExplicitLeft = 704
      end
      inherited lblMaillMailCustomerCC: TLabel
        Left = 903
        ExplicitLeft = 931
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
      Width = 979
      Height = 625
      inherited tabEditor: TTabSheet
        ExplicitWidth = 971
        ExplicitHeight = 595
        inherited frameHTMLEditor1: TframeHTMLEditor
          Width = 971
          Height = 595
          inherited Splitter1: TSplitter
            Height = 461
          end
          inherited ToolBar1: TToolBar
            Width = 971
          end
          inherited ToolBar2: TToolBar
            Width = 971
          end
          inherited E: THtmlEditor
            Width = 693
            Height = 461
            ExplicitTop = 112
            ExplicitWidth = 679
            ExplicitHeight = 455
          end
          inherited pnlFooter: TPanel
            Top = 573
            Width = 971
            ExplicitTop = 567
            ExplicitWidth = 957
            inherited TrackBar1: TTrackBar
              ExplicitLeft = 593
            end
          end
          inherited LeftPages: TPageControl
            Height = 461
            inherited tabTag: TTabSheet
              ExplicitHeight = 433
              inherited pnlLists: TPanel
                Height = 433
              end
            end
          end
        end
      end
      inherited tabCustomerMailPreview: TTabSheet
        inherited brwModelMessage: TTMSFNCWebBrowser
          ExplicitWidth = 1247
        end
      end
      inherited tabCustomerTestMail: TTabSheet
        inherited edtMailTestSubject: TEdit
          ExplicitWidth = 1241
        end
        inherited pnlMailTest: TPanel
          ExplicitWidth = 1247
          inherited edtTestMailFromName: TEdit
            ExplicitWidth = 674
          end
        end
        inherited pgcTestPreview: TPageControl
          inherited tabPagePreview: TTabSheet
            inherited brwTestMessage: TTMSFNCWebBrowser
              ExplicitWidth = 1239
            end
          end
        end
      end
    end
    inherited grpURL: TGroupBox
      Width = 1158
      ExplicitWidth = 1144
      inherited edtCustomerMobileUrl1: TEdit
        Width = 197
        ExplicitWidth = 197
      end
      inherited edtTestTinyUrl: TEdit
        Left = 888
        Width = 265
        ExplicitLeft = 888
        ExplicitWidth = 265
      end
    end
    inherited pnlLists: TPanel
      Height = 625
      inherited lst2: TListBox
        Height = 103
      end
    end
  end
end
