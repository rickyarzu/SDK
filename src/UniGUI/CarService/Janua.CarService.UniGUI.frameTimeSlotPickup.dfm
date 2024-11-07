object frameUniGUITimeSlotPickup: TframeUniGUITimeSlotPickup
  Left = 0
  Top = 0
  Width = 321
  Height = 274
  OnCreate = FormCreate
  Anchors = [akLeft, akTop, akRight, akBottom]
  Font.Height = -12
  TabOrder = 0
  object ulbPickupDate: TUniLabel
    Left = 0
    Top = 0
    Width = 321
    Height = 25
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Seleziona Ora Ritiro'
    Align = alTop
    ParentFont = False
    Font.Height = -19
    ParentColor = False
    Color = clBtnFace
    TabOrder = 0
  end
  object PickupDate: TUniDateTimePicker
    Left = 94
    Top = 47
    Width = 120
    Hint = ''
    DateTime = 44679.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 1
    OnChange = PickupDateChange
  end
  object ulbDate: TUniLabel
    Left = 6
    Top = 83
    Width = 86
    Height = 15
    Hint = ''
    AutoSize = False
    Caption = 'Data'
    ParentColor = False
    Color = clBtnFace
    TabOrder = 2
  end
  object lbPickup: TUniLabel
    Left = 131
    Top = 83
    Width = 27
    Height = 15
    Hint = ''
    AutoSize = False
    Caption = 'Ritiro'
    ParentColor = False
    Color = clBtnFace
    TabOrder = 4
  end
  object lbDelivery: TUniLabel
    Left = 180
    Top = 83
    Width = 62
    Height = 15
    Hint = ''
    AutoSize = False
    Caption = 'Consegna'
    ParentColor = False
    Color = clBtnFace
    TabOrder = 3
  end
  object pnlCarServiceSlotSelection: TUniSimplePanel
    Left = 3
    Top = 104
    Width = 314
    Height = 156
    Hint = ''
    ParentColor = False
    TabOrder = 5
    inline frameCarServiceSlotSelection1: TframeCarServiceSlotSelection
      Left = 0
      Top = 0
      Width = 314
      Height = 156
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Height = -12
      TabOrder = 0
      Background.Picture.Data = {00}
      ExplicitWidth = 314
      ExplicitHeight = 156
      inherited pnlTimeSelect1: TUniSimplePanel
        Width = 314
        ExplicitWidth = 314
        inherited frameTimeSelect1: TframeTimeSelect
          ExplicitWidth = 606
          ExplicitHeight = 32
        end
      end
      inherited pnlTimeSelect5: TUniSimplePanel
        Width = 314
        ExplicitWidth = 314
      end
      inherited pnlTimeSelect4: TUniSimplePanel
        Width = 314
        ExplicitWidth = 314
        inherited frameTimeSelect4: TframeTimeSelect
          ExplicitWidth = 606
          ExplicitHeight = 32
        end
      end
      inherited pnlTimeSelect3: TUniSimplePanel
        Width = 314
        ExplicitWidth = 314
        inherited frameTimeSelect3: TframeTimeSelect
          ExplicitWidth = 606
          ExplicitHeight = 32
        end
      end
      inherited pnlTimeSelect2: TUniSimplePanel
        Width = 314
        ExplicitWidth = 314
        inherited frameTimeSelect2: TframeTimeSelect
          ExplicitWidth = 606
          ExplicitHeight = 32
        end
      end
      inherited pnlTimeSelect6: TUniSimplePanel
        Width = 314
        ExplicitWidth = 314
        inherited frameTimeSelect6: TframeTimeSelect
          ExplicitWidth = 606
          ExplicitHeight = 32
        end
      end
    end
  end
end
