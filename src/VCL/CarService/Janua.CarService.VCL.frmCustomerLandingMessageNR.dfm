inherited frmVCLCSCustomerLandingMessageNR: TfrmVCLCSCustomerLandingMessageNR
  Caption = 'Customer Landing Mail Config'
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 1440
  ExplicitHeight = 815
  TextHeight = 15
  inherited FrameVCLLandingMessageConfig: TFrameVCLLandingMessageConfig
    inherited pgcCustomerMail: TPageControl
      inherited tabEditor: TTabSheet
        inherited frameHTMLEditor1: TframeHTMLEditor
          ExplicitHeight = 599
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
          inherited tabPagePreview: TTabSheet
            inherited brwTestMessage: TTMSFNCWebBrowser
              Width = 1223
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
