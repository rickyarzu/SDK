inherited frmVCLCSDriverContract: TfrmVCLCSDriverContract
  Align = alClient
  Caption = 'Driver Contract'
  ClientHeight = 782
  ClientWidth = 1438
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  inherited FrameVCLLandingMessageConfig: TFrameVCLLandingMessageConfig
    Width = 1438
    Height = 782
    inherited pnlButtons: TPanel
      Width = 1438
      inherited edtLandingUrl: TEdit
        Width = 1040
        ExplicitWidth = 1040
      end
      inherited btnGenerateTinyUrl: TButton
        Left = 1153
        ExplicitLeft = 1153
      end
      inherited edtTinyUrl: TEdit
        Left = 1153
        ExplicitLeft = 1153
      end
    end
    inherited pgcCustomerMail: TPageControl
      Width = 1253
      Height = 629
      inherited tabEditor: TTabSheet
        inherited frameHTMLEditor1: TframeHTMLEditor
          inherited Splitter1: TSplitter
            ExplicitTop = 112
            ExplicitHeight = 537
          end
          inherited pnlFooter: TPanel
            inherited TrackBar1: TTrackBar
              ExplicitLeft = 792
            end
          end
          inherited ImageList1: TImageList
            Left = 160
            Top = 196
          end
        end
      end
      inherited tabCustomerTestMail: TTabSheet
        ExplicitWidth = 1245
        ExplicitHeight = 599
        inherited edtMailTestSubject: TEdit
          Width = 1239
          ExplicitWidth = 1239
        end
        inherited pnlMailTest: TPanel
          Width = 1245
          ExplicitWidth = 1245
          inherited lblTestMailTo1: TLabel
            Left = 817
            ExplicitLeft = 831
          end
          inherited edtMsgTestFrom: TEdit
            Width = 752
            ExplicitWidth = 752
          end
          inherited edtTestTinyUrl: TEdit
            Left = 866
            ExplicitLeft = 866
          end
        end
        inherited pgcTestPreview: TPageControl
          Width = 1245
          Height = 529
          inherited tabPagePreview: TTabSheet
            ExplicitWidth = 1237
            ExplicitHeight = 499
            inherited brwTestMessage: TTMSFNCWebBrowser
              ExplicitWidth = 1237
              ExplicitHeight = 499
            end
          end
        end
      end
    end
    inherited pnlLists: TPanel
      Height = 629
      inherited lst2: TListBox
        Height = 107
      end
    end
    inherited grdMaster: TDBGrid
      Top = 710
      Width = 1438
    end
  end
end
