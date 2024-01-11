object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 569
  ClientWidth = 828
  Caption = 'MainForm'
  Position = poDesktopCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ActiveControl = UniDBGrid1
  DesignSize = (
    828
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
    TabOrder = 1
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 113
    Top = 4
    Width = 240
    Height = 25
    Hint = ''
    DataSource = UniMainModule.DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 0
  end
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 550
    Width = 828
    Height = 19
    Hint = ''
    Panels = <>
    SizeGrip = True
    Font.Color = clBtnText
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    ParentColor = False
    Color = clBtnFace
  end
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 35
    Width = 801
    Height = 486
    Hint = ''
    DataSource = UniMainModule.DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    LoadMask.ShowMessage = False
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    Columns = <
      item
        FieldName = 'OrderNo'
        Title.Caption = 'OrderNo'
        Width = 64
        Visible = True
        Alignment = taRightJustify
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'CustNo'
        Title.Caption = 'CustNo'
        Width = 64
        Visible = True
        Alignment = taRightJustify
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'ShipToCountry'
        Title.Caption = 'ShipToCountry'
        Width = 128
        Visible = True
        Color = 12320733
        Expanded = False
        Editor = UniDBLookupComboBox1
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'SaleDate'
        Title.Caption = 'SaleDate'
        Width = 112
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'ShipDate'
        Title.Caption = 'ShipDate'
        Width = 112
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'EmpNo'
        Title.Caption = 'EmpNo'
        Width = 64
        Visible = True
        Alignment = taRightJustify
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Terms'
        Title.Caption = 'Terms'
        Width = 40
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'PaymentMethod'
        Title.Caption = 'PaymentMethod'
        Width = 82
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end>
  end
  object UniHiddenPanel1: TUniHiddenPanel
    Left = 568
    Top = 144
    Width = 201
    Height = 265
    Hint = ''
    Visible = False
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Left = 24
      Top = 24
      Width = 145
      Hint = ''
      ListFormat = '%s (%s - %s)'
      ListField = 'Name;Capital;Continent'
      ListSource = UniMainModule.DataSource2
      KeyField = 'Name'
      ListFieldIndex = 0
      TabOrder = 0
      ParentColor = False
      Color = clWindow
      MatchFieldWidth = False
    end
  end
end
