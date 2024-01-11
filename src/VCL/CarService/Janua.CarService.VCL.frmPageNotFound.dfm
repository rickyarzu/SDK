inherited frmVCLCSPageNotFound: TfrmVCLCSPageNotFound
  Align = alClient
  Caption = 'Error 404 Page Not Found'
  OnClose = FormClose
  ExplicitWidth = 1426
  ExplicitHeight = 809
  TextHeight = 15
  inherited FrameVCLLandingMessageConfig: TFrameVCLLandingMessageConfig
    inherited pnlButtons: TPanel
      inherited edtLandingUrl: TEdit
        ExplicitWidth = 1082
      end
      inherited btnGenerateTinyUrl: TButton
        ExplicitLeft = 1195
      end
      inherited edtTinyUrl: TEdit
        ExplicitLeft = 1195
      end
    end
    inherited pgcCustomerMail: TPageControl
      inherited tabEditor: TTabSheet
        ExplicitWidth = 1231
        ExplicitHeight = 574
        inherited frameHTMLEditor1: TframeHTMLEditor
          Width = 1231
          Height = 574
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
        inherited edtMailTestSubject: TEdit
          ExplicitWidth = 1211
        end
        inherited pnlMailTest: TPanel
          ExplicitWidth = 1217
          inherited edtMsgTestFrom: TEdit
            ExplicitWidth = 766
          end
          inherited edtTestTinyUrl: TEdit
            ExplicitLeft = 880
          end
        end
        inherited pgcTestPreview: TPageControl
          inherited tabPagePreview: TTabSheet
            inherited brwTestMessage: TTMSFNCWebBrowser
              Width = 1223
              Height = 474
              ExplicitWidth = 1209
              ExplicitHeight = 468
            end
          end
        end
      end
    end
    inherited pnlLists: TPanel
      ExplicitHeight = 598
      inherited lst2: TListBox
        ExplicitHeight = 76
      end
    end
  end
end
