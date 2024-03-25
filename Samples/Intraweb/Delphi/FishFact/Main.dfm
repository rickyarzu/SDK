object formMain: TformMain
  Left = 0
  Top = 0
  Width = 850
  Height = 680
  Visible = False
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'FishFact Edit Demo'
  OnCreate = IWFormModuleBaseCreate
  OnDestroy = IWAppFormDestroy
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignSize = (
    850
    680)
  DesignLeft = 8
  DesignTop = 8
  object IWRegion1: TIWRegion
    Left = 46
    Top = 60
    Width = 758
    Height = 557
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    RenderInvisibleControls = False
    TabOrder = 0
    Anchors = []
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = 15461355
    ZIndex = -1
    DesignSize = (
      758
      557)
    object IWDBImage1: TIWDBImage
      Left = 8
      Top = 32
      Width = 281
      Height = 145
      BorderOptions.Width = 0
      TabOrder = -1
      UseSize = True
      FriendlyName = 'IWDBImage1'
      DataField = 'Graphic'
      DataSource = dsrcMain
    end
    object IWDB3Navigator1: TIWDBNavigator
      Left = 256
      Top = 1
      Width = 243
      Height = 28
      Anchors = [akTop]
      Confirmations.Delete = 'Are you sure you want to delete this record?'
      Confirmations.Post = 'Are you sure you want to update this record?'
      Confirmations.Cancel = 'Are you sure you want to cancel your changes to this record?'
      DataSource = dsrcMain
      FriendlyName = 'IWDB3Navigator1'
      ImageHeight = 21
      ImageWidth = 21
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Orientation = orHorizontal
    end
    object dgrdFish: TIWDBGrid
      Left = 301
      Top = 32
      Width = 452
      Height = 145
      BorderColors.Color = clNone
      BorderColors.Light = clNone
      BorderColors.Dark = clNone
      BGColor = clNone
      BorderSize = 1
      BorderStyle = tfDefault
      CellPadding = 0
      CellSpacing = 0
      Font.Color = clWindowText
      Font.Size = 10
      Font.Style = []
      FrameBuffer = 40
      Lines = tlAll
      OnRenderCell = dgrdFishRenderCell
      UseFrame = True
      UseSize = True
      ScrollToCurrentRow = False
      Columns = <
        item
          Alignment = taLeftJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clWindowText
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          ShowHint = True
          VAlign = vaMiddle
          Visible = True
          Width = '35%'
          Wrap = False
          RawText = False
          Css = ''
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'Common_Name'
          LinkField = 'Species No'
          OnClick = dgrdFishColumns0Click
          OnTitleClick = dgrdFishColumns0TitleClick
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clWindowText
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = True
          Title.Height = '0'
          Title.ShowHint = True
          Title.Text = 'Common Name'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
          Title.RawText = True
        end
        item
          Alignment = taLeftJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clWindowText
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          ShowHint = True
          VAlign = vaMiddle
          Visible = True
          Width = '25%'
          Wrap = False
          RawText = False
          Css = ''
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'Category'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clWindowText
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = True
          Title.Height = '0'
          Title.ShowHint = True
          Title.Text = 'Category'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
          Title.RawText = True
        end
        item
          Alignment = taLeftJustify
          BGColor = clNone
          DoSubmitValidation = True
          Font.Color = clWindowText
          Font.Size = 10
          Font.Style = []
          Header = False
          Height = '0'
          ShowHint = True
          VAlign = vaMiddle
          Visible = True
          Width = '40%'
          Wrap = False
          RawText = False
          Css = ''
          BlobCharLimit = 0
          CompareHighlight = hcNone
          DataField = 'Species Name'
          Title.Alignment = taCenter
          Title.BGColor = clNone
          Title.DoSubmitValidation = True
          Title.Font.Color = clWindowText
          Title.Font.Size = 10
          Title.Font.Style = [fsBold]
          Title.Header = True
          Title.Height = '0'
          Title.ShowHint = True
          Title.Text = 'Species Name'
          Title.VAlign = vaMiddle
          Title.Visible = True
          Title.Width = '0'
          Title.Wrap = False
          Title.RawText = True
        end>
      DataSource = dsrcMain
      FooterRowCount = 1
      FriendlyName = 'dgrdFish'
      FromStart = True
      HighlightColor = clHighlightText
      HighlightRows = False
      Options = [dgShowTitles]
      RefreshMode = rmAutomatic
      RowLimit = 0
      RollOver = False
      RowClick = False
      RollOverColor = clHighlight
      RowHeaderColor = clNone
      RowAlternateColor = clNone
      RowCurrentColor = clNone
      TabOrder = -1
    end
    object Label1: TIWLabel
      Left = 304
      Top = 192
      Width = 39
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'Label1'
      Caption = 'Notes'
    end
    object Label2: TIWLabel
      Left = 8
      Top = 192
      Width = 102
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'Label2'
      Caption = 'Length (Inches):'
    end
    object Label3: TIWLabel
      Left = 132
      Top = 192
      Width = 137
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'Label3'
      Caption = 'Length (Centimeters):'
    end
    object Label4: TIWLabel
      Left = 8
      Top = 248
      Width = 102
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'Label4'
      Caption = 'Species Name:'
    end
    object Label5: TIWLabel
      Left = 8
      Top = 304
      Width = 106
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'Label5'
      Caption = 'Common Name:'
    end
    object Label6: TIWLabel
      Left = 8
      Top = 360
      Width = 63
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'Label6'
      Caption = 'Category:'
    end
    object DBEdit1: TIWDBEdit
      Left = 8
      Top = 216
      Width = 64
      Height = 21
      Editable = False
      NonEditableAsLabel = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'TIWDBEdit1'
      SubmitOnAsyncEvent = True
      TabOrder = 1
      AutoEditable = True
      DataField = 'Length_In'
      PasswordPrompt = False
      DataSource = dsrcMain
    end
    object DBEdit2: TIWDBEdit
      Left = 132
      Top = 216
      Width = 64
      Height = 21
      NonEditableAsLabel = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'TIWDBEdit1'
      SubmitOnAsyncEvent = True
      TabOrder = 2
      AutoEditable = True
      DataField = 'Length (cm)'
      PasswordPrompt = False
      DataSource = dsrcMain
    end
    object DBEdit3: TIWDBEdit
      Left = 8
      Top = 272
      Width = 265
      Height = 21
      NonEditableAsLabel = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'Species Name'
      SubmitOnAsyncEvent = True
      TabOrder = 3
      AutoEditable = True
      DataField = 'Species Name'
      PasswordPrompt = False
      DataSource = dsrcMain
    end
    object DBEdit4: TIWDBEdit
      Left = 8
      Top = 328
      Width = 265
      Height = 21
      NonEditableAsLabel = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'Common Name'
      SubmitOnAsyncEvent = True
      TabOrder = 4
      AutoEditable = True
      DataField = 'Common_Name'
      PasswordPrompt = False
      DataSource = dsrcMain
    end
    object DBEdit5: TIWDBEdit
      Left = 8
      Top = 384
      Width = 94
      Height = 21
      NonEditableAsLabel = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'Category'
      SubmitOnAsyncEvent = True
      TabOrder = 5
      AutoEditable = True
      DataField = 'Category'
      PasswordPrompt = False
      DataSource = dsrcMain
    end
    object DBMemo1: TIWDBMemo
      Left = 304
      Top = 216
      Width = 449
      Height = 281
      BGColor = clNone
      Editable = False
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      InvisibleBorder = False
      HorizScrollBar = False
      VertScrollBar = True
      Required = True
      TabOrder = 6
      SubmitOnAsyncEvent = True
      AutoEditable = True
      DataField = 'Notes'
      DataSource = dsrcMain
      FriendlyName = 'DBMemo1'
    end
    object IWDBEdit1: TIWDBEdit
      Left = 152
      Top = 384
      Width = 121
      Height = 21
      NonEditableAsLabel = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'Species No'
      SubmitOnAsyncEvent = True
      TabOrder = 7
      AutoEditable = True
      DataField = 'Species No'
      PasswordPrompt = False
      DataSource = dsrcMain
    end
    object IWLabel1: TIWLabel
      Left = 152
      Top = 360
      Width = 81
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'IWLabel1'
      Caption = 'Species No:'
    end
    object IWLabel2: TIWLabel
      Left = 8
      Top = 420
      Width = 217
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'IWLabel2'
      Caption = 'Update Picture (bitmaps only):'
    end
  end
  object dsrcMain: TDataSource
    DataSet = ClientDataSet1
    Left = 492
    Top = 112
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    IndexName = 'DEFAULT_ORDER'
    Params = <>
    Left = 420
    Top = 92
    object ClientDataSet1SpeciesNo: TFloatField
      FieldName = 'Species No'
      Origin = 'DBDEMOS."biolife.DB".Species No'
    end
    object ClientDataSet1Notes: TMemoField
      FieldName = 'Notes'
      Origin = 'DBDEMOS."biolife.DB".Notes'
      BlobType = ftMemo
      Size = 50
    end
    object ClientDataSet1Length_In: TFloatField
      FieldName = 'Length_In'
      Origin = 'DBDEMOS."biolife.DB".Length_In'
    end
    object ClientDataSet1Lengthcm: TFloatField
      FieldName = 'Length (cm)'
      Origin = 'DBDEMOS."biolife.DB".Length (cm)'
    end
    object ClientDataSet1SpeciesName: TStringField
      FieldName = 'Species Name'
      Origin = 'DBDEMOS."biolife.DB".Species Name'
      Size = 40
    end
    object ClientDataSet1Common_Name: TStringField
      FieldName = 'Common_Name'
      Origin = 'DBDEMOS."biolife.DB".Common_Name'
      Size = 30
    end
    object ClientDataSet1Category: TStringField
      FieldName = 'Category'
      Origin = 'DBDEMOS."biolife.DB".Category'
      Size = 15
    end
    object ClientDataSet1Graphic: TGraphicField
      FieldName = 'Graphic'
      Origin = 'DBDEMOS."biolife.DB".Graphic'
      BlobType = ftGraphic
    end
  end
end
