inherited dlgVCLDocumentRow: TdlgVCLDocumentRow
  BorderStyle = bsDialog
  Caption = 'Edit Document Row'
  ClientHeight = 212
  ClientWidth = 838
  Font.Height = -12
  Position = poScreenCenter
  ExplicitWidth = 854
  ExplicitHeight = 251
  PixelsPerInch = 96
  DesignSize = (
    838
    212)
  TextHeight = 15
  object lbGUID: TLabel
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
  end
end
