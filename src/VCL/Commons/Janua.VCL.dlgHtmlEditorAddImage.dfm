object dlgVCLHtmlEditorAddImage: TdlgVCLHtmlEditorAddImage
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Add Image'
  ClientHeight = 317
  ClientWidth = 548
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 16
    Height = 13
    Caption = 'File'
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 32
    Height = 13
    Caption = 'or URL'
  end
  object SelectFileBtn: TSpeedButton
    Left = 513
    Top = 34
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SelectFileBtnClick
  end
  object Label3: TLabel
    Left = 280
    Top = 184
    Width = 28
    Height = 13
    Caption = 'Width'
  end
  object Label4: TLabel
    Left = 280
    Top = 229
    Width = 31
    Height = 13
    Caption = 'Height'
  end
  object FileNameEdit: TEdit
    Left = 24
    Top = 35
    Width = 489
    Height = 21
    TabOrder = 0
    TextHint = 'File Name'
  end
  object URLEdit: TEdit
    Left = 24
    Top = 91
    Width = 512
    Height = 21
    TabOrder = 1
    TextHint = 'http://'
  end
  object RadioGroup1: TRadioGroup
    Left = 24
    Top = 132
    Width = 209
    Height = 149
    Caption = 'Align'
    TabOrder = 2
  end
  object AlignInline: TRadioButton
    Left = 40
    Top = 157
    Width = 113
    Height = 17
    Caption = 'Inline'
    Checked = True
    TabOrder = 3
    TabStop = True
    OnClick = AlignBackgroundClick
  end
  object AlignLeft: TRadioButton
    Left = 40
    Top = 180
    Width = 113
    Height = 17
    Caption = 'Left'
    TabOrder = 4
    OnClick = AlignBackgroundClick
  end
  object AlignRight: TRadioButton
    Left = 40
    Top = 203
    Width = 113
    Height = 17
    Caption = 'Right'
    TabOrder = 5
    OnClick = AlignBackgroundClick
  end
  object OKBtn: TButton
    Left = 359
    Top = 284
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 6
  end
  object CancelBtn: TButton
    Left = 454
    Top = 284
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 7
  end
  object WidthEdit: TSpinEdit
    Left = 320
    Top = 176
    Width = 97
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 0
  end
  object AlignBackground: TRadioButton
    Left = 40
    Top = 226
    Width = 113
    Height = 17
    Caption = 'Set as background'
    TabOrder = 9
    OnClick = AlignBackgroundClick
  end
  object HeightEdit: TSpinEdit
    Left = 320
    Top = 221
    Width = 97
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 10
    Value = 0
  end
  object ElementCombo: TComboBox
    Left = 72
    Top = 249
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 11
    Visible = False
  end
  object EmbedBox: TCheckBox
    Left = 280
    Top = 132
    Width = 177
    Height = 17
    Caption = 'Embed image into document'
    TabOrder = 12
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Images'
        FileMask = '*.jpg;*.jpeg;*.png;*.bmp;*.gif'
      end
      item
        DisplayName = 'All Files'
        FileMask = '*.*'
      end>
    Options = [fdoFileMustExist, fdoForcePreviewPaneOn]
    Title = 'Select Image File'
    Left = 120
    Top = 64
  end
end
