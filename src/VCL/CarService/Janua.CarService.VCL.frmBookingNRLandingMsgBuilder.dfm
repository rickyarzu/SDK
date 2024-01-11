inherited frmVCLCSBookingNRLandingMsgBuilder: TfrmVCLCSBookingNRLandingMsgBuilder
  Caption = 'Customer Landing Mail Config'
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  inherited FrameVCLLandingMessageConfig: TFrameVCLLandingMessageConfig
    inherited pnlButtons: TPanel
      ExplicitWidth = 1452
    end
    inherited pgcCustomerMail: TPageControl
      inherited tabEditor: TTabSheet
        inherited frameHTMLEditor1: TframeHTMLEditor
          ExplicitHeight = 599
          inherited pnlFooter: TPanel
            inherited TrackBar1: TTrackBar
              ExplicitLeft = 883
            end
          end
          inherited LeftPages: TPageControl
            ExplicitHeight = 495
            inherited tabTag: TTabSheet
              inherited pnlLists: TPanel
                ExplicitHeight = 467
              end
            end
          end
        end
      end
      inherited tabCustomerTestMail: TTabSheet
        inherited pgcTestPreview: TPageControl
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
      ExplicitHeight = 623
      inherited lst2: TListBox
        ExplicitHeight = 101
      end
    end
  end
end
