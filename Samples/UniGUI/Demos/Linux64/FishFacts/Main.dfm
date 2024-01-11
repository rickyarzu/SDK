object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 610
  ClientWidth = 880
  Caption = 'Fish Facts'
  OnShow = UniFormShow
  Position = poDesktopCenter
  OldCreateOrder = False
  Menu = UniMainMenu1
  MonitoredKeys.Keys = <>
  ActiveControl = UniDBGrid1
  DesignSize = (
    880
    610)
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 8
    Top = 29
    Width = 45
    Height = 13
    Hint = ''
    Caption = 'Category'
    TabOrder = 1
  end
  object UniLabel2: TUniLabel
    Left = 8
    Top = 68
    Width = 71
    Height = 13
    Hint = ''
    Caption = 'Common Name'
    TabOrder = 7
  end
  object UniLabel3: TUniLabel
    Left = 8
    Top = 109
    Width = 57
    Height = 13
    Hint = ''
    Caption = 'Length (cm)'
    TabOrder = 9
  end
  object UniLabel4: TUniLabel
    Left = 8
    Top = 151
    Width = 54
    Height = 13
    Hint = ''
    Caption = 'Length (In)'
    TabOrder = 10
  end
  object UniLabel5: TUniLabel
    Left = 173
    Top = 6
    Width = 33
    Height = 13
    Hint = ''
    Caption = 'Picture'
    TabOrder = 11
  end
  object UniLabel6: TUniLabel
    Left = 456
    Top = 6
    Width = 28
    Height = 13
    Hint = ''
    Caption = 'Notes'
    TabOrder = 12
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 225
    Width = 880
    Height = 366
    Hint = ''
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
    LoadMask.Message = 'Loading data...'
    ForceFit = True
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Columns = <
      item
        FieldName = 'Species No'
        Title.Caption = 'Species No'
        Width = 64
      end
      item
        FieldName = 'Category'
        Title.Caption = 'Category'
        Width = 94
      end
      item
        FieldName = 'Common_Name'
        Title.Caption = 'Common_Name'
        Width = 144
      end
      item
        FieldName = 'Species Name'
        Title.Caption = 'Species Name'
        Width = 187
      end
      item
        FieldName = 'Length (cm)'
        Title.Caption = 'Length (cm)'
        Width = 64
      end
      item
        FieldName = 'Length_In'
        Title.Caption = 'Length_In'
        Width = 64
      end
      item
        FieldName = 'Graphic'
        Title.Caption = 'Graphic'
        Width = 202
        ImageOptions.Visible = True
        ImageOptions.Height = 96
      end>
  end
  object UniDBImage1: TUniDBImage
    Left = 173
    Top = 25
    Width = 277
    Height = 162
    Hint = ''
    DataField = 'Graphic'
    DataSource = DataSource1
    Center = False
  end
  object UniDBEdit1: TUniDBEdit
    Left = 8
    Top = 44
    Width = 159
    Height = 21
    Hint = ''
    DataField = 'Category'
    DataSource = DataSource1
    TabOrder = 2
  end
  object UniDBEdit2: TUniDBEdit
    Left = 8
    Top = 84
    Width = 159
    Height = 21
    Hint = ''
    DataField = 'Common_Name'
    DataSource = DataSource1
    TabOrder = 3
  end
  object UniDBEdit3: TUniDBEdit
    Left = 8
    Top = 125
    Width = 159
    Height = 21
    Hint = ''
    DataField = 'Length (cm)'
    DataSource = DataSource1
    TabOrder = 4
  end
  object UniDBEdit4: TUniDBEdit
    Left = 8
    Top = 166
    Width = 159
    Height = 21
    Hint = ''
    DataField = 'Length_In'
    DataSource = DataSource1
    TabOrder = 5
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 173
    Top = 193
    Width = 270
    Height = 25
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    DataSource = DataSource1
    IconSet = icsFontAwesome
    TabOrder = 6
  end
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 591
    Width = 880
    Height = 19
    Hint = ''
    Panels = <
      item
        Width = 150
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
    SizeGrip = True
    Align = alBottom
    ParentColor = False
    Color = clBtnFace
    ExplicitWidth = 806
  end
  object UniDBMemo1: TUniDBMemo
    Left = 456
    Top = 25
    Width = 424
    Height = 194
    Hint = ''
    DataField = 'Notes'
    DataSource = DataSource1
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 8
    ExplicitWidth = 350
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.FDMemTable1
    OnDataChange = DataSource1DataChange
    Left = 344
    Top = 92
  end
  object UniMainMenu1: TUniMainMenu
    Images = UniNativeImageList1
    Left = 216
    Top = 84
    object File1: TUniMenuItem
      Caption = 'File'
      object Exit1: TUniMenuItem
        Caption = 'Exit'
        ImageIndex = 0
        OnClick = Exit1Click
      end
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 288
    Top = 36
    Images = {
      01000000FFFFFF1F041B01000089504E470D0A1A0A0000000D49484452000000
      100000001008060000001FF3FF61000000097048597300000EC300000EC301C7
      6FA864000000CD49444154388D63FCFFFF3F032580055DE0DDC97AA24C14326F
      646460606060A2C87A9A182064DEC808731E31001E06DE759B12181818E63330
      307C6460607058EC4D8201E89AB736F95D6060F083BB025FC0B2206966606060
      E067606038EF5DB709AE606B931F5EEF901C884CEC02A82ED8DAE4B7006A23CC
      15895B9BFC1660D3CC26A8C1C0A316C9F0E5D672B818232C25A2792570B1F7D9
      7C06060607640318993918B8143C19BE3DD8CE206852C98862003A7877B2FE3D
      03038300564906444A243B29C3C0204CCAA40200564F3D7F6040271F00000000
      49454E44AE426082}
  end
end
