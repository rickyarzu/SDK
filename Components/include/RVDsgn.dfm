object frmRVDesign: TfrmRVDesign
  Left = 152
  Top = 54
  BorderStyle = bsDialog
  Caption = 'RichView Settings'
  ClientHeight = 483
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object btnOk: TButton
    Left = 299
    Top = 449
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 379
    Top = 449
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
  object pc: TPageControl
    Left = 7
    Top = 6
    Width = 451
    Height = 435
    ActivePage = tsStyles
    TabOrder = 0
    object tsStyles: TTabSheet
      Caption = 'Styles'
      object Label1: TLabel
        Left = 4
        Top = 111
        Width = 177
        Height = 13
        Caption = 'These settings will change properties:'
      end
      object rg: TRadioGroup
        Left = 4
        Top = 7
        Width = 433
        Height = 98
        Caption = 'Mode'
        Items.Strings = (
          'Use a predefined set of styles'
          'Allow adding styles dynamically'
          'Allow adding styles dynamically + style templates')
        TabOrder = 0
        OnClick = rgClick
      end
      object lv: TListView
        Left = 4
        Top = 128
        Width = 433
        Height = 209
        Color = clInfoBk
        Columns = <>
        ColumnClick = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInfoText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GridLines = True
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        TabOrder = 1
        ViewStyle = vsReport
      end
      object cbStylesDefault: TCheckBox
        Left = 8
        Top = 384
        Width = 97
        Height = 17
        Caption = '&Default'
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = ' RVF '
      object GroupBox1: TGroupBox
        Left = 6
        Top = 5
        Width = 425
        Height = 102
        Caption = 'Optional RVF content'
        TabOrder = 0
        object Label4: TLabel
          Left = 15
          Top = 19
          Width = 127
          Height = 13
          Caption = 'Background (color, image):'
        end
        object Label5: TLabel
          Left = 15
          Top = 39
          Width = 195
          Height = 13
          Caption = 'Layout (margins, min/max text width, etc):'
        end
        object Label6: TLabel
          Left = 15
          Top = 58
          Width = 170
          Height = 13
          Caption = 'DocProperties  and DocParameters:'
        end
        object Label3: TLabel
          Left = 15
          Top = 78
          Width = 56
          Height = 13
          Caption = 'DocObjects'
        end
        object cbRVFSaveBackground: TCheckBox
          Left = 247
          Top = 17
          Width = 70
          Height = 17
          Caption = 'Save'
          TabOrder = 0
        end
        object cbRVFSaveLayout: TCheckBox
          Left = 247
          Top = 37
          Width = 70
          Height = 17
          Caption = 'Save'
          TabOrder = 2
        end
        object cbRVFSaveDocProperties: TCheckBox
          Left = 247
          Top = 56
          Width = 70
          Height = 17
          Caption = 'Save'
          TabOrder = 4
        end
        object cbRVFLoadBackground: TCheckBox
          Left = 340
          Top = 17
          Width = 70
          Height = 17
          Caption = 'Load'
          TabOrder = 1
        end
        object cbRVFLoadLayout: TCheckBox
          Left = 340
          Top = 37
          Width = 70
          Height = 17
          Caption = 'Load'
          TabOrder = 3
        end
        object cbRVFLoadDocProperties: TCheckBox
          Left = 340
          Top = 56
          Width = 70
          Height = 17
          Caption = 'Load'
          TabOrder = 5
        end
        object cbRVFSaveDocObjects: TCheckBox
          Left = 247
          Top = 76
          Width = 70
          Height = 17
          Caption = 'Save'
          TabOrder = 6
        end
        object cbRVFLoadDocObjects: TCheckBox
          Left = 340
          Top = 76
          Width = 70
          Height = 17
          Caption = 'Load'
          TabOrder = 7
        end
      end
      object GroupBox2: TGroupBox
        Left = 5
        Top = 111
        Width = 425
        Height = 124
        Caption = 'RVF saving'
        TabOrder = 1
        object Label2: TLabel
          Left = 16
          Top = 92
          Width = 187
          Height = 13
          Caption = 'Save style templates (if they are saved):'
        end
        object cbRVFBinary: TCheckBox
          Left = 15
          Top = 21
          Width = 385
          Height = 17
          Caption = 'Binary mode (faster, smaller file size)'
          TabOrder = 0
        end
        object cbRVFSavePictures: TCheckBox
          Left = 15
          Top = 42
          Width = 385
          Height = 17
          Caption = 'Save images (if unchecked, use OnRVFPictureNeeded to load)'
          TabOrder = 1
        end
        object cbRVFSaveControls: TCheckBox
          Left = 15
          Top = 62
          Width = 385
          Height = 17
          Caption = 'Save controls (if unchecked, use OnRVFControlNeeded to load)'
          TabOrder = 2
        end
        object cmbSTSaveMode: TComboBox
          Left = 232
          Top = 88
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 3
          Items.Strings = (
            'save completely'
            'save only names')
        end
      end
      object cbRVFDefault: TCheckBox
        Left = 8
        Top = 384
        Width = 97
        Height = 17
        Caption = '&Default'
        TabOrder = 3
      end
      object GroupBox3: TGroupBox
        Left = 5
        Top = 239
        Width = 425
        Height = 135
        Caption = 'On errors in RVF'
        TabOrder = 2
        object cbRVFIgnoreUnknownPictures: TCheckBox
          Left = 15
          Top = 21
          Width = 385
          Height = 17
          Caption = 'Ignore unknown picture formats'
          TabOrder = 0
        end
        object cbRVFIgnoreUnknownControls: TCheckBox
          Left = 15
          Top = 42
          Width = 385
          Height = 17
          Caption = 'Ignore unknown control types'
          TabOrder = 1
        end
        object cbRVFInvStyles: TCheckBox
          Left = 15
          Top = 85
          Width = 385
          Height = 17
          Caption = 
            'Convert invalid style indices to 0 (otherwise - report load erro' +
            'r)'
          TabOrder = 3
        end
        object cbRVFInvImageIndices: TCheckBox
          Left = 15
          Top = 106
          Width = 385
          Height = 17
          Caption = 
            'Convert invalid imagelist indices to 0 (otherwise - report load ' +
            'error)'
          TabOrder = 4
        end
        object cbRVFIgnoreUnknownCtrlProps: TCheckBox
          Left = 15
          Top = 64
          Width = 385
          Height = 17
          Caption = 'Ignore unknown properties of controls'
          TabOrder = 2
        end
      end
    end
  end
end
