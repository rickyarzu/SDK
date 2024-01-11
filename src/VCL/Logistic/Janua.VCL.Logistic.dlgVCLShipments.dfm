inherited dlgVCLLogisticShipments: TdlgVCLLogisticShipments
  BorderStyle = bsDialog
  Caption = 'Shipments / Pickup Orders'
  ClientHeight = 567
  ClientWidth = 893
  ParentFont = False
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Position = poOwnerFormCenter
  ExplicitWidth = 899
  ExplicitHeight = 596
  PixelsPerInch = 96
  TextHeight = 20
  object tlbShipmentFormActions: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 887
    Height = 46
    ButtonHeight = 21
    ButtonWidth = 31
    ShowCaptions = True
    TabOrder = 3
  end
  inline FrameVCLLogisticShipmentHead: TFrameVCLLogisticShipmentHead
    Left = 0
    Top = 52
    Width = 893
    Height = 472
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 52
    ExplicitWidth = 893
    inherited pgcShipmentOrders: TPageControl
      Width = 893
      ActivePage = FrameVCLLogisticShipmentHead.tsHead
      ExplicitWidth = 893
      inherited tsHead: TTabSheet
        ExplicitWidth = 885
        inherited lbedNumber: TLabeledEdit
          Height = 30
          ExplicitHeight = 30
        end
        inherited cboWorkTypeID: TJvDBLookupCombo
          Height = 30
          ExplicitHeight = 30
        end
        inherited cboWarehouseID: TJvDBLookupCombo
          Height = 30
          ExplicitHeight = 30
        end
        inherited btnVesselName: TButton
          Width = 25
        end
        inherited btnWarehouseLocation: TButton
          Width = 25
        end
      end
      inherited tsCarriers: TTabSheet
        ExplicitWidth = 885
      end
    end
    inherited jscCustomer: TJanuaVCLSearchController
      SearchInput = FrameVCLLogisticShipmentHead.frameVCLAnagraphShort1.edCompanyName
      SearchButton = FrameVCLLogisticShipmentHead.frameVCLAnagraphShort1.btnEditAnagraph
    end
  end
  object btnUndo: TButton
    Left = 614
    Top = 534
    Width = 122
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Undo'
    ModalResult = 2
    TabOrder = 2
  end
  object edButtonSave: TButton
    Left = 763
    Top = 534
    Width = 122
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Save Document'
    ModalResult = 1
    TabOrder = 1
  end
  object JanuaActionViewControllerShipment: TJanuaActionViewController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = tlbShipmentFormActions
    ButtonSize = jbs24
    Left = 240
    Top = 16
  end
end
