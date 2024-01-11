inherited dlgTMSSelectServer: TdlgTMSSelectServer
  BorderStyle = bsDialog
  Caption = 'Selezionare Server'
  ClientHeight = 339
  ClientWidth = 582
  Color = clWhite
  ParentFont = False
  Position = poScreenCenter
  ExplicitWidth = 588
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  object Shader1: TPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 339
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      582
      339)
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
    object Label2: TLabel
      Left = 24
      Top = 84
      Width = 134
      Height = 13
      Caption = 'Database or Instance Name'
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
    object Label7: TLabel
      Left = 24
      Top = 124
      Width = 122
      Height = 13
      Caption = 'Schema Name for Testing'
    end
    object Label8: TLabel
      Left = 26
      Top = 243
      Width = 84
      Height = 13
      Caption = 'Database Engine '
    end
    object edServerAddress: TEdit
      Left = 184
      Top = 24
      Width = 377
      Height = 21
      TabOrder = 0
      TextHint = 'Type Here the server Name'
      OnChange = edServerAddressChange
      OnExit = edServerAddressExit
    end
    object edDatabase: TEdit
      Left = 184
      Top = 81
      Width = 234
      Height = 21
      TabOrder = 1
      TextHint = 'Type Here The Database/Instance if required'
      OnExit = edServerAddressExit
    end
    object edUsername: TEdit
      Left = 184
      Top = 161
      Width = 377
      Height = 21
      TabOrder = 2
      TextHint = 'Type Here username of the Database'
      OnExit = edServerAddressExit
    end
    object edPassword: TEdit
      Left = 184
      Top = 201
      Width = 376
      Height = 21
      TabOrder = 3
      TextHint = 'Type Here Password of the Database'
      OnExit = edServerAddressExit
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 461
      Top = 240
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
      OnClick = AdvGlowButton1Click
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
      Left = 460
      Top = 292
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
    end
    object btnOK: TAdvGlowButton
      Left = 346
      Top = 292
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
    end
    object edSchema: TEdit
      Left = 184
      Top = 121
      Width = 234
      Height = 21
      TabOrder = 7
      TextHint = 'Type Here the  name of the Schema (if needed)'
      OnExit = edServerAddressExit
    end
    object ckbDirect: TAdvOfficeCheckBox
      Left = 461
      Top = 117
      Width = 100
      Height = 20
      TabOrder = 8
      Alignment = taLeftJustify
      Caption = 'Direct DB Mode'
      ReturnIsTab = False
      Version = '1.6.1.0'
    end
    object cboDBEngine: TComboBox
      Left = 184
      Top = 240
      Width = 262
      Height = 21
      TabOrder = 9
      Text = 'cboDBEngine'
    end
    object edPort: TAdvSpinEdit
      Left = 497
      Top = 81
      Width = 64
      Height = 21
      Value = 0
      DateValue = 44027.588534930550000000
      HexDigits = 0
      HexValue = 0
      IncrementFloat = 0.100000000000000000
      IncrementFloatPage = 1.000000000000000000
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      TabOrder = 10
      Visible = True
      Version = '1.9.0.1'
    end
  end
end
