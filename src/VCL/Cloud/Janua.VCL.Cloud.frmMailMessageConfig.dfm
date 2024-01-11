inherited frmVCLMailMessageConfig: TfrmVCLMailMessageConfig
  Align = alClient
  Caption = 'Mail Message Config'
  ClientHeight = 782
  ClientWidth = 1164
  Font.Height = -12
  ExplicitWidth = 1166
  ExplicitHeight = 815
  TextHeight = 15
  inherited StatusBar: TStatusBar
    Top = 763
    Width = 1164
    ExplicitLeft = 0
    ExplicitTop = 757
    ExplicitWidth = 1150
  end
  inline FrameVCLMailMessageConfig: TframeVCLMailMessageConfig
    Left = 0
    Top = 0
    Width = 1164
    Height = 763
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1164
    ExplicitHeight = 763
    inherited Label1: TLabel
      Top = 748
      Width = 1164
    end
    inherited pnlCustomerMail: TPanel
      Width = 1164
      ExplicitWidth = 1150
      inherited lblMaillMailCustomerBCC: TLabel
        Left = 931
        ExplicitLeft = 945
      end
      inherited lblMailReply: TLabel
        Left = 704
        ExplicitLeft = 718
      end
      inherited lblMailImagesURL: TLabel
        Left = 704
        ExplicitLeft = 718
      end
      inherited lblMaillMailCustomerCC: TLabel
        Left = 931
        ExplicitLeft = 945
      end
      inherited edtCustomerFromMail: TEdit
        Width = 364
        ExplicitWidth = 350
      end
      inherited edtCustomerTestRecipients: TEdit
        Left = 753
        ExplicitLeft = 739
      end
      inherited edtlMailCC: TEdit
        Left = 963
        ExplicitLeft = 949
      end
      inherited edtlMailBCC: TEdit
        Left = 963
        ExplicitLeft = 949
      end
      inherited edtMailCustomerTo: TEdit
        Width = 477
        ExplicitWidth = 463
      end
      inherited edtMailSubject: TEdit
        Width = 629
        ExplicitWidth = 615
      end
      inherited edtReplyTo: TEdit
        Left = 753
        ExplicitLeft = 739
      end
    end
    inherited pgcCustomerMail: TPageControl
      Width = 979
      Height = 591
      ExplicitWidth = 979
      ExplicitHeight = 591
      inherited tabEditor: TTabSheet
        ExplicitWidth = 971
        ExplicitHeight = 561
        inherited frameHTMLEditor1: TframeHTMLEditor
          Width = 971
          Height = 561
          ExplicitWidth = 971
          ExplicitHeight = 561
          inherited Splitter1: TSplitter
            Top = 112
            Height = 427
            ExplicitHeight = 461
          end
          inherited ToolBar1: TToolBar
            Width = 971
            ExplicitWidth = 957
          end
          inherited ToolBar2: TToolBar
            Width = 971
            Height = 56
            ExplicitWidth = 957
            ExplicitHeight = 56
            inherited ToolButton9: TToolButton
              Left = 0
              Wrap = True
              ExplicitLeft = 0
              ExplicitHeight = 30
            end
            inherited HeaderBtn: TToolButton
              Left = 0
              Top = 30
              ExplicitLeft = 0
              ExplicitTop = 30
            end
            inherited HtTextColorCombo1: THtTextColorCombo
              Left = 51
              Top = 30
              ExplicitLeft = 51
              ExplicitTop = 30
            end
            inherited HtBgColorCombo1: THtBgColorCombo
              Left = 117
              Top = 30
              ExplicitLeft = 117
              ExplicitTop = 30
            end
            inherited HtBorderCombo1: THtBorderCombo
              Left = 180
              Top = 30
              ExplicitLeft = 180
              ExplicitTop = 30
            end
            inherited NewTagBtn: TToolButton
              Left = 240
              Top = 30
              ExplicitLeft = 240
              ExplicitTop = 30
            end
            inherited HighlightBtn: TToolButton
              Left = 293
              Top = 30
              ExplicitLeft = 293
              ExplicitTop = 30
            end
            inherited ToolButton10: TToolButton
              Left = 374
              Top = 30
              ExplicitLeft = 374
              ExplicitTop = 30
            end
            inherited LoadSampleBtn: TToolButton
              Left = 382
              Top = 30
              ExplicitLeft = 382
              ExplicitTop = 30
            end
            inherited CanvasCombo: TComboBox
              Left = 607
              Top = 30
              ExplicitLeft = 607
              ExplicitTop = 30
            end
            inherited TemplateCombo: TComboBox
              Left = 721
              Top = 30
              ExplicitLeft = 721
              ExplicitTop = 30
            end
          end
          inherited E: THtmlEditor
            Top = 112
            Width = 693
            Height = 427
            ExplicitTop = 112
            ExplicitWidth = 679
            ExplicitHeight = 421
          end
          inherited pnlFooter: TPanel
            Top = 539
            Width = 971
            ExplicitTop = 533
            ExplicitWidth = 957
            inherited TrackBar1: TTrackBar
              Left = 607
              ExplicitLeft = 593
            end
          end
          inherited LeftPages: TPageControl
            Top = 112
            Height = 427
            ExplicitTop = 112
            ExplicitHeight = 421
            inherited tabTag: TTabSheet
              ExplicitHeight = 399
              inherited pnlLists: TPanel
                Height = 399
                ExplicitHeight = 393
              end
            end
          end
        end
      end
      inherited tabCustomerMailPreview: TTabSheet
        ExplicitHeight = 580
        inherited brwModelMessage: TTMSFNCWebBrowser
          ExplicitWidth = 1247
        end
      end
      inherited tabCustomerTestMail: TTabSheet
        ExplicitHeight = 580
        inherited edtMailTestSubject: TEdit
          ExplicitWidth = 1241
        end
        inherited pnlMailTest: TPanel
          inherited edtTestMailFromName: TEdit
            ExplicitWidth = 674
          end
        end
        inherited pgcTestPreview: TPageControl
          Height = 510
          ExplicitWidth = 1247
          inherited tabPagePreview: TTabSheet
            inherited brwTestMessage: TTMSFNCWebBrowser
              ExplicitWidth = 1239
            end
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
        ExplicitHeight = 580
        inherited pgcAdvanced: TPageControl
          ExplicitWidth = 829
          inherited tabAdvancedHtml: TTabSheet
            inherited advmMailHtml: TAdvMemo
              BorderColor = clGray
              Gutter.BorderColor = clGray
              Gutter.GutterColor = clBtnFace
              ExplicitWidth = 821
            end
          end
          inherited tabAdvancedJson: TTabSheet
            inherited advmMailJson: TAdvMemo
              BorderColor = clGray
              Gutter.BorderColor = clGray
              Gutter.GutterColor = clBtnFace
              ExplicitWidth = 821
            end
          end
          inherited tabJsonLog: TTabSheet
            inherited memJsonLog: TAdvMemo
              BorderColor = clGray
              Gutter.BorderColor = clGray
              Gutter.GutterColor = clBtnFace
              ExplicitWidth = 821
            end
          end
        end
      end
    end
    inherited grpURL: TGroupBox
      Width = 1158
      ExplicitWidth = 1144
      inherited edtCustomerMobileUrl1: TEdit
        Width = 422
        ExplicitWidth = 408
      end
      inherited edtTestTinyUrl: TEdit
        Left = 835
        ExplicitLeft = 821
      end
    end
    inherited pnlLists: TPanel
      Height = 591
      ExplicitHeight = 585
      inherited lst2: TListBox
        Height = 69
        ExplicitHeight = 63
      end
    end
  end
end
