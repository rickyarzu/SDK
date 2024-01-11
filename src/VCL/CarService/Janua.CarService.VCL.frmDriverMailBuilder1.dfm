inherited frmVCLFCSDriverMailBuilder1: TfrmVCLFCSDriverMailBuilder1
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
      inherited lblMaillMailCustomerBCC: TLabel
        Left = 917
        ExplicitLeft = 931
      end
      inherited lblMailReply: TLabel
        Left = 690
        ExplicitLeft = 704
      end
      inherited lblMailImagesURL: TLabel
        Left = 690
        ExplicitLeft = 704
      end
      inherited lblMaillMailCustomerCC: TLabel
        Left = 917
        ExplicitLeft = 931
      end
      inherited edtCustomerFromMail: TEdit
        Width = 350
        ExplicitWidth = 350
      end
      inherited edtCustomerTestRecipients: TEdit
        Left = 739
        ExplicitLeft = 739
      end
      inherited edtlMailCC: TEdit
        Left = 949
        ExplicitLeft = 949
      end
      inherited edtlMailBCC: TEdit
        Left = 949
        ExplicitLeft = 949
      end
      inherited edtMailCustomerTo: TEdit
        Left = 739
        Width = 394
        ExplicitLeft = 739
        ExplicitWidth = 394
      end
      inherited edtMailSubject: TEdit
        Width = 615
        ExplicitWidth = 615
      end
      inherited edtReplyTo: TEdit
        Left = 739
        ExplicitLeft = 739
      end
    end
    inherited pgcCustomerMail: TPageControl
      Width = 979
      Height = 625
      ActivePage = FrameVCLMailMessageConfig.tabCustomerMailPreview
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
            ExplicitWidth = 971
          end
          inherited ToolBar2: TToolBar
            Width = 971
            ExplicitWidth = 971
          end
          inherited E: THtmlEditor
            Width = 693
            Height = 461
            ExplicitTop = 112
            ExplicitWidth = 693
            ExplicitHeight = 461
          end
          inherited pnlFooter: TPanel
            Top = 573
            Width = 971
            ExplicitWidth = 971
            inherited TrackBar1: TTrackBar
              ExplicitLeft = 607
            end
          end
          inherited LeftPages: TPageControl
            Height = 461
            ExplicitHeight = 461
            inherited tabTag: TTabSheet
              ExplicitHeight = 433
              inherited pnlLists: TPanel
                Height = 433
                ExplicitHeight = 433
              end
            end
          end
        end
      end
      inherited tabCustomerMailPreview: TTabSheet
        ExplicitWidth = 971
        ExplicitHeight = 595
        inherited brwModelMessage: TTMSFNCWebBrowser
          Width = 971
          Height = 595
          ExplicitWidth = 971
          ExplicitHeight = 595
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
        Width = 148
        ExplicitWidth = 148
      end
      inherited edtTestTinyUrl: TEdit
        Left = 848
        ExplicitLeft = 848
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
