inherited frmVCLCSCustConfirmationMsgBuilder: TfrmVCLCSCustConfirmationMsgBuilder
  Align = alClient
  Caption = 'Customer Landing Mail Config'
  ClientWidth = 1424
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 1426
  TextHeight = 15
  inherited FrameVCLLandingMessageConfig: TFrameVCLLandingMessageConfig
    Width = 1424
    ExplicitWidth = 1424
    ExplicitHeight = 776
    inherited pnlButtons: TPanel
      Width = 1424
      ExplicitWidth = 1410
      inherited edtLandingUrl: TEdit
        Width = 1050
        ExplicitWidth = 1036
      end
      inherited btnGenerateTinyUrl: TButton
        Left = 1163
        ExplicitLeft = 1149
      end
      inherited edtTinyUrl: TEdit
        Left = 1163
        ExplicitLeft = 1149
      end
    end
    inherited pgcCustomerMail: TPageControl
      Width = 1239
      ExplicitWidth = 1239
      ExplicitHeight = 623
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
        ExplicitWidth = 1231
        inherited edtMailTestSubject: TEdit
          Width = 1225
          ExplicitWidth = 1211
        end
        inherited pnlMailTest: TPanel
          Width = 1231
          ExplicitWidth = 1217
          inherited lblTestMailTo1: TLabel
            Left = 817
            ExplicitLeft = 831
          end
          inherited edtMsgTestFrom: TEdit
            Width = 752
            ExplicitWidth = 738
          end
          inherited edtTestTinyUrl: TEdit
            Left = 866
            ExplicitLeft = 852
          end
        end
        inherited pgcTestPreview: TPageControl
          Width = 1231
          ExplicitWidth = 1217
          ExplicitHeight = 517
          inherited tabPagePreview: TTabSheet
            ExplicitWidth = 1223
            inherited brwTestMessage: TTMSFNCWebBrowser
              Width = 1223
              ExplicitWidth = 1209
              ExplicitHeight = 487
            end
          end
        end
      end
    end
    inherited pnlLists: TPanel
      ExplicitHeight = 617
      inherited lst2: TListBox
        ExplicitHeight = 95
      end
    end
    inherited grdMaster: TDBGrid
      Width = 1424
    end
  end
  inherited StatusBar: TStatusBar
    Width = 1424
  end
end
