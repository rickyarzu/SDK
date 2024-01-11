object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 412
  ClientWidth = 766
  Caption = #1601#1585#1605' '#1575#1589#1604#1740
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ActiveControl = UniDBGrid1
  RTL = True
  OnCreate = UniFormCreate
  DesignSize = (
    766
    412)
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 8
    Top = 8
    Width = 256
    Height = 128
    Hint = ''
    ShowCaption = False
    Caption = 'UniPanel1'
    TabOrder = 0
    object UniEdit1: TUniEdit
      Left = 16
      Top = 16
      Width = 217
      Hint = ''
      Text = ''
      TabOrder = 1
      Color = clWindow
      EmptyText = #1575#1591#1604#1575#1593#1575#1578' ...'
    end
    object UniEdit2: TUniEdit
      Left = 16
      Top = 72
      Width = 217
      Hint = ''
      Text = ''
      TabOrder = 2
      Color = clWindow
      EmptyText = #1575#1591#1604#1575#1593#1575#1578' ...'
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 296
    Top = 8
    Width = 456
    Height = 330
    Hint = ''
    TitleFont.Style = [fsBold]
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    LoadMask.Message = '... '#1583#1585' '#1581#1575#1604' '#1575#1606#1580#1575#1605
    HeaderTitle = #1670#1607#1585#1607' '#1607#1575#1740' '#1578#1575#1585#1740#1582#1740
    HeaderTitleAlign = taCenter
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    Columns = <
      item
        FieldName = 'Fld1'
        Title.Caption = #1575#1587#1605
        Title.Font.Style = [fsBold]
        Width = 124
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Fld2'
        Title.Caption = #1606#1575#1605' '#1662#1583#1585
        Title.Font.Style = [fsBold]
        Width = 124
        Visible = True
        Expanded = False
        CheckBoxField.FieldValues = 'true;false'
      end>
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 511
    Top = 344
    Width = 241
    Height = 25
    Hint = ''
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Anchors = [akRight, akBottom]
    TabOrder = 2
  end
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 393
    Width = 766
    Height = 19
    Hint = ''
    Panels = <
      item
        Text = #1587#1575#1593#1578' '
        Width = 50
      end
      item
        Text = #1578#1575#1585#1740#1582
        Width = 50
      end
      item
        Width = 50
      end>
    SizeGrip = False
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    ParentColor = False
    Color = clWindow
  end
  object UniDBEdit1: TUniDBEdit
    Left = 40
    Top = 168
    Width = 121
    Height = 22
    Hint = ''
    DataField = 'Fld1'
    DataSource = DataSource1
    TabOrder = 4
    Color = clWindow
  end
  object UniDBEdit2: TUniDBEdit
    Left = 40
    Top = 216
    Width = 121
    Height = 22
    Hint = ''
    DataField = 'Fld2'
    DataSource = DataSource1
    TabOrder = 5
    Color = clWindow
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 104
    Data = {
      4C0000009619E0BD0100000018000000020000000000030000004C0004466C64
      3101004A000000010005574944544802000200280004466C643201004A000000
      01000557494454480200020028000000}
    object ClientDataSet1Fld1: TWideStringField
      FieldName = 'Fld1'
    end
    object ClientDataSet1Fld2: TWideStringField
      FieldName = 'Fld2'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 408
    Top = 176
  end
end
