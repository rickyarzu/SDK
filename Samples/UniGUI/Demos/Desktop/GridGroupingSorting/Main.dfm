object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 539
  ClientWidth = 869
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  DesignSize = (
    869
    539)
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 36
    Width = 853
    Height = 491
    Hint = ''
    HeaderTitle = 'Grid Grouping Demo'
    HeaderTitleAlign = taCenter
    DataSource = DataSource
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
    Grouping.FieldName = 'Country'
    Grouping.FieldCaption = 'Country Group'
    Grouping.Enabled = True
    Grouping.ShowGroupable = True
    LoadMask.Message = 'Loading data...'
    ForceFit = True
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnMultiColumnSort = UniDBGrid1MultiColumnSort
    Columns = <
      item
        FieldName = 'CompanyName'
        Title.Caption = 'CompanyName'
        Width = 64
        Sortable = True
      end
      item
        FieldName = 'ContactName'
        Title.Caption = 'ContactName'
        Width = 64
        Sortable = True
      end
      item
        FieldName = 'ContactTitle'
        Title.Caption = 'ContactTitle'
        Width = 64
        Sortable = True
      end
      item
        FieldName = 'Country'
        Title.Caption = 'Country'
        Width = 64
      end
      item
        FieldName = 'Address'
        Title.Caption = 'Address'
        Width = 64
      end
      item
        FieldName = 'City'
        Title.Caption = 'City'
        Width = 64
        Sortable = True
      end
      item
        FieldName = 'Region'
        Title.Caption = 'Region'
        Width = 64
        Sortable = True
      end
      item
        FieldName = 'PostalCode'
        Title.Caption = 'PostalCode'
        Width = 64
        Sortable = True
      end
      item
        FieldName = 'Phone'
        Title.Caption = 'Phone'
        Width = 64
      end
      item
        FieldName = 'Fax'
        Title.Caption = 'Fax'
        Width = 64
      end>
  end
  object UniDBEdit1: TUniDBEdit
    Left = 88
    Top = 8
    Width = 177
    Height = 22
    Hint = ''
    DataField = 'CompanyName'
    DataSource = DataSource
    TabOrder = 1
    ReadOnly = True
  end
  object UniDBEdit2: TUniDBEdit
    Left = 271
    Top = 8
    Width = 202
    Height = 22
    Hint = ''
    DataField = 'ContactName'
    DataSource = DataSource
    TabOrder = 2
    ReadOnly = True
  end
  object ADOQuery1: TADOQuery
    Connection = UniMainModule.ADOConnection1
    CursorType = ctDynamic
    Parameters = <>
    SQL.Strings = (
      'select * from [Customers]')
    Left = 104
    Top = 184
  end
  object DataSource: TDataSource
    DataSet = ADOQuery1
    Left = 168
    Top = 118
  end
end
