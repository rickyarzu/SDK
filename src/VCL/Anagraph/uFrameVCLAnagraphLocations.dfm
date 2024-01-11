inherited FrameVCLAnagraphLocations: TFrameVCLAnagraphLocations
  Font.Height = -13
  Font.Name = 'Segoe UI'
  ParentFont = False
  object lbCompanyName: TLabel
    AlignWithMargins = True
    Left = 12
    Top = 6
    Width = 499
    Height = 17
    Margins.Left = 12
    Margins.Top = 6
    Margins.Right = 12
    Align = alTop
    Caption = 'Location Name '
    ExplicitWidth = 92
  end
  object edCompanyName: TEdit
    AlignWithMargins = True
    Left = 12
    Top = 29
    Width = 499
    Height = 25
    Margins.Left = 12
    Margins.Right = 12
    Align = alTop
    TabOrder = 0
    Text = 'edCompanyName'
  end
  object grpBillingAddress: TGroupBox
    AlignWithMargins = True
    Left = 6
    Top = 60
    Width = 511
    Height = 194
    Margins.Left = 6
    Margins.Right = 6
    Align = alTop
    Caption = 'Shipping Address'
    TabOrder = 1
    ExplicitTop = 52
    DesignSize = (
      511
      194)
    object lbStreetAddress: TLabel
      Left = 16
      Top = 73
      Width = 86
      Height = 17
      Caption = 'Street Address'
    end
    object lbPostalCode: TLabel
      Left = 16
      Top = 136
      Width = 93
      Height = 17
      Caption = 'Zip/Postal Code'
    end
    object lbTown: TLabel
      Left = 128
      Top = 136
      Width = 92
      Height = 17
      Caption = 'Town - Location'
    end
    object lbStateProvince: TLabel
      Left = 632
      Top = 136
      Width = 83
      Height = 17
      Caption = 'State/Province'
    end
    object lbNumber: TLabel
      Left = 641
      Top = 73
      Width = 48
      Height = 17
      Caption = 'Number'
    end
    object edCompanyAddress: TEdit
      Left = 16
      Top = 96
      Width = 372
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'edCompanyName'
    end
    object edPostalCode: TEdit
      Left = 16
      Top = 155
      Width = 98
      Height = 25
      TabOrder = 1
      Text = 'edCompanyName'
    end
    object edTown: TEdit
      Left = 128
      Top = 155
      Width = 242
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      Text = 'edCompanyName'
    end
    object edStateProvince: TEdit
      Left = 385
      Top = 155
      Width = 110
      Height = 25
      Anchors = [akTop, akRight]
      TabOrder = 3
      Text = 'edCompanyName'
    end
    object edAddressNumber: TEdit
      Left = 641
      Top = 96
      Width = 0
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
      Text = 'edCompanyName'
    end
    object edGoogleSearchAddress: TEdit
      Left = 16
      Top = 29
      Width = 479
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      TextHint = 'Google Search Address'
    end
  end
  object ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 260
    Width = 517
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 2
    ExplicitTop = 252
  end
  object ListView1: TListView
    Left = 0
    Top = 292
    Width = 523
    Height = 197
    Align = alClient
    Columns = <>
    TabOrder = 3
    ExplicitTop = 284
    ExplicitHeight = 205
  end
end
