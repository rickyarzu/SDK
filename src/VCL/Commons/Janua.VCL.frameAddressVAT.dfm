inherited frameVCLAddressVAT: TframeVCLAddressVAT
  inherited grpAddress: TGroupBox
    inherited pgAddress: TPageControl
      inherited tsAddress: TTabSheet
        inherited lbStateProvince: TLabel
          Left = 711
          ExplicitLeft = 711
        end
        inherited lbNumber: TLabel
          Left = 711
          ExplicitLeft = 711
        end
        object lblVATIDNumber: TLabel [11]
          Left = 711
          Top = 178
          Width = 86
          Height = 17
          Caption = 'Vat ID Number'
        end
        inherited edTown: TEdit
          Width = 581
          ExplicitWidth = 581
        end
        inherited edStateProvince: TEdit
          Left = 711
          Width = 96
          ExplicitLeft = 711
          ExplicitWidth = 96
        end
        inherited edtAddressNumber: TEdit
          Left = 711
          Width = 96
          ExplicitLeft = 711
          ExplicitWidth = 96
        end
        inherited edtAddress: TEdit
          Width = 688
          ExplicitWidth = 688
        end
        inherited frameVCLCountrySearch: TframeVCLCountrySearch
          inherited fdmCountryCodes: TFDMemTable
            Indexes = <
              item
                Active = True
                Name = 'CodeNdx'
                Fields = 'iso_country_code'
                CaseInsFields = 'iso_country_code'
                Options = [soNoCase, soUnique]
              end>
            IndexName = ''
          end
        end
        object edtVatNumber: TEdit
          Left = 711
          Top = 201
          Width = 96
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 8
          Text = '036623590100'
        end
      end
    end
  end
end
