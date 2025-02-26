object frameTestViewModelAnagraphSearch: TframeTestViewModelAnagraphSearch
  Left = 0
  Top = 0
  Width = 773
  Height = 227
  TabOrder = 0
  object grpTestShippingAddress: TGroupBox
    Left = 16
    Top = 15
    Width = 737
    Height = 194
    Caption = 'Test Shipping Address Search Model'
    TabOrder = 0
    DesignSize = (
      737
      194)
    object lbStreetAddress: TLabel
      Left = 19
      Top = 73
      Width = 75
      Height = 15
      Caption = 'Street Address'
    end
    object lbPostalCode: TLabel
      Left = 16
      Top = 136
      Width = 85
      Height = 15
      Caption = 'Zip/Postal Code'
    end
    object lbTown: TLabel
      Left = 128
      Top = 136
      Width = 85
      Height = 15
      Caption = 'Town - Location'
    end
    object lbStateProvince: TLabel
      Left = 632
      Top = 136
      Width = 77
      Height = 15
      Caption = 'State/Province'
    end
    object lbNumber: TLabel
      Left = 629
      Top = 73
      Width = 44
      Height = 15
      Caption = 'Number'
    end
    object edCompanyAddress: TEdit
      Left = 21
      Top = 96
      Width = 593
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'edCompanyName'
    end
    object edPostalCode: TEdit
      Left = 24
      Top = 160
      Width = 91
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      Text = 'edCompanyName'
    end
    object edTown: TEdit
      Left = 128
      Top = 160
      Width = 486
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
    object edStateProvince: TEdit
      Left = 632
      Top = 160
      Width = 89
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
    end
    object edAddressNumber: TEdit
      Left = 632
      Top = 96
      Width = 86
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
    end
    object edGoogleSearchAddress: TEdit
      Left = 19
      Top = 29
      Width = 574
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      TextHint = 'Google Search Address'
    end
    object Button1: TButton
      Left = 632
      Top = 16
      Width = 86
      Height = 51
      Caption = 'Start Test'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 589
      Top = 27
      Width = 25
      Height = 25
      TabOrder = 7
    end
  end
end
