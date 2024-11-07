object frameUniGUICarServiceAddressSelect: TframeUniGUICarServiceAddressSelect
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  Font.Height = -12
  TabOrder = 0
  object cntAddressSelect: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    object UniContainerPanel1: TUniContainerPanel
      AlignWithMargins = True
      Left = 3
      Top = 22
      Width = 634
      Height = 33
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 1
      object cboAddressSelection: TUniFSComboBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 543
        Height = 27
        Hint = ''
        Text = 'Ricerca Indirizzi Service'
        Align = alClient
        ParentFont = False
        Font.Height = -13
        TabOrder = 1
        AnyMatch = True
        IconItems = <>
        OnCloseUp = cboAddressSelectionCloseUp
        Value = '-1'
      end
      object btnNewBranch: TUniFSButton
        Left = 549
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
      Width = 631
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
      Width = 631
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
      Width = 631
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
      Width = 634
      Height = 160
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 5
      object cntframeTimeTablePickup: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 634
        Height = 160
        Hint = ''
        ParentColor = False
        Align = alClient
        TabOrder = 1
        inline frameTimeTableDelivery: TframeCarServiceUniGUITimeTable
          Left = 0
          Top = 0
          Width = 634
          Height = 160
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          Background.Picture.Data = {00}
          ExplicitWidth = 634
          ExplicitHeight = 160
          inherited cntTimeTable: TUniContainerPanel
            Width = 634
            Height = 160
            ExplicitWidth = 634
            ExplicitHeight = 160
            inherited pnlTop: TUniContainerPanel
              Width = 634
              ExplicitWidth = 634
              inherited lbTimeTableType: TUniLabel
                Width = 34
                Caption = 'Ritiro'
                ExplicitWidth = 34
              end
            end
            inherited UniContainerPanel2: TUniContainerPanel
              Width = 634
              ExplicitWidth = 634
              inherited cboPickup: TUniComboBox
                Width = 614
                ExplicitWidth = 614
              end
            end
            inherited UniContainerPanel3: TUniContainerPanel
              Width = 634
              ExplicitWidth = 634
              inherited cboReturn: TUniComboBox
                Width = 614
                ExplicitWidth = 614
              end
              inherited lbVehiclePickupPlace: TUniLabel
                Width = 614
                ExplicitWidth = 614
              end
            end
          end
        end
      end
    end
    object pnlTimeTableDelivery: TUniSimplePanel
      AlignWithMargins = True
      Left = 3
      Top = 279
      Width = 634
      Height = 151
      Hint = ''
      ParentColor = False
      Align = alTop
      TabOrder = 6
      object cntTimeTableDelivery: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 634
        Height = 151
        Hint = ''
        ParentColor = False
        Align = alClient
        TabOrder = 1
        inline frameTimeTablePickup: TframeCarServiceUniGUITimeTable
          Left = 0
          Top = 0
          Width = 634
          Height = 151
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          Background.Picture.Data = {00}
          ExplicitWidth = 634
          ExplicitHeight = 151
          inherited cntTimeTable: TUniContainerPanel
            Width = 634
            Height = 151
            ExplicitWidth = 634
            ExplicitHeight = 151
            inherited pnlTop: TUniContainerPanel
              Width = 634
              ExplicitWidth = 634
              inherited lbTimeTableType: TUniLabel
                Width = 70
                Caption = 'Riconsegna'
                ExplicitWidth = 70
              end
            end
            inherited UniContainerPanel2: TUniContainerPanel
              Width = 634
              ExplicitWidth = 634
              inherited cboPickup: TUniComboBox
                Width = 614
                ExplicitWidth = 614
              end
            end
            inherited UniContainerPanel3: TUniContainerPanel
              Width = 634
              ExplicitWidth = 634
              inherited cboReturn: TUniComboBox
                Width = 614
                ExplicitWidth = 614
              end
              inherited lbVehiclePickupPlace: TUniLabel
                Width = 614
                ExplicitWidth = 614
              end
            end
          end
        end
      end
    end
  end
end
