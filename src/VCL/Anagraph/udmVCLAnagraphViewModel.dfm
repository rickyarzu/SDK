object dmVCLAnagraphViewModel: TdmVCLAnagraphViewModel
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 382
  Width = 543
  object dsAnagraphs: TDataSource
    DataSet = dmJanuaPgAnagraphStorage.qryAnagraphs
    Left = 104
    Top = 112
  end
  object dsGroups: TDataSource
    DataSet = dmJanuaPgAnagraphStorage.qryGroups
    Left = 104
    Top = 40
  end
  object DataSource3: TDataSource
    Left = 104
    Top = 176
  end
  object DataSource4: TDataSource
    Left = 104
    Top = 240
  end
end
