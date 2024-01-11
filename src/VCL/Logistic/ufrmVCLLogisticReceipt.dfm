inherited frmVCLLogisticReceipt: TfrmVCLLogisticReceipt
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Warehouse Receipt'
  ClientHeight = 711
  ClientWidth = 1251
  ParentFont = False
  Position = poScreenCenter
  OnClose = FormClose
  OnResize = FormResize
  ExplicitWidth = 1257
  ExplicitHeight = 740
  PixelsPerInch = 96
  TextHeight = 13
  object pnlForm: TPanel
    Left = 0
    Top = 0
    Width = 1251
    Height = 711
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    inline frameVCLLogisticReceipt1: TframeVCLLogisticReceipt
      Left = 0
      Top = 52
      Width = 1251
      Height = 240
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitTop = 52
      ExplicitWidth = 1251
      ExplicitHeight = 240
      inherited grpDocInfo: TGroupBox
        Width = 612
        Anchors = [akLeft, akTop, akRight]
        ExplicitWidth = 612
      end
      inherited GroupBox1: TGroupBox
        Width = 1228
        Anchors = [akLeft, akTop, akRight]
        ExplicitWidth = 1228
      end
      inherited GroupBox3: TGroupBox
        Width = 445
        Anchors = [akLeft, akTop, akRight]
        ExplicitWidth = 445
        inherited lbDocAmount: TLabel
          Left = 253
          ExplicitLeft = 253
        end
        inherited lbCurrency: TLabel
          Left = 359
          ExplicitLeft = 359
        end
        inherited edDocRefNumber: TEdit
          Width = 225
          ExplicitWidth = 225
        end
        inherited edDocAmount: TMoneyEdit
          Left = 253
          ExplicitLeft = 253
        end
        inherited cboInvoiceCurrency: TJvDBLookupCombo
          Left = 360
          ExplicitLeft = 360
        end
      end
      inherited radioTypeOperation: TRadioGroup
        Left = 944
        Width = 300
        Anchors = [akTop, akRight]
        ExplicitLeft = 944
        ExplicitWidth = 300
      end
      inherited vtTypeOfGoods: TVirtualTable
        Left = 856
        Top = 40
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
      inherited dsTypeOfGoods: TUniDataSource
        Left = 840
        Top = 8
      end
      inherited vtDepartments: TVirtualTable
        Left = 1120
        Top = 64
        Data = {
          0400020002006964020000000000000004006E616D6501001E00000000000000
          03000000020000000100040000004465636B02000000020006000000456E6769
          6E6502000000030005000000486F74656C}
      end
      inherited dsDepartments: TUniDataSource
        Left = 1048
      end
      inherited jscSupplier: TJanuaVCLSearchController
        Top = 56
      end
    end
    inline frameVCLLogisticReceiptSingleRow1: TframeVCLLogisticReceiptSingleRow
      Left = 0
      Top = 292
      Width = 1251
      Height = 369
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitTop = 292
      ExplicitWidth = 1251
      inherited grpItemRow: TGroupBox
        Width = 1239
        ExplicitWidth = 1239
        inherited GroupBox2: TGroupBox
          Left = 10
          Top = 71
          ExplicitLeft = 10
          ExplicitTop = 71
        end
      end
      inherited ToolBar1: TToolBar
        Width = 1251
        ExplicitWidth = 1251
      end
      inherited grpWarehouseCoordinates: TGroupBox
        Width = 233
        ExplicitWidth = 233
        inherited JvDBLookupCombo2: TJvDBLookupCombo
          Width = 129
          ExplicitWidth = 129
        end
        inherited JvDBLookupCombo3: TJvDBLookupCombo
          Width = 129
          ExplicitWidth = 129
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 670
      Width = 1251
      Height = 41
      Align = alBottom
      TabOrder = 2
      object edButtonSave: TButton
        Left = 1024
        Top = 8
        Width = 122
        Height = 25
        Caption = 'Save Document'
        ModalResult = 1
        TabOrder = 0
      end
      object btnUndo: TButton
        Left = 888
        Top = 8
        Width = 122
        Height = 25
        Caption = 'Undo'
        ModalResult = 2
        TabOrder = 1
      end
    end
    object tbDocument: TToolBar
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1245
      Height = 46
      ButtonHeight = 21
      ButtonWidth = 31
      ShowCaptions = True
      TabOrder = 3
    end
  end
  object JanuaActionViewController1: TJanuaActionViewController
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = tbDocument
    ButtonSize = jbs24
    Left = 208
    Top = 8
  end
end
