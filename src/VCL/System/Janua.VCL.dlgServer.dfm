object dlgVCLSelectServer: TdlgVCLSelectServer
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Selezionare Server'
  ClientHeight = 287
  ClientWidth = 583
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Shader1: TPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 287
    Align = alClient
    TabOrder = 0
    DesignSize = (
      583
      287)
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
    object edPort: TDBEdit
      Left = 496
      Top = 81
      Width = 65
      Height = 21
      TabOrder = 2
    end
    object edUsername: TEdit
      Left = 184
      Top = 161
      Width = 377
      Height = 21
      TabOrder = 3
      TextHint = 'Type Here username of the Database'
      OnExit = edServerAddressExit
    end
    object edPassword: TEdit
      Left = 184
      Top = 201
      Width = 263
      Height = 21
      TabOrder = 4
      TextHint = 'Type Here Password of the Database'
      OnExit = edServerAddressExit
    end
    object AdvGlowButton1: TButton
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
      ParentFont = False
      TabOrder = 5
      OnClick = AdvGlowButton1Click
    end
    object btnCancel: TButton
      Left = 461
      Top = 240
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
      ParentFont = False
      TabOrder = 6
    end
    object btnOK: TButton
      Left = 347
      Top = 240
      Width = 100
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 7
    end
    object edSchema: TEdit
      Left = 184
      Top = 121
      Width = 234
      Height = 21
      TabOrder = 8
      TextHint = 'Type Here the  name of the Schema (if needed)'
      OnExit = edServerAddressExit
    end
    object ckbDirect: TAdvOfficeCheckBox
      Left = 461
      Top = 117
      Width = 100
      Height = 20
      Color = 15987699
      ParentColor = False
      TabOrder = 9
      Alignment = taLeftJustify
      Caption = 'Direct DB Mode'
      ReturnIsTab = False
      ShadowColor = clSilver
      URLColor = clBlack
      Version = '1.8.4.0'
    end
  end
end
