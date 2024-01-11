inherited frmVCLMVVMDocumentsNavigator: TfrmVCLMVVMDocumentsNavigator
  Caption = 'Documents List'
  ClientHeight = 572
  ClientWidth = 872
  Font.Name = 'Tahoma'
  ExplicitWidth = 888
  ExplicitHeight = 611
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TAdvSplitter
    Top = 265
    Width = 872
    ExplicitTop = 87
    ExplicitWidth = 769
  end
  inherited pnlCommands: TPanel
    Width = 872
    ExplicitWidth = 872
    inherited tlbMaster: TToolBar
      Width = 872
      ExplicitWidth = 872
    end
    inherited pnlSearchText: TPanel
      Left = 872
      Width = 0
      ExplicitLeft = 872
      ExplicitWidth = 0
      inherited lbSearchText: TLabel
        Width = -6
        ExplicitWidth = 58
      end
      inherited edSearchText: TEdit
        Width = 0
        ExplicitWidth = 0
      end
    end
  end
  inherited pnlSearch: TPanel
    Width = 872
    ExplicitWidth = 872
    inherited btnStartSearch: TButton
      Left = 814
      ExplicitLeft = 814
    end
    inherited pnlSearchParams: TPanel
      Width = 806
      ExplicitWidth = 806
    end
  end
  inherited grdMaster: TwwDBGrid
    Width = 872
    Height = 166
    TitleFont.Name = 'Tahoma'
    ExplicitWidth = 872
    ExplicitHeight = 166
  end
  inherited pnlDetailBottom: TPanel
    Top = 270
    Width = 872
    ExplicitTop = 270
    ExplicitWidth = 872
    inherited pnlDetail: TPanel
      Width = 870
      ExplicitTop = 42
      ExplicitWidth = 870
      ExplicitHeight = 57
      inherited grdDetail: TwwDBGrid
        Width = 870
        TitleFont.Name = 'Tahoma'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 870
        ExplicitHeight = 57
      end
    end
    inherited pnlDetailBottomToolBar: TPanel
      Width = 870
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 870
      inherited lbDetailRecordCount: TLabel
        Left = 858
        Height = 24
        ExplicitLeft = 859
      end
      inherited tlbDetail: TToolBar
        Width = 854
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 854
        ExplicitHeight = 39
      end
    end
  end
  inherited pnlBottom: TPanel
    Top = 370
    Width = 872
    ExplicitTop = 370
    ExplicitWidth = 872
  end
  inherited JanuaMVVMFormController1: TJanuaMVVMFormController
    DetailGridBuilder = DetailGridBuilder1
  end
end
