inherited frmVCLLogistiReceiptsNavigator: TfrmVCLLogistiReceiptsNavigator
  Caption = 'Warehouse Receipts'
  ClientHeight = 771
  ClientWidth = 1424
  Font.Name = 'Tahoma'
  ExplicitWidth = 1440
  ExplicitHeight = 810
  TextHeight = 13
  inherited Splitter1: TAdvSplitter
    Top = 422
    Width = 1424
    ExplicitLeft = 8
    ExplicitTop = 552
    ExplicitWidth = 1424
  end
  inherited pnlCommands: TPanel
    Width = 1424
    ExplicitWidth = 1424
    inherited tlbMaster: TToolBar
      Width = 897
      Ctl3D = False
      ExplicitWidth = 897
    end
    inherited pnlSearchText: TPanel
      Left = 897
      Width = 527
      ExplicitLeft = 897
      ExplicitWidth = 527
      inherited lbSearchText: TLabel
        Width = 58
        ExplicitWidth = 58
      end
      inherited edSearchText: TEdit
        Width = 521
        ExplicitWidth = 521
      end
    end
  end
  inherited pnlSearch: TPanel
    Width = 1424
    Height = 53
    ExplicitWidth = 1424
    ExplicitHeight = 53
    inherited btnStartSearch: TButton
      Left = 1368
      Width = 48
      Height = 51
      ExplicitLeft = 1368
      ExplicitWidth = 48
      ExplicitHeight = 51
    end
    inherited pnlSearchParams: TPanel
      Width = 1360
      Height = 53
      Ctl3D = False
      ParentCtl3D = False
      ExplicitWidth = 1360
      ExplicitHeight = 53
    end
  end
  inherited grdMaster: TwwDBGrid
    Top = 102
    Width = 1424
    Height = 320
    DataSource = DataSource1
    TitleFont.Name = 'Tahoma'
    ExplicitTop = 102
    ExplicitWidth = 1424
    ExplicitHeight = 320
  end
  inherited pnlDetailBottom: TPanel
    Top = 427
    Width = 1424
    Visible = False
    ExplicitTop = 427
    ExplicitWidth = 1424
    inherited pnlDetail: TPanel
      Width = 1422
      ExplicitWidth = 1422
      inherited grdDetail: TwwDBGrid
        Width = 1422
        TitleFont.Name = 'Tahoma'
        ExplicitWidth = 1422
      end
    end
    inherited pnlDetailBottomToolBar: TPanel
      Width = 1422
      ExplicitWidth = 1422
      inherited lbDetailRecordCount: TLabel
        Left = 1410
        ExplicitLeft = 1410
      end
      inherited tlbDetail: TToolBar
        Width = 1406
        ExplicitWidth = 1406
      end
    end
  end
  inherited pnlBottom: TPanel
    Top = 569
    Width = 1424
    ExplicitTop = 569
    ExplicitWidth = 1424
    inline frameVCLLogisticReceipt1: TframeVCLLogisticReceipt
      Left = 1
      Top = 1
      Width = 1422
      Height = 200
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 1422
      ExplicitHeight = 200
      inherited vtTypeOfGoods: TVirtualTable
        Data = {
          040002000200696402000000000000000B006465736372697074696F6E01003C
          0000000000000012000000020000000400030000004261670200000002000600
          000042617272656C02000000050003000000426F780200000011000400000042
          756C6B0200000003000600000042756E646C6502000000100003000000436167
          0200000006000800000043616E69737465720200000009000600000043617274
          6F6E020000000800040000004361736502000000070005000000437261746502
          0000000F000800000043796C696E646572020000000A00040000004472756D02
          00000001000B0000004472756D2C20537465656C020000000B0008000000456E
          76656C6F7065020000000C00070000005061636B616765020000000D00060000
          0050616C6C6574020000000E00040000005361636B0200000012000900000043
          6F6E7461696E6572}
      end
      inherited vtDepartments: TVirtualTable
        Data = {
          0400020002006964020000000000000004006E616D6501001E00000000000000
          03000000020000000100040000004465636B02000000020006000000456E6769
          6E6502000000030005000000486F74656C}
      end
    end
  end
  inherited JanuaMasterActionViewController: TJanuaActionViewController
    Left = 144
  end
  inherited JanuaVCLMVVMSearchParamsBuilder1: TJanuaVCLMVVMSearchParamsBuilder
    Left = 272
  end
  inherited JanuaVCLMVVMSearchTextBuilder1: TJanuaVCLMVVMSearchTextBuilder
    Left = 272
    Top = 256
  end
  inherited JanuaDetailActionViewController: TJanuaActionViewController
    Left = 144
    Top = 224
  end
  inherited JanuaMVVMFormController1: TJanuaMVVMFormController
    Left = 144
    Top = 144
  end
end
