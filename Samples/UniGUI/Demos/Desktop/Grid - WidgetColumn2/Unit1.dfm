object UniForm1: TUniForm1
  Left = 0
  Top = 0
  ClientHeight = 277
  ClientWidth = 526
  Caption = 'Edit record'
  BorderStyle = bsDialog
  OldCreateOrder = False
  OnClose = UniFormClose
  BorderIcons = []
  MonitoredKeys.Keys = <>
  ActiveControl = UniDBEdit1
  DesignSize = (
    526
    277)
  PixelsPerInch = 96
  TextHeight = 13
  object UniFieldSet1: TUniFieldSet
    Left = 0
    Top = 0
    Width = 526
    Height = 329
    Hint = ''
    Title = 'Fields'
    Align = alTop
    TabOrder = 0
    object UniDBEdit1: TUniDBEdit
      Left = 40
      Top = 32
      Width = 121
      Height = 22
      Hint = ''
      DataField = 'Category'
      DataSource = UniMainModule.DataSource1
      TabOrder = 1
      FieldLabel = 'Category'
    end
    object UniDBEdit2: TUniDBEdit
      Left = 40
      Top = 72
      Width = 121
      Height = 22
      Hint = ''
      DataField = 'Common_Name'
      DataSource = UniMainModule.DataSource1
      TabOrder = 2
      FieldLabel = 'Common Name'
    end
    object UniDBEdit3: TUniDBEdit
      Left = 48
      Top = 112
      Width = 121
      Height = 22
      Hint = ''
      DataField = 'Species Name'
      DataSource = UniMainModule.DataSource1
      TabOrder = 3
      FieldLabel = 'Species Name'
    end
    object UniDBNumberEdit1: TUniDBNumberEdit
      Left = 48
      Top = 152
      Width = 121
      Height = 22
      Hint = ''
      DataField = 'Length (cm)'
      DataSource = UniMainModule.DataSource1
      TabOrder = 4
      MaxValue = 200.000000000000000000
      ShowTrigger = True
      FieldLabel = 'Length (Cm)'
      DecimalSeparator = ','
    end
  end
  object UniButton1: TUniButton
    Left = 432
    Top = 241
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'OK'
    ModalResult = 1
    Anchors = [akRight, akBottom]
    TabOrder = 1
  end
  object UniButton2: TUniButton
    Left = 17
    Top = 241
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Cancel'
    ModalResult = 2
    Anchors = [akLeft, akBottom]
    TabOrder = 2
  end
end
