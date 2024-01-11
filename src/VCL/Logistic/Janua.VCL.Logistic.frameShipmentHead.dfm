inherited FrameVCLLogisticShipmentHead: TFrameVCLLogisticShipmentHead
  Width = 895
  Height = 472
  Font.Height = -15
  ParentFont = False
  ExplicitWidth = 895
  ExplicitHeight = 472
  PixelsPerInch = 96
  object pgcShipmentOrders: TPageControl
    Left = 0
    Top = 0
    Width = 895
    Height = 472
    ActivePage = tsSubjects
    Align = alClient
    TabOrder = 0
    object tsHead: TTabSheet
      Caption = 'Head General Info'
      DesignSize = (
        887
        437)
      object lblYear: TLabel
        Left = 280
        Top = 24
        Width = 28
        Height = 20
        Caption = 'Year'
      end
      object lblWorkTypeID: TLabel
        Left = 3
        Top = 24
        Width = 169
        Height = 20
        Caption = 'Workflow Shipment Type '
      end
      object lblWarehouseID: TLabel
        Left = 351
        Top = 24
        Width = 73
        Height = 20
        Caption = 'Warehouse'
      end
      object lblWorkNumber: TLabel
        Left = 583
        Top = 24
        Width = 54
        Height = 20
        Caption = 'Number'
      end
      object lblWorkDate: TLabel
        Left = 432
        Top = 102
        Width = 99
        Height = 20
        Caption = 'Workflow Date'
      end
      object lblETD: TLabel
        Left = 583
        Top = 102
        Width = 89
        Height = 20
        Caption = 'E.T.Departure'
      end
      object lblETA: TLabel
        Left = 744
        Top = 102
        Width = 65
        Height = 20
        Caption = 'E.T.Arrival'
      end
      object lbedNumber: TLabeledEdit
        Left = 708
        Top = 46
        Width = 165
        Height = 28
        EditLabel.Width = 163
        EditLabel.Height = 20
        EditLabel.Caption = 'Shipment Order Number'
        TabOrder = 4
        Text = 'SC-2021-23456'
      end
      object lbedPurchaseOrder: TLabeledEdit
        Left = 3
        Top = 126
        Width = 406
        Height = 28
        EditLabel.Width = 100
        EditLabel.Height = 20
        EditLabel.Caption = 'Purchase Order'
        TabOrder = 5
        Text = 'P.O. 1234567890'
      end
      object seYear: TSpinEdit
        Left = 280
        Top = 46
        Width = 65
        Height = 30
        MaxValue = 3000
        MinValue = 2000
        TabOrder = 1
        Value = 2021
      end
      object cboWorkTypeID: TJvDBLookupCombo
        Left = 3
        Top = 46
        Width = 265
        Height = 27
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dsWorkTypes
        TabOrder = 0
      end
      object cboWarehouseID: TJvDBLookupCombo
        Left = 351
        Top = 46
        Width = 226
        Height = 27
        LookupSource = dsWorkTypes
        TabOrder = 2
      end
      object seNumber: TSpinEdit
        Left = 583
        Top = 46
        Width = 119
        Height = 30
        MaxValue = 3000
        MinValue = 2000
        TabOrder = 3
        Value = 2021
      end
      object dtpWorkDate: TDateTimePicker
        Left = 432
        Top = 126
        Width = 129
        Height = 28
        Date = 44445.000000000000000000
        Time = 0.491780613425362400
        TabOrder = 6
      end
      object dtpETD: TDateTimePicker
        Left = 583
        Top = 126
        Width = 129
        Height = 28
        Date = 44445.000000000000000000
        Time = 0.491780613425362400
        TabOrder = 7
      end
      object dtpETA: TDateTimePicker
        Left = 744
        Top = 126
        Width = 129
        Height = 28
        Date = 44445.000000000000000000
        Time = 0.491780613425362400
        TabOrder = 8
      end
      object chkCites: TCheckBox
        Left = 3
        Top = 176
        Width = 54
        Height = 17
        Caption = 'Cites'
        TabOrder = 9
      end
      object chkAssurance: TCheckBox
        Left = 63
        Top = 176
        Width = 90
        Height = 17
        Caption = 'Assurance'
        TabOrder = 10
      end
      object chkPickUp: TCheckBox
        Left = 159
        Top = 176
        Width = 74
        Height = 17
        Caption = 'Pick Up'
        TabOrder = 11
      end
      object chkFumigation: TCheckBox
        Left = 239
        Top = 176
        Width = 106
        Height = 17
        Caption = 'Fumigation'
        TabOrder = 12
      end
      object chkENAC: TCheckBox
        Left = 344
        Top = 176
        Width = 73
        Height = 17
        Caption = 'ENAC'
        TabOrder = 13
      end
      object chkDAU: TCheckBox
        Left = 410
        Top = 176
        Width = 58
        Height = 17
        Caption = 'DAU'
        TabOrder = 14
      end
      object chkDangerousGoods: TCheckBox
        Left = 466
        Top = 176
        Width = 225
        Height = 17
        Caption = 'Dangerous Goods Declaration'
        TabOrder = 15
      end
      object rgWorkState: TRadioGroup
        Left = 697
        Top = 176
        Width = 177
        Height = 249
        Caption = 'Work State (Level)'
        Items.Strings = (
          'Created'
          'Pick Up'
          'Documents on Hand'
          'Goods at Hand'
          'Shipped'
          'Arrived'
          'Off load/Rescheduled'
          'Delivered'
          'On Hold')
        TabOrder = 20
      end
      object lbedUserName: TLabeledEdit
        Left = 3
        Top = 238
        Width = 390
        Height = 28
        EditLabel.Width = 104
        EditLabel.Height = 20
        EditLabel.Caption = 'Issued By (User)'
        TabOrder = 16
        Text = 'Issued By User'
      end
      object lbedVesselName: TLabeledEdit
        Left = 3
        Top = 302
        Width = 646
        Height = 28
        EditLabel.Width = 84
        EditLabel.Height = 20
        EditLabel.Caption = 'Vessel Name'
        TabOrder = 17
        Text = 'Vessel Name'
      end
      object lbedWarehouseLocation: TLabeledEdit
        Left = 3
        Top = 358
        Width = 646
        Height = 28
        EditLabel.Width = 134
        EditLabel.Height = 20
        EditLabel.Caption = 'Warehouse Location'
        TabOrder = 19
        Text = 'Warehouse Location'
      end
      object btnVesselName: TButton
        Left = 655
        Top = 302
        Width = 27
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        Caption = '...'
        TabOrder = 18
      end
      object btnWarehouseLocation: TButton
        Left = 655
        Top = 358
        Width = 27
        Height = 28
        Anchors = [akLeft, akTop, akRight]
        Caption = '...'
        TabOrder = 21
      end
      object grpRouting: TGroupBox
        Left = 399
        Top = 215
        Width = 250
        Height = 51
        Caption = 'Routing'
        TabOrder = 22
        object chkAir: TCheckBox
          Left = 11
          Top = 24
          Width = 54
          Height = 17
          Caption = 'Air'
          TabOrder = 0
        end
        object chkGround: TCheckBox
          Left = 71
          Top = 24
          Width = 90
          Height = 17
          Caption = 'Ground'
          TabOrder = 1
        end
        object chkSea: TCheckBox
          Left = 167
          Top = 24
          Width = 50
          Height = 17
          Caption = 'Sea'
          TabOrder = 2
        end
      end
    end
    object tsSubjects: TTabSheet
      Caption = 'Subjects'
      ImageIndex = 11
      object grpCustomer: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 208
        Width = 881
        Height = 226
        Align = alBottom
        Caption = 'Customer'
        TabOrder = 0
        DesignSize = (
          881
          226)
        object Label1: TLabel
          Left = 10
          Top = 78
          Width = 96
          Height = 20
          Caption = 'Street Address'
        end
        object Label2: TLabel
          Left = 10
          Top = 140
          Width = 106
          Height = 20
          Caption = 'Zip/Postal Code'
        end
        object Label3: TLabel
          Left = 122
          Top = 140
          Width = 106
          Height = 20
          Caption = 'Town - Location'
        end
        object edCustomerName: TEdit
          Left = 10
          Top = 40
          Width = 380
          Height = 28
          TabOrder = 0
        end
        object Button1: TButton
          Left = 396
          Top = 40
          Width = 27
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          Caption = '...'
          TabOrder = 1
        end
        object edCustomerAddress: TEdit
          Left = 10
          Top = 98
          Width = 413
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
          Text = 'Shipper Address'
        end
        object edCustomerPostalCode: TEdit
          Left = 10
          Top = 162
          Width = 107
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
          Text = 'Zip Code'
        end
        object edCustomerTown: TEdit
          Left = 121
          Top = 162
          Width = 302
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 4
        end
      end
      object pgcSubjects: TPageControl
        Left = 0
        Top = 0
        Width = 887
        Height = 205
        ActivePage = tsShipper
        Align = alClient
        TabOrder = 1
        object tsShipper: TTabSheet
          Caption = 'Shipper'
          object grpShipper: TAdvGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 414
            Height = 164
            BorderColor = 12895944
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            Transparent = False
            Align = alLeft
            Caption = 'Shipper'
            ParentCtl3D = True
            TabOrder = 0
            DesignSize = (
              414
              164)
            object lbShipperAddress: TLabel
              Left = 3
              Top = 54
              Width = 96
              Height = 20
              Caption = 'Street Address'
            end
            object lbShipperPostalCode: TLabel
              Left = 3
              Top = 108
              Width = 106
              Height = 20
              Caption = 'Zip/Postal Code'
            end
            object lbShipperTown: TLabel
              Left = 115
              Top = 108
              Width = 106
              Height = 20
              Caption = 'Town - Location'
            end
            object edtShipperName: TEdit
              Left = 3
              Top = 24
              Width = 380
              Height = 28
              TabOrder = 0
            end
            object btnShipperSearch: TButton
              Left = 384
              Top = 24
              Width = 27
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              Caption = '...'
              TabOrder = 1
            end
            object edShipperAddress: TEdit
              Left = 3
              Top = 74
              Width = 408
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
              Text = 'Shipper Address'
            end
            object edShipperPostalCode: TEdit
              Left = 3
              Top = 130
              Width = 107
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 3
              Text = 'Zip Code'
            end
            object edShipperTown: TEdit
              Left = 114
              Top = 130
              Width = 297
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 4
            end
          end
          object grpShipmentLocation: TAdvGroupBox
            AlignWithMargins = True
            Left = 423
            Top = 3
            Width = 453
            Height = 164
            BorderColor = 12895944
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            Transparent = False
            Align = alClient
            Caption = 'Shipment Location (Address)'
            ParentCtl3D = True
            TabOrder = 1
            DesignSize = (
              453
              164)
            object btnUpdateShipmentLocation: TButton
              Left = 16
              Top = 29
              Width = 257
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Copy from Shipper Address -->'
              TabOrder = 0
              OnClick = btnUpdateShipmentLocationClick
            end
            object btnSearchShipmentLocation: TButton
              Left = 279
              Top = 29
              Width = 154
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Search Location'
              TabOrder = 1
            end
            object mmoShipmentLocation: TJvMemo
              Left = 16
              Top = 63
              Width = 417
              Height = 95
              Lines.Strings = (
                'mmoShipmentLocation')
              TabOrder = 2
            end
          end
        end
        object tsConsignee: TTabSheet
          Caption = 'Consignee'
          ImageIndex = 1
          object grpConsignee: TAdvGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 414
            Height = 164
            BorderColor = 12895944
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            Transparent = False
            Align = alLeft
            Caption = 'Consignee'
            ParentCtl3D = True
            TabOrder = 0
            DesignSize = (
              414
              164)
            object lbConsigneeTownLocation: TLabel
              Left = 114
              Top = 108
              Width = 106
              Height = 20
              Caption = 'Town - Location'
            end
            object lbConsigneePostalCode: TLabel
              Left = 2
              Top = 108
              Width = 106
              Height = 20
              Caption = 'Zip/Postal Code'
            end
            object lbConsigneeStreetAddres: TLabel
              Left = 3
              Top = 54
              Width = 96
              Height = 20
              Caption = 'Street Address'
            end
            object edtConsigneeTown: TEdit
              Left = 114
              Top = 128
              Width = 297
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 0
              Text = 'Town Location'
            end
            object edtConsigneeZipPostalCode: TEdit
              Left = 3
              Top = 128
              Width = 107
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              Text = 'Zip Postal Code'
            end
            object edtConsigneeAddress: TEdit
              Left = 3
              Top = 74
              Width = 408
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
              Text = 'Street Address'
            end
            object btnConsignee: TButton
              Left = 384
              Top = 24
              Width = 27
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              Caption = '...'
              TabOrder = 3
            end
            object edtConsigneeName: TEdit
              Left = 3
              Top = 24
              Width = 380
              Height = 28
              TabOrder = 4
              Text = 'Consignee Name'
            end
          end
          object grpDestinationAddress: TAdvGroupBox
            AlignWithMargins = True
            Left = 423
            Top = 3
            Width = 453
            Height = 164
            BorderColor = 12895944
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            Transparent = False
            Align = alClient
            Caption = 'Destination Location (Address)'
            ParentCtl3D = True
            TabOrder = 1
            DesignSize = (
              453
              164)
            object btnCopyFromConsignee: TButton
              Left = 16
              Top = 24
              Width = 257
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Copy from Shipper Address -->'
              TabOrder = 0
            end
            object btnSearchDestination: TButton
              Left = 279
              Top = 24
              Width = 154
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              Caption = 'Search Location'
              TabOrder = 1
            end
            object mmoShipmentDestination: TJvMemo
              Left = 16
              Top = 61
              Width = 417
              Height = 95
              Lines.Strings = (
                'mmoShipmentLocation')
              TabOrder = 2
            end
          end
        end
        object tsSupplier: TTabSheet
          Caption = 'Supplier'
          ImageIndex = 2
          object grpSupplier: TAdvGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 414
            Height = 164
            BorderColor = 12895944
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            Transparent = False
            Align = alLeft
            Caption = 'Supplier'
            ParentCtl3D = True
            TabOrder = 0
            DesignSize = (
              414
              164)
            object lblSupplierAddress: TLabel
              Left = 3
              Top = 54
              Width = 96
              Height = 20
              Caption = 'Street Address'
            end
            object lblSupplierZipPostalCode: TLabel
              Left = 3
              Top = 108
              Width = 106
              Height = 20
              Caption = 'Zip/Postal Code'
            end
            object lblSupplierTownLocation: TLabel
              Left = 113
              Top = 108
              Width = 106
              Height = 20
              Caption = 'Town - Location'
            end
            object edtSupplierName: TEdit
              Left = 3
              Top = 24
              Width = 380
              Height = 28
              TabOrder = 0
              Text = 'Supplier Name'
            end
            object btnSupplier: TButton
              Left = 384
              Top = 24
              Width = 27
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              Caption = '...'
              TabOrder = 1
            end
            object edtSupplierAddress: TEdit
              Left = 3
              Top = 74
              Width = 408
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
              Text = 'Street Address'
            end
            object edtSuplierZipPostalCode: TEdit
              Left = 3
              Top = 128
              Width = 107
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 3
              Text = 'Zip Postal Code'
            end
            object edtSupplierTownLocation: TEdit
              Left = 114
              Top = 128
              Width = 297
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 4
              Text = 'Town Location'
            end
          end
          object grpSupplierInvoiceInfo: TAdvGroupBox
            AlignWithMargins = True
            Left = 423
            Top = 3
            Width = 453
            Height = 164
            BorderColor = 12895944
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = []
            Transparent = False
            Align = alClient
            Caption = 'Invoice - Order informations'
            ParentCtl3D = True
            TabOrder = 1
            DesignSize = (
              453
              164)
            object lblInvoiceNUmber: TLabel
              Left = 19
              Top = 48
              Width = 105
              Height = 20
              Caption = 'Invoice Number'
            end
            object lblPurchaseOrder: TLabel
              Left = 19
              Top = 108
              Width = 96
              Height = 20
              Caption = 'PurchaseOrder'
            end
            object edtInvoiceNumber: TEdit
              Left = 19
              Top = 74
              Width = 408
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 0
              Text = 'Invoice Number'
            end
            object edtPurchaseOrderNumber: TEdit
              Left = 19
              Top = 128
              Width = 408
              Height = 28
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              Text = 'Purchase Order'
            end
          end
        end
      end
    end
    object tsCarriers: TTabSheet
      Caption = 'Carriers'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Ts'
      Font.Style = []
      ImageIndex = 4
      ParentFont = False
      object grpMainCarrier: TAdvGroupBox
        AlignWithMargins = True
        Left = 439
        Top = 3
        Width = 434
        Height = 431
        BorderColor = 12895944
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        Transparent = False
        Align = alLeft
        Caption = 'Main Carrier (Air, Sea, Land)'
        ParentCtl3D = True
        TabOrder = 0
        DesignSize = (
          434
          431)
        object lblReturningAddress: TLabel
          Left = 3
          Top = 58
          Width = 172
          Height = 17
          Caption = 'Specify Returning Address'
        end
        object lblBookingNumber: TLabel
          Left = 3
          Top = 172
          Width = 108
          Height = 17
          Caption = 'Booking Number'
        end
        object edtMainCarrier: TEdit
          Left = 3
          Top = 24
          Width = 380
          Height = 25
          TabOrder = 0
          Text = 'Main Carrier Company'
        end
        object btnSearchMainCarrier: TButton
          Left = 384
          Top = 24
          Width = 47
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          Caption = '...'
          TabOrder = 1
        end
        object edtReturningAddress: TEdit
          Left = 3
          Top = 87
          Width = 428
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
          Text = 'Returning Address'
        end
        object edtBookingNumber: TEdit
          Left = 3
          Top = 192
          Width = 428
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
          Text = 'BookingNumber'
        end
        object btnChangeReturningAddress: TButton
          Left = 224
          Top = 53
          Width = 207
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Search / Change'
          TabOrder = 4
        end
      end
      object grpInlandCarrier: TAdvGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 430
        Height = 431
        BorderColor = 12895944
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        Transparent = False
        Align = alLeft
        Caption = 'Inland Carrier'
        ParentCtl3D = True
        TabOrder = 1
        DesignSize = (
          430
          431)
        object lblPRONumber: TLabel
          Left = 3
          Top = 62
          Width = 274
          Height = 17
          Caption = 'Doc. / PRO Number  (Freight Bill Number)'
        end
        object lblTrackingNumber: TLabel
          Left = 3
          Top = 116
          Width = 111
          Height = 17
          Caption = 'Tracking Number'
        end
        object edtLandCarrierName: TEdit
          Left = 3
          Top = 24
          Width = 380
          Height = 25
          TabOrder = 0
          Text = 'Carrier Name'
        end
        object btnSearchCarrier: TButton
          Left = 384
          Top = 24
          Width = 43
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          Caption = '...'
          TabOrder = 1
        end
        object edtPRONumber: TEdit
          Left = 3
          Top = 85
          Width = 424
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
          Text = 'PRO Number (Freight Bill)'
        end
        object edtTrackingNumber: TEdit
          Left = 3
          Top = 139
          Width = 424
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
          Text = 'Tracking Number'
        end
      end
    end
    object tsPolPod: TTabSheet
      Caption = 'Pol-Pod'
      ImageIndex = 5
      object grpPol: TAdvGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 422
        Height = 431
        BorderColor = 12895944
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        Transparent = False
        Align = alLeft
        Caption = 'Shipment Location (Address)'
        ParentCtl3D = True
        TabOrder = 0
        DesignSize = (
          422
          431)
        object btnPolFromShipper: TButton
          Left = 6
          Top = 40
          Width = 243
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Copy from Shipper Address -->'
          TabOrder = 0
        end
        object btnSearchPolLocation: TButton
          Left = 258
          Top = 40
          Width = 154
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'Search Location'
          TabOrder = 1
        end
        object mmoPoDeliveryLocation: TJvMemo
          Left = 6
          Top = 119
          Width = 406
          Height = 95
          Anchors = [akLeft, akTop, akRight]
          Lines.Strings = (
            'mmoShipmentLocation')
          TabOrder = 2
        end
        object edtPoLName: TEdit
          Left = 6
          Top = 74
          Width = 373
          Height = 28
          TabOrder = 3
          Text = 'POL Location Name'
        end
        object btnSearchPOLName: TButton
          Left = 385
          Top = 74
          Width = 27
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          Caption = '...'
          TabOrder = 4
        end
      end
      object grpPoD: TAdvGroupBox
        AlignWithMargins = True
        Left = 431
        Top = 3
        Width = 453
        Height = 431
        BorderColor = 12895944
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'Tahoma'
        CaptionFont.Style = []
        Transparent = False
        Align = alClient
        Caption = 'Destination Location (Address)'
        ParentCtl3D = True
        TabOrder = 1
        DesignSize = (
          453
          431)
        object btnCopyPodFromConsignee: TButton
          Left = 6
          Top = 40
          Width = 265
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Copy from Shipper Address -->'
          TabOrder = 0
        end
        object btnSearchPoDLocation: TButton
          Left = 296
          Top = 40
          Width = 145
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'Search Location'
          TabOrder = 1
        end
        object mmoPoL: TJvMemo
          Left = 6
          Top = 119
          Width = 435
          Height = 95
          Anchors = [akLeft, akTop, akRight]
          Lines.Strings = (
            'mmoShipmentLocation')
          TabOrder = 2
        end
        object edtPodName: TEdit
          Left = 6
          Top = 74
          Width = 402
          Height = 28
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
          Text = 'POD Location Name'
        end
        object btnSearchPodName: TButton
          Left = 414
          Top = 74
          Width = 27
          Height = 28
          Anchors = [akTop, akRight]
          Caption = '...'
          TabOrder = 4
        end
      end
    end
    object tsCommodities: TTabSheet
      Caption = 'Commodities'
      ImageIndex = 6
      object tlbCommodities: TToolBar
        AlignWithMargins = True
        Left = 789
        Top = 3
        Width = 95
        Height = 431
        Align = alRight
        Caption = 'tlbCommodities'
        TabOrder = 0
      end
      object grdMaster: TwwDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 780
        Height = 431
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        LineColors.ShadowColor = clTeal
        PaintOptions.AlternatingRowColor = 7500402
        object grdCommodities: TwwIButton
          Left = 0
          Top = 0
          Width = 13
          Height = 22
          AllowAllUp = True
          Flat = False
          ImageIndex = -1
        end
      end
    end
    object tsCharges: TTabSheet
      Caption = 'Charges'
      ImageIndex = 7
      object grdCharges: TwwDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 783
        Height = 431
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        LineColors.ShadowColor = clTeal
        PaintOptions.AlternatingRowColor = 7500402
        object btnCharges: TwwIButton
          Left = 0
          Top = 0
          Width = 13
          Height = 22
          AllowAllUp = True
          Flat = False
          ImageIndex = -1
        end
      end
      object tlbCharges: TToolBar
        AlignWithMargins = True
        Left = 792
        Top = 3
        Width = 92
        Height = 431
        Align = alRight
        Caption = 'tlbCommodities'
        TabOrder = 1
      end
    end
    object tsNotes: TTabSheet
      Caption = 'Notes'
      ImageIndex = 8
    end
    object tsInternalNotes: TTabSheet
      Caption = 'Internal Notes'
      ImageIndex = 9
    end
    object tsEvents: TTabSheet
      Caption = 'Events'
      ImageIndex = 10
    end
  end
  object fdmWorkTypes: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'jguid'
        Attributes = [faRequired]
        DataType = ftGuid
        Size = 38
      end
      item
        Name = 'name'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 128
      end
      item
        Name = 'icon_id'
        DataType = ftSmallint
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
    Left = 736
    Top = 8
    Content = {
      414442530F000000DB030000FF00010001FF02FF030400160000007600740057
      006F0072006B005400790070006500730005000A0000005400610062006C0065
      00060000000000070000080032000000090000FF0AFF0B040004000000690064
      00050004000000690064000C00010000000E000D000F00011000011100011200
      0113000400000069006400FEFF0B04000A0000006A0067007500690064000500
      0A0000006A0067007500690064000C00020000000E0014000F00011000011100
      0112000113000A0000006A006700750069006400FEFF0B0400080000006E0061
      006D0065000500080000006E0061006D0065000C00030000000E001500160080
      0000000F00011000011100011200011300080000006E0061006D006500170080
      000000FEFF0B04000E000000690063006F006E005F006900640005000E000000
      690063006F006E005F00690064000C00040000000E000D000F00011800011000
      0119000111000112000113000E000000690063006F006E005F0069006400FEFE
      FF1AFEFF1BFEFF1CFF1D1E0000000000FF1F00000100010090D62F63DE23164F
      BFB27C48C785E60B02000C000000430072007500690073006500FEFEFF1D1E00
      01000000FF1F000002000100AAFBB1DF1008E54B8159ADC36FC87B0402002400
      000044006F00740061007A0069006F006E006900200064006900200042006F00
      720064006F00FEFEFF1D1E0002000000FF1F000009000100496AD976BA504548
      A30A1D7A2C7CE0AD0200160000004500780070006F007200740020004D006100
      72006500FEFEFF1D1E0003000000FF1F000007000100FBC4D20267CCEC4DAB64
      32E69822E8860200180000004500780070006F00720074002000410065007200
      65006F00FEFEFF1D1E0004000000FF1F000006000100FAB3788994253A4D9E2F
      3DDA9DF66FF802001600000049006D0070006F007200740020004D0061007200
      6500FEFEFF1D1E0005000000FF1F000008000100FC799134D5842C468A10F3D6
      7DC26654020020000000450073007400650072006F0020007300750020004500
      73007400650072006F00FEFEFF1D1E0006000000FF1F000003000100ED096401
      F030FD41AB36E35EDA348F7202001800000049006D0070006F00720074002000
      41006500720065006F00FEFEFF1D1E0007000000FF1F000005000100E667592E
      3C10F644AA1BF8F6FCC0E6B202001A000000470065006E006500720061006C00
      200043006100720067006F00FEFEFF1D1E0008000000FF1F000004000100CE12
      5D7640608041913648E411F1153A020012000000570061007200650068006F00
      750073006500FEFEFEFEFEFF20FEFF21220012000000FF23FEFEFE0E004D0061
      006E0061006700650072001E0055007000640061007400650073005200650067
      006900730074007200790012005400610062006C0065004C006900730074000A
      005400610062006C00650008004E0061006D006500140053006F007500720063
      0065004E0061006D0065000A0054006100620049004400240045006E0066006F
      0072006300650043006F006E00730074007200610069006E00740073001E004D
      0069006E0069006D0075006D0043006100700061006300690074007900180043
      006800650063006B004E006F0074004E0075006C006C00140043006F006C0075
      006D006E004C006900730074000C0043006F006C0075006D006E00100053006F
      007500720063006500490044000E006400740049006E00740031003600100044
      0061007400610054007900700065001400530065006100720063006800610062
      006C0065000800420061007300650012004F0049006E00550070006400610074
      00650010004F0049006E00570068006500720065001A004F0072006900670069
      006E0043006F006C004E0061006D0065000C0064007400470055004900440018
      0064007400570069006400650053007400720069006E0067000800530069007A
      006500140053006F007500720063006500530069007A006500120041006C006C
      006F0077004E0075006C006C0014004F0041006C006C006F0077004E0075006C
      006C001C0043006F006E00730074007200610069006E0074004C006900730074
      00100056006900650077004C006900730074000E0052006F0077004C00690073
      007400060052006F0077000A0052006F0077004900440010004F007200690067
      0069006E0061006C001800520065006C006100740069006F006E004C00690073
      0074001C0055007000640061007400650073004A006F00750072006E0061006C
      001200530061007600650050006F0069006E0074000E004300680061006E0067
      0065007300}
    object fdmWorkTypesid: TSmallintField
      DisplayWidth = 10
      FieldName = 'id'
      Required = True
    end
    object fdmWorkTypesjguid: TGuidField
      DisplayWidth = 38
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object fdmWorkTypesname: TWideStringField
      DisplayWidth = 128
      FieldName = 'name'
      Required = True
      Size = 128
    end
    object fdmWorkTypesicon_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'icon_id'
    end
  end
  object dsWorkTypes: TDataSource
    DataSet = fdmWorkTypes
    Left = 824
    Top = 8
  end
  object fdmLkpWarehouses: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'anagraph_id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'an_last_name'
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
    Left = 536
    Top = 392
    Content = {
      414442530F000000E1060000FF00010001FF02FF03040020000000660064006D
      004C006B007000570061007200650068006F00750073006500730005000A0000
      005400610062006C006500060000000000070000080032000000090000FF0AFF
      0B04001600000061006E006100670072006100700068005F0069006400050016
      00000061006E006100670072006100700068005F00690064000C00010000000E
      000D000F000110000111000112000113001600000061006E0061006700720061
      00700068005F0069006400FEFF0B04001800000061006E005F006C0061007300
      74005F006E0061006D00650005001800000061006E005F006C00610073007400
      5F006E0061006D0065000C00020000000E0014001500800000000F0001100001
      11000112000113001800000061006E005F006C006100730074005F006E006100
      6D006500160080000000FEFEFF17FEFF18FEFF19FF1A1B0000000000FF1C0000
      19B3030001000E000000410052004D004F004E0049004100FEFEFF1A1B000100
      0000FF1C0000FB18020001000E0000004300480041005200490054005900FEFE
      FF1A1B0002000000FF1C0000FA18020001001E00000044005500420041004900
      2000570041005200450048004F00550053004500FEFEFF1A1B0003000000FF1C
      000072D8030001003200000046002E004C004C00490020004300480049004500
      5300550052004100200043002F004F0020005400410049004C004F005200FEFE
      FF1A1B0004000000FF1C0000F8180200010020000000470045004E004F005600
      41002000570041005200450048004F00550053004500FEFEFF1A1B0005000000
      FF1C0000FC180200010022000000480041004D00420055005200470020005700
      41005200450048004F00550053004500FEFEFF1A1B0006000000FF1C0000FD18
      020001001E0000004A004100500041004E002000570041005200450048004F00
      550053004500FEFEFF1A1B0007000000FF1C0000FE18020001001E0000004B00
      4F005200450041002000570041005200450048004F00550053004500FEFEFF1A
      1B0008000000FF1C0000FF1802000100240000004C0055004E00470041002000
      470049004100430045004E005A00410020004D0053004300FEFEFF1A1B000900
      0000FF1C0000051902000100360000004C0055004E0047004100200047004900
      4100430045004E005A0041002000500045005200530045005600450052004100
      4E005A004100FEFEFF1A1B000A000000FF1C0000C6D603000100240000004C00
      55004E00470041002000470049004100430045004E005A004100200053005700
      4D00FEFEFF1A1B000B000000FF1C00000019020001000E0000004D0041005200
      4C0049004E004B00FEFEFF1A1B000C000000FF1C00000119020001001E000000
      4D00490041004D0049002000570041005200450048004F00550053004500FEFE
      FF1A1B000D000000FF1C0000031902000100200000004E004100520049005400
      41002000570041005200450048004F00550053004500FEFEFF1A1B000E000000
      FF1C0000021902000100280000004E00450054004800450052004C0041004E00
      44002000570041005200450048004F00550053004500FEFEFF1A1B000F000000
      FF1C00008BD803000100080000004F004D0041004E00FEFEFF1A1B0010000000
      FF1C00000419020001000E000000500041004C00450052004D004F00FEFEFF1A
      1B0011000000FF1C000006190200010020000000500041004E0041004D004100
      2000570041005200450048004F00550053004500FEFEFF1A1B0012000000FF1C
      00001AB303000100100000005000520045005A0049004F0053004100FEFEFF1A
      1B0013000000FF1C000036D8030001001A000000530041004E0054004F002000
      44004F004D0049004E0047004F00FEFEFF1A1B0014000000FF1C000007190200
      0100240000005300480041004E00470048004100490020005700410052004500
      48004F00550053004500FEFEFF1A1B0015000000FF1C00000819020001002600
      0000530049004E004700410050004F0052004500200057004100520045004800
      4F00550053004500FEFEFF1A1B0016000000FF1C00001BB3030001001C000000
      55004E00490054004500440020004B0049004E00470044004F004D00FEFEFF1A
      1B0017000000FF1C00000919020001000C000000550053004100200057004800
      FEFEFF1A1B0018000000FF1C0000C7D60300010012000000560041004E004300
      4F005500560045005200FEFEFF1A1B0019000000FF1C0000F918020001002200
      0000560045004E0045005A00490041002000570041005200450048004F005500
      53004500FEFEFF1A1B001A000000FF1C00000A19020001001000000057004500
      4E0044004C0041004E004400FEFEFEFEFEFF1DFEFF1E1F0036000000FF20FEFE
      FE0E004D0061006E0061006700650072001E0055007000640061007400650073
      005200650067006900730074007200790012005400610062006C0065004C0069
      00730074000A005400610062006C00650008004E0061006D006500140053006F
      0075007200630065004E0061006D0065000A0054006100620049004400240045
      006E0066006F0072006300650043006F006E00730074007200610069006E0074
      0073001E004D0069006E0069006D0075006D0043006100700061006300690074
      007900180043006800650063006B004E006F0074004E0075006C006C00140043
      006F006C0075006D006E004C006900730074000C0043006F006C0075006D006E
      00100053006F007500720063006500490044000E006400740049006E00740033
      0032001000440061007400610054007900700065001400530065006100720063
      006800610062006C0065000800420061007300650012004F0049006E00550070
      00640061007400650010004F0049006E00570068006500720065001A004F0072
      006900670069006E0043006F006C004E0061006D006500180064007400570069
      006400650053007400720069006E0067000800530069007A006500140053006F
      007500720063006500530069007A0065001C0043006F006E0073007400720061
      0069006E0074004C00690073007400100056006900650077004C006900730074
      000E0052006F0077004C00690073007400060052006F0077000A0052006F0077
      004900440010004F0072006900670069006E0061006C001800520065006C0061
      00740069006F006E004C006900730074001C0055007000640061007400650073
      004A006F00750072006E0061006C001200530061007600650050006F0069006E
      0074000E004300680061006E00670065007300}
    object fdmLkpWarehousesanagraph_id: TIntegerField
      DisplayWidth = 10
      FieldName = 'anagraph_id'
      Required = True
    end
    object fdmLkpWarehousesan_last_name: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
  end
  object dsWarehouses: TDataSource
    DataSet = fdmLkpWarehouses
    Left = 456
    Top = 392
  end
  object JanuaMasterActionViewController: TJanuaActionViewController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ButtonSize = jbs24
    Left = 776
    Top = 296
  end
  object jscCarrier: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Left = 778
    Top = 232
  end
  object jscWarehouseName: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Left = 778
    Top = 176
  end
  object jscVesselLocation: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = lbedVesselName
    SearchButton = btnWarehouseLocation
    Left = 42
    Top = 424
  end
  object jscSupplier: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchButton = btnSupplier
    Left = 778
    Top = 64
  end
  object jscShipper: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edtShipperName
    SearchButton = btnShipperSearch
    Left = 122
    Top = 424
  end
  object jscVessel: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Left = 274
    Top = 424
  end
  object jscAgent: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Left = 202
    Top = 424
  end
  object jscCustomer: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Left = 346
    Top = 424
  end
  object jscAirport: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Left = 418
    Top = 424
  end
  object jscArrivalAirport: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Left = 490
    Top = 424
  end
  object jscPod: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Left = 578
    Top = 424
  end
  object jscPol: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Left = 634
    Top = 424
  end
  object jscLandCarrier: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edtLandCarrierName
    SearchButton = btnSearchCarrier
    Left = 698
    Top = 424
  end
  object jscMainCarrier: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edtMainCarrier
    SearchButton = btnSearchMainCarrier
    Left = 794
    Top = 408
  end
end
