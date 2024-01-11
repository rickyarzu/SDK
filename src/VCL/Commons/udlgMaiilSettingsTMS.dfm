object dlgMaiilSettingsTMS: TdlgMaiilSettingsTMS
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Gestione Account Mail'
  ClientHeight = 320
  ClientWidth = 595
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
  object Shader1: TShader
    Left = 0
    Top = 0
    Width = 595
    Height = 320
    Align = alClient
    TabOrder = 0
    FromColor = clWhite
    ToColor = 15590880
    Direction = False
    Version = '1.4.2.0'
    ExplicitWidth = 583
    ExplicitHeight = 287
    DesignSize = (
      595
      320)
    object Label1: TLabel
      Left = 24
      Top = 28
      Width = 140
      Height = 13
      Caption = 'Server Address (DNS or TNS)'
    end
    object lbIP: TLabel
      Left = 515
      Top = 51
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = '0.0.0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 391
      Top = 51
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'IP Address:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbDNDSuccess: TLabel
      Left = 216
      Top = 51
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'IP Address:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 424
      Top = 84
      Width = 59
      Height = 13
      Caption = 'Server Port:'
    end
    object Label5: TLabel
      Left = 24
      Top = 164
      Width = 48
      Height = 13
      Caption = 'Username'
    end
    object Label6: TLabel
      Left = 24
      Top = 204
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object edServerAddress: TEdit
      Left = 184
      Top = 24
      Width = 377
      Height = 21
      TabOrder = 0
      TextHint = 'Type Here the server Name'
    end
    object edPort: TDBAdvEdit
      Left = 496
      Top = 81
      Width = 65
      Height = 21
      DefaultHandling = True
      EditAlign = eaRight
      EditType = etNumeric
      EmptyTextStyle = []
      FocusAlign = eaRight
      MaxValue = 65535
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 1
      Text = '0'
      Visible = True
      Version = '3.4.3.2'
    end
    object edUsername: TEdit
      Left = 184
      Top = 161
      Width = 377
      Height = 21
      TabOrder = 2
      TextHint = 'Type Here username of the Database'
    end
    object edPassword: TEdit
      Left = 184
      Top = 201
      Width = 263
      Height = 21
      TabOrder = 3
      TextHint = 'Type Here Password of the Database'
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 461
      Top = 188
      Width = 100
      Height = 34
      Caption = 'Test'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 4
      Appearance.BorderColor = 13815240
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.BorderColorDisabled = 11316396
      Appearance.ColorTo = 15590880
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15658734
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 7131391
      Appearance.ColorDownTo = 8122111
      Appearance.ColorHot = 9102333
      Appearance.ColorHotTo = 14285309
      Appearance.ColorMirror = 15590880
      Appearance.ColorMirrorTo = 15590880
      Appearance.ColorMirrorHot = 14285309
      Appearance.ColorMirrorHotTo = 9102333
      Appearance.ColorMirrorDown = 8122111
      Appearance.ColorMirrorDownTo = 7131391
      Appearance.ColorMirrorChecked = 7131391
      Appearance.ColorMirrorCheckedTo = 7131391
      Appearance.ColorMirrorDisabled = 15658734
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object btnCancel: TAdvGlowButton
      Left = 471
      Top = 265
      Width = 100
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 5
      Appearance.BorderColor = 13815240
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.BorderColorDisabled = 11316396
      Appearance.ColorTo = 15590880
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15658734
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 7131391
      Appearance.ColorDownTo = 8122111
      Appearance.ColorHot = 9102333
      Appearance.ColorHotTo = 14285309
      Appearance.ColorMirror = 15590880
      Appearance.ColorMirrorTo = 15590880
      Appearance.ColorMirrorHot = 14285309
      Appearance.ColorMirrorHotTo = 9102333
      Appearance.ColorMirrorDown = 8122111
      Appearance.ColorMirrorDownTo = 7131391
      Appearance.ColorMirrorChecked = 7131391
      Appearance.ColorMirrorCheckedTo = 7131391
      Appearance.ColorMirrorDisabled = 15658734
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      ExplicitLeft = 461
      ExplicitTop = 255
    end
    object btnOK: TAdvGlowButton
      Left = 357
      Top = 265
      Width = 100
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 6
      Appearance.BorderColor = 13815240
      Appearance.BorderColorHot = 5819121
      Appearance.BorderColorDown = 3181250
      Appearance.BorderColorChecked = 3181250
      Appearance.BorderColorDisabled = 11316396
      Appearance.ColorTo = 15590880
      Appearance.ColorChecked = 14285309
      Appearance.ColorCheckedTo = 7131391
      Appearance.ColorDisabled = 15658734
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 7131391
      Appearance.ColorDownTo = 8122111
      Appearance.ColorHot = 9102333
      Appearance.ColorHotTo = 14285309
      Appearance.ColorMirror = 15590880
      Appearance.ColorMirrorTo = 15590880
      Appearance.ColorMirrorHot = 14285309
      Appearance.ColorMirrorHotTo = 9102333
      Appearance.ColorMirrorDown = 8122111
      Appearance.ColorMirrorDownTo = 7131391
      Appearance.ColorMirrorChecked = 7131391
      Appearance.ColorMirrorCheckedTo = 7131391
      Appearance.ColorMirrorDisabled = 15658734
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Enabled = False
      ExplicitLeft = 347
      ExplicitTop = 255
    end
    object AdvOfficeRadioGroup1: TAdvOfficeRadioGroup
      Left = 24
      Top = 67
      Width = 377
      Height = 46
      Version = '1.5.0.1'
      Caption = 'Tipo di Connessione'
      ParentBackground = False
      ParentCtl3D = True
      TabOrder = 7
      Columns = 3
      Items.Strings = (
        'Standard'
        'Sicura'
        'Criptata L2')
      Ellipsis = False
    end
  end
end
