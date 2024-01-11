object UniGridsDragDrop: TUniGridsDragDrop
  Left = 0
  Top = 0
  Width = 962
  Height = 623
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    962
    623)
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 8
    Width = 545
    Height = 571
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    TitleFont.Style = [fsBold]
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCheckSelect, dgConfirmDelete, dgMultiSelect]
    ReadOnly = True
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    DragDrop.Enabled = True
    DragDrop.EnableDrag = True
    DragDrop.DragGroup = 'D1'
    OnSelectionChange = UniDBGrid1SelectionChange
    Columns = <
      item
        FieldName = 'Species No'
        Title.Caption = 'Species No'
        Title.Font.Style = [fsBold]
        Width = 64
      end
      item
        FieldName = 'Category'
        Title.Caption = 'Category'
        Title.Font.Style = [fsBold]
        Width = 75
      end
      item
        FieldName = 'Common_Name'
        Title.Caption = 'Common_Name'
        Title.Font.Style = [fsBold]
        Width = 146
      end
      item
        FieldName = 'Species Name'
        Title.Caption = 'Species Name'
        Title.Font.Style = [fsBold]
        Width = 140
      end>
  end
  object UniDBGrid2: TUniDBGrid
    Left = 559
    Top = 8
    Width = 387
    Height = 540
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    TitleFont.Color = clNavy
    TitleFont.Style = [fsBold]
    DataSource = DataSource2
    ReadOnly = True
    LoadMask.Message = 'Loading data...'
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 1
    DragDrop.Enabled = True
    DragDrop.EnableDrop = True
    DragDrop.DropGroup = 'D1'
    Columns = <
      item
        FieldName = 'Species No'
        Title.Caption = 'Species No'
        Title.Font.Color = clNavy
        Title.Font.Style = [fsBold]
        Width = 68
      end
      item
        FieldName = 'Graphic'
        Title.Caption = 'Graphic'
        Title.Font.Color = clNavy
        Title.Font.Style = [fsBold]
        Width = 163
        ImageOptions.Visible = True
        ImageOptions.Width = 150
      end>
  end
  object UniBitBtn3: TUniBitBtn
    Left = 821
    Top = 554
    Width = 125
    Height = 25
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      20000000000000040000C30E0000C30E00000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0066666690666666FF666666FF666666FF666666FF666666FF6666
      66FF666666FF666666FF666666FF666666FFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF008266EEA08266EEFF8266EEFF8266EEFF8266EE30FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008266EE108266
      EEB08266EEFF8266EEFF8266EEFF8266EE5FFFFFFF008266EE42FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008266EE808266
      EEFF8266EEFF8266EEFF8266EE5FFFFFFF008266EE9F8266EEFF8266EE60FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008266EEC08266
      EEFF8266EEFF8266EE5FFFFFFF008266EE9F8266EEFF8266EEFF8266EEFF8266
      EE60FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008266EE308266
      EEF08266EE5FFFFFFF008266EE9F8266EEFF8266EEFF8266EEFF8266EEFF8266
      EEFF8266EE60FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008266
      EE1EFFFFFF008266EE9F8266EEFF8266EEFF8266EEFF8266EEFF8266EEFF8266
      EEFF8266EEFF8266EE60FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008266EE278266EEF08266EEFF8266EEFF8266EEFF8266EEFF8266EEFF8266
      EEFF8266EEFF8266EEFF8266EE60FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008266EE308266EEF08266EEFF8266EEFF8266EEFF8266EEFF8266
      EEFF8266EEFF8266EEFF8266EEFF8266EE60FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008266EE308266EEF08266EEFF8266EEFF8266EEFF8266
      EEFF8266EEFF8266EEFF8266EEFF8266EEC0FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008266EE308266EEF08266EEFF8266EEFF8266
      EEFF8266EEFF8266EEFF8266EEFF8266EEB0FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008266EE308266EEF08266EEFF8266
      EEFF8266EEFF8266EEFF8266EED08266EE10FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008266EE308266EEF08266
      EEFF8266EEFF8266EED08266EE10FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008266EE308266
      EEC08266EEB08266EE10FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    Caption = 'Clear Grid'
    Anchors = [akRight, akBottom]
    TabOrder = 2
    OnClick = UniBitBtn3Click
  end
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 604
    Width = 962
    Height = 19
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    Panels = <
      item
        Width = 250
      end
      item
        Width = 50
      end>
    SizeGrip = False
    Align = alBottom
    ParentColor = False
    Color = clWindow
  end
  object UniLabel1: TUniLabel
    Left = 0
    Top = 585
    Width = 962
    Height = 19
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'Hint: Drag selected rows from left grid and drop them into right' +
      ' grid'
    Align = alBottom
    ParentFont = False
    Font.Color = clNavy
    Font.Height = -16
    Font.Style = [fsBold]
    TabOrder = 4
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 288
    Top = 248
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 672
    Top = 104
  end
  object ClientDataSet2: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 752
    Top = 160
    Data = {
      050100009619E0BD01000000180000000800000000000300000005010A537065
      63696573204E6F08000400000000000843617465676F72790100490000000100
      055749445448020002000F000B436F6D6D6F6E5F4E616D650100490000000100
      055749445448020002001E000C53706563696573204E616D6501004900000001
      000557494454480200020028000B4C656E6774682028636D2908000400000000
      00094C656E6774685F496E0800040000000000054E6F74657304004B00000002
      0007535542545950450200490005005465787400055749445448020002003200
      074772617068696304004B000000010007535542545950450200490009004772
      617068696373000000}
  end
end
