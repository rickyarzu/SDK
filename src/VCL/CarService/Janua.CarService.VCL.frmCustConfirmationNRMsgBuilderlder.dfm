inherited frmVCLCSCustConfirmationNRMsgBuilder: TfrmVCLCSCustConfirmationNRMsgBuilder
  Align = alClient
  Caption = 'Customer Landing Mail Config'
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 1426
  ExplicitHeight = 809
  TextHeight = 15
  inherited FrameVCLLandingMessageConfig: TFrameVCLLandingMessageConfig
    inherited pnlButtons: TPanel
      inherited edtLandingUrl: TEdit
        Width = 1064
        ExplicitWidth = 1064
      end
      inherited btnGenerateTinyUrl: TButton
        Left = 1177
        ExplicitLeft = 1177
      end
      inherited edtTinyUrl: TEdit
        Left = 1177
        ExplicitLeft = 1177
      end
    end
    inherited pgcCustomerMail: TPageControl
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
            ExplicitHeight = 489
          end
          inherited pnlFooter: TPanel
            Top = 571
            Width = 1231
            ExplicitTop = 571
            ExplicitWidth = 1231
            inherited TrackBar1: TTrackBar
              Left = 867
              ExplicitLeft = 867
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
        inherited edtMailTestSubject: TEdit
          ExplicitWidth = 1225
        end
        inherited pnlMailTest: TPanel
          ExplicitWidth = 1231
          inherited edtMsgTestFrom: TEdit
            ExplicitWidth = 780
          end
          inherited edtTestTinyUrl: TEdit
            ExplicitLeft = 894
          end
        end
        inherited pgcTestPreview: TPageControl
          ExplicitWidth = 1217
          inherited tabPagePreview: TTabSheet
            inherited brwTestMessage: TTMSFNCWebBrowser
              Width = 1223
              Height = 493
              ExplicitWidth = 1209
              ExplicitHeight = 487
            end
          end
        end
      end
    end
  end
end
