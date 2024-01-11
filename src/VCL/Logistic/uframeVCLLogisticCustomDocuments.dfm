object frameVCLLogisticCustomDocuments: TframeVCLLogisticCustomDocuments
  Left = 0
  Top = 0
  Width = 1192
  Height = 112
  TabOrder = 0
  object lbCustomOperation: TLabel
    Left = 34
    Top = 21
    Width = 92
    Height = 13
    Caption = 'Customs Operation'
  end
  object cboCustomsDocType: TJvDBLookupCombo
    Left = 34
    Top = 40
    Width = 153
    Height = 21
    LookupField = 'id'
    LookupDisplay = 'description'
    TabOrder = 0
  end
end
