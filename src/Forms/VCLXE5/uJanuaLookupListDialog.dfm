inherited JanuaLookupListDialog: TJanuaLookupListDialog
  Caption = 'JanuaLookupListDialog'
  ClientWidth = 288
  ExplicitWidth = 294
  PixelsPerInch = 96
  TextHeight = 13
  inherited AdvGlowButton1: TAdvGlowButton
    Left = 204
    ExplicitLeft = 204
  end
  inherited AdvGlowButton2: TAdvGlowButton
    Left = 122
    ExplicitLeft = 122
  end
  object dblModalita: TJvDBLookupList [2]
    Left = 8
    Top = 8
    Width = 267
    Height = 186
    DataSource = OraDataSource1
    Anchors = [akLeft, akTop, akRight, akBottom]
    LookupField = 'MODALITA_ID'
    LookupDisplay = 'MODALITA_DES'
    TabOrder = 2
  end
end
