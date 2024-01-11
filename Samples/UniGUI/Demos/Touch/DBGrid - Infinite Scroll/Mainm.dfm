object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 586
  ClientWidth = 553
  Caption = 'MainmForm'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 0
    Width = 553
    Height = 586
    Hint = ''
    Align = alClient
    DataSource = DataSource1
    Exporter.FileName = 'Export'
    Exporter.Title = 'Exported Grid'
    BufferedStore.Enabled = True
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 301
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 301
    Top = 184
  end
end
