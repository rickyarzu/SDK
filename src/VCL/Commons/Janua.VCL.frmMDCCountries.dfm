object frmVCLMDCCountries: TfrmVCLMDCCountries
  Left = 0
  Top = 0
  Caption = 'Countries Regions Configuration'
  ClientHeight = 749
  ClientWidth = 1050
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlCountries: TPanel
    Left = 0
    Top = 0
    Width = 340
    Height = 749
    Align = alLeft
    TabOrder = 0
    object lbCountryCode: TLabel
      Left = 16
      Top = 471
      Width = 28
      Height = 15
      Caption = 'Code'
      FocusControl = edCountryCode
    end
    object lbCountryC2: TLabel
      Left = 50
      Top = 471
      Width = 14
      Height = 15
      Caption = 'C2'
      FocusControl = edCountryCode2
    end
    object Label1: TLabel
      Left = 79
      Top = 471
      Width = 28
      Height = 15
      Caption = 'Code'
      FocusControl = edCountryName
    end
    object grdCountries: TCRDBGrid
      Left = 1
      Top = 1
      Width = 338
      Height = 464
      Align = alTop
      DataSource = dmPublic.dsCountries
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'country_id'
          Title.Caption = 'ID'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'iso_country_code'
          Title.Caption = 'Code'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'country_name'
          Title.Caption = 'Name'
          Width = 200
          Visible = True
        end>
    end
    object edCountryCode: TDBEdit
      Left = 16
      Top = 492
      Width = 28
      Height = 23
      DataField = 'iso_country_code'
      DataSource = dmPublic.dsCountries
      TabOrder = 1
    end
    object edCountryCode2: TDBEdit
      Left = 50
      Top = 492
      Width = 23
      Height = 23
      DataField = 'iso_country_code2'
      DataSource = dmPublic.dsCountries
      TabOrder = 2
    end
    object edCountryName: TDBEdit
      Left = 79
      Top = 492
      Width = 250
      Height = 23
      DataField = 'iso_country_code'
      DataSource = dmPublic.dsCountries
      TabOrder = 3
    end
    object btnCountryText: TButton
      Left = 16
      Top = 528
      Width = 91
      Height = 41
      Caption = 'Text'
      TabOrder = 4
    end
    object btnCountryImage: TButton
      Left = 121
      Top = 528
      Width = 96
      Height = 41
      Caption = 'Image'
      TabOrder = 5
    end
    object btnTranslations: TButton
      Left = 233
      Top = 528
      Width = 96
      Height = 41
      Caption = 'Translations'
      TabOrder = 6
    end
  end
end
