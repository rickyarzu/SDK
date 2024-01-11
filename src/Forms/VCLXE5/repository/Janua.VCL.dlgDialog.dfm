object dlgDialogModel: TdlgDialogModel
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'selezionare lo schema di lavoro'
  ClientHeight = 377
  ClientWidth = 611
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TShader
    Left = 0
    Top = 0
    Width = 611
    Height = 49
    Align = alTop
    TabOrder = 0
    FromColor = 16643823
    ToColor = 15784647
    Direction = False
    Version = '1.4.1.0'
  end
  object pnlBottom: TShader
    Left = 0
    Top = 328
    Width = 611
    Height = 49
    Align = alBottom
    TabOrder = 1
    FromColor = 16643823
    ToColor = 15784647
    Direction = False
    Version = '1.4.1.0'
    DesignSize = (
      611
      49)
    object btnOk: TAdvGlowButton
      Left = 503
      Top = 8
      Width = 100
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      ModalResult = 1
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
    object btnCancel: TAdvGlowButton
      Left = 391
      Top = 8
      Width = 100
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = 'Annulla'
      ModalResult = 2
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
  object AdvFormStyler1: TAdvFormStyler
    Style = tsOffice2010Blue
    Left = 288
    Top = 160
  end
  object JanuaFormStyler1: TJanuaFormStyler
    LogToFile = False
    ApplicationType = jatDefault
    Left = 384
    Top = 128
  end
end
