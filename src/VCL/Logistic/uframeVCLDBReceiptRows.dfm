object frameVCLDBReceiptRows: TframeVCLDBReceiptRows
  Left = 0
  Top = 0
  Width = 923
  Height = 414
  TabOrder = 0
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 44
    Width = 923
    Height = 370
    Align = alClient
    PanelHeight = 123
    PanelWidth = 906
    TabOrder = 0
  end
  object pnlCommands: TPanel
    Left = 0
    Top = 0
    Width = 923
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object navMaster: TDBNavigator
      Left = 0
      Top = 0
      Width = 200
      Height = 44
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      TabOrder = 0
    end
    object ToolBar1: TToolBar
      Left = 200
      Top = 0
      Width = 723
      Height = 44
      Align = alClient
      ButtonHeight = 21
      ButtonWidth = 31
      Caption = 'ToolBar1'
      ShowCaptions = True
      TabOrder = 1
    end
  end
end
