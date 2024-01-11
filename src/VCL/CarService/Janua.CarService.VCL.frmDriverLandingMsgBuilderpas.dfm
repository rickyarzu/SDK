inherited frmVCLCSDriverLandingMsgBuilder: TfrmVCLCSDriverLandingMsgBuilder
  Caption = 'Customer Landing Mail Config'
  ClientWidth = 1150
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 1152
  ExplicitHeight = 815
  TextHeight = 15
  inherited FrameVCLLandingMessageConfig: TFrameVCLLandingMessageConfig
    Width = 1150
    inherited pnlButtons: TPanel
      Width = 1150
    end
    inherited pgcCustomerMail: TPageControl
      Width = 965
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
        ExplicitWidth = 957
        inherited edtMailTestSubject: TEdit
          Width = 951
        end
        inherited pnlMailTest: TPanel
          Width = 957
        end
        inherited pgcTestPreview: TPageControl
          Width = 957
          inherited tabPagePreview: TTabSheet
            ExplicitWidth = 949
            inherited brwTestMessage: TTMSFNCWebBrowser
              Width = 935
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
    inherited grdMaster: TDBGrid
      Width = 1150
    end
  end
end
