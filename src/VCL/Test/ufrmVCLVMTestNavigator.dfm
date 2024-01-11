inherited frmVCLVMTestNavigator: TfrmVCLVMTestNavigator
  Caption = 'frmVCLVMTestNavigator'
  ClientHeight = 609
  ExplicitWidth = 640
  ExplicitHeight = 648
  TextHeight = 13
  inherited Splitter1: TAdvSplitter
    Top = 260
    ExplicitTop = 218
  end
  inherited grdMaster: TwwDBGrid
    Height = 161
    ExplicitHeight = 161
  end
  inherited pnlDetailBottom: TPanel
    Top = 265
    ExplicitTop = 265
  end
  inherited pnlBottom: TPanel
    Top = 407
    ExplicitTop = 407
    inline frameVCLTest1: TframeVCLTest
      Left = 1
      Top = 1
      Width = 1128
      Height = 200
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 1128
      ExplicitHeight = 200
      inherited lbStringField: TLabel
        Top = 13
        Height = 13
        ExplicitTop = 13
        ExplicitHeight = 13
      end
      inherited lbIntField: TLabel
        Height = 13
        ExplicitHeight = 13
      end
      inherited lbFloatField: TLabel
        Height = 13
        ExplicitHeight = 13
      end
      inherited lbDateTime: TLabel
        Left = 504
        Top = 13
        Width = 51
        Height = 13
        ExplicitLeft = 504
        ExplicitTop = 13
        ExplicitWidth = 51
        ExplicitHeight = 13
      end
      inherited lbDate: TLabel
        Left = 744
        Top = 13
        Height = 13
        ExplicitLeft = 744
        ExplicitTop = 13
        ExplicitHeight = 13
      end
      inherited lbMemo: TLabel
        Left = 504
        Top = 61
        Width = 60
        Height = 13
        ExplicitLeft = 504
        ExplicitTop = 61
        ExplicitWidth = 60
        ExplicitHeight = 13
      end
      inherited edStringField: TEdit
        Top = 32
        ExplicitTop = 32
      end
      inherited edDateTime: TDateTimePicker
        Left = 504
        Top = 32
        ExplicitLeft = 504
        ExplicitTop = 32
      end
      inherited edDate: TDateTimePicker
        Left = 744
        Top = 32
        ExplicitLeft = 744
        ExplicitTop = 32
      end
      inherited memMemoField: TMemo
        Left = 504
        Top = 80
        ExplicitLeft = 504
        ExplicitTop = 80
      end
    end
  end
end
