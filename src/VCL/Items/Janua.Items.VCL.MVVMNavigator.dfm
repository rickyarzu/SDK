inherited frmVCLItemsVMNavigator: TfrmVCLItemsVMNavigator
  Caption = 'Items Management'
  ClientHeight = 582
  ClientWidth = 934
  Font.Name = 'Tahoma'
  ExplicitWidth = 950
  ExplicitHeight = 621
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TAdvSplitter
    Top = 233
    Width = 934
    ExplicitTop = 191
    ExplicitWidth = 934
  end
  inherited pnlCommands: TPanel
    Width = 934
    ExplicitWidth = 934
    inherited tlbMaster: TToolBar
      Width = 934
      ExplicitWidth = 934
    end
    inherited pnlSearchText: TPanel
      Left = 934
      Width = 0
      ExplicitLeft = 934
      ExplicitWidth = 0
      inherited lbSearchText: TLabel
        Width = 58
        ExplicitWidth = 58
      end
      inherited edSearchText: TEdit
        Width = 0
        ExplicitWidth = 0
      end
    end
  end
  inherited pnlSearch: TPanel
    Width = 934
    ExplicitWidth = 934
    inherited btnStartSearch: TButton
      Left = 876
      ExplicitLeft = 876
    end
    inherited pnlSearchParams: TPanel
      Width = 868
      ExplicitWidth = 868
    end
  end
  inherited grdMaster: TwwDBGrid
    Width = 934
    Height = 134
    TitleFont.Name = 'Tahoma'
    ExplicitWidth = 934
    ExplicitHeight = 92
  end
  inherited pnlDetailBottom: TPanel
    Top = 238
    Width = 934
    ExplicitTop = 196
    ExplicitWidth = 934
    inherited pnlDetail: TPanel
      Width = 932
      ExplicitWidth = 932
      inherited grdDetail: TwwDBGrid
        Width = 932
        TitleFont.Name = 'Tahoma'
        ExplicitWidth = 932
      end
    end
    inherited pnlDetailBottomToolBar: TPanel
      inherited lbDetailRecordCount: TLabel
        Left = 921
        Height = 16
        ExplicitLeft = 921
      end
      inherited tlbDetail: TToolBar
        Width = 918
        ExplicitWidth = 918
      end
    end
  end
  inherited pnlBottom: TPanel
    Top = 380
    Width = 934
    ExplicitTop = 380
    ExplicitWidth = 932
    inline frameVCLItem1: TframeVCLItem
      Left = 1
      Top = 1
      Width = 930
      Height = 200
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 930
      ExplicitHeight = 200
    end
  end
  inherited JanuaMVVMFormController1: TJanuaMVVMFormController
    Left = 136
    Top = 104
  end
end
