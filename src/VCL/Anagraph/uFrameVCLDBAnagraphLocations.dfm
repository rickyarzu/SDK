object FrameVCLDBAnagraphLocations: TFrameVCLDBAnagraphLocations
  Left = 0
  Top = 0
  ClientHeight = 436
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object lbCompanyName: TLabel
    AlignWithMargins = True
    Left = 12
    Top = 6
    Width = 730
    Height = 13
    Margins.Left = 12
    Margins.Top = 6
    Margins.Right = 12
    Align = alTop
    Caption = 'Location Name '
    ExplicitWidth = 73
  end
  object edCompanyName: TEdit
    AlignWithMargins = True
    Left = 12
    Top = 25
    Width = 730
    Height = 21
    Margins.Left = 12
    Margins.Right = 12
    Align = alTop
    TabOrder = 0
    Text = 'edCompanyName'
  end
  object grpBillingAddress: TGroupBox
    AlignWithMargins = True
    Left = 6
    Top = 52
    Width = 742
    Height = 194
    Margins.Left = 6
    Margins.Right = 6
    Align = alTop
    Caption = 'Shipping Address'
    TabOrder = 1
    DesignSize = (
      742
      194)
    object lbStreetAddress: TLabel
      Left = 16
      Top = 73
      Width = 72
      Height = 13
      Caption = 'Street Address'
    end
    object lbPostalCode: TLabel
      Left = 16
      Top = 136
      Width = 75
      Height = 13
      Caption = 'Zip/Postal Code'
    end
    object lbTown: TLabel
      Left = 128
      Top = 136
      Width = 76
      Height = 13
      Caption = 'Town - Location'
    end
    object lbStateProvince: TLabel
      Left = 632
      Top = 136
      Width = 71
      Height = 13
      Caption = 'State/Province'
    end
    object lbNumber: TLabel
      Left = 641
      Top = 73
      Width = 37
      Height = 13
      Caption = 'Number'
    end
    object edCompanyAddress: TEdit
      Left = 16
      Top = 96
      Width = 603
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'edCompanyName'
    end
    object edPostalCode: TEdit
      Left = 16
      Top = 155
      Width = 98
      Height = 21
      TabOrder = 1
      Text = 'edCompanyName'
    end
    object edTown: TEdit
      Left = 128
      Top = 155
      Width = 473
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      Text = 'edCompanyName'
    end
    object edStateProvince: TEdit
      Left = 616
      Top = 155
      Width = 110
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 3
      Text = 'edCompanyName'
    end
    object edAddressNumber: TEdit
      Left = 641
      Top = 96
      Width = 82
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
      Text = 'edCompanyName'
    end
    object edGoogleSearchAddress: TEdit
      Left = 16
      Top = 29
      Width = 710
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      TextHint = 'Google Search Address'
    end
  end
  object ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 252
    Width = 748
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 2
  end
  object ListView1: TListView
    Left = 0
    Top = 284
    Width = 754
    Height = 152
    Align = alClient
    Columns = <>
    TabOrder = 3
  end
  object dsAnagraph: TDataSource
    Left = 360
    Top = 256
  end
end
