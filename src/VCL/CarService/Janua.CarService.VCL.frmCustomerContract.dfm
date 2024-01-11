inherited frmVCLCCustomerContract: TfrmVCLCCustomerContract
  Align = alClient
  Caption = 'Driver Contract'
  ClientHeight = 782
  ClientWidth = 1438
  OnClose = FormClose
  TextHeight = 15
  inherited FrameVCLLandingMessageConfig: TFrameVCLLandingMessageConfig
    Width = 1438
    Height = 763
    inherited pnlButtons: TPanel
      Width = 1438
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
      Width = 1253
      Height = 610
      inherited tabEditor: TTabSheet
        ExplicitWidth = 1231
        ExplicitHeight = 574
        inherited frameHTMLEditor1: TframeHTMLEditor
          Width = 1231
          Height = 574
          ExplicitWidth = 1231
          ExplicitHeight = 574
          inherited Splitter1: TSplitter
            Height = 470
            ExplicitTop = 112
            ExplicitHeight = 537
          end
          inherited ToolBar1: TToolBar
            Width = 1231
            ExplicitWidth = 1231
          end
          inherited ToolBar2: TToolBar
            Width = 1231
            ExplicitWidth = 1231
          end
          inherited E: THtmlEditor
            Width = 953
            Height = 470
            ExplicitWidth = 953
            ExplicitHeight = 380
          end
          inherited pnlFooter: TPanel
            Top = 552
            Width = 1231
            ExplicitTop = 552
            ExplicitWidth = 1231
            inherited TrackBar1: TTrackBar
              Left = 867
              ExplicitLeft = 792
            end
          end
          inherited LeftPages: TPageControl
            Height = 470
            ExplicitHeight = 470
            inherited tabTag: TTabSheet
              ExplicitHeight = 442
              inherited pnlLists: TPanel
                Height = 442
                ExplicitHeight = 442
              end
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
        ExplicitHeight = 580
        inherited edtMailTestSubject: TEdit
          Width = 1239
        end
        inherited pnlMailTest: TPanel
          Width = 1245
          inherited lblTestMailTo1: TLabel
            ExplicitLeft = 831
          end
          inherited edtMsgTestFrom: TEdit
            ExplicitWidth = 766
          end
          inherited edtTestTinyUrl: TEdit
            ExplicitLeft = 880
          end
        end
        inherited pgcTestPreview: TPageControl
          Width = 1245
          Height = 510
          inherited tabPagePreview: TTabSheet
            ExplicitWidth = 1237
            ExplicitHeight = 480
            inherited brwTestMessage: TTMSFNCWebBrowser
              ExplicitHeight = 474
            end
          end
        end
      end
    end
    inherited pnlLists: TPanel
      Height = 610
      inherited lst2: TListBox
        Height = 88
      end
    end
    inherited grdMaster: TDBGrid
      Top = 691
      Width = 1438
    end
  end
  inherited StatusBar: TStatusBar
    Top = 763
    Width = 1438
  end
end
