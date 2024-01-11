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
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
    LoadMask.ShowMessage = False
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    Columns = <
      item
        FieldName = 'OrderNo'
        Title.Caption = 'OrderNo'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'CustNo'
        Title.Caption = 'CustNo'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Lookup'
        Title.Caption = 'Lookup Field (Capital)'
        Width = 124
        Color = 12713921
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'ShipToCountry'
        Title.Caption = 'ShipToCountry'
        Width = 124
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'SaleDate'
        Title.Caption = 'SaleDate'
        Width = 112
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'ShipDate'
        Title.Caption = 'ShipDate'
        Width = 112
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'EmpNo'
        Title.Caption = 'EmpNo'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Terms'
        Title.Caption = 'Terms'
        Width = 40
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'PaymentMethod'
        Title.Caption = 'PaymentMethod'
        Width = 82
        CheckBoxField.FieldValues = 'true;false'
      end>
  end
end
