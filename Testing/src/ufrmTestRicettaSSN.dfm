object frmTestRicettaSSN: TfrmTestRicettaSSN
  AlignWithMargins = True
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Dati ricetta SSN'
  ClientHeight = 302
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 179
    Height = 13
    Caption = 'Codice Prenotazione (Codice a Barre)'
  end
  object Label2: TLabel
    Left = 8
    Top = 69
    Width = 39
    Height = 13
    Caption = 'Cogome'
  end
  object Label3: TLabel
    Left = 287
    Top = 69
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label4: TLabel
    Left = 8
    Top = 125
    Width = 67
    Height = 13
    Caption = 'Codice Fiscale'
  end
  object Label6: TLabel
    Left = 8
    Top = 181
    Width = 92
    Height = 13
    Caption = 'Numero Prestazioni'
  end
  object Label7: TLabel
    Left = 120
    Top = 181
    Width = 109
    Height = 13
    Caption = 'Data Emissione Ricetta'
  end
  object Label8: TLabel
    Left = 263
    Top = 181
    Width = 57
    Height = 13
    Caption = 'Tipo Ricetta'
  end
  object Label9: TLabel
    Left = 390
    Top = 13
    Width = 68
    Height = 13
    Caption = 'Sigla Provincia'
  end
  object Label10: TLabel
    Left = 477
    Top = 13
    Width = 53
    Height = 13
    Caption = 'Codice ASL'
  end
  object GroupBox1: TGroupBox
    Left = 175
    Top = 115
    Width = 378
    Height = 62
    Caption = 'Dati Esenzione'
    TabOrder = 7
    object Label5: TLabel
      Left = 112
      Top = 13
      Width = 83
      Height = 13
      Caption = 'Codice Esenzione'
    end
    object ckbExemption: TCheckBox
      Left = 17
      Top = 29
      Width = 89
      Height = 17
      Caption = 'Non Esente'
      TabOrder = 0
    end
    object edExemptionCode: TEdit
      Left = 112
      Top = 32
      Width = 97
      Height = 21
      TabOrder = 1
      TextHint = 'Cod. Esenzione'
    end
    object ckbIncomeExemption: TCheckBox
      Left = 231
      Top = 29
      Width = 130
      Height = 17
      Caption = 'Esente per Reddito'
      TabOrder = 2
    end
  end
  object edFirstBarcode: TEdit
    Left = 8
    Top = 32
    Width = 185
    Height = 21
    TabOrder = 0
    TextHint = 'Primo Codice a Barre'
  end
  object edLastBarcode: TEdit
    Left = 199
    Top = 32
    Width = 185
    Height = 21
    TabOrder = 1
    TextHint = 'Secondo Codice  a Barre'
  end
  object edLastName: TEdit
    Left = 8
    Top = 88
    Width = 273
    Height = 21
    TabOrder = 4
    TextHint = 'Scrivere qui il cognome'
  end
  object edFirstName: TEdit
    Left = 287
    Top = 88
    Width = 266
    Height = 21
    TabOrder = 5
    TextHint = 'Scrivere qui il proprio nome'
  end
  object edFiscalCode: TEdit
    Left = 8
    Top = 144
    Width = 161
    Height = 21
    TabOrder = 6
    TextHint = 'Codice Fiscale Italiano'
  end
  object advSpinPrestazioni: TSpinEdit
    Left = 8
    Top = 200
    Width = 92
    Height = 22
    MaxValue = 1
    MinValue = 0
    TabOrder = 8
    Value = 1
  end
  object edPrescriptionDate: TJvDateEdit
    Left = 120
    Top = 200
    Width = 121
    Height = 21
    ShowNullDate = False
    TabOrder = 9
  end
  object edPrescriptionType: TEdit
    Left = 263
    Top = 200
    Width = 57
    Height = 21
    TabOrder = 10
  end
  object grpPrescriptionPriority: TDBRadioGroup
    Left = 338
    Top = 183
    Width = 218
    Height = 50
    Caption = 'Priorit'#224' della prestazione'
    Columns = 4
    Items.Strings = (
      'U'
      'B'
      'D'
      'P')
    TabOrder = 11
  end
  object AdvGlowButton1: TAdvGlowButton
    Left = 453
    Top = 248
    Width = 100
    Height = 41
    Caption = 'Registra'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 12
    OnClick = AdvGlowButton1Click
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16367008
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = 16117985
    Appearance.ColorHotTo = 16372402
    Appearance.ColorMirrorHot = 16107693
    Appearance.ColorMirrorHotTo = 16775412
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16102556
    Appearance.ColorMirrorCheckedTo = 16768988
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
  object edProvince: TEdit
    Left = 390
    Top = 32
    Width = 68
    Height = 21
    TabOrder = 2
    TextHint = 'Sigla'
  end
  object edCodAsl: TEdit
    Left = 477
    Top = 32
    Width = 59
    Height = 21
    TabOrder = 3
    TextHint = 'Codice'
  end
end
