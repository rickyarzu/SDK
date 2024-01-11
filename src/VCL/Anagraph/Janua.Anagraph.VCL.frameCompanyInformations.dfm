inherited FrameVCLCompanyAnagraph: TFrameVCLCompanyAnagraph
  Width = 969
  Height = 453
  Font.Height = -13
  Font.Name = 'Segoe UI'
  ParentFont = False
  ExplicitWidth = 969
  ExplicitHeight = 453
  object pgCompanyInformations: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 53
    Width = 963
    Height = 397
    ActivePage = tsBillingInformations
    Align = alClient
    TabOrder = 0
    object tsCompanyAddress: TTabSheet
      Caption = 'Company Address'
      inline frameHeadOffice: TframeVCLAddress
        Left = 0
        Top = 0
        Width = 955
        Height = 297
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 955
        ExplicitHeight = 297
        inherited grpAddress: TGroupBox
          Width = 949
          Height = 291
          Caption = 'Head Office / Registered Office'
          Padding.Left = 3
          Padding.Top = 3
          Padding.Right = 3
          Padding.Bottom = 3
          ExplicitWidth = 949
          ExplicitHeight = 291
          inherited pgAddress: TPageControl
            Left = 5
            Top = 22
            Width = 939
            Height = 264
            ExplicitLeft = 5
            ExplicitTop = 22
            ExplicitWidth = 939
            ExplicitHeight = 264
            inherited tsAddress: TTabSheet
              ExplicitWidth = 931
              ExplicitHeight = 232
              inherited lbStateProvince: TLabel
                Left = 1061
                ExplicitLeft = 713
              end
              inherited lbNumber: TLabel
                Left = 1061
                ExplicitLeft = 713
              end
              inherited lblPhoneNumber: TLabel
                Left = 1061
                ExplicitLeft = 713
              end
              inherited edTown: TEdit
                Width = 576
                TabOrder = 5
                ExplicitWidth = 576
              end
              inherited edStateProvince: TEdit
                Left = 713
                Width = 100
                TabOrder = 7
                ExplicitLeft = 713
                ExplicitWidth = 100
              end
              inherited edPostalCode: TEdit
                Width = 93
                TabOrder = 4
                ExplicitWidth = 93
              end
              inherited edtAddressNumber: TEdit
                Left = 713
                Width = 100
                TabOrder = 3
                ExplicitLeft = 713
                ExplicitWidth = 100
              end
              inherited edtAddress: TEdit
                Width = 683
                TabOrder = 2
                ExplicitWidth = 683
              end
              inherited edGoogleSearchAddress: TEdit
                Width = 683
                ExplicitWidth = 683
              end
              inherited edtPhoneNumber: TEdit
                Left = 713
                Width = 100
                TabOrder = 1
                ExplicitLeft = 713
                ExplicitWidth = 100
              end
              inherited frameVCLCountrySearch: TframeVCLCountrySearch
                Width = 833
                TabOrder = 6
                ExplicitWidth = 833
                inherited lbIsoShortCode: TLabel
                  Left = 713
                  ExplicitLeft = 713
                end
                inherited edtShortCountryCode: TEdit
                  Left = 713
                  Width = 100
                  ExplicitLeft = 713
                  ExplicitWidth = 100
                end
                inherited cboCountryName: TJvDBLookupCombo
                  Width = 576
                  TabSelects = True
                  ExplicitWidth = 576
                end
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
            end
          end
        end
        inherited dsCountries: TDataSource
          DataSet = frameBillingAddress.fdmCountries
          Left = 520
          Top = 104
        end
      end
    end
    object tsBillingInformations: TTabSheet
      Caption = 'Billing Informations'
      ImageIndex = 1
      inline frameBillingAddress: TframeVCLAddressVAT
        Left = 0
        Top = 31
        Width = 955
        Height = 298
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 31
        ExplicitWidth = 955
        ExplicitHeight = 298
        inherited grpAddress: TGroupBox
          Width = 949
          Height = 292
          ExplicitWidth = 949
          ExplicitHeight = 292
          inherited pgAddress: TPageControl
            Width = 945
            Height = 271
            ExplicitWidth = 945
            ExplicitHeight = 271
            inherited tsAddress: TTabSheet
              ExplicitWidth = 937
              ExplicitHeight = 239
              inherited lbStateProvince: TLabel
                Left = 800
                ExplicitLeft = 800
              end
              inherited lbNumber: TLabel
                Left = 800
                ExplicitLeft = 800
              end
              inherited lblPhoneNumber: TLabel
                Left = 800
                ExplicitLeft = 800
              end
              inherited lblVATIDNumber: TLabel
                Left = 800
                ExplicitLeft = 800
              end
              inherited edTown: TEdit
                Width = 664
                ExplicitWidth = 664
              end
              inherited edStateProvince: TEdit
                Left = 800
                Width = 120
                Anchors = [akLeft, akTop, akRight]
                ExplicitLeft = 800
                ExplicitWidth = 120
              end
              inherited edtAddressNumber: TEdit
                Left = 800
                Width = 120
                Anchors = [akLeft, akTop, akRight]
                ExplicitLeft = 800
                ExplicitWidth = 120
              end
              inherited edtAddress: TEdit
                Width = 771
                ExplicitWidth = 771
              end
              inherited edGoogleSearchAddress: TEdit
                Width = 771
                ExplicitWidth = 771
              end
              inherited edtPhoneNumber: TEdit
                Left = 800
                Width = 120
                Anchors = [akLeft, akTop, akRight]
                ExplicitLeft = 800
                ExplicitWidth = 120
              end
              inherited frameVCLCountrySearch: TframeVCLCountrySearch
                Width = 794
                ExplicitWidth = 794
                inherited lbIsoShortCode: TLabel
                  Left = 711
                  Top = 3
                  ExplicitLeft = 711
                  ExplicitTop = 3
                end
                inherited edtShortCountryCode: TEdit
                  Left = 711
                  Width = 66
                  ExplicitLeft = 711
                  ExplicitWidth = 66
                end
                inherited cboCountryName: TJvDBLookupCombo
                  Width = 584
                  ExplicitWidth = 584
                end
              end
              inherited edtVatNumber: TEdit
                Left = 800
                Top = 205
                Width = 120
                ExplicitLeft = 800
                ExplicitTop = 205
                ExplicitWidth = 120
              end
            end
          end
        end
      end
      object btnCopyCompanyBillingAddress: TButton
        AlignWithMargins = True
        Left = 6
        Top = 3
        Width = 943
        Height = 25
        Margins.Left = 6
        Margins.Right = 6
        Align = alTop
        Caption = 'Copy / Same as Company Address ..'
        TabOrder = 1
        OnClick = btnCopyCompanyBillingAddressClick
      end
    end
    object tsShippingAddress: TTabSheet
      Caption = 'Shipping Address'
      ImageIndex = 2
      object btnCopyAddress: TButton
        AlignWithMargins = True
        Left = 6
        Top = 3
        Width = 943
        Height = 25
        Margins.Left = 6
        Margins.Right = 6
        Align = alTop
        Caption = 'Copy / Same as Company Address ..'
        TabOrder = 0
      end
      inline frameShippingAddress: TframeVCLAddress
        Left = 0
        Top = 31
        Width = 955
        Height = 334
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 31
        ExplicitWidth = 955
        ExplicitHeight = 334
        inherited grpAddress: TGroupBox
          Width = 949
          Height = 328
          Caption = 'Billing Address'
          ExplicitWidth = 949
          ExplicitHeight = 328
          inherited pgAddress: TPageControl
            Width = 945
            Height = 307
            ExplicitWidth = 945
            ExplicitHeight = 307
            inherited tsAddress: TTabSheet
              ExplicitWidth = 937
              ExplicitHeight = 275
              inherited lbStateProvince: TLabel
                Left = 1146
                ExplicitLeft = 780
              end
              inherited lbNumber: TLabel
                Left = 1146
                ExplicitLeft = 780
              end
              inherited lblPhoneNumber: TLabel
                Left = 1306
                ExplicitLeft = 716
              end
              inherited edTown: TEdit
                Top = 144
                Width = 1014
                Anchors = [akLeft, akTop, akRight]
                ExplicitTop = 144
                ExplicitWidth = 1014
              end
              inherited edStateProvince: TEdit
                Left = 780
                Top = 144
                Width = 466
                Anchors = [akLeft, akTop, akRight]
                ExplicitLeft = 780
                ExplicitTop = 144
                ExplicitWidth = 466
              end
              inherited edPostalCode: TEdit
                Top = 144
                Width = 454
                Anchors = [akLeft, akTop, akRight]
                ExplicitTop = 144
                ExplicitWidth = 454
              end
              inherited edtAddressNumber: TEdit
                Left = 780
                Width = 466
                Anchors = [akLeft, akTop, akRight]
                ExplicitLeft = 780
                ExplicitWidth = 466
              end
              inherited edtAddress: TEdit
                Width = 752
                ExplicitWidth = 752
              end
              inherited edGoogleSearchAddress: TEdit
                Width = 752
                ExplicitWidth = 752
              end
              inherited edtPhoneNumber: TEdit
                Left = 780
                Width = 466
                Anchors = [akLeft, akTop, akRight]
                ExplicitLeft = 780
                ExplicitWidth = 466
              end
              inherited frameVCLCountrySearch: TframeVCLCountrySearch
                Width = 857
                ExplicitWidth = 857
                inherited lbIsoShortCode: TLabel
                  Left = 780
                  ExplicitLeft = 780
                end
                inherited lbCountryName: TLabel
                  Left = 113
                  ExplicitLeft = 113
                end
                inherited edtShortCountryCode: TEdit
                  Left = 780
                  Width = 100
                  Anchors = [akLeft, akTop, akRight]
                  ExplicitLeft = 780
                  ExplicitWidth = 100
                end
                inherited cboCountryName: TJvDBLookupCombo
                  Width = 640
                  ExplicitWidth = 640
                end
                inherited cboCountryCode: TJvDBLookupCombo
                  Anchors = [akLeft, akTop, akRight]
                end
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
            end
          end
        end
      end
    end
    object tsPaymentInformations: TTabSheet
      Caption = 'Payment Terms / Bank '
      ImageIndex = 3
      inline frameVCLBankAccount1: TuframeVCLBankAccount
        Left = 0
        Top = 0
        Width = 955
        Height = 193
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 955
        ExplicitHeight = 193
        inherited JvGroupBox2: TJvGroupBox
          Width = 949
          Height = 187
          ExplicitWidth = 949
          ExplicitHeight = 187
          DesignSize = (
            949
            187)
          inherited lbSwiftCode: TLabel
            Left = 743
            Top = 71
            Anchors = [akTop, akRight]
            ExplicitLeft = 614
            ExplicitTop = 71
          end
          inherited lbAccountNumber: TLabel
            Left = 705
            Top = 125
            Anchors = [akTop, akRight]
            ExplicitLeft = 576
            ExplicitTop = 125
          end
          inherited edIBANCode: TEdit
            Width = 704
            ExplicitWidth = 704
          end
          inherited edSwiftCode: TEdit
            Left = 743
            ExplicitLeft = 743
          end
          inherited edBankCode: TEdit
            Width = 164
            ExplicitWidth = 164
          end
          inherited edAccountNumber: TEdit
            Left = 655
            Width = 271
            Anchors = [akTop, akRight]
            ExplicitLeft = 655
            ExplicitWidth = 271
          end
          inherited edBankNameCode: TEdit
            Left = 175
            Width = 474
            ExplicitLeft = 175
            ExplicitWidth = 474
          end
          inherited frameVCLCountrySearch: TframeVCLCountrySearch
            Width = 945
            ExplicitLeft = 2
            ExplicitTop = 19
            ExplicitWidth = 945
            inherited lbIsoShortCode: TLabel
              Left = 858
              ExplicitLeft = 858
            end
            inherited edtShortCountryCode: TEdit
              Left = 864
              ExplicitLeft = 864
            end
            inherited cboCountryName: TJvDBLookupCombo
              Width = 728
              ExplicitWidth = 728
            end
          end
        end
      end
      inline frameAnagraphCompanyPayments: TframeAnagraphCompanyPayments
        Left = 0
        Top = 193
        Width = 955
        Height = 172
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 193
        ExplicitWidth = 955
        ExplicitHeight = 172
        inherited JvGroupBox1: TJvGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 949
          Height = 151
          Align = alTop
          ExplicitLeft = 3
          ExplicitTop = 3
          ExplicitWidth = 949
          ExplicitHeight = 151
          inherited lviewInstalments: TListView
            Width = 445
            ExplicitWidth = 445
          end
          inherited edtTrustAmount: TAdvMoneyEdit
            Width = 188
            ExplicitWidth = 188
          end
        end
      end
    end
  end
  object pnlCompanyName: TPanel
    Left = 0
    Top = 0
    Width = 969
    Height = 50
    Align = alTop
    Caption = 'pnlCompanyName'
    ShowCaption = False
    TabOrder = 1
    object lbCompanyName: TLabel
      AlignWithMargins = True
      Left = 104
      Top = 2
      Width = 94
      Height = 17
      Margins.Left = 6
      Caption = 'Company Name'
    end
    object lbCode: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 2
      Width = 31
      Height = 17
      Margins.Left = 6
      Caption = 'Code'
    end
    object edCompanyName: TEdit
      AlignWithMargins = True
      Left = 104
      Top = 24
      Width = 732
      Height = 25
      Margins.Left = 6
      Margins.Top = 0
      TabOrder = 1
      Text = 'edCompanyName'
    end
    object edCode: TEdit
      AlignWithMargins = True
      Left = 10
      Top = 24
      Width = 85
      Height = 25
      Margins.Left = 6
      Margins.Top = 0
      TabOrder = 0
      Text = 'edCompanyName'
    end
  end
end
