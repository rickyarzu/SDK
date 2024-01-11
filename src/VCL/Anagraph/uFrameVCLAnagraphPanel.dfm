inherited FrameVCLAnagraphPanel: TFrameVCLAnagraphPanel
  Width = 865
  Height = 265
  Font.Height = -15
  ParentFont = False
  ExplicitWidth = 865
  ExplicitHeight = 265
  PixelsPerInch = 96
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 865
    Height = 265
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Company Informations'
      inline frameVCLCompanyInformations1: TframeVCLCompanyInformations
        Left = 0
        Top = 0
        Width = 857
        Height = 230
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 857
        ExplicitHeight = 230
        inherited lbCompanyName: TLabel
          Width = 75
          Height = 13
          ExplicitWidth = 75
          ExplicitHeight = 13
        end
        inherited GroupBox2: TGroupBox
          inherited lbCountryCode: TLabel
            Width = 67
            Height = 13
            ExplicitWidth = 67
            ExplicitHeight = 13
          end
          inherited lbCountry: TLabel
            Width = 42
            Height = 13
            ExplicitWidth = 42
            ExplicitHeight = 13
          end
          inherited Label1: TLabel
            Width = 25
            Height = 13
            ExplicitWidth = 25
            ExplicitHeight = 13
          end
          inherited Label10: TLabel
            Width = 70
            Height = 13
            ExplicitWidth = 70
            ExplicitHeight = 13
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Shipping Address'
      ImageIndex = 1
      inline frameVCLShippingAddress1: TframeVCLShippingAddress
        Left = 0
        Top = 0
        Width = 857
        Height = 230
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 857
        ExplicitHeight = 230
        inherited grpShippingAddress: TGroupBox
          inherited lbStreetAddress: TLabel
            Width = 96
            Height = 20
            ExplicitWidth = 96
            ExplicitHeight = 20
          end
          inherited lbPostalCode: TLabel
            Width = 106
            Height = 20
            ExplicitWidth = 106
            ExplicitHeight = 20
          end
          inherited lbTown: TLabel
            Width = 106
            Height = 20
            ExplicitWidth = 106
            ExplicitHeight = 20
          end
          inherited lbStateProvince: TLabel
            Width = 96
            Height = 20
            ExplicitWidth = 96
            ExplicitHeight = 20
          end
          inherited lbNumber: TLabel
            Width = 54
            Height = 20
            ExplicitWidth = 54
            ExplicitHeight = 20
          end
          inherited edCompanyAddress: TEdit
            Height = 28
            ExplicitHeight = 28
          end
          inherited edPostalCode: TEdit
            Height = 28
            ExplicitHeight = 28
          end
          inherited edTown: TEdit
            Height = 28
            ExplicitHeight = 28
          end
          inherited edStateProvince: TEdit
            Height = 28
            ExplicitHeight = 28
          end
          inherited edAddressNumber: TEdit
            Height = 28
            ExplicitHeight = 28
          end
          inherited edGoogleSearchAddress: TEdit
            Height = 28
            ExplicitHeight = 28
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Billing Address'
      ImageIndex = 2
      object Button1: TButton
        Left = 35
        Top = 3
        Width = 145
        Height = 25
        Caption = 'Copy / Same as ...'
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 30
        Width = 737
        Height = 193
        Caption = 'Shipping Address'
        TabOrder = 1
        DesignSize = (
          737
          193)
        object Label2: TLabel
          Left = 19
          Top = 20
          Width = 96
          Height = 20
          Caption = 'Street Address'
        end
        object Label3: TLabel
          Left = 19
          Top = 77
          Width = 106
          Height = 20
          Caption = 'Zip/Postal Code'
        end
        object Label4: TLabel
          Left = 131
          Top = 77
          Width = 106
          Height = 20
          Caption = 'Town - Location'
        end
        object Label5: TLabel
          Left = 632
          Top = 77
          Width = 96
          Height = 20
          Caption = 'State/Province'
        end
        object Label6: TLabel
          Left = 21
          Top = 131
          Width = 90
          Height = 20
          Caption = 'Country Code'
        end
        object Label7: TLabel
          Left = 131
          Top = 131
          Width = 55
          Height = 20
          Caption = 'Country '
        end
        object Label8: TLabel
          Left = 656
          Top = 131
          Width = 74
          Height = 20
          Caption = 'Short Code'
        end
        object Label9: TLabel
          Left = 656
          Top = 17
          Width = 54
          Height = 20
          Caption = 'Number'
        end
        object Edit3: TEdit
          Left = 21
          Top = 40
          Width = 596
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          Text = 'edCompanyName'
        end
        object Edit4: TEdit
          Left = 19
          Top = 100
          Width = 93
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          Text = 'edCompanyName'
        end
        object Edit5: TEdit
          Left = 131
          Top = 100
          Width = 486
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
          Text = 'edCompanyName'
        end
        object Edit6: TEdit
          Left = 632
          Top = 100
          Width = 89
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
          Text = 'edCompanyName'
        end
        object Edit7: TEdit
          Left = 21
          Top = 154
          Width = 91
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 4
          Text = 'edCompanyName'
        end
        object Edit8: TEdit
          Left = 131
          Top = 154
          Width = 510
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 5
          Text = 'edCompanyName'
        end
        object Edit9: TEdit
          Left = 656
          Top = 154
          Width = 65
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 6
          Text = 'edCompanyName'
        end
        object Edit10: TEdit
          Left = 632
          Top = 40
          Width = 89
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 7
          Text = 'edCompanyName'
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Payment Terms and Conditions'
      ImageIndex = 3
    end
    object TabSheet5: TTabSheet
      Caption = 'Bank Accounnt'
      ImageIndex = 4
    end
  end
end
