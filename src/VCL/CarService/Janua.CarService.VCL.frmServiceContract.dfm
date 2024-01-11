inherited frmVCLCSServiceContract: TfrmVCLCSServiceContract
  Align = alClient
  Caption = 'Service Contract'
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
        ExplicitWidth = 1231
        ExplicitHeight = 593
        inherited frameHTMLEditor1: TframeHTMLEditor
          Width = 1231
          Height = 593
          ExplicitWidth = 1231
          ExplicitHeight = 593
          inherited Splitter1: TSplitter
            Height = 489
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
            Height = 489
            ExplicitWidth = 953
            ExplicitHeight = 399
          end
          inherited pnlFooter: TPanel
            Top = 571
            Width = 1231
            ExplicitTop = 571
            ExplicitWidth = 1231
            inherited TrackBar1: TTrackBar
              Left = 867
              ExplicitLeft = 792
            end
          end
          inherited LeftPages: TPageControl
            Height = 489
            ExplicitHeight = 489
            inherited tabTag: TTabSheet
              ExplicitHeight = 461
              inherited pnlLists: TPanel
                Height = 461
                ExplicitHeight = 461
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
        ExplicitHeight = 599
        inherited edtMailTestSubject: TEdit
          Width = 1239
          ExplicitWidth = 1225
        end
        inherited pnlMailTest: TPanel
          Width = 1245
          ExplicitWidth = 1231
          inherited edtMsgTestFrom: TEdit
            ExplicitWidth = 780
          end
          inherited edtTestTinyUrl: TEdit
            ExplicitLeft = 894
          end
        end
        inherited pgcTestPreview: TPageControl
          Width = 1245
          Height = 529
          inherited tabPagePreview: TTabSheet
            ExplicitWidth = 1237
            ExplicitHeight = 499
            inherited brwTestMessage: TTMSFNCWebBrowser
              Width = 1223
              ExplicitWidth = 1223
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
