inherited frmVCLLandingMessageConfig: TfrmVCLLandingMessageConfig
  Caption = 'Mail Message Config'
  ClientHeight = 782
  ClientWidth = 1438
  Font.Height = -12
  ExplicitWidth = 1440
  ExplicitHeight = 815
  TextHeight = 15
  inline FrameVCLLandingMessageConfig: TFrameVCLLandingMessageConfig [0]
    Left = 0
    Top = 0
    Width = 1438
    Height = 763
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1438
    ExplicitHeight = 782
    inherited pnlButtons: TPanel
      Width = 1438
      ExplicitLeft = 1
      ExplicitTop = -5
      ExplicitWidth = 1438
      inherited lbMasterDataset: TLabel
        Top = 26
        ExplicitTop = 26
      end
      inherited edtLandingUrl: TEdit
        Width = 1082
        ExplicitWidth = 1068
      end
      inherited btnGenerateTinyUrl: TButton
        Left = 1195
        ExplicitLeft = 1181
      end
      inherited edtTinyUrl: TEdit
        Left = 1195
        Width = 216
        ExplicitLeft = 1181
        ExplicitWidth = 216
      end
    end
    inherited pgcCustomerMail: TPageControl
      Width = 1253
      Height = 610
      ActivePage = FrameVCLLandingMessageConfig.tabCustomerTestMail
      ExplicitWidth = 1253
      ExplicitHeight = 629
      inherited tabEditor: TTabSheet
        ExplicitWidth = 1245
        ExplicitHeight = 599
        inherited frameHTMLEditor1: TframeHTMLEditor
          Width = 1245
          Height = 599
          ExplicitWidth = 1245
          ExplicitHeight = 599
          inherited Splitter1: TSplitter
            Height = 495
            ExplicitHeight = 567
          end
          inherited ToolBar1: TToolBar
            Width = 1245
            ExplicitWidth = 1245
          end
          inherited ToolBar2: TToolBar
            Width = 1245
            ExplicitWidth = 1245
          end
          inherited E: THtmlEditor
            Width = 967
            Height = 495
            ExplicitWidth = 967
            ExplicitHeight = 495
          end
          inherited pnlFooter: TPanel
            Top = 577
            Width = 1245
            ExplicitTop = 577
            ExplicitWidth = 1245
            inherited TrackBar1: TTrackBar
              Left = 881
              ExplicitLeft = 881
            end
          end
          inherited LeftPages: TPageControl
            Height = 495
            ExplicitHeight = 495
            inherited tabTag: TTabSheet
              ExplicitHeight = 467
              inherited pnlLists: TPanel
                Height = 467
                ExplicitHeight = 467
              end
            end
          end
        end
      end
      inherited tabCustomerTestMail: TTabSheet
        ExplicitWidth = 1245
        ExplicitHeight = 580
        inherited edtMailTestSubject: TEdit
          Width = 1239
          ExplicitWidth = 1225
        end
        inherited pnlMailTest: TPanel
          Width = 1245
          ExplicitWidth = 1231
          inherited lblTestMailTo1: TLabel
            Left = 831
            Anchors = [akTop, akRight]
            ExplicitLeft = 847
          end
          inherited edtMsgTestFrom: TEdit
            Width = 766
            Anchors = [akLeft, akTop, akRight]
            ExplicitWidth = 752
          end
          inherited edtTestTinyUrl: TEdit
            Left = 880
            Width = 337
            Anchors = [akTop, akRight]
            ExplicitLeft = 866
            ExplicitWidth = 337
          end
        end
        inherited pgcTestPreview: TPageControl
          Width = 1245
          Height = 510
          ExplicitWidth = 1231
          ExplicitHeight = 523
          inherited tabPagePreview: TTabSheet
            ExplicitWidth = 1237
            ExplicitHeight = 480
            inherited brwTestMessage: TTMSFNCWebBrowser
              Width = 1237
              Height = 480
              ExplicitWidth = 1223
              ExplicitHeight = 493
            end
          end
        end
      end
      inherited tabAdvanced: TTabSheet
        inherited pgAdvanced: TPageControl
          inherited tabAdvancedHtml: TTabSheet
            inherited advmMailHtml: TAdvMemo
              BorderColor = clGray
              Gutter.BorderColor = clGray
              Gutter.GutterColor = clBtnFace
            end
          end
          inherited tabAdvancedJson: TTabSheet
            inherited advmMailJson: TAdvMemo
              BorderColor = clGray
              Gutter.BorderColor = clGray
              Gutter.GutterColor = clBtnFace
            end
          end
          inherited tabAdvancedLog: TTabSheet
            inherited advmLogMessage: TAdvMemo
              BorderColor = clGray
              Gutter.BorderColor = clGray
              Gutter.GutterColor = clBtnFace
            end
          end
        end
      end
    end
    inherited pnlLists: TPanel
      Height = 610
      ExplicitHeight = 623
      inherited lst2: TListBox
        Height = 88
        ExplicitHeight = 101
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
    ExplicitLeft = 0
    ExplicitTop = 764
    ExplicitWidth = 1438
  end
end
