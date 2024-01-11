object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 489
  ClientWidth = 673
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 24
    Top = 52
    Width = 633
    Height = 389
    Hint = ''
    DataSource = DataSource1
    ReadOnly = True
    LoadMask.Message = 'Loading data...'
    TabOrder = 0
    Columns = <
      item
        FieldName = 'TextField'
        Title.Caption = 'TextField'
        Width = 500
      end>
  end
  object UniDBTagField1: TUniDBTagField
    Left = 24
    Top = 24
    Width = 225
    Height = 22
    Hint = ''
    Items.Strings = (
      'Orange'
      'Apple'
      'Banana'
      'Cherry'
      'Pinapple'
      'Coconat'
      'Strawberry')
    DataField = 'TextField'
    DataSource = DataSource1
    TabOrder = 1
    FlexWidth = True
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 416
    Top = 447
    Width = 241
    Height = 25
    Hint = ''
    DataSource = DataSource1
    TabOrder = 2
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TextField'
        DataType = ftString
        Size = 150
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 400
    Top = 160
    Data = {
      380000009619E0BD010000001800000001000000000003000000380009546578
      744669656C6401004900000001000557494454480200020096000000}
    object ClientDataSet1TextField: TStringField
      FieldName = 'TextField'
      Size = 150
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 320
    Top = 192
  end
end
