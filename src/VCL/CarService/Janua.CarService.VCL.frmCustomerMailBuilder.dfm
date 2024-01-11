inherited frmVCLFCSCustomerMailBuilder: TfrmVCLFCSCustomerMailBuilder
  Caption = 'Driver Pickup Mail'
  OnClose = FormClose
  TextHeight = 15
  inherited StatusBar: TStatusBar
    ExplicitTop = 691
    ExplicitWidth = 1164
  end
  inherited FrameVCLMailMessageConfig: TframeVCLMailMessageConfig
    inherited pnlCustomerMail: TPanel
      ExplicitWidth = 1164
      inherited lblMaillMailCustomerBCC: TLabel
        Left = 903
        ExplicitLeft = 931
      end
      inherited lblMailReply: TLabel
        Left = 676
        ExplicitLeft = 704
      end
      inherited lblMailImagesURL: TLabel
        Left = 676
        ExplicitLeft = 704
      end
      inherited lblMaillMailCustomerCC: TLabel
        Left = 903
        ExplicitLeft = 931
      end
      inherited edtCustomerFromMail: TEdit
        Width = 336
        ExplicitWidth = 336
      end
      inherited edtCustomerTestRecipients: TEdit
        Left = 725
        ExplicitLeft = 725
      end
      inherited edtlMailCC: TEdit
        Left = 935
        ExplicitLeft = 935
      end
      inherited edtlMailBCC: TEdit
        Left = 935
        ExplicitLeft = 935
      end
      inherited edtMailCustomerTo: TEdit
        Width = 449
        ExplicitWidth = 449
      end
      inherited edtMailSubject: TEdit
        Width = 601
        ExplicitWidth = 601
      end
      inherited edtReplyTo: TEdit
        Left = 725
        ExplicitLeft = 725
      end
    end
    inherited pgcCustomerMail: TPageControl
      inherited tabEditor: TTabSheet
        inherited frameHTMLEditor1: TframeHTMLEditor
          inherited Splitter1: TSplitter
            ExplicitTop = 112
          end
          inherited ToolBar2: TToolBar
            ExplicitWidth = 971
            inherited ToolButton9: TToolButton [1]
            end
            inherited HtFontSizeCombo1: THtFontSizeCombo [2]
              Left = 0
              Top = 30
            end
            inherited HeaderBtn: TToolButton
              Left = 90
              ExplicitLeft = 90
            end
            inherited HtTextColorCombo1: THtTextColorCombo
              Left = 141
              ExplicitLeft = 141
            end
            inherited HtBgColorCombo1: THtBgColorCombo
              Left = 207
              ExplicitLeft = 207
            end
            inherited HtBorderCombo1: THtBorderCombo
              Left = 270
              ExplicitLeft = 270
            end
            inherited NewTagBtn: TToolButton
              Left = 330
              ExplicitLeft = 330
            end
            inherited HighlightBtn: TToolButton
              Left = 383
              ExplicitLeft = 383
            end
            inherited ToolButton10: TToolButton
              Left = 464
              ExplicitLeft = 464
            end
            inherited LoadSampleBtn: TToolButton
              Left = 472
              ExplicitLeft = 472
            end
            inherited CanvasCombo: TComboBox
              Left = 697
              ExplicitLeft = 697
            end
            inherited TemplateCombo: TComboBox
              Left = 811
              ExplicitLeft = 811
            end
          end
          inherited E: THtmlEditor
            ExplicitWidth = 693
            ExplicitHeight = 355
          end
          inherited pnlFooter: TPanel
            ExplicitTop = 467
            ExplicitWidth = 971
            inherited TrackBar1: TTrackBar
              ExplicitLeft = 607
            end
          end
          inherited LeftPages: TPageControl
            ExplicitHeight = 433
            inherited tabTag: TTabSheet
              inherited pnlLists: TPanel
                ExplicitHeight = 405
              end
            end
          end
        end
      end
      inherited tabCustomerMailPreview: TTabSheet
        inherited brwModelMessage: TTMSFNCWebBrowser
          ExplicitHeight = 580
        end
      end
      inherited tabCustomerTestMail: TTabSheet
        inherited pgcTestPreview: TPageControl
          inherited tabPagePreview: TTabSheet
            inherited brwTestMessage: TTMSFNCWebBrowser
              ExplicitHeight = 480
            end
          end
        end
      end
    end
    inherited grpURL: TGroupBox
      ExplicitWidth = 1158
      inherited edtCustomerMobileUrl1: TEdit
        Width = 175
        ExplicitWidth = 175
      end
      inherited edtTestTinyUrl: TEdit
        Left = 866
        Width = 273
        ExplicitLeft = 866
        ExplicitWidth = 273
      end
    end
    inherited pnlLists: TPanel
      ExplicitHeight = 597
      inherited lst2: TListBox
        ExplicitHeight = 75
      end
    end
  end
end
