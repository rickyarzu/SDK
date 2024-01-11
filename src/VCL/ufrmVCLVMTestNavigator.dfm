inherited frmVCLVMTestNavigator: TfrmVCLVMTestNavigator
  Caption = 'frmVCLVMTestNavigator'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCommands: TPanel
    inherited navMaster: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel1: TPanel
    ExplicitTop = 206
    inherited pnlDetail: TPanel
      Top = 1
      Align = alTop
      ExplicitTop = 1
      inherited navDetail: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited grdDetail: TEnhCRDBGrid
      Top = 42
      Height = 141
      Align = alClient
    end
    inherited pnlBottom: TPanel
      inline frameTestRecord1: TframeVCLTest
        Left = 1
        Top = 1
        Width = 1010
        Height = 200
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 1010
        ExplicitHeight = 200
        inherited lbStringField: TLabel
          Width = 59
          ExplicitWidth = 59
        end
        inherited lbIntField: TLabel
          Width = 42
          ExplicitWidth = 42
        end
        inherited lbFloatField: TLabel
          Width = 54
          ExplicitWidth = 54
        end
        inherited lbDateTime: TLabel
          Width = 50
          ExplicitWidth = 50
        end
        inherited lbDate: TLabel
          Width = 24
          ExplicitWidth = 24
        end
        inherited lbMemo: TLabel
          Left = 504
          Top = 21
          Width = 60
          ExplicitLeft = 504
          ExplicitTop = 21
          ExplicitWidth = 60
        end
        inherited memMemoField: TMemo
          Left = 504
          Top = 40
          Height = 121
          ExplicitLeft = 504
          ExplicitTop = 40
          ExplicitHeight = 121
        end
      end
    end
  end
end
