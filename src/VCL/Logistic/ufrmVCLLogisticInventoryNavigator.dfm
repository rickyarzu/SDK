inherited frmVCLLogisticInventoryNavigator: TfrmVCLLogisticInventoryNavigator
  ClientHeight = 586
  ClientWidth = 893
  Font.Name = 'Tahoma'
  ExplicitWidth = 909
  ExplicitHeight = 625
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TAdvSplitter
    Top = 237
    Width = 893
    ExplicitTop = 195
    ExplicitWidth = 893
  end
  inherited pnlCommands: TPanel
    Width = 893
    ExplicitWidth = 893
    inherited tlbMaster: TToolBar
      Width = 893
      ExplicitWidth = 893
    end
    inherited pnlSearchText: TPanel
      Left = 893
      Width = 0
      inherited lbSearchText: TLabel
        Width = 465
        ExplicitWidth = 58
      end
    end
  end
  inherited pnlSearch: TPanel
    Width = 893
    ExplicitWidth = 893
    inherited btnStartSearch: TButton
      Left = 835
    end
    inherited pnlSearchParams: TPanel
      Width = 827
      ExplicitWidth = 827
    end
  end
  inherited grdMaster: TwwDBGrid
    Width = 893
    Height = 138
    TitleFont.Name = 'Tahoma'
    ExplicitWidth = 893
    ExplicitHeight = 138
  end
  inherited pnlDetailBottom: TPanel
    Top = 242
    Width = 893
    ExplicitTop = 242
    ExplicitWidth = 893
    inherited pnlDetail: TPanel
      Width = 891
      ExplicitWidth = 891
      inherited grdDetail: TwwDBGrid
        Width = 891
        TitleFont.Name = 'Tahoma'
        ExplicitWidth = 891
      end
    end
    inherited pnlDetailBottomToolBar: TPanel
      Width = 891
      inherited lbDetailRecordCount: TLabel
        Left = 879
        Height = 24
      end
      inherited tlbDetail: TToolBar
        Width = 875
        ExplicitWidth = 875
      end
    end
  end
  inherited pnlBottom: TPanel
    Top = 384
    Width = 893
    ExplicitWidth = 893
  end
end
