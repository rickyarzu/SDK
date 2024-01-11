inherited frameUniGUIAnagraphHorizontal: TframeUniGUIAnagraphHorizontal
  ClientHeight = 255
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 294
  TextHeight = 15
  inherited cntTop: TUniContainerPanel
    Width = 511
    Height = 255
    Align = alLeft
    ExplicitWidth = 511
    ExplicitHeight = 255
    inherited UniContainerPanel01: TUniContainerPanel
      Width = 505
      Height = 57
      ExplicitWidth = 505
      ExplicitHeight = 57
      inherited lbProfileCompanyName: TUniLabel
        Width = 499
        Margins.Bottom = 6
        ExplicitWidth = 499
      end
      inherited edtProfileCompanyName: TUniEdit
        Top = 27
        Width = 499
        Height = 26
        Margins.Top = 5
        Margins.Bottom = 4
        Align = alClient
        ExplicitTop = 27
        ExplicitWidth = 499
        ExplicitHeight = 26
      end
    end
    inherited UniContainerPanel02: TUniContainerPanel
      Top = 66
      Width = 505
      Height = 57
      ExplicitTop = 66
      ExplicitWidth = 505
      ExplicitHeight = 57
      inherited UniContainerPanel3: TUniContainerPanel
        Width = 505
        Height = 38
        Align = alClient
        ExplicitWidth = 505
        ExplicitHeight = 38
        inherited edtProfileAddress: TUniEdit
          Width = 418
          Height = 30
          Margins.Bottom = 5
          ExplicitWidth = 418
          ExplicitHeight = 30
        end
        inherited btnSearch: TUniFSButton
          Left = 427
          Height = 30
          Margins.Bottom = 5
          StyleButton = GoogleDanger
          ExplicitLeft = 427
          ExplicitHeight = 30
        end
      end
    end
    inherited UniContainerPanel03: TUniContainerPanel
      AlignWithMargins = True
      Left = 6
      Top = 127
      Width = 499
      Margins.Top = 1
      Margins.Bottom = 0
      ExplicitLeft = 6
      ExplicitTop = 127
      ExplicitWidth = 499
      inherited txtLongitude: TUniLabel
        Top = 1
        Height = 23
        Margins.Top = 1
        Margins.Bottom = 1
        ExplicitTop = 1
        ExplicitHeight = 23
      end
    end
    inherited UniContainerPanel05: TUniContainerPanel
      Top = 155
      Width = 505
      ExplicitTop = 155
      ExplicitWidth = 505
      inherited UniContainerPanel11: TUniContainerPanel
        Width = 505
        ExplicitWidth = 505
        inherited edtAddressNumber: TUniEdit
          Left = 427
          ExplicitLeft = 427
        end
        inherited edAddressPlace: TUniEdit
          Width = 418
          ExplicitWidth = 418
        end
      end
      inherited UniContainerPanel12: TUniContainerPanel
        Width = 505
        ExplicitWidth = 505
        inherited lbAddressNumber: TUniLabel
          Left = 427
          ExplicitLeft = 427
        end
        inherited lbAddressPlace: TUniLabel
          Width = 418
          ExplicitWidth = 418
        end
      end
    end
    object btnSave: TUniFSButton
      AlignWithMargins = True
      Left = 430
      Top = 213
      Width = 78
      Height = 36
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 2
      StyleButton = GoogleGreen
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Salva'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -15
      TabOrder = 5
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Autenticando...'
      Images = UniNativeImageList1
      ImageIndex = 0
      OnClick = btnSearchClick
    end
    object btnUndo: TUniFSButton
      AlignWithMargins = True
      Left = 280
      Top = 213
      Width = 144
      Height = 36
      Hint = ''
      Margins.Top = 0
      Margins.Bottom = 2
      StyleButton = GoogleBlue2
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Annulla Modifiche'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -15
      TabOrder = 6
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Autenticando...'
      Images = UniNativeImageList1
      ImageIndex = 0
      OnClick = btnSearchClick
    end
  end
  inherited cntBottom: TUniContainerPanel
    Left = 511
    Top = 0
    Width = 6
    Height = 255
    Align = alClient
    ExplicitLeft = 511
    ExplicitTop = 0
    ExplicitWidth = 6
    ExplicitHeight = 255
    inherited UniContainerPanel09: TUniContainerPanel
      Width = 0
      ExplicitWidth = 0
      inherited lbEmail: TUniLabel
        Width = 0
        ExplicitWidth = 0
      end
      inherited edtEMail: TUniEdit
        Width = 0
        ExplicitWidth = 0
      end
    end
    inherited UniContainerPanel08: TUniContainerPanel
      Width = 0
      ExplicitWidth = 0
      inherited lbCellularPhone: TUniLabel
        Width = 0
        ExplicitWidth = 0
      end
      inherited edtCellularPhone: TUniEdit
        Width = 0
        ExplicitWidth = 0
      end
    end
    inherited UniContainerPanel07: TUniContainerPanel
      Width = 0
      ExplicitWidth = 0
      inherited lbPhone: TUniLabel
        Width = 0
        ExplicitWidth = 0
      end
      inherited edtPhone: TUniEdit
        Width = 0
        ExplicitWidth = 0
      end
    end
    inherited UniContainerPanel06: TUniContainerPanel
      Width = 0
      ExplicitWidth = 0
      inherited UniContainerPanel5: TUniContainerPanel
        Width = 0
        ExplicitWidth = 0
        inherited lbProvince: TUniLabel
          Left = -53
          ExplicitLeft = -53
        end
        inherited lbTown: TUniLabel
          Width = 384
          ExplicitWidth = 384
        end
      end
      inherited UniContainerPanel6: TUniContainerPanel
        Width = 0
        ExplicitWidth = 0
        inherited edtStateProvinceCode: TUniEdit
          Left = -53
          ExplicitLeft = -53
        end
        inherited edtTown: TUniEdit
          Width = 384
          ExplicitWidth = 384
        end
      end
    end
  end
end
