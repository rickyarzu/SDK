inherited frmVCLCSBookingLandingMessage: TfrmVCLCSBookingLandingMessage
  Align = alClient
  Caption = 'Customer Landing Mail Config'
  OnClose = FormClose
  TextHeight = 15
  inherited FrameVCLLandingMessageConfig: TFrameVCLLandingMessageConfig
    inherited pnlButtons: TPanel
      inherited edtLandingUrl: TEdit
        Width = 1040
        ExplicitWidth = 1026
      end
      inherited btnGenerateTinyUrl: TButton
        Left = 1153
        ExplicitLeft = 1139
      end
      inherited edtTinyUrl: TEdit
        Left = 1153
        ExplicitLeft = 1139
      end
    end
    inherited pgcCustomerMail: TPageControl
      inherited tabEditor: TTabSheet
        inherited frameHTMLEditor1: TframeHTMLEditor
          inherited Splitter1: TSplitter
            ExplicitTop = 112
            ExplicitHeight = 537
          end
          inherited ImageList1: TImageList
            Left = 160
            Top = 196
          end
        end
      end
      inherited tabCustomerTestMail: TTabSheet
        inherited pnlMailTest: TPanel
          inherited lblTestMailTo1: TLabel
            Left = 803
            ExplicitLeft = 831
          end
          inherited edtMsgTestFrom: TEdit
            Width = 738
            ExplicitWidth = 724
          end
          inherited edtTestTinyUrl: TEdit
            Left = 852
            ExplicitLeft = 838
          end
        end
        inherited pgcTestPreview: TPageControl
          inherited tabPagePreview: TTabSheet
            inherited brwTestMessage: TTMSFNCWebBrowser
              ExplicitHeight = 474
            end
          end
        end
      end
    end
  end
end
