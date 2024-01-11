inherited frmVCLCSCustomerLandingMessage: TfrmVCLCSCustomerLandingMessage
  Align = alClient
  Caption = 'Customer Landing Mail Config'
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitLeft = 2
  TextHeight = 15
  inherited FrameVCLLandingMessageConfig: TFrameVCLLandingMessageConfig
    ExplicitWidth = 1164
    ExplicitHeight = 782
    inherited pnlButtons: TPanel
      ExplicitWidth = 1150
      inherited edtLandingUrl: TEdit
        Width = 1082
        ExplicitWidth = 794
      end
      inherited btnGenerateTinyUrl: TButton
        Left = 1195
        ExplicitLeft = 907
      end
      inherited edtTinyUrl: TEdit
        Left = 1195
        ExplicitLeft = 1195
      end
    end
    inherited pgcCustomerMail: TPageControl
      Width = 1164
      ExplicitWidth = 1164
      ExplicitHeight = 701
      inherited tabEditor: TTabSheet
        ExplicitWidth = 1156
        inherited frameHTMLEditor1: TframeHTMLEditor
          Width = 1156
          ExplicitWidth = 1156
          ExplicitHeight = 671
          inherited Splitter1: TSplitter
            Top = 112
            Height = 537
            ExplicitHeight = 537
          end
          inherited ToolBar1: TToolBar
            Width = 1156
            ExplicitWidth = 1156
          end
          inherited ToolBar2: TToolBar
            Width = 1156
            Height = 56
            ExplicitWidth = 1156
            inherited CanvasCombo: TComboBox [1]
              Left = 270
              ExplicitLeft = 270
            end
            inherited ToolButton9: TToolButton
              Left = 0
              Wrap = True
              ExplicitLeft = 0
              ExplicitHeight = 30
            end
            inherited HtFontSizeCombo1: THtFontSizeCombo [3]
              Left = 0
              Top = 30
              ExplicitLeft = 0
              ExplicitTop = 30
            end
            inherited LoadSampleBtn: TToolButton [4]
              Left = 90
              Top = 30
              ExplicitLeft = 90
              ExplicitTop = 30
            end
            inherited HeaderBtn: TToolButton [5]
              Left = 315
              Top = 30
              ExplicitLeft = 315
              ExplicitTop = 30
            end
            inherited HtTextColorCombo1: THtTextColorCombo [6]
              Left = 366
              Top = 30
              ExplicitLeft = 366
              ExplicitTop = 30
            end
            inherited HtBgColorCombo1: THtBgColorCombo [7]
              Left = 432
              Top = 30
              ExplicitLeft = 432
              ExplicitTop = 30
            end
            inherited HtBorderCombo1: THtBorderCombo [8]
              Left = 495
              Top = 30
              ExplicitLeft = 495
              ExplicitTop = 30
            end
            inherited NewTagBtn: TToolButton [9]
              Left = 555
              Top = 30
              ExplicitLeft = 555
              ExplicitTop = 30
            end
            inherited HighlightBtn: TToolButton [10]
              Left = 608
              Top = 30
              ExplicitLeft = 608
              ExplicitTop = 30
            end
            inherited TemplateCombo: TComboBox [11]
              Left = 689
              Top = 30
              ExplicitLeft = 689
              ExplicitTop = 30
            end
            inherited ToolButton10: TToolButton [12]
              Left = 803
              Top = 30
              ExplicitLeft = 803
              ExplicitTop = 30
            end
          end
          inherited E: THtmlEditor
            Top = 112
            Width = 878
            Height = 537
            ExplicitTop = 82
            ExplicitWidth = 878
            ExplicitHeight = 537
          end
          inherited pnlFooter: TPanel
            Width = 1156
            ExplicitTop = 643
            ExplicitWidth = 1156
            inherited TrackBar1: TTrackBar
              Left = 792
              ExplicitLeft = 792
            end
          end
          inherited LeftPages: TPageControl
            Top = 112
            Height = 537
            ExplicitTop = 82
            ExplicitHeight = 537
            inherited tabTag: TTabSheet
              ExplicitHeight = 509
              inherited pnlLists: TPanel
                Height = 509
                ExplicitHeight = 503
              end
            end
          end
          inherited ImageList1: TImageList
            Left = 160
            Top = 196
          end
        end
      end
      inherited tabCustomerMailPreview: TTabSheet
        ExplicitWidth = 1156
        ExplicitHeight = 671
      end
      inherited tabCustomerTestMail: TTabSheet
        ExplicitWidth = 1156
        ExplicitHeight = 671
        inherited edtMailTestSubject: TEdit
          Width = 1150
        end
        inherited pnlMailTest: TPanel
          Width = 1156
        end
        inherited pgcTestPreview: TPageControl
          Width = 1156
          Height = 601
          ExplicitWidth = 1156
          inherited tabPagePreview: TTabSheet
            ExplicitWidth = 1148
            ExplicitHeight = 571
          end
          inherited tabHtmlPreview: TTabSheet
            inherited advmMailHtmlPreview: TAdvMemo
              ExplicitWidth = 1239
            end
          end
          inherited tabJsonPreview: TTabSheet
            inherited advmMailJsonPreview: TAdvMemo
              ExplicitWidth = 1239
            end
          end
        end
      end
      inherited tabAdvanced: TTabSheet
        inherited pgAdvanced: TPageControl
          ExplicitWidth = 902
          inherited tabAdvancedHtml: TTabSheet
            inherited advmMailHtml: TAdvMemo
              ExplicitWidth = 894
            end
          end
          inherited tabAdvancedJson: TTabSheet
            inherited advmMailJson: TAdvMemo
              ExplicitWidth = 894
            end
          end
          inherited tabAdvancedLog: TTabSheet
            inherited advmLogMessage: TAdvMemo
              ExplicitWidth = 894
            end
          end
        end
      end
    end
    inherited pnlLists: TPanel
      ExplicitHeight = 695
      inherited lst2: TListBox
        ExplicitHeight = 173
      end
    end
  end
end
