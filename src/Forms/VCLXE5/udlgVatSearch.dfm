object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Seleziona Iva'
  ClientHeight = 431
  ClientWidth = 189
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline JanuaFrameNavigator1: TJanuaFrameNavigator
    Left = 0
    Top = 0
    Width = 189
    Height = 33
    Align = alTop
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitLeft = -26
    ExplicitTop = 16
    inherited dbFirst: TAdvGlowButton
      ExplicitLeft = 0
    end
    inherited dbLast: TAdvGlowButton
      ExplicitLeft = 99
    end
    inherited dbPrev: TAdvGlowButton
      ExplicitLeft = 33
      ExplicitTop = 0
    end
    inherited dbNext: TAdvGlowButton
      ExplicitLeft = 66
    end
    inherited dbPost: TAdvGlowButton
      Align = alNone
      Visible = False
      ExplicitTop = 0
    end
    inherited DbNew: TAdvGlowButton
      Align = alNone
      Visible = False
      ExplicitLeft = 132
    end
    inherited DbDelate: TAdvGlowButton
      Align = alNone
      Visible = False
      ExplicitLeft = 165
    end
    inherited DbEdit: TAdvGlowButton
      Align = alNone
      Visible = False
      ExplicitLeft = 198
    end
    inherited DbCancel: TAdvGlowButton
      Align = alNone
      Visible = False
      ExplicitLeft = 264
      ExplicitTop = 0
    end
    inherited DbRefresh: TAdvGlowButton
      Align = alNone
      Visible = False
      ExplicitLeft = 297
    end
  end
  object Edit1: TEdit
    Left = 0
    Top = 33
    Width = 189
    Height = 21
    Align = alTop
    TabOrder = 1
    OnEnter = Edit1Enter
    OnExit = Edit1Exit
    ExplicitLeft = 40
    ExplicitTop = 224
    ExplicitWidth = 121
  end
  object Panel1: TPanel
    Left = 0
    Top = 390
    Width = 189
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = 208
    ExplicitWidth = 185
    object AdvGlowButton1: TAdvGlowButton
      Left = 132
      Top = 8
      Width = 51
      Height = 25
      Caption = 'Annulla'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
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
    object AdvGlowButton2: TAdvGlowButton
      Left = 75
      Top = 8
      Width = 51
      Height = 25
      Caption = 'Ok'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
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
  end
  object cdsVat: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 216
    object cdsVatvat_id: TIntegerField
      FieldName = 'vat_id'
    end
    object cdsVatvat_code: TStringField
      FieldName = 'vat_code'
    end
    object cdsVatvat_description: TStringField
      FieldName = 'vat_description'
      Size = 128
    end
    object cdsVatvat_purcent: TFloatField
      FieldName = 'vat_purcent'
    end
  end
end
