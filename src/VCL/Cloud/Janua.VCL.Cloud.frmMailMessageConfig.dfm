inherited frmVCLMailMessageConfig: TfrmVCLMailMessageConfig
  Align = alClient
  Caption = 'Mail Message Config'
  ClientHeight = 782
  ClientWidth = 1164
  Font.Height = -12
  ExplicitWidth = 1180
  ExplicitHeight = 821
  TextHeight = 15
  inherited StatusBar: TStatusBar
    Top = 763
    Width = 1164
    ExplicitLeft = 0
    ExplicitTop = 763
    ExplicitWidth = 1164
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
      Top = 685
      Width = 1164
      ExplicitTop = 685
    end
    inherited pnlCustomerMail: TPanel
      Width = 1164
      ExplicitWidth = 1164
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
      inherited btnGenerateMail: TButton
        OnClick = FrameVCLMailMessageConfigbtnGenerateMailClick
      end
      inherited btnSendMailTo: TButton
        OnClick = FrameVCLMailMessageConfigbtnSendMailToClick
      end
      inherited edtCustomerFromMail: TEdit
        Width = 364
        ExplicitWidth = 364
      end
      inherited edtCustomerTestRecipients: TEdit
        Left = 753
        ExplicitLeft = 753
      end
      inherited edtlMailCC: TEdit
        Left = 963
        ExplicitLeft = 963
      end
      inherited edtlMailBCC: TEdit
        Left = 963
        ExplicitLeft = 963
      end
      inherited edtMailCustomerTo: TEdit
        Width = 477
        ExplicitWidth = 477
      end
      inherited edtMailSubject: TEdit
        Width = 629
        ExplicitWidth = 629
      end
      inherited edtReplyTo: TEdit
        Left = 753
        ExplicitLeft = 753
      end
    end
    inherited pgcCustomerMail: TPageControl
      Width = 979
      Height = 528
      ExplicitWidth = 979
      ExplicitHeight = 528
      inherited tabEditor: TTabSheet
        ExplicitWidth = 971
        ExplicitHeight = 498
        inherited frameHTMLEditor1: TframeHTMLEditor
          Width = 971
          Height = 498
          ExplicitWidth = 971
          ExplicitHeight = 498
          inherited Splitter1: TSplitter
            Top = 112
            Height = 364
            ExplicitTop = 112
            ExplicitHeight = 461
          end
          inherited ToolBar1: TToolBar
            Width = 971
            ExplicitWidth = 971
          end
          inherited ToolBar2: TToolBar
            Width = 971
            Height = 56
            ExplicitWidth = 971
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
            Height = 364
            ExplicitTop = 112
            ExplicitWidth = 693
            ExplicitHeight = 364
          end
          inherited pnlFooter: TPanel
            Top = 476
            Width = 971
            ExplicitTop = 476
            ExplicitWidth = 971
            inherited TrackBar1: TTrackBar
              Left = 607
              ExplicitLeft = 607
            end
          end
          inherited LeftPages: TPageControl
            Top = 112
            Height = 364
            ExplicitTop = 112
            ExplicitHeight = 364
            inherited tabTag: TTabSheet
              ExplicitHeight = 336
              inherited pnlLists: TPanel
                Height = 336
                ExplicitHeight = 336
              end
            end
          end
        end
      end
      inherited tabCustomerMailPreview: TTabSheet
        inherited brwModelMessage: TTMSFNCWebBrowser
          ExplicitHeight = 502
        end
      end
      inherited tabCustomerTestMail: TTabSheet
        inherited pgcTestPreview: TPageControl
          ExplicitHeight = 432
          inherited tabPagePreview: TTabSheet
            inherited brwTestMessage: TTMSFNCWebBrowser
              ExplicitHeight = 402
            end
          end
          inherited tabHtmlPreview: TTabSheet
            inherited advmMailHtmlPreview: TAdvMemo
              ExplicitHeight = 402
            end
          end
          inherited tabJsonPreview: TTabSheet
            inherited advmMailJsonPreview: TAdvMemo
              ExplicitHeight = 402
            end
          end
        end
      end
      inherited tabAdvanced: TTabSheet
        inherited pgcAdvanced: TPageControl
          ExplicitHeight = 502
          inherited tabAdvancedHtml: TTabSheet
            inherited advmMailHtml: TAdvMemo
              BorderColor = clGray
              Gutter.BorderColor = clGray
              Gutter.GutterColor = clBtnFace
              ExplicitHeight = 472
            end
          end
          inherited tabAdvancedJson: TTabSheet
            inherited advmMailJson: TAdvMemo
              BorderColor = clGray
              Gutter.BorderColor = clGray
              Gutter.GutterColor = clBtnFace
              ExplicitHeight = 472
            end
          end
          inherited tabJsonLog: TTabSheet
            inherited memJsonLog: TAdvMemo
              BorderColor = clGray
              Gutter.BorderColor = clGray
              Gutter.GutterColor = clBtnFace
              ExplicitHeight = 472
            end
          end
        end
      end
    end
    inherited grpURL: TGroupBox
      Width = 1158
      ExplicitWidth = 1158
      inherited edtCustomerMobileUrl1: TEdit
        Width = 422
        ExplicitWidth = 422
      end
      inherited edtTestTinyUrl: TEdit
        Left = 835
        ExplicitLeft = 835
      end
    end
    inherited pnlLists: TPanel
      Height = 528
      ExplicitHeight = 528
      inherited lst2: TListBox
        Height = 6
        ExplicitHeight = 6
      end
    end
    inherited grdMaster: TDBGrid
      Top = 700
      Width = 1164
    end
  end
end
