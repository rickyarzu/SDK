inherited frmVCLVMAnagraphNavigator: TfrmVCLVMAnagraphNavigator
  Caption = 'frmVCLVMAnagraphNavigator'
  ClientHeight = 678
  ClientWidth = 942
  ExplicitWidth = 958
  ExplicitHeight = 717
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TAdvSplitter
    Top = 673
    Width = 942
    Visible = False
    ExplicitTop = 299
    ExplicitWidth = 942
  end
  inherited pnlCommands: TPanel
    Width = 942
    ExplicitWidth = 942
    inherited tlbMaster: TToolBar
      Width = 942
      ExplicitWidth = 942
    end
    inherited pnlSearchText: TPanel
      Left = 942
      Width = 0
      ExplicitLeft = 942
      ExplicitWidth = 0
      inherited lbSearchText: TLabel
        Width = 57
      end
      inherited edSearchText: TEdit
        Width = 0
        ExplicitWidth = 0
      end
    end
  end
  inherited pnlSearch: TPanel
    Width = 942
    ExplicitWidth = 942
    inherited btnStartSearch: TButton
      Left = 884
      ExplicitLeft = 884
    end
    inherited pnlSearchParams: TPanel
      Width = 876
      ExplicitWidth = 876
    end
  end
  inherited grdMaster: TwwDBGrid
    Width = 942
    Height = 432
    ExplicitWidth = 942
    ExplicitHeight = 432
  end
  inherited pnlDetailBottom: TPanel
    Top = 531
    Width = 942
    Visible = False
    ExplicitTop = 531
    ExplicitWidth = 942
    inherited pnlDetail: TPanel
      Width = 940
      ExplicitWidth = 940
      inherited grdDetail: TwwDBGrid
        Width = 940
        ExplicitWidth = 940
      end
    end
    inherited pnlDetailBottomToolBar: TPanel
      Width = 940
      ExplicitWidth = 940
      inherited lbDetailRecordCount: TLabel
        Left = 928
        Height = 16
        ExplicitLeft = 928
      end
      inherited tlbDetail: TToolBar
        Width = 924
        ExplicitWidth = 924
      end
    end
  end
  inherited pnlBottom: TPanel
    Width = 940
    Align = alNone
    ExplicitWidth = 940
  end
end
