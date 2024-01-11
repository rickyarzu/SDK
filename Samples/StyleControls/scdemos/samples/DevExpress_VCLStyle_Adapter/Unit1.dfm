object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 
    'StyleControls VCL - DevExpress v. 18.X - QuantumGrid with VCL St' +
    'yles'
  ClientHeight = 314
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    623
    314)
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 8
    Top = 43
    Width = 607
    Height = 263
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'VCLStyle'
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1Field1: TcxGridDBColumn
        DataBinding.FieldName = 'Field1'
      end
      object cxGrid1DBTableView1Field2: TcxGridDBColumn
        DataBinding.FieldName = 'Field2'
        Width = 83
      end
      object cxGrid1DBTableView1Field3: TcxGridDBColumn
        DataBinding.FieldName = 'Field3'
        Width = 102
      end
      object cxGrid1DBTableView1Field4: TcxGridDBColumn
        DataBinding.FieldName = 'Field4'
        Width = 127
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object scLabel3: TscLabel
    Left = 11
    Top = 13
    Width = 28
    Height = 13
    TabOrder = 1
    DragForm = False
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    UseFontColorToStyleColor = False
    Caption = 'Style:'
  end
  object scComboBox1: TscComboBox
    Left = 50
    Top = 10
    Width = 145
    Height = 23
    Style = csOwnerDrawFixed
    ItemIndex = -1
    WordBreak = False
    SelectionStyle = scstStyled
    SelectionColor = clNone
    SelectionTextColor = clHighlightText
    ImageIndex = -1
    ItemHeight = 17
    TabOrder = 2
    StyleKind = scscbDefault
    ShowFocusRect = True
    OnClick = scComboBox1Click
  end
  object scLabel1: TscLabel
    Left = 224
    Top = 8
    Width = 366
    Height = 26
    TabOrder = 3
    DragForm = False
    GlowEffect.Enabled = False
    GlowEffect.Color = clBtnShadow
    GlowEffect.AlphaValue = 255
    GlowEffect.GlowSize = 7
    GlowEffect.Offset = 0
    GlowEffect.Intensive = True
    GlowEffect.StyleColors = True
    AutoSize = True
    WordWrap = True
    UseFontColorToStyleColor = False
    Caption = 
      'Just add scDevExStyleAdapter unit to the StyleControls package, ' +
      'recompile it and set LookAndFeel.Skin property to "VCLStyle" in ' +
      'DevExpress controls!'
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      620000009619E0BD010000001800000004000000000003000000620006466965
      6C64310100490000000100055749445448020002001400064669656C64320400
      010000000000064669656C64330200030000000000064669656C643404000600
      000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Field1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Field2'
        DataType = ftInteger
      end
      item
        Name = 'Field3'
        DataType = ftBoolean
      end
      item
        Name = 'Field4'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 48
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 144
    Top = 120
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    NativeStyle = False
    ScrollbarMode = sbmClassic
    SkinName = 'VCLStyle'
    Left = 264
    Top = 120
  end
  object scStyleManager1: TscStyleManager
    ArrowsType = scsatDefault
    MenuHookEnabled = True
    MenuAlphaBlendValue = 255
    MenuWallpaperIndex = -1
    MenuBackgroundIndex = -1
    MenuBackgroundOverContentIndex = -1
    MenuHeadersSupport = True
    MenuSelectionStyle = scmssStyled
    ScaleStyles = True
    ScaleThemes = False
    ScaleResources = True
    ScaleFormBorder = True
    Left = 416
    Top = 136
  end
  object scStyledForm1: TscStyledForm
    DWMClientShadow = False
    DropDownForm = False
    DropDownAnimation = False
    DropDownBorderColor = clBtnShadow
    StylesMenuSorted = False
    ShowStylesMenu = False
    StylesMenuCaption = 'Styles'
    ClientWidth = 0
    ClientHeight = 0
    ShowHints = True
    Buttons = <>
    ButtonFont.Charset = DEFAULT_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -11
    ButtonFont.Name = 'Tahoma'
    ButtonFont.Style = []
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    CaptionAlignment = taLeftJustify
    InActiveClientColor = clWindow
    InActiveClientColorAlpha = 100
    InActiveClientBlurAmount = 5
    Tabs = <>
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clWindowText
    TabFont.Height = -11
    TabFont.Name = 'Tahoma'
    TabFont.Style = []
    ShowButtons = True
    ShowTabs = True
    TabIndex = 0
    TabsPosition = sctpLeft
    ShowInactiveTab = True
    Left = 520
    Top = 136
  end
end
