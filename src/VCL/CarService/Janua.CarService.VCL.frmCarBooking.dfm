object frmVCLCarServiceBooking: TfrmVCLCarServiceBooking
  Left = 0
  Top = 0
  Caption = 'Car Service Booking'
  ClientHeight = 645
  ClientWidth = 1262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object pnlAddressLocation: TPanel
    Left = 0
    Top = 0
    Width = 1262
    Height = 105
    Align = alTop
    TabOrder = 0
    object lblLat: TLabel
      Left = 1007
      Top = 70
      Width = 47
      Height = 13
      Caption = 'Latitudine'
    end
    object lblLong: TLabel
      Left = 1082
      Top = 70
      Width = 55
      Height = 13
      Caption = 'Longitudine'
    end
    object lblDataRitiro: TLabel
      Left = 871
      Top = 8
      Width = 51
      Height = 13
      Caption = 'Data Ritiro'
    end
    object lblDataConsegna: TLabel
      Left = 1007
      Top = 8
      Width = 74
      Height = 13
      Caption = 'Data Consegna'
    end
    object btnPrenota: TSpeedButton
      Left = 1151
      Top = 62
      Width = 102
      Height = 22
      Caption = 'Prenota'
    end
    object btnRicerca: TSpeedButton
      Left = 1151
      Top = 26
      Width = 102
      Height = 22
      Caption = 'Prenota'
      OnClick = btnRicercaClick
    end
    object lbedName: TLabeledEdit
      Left = 32
      Top = 27
      Width = 193
      Height = 21
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome Cliente'
      TabOrder = 0
      Text = ''
    end
    object lbedLastName: TLabeledEdit
      Left = 231
      Top = 27
      Width = 193
      Height = 21
      EditLabel.Width = 167
      EditLabel.Height = 13
      EditLabel.Caption = 'Cognome Cliente (Ragione Sociale)'
      TabOrder = 1
      Text = ''
    end
    object lbedFullAddress: TLabeledEdit
      Left = 439
      Top = 27
      Width = 426
      Height = 21
      EditLabel.Width = 170
      EditLabel.Height = 13
      EditLabel.Caption = 'Indirizzo Completo (Via, CAP, Citt'#224')'
      TabOrder = 2
      Text = ''
      OnExit = lbedFullAddressExit
    end
    object dtpRitiro: TDateTimePicker
      Left = 871
      Top = 27
      Width = 130
      Height = 21
      Date = 44453.000000000000000000
      Time = 0.693957499999669400
      TabOrder = 3
    end
    object dtpConsegna: TDateTimePicker
      Left = 1007
      Top = 27
      Width = 130
      Height = 21
      Date = 44453.000000000000000000
      Time = 0.693957499999669400
      TabOrder = 4
    end
    object lbedCar: TLabeledEdit
      Left = 32
      Top = 67
      Width = 241
      Height = 21
      EditLabel.Width = 72
      EditLabel.Height = 13
      EditLabel.Caption = 'Modello Veicolo'
      TabOrder = 5
      Text = ''
    end
    object lbedCarNumberPlate: TLabeledEdit
      Left = 279
      Top = 67
      Width = 122
      Height = 21
      EditLabel.Width = 64
      EditLabel.Height = 13
      EditLabel.Caption = 'Targa Veicolo'
      TabOrder = 6
      Text = ''
    end
    object lbedCarColor: TLabeledEdit
      Left = 407
      Top = 67
      Width = 170
      Height = 21
      EditLabel.Width = 112
      EditLabel.Height = 13
      EditLabel.Caption = 'Colore / Vernice Veicolo'
      TabOrder = 7
      Text = ''
    end
    object lbedTelefono: TLabeledEdit
      Left = 583
      Top = 67
      Width = 122
      Height = 21
      EditLabel.Width = 78
      EditLabel.Height = 13
      EditLabel.Caption = 'Telefono Cliente'
      TabOrder = 8
      Text = ''
    end
    object lbedEMail: TLabeledEdit
      Left = 711
      Top = 67
      Width = 274
      Height = 21
      EditLabel.Width = 64
      EditLabel.Height = 13
      EditLabel.Caption = 'E-Mail Cliente'
      TabOrder = 9
      Text = ''
    end
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 105
    Width = 550
    Height = 540
    Align = alLeft
    Caption = 'pnlLeft'
    TabOrder = 1
    object gmpGeoCoding: TWebGMaps
      AlignWithMargins = True
      Left = 4
      Top = 48
      Width = 542
      Height = 488
      Align = alClient
      APIKey = 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
      Clusters = <>
      Markers = <>
      Polylines = <>
      Polygons = <>
      Directions = <>
      MapOptions.ZoomMap = 12
      MapOptions.DefaultLatitude = 45.464248073478470000
      MapOptions.DefaultLongitude = 9.191937227520876000
      Routing.PolylineOptions.Icons = <>
      StreetViewOptions.DefaultLatitude = 45.464248073478500000
      StreetViewOptions.DefaultLongitude = 9.191937227520880000
      MapPersist.Location = mplInifile
      MapPersist.Key = 'WebGMaps'
      MapPersist.Section = 'MapBounds'
      PolygonLabel.Font.Charset = DEFAULT_CHARSET
      PolygonLabel.Font.Color = clBlack
      PolygonLabel.Font.Height = -16
      PolygonLabel.Font.Name = 'Arial'
      PolygonLabel.Font.Style = []
      TabOrder = 0
      Version = '2.9.1.1'
    end
    object pnlCompany: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 542
      Height = 41
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Via dei Missaglia, 89, 20142 Milano MI'
      PopupMenu = pmStyle
      TabOrder = 1
    end
  end
  object grdRitiro: TDBCtrlGrid
    Left = 550
    Top = 105
    Width = 366
    Height = 540
    Align = alLeft
    DataSource = dsRitiro
    PanelHeight = 90
    PanelWidth = 349
    TabOrder = 2
    RowCount = 6
    object dbtxtRitiro: TDBText
      Left = 143
      Top = 18
      Width = 65
      Height = 17
      DataField = 'Time'
      DataSource = dsRitiro
    end
    object dateRitiro: TJvDBDateEdit
      Left = 3
      Top = 16
      Width = 120
      Height = 21
      DataField = 'Date'
      DataSource = dsRitiro
      ShowNullDate = False
      TabOrder = 0
    end
    object dbchkRitiro: TDBCheckBox
      Left = 230
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Selezione'
      DataField = 'Selected'
      DataSource = dsRitiro
      TabOrder = 1
    end
  end
  object grdConsegna: TDBCtrlGrid
    Left = 916
    Top = 105
    Width = 340
    Height = 540
    Align = alLeft
    DataSource = dsConsegna
    PanelHeight = 90
    PanelWidth = 323
    TabOrder = 3
    RowCount = 6
    object dbtxtConsegna: TDBText
      Left = 138
      Top = 18
      Width = 65
      Height = 17
      DataField = 'Time'
      DataSource = dsConsegna
    end
    object dbchkConsegna: TDBCheckBox
      Left = 219
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Selezione'
      DataField = 'Selected'
      DataSource = dsConsegna
      TabOrder = 0
    end
    object dateConsegna: TJvDBDateEdit
      Left = 11
      Top = 16
      Width = 120
      Height = 21
      DataField = 'Date'
      DataSource = dsConsegna
      ShowNullDate = False
      TabOrder = 1
    end
  end
  object JanuaVCLGeoMapsCustomer: TJanuaVCLGeoMaps
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    ApiKey = 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
    Left = 464
    Top = 408
  end
  object JanuaVCLGeoMapsCompany: TJanuaVCLGeoMaps
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    ApiKey = 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
    Left = 216
    Top = 320
  end
  object fdmRitiro: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 592
    Top = 216
    object fdmRitiroDate: TDateField
      FieldName = 'Date'
    end
    object fdmRitiroSelected: TBooleanField
      FieldName = 'Selected'
    end
    object fdmRitiroTime: TStringField
      FieldName = 'Time'
    end
  end
  object fdmConsegna: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'Date'
        DataType = ftDate
      end
      item
        Name = 'Selected'
        DataType = ftBoolean
      end
      item
        Name = 'Time'
        DataType = ftString
        Size = 20
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
    Left = 952
    Top = 240
    Content = {
      41444253100000006A010000FF00010001FF02FF03040016000000660064006D
      0043006F006E007300650067006E00610005000A0000005400610062006C0065
      00060000000000070000080032000000090000FF0AFF0B040008000000440061
      007400650005000800000044006100740065000C00010000000E000D000F0001
      1000011100011200011300011400011500080000004400610074006500FEFF0B
      040010000000530065006C006500630074006500640005001000000053006500
      6C00650063007400650064000C00020000000E0016000F000110000111000112
      0001130001140001150010000000530065006C0065006300740065006400FEFF
      0B040008000000540069006D006500050008000000540069006D0065000C0003
      0000000E0017001800140000000F000110000111000112000113000114000115
      0008000000540069006D006500190014000000FEFEFF1AFEFF1BFEFF1CFEFEFE
      FF1DFEFF1EFF1FFEFEFE0E004D0061006E0061006700650072001E0055007000
      6400610074006500730052006500670069007300740072007900120054006100
      62006C0065004C006900730074000A005400610062006C00650008004E006100
      6D006500140053006F0075007200630065004E0061006D0065000A0054006100
      620049004400240045006E0066006F0072006300650043006F006E0073007400
      7200610069006E00740073001E004D0069006E0069006D0075006D0043006100
      700061006300690074007900180043006800650063006B004E006F0074004E00
      75006C006C00140043006F006C0075006D006E004C006900730074000C004300
      6F006C0075006D006E00100053006F007500720063006500490044000C006400
      7400440061007400650010004400610074006100540079007000650014005300
      65006100720063006800610062006C006500120041006C006C006F0077004E00
      75006C006C000800420061007300650014004F0041006C006C006F0077004E00
      75006C006C0012004F0049006E0055007000640061007400650010004F004900
      6E00570068006500720065001A004F0072006900670069006E0043006F006C00
      4E0061006D00650012006400740042006F006F006C00650061006E0018006400
      740041006E007300690053007400720069006E0067000800530069007A006500
      140053006F007500720063006500530069007A0065001C0043006F006E007300
      74007200610069006E0074004C00690073007400100056006900650077004C00
      6900730074000E0052006F0077004C006900730074001800520065006C006100
      740069006F006E004C006900730074001C005500700064006100740065007300
      4A006F00750072006E0061006C000E004300680061006E00670065007300}
    object fdmConsegnaDate: TDateField
      FieldName = 'Date'
    end
    object fdmConsegnaSelected: TBooleanField
      FieldName = 'Selected'
    end
    object fdmConsegnaTime: TStringField
      FieldName = 'Time'
    end
  end
  object dsRitiro: TDataSource
    DataSet = fdmRitiro
    Left = 648
    Top = 192
  end
  object dsConsegna: TDataSource
    DataSet = fdmConsegna
    Left = 1016
    Top = 216
  end
  object pmStyle: TPopupMenu
    Left = 416
    Top = 144
    object pmStyle1: TMenuItem
      Caption = 'Stile'
      OnClick = pmStyle1Click
    end
  end
end
