object dlgVCLLogisticWarehouseReceipt: TdlgVCLLogisticWarehouseReceipt
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Warehouse Receipt Edit Form'
  ClientHeight = 588
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  DesignSize = (
    845
    588)
  TextHeight = 13
  inline FrameVCLLogisticWarehouseReceipt1: TFrameVCLLogisticWarehouseReceipt
    AlignWithMargins = True
    Left = 3
    Top = 55
    Width = 839
    Height = 491
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitTop = 55
    ExplicitWidth = 839
    inherited pgWarehouseReceipt: TPageControl
      Width = 833
      ExplicitWidth = 833
      inherited tabHead: TTabSheet
        ExplicitWidth = 825
        inherited grpDocInfo: TGroupBox
          Left = 18
          ExplicitLeft = 18
          inherited edDocNumber: TEdit
            ReadOnly = True
          end
          inherited edDocYear: TEdit
            ReadOnly = True
          end
        end
      end
      inherited tabShipperConsignee: TTabSheet
        inherited grpConsignee: TGroupBox
          Left = 424
          ExplicitLeft = 424
        end
      end
      inherited tabCommodities: TTabSheet
        inherited grpCommoditiesTotals: TGroupBox
          Top = 395
          Height = 58
          ExplicitTop = 395
          ExplicitHeight = 58
        end
        inherited frameVCLWHReceiptRowsNavigator1: TframeVCLWHReceiptRowsNavigator
          Height = 395
          ExplicitHeight = 395
          inherited grdMaster: TwwDBGrid
            Height = 346
            ExplicitHeight = 346
          end
        end
      end
    end
    inherited vtTypeOfGoods: TVirtualTable
      Left = 242
      Top = 368
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
    inherited dsDepartments: TUniDataSource
      Left = 314
    end
    inherited dsTypeOfGoods: TUniDataSource
      Left = 122
      Top = 368
    end
  end
  object tbDocument: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 839
    Height = 46
    ButtonHeight = 21
    ButtonWidth = 31
    ShowCaptions = True
    TabOrder = 1
  end
  object edButtonSave: TButton
    Left = 700
    Top = 552
    Width = 122
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Save Receipts'
    ModalResult = 1
    TabOrder = 2
  end
  object btnUndo: TButton
    Left = 564
    Top = 552
    Width = 122
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Undo'
    ModalResult = 2
    TabOrder = 3
  end
  object JanuaActionViewController1: TJanuaActionViewController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = tbDocument
    ButtonSize = jbs24
    Left = 240
    Top = 16
  end
end
