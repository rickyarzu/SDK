object frameUniGuiCarBookingClient: TframeUniGuiCarBookingClient
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  Font.Height = -12
  TabOrder = 0
  object cntCarBookingClient: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    object dblcbAnagraphCustomers: TUniFSComboBox
      AlignWithMargins = True
      Left = 10
      Top = 51
      Width = 620
      Height = 23
      Hint = ''
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Text = 'Seleziona Cliente'
      Align = alTop
      TabOrder = 1
      AnyMatch = True
      IconItems = <>
      OnChange = dblcbAnagraphCustomersChange
      Value = '-1'
    end
    object edCarModel: TUniEdit
      AlignWithMargins = True
      Left = 10
      Top = 288
      Width = 620
      Hint = ''
      Margins.Left = 10
      Margins.Top = 30
      Margins.Right = 10
      Text = ''
      Align = alTop
      TabOrder = 2
      FieldLabel = 'Modello Veicolo'
      FieldLabelAlign = laTop
    end
    object lbSelectCustomer: TUniLabel
      AlignWithMargins = True
      Left = 10
      Top = 30
      Width = 620
      Height = 13
      Hint = ''
      Margins.Left = 10
      Margins.Top = 30
      Margins.Right = 10
      AutoSize = False
      Caption = 'Seleziona Scheda Cliente precedente'
      Align = alTop
      ParentColor = False
      Color = clBtnFace
      TabOrder = 3
    end
    object UniContainerPanel1: TUniContainerPanel
      AlignWithMargins = True
      Left = 7
      Top = 80
      Width = 626
      Height = 57
      Hint = ''
      Margins.Left = 7
      Margins.Right = 7
      ParentColor = False
      Align = alTop
      TabOrder = 4
      object UniContainerPanel6: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 209
        Height = 57
        Hint = ''
        ParentColor = False
        Align = alLeft
        TabOrder = 0
        object edFirstName: TUniEdit
          AlignWithMargins = True
          Left = 3
          Top = 32
          Width = 203
          Hint = ''
          Text = ''
          Align = alBottom
          TabOrder = 0
          EmptyText = 'Nome'
        end
      end
      object UniContainerPanel7: TUniContainerPanel
        Left = 209
        Top = 0
        Width = 417
        Height = 57
        Hint = ''
        ParentColor = False
        Align = alClient
        TabOrder = 2
        object EdLastName: TUniEdit
          AlignWithMargins = True
          Left = 3
          Top = 32
          Width = 411
          Hint = ''
          Text = ''
          Align = alBottom
          TabOrder = 1
          EmptyText = 'Cognome Cliente'
        end
      end
    end
    object UniContainerPanel2: TUniContainerPanel
      AlignWithMargins = True
      Left = 7
      Top = 143
      Width = 626
      Height = 50
      Hint = ''
      Margins.Left = 7
      Margins.Right = 7
      ParentColor = False
      Align = alTop
      TabOrder = 5
      object UniContainerPanel8: TUniContainerPanel
        Left = 538
        Top = 0
        Width = 88
        Height = 50
        Hint = ''
        ParentColor = False
        Align = alRight
        TabOrder = 1
        object btnSearch: TUniFSButton
          AlignWithMargins = True
          Left = 3
          Top = 17
          Width = 82
          Height = 30
          Hint = ''
          StyleButton = GoogleGreen
          BadgeText.Text = '0'
          BadgeText.TextColor = '#FFFFFF'
          BadgeText.TextSize = 10
          BadgeText.TextStyle = 'bold'
          BadgeText.BackgroundColor = '#D50000'
          Caption = 'Cerca'
          Align = alBottom
          ParentFont = False
          Font.Color = clWhite
          Font.Height = -15
          TabOrder = 1
          ScreenMask.Enabled = True
          ScreenMask.WaitData = True
          ScreenMask.Message = 'Autenticando...'
          ImageIndex = 0
          OnClick = btnSearchClick
        end
      end
      object UniContainerPanel9: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 538
        Height = 50
        Hint = ''
        ParentColor = False
        Align = alClient
        TabOrder = 2
        object EdFullAddress: TUniEdit
          AlignWithMargins = True
          Left = 3
          Top = 25
          Width = 532
          Hint = ''
          Text = ''
          Align = alBottom
          TabOrder = 1
          EmptyText = 
            'Indirizzo Cliente (Digita l'#39'indirizzo cercheremo l'#39'indirizzo tra' +
            'mite Google)'
          OnExit = EdFullAddressExit
          OnEnter = EdFullAddressEnter
        end
      end
    end
    object UniContainerPanel3: TUniContainerPanel
      AlignWithMargins = True
      Left = 7
      Top = 199
      Width = 626
      Height = 56
      Hint = ''
      Margins.Left = 7
      Margins.Right = 7
      ParentColor = False
      Align = alTop
      TabOrder = 6
      object UniContainerPanel10: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 129
        Height = 56
        Hint = ''
        ParentColor = False
        Align = alLeft
        TabOrder = 1
        object EdCustomerPhone: TUniEdit
          AlignWithMargins = True
          Left = 3
          Top = 31
          Width = 123
          Hint = ''
          Text = ''
          Align = alBottom
          TabOrder = 1
          EmptyText = 'Telefono Cliente'
        end
      end
      object UniContainerPanel11: TUniContainerPanel
        Left = 129
        Top = 0
        Width = 497
        Height = 56
        Hint = ''
        ParentColor = False
        Align = alClient
        TabOrder = 2
        object edCustomerEmail: TUniEdit
          AlignWithMargins = True
          Left = 3
          Top = 31
          Width = 491
          Hint = ''
          Text = ''
          Align = alBottom
          TabOrder = 1
          EmptyText = 'Mail cliente'
        end
      end
    end
    object UniContainerPanel4: TUniContainerPanel
      AlignWithMargins = True
      Left = 7
      Top = 316
      Width = 626
      Height = 57
      Hint = ''
      Margins.Left = 7
      Margins.Right = 7
      ParentColor = False
      Align = alTop
      TabOrder = 7
      object UniContainerPanel12: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 57
        Hint = ''
        ParentColor = False
        Align = alLeft
        TabOrder = 1
        object edCarNumberPlate: TUniEdit
          AlignWithMargins = True
          Left = 3
          Top = 32
          Width = 179
          Hint = ''
          Text = ''
          Align = alBottom
          TabOrder = 1
          EmptyText = 'Targa Veicolo'
        end
      end
      object UniContainerPanel13: TUniContainerPanel
        Left = 185
        Top = 0
        Width = 441
        Height = 57
        Hint = ''
        ParentColor = False
        Align = alClient
        TabOrder = 2
        object edCarColor: TUniEdit
          AlignWithMargins = True
          Left = 3
          Top = 32
          Width = 435
          Hint = ''
          Text = ''
          Align = alBottom
          TabOrder = 1
          EmptyText = 'Colore Veicolo '
        end
      end
    end
    object UniContainerPanel5: TUniContainerPanel
      AlignWithMargins = True
      Left = 7
      Top = 379
      Width = 626
      Height = 60
      Hint = ''
      Margins.Left = 7
      Margins.Right = 7
      ParentColor = False
      Align = alTop
      TabOrder = 8
      object UniContainerPanel14: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 538
        Height = 60
        Hint = ''
        ParentColor = False
        Align = alClient
        TabOrder = 1
        object edReturnAddress: TUniEdit
          AlignWithMargins = True
          Left = 3
          Top = 35
          Width = 532
          Hint = ''
          Text = ''
          Align = alBottom
          TabOrder = 1
          EmptyText = 
            'Indirizzo di Ritorno, da indicare se si richiede la restituzione' +
            ' in un luogo differente'
          OnExit = edReturnAddressExit
          OnEnter = edReturnAddressEnter
        end
      end
      object UniContainerPanel15: TUniContainerPanel
        Left = 538
        Top = 0
        Width = 88
        Height = 60
        Hint = ''
        ParentColor = False
        Align = alRight
        TabOrder = 2
        object btnReturnAddress: TUniFSButton
          AlignWithMargins = True
          Left = 3
          Top = 27
          Width = 82
          Height = 30
          Hint = ''
          StyleButton = GoogleGreen
          BadgeText.Text = '0'
          BadgeText.TextColor = '#FFFFFF'
          BadgeText.TextSize = 10
          BadgeText.TextStyle = 'bold'
          BadgeText.BackgroundColor = '#D50000'
          Caption = 'Cerca'
          Align = alBottom
          ParentFont = False
          Font.Color = clWhite
          Font.Height = -15
          TabOrder = 1
          ScreenMask.Enabled = True
          ScreenMask.WaitData = True
          ScreenMask.Message = 'Autenticando...'
          ImageIndex = 0
          OnClick = btnReturnAddressClick
        end
      end
    end
  end
end
