inherited dlgVCLDocumentRow: TdlgVCLDocumentRow
  BorderStyle = bsDialog
  Caption = 'Edit Document Row'
  ClientHeight = 212
  ClientWidth = 838
  Font.Height = -12
  Position = poScreenCenter
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 854
  ExplicitHeight = 251
  DesignSize = (
    838
    212)
  TextHeight = 15
  object lbGUID: TLabel [0]
    Left = 11
    Top = 188
    Width = 72
    Height = 16
    Anchors = [akLeft, akBottom]
    Caption = '{000-000}'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  inherited StatusBar: TStatusBar
    Top = 193
    Width = 838
  end
  object btnUndo: TButton
    Left = 573
    Top = 179
    Width = 122
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Undo'
    ModalResult = 2
    TabOrder = 1
  end
  object btnButtonSave: TButton
    Left = 708
    Top = 179
    Width = 122
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Save Document'
    ModalResult = 1
    TabOrder = 0
  end
  inline frameVCLDocRow1: TframeVCLDocRow
    Left = 0
    Top = 0
    Width = 838
    Height = 169
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 838
    inherited lbQtyUnits: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbCurrency: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbItemsDescription: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbPrice: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbVatCode: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbAmount: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbVatPurcent: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbVatAmount: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbNetAmount: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbDiscRate: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lbDiscAmount: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edQuantity: TJvValidateEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edItemsModel: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited memItemDescription: TMemo
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edValidateAmount: TJvValidateEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edPrice: TJvValidateEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edVat: TJvValidateEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edVatAmount: TJvValidateEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edNetAmount: TJvValidateEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edDiscRate: TJvValidateEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edDiscAmount: TJvValidateEdit
      StyleElements = [seFont, seClient, seBorder]
    end
  end
end
