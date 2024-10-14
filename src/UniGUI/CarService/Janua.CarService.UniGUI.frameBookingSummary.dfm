object frameUniGUIBookingSummary: TframeUniGUIBookingSummary
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  Font.Height = -12
  TabOrder = 0
  object cntBookingSummary: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    DesignSize = (
      640
      480)
    object btnNewBranch: TUniFSButton
      Left = 487
      Top = 11
      Width = 98
      Height = 28
      Hint = ''
      StyleButton = Success
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Nuova Sede'
      TabOrder = 1
    end
    object btnShowContract: TUniFSButton
      Left = 432
      Top = 292
      Width = 153
      Height = 28
      Hint = ''
      StyleButton = Success
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Vedi Condizioni'
      Anchors = [akLeft, akRight]
      TabOrder = 2
    end
    object cboBranchSelection: TUniFSComboBox
      Left = 8
      Top = 16
      Width = 473
      Height = 23
      Hint = ''
      Visible = False
      Text = 'Ricerca Branca'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      AnyMatch = True
      IconItems = <>
      Value = '-1'
    end
    object ckbConditiions: TUniCheckBox
      Left = 25
      Top = 303
      Width = 264
      Height = 17
      Hint = ''
      Caption = 'Ho letto e accetto le condizioni contrattuali'
      TabOrder = 4
      ClientEvents.ExtEvents.Strings = (
        
          'mouseover=function mouseover(sender, eOpts)'#13#10'{'#13#10'  setCls('#39'text-d' +
          'ecoration:underline'#39');'#13#10'}')
    end
    object grpDelivery: TUniGroupBox
      AlignWithMargins = True
      Left = -8
      Top = 121
      Width = 593
      Height = 64
      Hint = ''
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Consuntivo Viaggio Rientro (Consegna)'
      TabOrder = 5
      object grpDeliveryDirection: TUniRadioGroup
        Left = 288
        Top = 8
        Width = 265
        Height = 49
        Hint = ''
        Items.Strings = (
          'Sede - Cliente'
          'Cliente - Sede')
        Caption = 'Direzione Viaggio'
        TabOrder = 1
        ParentColor = False
        Color = clWindow
        Columns = 2
      end
      object ulbDeliveryDate: TUniLabel
        Left = 45
        Top = 27
        Width = 119
        Height = 15
        Hint = ''
        AutoSize = False
        Caption = 'ulbDate'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 2
      end
      object ulbDeliveryTime: TUniLabel
        Left = 192
        Top = 27
        Width = 51
        Height = 17
        Hint = ''
        Caption = 'ulbTime'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 3
      end
    end
    object grpPickup: TUniGroupBox
      AlignWithMargins = True
      Left = -8
      Top = 46
      Width = 593
      Height = 67
      Hint = ''
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Consuntivo Viaggio Ritiro'
      TabOrder = 6
      object grpPickupDirection: TUniRadioGroup
        Left = 288
        Top = 8
        Width = 265
        Height = 49
        Hint = ''
        Items.Strings = (
          'Sede - Cliente'
          'Cliente - Sede')
        Caption = 'Direzione Viaggio'
        TabOrder = 1
        ParentColor = False
        Color = clWindow
        Columns = 2
      end
      object ulbPickupDate: TUniLabel
        Left = 45
        Top = 27
        Width = 119
        Height = 15
        Hint = ''
        AutoSize = False
        Caption = 'ulbDate'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        ParentColor = False
        Color = clBtnFace
        TabOrder = 2
      end
      object ulbPickupTime: TUniLabel
        Left = 192
        Top = 27
        Width = 51
        Height = 17
        Hint = ''
        Caption = 'ulbTime'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        ParentColor = False
        Color = clBtnFace
        TabOrder = 3
      end
    end
    object htmlBookingSummary: TUniHTMLFrame
      Left = -9
      Top = 192
      Width = 594
      Height = 128
      Hint = ''
    end
  end
  object BookingSummaryUniGUIController1: TBookingSummaryUniGUIController
    Enabled = False
    grpPickup = grpPickup
    grpDelivery = grpDelivery
    grpPickupDirection = grpPickupDirection
    grpDeliveryDirection = grpDeliveryDirection
    ulbPickupDate = ulbPickupDate
    ulbPickupTime = ulbPickupTime
    ulbDeliveryDate = ulbDeliveryDate
    ulbDeliveryTime = ulbDeliveryTime
    cboBranchSelection = cboBranchSelection
    htmlBookingSummary = htmlBookingSummary
    btnNewBranch = btnNewBranch
    ckbConditiions = ckbConditiions
    btnShowContract = btnShowContract
    Left = 260
    Top = 102
  end
end
