inherited frameVCLShippingAddress: TframeVCLShippingAddress
  Width = 744
  Height = 200
  Font.Height = -13
  ParentFont = False
  ExplicitWidth = 744
  ExplicitHeight = 200
  PixelsPerInch = 96
  object grpShippingAddress: TGroupBox
    Left = 3
    Top = 3
    Width = 737
    Height = 194
    Caption = 'Shipping Address'
    TabOrder = 0
    DesignSize = (
      737
      194)
    object lbStreetAddress: TLabel
      Left = 19
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
      Left = 629
      Top = 73
      Width = 48
      Height = 17
      Caption = 'Number'
    end
    object edCompanyAddress: TEdit
      Left = 21
      Top = 96
      Width = 593
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'edCompanyName'
    end
    object edPostalCode: TEdit
      Left = 24
      Top = 160
      Width = 91
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      Text = 'edCompanyName'
    end
    object edTown: TEdit
      Left = 128
      Top = 160
      Width = 486
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
    object edStateProvince: TEdit
      Left = 632
      Top = 160
      Width = 89
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
    end
    object edAddressNumber: TEdit
      Left = 629
      Top = 96
      Width = 89
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
    end
    object edGoogleSearchAddress: TEdit
      Left = 19
      Top = 29
      Width = 702
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      TextHint = 'Google Search Address'
    end
  end
end
