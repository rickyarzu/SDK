object frameCarServiceUniGUIBooking: TframeCarServiceUniGUIBooking
  Left = 0
  Top = 0
  Width = 1332
  Height = 540
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  Font.Height = -12
  TabOrder = 0
  AutoScroll = True
  object pnlAddressLocation: TUniSimplePanel
    Left = 0
    Top = 0
    Width = 1332
    Height = 225
    Hint = ''
    ParentColor = False
    Align = alTop
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    AutoScroll = True
    TabOrder = 0
    Layout = 'fit'
    LayoutConfig.Region = 'north'
    ScrollHeight = 225
    ScrollWidth = 1332
    object UniScrollBox1: TUniScrollBox
      Left = 3
      Top = -10
      Width = 1206
      Height = 232
      Hint = ''
      TabOrder = 1
      ScrollHeight = 173
      ScrollWidth = 913
      object dblcbAnagraphCustomers: TUniDBLookupComboBox
        Left = 16
        Top = 29
        Width = 529
        Height = 23
        Hint = ''
        ListField = 'an_last_name; an_name; an_email'
        ListSource = dsUsers
        KeyField = 'anagraph_id'
        ListFieldIndex = 0
        ClearButton = True
        EmptyText = 'Nuovo Cliente'
        TabOrder = 0
        Color = clWindow
        FieldLabel = 'Booking'
        FieldLabelAlign = laTop
        OnChange = dblcbAnagraphCustomersChange
      end
      object dtpPickup: TUniDateTimePicker
        Left = 551
        Top = 29
        Width = 178
        Hint = ''
        DateTime = 44491.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 1
        ClearButton = True
        FieldLabel = 'Data Ritiro'
        FieldLabelAlign = laTop
      end
      object dtpDelivery: TUniDateTimePicker
        Left = 749
        Top = 29
        Width = 164
        Hint = ''
        DateTime = 44491.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        TabOrder = 2
        ClearButton = True
        FieldLabel = 'Data Consegna'
        FieldLabelAlign = laTop
      end
      object lblLatitude: TUniLabel
        Left = 760
        Top = 36
        Width = 3
        Height = 13
        Hint = ''
        Caption = ''
        ParentColor = False
        Color = clBtnFace
        TabOrder = 3
      end
      object lblLOngitude: TUniLabel
        Left = 884
        Top = 37
        Width = 3
        Height = 13
        Hint = ''
        Caption = ''
        ParentColor = False
        Color = clBtnFace
        TabOrder = 4
      end
      object EdLastName: TUniEdit
        Left = 215
        Top = 90
        Width = 266
        Hint = ''
        Text = ''
        TabOrder = 5
        FieldLabel = 'Cognome Cliente'
        FieldLabelAlign = laTop
      end
      object EdFullAddress: TUniEdit
        Left = 487
        Top = 90
        Width = 426
        Hint = ''
        Text = ''
        TabOrder = 6
        FieldLabel = 'Indirizzo Cliente'
        FieldLabelAlign = laTop
      end
      object btnRicerca: TUniSpeedButton
        Left = 919
        Top = 90
        Width = 102
        Height = 22
        Hint = ''
        Visible = False
        Caption = 'Ricerca'
        ParentColor = False
        TabOrder = 7
        TabStop = False
        OnClick = btnRicercaClick
      end
      object edCarNumberPlate: TUniEdit
        Left = 263
        Top = 151
        Width = 145
        Hint = ''
        Text = ''
        TabOrder = 8
        FieldLabel = 'Targa Veicolo'
        FieldLabelAlign = laTop
      end
      object edCarColor: TUniEdit
        Left = 415
        Top = 151
        Width = 138
        Hint = ''
        Text = ''
        TabOrder = 9
        EmptyText = 'Colore Veicolo '
        FieldLabel = 'Colore Veicolo'
        FieldLabelAlign = laTop
      end
      object EdCustomerPhone: TUniEdit
        Left = 559
        Top = 151
        Width = 123
        Hint = ''
        Text = ''
        TabOrder = 10
        FieldLabel = 'Telefono Cliente'
        FieldLabelAlign = laTop
      end
      object edCustomerEmail: TUniEdit
        Left = 688
        Top = 151
        Width = 225
        Hint = ''
        Text = ''
        TabOrder = 11
        FieldLabel = 'Mail cliente'
        FieldLabelAlign = laTop
      end
      object btnPrenota: TUniSpeedButton
        Left = 919
        Top = 151
        Width = 102
        Height = 22
        Hint = ''
        Visible = False
        Caption = 'Prenota'
        ParentColor = False
        TabOrder = 12
        TabStop = False
        OnClick = btnPrenotaClick
      end
      object edFirstName: TUniEdit
        Left = 16
        Top = 90
        Width = 193
        Hint = ''
        Text = ''
        TabOrder = 13
        FieldLabel = 'Nome Cliente'
        FieldLabelAlign = laTop
      end
      object edCarModel: TUniEdit
        Left = 16
        Top = 151
        Width = 241
        Hint = ''
        Text = ''
        TabOrder = 14
        FieldLabel = 'Modello Veicolo'
        FieldLabelAlign = laTop
      end
    end
  end
  object dsRitiro: TDataSource
    Left = 616
    Top = 176
  end
  object dsConsegna: TDataSource
    Left = 704
    Top = 176
  end
  object dsBooking: TUniDataSource
    Left = 544
    Top = 176
  end
  object dsUsers: TUniDataSource
    Left = 432
    Top = 176
  end
end
