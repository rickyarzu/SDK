inherited dlgVCLWarehouseReceiptRow: TdlgVCLWarehouseReceiptRow
  BorderStyle = bsDialog
  Caption = 'VCL Warehouse Receipt Row'
  ClientHeight = 480
  ClientWidth = 686
  Position = poScreenCenter
  ExplicitWidth = 702
  ExplicitHeight = 519
  PixelsPerInch = 96
  DesignSize = (
    686
    480)
  TextHeight = 17
  object lbGUID: TLabel
    Left = 8
    Top = 445
    Width = 72
    Height = 16
    Caption = '{000-000}'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  inline frameVCLLogisticWarehouseReceiptRow: TFrameVCLLogisticWarehouseReceiptRow
    Left = 0
    Top = 0
    Width = 686
    Height = 439
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 686
    inherited lbPosition: TLabel
      Left = 16
      Width = 80
      ExplicitLeft = 16
      ExplicitWidth = 80
    end
    inherited JanuaVCLSearchItemController: TJanuaVCLSearchController
      Left = 232
      Top = 80
    end
    inherited JanuaVCLSearchSupplierController1: TJanuaVCLSearchController
      Enabled = True
      Top = 104
    end
  end
  object edButtonSave: TButton
    Left = 548
    Top = 445
    Width = 122
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Save Document'
    ModalResult = 1
    TabOrder = 0
  end
  object btnUndo: TButton
    Left = 413
    Top = 445
    Width = 122
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Undo'
    ModalResult = 2
    TabOrder = 1
  end
end
