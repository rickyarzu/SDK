object dlgUniGUICarServiceCustomerVehicles: TdlgUniGUICarServiceCustomerVehicles
  Left = 0
  Top = 0
  ClientHeight = 423
  ClientWidth = 551
  Caption = 'Seleziona Veicolo Cliente'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  TextHeight = 15
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 378
    Width = 551
    Height = 45
    Hint = ''
    ParentColor = False
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 272
    ExplicitWidth = 424
    object btnOK: TUniFSButton
      AlignWithMargins = True
      Left = 407
      Top = 5
      Width = 141
      Height = 35
      Hint = ''
      Margins.Top = 5
      Margins.Bottom = 5
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'OK'
      Align = alRight
      ParentFont = False
      Font.Height = -13
      Font.Name = 'Roboto'
      TabOrder = 1
      OnClick = btnOKClick
      ExplicitLeft = 280
      ExplicitTop = 3
      ExplicitHeight = 47
    end
    object btnUndo: TUniFSButton
      AlignWithMargins = True
      Left = 260
      Top = 5
      Width = 141
      Height = 35
      Hint = ''
      Margins.Top = 5
      Margins.Bottom = 5
      StyleButton = GoogleBlue
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Annulla'
      Align = alRight
      ParentFont = False
      Font.Height = -13
      Font.Name = 'Roboto'
      TabOrder = 2
      OnClick = btnUndoClick
      ExplicitLeft = 280
      ExplicitTop = 3
      ExplicitHeight = 47
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 551
    Height = 378
    Hint = ''
    DataSource = dsCustomerVehicles
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
    Columns = <
      item
        FieldName = 'vehicle_model'
        Title.Caption = 'Modello'
        Width = 200
      end
      item
        FieldName = 'vehicle_color'
        Title.Caption = 'Colore'
        Width = 160
      end
      item
        FieldName = 'vehicle_numberplate'
        Title.Caption = 'Targa'
        Width = 130
      end>
  end
  object dsCustomerVehicles: TDataSource
    DataSet = dmPgCarServiceBookingStorage.qryCustomerVehicles
    Left = 96
    Top = 80
  end
end
