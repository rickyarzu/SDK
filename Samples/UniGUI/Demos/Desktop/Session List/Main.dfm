object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 515
  ClientWidth = 785
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  DesignSize = (
    785
    515)
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 656
    Top = 8
    Width = 125
    Height = 25
    Hint = ''
    Caption = 'Get Sessions'
    Anchors = [akTop, akRight]
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 8
    Width = 642
    Height = 502
    Hint = ''
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete]
    ReadOnly = True
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    Columns = <
      item
        FieldName = 'SessionId'
        Title.Caption = 'Session Id'
        Width = 154
      end
      item
        FieldName = 'IP'
        Title.Caption = 'IP Address'
        Width = 132
      end
      item
        FieldName = 'LastTime'
        Title.Caption = 'Last Accessed'
        Width = 141
      end
      item
        FieldName = 'MyVar'
        Title.Caption = 'My Variable'
        Width = 124
      end>
  end
  object UniButton2: TUniButton
    Left = 656
    Top = 39
    Width = 125
    Height = 25
    Hint = ''
    Caption = 'Terminate Selected'
    Anchors = [akTop, akRight]
    TabOrder = 2
    OnClick = UniButton2Click
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      7A0000009619E0BD0100000018000000040000000000030000007A0009536573
      73696F6E49640100490000000100055749445448020002001900024950010049
      0000000100055749445448020002001400084C61737454696D65080008000000
      0000054D7956617201004900000001000557494454480200020014000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 88
    object ClientDataSet1SessionId: TStringField
      FieldName = 'SessionId'
      Size = 25
    end
    object ClientDataSet1IP: TStringField
      FieldName = 'IP'
    end
    object ClientDataSet1LastTime: TDateTimeField
      FieldName = 'LastTime'
    end
    object ClientDataSet1MyVar: TStringField
      FieldName = 'MyVar'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 200
    Top = 216
  end
end
