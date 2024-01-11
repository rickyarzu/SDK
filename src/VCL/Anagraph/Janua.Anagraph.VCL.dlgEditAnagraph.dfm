inherited dlgVCLEditAnagraph: TdlgVCLEditAnagraph
  VertScrollBar.Size = 1024
  BorderStyle = bsDialog
  Caption = 'Anagraph'
  ClientHeight = 527
  ClientWidth = 938
  ParentFont = False
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Position = poScreenCenter
  ExplicitWidth = 944
  ExplicitHeight = 556
  DesignSize = (
    938
    527)
  PixelsPerInch = 96
  TextHeight = 17
  object tlbMaster: TToolBar
    Left = 0
    Top = 0
    Width = 938
    Height = 41
    Margins.Top = 0
    Margins.Bottom = 0
    ButtonHeight = 21
    ButtonWidth = 31
    Caption = 'tlbMaster'
    ShowCaptions = True
    TabOrder = 3
  end
  inline FrameVCLCompanyAnagraph: TFrameVCLCompanyAnagraph
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 932
    Height = 444
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitTop = 44
    ExplicitWidth = 932
    ExplicitHeight = 444
    inherited pgCompanyInformations: TPageControl
      Top = 60
      Width = 926
      Height = 381
      ExplicitTop = 60
      ExplicitWidth = 926
      ExplicitHeight = 381
      inherited tsCompanyAddress: TTabSheet
        ExplicitWidth = 918
        ExplicitHeight = 349
        inherited frameHeadOffice: TframeVCLAddress
          Width = 918
          Height = 349
          ExplicitWidth = 918
          ExplicitHeight = 349
          inherited grpAddress: TGroupBox
            Width = 912
            Height = 343
            ExplicitWidth = 912
            ExplicitHeight = 343
            inherited pgAddress: TPageControl
              Width = 902
              Height = 316
              ExplicitWidth = 902
              ExplicitHeight = 316
              inherited tsAddress: TTabSheet
                ExplicitWidth = 894
                ExplicitHeight = 284
                inherited lbStateProvince: TLabel
                  Left = 757
                  ExplicitLeft = 757
                end
                inherited lbNumber: TLabel
                  Left = 757
                  ExplicitLeft = 757
                end
                inherited lblPhoneNumber: TLabel
                  Left = 757
                  Top = 0
                  ExplicitLeft = 757
                  ExplicitTop = 0
                end
                inherited edTown: TEdit
                  Width = 608
                  ExplicitWidth = 608
                end
                inherited edStateProvince: TEdit
                  Left = 757
                  Width = 120
                  TabOrder = 6
                  ExplicitLeft = 757
                  ExplicitWidth = 120
                end
                inherited edPostalCode: TEdit
                  Width = 88
                end
                inherited edtAddressNumber: TEdit
                  Left = 757
                  Width = 120
                  ExplicitLeft = 757
                  ExplicitWidth = 120
                end
                inherited edtAddress: TEdit
                  Width = 715
                  ExplicitWidth = 715
                end
                inherited edGoogleSearchAddress: TEdit
                  Width = 715
                  ExplicitWidth = 715
                end
                inherited edtPhoneNumber: TEdit
                  Left = 757
                  Width = 120
                  ExplicitLeft = 757
                  ExplicitWidth = 120
                end
                inherited frameVCLCountrySearch: TframeVCLCountrySearch
                  Width = 889
                  TabOrder = 7
                  ExplicitWidth = 889
                  inherited lbIsoShortCode: TLabel
                    Left = 757
                    ExplicitLeft = 757
                  end
                  inherited edtShortCountryCode: TEdit
                    Left = 757
                    Width = 120
                    ExplicitLeft = 757
                    ExplicitWidth = 120
                  end
                  inherited cboCountryName: TJvDBLookupCombo
                    Width = 608
                    ExplicitWidth = 608
                  end
                end
              end
            end
          end
          inherited dsCountries: TDataSource
            DataSet = FrameVCLCompanyAnagraph.frameBillingAddress.fdmCountries
          end
        end
      end
      inherited tsBillingInformations: TTabSheet
        ExplicitWidth = 918
        ExplicitHeight = 349
        inherited frameBillingAddress: TframeVCLAddressVAT
          Width = 918
          Height = 318
          ExplicitHeight = 318
          inherited grpAddress: TGroupBox
            Width = 912
            Height = 312
            ExplicitHeight = 312
            inherited pgAddress: TPageControl
              Width = 908
              Height = 291
              ExplicitHeight = 291
              inherited tsAddress: TTabSheet
                ExplicitWidth = 900
                ExplicitHeight = 259
                inherited lbStateProvince: TLabel
                  Left = 747
                  Width = 168
                  Anchors = [akLeft, akTop, akRight]
                  ExplicitLeft = 747
                end
                inherited lbNumber: TLabel
                  Left = 747
                  Width = 133
                  Anchors = [akLeft, akTop, akRight]
                  ExplicitLeft = 747
                end
                inherited lblPhoneNumber: TLabel
                  Left = 747
                  Width = 173
                  Anchors = [akLeft, akTop, akRight]
                  ExplicitLeft = 747
                end
                inherited lblVATIDNumber: TLabel
                  Left = 743
                  ExplicitLeft = 743
                end
                inherited edStateProvince: TEdit
                  Left = 743
                  Width = 140
                  Anchors = [akLeft, akTop, akRight]
                  ExplicitLeft = 743
                  ExplicitWidth = 140
                end
                inherited edPostalCode: TEdit
                  Width = 86
                  ExplicitWidth = 86
                end
                inherited edtAddressNumber: TEdit
                  Left = 743
                  Width = 140
                  Anchors = [akLeft, akTop, akRight]
                  ExplicitLeft = 743
                  ExplicitWidth = 140
                end
                inherited edtPhoneNumber: TEdit
                  Left = 743
                  Width = 140
                  Anchors = [akLeft, akTop, akRight]
                  ExplicitLeft = 743
                  ExplicitWidth = 140
                end
                inherited edtVatNumber: TEdit
                  Left = 743
                  Width = 140
                  ExplicitLeft = 743
                  ExplicitWidth = 140
                end
              end
            end
          end
        end
        inherited btnCopyCompanyBillingAddress: TButton
          Width = 906
        end
      end
      inherited tsShippingAddress: TTabSheet
        ExplicitWidth = 918
        ExplicitHeight = 349
        inherited btnCopyAddress: TButton
          Width = 906
        end
        inherited frameShippingAddress: TframeVCLAddress
          Width = 918
          Height = 318
          inherited grpAddress: TGroupBox
            Width = 912
            Height = 312
            inherited pgAddress: TPageControl
              Width = 908
              Height = 291
              inherited tsAddress: TTabSheet
                ExplicitWidth = 900
                ExplicitHeight = 259
                inherited lbStateProvince: TLabel
                  Left = 778
                  ExplicitLeft = 778
                end
                inherited lbTown: TLabel
                  Left = 120
                  ExplicitLeft = 120
                end
                inherited lbNumber: TLabel
                  Left = 778
                  ExplicitLeft = 778
                end
                inherited lblPhoneNumber: TLabel
                  Left = 778
                  ExplicitLeft = 778
                end
                inherited edTown: TEdit
                  Left = 120
                  Width = 643
                  ExplicitLeft = 120
                  ExplicitWidth = 643
                end
                inherited edStateProvince: TEdit
                  Left = 778
                  Width = 119
                  ExplicitLeft = 778
                  ExplicitWidth = 119
                end
                inherited edPostalCode: TEdit
                  Width = 93
                  ExplicitWidth = 93
                end
                inherited edtAddressNumber: TEdit
                  Left = 778
                  Width = 119
                  ExplicitLeft = 778
                  ExplicitWidth = 119
                end
                inherited edtAddress: TEdit
                  Width = 757
                  ExplicitWidth = 757
                end
                inherited edGoogleSearchAddress: TEdit
                  Width = 757
                  ExplicitWidth = 757
                end
                inherited edtPhoneNumber: TEdit
                  Left = 778
                  Width = 119
                  ExplicitLeft = 778
                  ExplicitWidth = 119
                end
                inherited frameVCLCountrySearch: TframeVCLCountrySearch
                  Width = 897
                  ExplicitWidth = 897
                  inherited edtShortCountryCode: TEdit
                    Left = 778
                    Width = 119
                    ExplicitLeft = 778
                    ExplicitWidth = 119
                  end
                  inherited cboCountryName: TJvDBLookupCombo
                    Width = 650
                    ExplicitWidth = 650
                  end
                  inherited cboCountryCode: TJvDBLookupCombo
                    Width = 93
                    ExplicitWidth = 93
                  end
                end
              end
            end
          end
        end
      end
      inherited tsPaymentInformations: TTabSheet
        ExplicitWidth = 918
        ExplicitHeight = 349
        inherited frameVCLBankAccount1: TuframeVCLBankAccount
          Width = 918
          ExplicitWidth = 918
          inherited JvGroupBox2: TJvGroupBox
            Width = 912
            inherited lbSwiftCode: TLabel
              Left = 706
              ExplicitLeft = 706
            end
            inherited lbAccountNumber: TLabel
              Left = 668
              ExplicitLeft = 668
            end
            inherited edIBANCode: TEdit
              Width = 667
            end
            inherited edSwiftCode: TEdit
              Left = 706
            end
            inherited edBankCode: TEdit
              Width = 178
              ExplicitWidth = 178
            end
            inherited edAccountNumber: TEdit
              Left = 668
            end
            inherited edBankNameCode: TEdit
              Width = 439
            end
          end
        end
        inherited frameAnagraphCompanyPayments: TframeAnagraphCompanyPayments
          Width = 918
          Height = 156
          ExplicitWidth = 918
          ExplicitHeight = 156
          inherited JvGroupBox1: TJvGroupBox
            Width = 912
            ExplicitWidth = 912
            inherited lviewInstalments: TListView
              Width = 363
              ExplicitWidth = 363
            end
          end
        end
      end
    end
    inherited pnlCompanyName: TPanel
      Width = 932
      Height = 57
      ExplicitWidth = 932
      ExplicitHeight = 57
      inherited edCompanyName: TEdit
        Width = 710
        ExplicitWidth = 710
      end
    end
  end
  object btnUndo: TButton
    Left = 669
    Top = 494
    Width = 122
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Undo'
    ModalResult = 2
    TabOrder = 1
  end
  object edButtonSave: TButton
    Left = 808
    Top = 494
    Width = 122
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Save '
    ModalResult = 1
    TabOrder = 2
  end
  object JanuaActionViewController1: TJanuaActionViewController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = tlbMaster
    ButtonSize = jbs24
    Left = 304
    Top = 8
  end
end
