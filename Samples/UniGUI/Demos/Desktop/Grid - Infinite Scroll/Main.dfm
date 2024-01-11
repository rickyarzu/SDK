object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 656
  ClientWidth = 729
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 8
    Width = 529
    Height = 641
    Hint = ''
    DataSource = DataSource1
    LoadMask.Message = 'Loading data...'
    LoadMask.Color = clSilver
    BufferedStore.Enabled = True
    TabOrder = 0
    Exporter.FileName = 'Export'
    Exporter.Title = 'Exported Grid'
  end
  object UniLabel1: TUniLabel
    Left = 552
    Top = 32
    Width = 46
    Height = 13
    Hint = ''
    Caption = 'UniLabel1'
    TabOrder = 1
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 496
    Top = 208
  end
end
