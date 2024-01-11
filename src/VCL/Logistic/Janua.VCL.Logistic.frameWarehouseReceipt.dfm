inherited FrameVCLLogisticWarehouseReceipt: TFrameVCLLogisticWarehouseReceipt
  Width = 847
  Height = 491
  ParentFont = False
  ExplicitWidth = 847
  ExplicitHeight = 491
  PixelsPerInch = 96
  object pgWarehouseReceipt: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 841
    Height = 485
    ActivePage = tabHead
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tabHead: TTabSheet
      Caption = 'Main Info (Head)'
      object grpImportExport: TRadioGroup
        Left = 16
        Top = 11
        Width = 169
        Height = 56
        Caption = 'Operation Type'
        Columns = 2
        Items.Strings = (
          'Inbound'
          'Outbound')
        TabOrder = 0
      end
      object grpDocInfo: TGroupBox
        Left = 16
        Top = 73
        Width = 793
        Height = 80
        Caption = 'Receipt Header'
        TabOrder = 3
        object lbBondedWarehouse: TLabel
          Left = 13
          Top = 20
          Width = 114
          Height = 17
          Caption = 'Bonded Warehouse'
        end
        object Label2: TLabel
          Left = 438
          Top = 20
          Width = 78
          Height = 17
          Caption = 'Receipt Date '
        end
        object Label3: TLabel
          Left = 542
          Top = 20
          Width = 48
          Height = 17
          Caption = 'Number'
        end
        object Label4: TLabel
          Left = 618
          Top = 45
          Width = 6
          Height = 19
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 630
          Top = 20
          Width = 25
          Height = 17
          Caption = 'Year'
        end
        object edWarehouseID: TLabel
          Left = 297
          Top = 20
          Width = 96
          Height = 16
          Alignment = taRightJustify
          Caption = 'warehouse id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object edWarehouseName: TEdit
          Left = 13
          Top = 43
          Width = 382
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'EDWAREHOUSENAME'
        end
        object edDocDate: TDateTimePicker
          Left = 438
          Top = 43
          Width = 98
          Height = 25
          Date = 44481.000000000000000000
          Format = ' '
          Time = 0.723429768520873000
          TabOrder = 1
        end
        object edDocNumber: TEdit
          Left = 542
          Top = 43
          Width = 72
          Height = 25
          TabOrder = 2
        end
        object edDocYear: TEdit
          Left = 630
          Top = 43
          Width = 46
          Height = 25
          TabOrder = 3
        end
        object btnWarehouseName: TButton
          Left = 399
          Top = 42
          Width = 33
          Height = 25
          Caption = '...'
          TabOrder = 5
          TabStop = False
        end
        object chkInternetVisible: TCheckBox
          Left = 682
          Top = 48
          Width = 111
          Height = 17
          Caption = 'Internet Visible'
          TabOrder = 4
        end
      end
      object radioTypeOperation: TRadioGroup
        Left = 191
        Top = 11
        Width = 306
        Height = 56
        Caption = 'Document Type'
        Columns = 3
        ItemIndex = 1
        Items.Strings = (
          'T1'
          'Porto Franco'
          'Porto Ass. ')
        TabOrder = 1
      end
      object grpDocumentCustoms: TGroupBox
        Left = 18
        Top = 159
        Width = 791
        Height = 86
        Caption = 'Document Invoice Reference (Customs)'
        TabOrder = 4
        object lbDocAmount: TLabel
          Left = 536
          Top = 21
          Width = 45
          Height = 17
          Caption = 'Amount'
        end
        object lbCurrency: TLabel
          Left = 696
          Top = 21
          Width = 51
          Height = 17
          Caption = 'Currency'
        end
        object lbInvoiceNumber: TLabel
          Left = 11
          Top = 21
          Width = 92
          Height = 17
          Caption = 'Invoice Number'
        end
        object edDocRefNumber: TEdit
          Left = 11
          Top = 44
          Width = 498
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 0
          TextHint = 'Invoice Number '
        end
        object edDocAmount: TMoneyEdit
          Left = 536
          Top = 44
          Width = 138
          Height = 25
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
          TabOrder = 1
          Version = '1.1.2.0'
        end
        object cboInvoiceCurrencyID: TJvDBLookupCombo
          Left = 696
          Top = 44
          Width = 81
          Height = 24
          LookupField = 'currency_id'
          LookupDisplay = 'currency_code'
          LookupSource = dsCurrencies
          TabOrder = 2
        end
      end
      object tabLocationVessel: TGroupBox
        Left = 18
        Top = 251
        Width = 791
        Height = 114
        Caption = 'Location / Vessel'
        TabOrder = 5
        object Label10: TLabel
          Left = 531
          Top = 53
          Width = 69
          Height = 17
          Caption = 'Department'
        end
        object Label9: TLabel
          Left = 504
          Top = 75
          Width = 7
          Height = 21
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edLocationID: TLabel
          Left = 14
          Top = 26
          Width = 72
          Height = 16
          Alignment = taRightJustify
          Caption = 'vessel id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object lbVessel: TLabel
          Left = 11
          Top = 53
          Width = 75
          Height = 17
          Caption = 'Vessel Name'
        end
        object lbLocationName: TLabel
          Left = 124
          Top = 26
          Width = 118
          Height = 17
          Caption = 'Warehouse Location'
        end
        object edVesselID: TLabel
          Left = 391
          Top = 53
          Width = 72
          Height = 16
          Alignment = taRightJustify
          Caption = 'vessel id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object cboDepartment: TJvDBLookupCombo
          Left = 531
          Top = 76
          Width = 257
          Height = 24
          LookupField = 'id'
          LookupDisplay = 'description'
          LookupSource = dsDepartments
          TabOrder = 1
        end
        object btnVesselSearch: TButton
          Left = 469
          Top = 75
          Width = 29
          Height = 25
          Caption = '...'
          TabOrder = 2
          TabStop = False
        end
        object edVesselName: TEdit
          Left = 11
          Top = 75
          Width = 452
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object edWarehouseLocation: TEdit
          Left = 248
          Top = 22
          Width = 499
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object btnWarehouseLocationSearch: TButton
          Left = 753
          Top = 22
          Width = 29
          Height = 25
          Caption = '...'
          TabOrder = 4
          TabStop = False
        end
      end
      object grpReferences: TGroupBox
        Left = 18
        Top = 371
        Width = 791
        Height = 79
        Caption = 'General References'
        TabOrder = 6
        object lbWorkCode: TLabel
          Left = 398
          Top = 19
          Width = 220
          Height = 17
          Caption = 'Workpaper Shipment Reference Code'
        end
        object lbPONumber: TLabel
          Left = 11
          Top = 20
          Width = 77
          Height = 17
          Caption = 'P.O. NUmber'
        end
        object lbWorkID: TLabel
          Left = 689
          Top = 21
          Width = 56
          Height = 16
          Alignment = taRightJustify
          Caption = 'work id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object edtWorkPaperCode: TEdit
          Left = 398
          Top = 43
          Width = 347
          Height = 25
          TabOrder = 1
          Text = 'Workpaper Code'
        end
        object edPONumber: TEdit
          Left = 11
          Top = 43
          Width = 366
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object btnWorkShipments: TButton
          Left = 751
          Top = 43
          Width = 29
          Height = 25
          Caption = '...'
          TabOrder = 2
        end
      end
      object grpIssuedBy: TGroupBox
        Left = 503
        Top = 11
        Width = 306
        Height = 56
        Caption = 'Issued By User/Office'
        TabOrder = 2
        object cboUserInsert: TJvDBLookupCombo
          Left = 10
          Top = 25
          Width = 257
          Height = 24
          LookupField = 'db_user_id'
          LookupDisplay = 'email'
          LookupSource = dsSystemUsers
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object tabShipperConsignee: TTabSheet
      Caption = 'Shipper (Supplier) / Consignee'
      ImageIndex = 1
      object grpSupplierShipper: TGroupBox
        Left = 24
        Top = 24
        Width = 385
        Height = 329
        Caption = 'Supplier / Shipper'
        TabOrder = 0
        object lbSupplierName: TLabel
          Left = 16
          Top = 25
          Width = 94
          Height = 17
          Caption = 'Company Name'
        end
        object edHolderID: TLabel
          Left = 267
          Top = 26
          Width = 72
          Height = 16
          Alignment = taRightJustify
          Caption = 'holder id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object lbSupplierAddress: TLabel
          Left = 16
          Top = 85
          Width = 48
          Height = 17
          Caption = 'Address'
        end
        object lbSupplierTown: TLabel
          Left = 16
          Top = 141
          Width = 30
          Height = 17
          Caption = 'Town'
        end
        object lbSupplierPostalCode: TLabel
          Left = 16
          Top = 197
          Width = 93
          Height = 17
          Caption = 'Zip/Postal Code'
        end
        object lbSupplierStateProvince: TLabel
          Left = 119
          Top = 197
          Width = 83
          Height = 17
          Caption = 'State/Province'
        end
        object lbShipperCountryCode: TLabel
          Left = 284
          Top = 197
          Width = 80
          Height = 17
          Caption = 'Country Code'
        end
        object lbSupplierCountry: TLabel
          Left = 16
          Top = 261
          Width = 45
          Height = 17
          Caption = 'Country'
        end
        object edSupplier: TEdit
          Left = 16
          Top = 52
          Width = 323
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 0
          TextHint = 'Enter supplier name or Code to Search for'
        end
        object btnSupplier: TButton
          Left = 339
          Top = 52
          Width = 25
          Height = 25
          Caption = '...'
          TabOrder = 10
          TabStop = False
        end
        object edHolderAddress: TEdit
          Left = 16
          Top = 108
          Width = 345
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 1
          TextHint = 'Enter supplier name or Code to Search for'
        end
        object edHolderTown: TEdit
          Left = 16
          Top = 164
          Width = 345
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 2
          TextHint = 'Enter supplier name or Code to Search for'
        end
        object edHolderPostalCode: TEdit
          Left = 16
          Top = 220
          Width = 97
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 3
          TextHint = 'Enter supplier name or Code to Search for'
        end
        object edHolderStateProvince: TEdit
          Left = 119
          Top = 220
          Width = 134
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 4
          TextHint = 'Enter supplier name or Code to Search for'
        end
        object edHolderCountryCode: TEdit
          Left = 290
          Top = 220
          Width = 49
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 5
          TextHint = 'Enter supplier name or Code to Search for'
        end
        object Button2: TButton
          Left = 339
          Top = 220
          Width = 25
          Height = 25
          Caption = '...'
          TabOrder = 8
          TabStop = False
        end
        object Button3: TButton
          Left = 253
          Top = 220
          Width = 25
          Height = 25
          Caption = '...'
          TabOrder = 7
          TabStop = False
        end
        object btnNewHolder: TButton
          Left = 127
          Top = 21
          Width = 75
          Height = 25
          Caption = 'New Shipper'
          TabOrder = 9
          TabStop = False
        end
        object cboCountryName: TJvDBLookupCombo
          Left = 16
          Top = 284
          Width = 345
          Height = 24
          LookupField = 'country_id'
          LookupDisplay = 'country_name'
          LookupSource = dsCountries
          TabOrder = 6
        end
      end
      object grpConsignee: TGroupBox
        Left = 440
        Top = 24
        Width = 385
        Height = 329
        Caption = 'Consignee / Shipowner'
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 25
          Width = 94
          Height = 17
          Caption = 'Company Name'
        end
        object Label6: TLabel
          Left = 267
          Top = 26
          Width = 72
          Height = 16
          Alignment = taRightJustify
          Caption = 'holder id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object Label7: TLabel
          Left = 19
          Top = 85
          Width = 48
          Height = 17
          Caption = 'Address'
        end
        object Label8: TLabel
          Left = 19
          Top = 141
          Width = 30
          Height = 17
          Caption = 'Town'
        end
        object Label11: TLabel
          Left = 16
          Top = 197
          Width = 93
          Height = 17
          Caption = 'Zip/Postal Code'
        end
        object Label13: TLabel
          Left = 119
          Top = 197
          Width = 83
          Height = 17
          Caption = 'State/Province'
        end
        object Label14: TLabel
          Left = 284
          Top = 197
          Width = 80
          Height = 17
          Caption = 'Country Code'
        end
        object Label15: TLabel
          Left = 19
          Top = 261
          Width = 45
          Height = 17
          Caption = 'Country'
        end
        object Edit7: TEdit
          Left = 16
          Top = 52
          Width = 323
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 0
          TextHint = 'Enter supplier name or Code to Search for'
        end
        object Button4: TButton
          Left = 339
          Top = 52
          Width = 25
          Height = 25
          Caption = '...'
          TabOrder = 7
          TabStop = False
        end
        object Edit8: TEdit
          Left = 16
          Top = 108
          Width = 345
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 1
          TextHint = 'Enter supplier name or Code to Search for'
        end
        object Edit9: TEdit
          Left = 16
          Top = 164
          Width = 345
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 2
          TextHint = 'Enter supplier name or Code to Search for'
        end
        object Edit10: TEdit
          Left = 16
          Top = 220
          Width = 97
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 3
          TextHint = 'Enter supplier name or Code to Search for'
        end
        object Edit11: TEdit
          Left = 119
          Top = 220
          Width = 134
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 4
          TextHint = 'Enter supplier name or Code to Search for'
        end
        object Edit12: TEdit
          Left = 16
          Top = 284
          Width = 345
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 5
          TextHint = 'Enter supplier name or Code to Search for'
        end
        object Edit13: TEdit
          Left = 290
          Top = 220
          Width = 49
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 6
          TextHint = 'Enter supplier name or Code to Search for'
        end
        object Button5: TButton
          Left = 339
          Top = 220
          Width = 25
          Height = 25
          Caption = '...'
          TabOrder = 8
        end
        object Button6: TButton
          Left = 253
          Top = 220
          Width = 25
          Height = 25
          Caption = '...'
          TabOrder = 9
          TabStop = False
        end
        object btnNewConsignee: TButton
          Left = 144
          Top = 21
          Width = 97
          Height = 25
          Caption = 'New Consignee'
          TabOrder = 10
        end
      end
    end
    object tabCarrierCharges: TTabSheet
      Caption = 'Carrier Informations'
      ImageIndex = 3
      object GroupBox2: TGroupBox
        Left = 16
        Top = 19
        Width = 778
        Height = 294
        Caption = 'Document Transportation References'
        TabOrder = 0
        object lbCarrier: TLabel
          Left = 16
          Top = 45
          Width = 40
          Height = 17
          Caption = 'Carrier'
        end
        object Label16: TLabel
          Left = 18
          Top = 117
          Width = 71
          Height = 17
          Caption = 'Invoice Date'
        end
        object CarrierInvoiceNumber: TLabel
          Left = 145
          Top = 117
          Width = 92
          Height = 17
          Caption = 'Invoice Number'
        end
        object lbTransportInvoice: TLabel
          Left = 532
          Top = 117
          Width = 89
          Height = 17
          Caption = 'Invoice Amount'
        end
        object lbTrackingNumber: TLabel
          Left = 18
          Top = 189
          Width = 100
          Height = 17
          Caption = 'Tracking Number'
        end
        object edCarrierID: TLabel
          Left = 634
          Top = 45
          Width = 56
          Height = 16
          Alignment = taRightJustify
          Caption = 'Carrier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object edCarrier: TEdit
          Left = 16
          Top = 68
          Width = 674
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object edCarrierInvoiceDate: TDateTimePicker
          Left = 18
          Top = 140
          Width = 98
          Height = 25
          Date = 44090.000000000000000000
          Time = 0.723429768520873000
          TabOrder = 1
        end
        object edCarrierInvoiceNumber: TEdit
          Left = 145
          Top = 140
          Width = 368
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object edTrackingNumber: TEdit
          Left = 16
          Top = 212
          Width = 721
          Height = 25
          CharCase = ecUpperCase
          TabOrder = 5
        end
        object btnCarrier: TButton
          Left = 708
          Top = 68
          Width = 29
          Height = 25
          Caption = '...'
          TabOrder = 6
        end
        object edCarrierInvoiceAmount: TMoneyEdit
          Left = 532
          Top = 140
          Width = 101
          Height = 25
          CalculatorLook.ButtonWidth = 24
          CalculatorLook.ButtonHeight = 24
          CalculatorLook.ButtonColor = clSilver
          CalculatorLook.Color = clWhite
          CalculatorLook.Flat = False
          CalculatorLook.Font.Charset = DEFAULT_CHARSET
          CalculatorLook.Font.Color = clWindowText
          CalculatorLook.Font.Height = -11
          CalculatorLook.Font.Name = 'Tahoma'
          CalculatorLook.Font.Style = []
          TabOrder = 3
          Version = '1.1.2.0'
        end
        object btnNewCarrier: TButton
          Left = 111
          Top = 37
          Width = 75
          Height = 25
          Caption = 'New Carrier'
          TabOrder = 7
        end
        object cboCarrierCurrencyCode: TJvDBLookupCombo
          Left = 656
          Top = 141
          Width = 81
          Height = 24
          LookupField = 'currency_id'
          LookupDisplay = 'currency_code'
          LookupSource = dsCurrencies
          TabOrder = 4
        end
      end
    end
    object tabCommodities: TTabSheet
      Caption = 'Commodities'
      ImageIndex = 6
      object grpCommoditiesTotals: TGroupBox
        Left = 0
        Top = 371
        Width = 833
        Height = 82
        Align = alBottom
        Caption = 'Totals (Summary)'
        TabOrder = 0
      end
      inline frameVCLWHReceiptRowsNavigator1: TframeVCLWHReceiptRowsNavigator
        Left = 0
        Top = 0
        Width = 833
        Height = 371
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 833
        ExplicitHeight = 371
        inherited pnlCommands: TPanel
          Width = 833
          ExplicitWidth = 833
          inherited pnlSearchText: TPanel
            Width = 272
            ExplicitWidth = 272
            inherited lbSearchText: TLabel
              Width = 266
            end
            inherited edSearchText: TEdit
              Width = 266
              ExplicitWidth = 266
            end
          end
        end
        inherited grdMaster: TwwDBGrid
          Width = 833
          Height = 322
          ExplicitWidth = 833
          ExplicitHeight = 322
        end
      end
    end
    object tabAttachments: TTabSheet
      Caption = 'Attachments'
      ImageIndex = 4
      OnShow = tabAttachmentsShow
    end
    object tabCharges: TTabSheet
      Caption = 'Charges'
      ImageIndex = 7
      object grpChargesTotals: TGroupBox
        Left = 0
        Top = 388
        Width = 833
        Height = 65
        Align = alBottom
        Caption = 'Totals (Summary)'
        TabOrder = 0
      end
      inline frameVCLWHReceiptChargesNavigator1: TframeVCLWHReceiptChargesNavigator
        Left = 0
        Top = 0
        Width = 833
        Height = 388
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 833
        ExplicitHeight = 388
        inherited pnlCommands: TPanel
          Width = 833
          ExplicitWidth = 833
          inherited pnlSearchText: TPanel
            Width = 272
            ExplicitWidth = 272
            inherited lbSearchText: TLabel
              Width = 266
            end
            inherited edSearchText: TEdit
              Width = 266
              ExplicitWidth = 266
            end
          end
        end
        inherited grdMaster: TwwDBGrid
          Width = 833
          Height = 339
          ExplicitWidth = 833
          ExplicitHeight = 339
        end
      end
    end
    object tabNotes: TTabSheet
      Caption = 'Notes'
      ImageIndex = 5
      object memNotes: TMemo
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 827
        Height = 447
        Align = alClient
        Lines.Strings = (
          'memNotes')
        TabOrder = 0
      end
    end
    object tabCustoms: TTabSheet
      Caption = 'Customs Info'
      ImageIndex = 7
      object grpCustomsReference: TGroupBox
        Left = 3
        Top = 25
        Width = 534
        Height = 280
        Caption = 'Customs Reference'
        TabOrder = 0
        object JvLinkLabel15: TLabel
          Left = 13
          Top = 34
          Width = 90
          Height = 17
          Caption = 'Document Type'
        end
        object edCustomsNumber: TLabel
          Left = 13
          Top = 90
          Width = 48
          Height = 17
          Caption = 'Number'
        end
        object edCustomsCin: TLabel
          Left = 213
          Top = 90
          Width = 18
          Height = 17
          Caption = 'Cin'
        end
        object edCustomsDocDate: TLabel
          Left = 251
          Top = 90
          Width = 79
          Height = 17
          Caption = 'Cst. Doc Date'
        end
        object lbCustomsExpirationDate: TLabel
          Left = 365
          Top = 90
          Width = 89
          Height = 17
          Caption = 'Expiration Date'
        end
        object edCustomsMRN: TLabel
          Left = 13
          Top = 162
          Width = 30
          Height = 17
          Caption = 'MRN'
        end
        object cboCustomsDocumentType: TJvDBLookupCombo
          Left = 13
          Top = 52
          Width = 456
          Height = 25
          LookupField = 'id'
          LookupDisplay = 'description'
          TabOrder = 0
        end
        object Edit14: TEdit
          Left = 13
          Top = 108
          Width = 194
          Height = 25
          TabOrder = 1
        end
        object Edit15: TEdit
          Left = 213
          Top = 108
          Width = 32
          Height = 25
          TabOrder = 2
        end
        object DateTimePicker1: TDateTimePicker
          Left = 251
          Top = 108
          Width = 104
          Height = 25
          Date = 44102.000000000000000000
          Time = 0.698144178240909200
          TabOrder = 3
        end
        object DateTimePicker2: TDateTimePicker
          Left = 365
          Top = 108
          Width = 104
          Height = 25
          Date = 44102.000000000000000000
          Time = 0.698144178240909200
          TabOrder = 4
        end
        object Edit16: TEdit
          Left = 13
          Top = 180
          Width = 456
          Height = 25
          TabOrder = 5
        end
      end
    end
  end
  object vtTypeOfGoods: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftSmallint
      end
      item
        Name = 'description'
        DataType = ftString
        Size = 60
      end>
    Left = 690
    Top = 360
    Data = {
      040002000200696402000000000000000B006465736372697074696F6E01003C
      0000000000000012000000020000000400030000004261670200000002000600
      000042617272656C02000000050003000000426F780200000011000400000042
      756C6B0200000003000600000042756E646C6502000000100003000000436167
      0200000006000800000043616E69737465720200000009000600000043617274
      6F6E020000000800040000004361736502000000070005000000437261746502
      0000000F000800000043796C696E646572020000000A00040000004472756D02
      00000001000B0000004472756D2C20537465656C020000000B0008000000456E
      76656C6F7065020000000C00070000005061636B616765020000000D00060000
      0050616C6C6574020000000E00040000005361636B0200000012000900000043
      6F6E7461696E6572}
    object vtTypeOfGoodsid: TSmallintField
      FieldName = 'id'
    end
    object vtTypeOfGoodsdescription: TStringField
      FieldName = 'description'
      Size = 60
    end
  end
  object dsDepartments: TUniDataSource
    DataSet = fdmLkpDepartments
    Left = 626
    Top = 400
  end
  object dsTypeOfGoods: TUniDataSource
    DataSet = vtTypeOfGoods
    Left = 786
    Top = 360
  end
  object jscSupplier: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edSupplier
    SearchButton = btnSupplier
    Left = 290
    Top = 96
  end
  object jscLocation: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edWarehouseLocation
    SearchButton = btnWarehouseLocationSearch
    Left = 226
    Top = 112
  end
  object jscWarehouse: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edWarehouseName
    SearchButton = btnWarehouseName
    Left = 346
    Top = 120
  end
  object jscCarrier: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edCarrier
    SearchButton = btnCarrier
    Left = 418
    Top = 288
  end
  object MasterActionViewController: TJanuaActionViewController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ButtonSize = jbs24
    Left = 344
    Top = 176
  end
  object fdmCurrencies: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'currency_id'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'currency_code'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'currency_name'
        DataType = ftWideString
        Size = 60
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 296
    Top = 384
    Content = {
      414442530F00000002040000FF00010001FF02FF0304001A000000660064006D
      00430075007200720065006E00630069006500730005000A0000005400610062
      006C006500060000000000070000080032000000090000FF0AFF0B0400160000
      00630075007200720065006E00630079005F0069006400050016000000630075
      007200720065006E00630079005F00690064000C00010000000E000D000F0001
      100001110001120001130016000000630075007200720065006E00630079005F
      0069006400FEFF0B04001A000000630075007200720065006E00630079005F00
      63006F006400650005001A000000630075007200720065006E00630079005F00
      63006F00640065000C00020000000E0014001500030000000F00011600011000
      0117000111000112000113001A000000630075007200720065006E0063007900
      5F0063006F0064006500180003000000FEFF0B04001A00000063007500720072
      0065006E00630079005F006E0061006D00650005001A00000063007500720072
      0065006E00630079005F006E0061006D0065000C00030000000E00140015003C
      0000000F000116000110000117000111000112000113001A0000006300750072
      00720065006E00630079005F006E0061006D00650018003C000000FEFEFF19FE
      FF1AFEFF1BFF1C1D0000000000FF1E0000080001000600000041005500240002
      002200000044006F006C006C00610072006F0020004100750073007400720061
      006C0069006100FEFEFF1C1D0001000000FF1E00000900010006000000430048
      00460002001E0000004600720061006E0063006F0020005300760069007A007A
      00650072006F00FEFEFF1C1D0002000000FF1E0000060001000600000044004B
      004B0002001A00000043004F0052004F004E0045002000440041004E00450053
      004900FEFEFF1C1D0003000000FF1E0000010001000600000045005500520002
      00080000004500750072006F00FEFEFF1C1D0004000000FF1E00000300010006
      00000047004200500002001000000047004200200050006F0075006E006400FE
      FEFF1C1D0005000000FF1E0000070001000600000048004B0024000200220000
      0044006F006C006C00610072006F00200048006F006E00670020004B006F006E
      006700FEFEFF1C1D0006000000FF1E000004000100060000004A005000590002
      00120000004A004100500041004E002000590045004E00FEFEFF1C1D00070000
      00FF1E000005000100060000004E004F004B0002002000000043004F0052004F
      004E00450020004E004F005200560045004700450053004900FEFEFF1C1D0008
      000000FF1E000002000100060000005500530044000200120000005500530020
      0044006F006C006C0061007200FEFEFEFEFEFF1FFEFF20210012000000FF22FE
      FEFE0E004D0061006E0061006700650072001E00550070006400610074006500
      73005200650067006900730074007200790012005400610062006C0065004C00
      6900730074000A005400610062006C00650008004E0061006D00650014005300
      6F0075007200630065004E0061006D0065000A00540061006200490044002400
      45006E0066006F0072006300650043006F006E00730074007200610069006E00
      740073001E004D0069006E0069006D0075006D00430061007000610063006900
      74007900180043006800650063006B004E006F0074004E0075006C006C001400
      43006F006C0075006D006E004C006900730074000C0043006F006C0075006D00
      6E00100053006F007500720063006500490044000E006400740049006E007400
      3100360010004400610074006100540079007000650014005300650061007200
      63006800610062006C0065000800420061007300650012004F0049006E005500
      7000640061007400650010004F0049006E00570068006500720065001A004F00
      72006900670069006E0043006F006C004E0061006D0065001800640074005700
      69006400650053007400720069006E0067000800530069007A00650012004100
      6C006C006F0077004E0075006C006C0014004F0041006C006C006F0077004E00
      75006C006C00140053006F007500720063006500530069007A0065001C004300
      6F006E00730074007200610069006E0074004C00690073007400100056006900
      650077004C006900730074000E0052006F0077004C0069007300740006005200
      6F0077000A0052006F0077004900440010004F0072006900670069006E006100
      6C001800520065006C006100740069006F006E004C006900730074001C005500
      7000640061007400650073004A006F00750072006E0061006C00120053006100
      7600650050006F0069006E0074000E004300680061006E00670065007300}
    object fdmCurrenciescurrency_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'currency_id'
      Required = True
    end
    object fdmCurrenciescurrency_code: TWideStringField
      DisplayWidth = 3
      FieldName = 'currency_code'
      Size = 3
    end
    object fdmCurrenciescurrency_name: TWideStringField
      DisplayWidth = 60
      FieldName = 'currency_name'
      Size = 60
    end
  end
  object fdmSystemUsers: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'db_user_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'email'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 256
      end
      item
        Name = 'username'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 128
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 360
    Top = 360
    Content = {
      414442530F000000AE050000FF00010001FF02FF0304001C000000660064006D
      00530079007300740065006D005500730065007200730005000A000000540061
      0062006C006500060000000000070000080032000000090000FF0AFF0B040014
      000000640062005F0075007300650072005F0069006400050014000000640062
      005F0075007300650072005F00690064000C00010000000E000D000F00011000
      01110001120001130014000000640062005F0075007300650072005F00690064
      00FEFF0B04000A00000065006D00610069006C0005000A00000065006D006100
      69006C000C00020000000E0014001500000100000F0001100001110001120001
      13000A00000065006D00610069006C00160000010000FEFF0B04001000000075
      007300650072006E0061006D00650005001000000075007300650072006E0061
      006D0065000C00030000000E0014001500800000000F00011000011100011200
      0113001000000075007300650072006E0061006D006500160080000000FEFEFF
      17FEFF18FEFF19FF1A1B0000000000FF1C00003B010000010042000000660072
      0061006E0063006500730063006F006C0040007400610069006C006F0072006D
      006100640065006C006F006700690073007400690063002E0063006F006D0002
      00200000006600720061006E006300650074006D006C006F0067006900730074
      0069006300FEFEFF1A1B0001000000FF1C00004301000001003C00000066006C
      006100760069006F00700040007400610069006C006F0072006D006100640065
      006C006F006700690073007400690063002E0063006F006D0002001400000066
      006C006100760069006F0070005F0074006D00FEFEFF1A1B0002000000FF1C00
      003C0100000100360000006F0070007300350040007400610069006C006F0072
      006D006100640065006C006F006700690073007400690063002E0063006F006D
      00020022000000640061006E00690065006C00610074006D006C006F00670069
      007300740069006300FEFEFF1A1B0003000000FF1C00003D0100000100360000
      006F0070007300330040007400610069006C006F0072006D006100640065006C
      006F006700690073007400690063002E0063006F006D00020026000000660061
      006200720069007A0069006F0074006D006C006F006700690073007400690063
      000A00FEFEFF1A1B0004000000FF1C00003E0100000100340000006900630074
      0040007400610069006C006F0072006D006100640065006C006F006700690073
      007400690063002E0063006F006D000200240000007200690063006300610072
      0064006F0074006D006C006F00670069007300740069006300FEFEFF1A1B0005
      000000FF1C00003F01000001003400000077006800310040007400610069006C
      006F0072006D006100640065006C006F006700690073007400690063002E0063
      006F006D000200220000006D0069006300680065006C00650074006D006C006F
      00670069007300740069006300FEFEFF1A1B0006000000FF1C00004001000001
      00360000006F0070007300310040007400610069006C006F0072006D00610064
      0065006C006F006700690073007400690063002E0063006F006D000200240000
      006D0061007500720069007A0069006F0074006D006C006F0067006900730074
      0069006300FEFEFF1A1B0007000000FF1C0000410100000100360000006F0070
      007300340040007400610069006C006F0072006D006100640065006C006F0067
      00690073007400690063002E0063006F006D0002001C00000074006800650061
      0074006D006C006F00670069007300740069006300FEFEFF1A1B00080000001E
      001D00FF1C00004201000001002A000000640065006D006F0040006500720067
      006F006D00650072006300610074006F0072002E0063006F006D000200180000
      0074006D005F00640065006D006F005F007500730065007200FEFEFEFEFEFF1F
      FEFF20210013000000FF22FEFEFE0E004D0061006E0061006700650072001E00
      5500700064006100740065007300520065006700690073007400720079001200
      5400610062006C0065004C006900730074000A005400610062006C0065000800
      4E0061006D006500140053006F0075007200630065004E0061006D0065000A00
      54006100620049004400240045006E0066006F0072006300650043006F006E00
      730074007200610069006E00740073001E004D0069006E0069006D0075006D00
      43006100700061006300690074007900180043006800650063006B004E006F00
      74004E0075006C006C00140043006F006C0075006D006E004C00690073007400
      0C0043006F006C0075006D006E00100053006F00750072006300650049004400
      0E006400740049006E0074003300320010004400610074006100540079007000
      65001400530065006100720063006800610062006C0065000800420061007300
      650012004F0049006E0055007000640061007400650010004F0049006E005700
      68006500720065001A004F0072006900670069006E0043006F006C004E006100
      6D006500180064007400570069006400650053007400720069006E0067000800
      530069007A006500140053006F007500720063006500530069007A0065001C00
      43006F006E00730074007200610069006E0074004C0069007300740010005600
      6900650077004C006900730074000E0052006F0077004C006900730074000600
      52006F0077000A0052006F0077004900440010004F0072006900670069006E00
      61006C0016007200730055006E006300680061006E006700650064001A005200
      6F0077005000720069006F007200530074006100740065001800520065006C00
      6100740069006F006E004C006900730074001C00550070006400610074006500
      73004A006F00750072006E0061006C001200530061007600650050006F006900
      6E0074000E004300680061006E00670065007300}
    object fdmSystemUsersdb_user_id: TIntegerField
      DisplayWidth = 10
      FieldName = 'db_user_id'
      Required = True
    end
    object fdmSystemUsersemail: TWideStringField
      DisplayWidth = 30
      FieldName = 'email'
      Required = True
      Size = 256
    end
    object fdmSystemUsersusername: TWideStringField
      DisplayWidth = 19
      FieldName = 'username'
      Required = True
      Size = 128
    end
  end
  object dsSystemUsers: TDataSource
    DataSet = fdmSystemUsers
    Left = 432
    Top = 344
  end
  object dsCountries: TDataSource
    DataSet = fdmCountries
    Left = 69
    Top = 440
  end
  object fdmCountries: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'iso_country_code'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'iso_country_code2'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'country_year'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'country_name'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 128
      end
      item
        Name = 'iso_currency_id'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'country_id'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'iso_country_number'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'jguid'
        DataType = ftGuid
        Size = 38
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 174
    Top = 440
    Content = {
      414442530F000000D93B0000FF00010001FF02FF03040018000000660064006D
      0043006F0075006E007400720069006500730005000A0000005400610062006C
      006500060000000000070000080032000000090000FF0AFF0B04002000000069
      0073006F005F0063006F0075006E007400720079005F0063006F006400650005
      0020000000690073006F005F0063006F0075006E007400720079005F0063006F
      00640065000C00010000000E000D000F00030000001000011100011200011300
      01140020000000690073006F005F0063006F0075006E007400720079005F0063
      006F0064006500150003000000FEFF0B040022000000690073006F005F006300
      6F0075006E007400720079005F0063006F006400650032000500220000006900
      73006F005F0063006F0075006E007400720079005F0063006F00640065003200
      0C00020000000E000D000F000200000010000111000112000113000114002200
      0000690073006F005F0063006F0075006E007400720079005F0063006F006400
      65003200150002000000FEFF0B04001800000063006F0075006E007400720079
      005F00790065006100720005001800000063006F0075006E007400720079005F
      0079006500610072000C00030000000E00160010000111000112000113000114
      001800000063006F0075006E007400720079005F007900650061007200FEFF0B
      04001800000063006F0075006E007400720079005F006E0061006D0065000500
      1800000063006F0075006E007400720079005F006E0061006D0065000C000400
      00000E000D000F00800000001000011100011200011300011400180000006300
      6F0075006E007400720079005F006E0061006D006500150080000000FEFF0B04
      001E000000690073006F005F00630075007200720065006E00630079005F0069
      00640005001E000000690073006F005F00630075007200720065006E00630079
      005F00690064000C00050000000E00160010000111000112000113000114001E
      000000690073006F005F00630075007200720065006E00630079005F00690064
      00FEFF0B04001400000063006F0075006E007400720079005F00690064000500
      1400000063006F0075006E007400720079005F00690064000C00060000000E00
      160010000111000112000113000114001400000063006F0075006E0074007200
      79005F0069006400FEFF0B040024000000690073006F005F0063006F0075006E
      007400720079005F006E0075006D00620065007200050024000000690073006F
      005F0063006F0075006E007400720079005F006E0075006D006200650072000C
      00070000000E000D000F00030000001000011700011100011800011200011300
      01140024000000690073006F005F0063006F0075006E007400720079005F006E
      0075006D00620065007200150003000000FEFF0B04000A0000006A0067007500
      6900640005000A0000006A0067007500690064000C00080000000E0019001000
      0117000111000118000112000113000114000A0000006A006700750069006400
      FEFEFF1AFEFF1BFEFF1CFF1D1E0000000000FF1F000006000000410049004100
      010004000000410049000200BC0703001000000041006E006700750069006C00
      6C0061000400010005000900060006000000360036003000FEFEFF1D1E000100
      0000FF1F00000600000041005400410001000400000041005100020062070300
      1200000041006E0074006100720074006900640065000400010005000A000600
      06000000300031003000FEFEFF1D1E0002000000FF1F00000600000041005400
      4700010004000000410047000200BD0703002200000041006E00740069006700
      7500610020006500200042006100720062007500640061000400010005000B00
      060006000000300032003800FEFEFF1D1E0003000000FF1F0000060000005300
      410055000100040000005300410002008C0703001C0000004100720061006200
      69006100200053006100750064006900740061000400010005000C0006000600
      0000360038003200FEFEFF1D1E0004000000FF1F000006000000410042005700
      010004000000410057000200CA0703000A000000410072007500620061000400
      010005000F00060006000000350033003300FEFEFF1D1E0005000000FF1F0000
      06000000470047005900010004000000470047000200140503003A0000004200
      61006C006900610074006F002F00420061006C00690061006700670069006F00
      200064006900200047007500650072006E007300650079000400010005005400
      060006000000380033003100FEFEFF1D1E0006000000FF1F0000060000004200
      52004200010004000000420042000200AE070300100000004200610072006200
      610064006F0073000400010005001600060006000000300035003200FEFEFF1D
      1E0007000000FF1F00000600000042004C005A0001000400000042005A000200
      BD0703000C000000420065006C0069007A006500040001000500180006000600
      0000300038003400FEFEFF1D1E0008000000FF1F00000600000042004D005500
      01000400000042004D000200490603000E0000004200650072006D0075006400
      61000400010005001A00060006000000300036003000FEFEFF1D1E0009000000
      FF1F000006000000420049004800010004000000420041000200C80703002800
      000042006F0073006E00690061002000650064002000450072007A0065006700
      6F00760069006E0061000400010005001F00060006000000300037003000FEFE
      FF1D1E000A000000FF1F00000600000042004600410001000400000042004600
      0200A8070300180000004200750072006B0069006E0061002000460061007300
      6F000400010005002400060006000000380035003400FEFEFF1D1E000B000000
      FF1F000006000000430041004E000100040000004300410002008B0703000C00
      0000430061006E00610064006100040001000500280006000600000031003200
      3400FEFEFF1D1E000C000000FF1F000006000000430058005200010004000000
      43005800020098060300200000004300680072006900730074006D0061007300
      2000490073006C0061006E006400040001000500650006000600000031003600
      3200FEFEFF1D1E000D000000FF1F000006000000430043004B00010004000000
      430043000200230703002E00000043006F0063006F007300200028004B006500
      65006C0069006E00670029002000490073006C0061006E006400730004000100
      05006A00060006000000310036003600FEFEFF1D1E000E000000FF1F00000600
      000044004D00410001000400000044004D000200BA0703003600000043006F00
      6D006D006F006E007700650061006C00740068002000640065006C006C006100
      200044006F006D0069006E006900630061000400010005003900060006000000
      320031003200FEFEFF1D1E000F000000FF1F0000060000004100550053000100
      040000004100550002006D0703003600000043006F006D006D006F006E007700
      650061006C00740068002000640065006C006C00270041007500730074007200
      61006C00690061000400010005001000060006000000300033003600FEFEFF1D
      1E0010000000FF1F000006000000420048005300010004000000420053000200
      B50703003400000043006F006D006D006F006E007700650061006C0074006800
      2000640065006C006C006500200042006100680061006D006100730004000100
      05001300060006000000300034003400FEFEFF1D1E0011000000FF1F00000600
      00004D004E0050000100040000004D0050000200B70703006000000043006F00
      6D006D006F006E007700650061006C00740068002000640065006C006C006500
      2000490073006F006C00650020004D0061007200690061006E006E0065002000
      530065007400740065006E007400720069006F006E0061006C00690004000100
      05006F00060006000000350038003000FEFEFF1D1E0012000000FF1F00000600
      0000430055005700010004000000430057000200DA0703000E00000043007500
      72006100E70061006F000400010005003700060006000000350033003100FEFE
      FF1D1E0013000000FF1F00000600000041005200450001000400000041004500
      0200B30703002600000045006D00690072006100740069002000410072006100
      62006900200055006E006900740069000400010005003D000600060000003700
      38003400FEFEFF1D1E0014000000FF1F00000600000053004700530001000400
      0000470053000200C107030058000000470065006F0072006700690061002000
      640065006C002000530075006400200065002000690073006F006C0065002000
      530061006E006400770069006300680020006D00650072006900640069006F00
      6E0061006C0069000400010005004700060006000000320033003900FEFEFF1D
      1E0015000000FF1F0000060000004A0041004D000100040000004A004D000200
      AA070300100000004700690061006D0061006900630061000400010005004900
      060006000000330038003800FEFEFF1D1E0016000000FF1F0000060000004700
      4900420001000400000047004900020010060300140000004700690062006900
      6C00740065007200720061000400010005004B00060006000000320039003200
      FEFEFF1D1E0017000000FF1F0000060000004700520044000100040000004700
      44000200B60703000E0000004700720065006E00610064006100040001000500
      4F00060006000000330030003800FEFEFF1D1E0018000000FF1F000006000000
      470052004C0001000400000047004C000200A107030016000000470072006F00
      65006E006C0061006E0064006900610004000100050050000600060000003300
      30003400FEFEFF1D1E0019000000FF1F00000600000047004C00500001000400
      00004700500002004F07030012000000470075006100640061006C0075007000
      61000400010005005100060006000000330031003200FEFEFF1D1E001A000000
      FF1F000006000000470055004D000100040000004700550002009E0703000800
      00004700750061006D000400010005005200060006000000330031003600FEFE
      FF1D1E001B000000FF1F00000600000047004E00510001000400000047005100
      0200B0070300240000004700750069006E006500610020004500710075006100
      74006F007200690061006C006500040001000500570006000600000032003200
      3600FEFEFF1D1E001C000000FF1F000006000000470055004600010004000000
      470046000200000703001E00000047007500790061006E006100200066007200
      61006E0063006500730065000400010005005900060006000000320035003400
      FEFEFF1D1E001D000000FF1F00000600000048004E0044000100040000004800
      4E0002001D0703001000000048006F006E006400750072006100730004000100
      05005B00060006000000330034003000FEFEFF1D1E001E000000FF1F00000600
      00004A0050004E000100040000004A00500002006CFD03005400000049006D00
      7000650072006F002000640065006C00200053006F006C0020004C0065007600
      61006E007400650020006F00200049006D007000650072006F00200067006900
      6100700070006F006E006500730065000400010005004A000600060000003300
      39003200FEFEFF1D1E001F000000FF1F000006000000490053004C0001000400
      0000490053000200980703000E000000490073006C0061006E00640061000400
      010005006200060006000000330035003200FEFEFF1D1E0020000000FF1F0000
      060000004200560054000100040000004200560002008A070300180000004900
      73006F006C006100200042006F00750076006500740004000100050063000600
      06000000300037003400FEFEFF1D1E0021000000FF1F00000600000049004D00
      4E0001000400000049004D000200D303030018000000490073006F006C006100
      20006400690020004D0061006E00040001000500640006000600000038003300
      3300FEFEFF1D1E0022000000FF1F00000600000041004C004100010004000000
      4100580002001107030040000000490073006F006C0065002000C5006C006100
      6E0064002D0041006800760065006E0061006E006D00610061006E0020006D00
      610061006B0075006E0074006100040001000500670006000600000032003400
      3800FEFEFF1D1E0023000000FF1F000006000000420045005300010004000000
      4200510002001707030034000000490073006F006C0065002000420065007300
      2D00430061007200610069006200690020004F006C0061006E00640065007300
      69000400010005006800060006000000350033003500FEFEFF1D1E0024000000
      FF1F000006000000430059004D000100040000004B0059000200860603001800
      0000490073006F006C00650020004300610079006D0061006E00040001000500
      6900060006000000310033003600FEFEFF1D1E0025000000FF1F000006000000
      43004F004B0001000400000043004B000200AD07030014000000490073006F00
      6C006500200043006F006F006B000400010005006B0006000600000031003800
      3400FEFEFF1D1E0026000000FF1F000006000000460052004F00010004000000
      46004F0002009C0703001A000000490073006F006C00650020004600E6007200
      2000D800650072000400010005006C00060006000000320033003400FEFEFF1D
      1E0027000000FF1F00000600000046004C004B0001000400000046004B000200
      BE0703001C000000490073006F006C0065002000460061006C006B006C006100
      6E0064000400010005006D00060006000000320033003800FEFEFF1D1E002800
      0000FF1F00000600000048004D00440001000400000048004D0002009B070300
      2C000000490073006F006C006500200048006500610072006400200065002000
      4D00630044006F006E0061006C0064000400010005006E000600060000003300
      33003400FEFEFF1D1E0029000000FF1F0000060000004D0048004C0001000400
      00004D0048000200C20703001C000000490073006F006C00650020004D006100
      72007300680061006C006C000400010005007000060006000000350038003400
      FEFEFF1D1E002A000000FF1F00000600000055004D0049000100040000005500
      4D0002009007030060000000490073006F006C00650020006D0069006E006F00
      720069002000650073007400650072006E00650020006400650067006C006900
      200053007400610074006900200055006E006900740069002000640027004100
      6D00650072006900630061000400010005007100060006000000350038003100
      FEFEFF1D1E002B000000FF1F000006000000500043004E000100040000005000
      4E000200460603004E000000490073006F006C00650020005000690074006300
      6100690072006E002C002000480065006E0064006500720073006F006E002C00
      2000440075006300690065002000650020004F0065006E006F00040001000500
      7200060006000000360031003200FEFEFF1D1E002C000000FF1F000006000000
      53004C004200010004000000530042000200BA0703001C000000490073006F00
      6C0065002000530061006C006F006D006F006E00650004000200050073000600
      06000000300039003000FEFEFF1D1E002D000000FF1F00000600000056004700
      4200010004000000560047000200AF07030032000000490073006F006C006500
      2000560065007200670069006E0069002000620072006900740061006E006E00
      69006300680065000400010005007400060006000000300039003200FEFEFF1D
      1E002E000000FF1F000006000000560049005200010004000000560049000200
      7D0703003E000000490073006F006C0065002000560065007200670069006E00
      690020006400650067006C006900200053007400610074006900200055006E00
      6900740069000400020005007500060006000000380035003000FEFEFF1D1E00
      2F000000FF1F00000600000049005300520001000400000049004C000200B607
      03000E000000490073007200610065006C0065000400010005007E0006000600
      000033003700360007006AB81E3BA6A5EA118F44474499E65573FEFEFF1D1E00
      30000000FF1F0000060000004D0043004F000100040000004D0043000200B607
      03000C0000004D006F006E00610063006F000400010005007C00060006000000
      3400390032000700FC6802D4A5A5EA118F4497BF83500125FEFEFF1D1E003100
      0000FF1F0000060000004E004C0044000100040000004E004C0002002F070300
      160000004E00650074006800650072006C0061006E0064007300040001000500
      770006000600000035003200380007007EB87C76A3A5EA118F44FFC20874E4F9
      FEFEFF1D1E0032000000FF1F0000040000004E0046000100040000004E004600
      0200D00603001C0000004E006F00720066006F006C006B002000490073006C00
      61006E0064000400010005006600060006000000350037003400FEFEFF1D1E00
      33000000FF1F0000060000004E004F0052000100040000004E004F000200B607
      0300100000004E006F007200760065006700690061000400010005007D000600
      060000003500370038000700100A5C0BA6A5EA118F44DBC2B3B1E09BFEFEFF1D
      1E0034000000FF1F00000600000041004E004400010004000000410044000200
      FE0403002A0000005000720069006E00630069007000610074006F0020006400
      6900200041006E0064006F007200720061000400010005000700060006000000
      300032003000FEFEFF1D1E0035000000FF1F00000600000048004B0047000100
      0400000048004B000200CD0703009A00000052006500670069006F006E006500
      200041006D006D0069006E006900730074007200610074006900760061002000
      5300700065006300690061006C006500200064006900200048006F006E006700
      20004B006F006E0067002000640065006C006C00610020005200650070007500
      620062006C00690063006100200050006F0070006F006C006100720065002000
      430069006E006500730065000400010005005C00060006000000330034003400
      FEFEFF1D1E0036000000FF1F0000060000004200480052000100040000004200
      48000200B3070300220000005200650067006E006F002000640065006C002000
      4200610068007200650069006E00040001000500140006000600000030003400
      3800FEFEFF1D1E0037000000FF1F000006000000420045004C00010004000000
      42004500020026070300200000005200650067006E006F002000640065006C00
      2000420065006C00670069006F00040001000500170006000600000030003500
      3600FEFEFF1D1E0038000000FF1F000006000000420054004E00010004000000
      420054000200D7070300200000005200650067006E006F002000640065006C00
      2000420068007500740061006E000400010005001B0006000600000030003600
      3400FEFEFF1D1E0039000000FF1F0000060000004B0048004D00010004000000
      4B0048000200A1070300280000005200650067006E006F002000640065006C00
      6C0061002000430061006D0062006F0067006900610004000100050026000600
      06000000310031003600FEFEFF1D1E003A000000FF1F00000600000044004E00
      4B0001000400000044004B00020020030300240000005200650067006E006F00
      2000640069002000440061006E0069006D006100720063006100040001000500
      3800060006000000320030003800FEFEFF1D1E003B000000FF1F000006000000
      4A004F0052000100040000004A004F0002009A07030038000000520065006700
      6E006F002000480061007300630065006D006900740061002000640069002000
      470069006F007200640061006E00690061000400010005004D00060006000000
      340030003000FEFEFF1D1E003C000000FF1F0000060000004500530050000100
      04000000450053000200A30703001E0000005200650069006E006F0020006400
      650020004500730070006100F100610004000100050004000600060000003700
      32003400FEFEFF1D1E003D000000FF1F00000600000045004700590001000400
      000045004700020082070300320000005200650070007500620062006C006900
      6300610020004100720061006200610020006400270045006700690074007400
      6F000400010005003B00060006000000380031003800FEFEFF1D1E003E000000
      FF1F000006000000410052004700010004000000410052000200180703002800
      00005200650070007500620062006C0069006300610020004100720067006500
      6E00740069006E0061000400010005000D00060006000000300033003200FEFE
      FF1D1E003F000000FF1F00000600000047005500590001000400000047005900
      0200AE070300400000005200650070007500620062006C006900630061002000
      43006F006F007000650072006100740069007600610020006400690020004700
      7500790061006E0061000400010005005800060006000000330032003800FEFE
      FF1D1E0040000000FF1F00000600000041005500540001000400000041005400
      0200A3070300280000005200650070007500620062006C006900630061002000
      6400270041007500730074007200690061000400010005001100060006000000
      300034003000FEFEFF1D1E0041000000FF1F000006000000420045004E000100
      0400000042004A000200A8070300280000005200650070007500620062006C00
      6900630061002000640065006C002000420065006E0069006E00040001000500
      1900060006000000320030003400FEFEFF1D1E0042000000FF1F000006000000
      420057004100010004000000420057000200AE0703002E000000520065007000
      7500620062006C006900630061002000640065006C00200042006F0074007300
      770061006E0061000400010005002000060006000000300037003200FEFEFF1D
      1E0043000000FF1F000006000000420044004900010004000000420049000200
      AA0703002C0000005200650070007500620062006C0069006300610020006400
      65006C00200042007500720075006E0064006900040001000500250006000600
      0000310030003800FEFEFF1D1E0044000000FF1F00000600000043004D005200
      01000400000043004D000200A80703002C000000520065007000750062006200
      6C006900630061002000640065006C002000430061006D006500720075006E00
      0400010005002700060006000000310032003000FEFEFF1D1E0045000000FF1F
      000006000000540043004400010004000000540044000200A807030026000000
      5200650070007500620062006C006900630061002000640065006C0020004300
      6900610064000400010005002A00060006000000310034003800FEFEFF1D1E00
      46000000FF1F000006000000430048004C0001000400000043004C0002001A07
      0300260000005200650070007500620062006C00690063006100200064006500
      6C002000430069006C0065000400010005002B00060006000000310035003200
      FEFEFF1D1E0047000000FF1F00000600000047004D0042000100040000004700
      4D000200AD0703002A0000005200650070007500620062006C00690063006100
      2000640065006C002000470061006D0062006900610004000100050045000600
      06000000320037003000FEFEFF1D1E0048000000FF1F00000600000047004800
      4100010004000000470048000200A50703002800000052006500700075006200
      62006C006900630061002000640065006C0020004700680061006E0061000400
      010005004800060006000000320038003800FEFEFF1D1E0049000000FF1F0000
      06000000470054004D000100040000004700540002001D070300300000005200
      650070007500620062006C006900630061002000640065006C00200047007500
      6100740065006D0061006C006100040001000500530006000600000033003200
      3000FEFEFF1D1E004A000000FF1F00000600000043004F004C00010004000000
      43004F00020012070300320000005200650070007500620062006C0069006300
      61002000640065006C006C006100200043006F006C006F006D00620069006100
      0400010005002F00060006000000310037003000FEFEFF1D1E004B000000FF1F
      000006000000430049005600010004000000430049000200A80703003E000000
      5200650070007500620062006C006900630061002000640065006C006C006100
      200043006F00730074006100200064002700410076006F00720069006F000400
      010005003300060006000000330038003400FEFEFF1D1E004C000000FF1F0000
      06000000410047004F0001000400000041004F000200B70703002C0000005200
      650070007500620062006C006900630061002000640065006C006C0027004100
      6E0067006F006C0061000400010005000800060006000000300032003400FEFE
      FF1D1E004D000000FF1F00000600000041005A00450001000400000041005A00
      0200C7070300360000005200650070007500620062006C006900630061002000
      640065006C006C00270041007A00650072006200610069006700690061006E00
      0400010005001200060006000000300033003100FEFEFF1D1E004E000000FF1F
      0000060000004500430055000100040000004500430002001E0703002E000000
      5200650070007500620062006C006900630061002000640065006C006C002700
      450063007500610064006F0072000400010005003A0006000600000032003100
      3800FEFEFF1D1E004F000000FF1F000006000000500048004C00010004000000
      5000480002006A070300340000005200650070007500620062006C0069006300
      61002000640065006C006C0065002000460069006C0069007000700069006E00
      65000400010005004200060006000000360030003800FEFEFF1D1E0050000000
      FF1F00000600000046004A00490001000400000046004A000200B20703003600
      00005200650070007500620062006C006900630061002000640065006C006C00
      65002000690073006F006C006500200046006900670069000400010005004100
      060006000000320034003200FEFEFF1D1E0051000000FF1F0000060000004900
      4E00440001000400000049004E0002009B0703002A0000005200650070007500
      620062006C006900630061002000640065006C006C00270049006E0064006900
      61000400010005005D00060006000000330035003600FEFEFF1D1E0052000000
      FF1F0000060000004D004D0052000100040000004D004D0002009C0703004A00
      00005200650070007500620062006C006900630061002000640065006C006C00
      270055006E0069006F006E0065002000640065006C006C006100200042006900
      72006D0061006E00690061000400010005001D00060006000000310030003400
      FEFEFF1D1E0053000000FF1F00000600000044005A0041000100040000004400
      5A000200AA070300540000005200650070007500620062006C00690063006100
      2000440065006D006F006300720061007400690063006100200050006F007000
      6F006C00610072006500200064006900200041006C0067006500720069006100
      0400010005000600060006000000300031003200FEFEFF1D1E0054000000FF1F
      0000060000004500530054000100040000004500450002007E07030028000000
      5200650070007500620062006C00690063006100200064002700450073007400
      6F006E00690061000400010005003F00060006000000320033003300FEFEFF1D
      1E0055000000FF1F000006000000410052004D0001000400000041004D000200
      C60703002A0000005200650070007500620062006C0069006300610020006400
      69002000410072006D0065006E00690061000400010005000E00060006000000
      300035003100FEFEFF1D1E0056000000FF1F00000600000042004C0052000100
      04000000420059000200C6070300320000005200650070007500620062006C00
      69006300610020006400690020004200690065006C006F007200750073007300
      690061000400010005001C00060006000000310031003200FEFEFF1D1E005700
      0000FF1F000006000000420047005200010004000000420047000200A9020300
      2C0000005200650070007500620062006C006900630061002000640069002000
      420075006C006700610072006900610004000100050023000600060000003100
      30003000FEFEFF1D1E0058000000FF1F00000600000043005000560001000400
      0000430056000200B7070300300000005200650070007500620062006C006900
      6300610020006400690020004300610070006F00200056006500720064006500
      0400010005002900060006000000310033003200FEFEFF1D1E0059000000FF1F
      000006000000430059005000010004000000430059000200A807030026000000
      5200650070007500620062006C00690063006100200064006900200043006900
      700072006F000400010005002D00060006000000310039003600FEFEFF1D1E00
      5A000000FF1F0000060000004B004F0052000100040000004B00520002009907
      0300260000005200650070007500620062006C00690063006100200064006900
      200043006F007200650061000400010005003200060006000000340031003000
      FEFEFF1D1E005B000000FF1F0000060000004300520049000100040000004300
      520002001D0703002E0000005200650070007500620062006C00690063006100
      200064006900200043006F007300740061007200690063006100040001000500
      3400060006000000310038003800FEFEFF1D1E005C000000FF1F000006000000
      480052005600010004000000480052000200C70703002A000000520065007000
      7500620062006C006900630061002000640069002000430072006F0061007A00
      690061000400010005003500060006000000310039003100FEFEFF1D1E005D00
      0000FF1F0000060000004300550042000100040000004300550002004C070300
      240000005200650070007500620062006C006900630061002000640069002000
      43007500620061000400010005003600060006000000310039003200FEFEFF1D
      1E005E000000FF1F000006000000460049004E00010004000000460049000200
      7D0703002E0000005200650070007500620062006C0069006300610020006400
      69002000460069006E006C0061006E0064006900610004000100050043000600
      06000000320034003600FEFEFF1D1E005F000000FF1F00000600000044004A00
      490001000400000044004A000200B90703002800000052006500700075006200
      62006C0069006300610020006400690020004700690062007500740069000400
      010005004C00060006000000320036003200FEFEFF1D1E0060000000FF1F0000
      06000000470049004E0001000400000047004E000200A6070300280000005200
      650070007500620062006C006900630061002000640069002000470075006900
      6E00650061000400010005005500060006000000330032003400FEFEFF1D1E00
      61000000FF1F00000600000047004E004200010004000000470057000200B507
      0300360000005200650070007500620062006C00690063006100200064006900
      20004700750069006E00650061002D0042006900730073006100750004000100
      05005600060006000000360032003400FEFEFF1D1E0062000000FF1F00000600
      00004800540049000100040000004800540002000C0703002600000052006500
      70007500620062006C0069006300610020006400690020004800610069007400
      69000400010005005A00060006000000330033003200FEFEFF1D1E0063000000
      FF1F000006000000490044004E00010004000000490044000200990703002C00
      00005200650070007500620062006C0069006300610020006400270049006E00
      64006F006E0065007300690061000400010005005E0006000600000033003600
      3000FEFEFF1D1E0064000000FF1F000006000000490052005100010004000000
      4900510002008C070300220000005200650070007500620062006C0069006300
      6100200064002700490072006100710004000100050060000600060000003300
      36003800FEFEFF1D1E0065000000FF1F000006000000490052004C0001000400
      000049004500020082070300280000005200650070007500620062006C006900
      63006100200064002700490072006C0061006E00640061000400010005006100
      060006000000330037003200FEFEFF1D1E0066000000FF1F0000060000004400
      4F004D0001000400000044004F000200B60703002A0000005200650070007500
      620062006C00690063006100200044006F006D0069006E006900630061006E00
      61000400010005007B000600060000003200310034000700E8662D83A5A5EA11
      8F44FFFBA0847324FEFEFF1D1E0067000000FF1F000006000000470052004300
      0100040000004700520002001E07030026000000520065007000750062006200
      6C00690063006100200045006C006C0065006E00690063006100040001000500
      4E00060006000000330030003000FEFEFF1D1E0068000000FF1F000006000000
      4200520041000100040000004200520002001E0703003E000000520065007000
      7500620062006C0069006300610020004600650064006500720061006C006500
      2000640065006C002000420072006100730069006C0065000400010005002100
      060006000000300037003600FEFEFF1D1E0069000000FF1F0000060000004500
      540048000100040000004500540002009B070300520000005200650070007500
      620062006C0069006300610020004600650064006500720061006C0065002000
      440065006D006F00630072006100740069006300610020006400270045007400
      69006F007000690061000400010005004000060006000000320033003100FEFE
      FF1D1E006A000000FF1F00000600000044004500550001000400000044004500
      0200C60703003E0000005200650070007500620062006C006900630061002000
      4600650064006500720061006C00650020006400690020004700650072006D00
      61006E00690061000400010005000300060006000000320037003600FEFEFF1D
      1E006B000000FF1F000006000000470041004200010004000000470041000200
      A8070300260000005200650070007500620062006C0069006300610020004700
      610062006F006E00650073006500040001000500440006000600000032003600
      3600FEFEFF1D1E006C000000FF1F000006000000470045004F00010004000000
      470045000200C7070300280000005200650070007500620062006C0069006300
      61002000670065006F0072006700690061006E00610004000100050046000600
      06000000320036003800FEFEFF1D1E006D000000FF1F00000600000041004600
      47000100040000004100460002007F0703004800000052006500700075006200
      62006C006900630061002000490073006C0061006D0069006300610020006400
      65006C006C002700410066006700680061006E0069007300740061006E000400
      010005000000060006000000300030003400FEFEFF1D1E006E000000FF1F0000
      06000000490052004E000100040000004900520002008FFD03003A0000005200
      650070007500620062006C006900630061002000490073006C0061006D006900
      630061002000640065006C006C0027004900720061006E000400010005005F00
      060006000000330036003400FEFEFF1D1E006F000000FF1F0000060000004900
      5400410001000400000049005400020099070300260000005200650070007500
      620062006C0069006300610020004900740061006C00690061006E0061000400
      010005000100060006000000330038003000FEFEFF1D1E0070000000FF1F0000
      06000000430048004E0001000400000043004E00020078070300340000005200
      650070007500620062006C00690063006100200050006F0070006F006C006100
      720065002000430069006E006500730065000400010005002C00060006000000
      310035003600FEFEFF1D1E0071000000FF1F0000060000004200470044000100
      04000000420044000200B3070300440000005200650070007500620062006C00
      690063006100200050006F0070006F006C006100720065002000640065006C00
      2000420061006E0067006C006100640065007300680004000100050015000600
      06000000300035003000FEFEFF1D1E0072000000FF1F00000600000050005200
      4B000100040000004B0050000200990703005000000052006500700075006200
      62006C00690063006100200050006F0070006F006C0061007200650020004400
      65006D006F006300720061007400690063006100200064006900200043006F00
      7200650061000400010005003100060006000000340030003800FEFEFF1D1E00
      73000000FF1F00000600000053004C0056000100040000005300560002001D07
      030030000000520065007000FA0062006C006900630061002000640065002000
      45006C002000530061006C007600610064006F0072000400010005003C000600
      06000000320032003200FEFEFF1D1E0074000000FF1F00000600000041004C00
      420001000400000041004C0002007F0703002C00000052006500700075006200
      6C0069006B00610020006500200053006800710069007000EB00720069007300
      EB000400010005000500060006000000300030003800FEFEFF1D1E0075000000
      FF1F000006000000460052004100010004000000460052000200990703002600
      00005200E9007000750062006C0069007100650020004600720061006E00E700
      61006900730065000400010005000200060006000000320035003000FEFEFF1D
      1E0076000000FF1F000006000000530047005000010004000000530047000200
      AD07030012000000530069006E006700610070006F0072006500040001000500
      7800060006000000370030003200070036E0AECDA3A5EA118F44B7F171126161
      FEFEFF1D1E0077000000FF1F000006000000420052004E000100040000004200
      4E000200C00703004600000053007400610074006F002000640065006C002000
      4200720075006E00650069002C002000440069006D006F007200610020006400
      65006C006C006100200050006100630065000400010005002200060006000000
      300039003600FEFEFF1D1E0078000000FF1F0000060000005600410054000100
      04000000560041000200890703003C00000053007400610074006F0020006400
      65006C006C00610020004300690074007400E0002000640065006C0020005600
      610074006900630061006E006F000400010005002E0006000600000033003300
      3600FEFEFF1D1E0079000000FF1F000006000000450052004900010004000000
      450052000200C90703002400000053007400610074006F002000640065006C00
      6C00270045007200690074007200650061000400010005003E00060006000000
      320033003200FEFEFF1D1E007A000000FF1F00000600000042004F004C000100
      0400000042004F000200210703004400000053007400610074006F0020005000
      6C007500720069006E0061007A0069006F006E0061006C006500200064006500
      6C006C006100200042006F006C0069007600690061000400010005001E000600
      06000000300036003800FEFEFF1D1E007B000000FF1F00000600000053005700
      4500010004000000530045000200B60703000C0000005300760065007A006900
      610004000100050081000600060000003700350032000700AA623D8BA7A5EA11
      8F44DF163E19A778FEFEFF1D1E007C000000FF1F000006000000430048004500
      010004000000430048000200B6070300100000005300760069007A007A006500
      7200610004000100050082000600060000003700350036000700522E24B3A7A5
      EA118F44FFE498BA688CFEFEFF1D1E007D000000FF1F00000600000054004800
      4100010004000000540048000200B6070300120000005400610069006C006100
      6E006400690061000400010005007F000600060000003700360034000700A4D1
      1965A6A5EA118F44BFE72802C007FEFEFF1D1E007E000000FF1F000006000000
      540057004E00010004000000540057000200B60703000C000000540061006900
      770061006E000400010005008300060006000000310035003800070092F3EAD1
      A8A5EA118F44FF1374F9725DFEFEFF1D1E007F000000FF1F0000060000005400
      55005200010004000000540052000200B60703000E0000005400750072006300
      680069006100040001000500800006000600000037003900320007001C99CB54
      A7A5EA118F44FFEC238724C2FEFEFF1D1E0080000000FF1F0000060000004300
      4F004D000100040000004B004D000200B70703002600000055006E0069006F00
      6E0065002000640065006C006C006500200043006F006D006F00720065000400
      010005003000060006000000310037003400FEFEFF1D1E0081000000FF1F0000
      06000000470042005200010004000000470042000200820703003E0000005500
      6E00690074006500640020004B0069006E00670064006F006D0020006F006600
      20004700720065006100740020004200720069007400610069006E0004000100
      05007600060006000000380032003600070058A257E2A2A5EA118F44A740769D
      4D73FEFEFF1D1E0082000000FF1F000006000000550053004100010004000000
      550053000200F00603003000000055006E006900740065006400200053007400
      610074006500730020006F006600200041006D00650072006900630061000400
      0100050079000600060000003800340030000700AA37F92AA4A5EA118F44E350
      114FE137FEFEFF1D1E0083000000FF1F00000600000055005200590001000400
      0000550059000200B60703000E00000055007200750067007500610079000400
      010005007A0006000600000038003500380007000833638FA4A5EA118F440B2F
      7CEAB4D5FEFEFEFEFEFF20FEFF2122008C010000FF23FEFEFE0E004D0061006E
      0061006700650072001E00550070006400610074006500730052006500670069
      00730074007200790012005400610062006C0065004C006900730074000A0054
      00610062006C00650008004E0061006D006500140053006F0075007200630065
      004E0061006D0065000A0054006100620049004400240045006E0066006F0072
      006300650043006F006E00730074007200610069006E00740073001E004D0069
      006E0069006D0075006D00430061007000610063006900740079001800430068
      00650063006B004E006F0074004E0075006C006C00140043006F006C0075006D
      006E004C006900730074000C0043006F006C0075006D006E00100053006F0075
      0072006300650049004400180064007400570069006400650053007400720069
      006E0067001000440061007400610054007900700065000800530069007A0065
      001400530065006100720063006800610062006C006500080042006100730065
      0012004F0049006E0055007000640061007400650010004F0049006E00570068
      006500720065001A004F0072006900670069006E0043006F006C004E0061006D
      006500140053006F007500720063006500530069007A0065000E006400740049
      006E00740031003600120041006C006C006F0077004E0075006C006C0014004F
      0041006C006C006F0077004E0075006C006C000C006400740047005500490044
      001C0043006F006E00730074007200610069006E0074004C0069007300740010
      0056006900650077004C006900730074000E0052006F0077004C006900730074
      00060052006F0077000A0052006F0077004900440010004F0072006900670069
      006E0061006C001800520065006C006100740069006F006E004C006900730074
      001C0055007000640061007400650073004A006F00750072006E0061006C0012
      00530061007600650050006F0069006E0074000E004300680061006E00670065
      007300}
    object fdmCountriesiso_country_code: TWideStringField
      DisplayWidth = 3
      FieldName = 'iso_country_code'
      Required = True
      Size = 3
    end
    object fdmCountriesiso_country_code2: TWideStringField
      DisplayWidth = 2
      FieldName = 'iso_country_code2'
      Required = True
      Size = 2
    end
    object fdmCountriescountry_year: TSmallintField
      DisplayWidth = 10
      FieldName = 'country_year'
      Required = True
    end
    object fdmCountriescountry_name: TWideStringField
      DisplayWidth = 128
      FieldName = 'country_name'
      Required = True
      Size = 128
    end
    object fdmCountriesiso_currency_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'iso_currency_id'
      Required = True
    end
    object fdmCountriescountry_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'country_id'
      Required = True
    end
    object fdmCountriesiso_country_number: TWideStringField
      DisplayWidth = 3
      FieldName = 'iso_country_number'
      Size = 3
    end
    object fdmCountriesjguid: TGuidField
      DisplayWidth = 38
      FieldName = 'jguid'
      Size = 38
    end
  end
  object dsCurrencies: TDataSource
    DataSet = fdmCurrencies
    Left = 232
    Top = 368
  end
  object fdmLkpDepartments: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'description'
        DataType = ftWideString
        Size = 128
      end
      item
        Name = 'guid'
        DataType = ftGuid
        Size = 38
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 704
    Top = 424
    Content = {
      414442530F00000012020000FF00010001FF02FF03040022000000660064006D
      004C006B0070004400650070006100720074006D0065006E007400730005000A
      0000005400610062006C006500060000000000070000080032000000090000FF
      0AFF0B04000400000069006400050004000000690064000C00010000000E000D
      000F000110000111000112000113000400000069006400FEFF0B040016000000
      6400650073006300720069007000740069006F006E0005001600000064006500
      73006300720069007000740069006F006E000C00020000000E00140015008000
      00000F0001160001100001170001110001120001130016000000640065007300
      6300720069007000740069006F006E00180080000000FEFF0B04000800000067
      0075006900640005000800000067007500690064000C00030000000E0019000F
      00011600011000011700011100011200011300080000006700750069006400FE
      FEFF1AFEFF1BFEFF1CFF1D1E0000000000FF1F00000100010008000000440065
      0063006B0002005CADBE51235A6946AA9112973B28C24DFEFEFF1D1E00010000
      00FF1F0000020001000C00000045006E00670069006E0065000200529FAF8234
      85024791CBD160345F9369FEFEFF1D1E0002000000FF1F0000030001000A0000
      0048006F00740065006C00020031E2344D227AF04288F3DF21B40B5843FEFEFE
      FEFEFF20FEFF21220006000000FF23FEFEFE0E004D0061006E00610067006500
      72001E0055007000640061007400650073005200650067006900730074007200
      790012005400610062006C0065004C006900730074000A005400610062006C00
      650008004E0061006D006500140053006F0075007200630065004E0061006D00
      65000A0054006100620049004400240045006E0066006F007200630065004300
      6F006E00730074007200610069006E00740073001E004D0069006E0069006D00
      75006D0043006100700061006300690074007900180043006800650063006B00
      4E006F0074004E0075006C006C00140043006F006C0075006D006E004C006900
      730074000C0043006F006C0075006D006E00100053006F007500720063006500
      490044000E006400740049006E00740031003600100044006100740061005400
      7900700065001400530065006100720063006800610062006C00650008004200
      61007300650012004F0049006E0055007000640061007400650010004F004900
      6E00570068006500720065001A004F0072006900670069006E0043006F006C00
      4E0061006D006500180064007400570069006400650053007400720069006E00
      67000800530069007A006500120041006C006C006F0077004E0075006C006C00
      14004F0041006C006C006F0077004E0075006C006C00140053006F0075007200
      63006500530069007A0065000C006400740047005500490044001C0043006F00
      6E00730074007200610069006E0074004C006900730074001000560069006500
      77004C006900730074000E0052006F0077004C00690073007400060052006F00
      77000A0052006F0077004900440010004F0072006900670069006E0061006C00
      1800520065006C006100740069006F006E004C006900730074001C0055007000
      640061007400650073004A006F00750072006E0061006C001200530061007600
      650050006F0069006E0074000E004300680061006E00670065007300}
    object fdmLkpDepartmentsid: TSmallintField
      DisplayWidth = 10
      FieldName = 'id'
      Required = True
    end
    object fdmLkpDepartmentsdescription: TWideStringField
      DisplayWidth = 128
      FieldName = 'description'
      Size = 128
    end
    object fdmLkpDepartmentsguid: TGuidField
      DisplayWidth = 38
      FieldName = 'guid'
      Size = 38
    end
  end
  object jscWorkShipments: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edtWorkPaperCode
    SearchButton = btnWorkShipments
    Left = 570
    Top = 344
  end
  object jscVessel: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edVesselName
    SearchButton = btnVesselSearch
    Left = 162
    Top = 96
  end
  object jscShipment: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edtWorkPaperCode
    SearchButton = btnWorkShipments
    Left = 434
    Top = 96
  end
end
