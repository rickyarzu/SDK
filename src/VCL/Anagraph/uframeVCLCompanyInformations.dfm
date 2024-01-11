inherited frameVCLCompanyInformations: TframeVCLCompanyInformations
  Width = 770
  Height = 185
  ParentFont = False
  ExplicitWidth = 770
  ExplicitHeight = 185
  object lbCompanyName: TLabel
    Left = 32
    Top = 9
    Width = 75
    Height = 13
    Caption = 'Company Name'
  end
  object edCompanyName: TEdit
    Left = 32
    Top = 32
    Width = 713
    Height = 21
    TabOrder = 0
  end
  object GroupBox2: TGroupBox
    Left = 15
    Top = 80
    Width = 737
    Height = 90
    Caption = 'Vat Identification andd Country'
    TabOrder = 1
    DesignSize = (
      737
      90)
    object lbCountryCode: TLabel
      Left = 24
      Top = 24
      Width = 67
      Height = 13
      Caption = 'Country Code'
    end
    object lbCountry: TLabel
      Left = 152
      Top = 24
      Width = 42
      Height = 13
      Caption = 'Country '
    end
    object Label1: TLabel
      Left = 552
      Top = 24
      Width = 25
      Height = 13
      Caption = 'Code'
    end
    object Label10: TLabel
      Left = 592
      Top = 24
      Width = 70
      Height = 13
      Caption = 'Vat ID Number'
    end
    object edCoutryCode: TEdit
      Left = 24
      Top = 40
      Width = 105
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'EDCOMPANYNAME'
    end
    object edCountryName: TEdit
      Left = 152
      Top = 40
      Width = 394
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
    object edContryISO2: TEdit
      Left = 552
      Top = 40
      Width = 31
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object edVatID: TEdit
      Left = 589
      Top = 40
      Width = 137
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      NumbersOnly = True
      TabOrder = 3
    end
  end
end
