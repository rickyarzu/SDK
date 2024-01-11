object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 569
  ClientWidth = 764
  Caption = 'MainForm'
  Position = poDesktopCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ActiveControl = UniDBGrid1
  DesignSize = (
    764
    569)
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 8
    Top = 16
    Width = 38
    Height = 13
    Hint = ''
    Caption = 'Orders'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 3
  end
  object UniLabel2: TUniLabel
    Left = 510
    Top = 16
    Width = 171
    Height = 13
    Hint = ''
    Caption = 'Customer No  (Lookup Combo)'
    Anchors = [akTop, akRight]
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 5
  end
  object UniLabel3: TUniLabel
    Left = 510
    Top = 75
    Width = 149
    Height = 13
    Hint = ''
    Caption = 'Customer No (Lookup List)'
    Anchors = [akTop, akRight]
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 6
  end
  object UniLabel4: TUniLabel
    Left = 8
    Top = 339
    Width = 155
    Height = 13
    Hint = ''
    Caption = 'Customers  (Lookup Table )'
    Anchors = [akLeft, akBottom]
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 7
  end
  object UniDBLookupListBox1: TUniDBLookupListBox
    Left = 510
    Top = 94
    Width = 246
    Height = 446
    Hint = ''
    ListField = 'CustNo;Contact'
    ListSource = UniMainModule.DataSource2
    KeyField = 'CustNo'
    ListFieldIndex = 0
    DataField = 'CustNo'
    DataSource = UniMainModule.DataSource1
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 0
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 113
    Top = 4
    Width = 240
    Height = 25
    Hint = ''
    DataSource = UniMainModule.DataSource1
    TabOrder = 1
  end
  object UniDBGrid2: TUniDBGrid
    Left = 8
    Top = 358
    Width = 496
    Height = 184
    Hint = ''
    DataSource = UniMainModule.DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgTabs, dgCancelOnExit]
    WebOptions.Paged = False
    LoadMask.ShowMessage = False
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 2
    Columns = <
      item
        FieldName = 'CustNo'
        Title.Caption = 'CustNo'
        Width = 64
      end
      item
        FieldName = 'Company'
        Title.Caption = 'Company'
        Width = 184
      end
      item
        FieldName = 'Contact'
        Title.Caption = 'Contact'
        Width = 124
      end>
  end
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 550
    Width = 764
    Height = 19
    Hint = ''
    Panels = <>
    SizeGrip = True
    Align = alBottom
    ParentColor = False
    Color = clBtnFace
  end
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 35
    Width = 496
    Height = 291
    Hint = ''
    DataSource = UniMainModule.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgTabs, dgCancelOnExit]
    WebOptions.Paged = False
    LoadMask.ShowMessage = False
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    Columns = <
      item
        FieldName = 'OrderNo'
        Title.Caption = 'OrderNo'
        Width = 64
      end
      item
        FieldName = 'CustNo'
        Title.Caption = 'CustNo'
        Width = 64
      end
      item
        FieldName = 'SaleDate'
        Title.Caption = 'SaleDate'
        Width = 112
      end
      item
        FieldName = 'ShipDate'
        Title.Caption = 'ShipDate'
        Width = 112
      end
      item
        FieldName = 'EmpNo'
        Title.Caption = 'EmpNo'
        Width = 64
      end
      item
        FieldName = 'Terms'
        Title.Caption = 'Terms'
        Width = 40
      end
      item
        FieldName = 'PaymentMethod'
        Title.Caption = 'PaymentMethod'
        Width = 82
      end
      item
        FieldName = 'ItemsTotal'
        Title.Caption = 'ItemsTotal'
        Width = 64
      end
      item
        FieldName = 'TaxRate'
        Title.Caption = 'TaxRate'
        Width = 64
      end
      item
        FieldName = 'Freight'
        Title.Caption = 'Freight'
        Width = 64
      end
      item
        FieldName = 'AmountPaid'
        Title.Caption = 'AmountPaid'
        Width = 64
      end>
  end
  object UniDBLookupComboBox1: TUniDBLookupComboBox
    Left = 510
    Top = 35
    Width = 246
    Hint = ''
    ListField = 'CustNo;Contact'
    ListSource = UniMainModule.DataSource2
    KeyField = 'CustNo'
    ListFieldIndex = 0
    DataField = 'CustNo'
    DataSource = UniMainModule.DataSource1
    Anchors = [akTop, akRight]
    TabOrder = 9
    Color = clWindow
  end
end
