inherited frmDBRVDesign: TfrmDBRVDesign
  Caption = 'DBRichViewEdit Properties'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pc: TPageControl
    ActivePage = TabSheet3
    object TabSheet3: TTabSheet
      Caption = 'DB'
      ImageIndex = 3
      object Label7: TLabel
        Left = 12
        Top = 121
        Width = 66
        Height = 13
        Caption = 'Store data as:'
      end
      object GroupBox4: TGroupBox
        Left = 6
        Top = 13
        Width = 425
        Height = 99
        Caption = 'DB Options'
        TabOrder = 0
        object cbDBAutoDeleteUnusedStyles: TCheckBox
          Left = 15
          Top = 26
          Width = 393
          Height = 17
          Caption = 'Auto-delete unused styles'
          TabOrder = 0
        end
        object cbDBReadOnly: TCheckBox
          Left = 15
          Top = 46
          Width = 393
          Height = 17
          Caption = 'Read-only'
          TabOrder = 1
        end
        object cbDBEscape: TCheckBox
          Left = 15
          Top = 65
          Width = 393
          Height = 17
          Caption = 'ESCAPE cancels editing'
          TabOrder = 2
        end
      end
      object cmbDBFieldFormat: TComboBox
        Left = 12
        Top = 141
        Width = 243
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        Items.Strings = (
          'RVF (RichView format)'
          'RTF (Rich text format)'
          'Text')
      end
    end
  end
end
