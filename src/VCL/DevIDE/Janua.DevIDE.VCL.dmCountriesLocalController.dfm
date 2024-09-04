object dmVCLCountriesLocalController: TdmVCLCountriesLocalController
  Height = 617
  Width = 911
  object dsCountries: TDataSource
    DataSet = dmPgCountriesLocal.qryCountries
    Left = 96
    Top = 56
  end
  object dsRegions: TDataSource
    DataSet = dmPgCountriesLocal.tbRegions
    Left = 88
    Top = 136
  end
  object dsDistricts: TDataSource
    DataSet = dmPgCountriesLocal.tbDistricts
    Left = 88
    Top = 216
  end
  object dsTowns: TDataSource
    DataSet = dmPgCountriesLocal.tbTowns
    Left = 88
    Top = 304
  end
  object actCountries: TActionList
    Images = dmSVGImageList.SVGIconImageList
    Left = 88
    Top = 400
    object actUploadImage: TAction
      Caption = 'Load Image'
      ImageIndex = 380
      ImageName = 'european-union'
    end
    object actGenerateText: TAction
      Caption = 'Generate Text'
      ImageIndex = 296
      ImageName = 'contract'
    end
  end
end
