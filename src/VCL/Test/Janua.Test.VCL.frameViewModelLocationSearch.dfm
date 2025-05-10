object frameTestViewModelLocationSearch: TframeTestViewModelLocationSearch
  Left = 0
  Top = 0
  Width = 785
  Height = 597
  TabOrder = 0
  object grpTestShippingAddress: TGroupBox
    Left = 3
    Top = 3
    Width = 737
    Height = 194
    Caption = 'Test Shipping Address Search Model'
    TabOrder = 0
    DesignSize = (
      737
      194)
    object lbCountry: TLabel
      Left = 19
      Top = 73
      Width = 43
      Height = 15
      Caption = 'Country'
    end
    object lbCode: TLabel
      Left = 24
      Top = 136
      Width = 28
      Height = 15
      Caption = 'Code'
    end
    object lbTown: TLabel
      Left = 128
      Top = 136
      Width = 85
      Height = 15
      Caption = 'Town - Location'
    end
    object lbIataCode: TLabel
      Left = 632
      Top = 136
      Width = 54
      Height = 15
      Caption = 'IATA Code'
    end
    object lbAreaCode: TLabel
      Left = 629
      Top = 73
      Width = 55
      Height = 15
      Caption = 'Area Code'
    end
    object edCountry: TEdit
      Left = 21
      Top = 96
      Width = 593
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'edCountry'
    end
    object edCode: TEdit
      Left = 24
      Top = 160
      Width = 91
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      Text = 'Code'
    end
    object edStateProvinceLocation: TEdit
      Left = 128
      Top = 160
      Width = 486
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
    object edIATACode: TEdit
      Left = 632
      Top = 160
      Width = 89
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
    end
    object edAreaCode: TEdit
      Left = 632
      Top = 96
      Width = 86
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
    end
    object edGoogleSearchAddress: TEdit
      Left = 19
      Top = 29
      Width = 574
      Height = 23
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
  object grpMultiTest: TGroupBox
    Left = 3
    Top = 211
    Width = 737
    Height = 302
    Caption = 'Test Shipping Addres Multi Test'
    TabOrder = 1
    DesignSize = (
      737
      302)
    object Label1: TLabel
      Left = 128
      Top = 61
      Width = 43
      Height = 15
      Caption = 'Country'
    end
    object Label2: TLabel
      Left = 19
      Top = 61
      Width = 28
      Height = 15
      Caption = 'Code'
    end
    object Label3: TLabel
      Left = 344
      Top = 61
      Width = 85
      Height = 15
      Caption = 'Town - Location'
    end
    object Label4: TLabel
      Left = 19
      Top = 157
      Width = 28
      Height = 15
      Caption = 'Code'
    end
    object Label5: TLabel
      Left = 128
      Top = 157
      Width = 43
      Height = 15
      Caption = 'Country'
    end
    object Label6: TLabel
      Left = 344
      Top = 157
      Width = 85
      Height = 15
      Caption = 'Town - Location'
    end
    object edCountry1: TEdit
      Left = 128
      Top = 80
      Width = 201
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'edCountry'
    end
    object edCode1: TEdit
      Left = 19
      Top = 80
      Width = 91
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      Text = 'Code'
    end
    object edTown1: TEdit
      Left = 344
      Top = 80
      Width = 270
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
    end
    object edSearch1: TEdit
      Left = 19
      Top = 29
      Width = 574
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      TextHint = 'Google Search Address'
    end
    object btnMultiTest: TButton
      Left = 632
      Top = 16
      Width = 86
      Height = 51
      Caption = 'Start Multi'
      TabOrder = 4
      OnClick = btnMultiTestClick
    end
    object btnSearch1: TButton
      Left = 589
      Top = 27
      Width = 25
      Height = 25
      TabOrder = 5
    end
    object Button4: TButton
      Left = 589
      Top = 123
      Width = 25
      Height = 25
      TabOrder = 6
    end
    object edSearch2: TEdit
      Left = 19
      Top = 125
      Width = 574
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 7
      TextHint = 'Google Search Address'
    end
    object edCode2: TEdit
      Left = 19
      Top = 176
      Width = 91
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 8
      Text = 'Code'
    end
    object edCountry2: TEdit
      Left = 128
      Top = 176
      Width = 201
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 9
      Text = 'edCountry'
    end
    object edTown2: TEdit
      Left = 344
      Top = 176
      Width = 270
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 10
    end
  end
end
