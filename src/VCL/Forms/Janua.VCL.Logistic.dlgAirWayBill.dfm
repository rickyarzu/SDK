object dlgVCLLogisticAirWayBill: TdlgVCLLogisticAirWayBill
  Left = 0
  Top = 0
  VertScrollBar.Size = 1024
  Caption = 'Airway Bill'
  ClientHeight = 724
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 17
  object pgAWB: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 53
    Width = 1002
    Height = 668
    ActivePage = tabHead
    Align = alClient
    TabOrder = 0
    object tabHead: TTabSheet
      Caption = 'Head'
      object grpHeader: TGroupBox
        Left = 8
        Top = 8
        Width = 977
        Height = 73
        Caption = 'Header'
        TabOrder = 0
        object lbField1b_Departure: TLabel
          Left = 71
          Top = 21
          Width = 85
          Height = 17
          Caption = 'Dep. Air. Code'
        end
        object lbField1b_AiportID: TLabel
          Left = 197
          Top = 21
          Width = 16
          Height = 16
          Alignment = taRightJustify
          Caption = 'id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object lbAWBNumber: TLabel
          Left = 746
          Top = 21
          Width = 78
          Height = 17
          Caption = 'AWB Number'
        end
        object lbField1a: TLabel
          Left = 11
          Top = 21
          Width = 45
          Height = 17
          Caption = 'Field 1a'
        end
        object edField1b_AirportCode: TEdit
          Left = 71
          Top = 40
          Width = 71
          Height = 25
          TabOrder = 0
          TextHint = 'IATA Code'
        end
        object btnDepartureAirport: TButton
          Left = 148
          Top = 40
          Width = 43
          Height = 25
          Caption = '...'
          TabOrder = 1
        end
        object edField1c_AWBNumber: TEdit
          Left = 746
          Top = 40
          Width = 164
          Height = 25
          TabOrder = 2
          TextHint = 'AWB Number'
        end
        object edField1a: TEdit
          Left = 11
          Top = 40
          Width = 54
          Height = 25
          ReadOnly = True
          TabOrder = 3
        end
        object btnAWBNumber: TButton
          Left = 916
          Top = 40
          Width = 40
          Height = 25
          Caption = '...'
          TabOrder = 4
        end
        object Edit1: TEdit
          Left = 197
          Top = 40
          Width = 271
          Height = 25
          TabOrder = 5
          TextHint = 'Airport of Departure'
        end
      end
      object grpShipper: TGroupBox
        Left = 12
        Top = 87
        Width = 481
        Height = 185
        Caption = 'Shipper'#39's Name and Address'
        TabOrder = 1
        object lbShipperID: TLabel
          Left = 166
          Top = 22
          Width = 16
          Height = 16
          Alignment = taRightJustify
          Caption = 'id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          StyleElements = [seClient, seBorder]
        end
        object edField2_ShipperCode: TEdit
          Left = 12
          Top = 48
          Width = 74
          Height = 25
          TabOrder = 0
          TextHint = 'Sh. Code'
        end
        object edField2_ShipperName: TEdit
          Left = 92
          Top = 48
          Width = 373
          Height = 25
          TabOrder = 1
          TextHint = 'Shipper Company Name'
        end
        object edField21_ShipperAddress: TEdit
          Left = 12
          Top = 79
          Width = 453
          Height = 25
          TabOrder = 2
          TextHint = 'Shipper'#39's Address'
        end
        object edField22_ShipperVATCode: TEdit
          Left = 12
          Top = 110
          Width = 453
          Height = 25
          TabOrder = 3
          TextHint = 'Shipper'#39's VAT Code'
        end
        object edField23_ShipperTownPostalCode: TEdit
          Left = 12
          Top = 141
          Width = 453
          Height = 25
          TabOrder = 4
          TextHint = 'Shipper Town and Postal Code'
        end
        object Edit20: TEdit
          Left = 196
          Top = 17
          Width = 269
          Height = 25
          TabOrder = 5
          TextHint = 'Shipper'#39's Account Number'
        end
      end
      object grpAirCompany: TGroupBox
        Left = 499
        Top = 87
        Width = 481
        Height = 185
        Caption = 'Airway Bill - issued by'
        TabOrder = 2
        object Label12: TLabel
          Left = 162
          Top = 20
          Width = 151
          Height = 17
          Alignment = taRightJustify
          Caption = 'First Carrier Code (Airline)'
        end
        object edAirCompanyName: TEdit
          Left = 12
          Top = 49
          Width = 453
          Height = 25
          TabOrder = 0
          TextHint = 'Airline Company Name (or IATA Cargo Intermediary)'
        end
        object edAirAddress: TEdit
          Left = 12
          Top = 80
          Width = 453
          Height = 25
          TabOrder = 1
          TextHint = 'Airline Company Address'
        end
        object edAirlineTownPostalCode: TEdit
          Left = 12
          Top = 111
          Width = 453
          Height = 25
          TabOrder = 2
          TextHint = 'Airline Company Town (Zip Code)'
        end
        object edAirVATNumber: TEdit
          Left = 12
          Top = 142
          Width = 453
          Height = 25
          TabOrder = 3
          TextHint = 'Airline Company VAT Number'
        end
        object edField5_AirCode: TEdit
          Left = 336
          Top = 18
          Width = 83
          Height = 25
          TabOrder = 4
          TextHint = 'Code'
        end
        object Button1: TButton
          Left = 425
          Top = 18
          Width = 40
          Height = 25
          Caption = '...'
          TabOrder = 5
        end
      end
      object grpConsigneeAddress: TGroupBox
        Left = 17
        Top = 278
        Width = 481
        Height = 185
        Caption = 'Consignee'#39's Name and Address'
        TabOrder = 3
        object Edit2: TEdit
          Left = 12
          Top = 48
          Width = 74
          Height = 25
          TabOrder = 0
          TextHint = 'Sh. Code'
        end
        object edField3: TEdit
          Left = 92
          Top = 48
          Width = 373
          Height = 25
          TabOrder = 1
          TextHint = 'Shipper Company Name'
        end
        object edField31: TEdit
          Left = 12
          Top = 79
          Width = 453
          Height = 25
          TabOrder = 2
          TextHint = 'Shipper'#39's Address'
        end
        object edField32: TEdit
          Left = 12
          Top = 110
          Width = 453
          Height = 25
          TabOrder = 3
          TextHint = 'Shipper'#39's VAT Code'
        end
        object edField33: TEdit
          Left = 12
          Top = 141
          Width = 453
          Height = 25
          TabOrder = 4
          TextHint = 'Consignee Town and Postal Code'
        end
        object edField4c2: TEdit
          Left = 194
          Top = 17
          Width = 269
          Height = 25
          TabOrder = 5
          TextHint = 'Consignee'#39's Reference or Account N'#176
        end
      end
      object grpAgentCarrierIATA: TGroupBox
        Left = 504
        Top = 278
        Width = 481
        Height = 185
        Caption = 'Issuing Carrier'#39's Agent Name and City'
        TabOrder = 4
        object lbAccountNumber: TLabel
          Left = 243
          Top = 118
          Width = 98
          Height = 17
          Caption = 'Account Number'
        end
        object Label2: TLabel
          Left = 11
          Top = 119
          Width = 106
          Height = 17
          Caption = 'Agent'#39's IATA Code'
        end
        object edField4a_IssuingCarrierName: TEdit
          Left = 12
          Top = 40
          Width = 405
          Height = 25
          TabOrder = 0
          TextHint = 'Agent'#39's Name'
        end
        object Edit9: TEdit
          Left = 12
          Top = 79
          Width = 453
          Height = 25
          TabOrder = 1
          TextHint = 'Carrier'#39's Agent City'
        end
        object edField4b_AgentsIATACode: TEdit
          Left = 12
          Top = 142
          Width = 213
          Height = 25
          TabOrder = 2
          TextHint = 'Agent'#39's IATA Code'
        end
        object edField4d_AccountNumber: TEdit
          Left = 240
          Top = 141
          Width = 225
          Height = 25
          TabOrder = 3
          TextHint = 'Account Number'
        end
        object Button2: TButton
          Left = 425
          Top = 40
          Width = 40
          Height = 25
          Caption = '...'
          TabOrder = 4
        end
      end
      object grpRouting: TGroupBox
        Left = 19
        Top = 469
        Width = 972
        Height = 164
        Caption = 
          'Routing - Airport of Departure (Addr. of first Carrier) and Requ' +
          'ested Routing'
        TabOrder = 5
        object Label3: TLabel
          Left = 493
          Top = 14
          Width = 50
          Height = 17
          Caption = 'Flight N'#176
        end
        object Label4: TLabel
          Left = 574
          Top = 14
          Width = 65
          Height = 17
          Caption = 'Flight Date:'
        end
        object Label1: TLabel
          Left = 675
          Top = 14
          Width = 187
          Height = 17
          Caption = 'Flight Final Destination (Airport) '
        end
        object edfield8_AirportName: TEdit
          Left = 61
          Top = 34
          Width = 364
          Height = 25
          TabOrder = 0
          TextHint = 
            'Airport of Departure (Addr. of first Carrier) and Requested Rout' +
            'ing'
        end
        object edField8_FromAirportCode: TEdit
          Left = 12
          Top = 34
          Width = 42
          Height = 25
          TabOrder = 1
          TextHint = 'From'
        end
        object edField8a_DestinationCode: TEdit
          Left = 12
          Top = 65
          Width = 42
          Height = 25
          TabOrder = 2
          TextHint = 'Dest.'
        end
        object edField8a_DestinationAirport: TEdit
          Left = 60
          Top = 65
          Width = 365
          Height = 25
          TabOrder = 3
          TextHint = 'Destination Airport'
        end
        object edField8c: TEdit
          Left = 12
          Top = 97
          Width = 42
          Height = 25
          TabOrder = 4
          TextHint = 'To'
        end
        object edField8c1: TEdit
          Left = 12
          Top = 128
          Width = 42
          Height = 25
          TabOrder = 5
          TextHint = 'To'
        end
        object edField8f_FlightNumber: TEdit
          Left = 492
          Top = 35
          Width = 76
          Height = 25
          Margins.Top = 6
          TabOrder = 6
          TextHint = 'Flight N'#176
        end
        object edField8f1_FlightDate: TDateTimePicker
          Left = 574
          Top = 35
          Width = 95
          Height = 25
          Margins.Top = 6
          Date = 44166.000000000000000000
          Time = 0.431566678242234000
          TabOrder = 7
        end
        object Edit14: TEdit
          Left = 60
          Top = 97
          Width = 365
          Height = 25
          TabOrder = 8
          TextHint = 'Intermediate through Airport (1)'
        end
        object edIntermidateAirport2: TEdit
          Left = 60
          Top = 128
          Width = 365
          Height = 25
          TabOrder = 9
          TextHint = 'Intermediate through Airport (2)'
        end
        object edField8d_By1: TEdit
          Left = 493
          Top = 97
          Width = 42
          Height = 25
          TabOrder = 10
          TextHint = 'Code'
        end
        object edIntermidiateCompany1: TEdit
          Left = 541
          Top = 97
          Width = 377
          Height = 25
          TabOrder = 11
          TextHint = 'Intermediate Airline (1)'
        end
        object edField8d1: TEdit
          Left = 493
          Top = 128
          Width = 42
          Height = 25
          TabOrder = 12
          TextHint = 'Code'
        end
        object Edit18: TEdit
          Left = 541
          Top = 128
          Width = 377
          Height = 25
          TabOrder = 13
          TextHint = 'Intermediate Airline (2)'
        end
        object edField8b_ByFirstCarrier: TEdit
          Left = 493
          Top = 66
          Width = 42
          Height = 25
          TabOrder = 14
          TextHint = 'By'
        end
        object edByFirstCarrierName: TEdit
          Left = 541
          Top = 66
          Width = 377
          Height = 25
          TabOrder = 15
          TextHint = 'By First Carrier (Company Name)'
        end
        object Button3: TButton
          Left = 431
          Top = 35
          Width = 40
          Height = 25
          Caption = '...'
          TabOrder = 16
        end
        object Button4: TButton
          Left = 921
          Top = 66
          Width = 40
          Height = 25
          Caption = '...'
          TabOrder = 17
        end
        object Button5: TButton
          Left = 431
          Top = 97
          Width = 40
          Height = 25
          Caption = '...'
          TabOrder = 18
        end
        object Button6: TButton
          Left = 431
          Top = 128
          Width = 40
          Height = 25
          Caption = '...'
          TabOrder = 19
        end
        object Button7: TButton
          Left = 431
          Top = 65
          Width = 40
          Height = 25
          Caption = '...'
          TabOrder = 20
        end
        object Button8: TButton
          Left = 921
          Top = 97
          Width = 40
          Height = 25
          Caption = '...'
          TabOrder = 21
        end
        object Button9: TButton
          Left = 921
          Top = 128
          Width = 40
          Height = 25
          Caption = '...'
          TabOrder = 22
        end
        object edField8e_FinalDestination: TEdit
          Left = 675
          Top = 35
          Width = 42
          Height = 25
          TabOrder = 23
          TextHint = 'F. To'
        end
        object edField8e_LocationName: TEdit
          Left = 723
          Top = 35
          Width = 238
          Height = 25
          TabOrder = 24
          TextHint = 'Flight Final Destination Aiport'
        end
      end
    end
    object tabCommodities: TTabSheet
      Caption = 'Commodities'
      ImageIndex = 1
      object grpInsurance: TGroupBox
        Left = 3
        Top = 16
        Width = 174
        Height = 81
        Caption = 'Amount of Insurance'
        TabOrder = 0
        object Label5: TLabel
          Left = 11
          Top = 20
          Width = 33
          Height = 17
          Caption = 'Amnt.'
        end
        object Label6: TLabel
          Left = 111
          Top = 20
          Width = 28
          Height = 17
          Caption = 'Curr.'
        end
        object edInsuranceAmount: TMoneyEdit
          Left = 11
          Top = 43
          Width = 94
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
          TabOrder = 0
          Version = '1.1.2.0'
        end
        object lkpInsuranceCurrency: TDBLookupComboBox
          Left = 111
          Top = 43
          Width = 54
          Height = 25
          TabOrder = 1
        end
      end
      object grpDeclaredValue: TGroupBox
        Left = 384
        Top = 16
        Width = 593
        Height = 81
        Caption = 'Declared Value for Carriage / Customs'
        TabOrder = 1
        object Label7: TLabel
          Left = 11
          Top = 20
          Width = 26
          Height = 15
          Caption = 'Curr.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edWTAL: TLabel
          Left = 135
          Top = 20
          Width = 37
          Height = 15
          Caption = 'WT/AL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 73
          Top = 20
          Width = 56
          Height = 15
          Caption = 'Chg. Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 255
          Top = 20
          Width = 164
          Height = 17
          Caption = 'Declared Value For Carriage'
        end
        object Label10: TLabel
          Left = 427
          Top = 20
          Width = 162
          Height = 17
          Caption = 'Declared Value for Customs'
        end
        object Label11: TLabel
          Left = 195
          Top = 20
          Width = 30
          Height = 15
          Caption = 'Other'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 11
          Top = 41
          Width = 54
          Height = 25
          TabOrder = 0
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 71
          Top = 41
          Width = 58
          Height = 25
          TabOrder = 1
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 135
          Top = 41
          Width = 54
          Height = 25
          TabOrder = 2
        end
        object MoneyEdit1: TMoneyEdit
          Left = 259
          Top = 43
          Width = 94
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
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 359
          Top = 43
          Width = 54
          Height = 25
          TabOrder = 4
        end
        object MoneyEdit2: TMoneyEdit
          Left = 427
          Top = 43
          Width = 94
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
          TabOrder = 5
          Version = '1.1.2.0'
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 527
          Top = 43
          Width = 54
          Height = 25
          TabOrder = 6
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 195
          Top = 41
          Width = 54
          Height = 25
          TabOrder = 7
        end
      end
      object GroupBox2: TGroupBox
        Left = 183
        Top = 16
        Width = 195
        Height = 81
        Caption = 'Optional Shipping Information'
        TabOrder = 2
        object Edit16: TEdit
          Left = 16
          Top = 43
          Width = 169
          Height = 25
          TabOrder = 0
          TextHint = 'Optional Shipping Info'
        end
      end
      object grpHandlingInformation: TGroupBox
        Left = 3
        Top = 103
        Width = 974
        Height = 113
        Caption = 'Handling Information'
        TabOrder = 3
        object grpSCI: TGroupBox
          Left = 786
          Top = 53
          Width = 176
          Height = 52
          Caption = 'SCI'
          TabOrder = 0
          object DBLookupComboBox7: TDBLookupComboBox
            Left = 71
            Top = 18
            Width = 90
            Height = 25
            TabOrder = 0
          end
        end
        object Edit19: TEdit
          Left = 695
          Top = 22
          Width = 267
          Height = 25
          TabOrder = 1
          Text = 'Edit19'
        end
        object edHanlingInformations: TAdvMemo
          Left = 11
          Top = 23
          Width = 668
          Height = 82
          Cursor = crIBeam
          ActiveLineSettings.ShowActiveLine = False
          ActiveLineSettings.ShowActiveLineIndicator = False
          AutoCompletion.Font.Charset = DEFAULT_CHARSET
          AutoCompletion.Font.Color = clWindowText
          AutoCompletion.Font.Height = -11
          AutoCompletion.Font.Name = 'Tahoma'
          AutoCompletion.Font.Style = []
          AutoCompletion.StartToken = '(.'
          AutoCorrect.Active = True
          AutoHintParameterPosition = hpBelowCode
          BkColor = clWindow
          BookmarkGlyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
            2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
            2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
            B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
            B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
            BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
            BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
            BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
            25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
          BorderStyle = bsSingle
          ClipboardFormats = [cfText]
          CodeFolding.Enabled = False
          CodeFolding.LineColor = clGray
          Ctl3D = False
          DelErase = True
          EnhancedHomeKey = False
          Gutter.Font.Charset = DEFAULT_CHARSET
          Gutter.Font.Color = clWindowText
          Gutter.Font.Height = -13
          Gutter.Font.Name = 'Courier New'
          Gutter.Font.Style = []
          Gutter.GutterColorTo = clBtnFace
          Gutter.LineNumberTextColor = clWindowText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'COURIER NEW'
          Font.Style = []
          HiddenCaret = False
          Lines.Strings = (
            '')
          MarkerList.UseDefaultMarkerImageIndex = False
          MarkerList.DefaultMarkerImageIndex = -1
          MarkerList.ImageTransparentColor = 33554432
          OleDropTarget = []
          PrintOptions.MarginLeft = 0
          PrintOptions.MarginRight = 0
          PrintOptions.MarginTop = 0
          PrintOptions.MarginBottom = 0
          PrintOptions.PageNr = False
          PrintOptions.PrintLineNumbers = False
          RightMarginColor = 14869218
          ScrollHint = False
          SelColor = clHighlightText
          SelBkColor = clHighlight
          ShowRightMargin = True
          SmartTabs = False
          TabOrder = 2
          TabStop = True
          TrimTrailingSpaces = False
          UILanguage.ScrollHint = 'Row'
          UILanguage.Undo = 'Undo'
          UILanguage.Redo = 'Redo'
          UILanguage.Copy = 'Copy'
          UILanguage.Cut = 'Cut'
          UILanguage.Paste = 'Paste'
          UILanguage.Delete = 'Delete'
          UILanguage.SelectAll = 'Select All'
          UrlStyle.TextColor = clBlue
          UrlStyle.BkColor = clWhite
          UrlStyle.Style = [fsUnderline]
          UseStyler = True
          Version = '3.7.10.0'
          WordWrap = wwNone
        end
      end
      object grpCommoditiesList: TGroupBox
        Left = 3
        Top = 231
        Width = 970
        Height = 402
        Caption = 'Commodities List (Rows)'
        TabOrder = 4
        object Label13: TLabel
          Left = 81
          Top = 20
          Width = 37
          Height = 34
          Caption = 'N'#176' Of Pieces'
          WordWrap = True
        end
        object Label14: TLabel
          Left = 135
          Top = 20
          Width = 40
          Height = 34
          Alignment = taCenter
          Caption = 'Gross Weight'
          WordWrap = True
        end
        object Label15: TLabel
          Left = 27
          Top = 20
          Width = 48
          Height = 34
          Caption = 'Row Number'
          WordWrap = True
        end
        object Label16: TLabel
          Left = 209
          Top = 20
          Width = 59
          Height = 34
          Alignment = taCenter
          Caption = 'Kilograms Libres'
          WordWrap = True
        end
        object lbField24: TLabel
          Left = 281
          Top = 20
          Width = 71
          Height = 34
          Alignment = taCenter
          Caption = 'Chargeable Weight'
          WordWrap = True
        end
        object lbField25: TLabel
          Left = 381
          Top = 20
          Width = 42
          Height = 34
          Alignment = taCenter
          Caption = 'Rate Charge'
          WordWrap = True
        end
        object lbField26a: TLabel
          Left = 452
          Top = 37
          Width = 28
          Height = 17
          Alignment = taCenter
          Caption = 'Total'
          WordWrap = True
        end
        object lbField27: TLabel
          Left = 640
          Top = 20
          Width = 178
          Height = 34
          Alignment = taCenter
          Caption = 'Nature and quantity of goods  (incl. dimension or volume)'
          WordWrap = True
        end
        object DBCtrlGrid1: TDBCtrlGrid
          Left = 17
          Top = 60
          Width = 930
          Height = 330
          DataSource = dsAWBRows
          PanelHeight = 33
          PanelWidth = 913
          TabOrder = 0
          RowCount = 10
          object edfield19a: TDBEdit
            Left = 64
            Top = 4
            Width = 40
            Height = 25
            DataField = 'field19a'
            DataSource = dsAWBRows
            TabOrder = 0
          end
          object edField20a: TDBEdit
            Left = 118
            Top = 4
            Width = 60
            Height = 25
            DataField = 'field20a'
            DataSource = dsAWBRows
            TabOrder = 1
          end
          object edRowPos: TDBEdit
            Left = 10
            Top = 4
            Width = 40
            Height = 25
            DataField = 'row_pos'
            DataSource = dsAWBRows
            TabOrder = 2
          end
          object edfield22: TJvDBComboEdit
            Left = 192
            Top = 4
            Width = 66
            Height = 25
            DataField = 'field22'
            DataSource = dsAWBRows
            TabOrder = 3
          end
          object edField24: TDBEdit
            Left = 264
            Top = 4
            Width = 73
            Height = 25
            DataField = 'Field24'
            DataSource = dsAWBRows
            TabOrder = 4
          end
          object edField25: TDBEdit
            Left = 343
            Top = 4
            Width = 74
            Height = 25
            DataField = 'Field25'
            DataSource = dsAWBRows
            TabOrder = 5
          end
          object edField26a: TDBEdit
            Left = 423
            Top = 4
            Width = 82
            Height = 25
            DataField = 'field26a'
            DataSource = dsAWBRows
            TabOrder = 6
          end
          object edField27: TDBEdit
            Left = 520
            Top = 4
            Width = 385
            Height = 25
            DataField = 'field26a'
            DataSource = dsAWBRows
            TabOrder = 7
          end
        end
      end
    end
    object tabAdditiional: TTabSheet
      Caption = 'Additional Details and Surcharges'
      ImageIndex = 2
      DesignSize = (
        994
        636)
      object grpAccountingInformations: TGroupBox
        Left = 16
        Top = 16
        Width = 713
        Height = 153
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Accounting Informations'
        TabOrder = 0
        object edField7: TAdvMemo
          Left = 16
          Top = 24
          Width = 689
          Height = 114
          Cursor = crIBeam
          ActiveLineSettings.ShowActiveLine = False
          ActiveLineSettings.ShowActiveLineIndicator = False
          AutoCompletion.Font.Charset = DEFAULT_CHARSET
          AutoCompletion.Font.Color = clWindowText
          AutoCompletion.Font.Height = -11
          AutoCompletion.Font.Name = 'Tahoma'
          AutoCompletion.Font.Style = []
          AutoCompletion.StartToken = '(.'
          AutoCorrect.Active = True
          AutoHintParameterPosition = hpBelowCode
          BkColor = clWindow
          BookmarkGlyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
            2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
            2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
            B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
            B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
            BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
            BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
            BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
            25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
          BorderStyle = bsSingle
          ClipboardFormats = [cfText]
          CodeFolding.Enabled = False
          CodeFolding.LineColor = clGray
          Ctl3D = False
          DelErase = True
          EnhancedHomeKey = False
          Gutter.Font.Charset = DEFAULT_CHARSET
          Gutter.Font.Color = clWindowText
          Gutter.Font.Height = -13
          Gutter.Font.Name = 'Courier New'
          Gutter.Font.Style = []
          Gutter.GutterColorTo = clBtnFace
          Gutter.LineNumberTextColor = clWindowText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'COURIER NEW'
          Font.Style = []
          HiddenCaret = False
          Lines.Strings = (
            '')
          MarkerList.UseDefaultMarkerImageIndex = False
          MarkerList.DefaultMarkerImageIndex = -1
          MarkerList.ImageTransparentColor = 33554432
          OleDropTarget = []
          PrintOptions.MarginLeft = 0
          PrintOptions.MarginRight = 0
          PrintOptions.MarginTop = 0
          PrintOptions.MarginBottom = 0
          PrintOptions.PageNr = False
          PrintOptions.PrintLineNumbers = False
          RightMarginColor = 14869218
          ScrollHint = False
          SelColor = clHighlightText
          SelBkColor = clHighlight
          ShowRightMargin = True
          SmartTabs = False
          TabOrder = 0
          TabStop = True
          TrimTrailingSpaces = False
          UILanguage.ScrollHint = 'Row'
          UILanguage.Undo = 'Undo'
          UILanguage.Redo = 'Redo'
          UILanguage.Copy = 'Copy'
          UILanguage.Cut = 'Cut'
          UILanguage.Paste = 'Paste'
          UILanguage.Delete = 'Delete'
          UILanguage.SelectAll = 'Select All'
          UrlStyle.TextColor = clBlue
          UrlStyle.BkColor = clWhite
          UrlStyle.Style = [fsUnderline]
          UseStyler = True
          Version = '3.7.10.0'
          WordWrap = wwNone
        end
      end
      object grpSurcharges: TGroupBox
        Left = 16
        Top = 175
        Width = 649
        Height = 310
        Caption = 'Surcharges'
        TabOrder = 1
        object grpOther2: TGroupBox
          Left = 224
          Top = 35
          Width = 193
          Height = 73
          Caption = 'Other 2'
          TabOrder = 0
          object dblCodOther2: TJvDBLookupCombo
            Left = 16
            Top = 32
            Width = 57
            Height = 24
            DataField = 'code'
            DataSource = dsAWBSurcharges
            LookupField = 'code'
            LookupDisplay = 'code'
            LookupSource = dsAWBCodes
            TabOrder = 0
          end
          object edAmountOther2: TMoneyEdit
            Left = 88
            Top = 32
            Width = 89
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
        end
        object grpOther1: TGroupBox
          Left = 16
          Top = 35
          Width = 193
          Height = 73
          Caption = 'Other 1'
          TabOrder = 1
          object dblCodOther1: TJvDBLookupCombo
            Left = 16
            Top = 32
            Width = 57
            Height = 24
            DataField = 'code'
            DataSource = dsAWBSurcharges
            LookupField = 'code'
            LookupDisplay = 'code'
            LookupSource = dsAWBCodes
            TabOrder = 0
          end
          object edAmountOther1: TMoneyEdit
            Left = 88
            Top = 32
            Width = 89
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
        end
        object grpOther4: TGroupBox
          Left = 16
          Top = 123
          Width = 193
          Height = 73
          Caption = 'Other 4'
          TabOrder = 2
          object dblCodOther4: TJvDBLookupCombo
            Left = 16
            Top = 32
            Width = 57
            Height = 24
            DataField = 'code'
            DataSource = dsAWBSurcharges
            LookupField = 'code'
            LookupDisplay = 'code'
            LookupSource = dsAWBCodes
            TabOrder = 0
          end
          object edAmountOther4: TMoneyEdit
            Left = 88
            Top = 32
            Width = 89
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
        end
        object grpOther5: TGroupBox
          Left = 224
          Top = 123
          Width = 193
          Height = 73
          Caption = 'Other 5'
          TabOrder = 3
          object dblCodOther5: TJvDBLookupCombo
            Left = 16
            Top = 32
            Width = 57
            Height = 24
            DataField = 'code'
            DataSource = dsAWBSurcharges
            LookupField = 'code'
            LookupDisplay = 'code'
            LookupSource = dsAWBCodes
            TabOrder = 0
          end
          object edAmountOther5: TMoneyEdit
            Left = 88
            Top = 32
            Width = 89
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
        end
        object grpOther7: TGroupBox
          Left = 16
          Top = 219
          Width = 193
          Height = 73
          Caption = 'Other 7'
          TabOrder = 4
          object dblCodOther7: TJvDBLookupCombo
            Left = 16
            Top = 32
            Width = 57
            Height = 24
            DataField = 'code'
            DataSource = dsAWBSurcharges
            LookupField = 'code'
            LookupDisplay = 'code'
            LookupSource = dsAWBCodes
            TabOrder = 0
          end
          object edAmountOther7: TMoneyEdit
            Left = 88
            Top = 32
            Width = 89
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
        end
        object grpOther8: TGroupBox
          Left = 224
          Top = 219
          Width = 193
          Height = 73
          Caption = 'Other 8'
          TabOrder = 5
          object dblCodOther8: TJvDBLookupCombo
            Left = 16
            Top = 32
            Width = 57
            Height = 24
            DataField = 'code'
            DataSource = dsAWBSurcharges
            LookupField = 'code'
            LookupDisplay = 'code'
            LookupSource = dsAWBCodes
            TabOrder = 0
          end
          object edAmountOther8: TMoneyEdit
            Left = 88
            Top = 32
            Width = 89
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
        end
        object grpOther9: TGroupBox
          Left = 440
          Top = 219
          Width = 193
          Height = 73
          Caption = 'Other 9'
          TabOrder = 6
          object dblCodOther9: TJvDBLookupCombo
            Left = 16
            Top = 32
            Width = 57
            Height = 24
            DataField = 'code'
            DataSource = dsAWBSurcharges
            LookupField = 'code'
            LookupDisplay = 'code'
            LookupSource = dsAWBCodes
            TabOrder = 0
          end
          object edAmountOther9: TMoneyEdit
            Left = 88
            Top = 32
            Width = 89
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
        end
        object grpOther6: TGroupBox
          Left = 440
          Top = 123
          Width = 193
          Height = 73
          Caption = 'Other 6'
          TabOrder = 7
          object dblCodOther6: TJvDBLookupCombo
            Left = 16
            Top = 32
            Width = 57
            Height = 24
            DataField = 'code'
            DataSource = dsAWBSurcharges
            LookupField = 'code'
            LookupDisplay = 'code'
            LookupSource = dsAWBCodes
            TabOrder = 0
          end
          object edAmountOther6: TMoneyEdit
            Left = 88
            Top = 32
            Width = 89
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
        end
        object grpOther3: TGroupBox
          Left = 440
          Top = 35
          Width = 193
          Height = 73
          Caption = 'Other 3'
          TabOrder = 8
          object dblCodOther3: TJvDBLookupCombo
            Left = 16
            Top = 32
            Width = 57
            Height = 24
            DataField = 'code'
            DataSource = dsAWBSurcharges
            LookupField = 'code'
            LookupDisplay = 'code'
            LookupSource = dsAWBCodes
            TabOrder = 0
          end
          object edAmountOther3: TMoneyEdit
            Left = 88
            Top = 32
            Width = 89
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
        end
      end
      object grpFooter: TGroupBox
        Left = 702
        Top = 175
        Width = 289
        Height = 458
        Caption = 'Footer'
        TabOrder = 2
        object Label17: TLabel
          Left = 32
          Top = 28
          Width = 45
          Height = 17
          Caption = 'Prepaid'
        end
        object Label18: TLabel
          Left = 210
          Top = 28
          Width = 39
          Height = 17
          Alignment = taRightJustify
          Caption = 'Collect'
        end
        object grpWeightCharge: TGroupBox
          Left = 16
          Top = 51
          Width = 249
          Height = 57
          Caption = 'Weight Charge'
          TabOrder = 0
          object edField28a: TMoneyEdit
            Left = 17
            Top = 21
            Width = 97
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
            TabOrder = 0
            Version = '1.1.2.0'
          end
          object edField28b: TMoneyEdit
            Left = 136
            Top = 21
            Width = 97
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
        end
        object grpValutationCharge: TGroupBox
          Left = 16
          Top = 114
          Width = 249
          Height = 57
          Caption = 'Valutation Charge'
          TabOrder = 1
          object edField29a: TMoneyEdit
            Left = 17
            Top = 24
            Width = 97
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
            TabOrder = 0
            Version = '1.1.2.0'
          end
          object edField29b: TMoneyEdit
            Left = 136
            Top = 24
            Width = 97
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
        end
        object grpTax: TGroupBox
          Left = 16
          Top = 177
          Width = 249
          Height = 65
          Caption = 'Tax'
          TabOrder = 2
          object edField30a: TMoneyEdit
            Left = 17
            Top = 29
            Width = 97
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
            TabOrder = 0
            Version = '1.1.2.0'
          end
          object edField30b: TMoneyEdit
            Left = 136
            Top = 29
            Width = 97
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
        end
        object grpField31: TGroupBox
          Left = 13
          Top = 248
          Width = 249
          Height = 58
          Caption = 'Total Other Charges Due Agent'
          TabOrder = 3
          object edField31a: TMoneyEdit
            Left = 17
            Top = 25
            Width = 97
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
            TabOrder = 0
            Version = '1.1.2.0'
          end
          object edField31b: TMoneyEdit
            Left = 136
            Top = 25
            Width = 97
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
        end
        object grpField32a: TGroupBox
          Left = 13
          Top = 312
          Width = 249
          Height = 58
          Caption = 'Total Other Charges Due Carrier'
          TabOrder = 4
          object edField32a: TMoneyEdit
            Left = 17
            Top = 25
            Width = 97
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
            TabOrder = 0
            Version = '1.1.2.0'
          end
          object edField32b: TMoneyEdit
            Left = 136
            Top = 25
            Width = 97
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
        end
        object GroupBox6: TGroupBox
          Left = 13
          Top = 376
          Width = 249
          Height = 63
          Caption = 'Totals (Prepaid and Collect)'
          TabOrder = 5
          object edField33a: TMoneyEdit
            Left = 17
            Top = 29
            Width = 97
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
            TabOrder = 0
            Version = '1.1.2.0'
          end
          object edField33b: TMoneyEdit
            Left = 136
            Top = 29
            Width = 97
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
        end
      end
      object grpFooterSignature: TGroupBox
        Left = 16
        Top = 491
        Width = 649
        Height = 142
        Caption = 'Footer Signatures'
        TabOrder = 3
        object lbSigner1: TLabel
          Left = 16
          Top = 22
          Width = 48
          Height = 17
          Caption = 'Signer 1'
        end
        object lbSigner2: TLabel
          Left = 16
          Top = 76
          Width = 48
          Height = 17
          Caption = 'Signer 2'
        end
        object edSigner1: TEdit
          Left = 16
          Top = 45
          Width = 617
          Height = 25
          TabOrder = 0
          TextHint = 'Signer'#39's First Row'
        end
        object edSigner2: TEdit
          Left = 16
          Top = 99
          Width = 617
          Height = 25
          TabOrder = 1
          TextHint = 'Signer'#39's 2nd Row'
        end
      end
      object grpSummary: TGroupBox
        Left = 742
        Top = 16
        Width = 249
        Height = 153
        Caption = 'Summary'
        TabOrder = 4
        object lbNOPieces: TLabel
          Left = 40
          Top = 36
          Width = 74
          Height = 17
          Caption = 'No of Pieces'
        end
        object lbSumGrossWeigth: TLabel
          Left = 40
          Top = 76
          Width = 74
          Height = 17
          Caption = 'GrossWeight'
        end
        object lbSumTotal: TLabel
          Left = 40
          Top = 124
          Width = 74
          Height = 17
          Caption = 'Total Charge'
        end
        object sumField19a: TMoneyEdit
          Left = 137
          Top = 37
          Width = 97
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
          TabOrder = 0
          Version = '1.1.2.0'
        end
        object sumField20a: TMoneyEdit
          Left = 136
          Top = 77
          Width = 97
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
        object sumField26a: TMoneyEdit
          Left = 136
          Top = 120
          Width = 97
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
          TabOrder = 2
          Version = '1.1.2.0'
        end
      end
    end
  end
  object pnlCommands: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1002
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object tlbMaster: TToolBar
      Left = 0
      Top = 0
      Width = 1002
      Height = 44
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alClient
      ButtonHeight = 21
      ButtonWidth = 31
      Caption = 'tlbMaster'
      ShowCaptions = True
      TabOrder = 0
    end
  end
  object JanuaMasterActionViewController: TJanuaActionViewController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = tlbMaster
    ButtonSize = jbs24
    Left = 296
    Top = 8
  end
  object vtAWBRows: TVirtualTable
    IndexFieldNames = 'row_pos'
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'awb_id'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'row_pos'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'field19a'
        DataType = ftInteger
      end
      item
        Name = 'field20a'
        DataType = ftFloat
      end
      item
        Name = 'field21'
        DataType = ftWideMemo
      end
      item
        Name = 'field22'
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'field23'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'field24'
        DataType = ftCurrency
      end
      item
        Name = 'field25'
        DataType = ftCurrency
      end
      item
        Name = 'field26a'
        DataType = ftCurrency
      end
      item
        Name = 'field27'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'jguid'
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'db_schema_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'deleted'
        Attributes = [faRequired]
        DataType = ftBoolean
      end>
    Left = 432
    Top = 8
    Data = {
      04000F0002006964190000000000000006006177625F69641900000000000000
      0700726F775F706F73020000000000000008006669656C643139610300000000
      00000008006669656C64323061060000000000000007006669656C6432312700
      00000000000007006669656C643232180001000000000007006669656C643233
      18000A000000000007006669656C643234070000000000000007006669656C64
      3235070000000000000008006669656C64323661070000000000000007006669
      656C64323718001E000000000005006A6775696423002600000000000C006462
      5F736368656D615F69640300000000000000070064656C657465640500000000
      000000000000000000}
    object vtAWBRowsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object vtAWBRowsawb_id: TLargeintField
      FieldName = 'awb_id'
      Required = True
    end
    object vtAWBRowsrow_pos: TSmallintField
      FieldName = 'row_pos'
      Required = True
    end
    object vtAWBRowsfield19a: TIntegerField
      FieldName = 'field19a'
    end
    object vtAWBRowsfield20a: TFloatField
      FieldName = 'field20a'
      DisplayFormat = '#,##0.00'
    end
    object vtAWBRowsfield21: TWideMemoField
      FieldName = 'field21'
      BlobType = ftWideMemo
    end
    object vtAWBRowsfield22: TWideStringField
      DefaultExpression = 'K'
      FieldName = 'field22'
      Size = 1
    end
    object vtAWBRowsfield23: TWideStringField
      FieldName = 'field23'
      Size = 10
    end
    object vtAWBRowsfield24: TCurrencyField
      FieldName = 'field24'
    end
    object vtAWBRowsfield25: TCurrencyField
      FieldName = 'field25'
    end
    object vtAWBRowsfield26a: TCurrencyField
      FieldName = 'field26a'
    end
    object vtAWBRowsfield27: TWideStringField
      FieldName = 'field27'
      Size = 30
    end
    object vtAWBRowsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object vtAWBRowsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object vtAWBRowsdeleted: TBooleanField
      FieldName = 'deleted'
      Required = True
    end
  end
  object dsAWBRows: TDataSource
    DataSet = vtAWBRows
    Left = 512
    Top = 8
  end
  object vtAWBSurcharges: TVirtualTable
    FieldDefs = <
      item
        Name = 'awb_id'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'jguid'
        Attributes = [faRequired]
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'code'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 4
      end
      item
        Name = 'position'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'amount'
        Attributes = [faRequired]
        DataType = ftCurrency
      end
      item
        Name = 'lkpAWBSurcharges'
        DataType = ftString
        Size = 4
      end>
    Left = 776
    Top = 8
    Data = {
      0400060006006177625F6964190000000000000005006A677569642300260000
      0000000400636F646518000400000000000800706F736974696F6E0200000000
      0000000600616D6F756E74070000000000000010006C6B704157425375726368
      61726765730100040000000000000000000000}
    object vtAWBSurchargesawb_id: TLargeintField
      FieldName = 'awb_id'
      Required = True
    end
    object vtAWBSurchargesjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object vtAWBSurchargescode: TWideStringField
      FieldName = 'code'
      Required = True
      Size = 4
    end
    object vtAWBSurchargesposition: TSmallintField
      FieldName = 'position'
      Required = True
    end
    object vtAWBSurchargesamount: TCurrencyField
      FieldName = 'amount'
      Required = True
    end
  end
  object dsAWBSurcharges: TDataSource
    DataSet = vtAWBSurcharges
    Left = 872
    Top = 8
  end
  object dsAWBCodes: TDataSource
    DataSet = vtAWBCodes
    Left = 688
    Top = 8
  end
  object vtAWBCodes: TVirtualTable
    FieldDefs = <
      item
        Name = 'code'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'type'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 1
      end
      item
        Name = 'amount'
        DataType = ftFloat
      end
      item
        Name = 'description'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'house'
        DataType = ftBoolean
      end
      item
        Name = 'jguid'
        DataType = ftGuid
        Size = 38
      end>
    Left = 592
    Top = 8
    Data = {
      040006000400636F646518000300000000000400747970651800010000000000
      0600616D6F756E7406000000000000000B006465736372697074696F6E180014
      00000000000500686F757365050000000000000005006A677569642300260000
      00000000001E0000000600000041004C00590002000000430000000000000000
      00020000000100290000007B65353966356462622D333638342D343439312D61
      6566332D6563666364333335326630647D000000060000004100530053000200
      000041000000000000000000020000000100290000007B34336239653065342D
      656333652D343439372D623466372D3135316462366436363330367D00000006
      0000004100570042000200000041000000000000000000020000000100290000
      007B39623630336331622D666337662D343538642D613762662D366465356139
      3839363038377D00000006000000420048004300020000004300000000000000
      0000020000000100290000007B31346662633639362D626336312D346163632D
      613038612D3230306538656261313063667D0000000600000043004100460002
      00000041000000000000000000020000000100290000007B3935313038613037
      2D303833362D346239642D393965342D6366306236356162613064657D000000
      0400000043004300020000004300000000000000000002000000010029000000
      7B66633164623430362D393765622D343930312D393165652D63333961623331
      39626239377D0000000600000043004300410002000000430000000000000000
      00020000000100290000007B33616533633431382D663036322D343837322D38
      6163652D3665383735643234306532647D000000060000004300490054000200
      000041000000000000000000020000000100290000007B32633465623961332D
      343130642D343335342D383530352D3839336631386139653139397D00000006
      00000043004F0055000200000041000000000000000000020000000100290000
      007B61373162633233342D663131322D343464652D383230622D666438613233
      3135626266367D00000006000000430055005300020000004100000000000000
      0000020000000100290000007B30363361343933612D396339662D343235622D
      383365632D6335326464353238663963617D0000000600000044004700520002
      00000043000000000000000000020000000100290000007B3439653536366263
      2D343162362D343336382D613165612D3965303661313536376134617D000000
      0600000044004F00430002000000430000000000000000000200000001002900
      00007B63326266366665352D653836342D343165372D396665332D6535393163
      303132656532347D000000060000004500580057000200000041000000000000
      000000020000000100290000007B38663532373335322D313432632D34353361
      2D383130332D3739333765613665323735647D0000000600000046004F004200
      0200000041000000000000000000020000000100290000007B39353037356162
      352D633963612D343536332D396236622D3132363830376333353039337D0000
      0006000000460055004500020000004300000000000000000002000000010029
      0000007B65363466356438612D316333352D346162662D396338642D63356131
      38346238346534617D00000006000000460055004D0002000000410000000000
      00000000020000000100290000007B34323536386437352D376163392D343338
      622D616663312D6535633665336237333531387D00000006000000480044004C
      000200000041000000000000000000020000000100290000007B393831303364
      62652D333530632D346634632D613062352D3334303762383162336461387D00
      0000060000004900410054000200000043000000000000000000020000000100
      290000007B62323638303635352D326534642D343737362D386266342D333535
      6537623735376564317D0000000600000049004E005300020000004300000000
      0000000000020000000100290000007B65333266356464662D303436332D3463
      38312D386439302D6438646638366237656635627D0000000600000050002F00
      55000200000041000000000000000000020000000100290000007B6663373763
      6432352D613764652D343538352D393864352D6530633735386666643162337D
      0000000600000050004200410002000000410000000000000000000200000001
      00290000007B38653233613236632D316135322D343339642D613937662D3464
      313836313261343964627D000000060000005000420046000200000041000000
      000000000000020000000100290000007B35393666363732332D363731342D34
      3437322D386336662D3265353839666562313833327D00000006000000500049
      0043000200000041000000000000000000020000000100290000007B38653861
      623331372D633565622D343661352D613464632D626232363233343661653064
      7D00000006000000530041004600020000004100000000000000000002000000
      0100290000007B39656631613635622D373932362D343535362D613536642D61
      36623631376330393931617D0000000600000053004300540002000000430000
      00000000000000020000000100290000007B36313135336630322D333236622D
      343638372D616435392D3539316236303266366430337D000000060000005300
      450043000200000043000000000000000000020000000100290000007B306264
      33636561302D656431352D343335632D613339322D3836383536626233663963
      667D000000060000005300460045000200000041000000000000000000020000
      000100290000007B36383431663934322D333631312D346334662D383362352D
      3639323265313935613839377D00000006000000560055004E00020000004100
      0000000000000000020000000100290000007B66303766623432612D66333338
      2D343235392D626534652D3134316232616532346361337D0000000600000058
      00520059000200000043000000000000000000020000000100290000007B3031
      3838613730622D313862322D343562392D626337382D65633764373931323563
      62397D0000000600000050004F00530002000000430000000000000000000200
      00000000290000007B30393237313431612D626365372D346562652D62313966
      2D3162333533633164646265327D000000}
  end
end
