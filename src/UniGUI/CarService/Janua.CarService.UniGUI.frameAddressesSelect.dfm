object frameUniGUICarServiceAddressSelect: TframeUniGUICarServiceAddressSelect
  Left = 0
  Top = 0
  ClientHeight = 433
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object cntAddressSelect: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 433
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    object UniContainerPanel1: TUniContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 22
      Width = 618
      Height = 33
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 1
      object cboAddressSelection: TUniFSComboBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 527
        Height = 27
        Hint = ''
        Text = 'Ricerca Indirizzi Service'
        Align = alClient
        ParentFont = False
        Font.Height = -13
        TabOrder = 1
        AnyMatch = True
        IconItems = <>
        Value = '-1'
      end
      object btnNewBranch: TUniFSButton
        Left = 533
        Top = 0
        Width = 85
        Height = 33
        Hint = ''
        StyleButton = Success
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Nuova Sede'
        Align = alRight
        TabOrder = 2
      end
    end
    object lbServiceAddress: TUniLabel
      AlignWithMargins = True
      Left = 6
      Top = 3
      Width = 615
      Height = 13
      Hint = ''
      Margins.Left = 6
      AutoSize = False
      Caption = 'Seleziona Sede o Indirizzo del Service'
      Align = alTop
      ParentColor = False
      Color = clBtnFace
      TabOrder = 2
    end
    object lbIndirizzoPickup: TUniLabel
      AlignWithMargins = True
      Left = 6
      Top = 61
      Width = 615
      Height = 13
      Hint = ''
      Margins.Left = 6
      Margins.Bottom = 10
      AutoSize = False
      Caption = 'Selezione Pickup-Delivery viaggio ritiro veicolo'
      Align = alTop
      ParentColor = False
      Color = clBtnFace
      TabOrder = 3
    end
    object lbIndirizzoReturn: TUniLabel
      AlignWithMargins = True
      Left = 6
      Top = 87
      Width = 615
      Height = 13
      Hint = ''
      Margins.Left = 6
      Margins.Bottom = 10
      AutoSize = False
      Caption = 'Selezione Pickup-Delivery viaggio restituzione veicolo'
      Align = alTop
      ParentColor = False
      Color = clBtnFace
      TabOrder = 4
    end
    object pnlTimeTablePickup: TUniSimplePanel
      AlignWithMargins = True
      Left = 3
      Top = 113
      Width = 618
      Height = 160
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 5
      object cntTimeTable: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 618
        Height = 160
        Hint = ''
        ParentColor = False
        Align = alClient
        TabOrder = 1
        object pnlTop: TUniContainerPanel
          Left = 0
          Top = 0
          Width = 618
          Height = 33
          Hint = ''
          ParentColor = False
          Align = alTop
          TabOrder = 1
          object lbTimeTableType: TUniLabel
            Left = 16
            Top = 8
            Width = 41
            Height = 17
            Hint = ''
            Caption = 'Pickup'
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            ParentColor = False
            Color = clBtnFace
            TabOrder = 1
          end
          object lbTimetableDAte: TUniLabel
            Left = 96
            Top = 8
            Width = 66
            Height = 17
            Hint = ''
            Caption = '23/06/2023'
            ParentFont = False
            Font.Height = -13
            ParentColor = False
            Color = clBtnFace
            TabOrder = 2
          end
          object lbDeliveryTime: TUniLabel
            Left = 184
            Top = 8
            Width = 31
            Height = 17
            Hint = ''
            Caption = '10:00'
            ParentFont = False
            Font.Height = -13
            ParentColor = False
            Color = clBtnFace
            TabOrder = 3
          end
        end
        object UniContainerPanel2: TUniContainerPanel
          Left = 0
          Top = 33
          Width = 618
          Height = 53
          Hint = ''
          ParentColor = False
          Align = alTop
          TabOrder = 2
          object cboPickup: TUniComboBox
            AlignWithMargins = True
            Left = 10
            Top = 22
            Width = 598
            Height = 28
            Hint = ''
            Margins.Left = 10
            Margins.Right = 10
            Text = ''
            Align = alClient
            ParentFont = False
            Font.Height = -13
            TabOrder = 1
            IconItems = <>
          end
          object lbDeparture: TUniLabel
            AlignWithMargins = True
            Left = 10
            Top = 3
            Width = 129
            Height = 13
            Hint = ''
            Margins.Left = 10
            Margins.Right = 10
            Caption = 'Luogo di Prelievo Veicolo'
            Align = alTop
            ParentColor = False
            Color = clBtnFace
            TabOrder = 2
          end
        end
        object UniContainerPanel3: TUniContainerPanel
          Left = 0
          Top = 86
          Width = 618
          Height = 67
          Hint = ''
          ParentColor = False
          Align = alTop
          TabOrder = 3
          object cboReturn: TUniComboBox
            AlignWithMargins = True
            Left = 10
            Top = 31
            Width = 598
            Height = 33
            Hint = ''
            Margins.Left = 10
            Margins.Right = 10
            Text = ''
            Align = alClient
            ParentFont = False
            Font.Height = -13
            TabOrder = 1
            IconItems = <>
          end
          object lbVehiclePickupPlace: TUniLabel
            AlignWithMargins = True
            Left = 10
            Top = 3
            Width = 598
            Height = 22
            Hint = ''
            Margins.Left = 10
            Margins.Right = 10
            AutoSize = False
            Caption = 'Luogo di Prelievo Veicolo'
            Align = alTop
            ParentColor = False
            Color = clBtnFace
            TabOrder = 2
          end
        end
      end
    end
    object pnlTimeTableDelivery: TUniSimplePanel
      AlignWithMargins = True
      Left = 3
      Top = 279
      Width = 618
      Height = 151
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 6
      object UniContainerPanel4: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 618
        Height = 151
        Hint = ''
        ParentColor = False
        Align = alClient
        TabOrder = 1
        object pnlTopD: TUniContainerPanel
          Left = 0
          Top = 0
          Width = 618
          Height = 33
          Hint = ''
          ParentColor = False
          Align = alTop
          TabOrder = 1
          object lbTimeTableTypeD: TUniLabel
            Left = 16
            Top = 8
            Width = 52
            Height = 17
            Hint = ''
            Caption = 'Delivery'
            ParentFont = False
            Font.Height = -13
            Font.Style = [fsBold]
            ParentColor = False
            Color = clBtnFace
            TabOrder = 1
          end
          object lbTimetableDAteD: TUniLabel
            Left = 96
            Top = 8
            Width = 66
            Height = 17
            Hint = ''
            Caption = '23/06/2023'
            ParentFont = False
            Font.Height = -13
            ParentColor = False
            Color = clBtnFace
            TabOrder = 2
          end
          object lbDeliveryTimeD: TUniLabel
            Left = 184
            Top = 8
            Width = 31
            Height = 17
            Hint = ''
            Caption = '10:00'
            ParentFont = False
            Font.Height = -13
            ParentColor = False
            Color = clBtnFace
            TabOrder = 3
          end
        end
        object UniContainerPanel6: TUniContainerPanel
          Left = 0
          Top = 33
          Width = 618
          Height = 60
          Hint = ''
          ParentColor = False
          Align = alTop
          TabOrder = 2
          object cboPickupD: TUniComboBox
            AlignWithMargins = True
            Left = 10
            Top = 22
            Width = 598
            Height = 35
            Hint = ''
            Margins.Left = 10
            Margins.Right = 10
            Text = ''
            Align = alClient
            ParentFont = False
            Font.Height = -13
            TabOrder = 1
            IconItems = <>
          end
          object lbDepartureD: TUniLabel
            AlignWithMargins = True
            Left = 10
            Top = 3
            Width = 129
            Height = 13
            Hint = ''
            Margins.Left = 10
            Margins.Right = 10
            Caption = 'Luogo di Prelievo Veicolo'
            Align = alTop
            ParentColor = False
            Color = clBtnFace
            TabOrder = 2
          end
        end
        object UniContainerPanel7: TUniContainerPanel
          Left = 0
          Top = 93
          Width = 618
          Height = 60
          Hint = ''
          ParentColor = False
          Align = alTop
          TabOrder = 3
          object cboReturnD: TUniComboBox
            AlignWithMargins = True
            Left = 10
            Top = 22
            Width = 598
            Height = 35
            Hint = ''
            Margins.Left = 10
            Margins.Right = 10
            Text = ''
            Align = alClient
            ParentFont = False
            Font.Height = -13
            TabOrder = 1
            IconItems = <>
          end
          object lbVehiclePickupPlaceD: TUniLabel
            AlignWithMargins = True
            Left = 10
            Top = 3
            Width = 598
            Height = 13
            Hint = ''
            Margins.Left = 10
            Margins.Right = 10
            AutoSize = False
            Caption = 'Luogo di Prelievo Veicolo'
            Align = alTop
            ParentColor = False
            Color = clBtnFace
            TabOrder = 2
          end
        end
      end
    end
  end
  object TimeTablePickupController: TTimeTableUniGUIController
    Enabled = False
    lbTimeTableType = lbTimeTableType
    lbTimetableDAte = lbTimetableDAte
    lbDeliveryTime = lbDeliveryTime
    cboPickup = cboPickup
    lbDeparture = lbDeparture
    cboReturn = cboReturn
    lbVehiclePickupPlace = lbVehiclePickupPlace
    Left = 304
    Top = 177
  end
  object TimeTableDeliveryController: TTimeTableUniGUIController
    Enabled = False
    lbTimeTableType = lbTimeTableTypeD
    lbTimetableDAte = lbTimetableDAteD
    lbDeliveryTime = lbDeliveryTimeD
    cboPickup = cboPickupD
    lbDeparture = lbDepartureD
    cboReturn = cboReturnD
    lbVehiclePickupPlace = lbVehiclePickupPlaceD
    Left = 288
    Top = 313
  end
  object AddressSelectUniGUICController1: TAddressSelectUniGUICController
    Enabled = False
    cntAddressSelect = cntAddressSelect
    cboAddressSelection = cboAddressSelection
    btnNewBranch = btnNewBranch
    lbServiceAddress = lbServiceAddress
    lbIndirizzoPickup = lbIndirizzoPickup
    lbIndirizzoReturn = lbIndirizzoReturn
    TimeTablePickupController = TimeTablePickupController
    TimeTableDeliveryController = TimeTableDeliveryController
    Left = 483
    Top = 223
  end
end
