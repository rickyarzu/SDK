object framVCLAnagraphShort: TframVCLAnagraphShort
  Left = 0
  Top = 0
  Width = 732
  Height = 218
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  DesignSize = (
    732
    218)
  object lbCompanyName: TLabel
    Left = 21
    Top = 9
    Width = 107
    Height = 20
    Caption = 'Company Name'
  end
  object lbStreetAddress: TLabel
    Left = 21
    Top = 73
    Width = 96
    Height = 20
    Caption = 'Street Address'
  end
  object lbNumber: TLabel
    Left = 620
    Top = 73
    Width = 54
    Height = 20
    Anchors = [akTop]
    Caption = 'Number'
  end
  object lbPostalCode: TLabel
    Left = 16
    Top = 136
    Width = 106
    Height = 20
    Caption = 'Zip/Postal Code'
  end
  object lbTown: TLabel
    Left = 128
    Top = 136
    Width = 106
    Height = 20
    Caption = 'Town - Location'
  end
  object lbStateProvince: TLabel
    Left = 620
    Top = 134
    Width = 96
    Height = 20
    Anchors = [akTop]
    Caption = 'State/Province'
  end
  object edCompanyName: TEdit
    Left = 21
    Top = 40
    Width = 540
    Height = 28
    TabOrder = 0
  end
  object edCompanyAddress: TEdit
    Left = 20
    Top = 96
    Width = 580
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    Text = 'edCompanyName'
  end
  object edAddressNumber: TEdit
    Left = 620
    Top = 99
    Width = 89
    Height = 28
    Anchors = [akTop]
    TabOrder = 2
  end
  object edPostalCode: TEdit
    Left = 24
    Top = 160
    Width = 81
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 3
    Text = 'edCompanyName'
  end
  object edTown: TEdit
    Left = 127
    Top = 160
    Width = 473
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
  end
  object edStateProvince: TEdit
    Left = 620
    Top = 160
    Width = 89
    Height = 28
    Anchors = [akTop]
    TabOrder = 5
  end
  object btnSearchAnagraph: TButton
    Left = 567
    Top = 40
    Width = 33
    Height = 28
    Caption = '...'
    TabOrder = 6
  end
  object btnEditAnagraph: TButton
    Left = 620
    Top = 39
    Width = 89
    Height = 28
    Caption = 'Edit ...'
    TabOrder = 7
  end
end
