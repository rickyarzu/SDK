inherited JanuaDBRecordEditDialog: TJanuaDBRecordEditDialog
  Caption = 'Modifica Record'
  ClientHeight = 306
  ClientWidth = 336
  ExplicitWidth = 342
  ExplicitHeight = 331
  PixelsPerInch = 96
  TextHeight = 13
  inherited AdvGlowButton1: TAdvGlowButton
    Left = 252
    Top = 273
  end
  inherited AdvGlowButton2: TAdvGlowButton
    Left = 170
    Top = 273
  end
  inline JanuaFrameNavigator1: TJanuaFrameNavigator [2]
    Left = 0
    Top = 0
    Width = 336
    Height = 33
    Align = alTop
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    ExplicitLeft = 55
    ExplicitTop = 40
    inherited dbFirst: TAdvGlowButton
      ExplicitLeft = 0
    end
    inherited dbLast: TAdvGlowButton
      ExplicitLeft = 99
    end
    inherited dbPrev: TAdvGlowButton
      ExplicitLeft = 33
      ExplicitTop = 0
    end
    inherited dbNext: TAdvGlowButton
      ExplicitLeft = 66
    end
    inherited dbPost: TAdvGlowButton
      ExplicitTop = 0
    end
    inherited DbNew: TAdvGlowButton
      ExplicitLeft = 132
    end
    inherited DbDelate: TAdvGlowButton
      ExplicitLeft = 165
    end
    inherited DbEdit: TAdvGlowButton
      ExplicitLeft = 198
    end
    inherited DbCancel: TAdvGlowButton
      ExplicitLeft = 264
      ExplicitTop = 0
    end
    inherited DbRefresh: TAdvGlowButton
      ExplicitLeft = 296
    end
  end
  inherited OraSession1: TOraSession [3]
    Top = 264
  end
  inherited OraQuery1: TOraQuery [4]
    Top = 264
  end
  inherited JanuaSystem1: TJanuaSystem [5]
    Top = 264
  end
  inherited OraDataSource1: TOraDataSource
    Top = 264
  end
end
