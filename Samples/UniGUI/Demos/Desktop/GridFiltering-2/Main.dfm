object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 572
  ClientWidth = 1111
  Caption = 'Filtering Demo'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ActiveControl = UniEdit1
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 1111
    Height = 572
    Hint = ''
    Align = alClient
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    ExplicitHeight = 522
    object UniDBGrid1: TUniDBGrid
      Left = 0
      Top = 34
      Width = 1111
      Height = 538
      Hint = ''
      DataSource = UniMainModule.DataSource
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgRowSelect, dgConfirmDelete, dgFilterClearButton, dgTabs, dgCancelOnExit]
      ReadOnly = True
      LoadMask.ShowMessage = False
      LoadMask.Message = 'Loading data...'
      LoadMask.Opacity = 0.400000005960464500
      TrackOver = False
      Align = alClient
      TabOrder = 1
      TabStop = False
      OnClearFilters = UniDBGrid1ClearFilters
      OnColumnFilter = UniDBGrid1ColumnFilter
      Columns = <
        item
          FieldName = 'CompanyName'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit1
          Title.Caption = 'Company Name'
          Width = 244
        end
        item
          FieldName = 'ContactName'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit2
          Title.Caption = 'Contact Name'
          Width = 115
        end
        item
          FieldName = 'ContactTitle'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit3
          Title.Caption = 'Contact Title'
          Width = 140
        end
        item
          FieldName = 'Address'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit4
          Title.Caption = 'Address'
          Width = 178
        end
        item
          FieldName = 'City'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit5
          Title.Caption = 'City'
          Width = 94
        end
        item
          FieldName = 'PostalCode'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit6
          Title.Caption = 'Postal Code'
          Width = 71
        end
        item
          FieldName = 'Country'
          Filtering.Enabled = True
          Filtering.Editor = UniDBLookupComboBox1
          Title.Caption = 'Country'
          Width = 109
        end
        item
          FieldName = 'Phone'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit7
          Title.Caption = 'Phone'
          Width = 110
        end>
    end
    object UniPanel2: TUniPanel
      Left = 0
      Top = 0
      Width = 1111
      Height = 34
      Hint = ''
      Align = alTop
      TabOrder = 2
      Caption = ''
      object UniDBNavigator1: TUniDBNavigator
        Left = 870
        Top = 1
        Width = 240
        Height = 32
        Hint = ''
        DataSource = UniMainModule.DataSource
        Align = alRight
        TabOrder = 0
      end
      object UniLabel1: TUniLabel
        Left = 7
        Top = 7
        Width = 452
        Height = 19
        Hint = ''
        Caption = 'Hint: Type in any of the filter editors then press "Enter"'
        ParentFont = False
        Font.Color = clNavy
        Font.Height = -16
        Font.Style = [fsBold]
        TabOrder = 2
      end
    end
    object UniHiddenPanel1: TUniHiddenPanel
      Left = 368
      Top = 152
      Width = 209
      Height = 321
      Hint = ''
      Visible = True
      object UniEdit1: TUniEdit
        Left = 16
        Top = 24
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit1'
        TabOrder = 0
        EmptyText = 'Company...'
        ClearButton = True
      end
      object UniEdit2: TUniEdit
        Left = 16
        Top = 52
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit2'
        TabOrder = 1
        EmptyText = 'Contact...'
        ClearButton = True
      end
      object UniEdit3: TUniEdit
        Left = 16
        Top = 80
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit3'
        TabOrder = 2
        EmptyText = 'Title...'
        ClearButton = True
      end
      object UniEdit4: TUniEdit
        Left = 16
        Top = 108
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit4'
        TabOrder = 3
        EmptyText = 'Address...'
        ClearButton = True
      end
      object UniEdit5: TUniEdit
        Left = 16
        Top = 136
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit5'
        TabOrder = 4
        EmptyText = 'City...'
        ClearButton = True
      end
      object UniEdit6: TUniEdit
        Left = 16
        Top = 164
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit6'
        TabOrder = 5
        EmptyText = 'Postal Code...'
        ClearButton = True
      end
      object UniEdit7: TUniEdit
        Left = 16
        Top = 220
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit7'
        TabOrder = 7
        EmptyText = 'Phone...'
        ClearButton = True
      end
      object UniDBLookupComboBox1: TUniDBLookupComboBox
        Left = 16
        Top = 192
        Width = 145
        Hint = ''
        ListField = 'Country'
        ListSource = UniMainModule.DataSource1
        KeyField = 'Country'
        ListFieldIndex = 0
        EmptyText = 'Country...'
        TabOrder = 6
        Color = clWindow
      end
    end
  end
end
