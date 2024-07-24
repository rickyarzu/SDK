object frmConfirm: TfrmConfirm
  Left = 0
  Top = 0
  Width = 1227
  Height = 853
  AutoScroll = True
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Roboto'
  Font.Style = []
  OnCreate = UniFrameCreate
  DesignSize = (
    1211
    814)
  TextHeight = 15
  object btn1: TUniFSButton
    Left = 32
    Top = 8
    Width = 209
    Height = 28
    Hint = ''
    StyleButton = GoogleBlue
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'My favorite confirm <i class="far fa-smile-wink"></i>'
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Roboto'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btnAlert: TUniFSButton
    Left = 264
    Top = 17
    Width = 129
    Height = 28
    Hint = ''
    StyleButton = GoogleSilver
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Alert'
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Roboto'
    TabOrder = 1
    OnClick = btnAlertClick
  end
  object btnAlertCallBack: TUniFSButton
    Left = 408
    Top = 17
    Width = 169
    Height = 28
    Hint = ''
    StyleButton = GoogleSilver
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Alert + CallBack'
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Roboto'
    TabOrder = 2
    OnClick = btnAlertCallBackClick
  end
  object btnConfirm3Button: TUniFSButton
    Left = 591
    Top = 17
    Width = 147
    Height = 28
    Hint = ''
    StyleButton = GoogleBlue
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Confirm 3 Buttons'
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Roboto'
    TabOrder = 3
    OnClick = btnConfirm3ButtonClick
  end
  object btnConfirmCreateDinamic: TUniFSButton
    Left = 32
    Top = 744
    Width = 232
    Height = 28
    Hint = ''
    StyleButton = GoogleNarrow
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Confirm create dinamic'
    Anchors = [akLeft, akBottom]
    TabOrder = 5
    OnClick = btnConfirmCreateDinamicClick
  end
  object pgcMaster: TUniPageControl
    Left = 32
    Top = 69
    Width = 1161
    Height = 660
    Hint = ''
    ActivePage = tabParameters
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    object tabParameters: TUniTabSheet
      Hint = ''
      Caption = 'Parameters Confirm'
      object edtTtile: TUniEdit
        Left = 24
        Top = 34
        Width = 289
        Height = 28
        Hint = ''
        Text = 'Hello'
        TabOrder = 4
      end
      object lbl1: TUniLabel
        Left = 24
        Top = 18
        Width = 25
        Height = 15
        Hint = ''
        Caption = 'Title'
        TabOrder = 0
      end
      object lbl2: TUniLabel
        Left = 24
        Top = 68
        Width = 44
        Height = 15
        Hint = ''
        Caption = 'Content'
        TabOrder = 8
      end
      object edtContent: TUniEdit
        Left = 24
        Top = 84
        Width = 289
        Height = 28
        Hint = ''
        Text = 'Are you sure to continue?'
        TabOrder = 11
      end
      object lbl3: TUniLabel
        Left = 24
        Top = 120
        Width = 118
        Height = 15
        Hint = ''
        Caption = 'Icon (FontAwesome)'
        TabOrder = 14
      end
      object edtIcon: TUniEdit
        Left = 24
        Top = 136
        Width = 145
        Height = 28
        Hint = ''
        Text = 'fab fa-mixcloud'
        TabOrder = 18
      end
      object chkScrenMask: TUniCheckBox
        Left = 24
        Top = 180
        Width = 169
        Height = 17
        Hint = ''
        Checked = True
        Caption = 'ScreenMask Enabled'
        TabOrder = 22
      end
      object edtTextScreenMask: TUniEdit
        Left = 24
        Top = 204
        Width = 209
        Height = 28
        Hint = ''
        Text = 'Processing'
        TabOrder = 24
      end
      object cmbTypeColor: TUniComboBox
        Left = 344
        Top = 34
        Width = 257
        Height = 28
        Hint = ''
        Text = ''
        Items.Strings = (
          'blue'
          'green'
          'orange'
          'purple'
          'dark'
          'red')
        ItemIndex = 2
        TabOrder = 5
        IconItems = <>
      end
      object lbl4: TUniLabel
        Left = 344
        Top = 18
        Width = 62
        Height = 15
        Hint = ''
        Caption = 'Type Color'
        TabOrder = 1
      end
      object lbl5: TUniLabel
        Left = 344
        Top = 68
        Width = 40
        Height = 15
        Hint = ''
        Caption = 'Theme'
        TabOrder = 9
      end
      object cmbTheme: TUniComboBox
        Left = 344
        Top = 84
        Width = 257
        Height = 28
        Hint = ''
        Text = ''
        Items.Strings = (
          'light'
          'dark'
          'modern'
          'supervan'
          'material'
          'bootstrap')
        ItemIndex = 2
        TabOrder = 12
        IconItems = <>
      end
      object edtSleep: TUniNumberEdit
        Left = 241
        Top = 204
        Width = 62
        Height = 28
        Hint = ''
        TabOrder = 25
        Value = 1000.000000000000000000
        DecimalSeparator = ','
      end
      object lbl6: TUniLabel
        Left = 241
        Top = 182
        Width = 32
        Height = 15
        Hint = ''
        Caption = 'Sleep'
        TabOrder = 23
      end
      object lbl7: TUniLabel
        Left = 307
        Top = 210
        Width = 18
        Height = 15
        Hint = ''
        Caption = 'ms'
        TabOrder = 27
      end
      object btnConfirm: TUniFSButton
        Left = 344
        Top = 204
        Width = 257
        Height = 28
        Hint = ''
        StyleButton = GoogleBlue
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Confirm'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 26
        OnClick = btnConfirmClick
      end
      object chkRTL: TUniCheckBox
        Left = 344
        Top = 122
        Width = 169
        Height = 17
        Hint = ''
        Caption = 'RTL'
        TabOrder = 15
      end
      object chkCloseIcon: TUniCheckBox
        Left = 344
        Top = 146
        Width = 169
        Height = 17
        Hint = ''
        Checked = True
        Caption = 'Close Icon'
        TabOrder = 20
      end
      object lbl8: TUniLabel
        Left = 625
        Top = 18
        Width = 114
        Height = 15
        Hint = ''
        Caption = 'Text Button Confirm'
        TabOrder = 2
      end
      object edtTextButtonConfirm: TUniEdit
        Left = 625
        Top = 34
        Width = 205
        Height = 28
        Hint = ''
        Text = 'Confirma'
        TabOrder = 6
      end
      object lbl9: TUniLabel
        Left = 625
        Top = 68
        Width = 108
        Height = 15
        Hint = ''
        Caption = 'Text Button Cancel'
        TabOrder = 10
      end
      object edtTextButtonCancel: TUniEdit
        Left = 625
        Top = 84
        Width = 205
        Height = 28
        Hint = ''
        Text = 'Cancela'
        TabOrder = 13
      end
      object lbl10: TUniLabel
        Left = 175
        Top = 142
        Width = 138
        Height = 15
        Hint = ''
        TextConversion = txtHTML
        AutoSize = False
        Caption = 
          '<a href="https://fontawesome.com/icons?d=gallery" target="_blank' +
          '">Link Font Awesome 5</a>'
        ParentFont = False
        Font.Color = clHighlight
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsUnderline]
        ClientEvents.ExtEvents.Strings = (
          
            'click=function click(sender, eOpts)'#13#10'{'#13#10'   window.open("https://' +
            'fontawesome.com/v4.7.0/icons/",_blank);'#13#10'}')
        TabOrder = 19
      end
      object chkButtonEnterConfirm: TUniCheckBox
        Left = 512
        Top = 122
        Width = 177
        Height = 17
        Hint = ''
        Checked = True
        Caption = 'Button Enter Confirm'
        TabOrder = 16
      end
      object chkEscapeKey: TUniCheckBox
        Left = 512
        Top = 146
        Width = 137
        Height = 17
        Hint = ''
        Caption = 'EscapeKey'
        TabOrder = 21
      end
      object chkDraggabel: TUniCheckBox
        Left = 676
        Top = 122
        Width = 137
        Height = 17
        Hint = ''
        Caption = 'Draggable'
        TabOrder = 17
      end
      object lbl14: TUniLabel
        Left = 842
        Top = 18
        Width = 57
        Height = 15
        Hint = ''
        Caption = 'Box Width'
        TabOrder = 3
      end
      object edtBoxWidth: TUniEdit
        Left = 842
        Top = 34
        Width = 88
        Height = 28
        Hint = ''
        Text = '380px'
        TabOrder = 7
      end
    end
    object tabPrompt: TUniTabSheet
      Hint = ''
      Caption = 'Prompt (Dialog)'
      object chkRequiredField: TUniCheckBox
        Left = 24
        Top = 28
        Width = 241
        Height = 17
        Hint = ''
        Caption = 'Required Field'
        TabOrder = 0
      end
      object edtTextRequiredFiled: TUniEdit
        Left = 24
        Top = 79
        Width = 209
        Height = 28
        Hint = ''
        Text = 'Field Required'
        TabOrder = 5
      end
      object lbl11: TUniLabel
        Left = 24
        Top = 56
        Width = 81
        Height = 15
        Hint = ''
        Caption = 'Required Filed'
        TabOrder = 1
      end
      object lbl12: TUniLabel
        Left = 470
        Top = 56
        Width = 29
        Height = 15
        Hint = ''
        Caption = 'Type'
        TabOrder = 3
      end
      object cmbTypePrompt: TUniComboBox
        Left = 470
        Top = 79
        Width = 148
        Height = 28
        Hint = ''
        Text = ''
        Items.Strings = (
          'text'
          'password'
          'number')
        ItemIndex = 0
        TabOrder = 7
        IconItems = <>
      end
      object lbl13: TUniLabel
        Left = 629
        Top = 56
        Width = 56
        Height = 15
        Hint = ''
        Caption = 'CharCase'
        TabOrder = 4
      end
      object cmbCharCase: TUniComboBox
        Left = 632
        Top = 79
        Width = 137
        Height = 28
        Hint = ''
        Text = ''
        Items.Strings = (
          'LowerCase'
          'Normal'
          'UpperCase')
        ItemIndex = 1
        TabOrder = 8
        IconItems = <>
      end
      object btnPrompt: TUniFSButton
        Left = 786
        Top = 79
        Width = 153
        Height = 28
        Hint = ''
        StyleButton = GoogleOrange
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Prompt'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 9
        OnClick = btnPromptClick
      end
      object lbl111: TUniLabel
        Left = 248
        Top = 56
        Width = 76
        Height = 15
        Hint = ''
        Caption = 'Default Value'
        TabOrder = 2
      end
      object edtTextDefaultValue: TUniEdit
        Left = 248
        Top = 79
        Width = 209
        Height = 28
        Hint = ''
        Text = ''
        TabOrder = 6
      end
    end
    object tabScreenMask: TUniTabSheet
      Hint = ''
      Caption = 'Screen Mask'
      object edtScreenMask: TUniEdit
        Left = 23
        Top = 32
        Width = 209
        Height = 28
        Hint = ''
        Text = 'Processing Task...'
        TabOrder = 0
      end
      object btnScreenMask: TUniFSButton
        Left = 252
        Top = 32
        Width = 216
        Height = 28
        Hint = ''
        StyleButton = GoogleGreen
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Execute ScreenMask'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 1
        OnClick = btnScreenMaskClick
      end
      object btnScreenMaskDinamic: TUniFSButton
        Left = 488
        Top = 32
        Width = 229
        Height = 28
        Hint = ''
        StyleButton = GoogleBlue2
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Execute ScreenMask Dinamic'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        TabOrder = 2
        OnClick = btnScreenMaskDinamicClick
      end
    end
  end
  object imgFalconSistemas: TUniImage
    Left = 36
    Top = 790
    Width = 150
    Height = 39
    Cursor = crHandPoint
    Hint = 'https://store.falconsistemas.com.br'
    ShowHint = True
    ParentShowHint = False
    AutoSize = True
    Url = 
      'https://store.falconsistemas.com.br/imagens/sistema/falcon_siste' +
      'mas_store.png'
    Anchors = [akLeft, akBottom]
    ClientEvents.ExtEvents.Strings = (
      
        'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open("https://s' +
        'tore.falconsistemas.com.br");'#13#10'}')
  end
  object lblVersion: TUniLabel
    Left = 197
    Top = 805
    Width = 71
    Height = 19
    Hint = ''
    Caption = 'lblVersion'
    Anchors = [akLeft, akBottom]
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Roboto'
    ParentColor = False
    Color = 328965
    TabOrder = 7
  end
  object Confirm: TUniFSConfirm
    Theme = modern
    TypeColor = blue
    TypeAnimated = False
    Draggable = False
    EscapeKey = True
    CloseIcon = False
    Icon = 'fa fa-smile-o'
    RTL = False
    boxWidth = '380px'
    BackgroundDismiss = False
    ButtonTextConfirm = 'Confirma'
    ButtonTextCancel = 'Cancela'
    ButtonTextOther = 'Outro'
    ButtonTextOK = 'Ok'
    ButtonEnterConfirm = True
    ScreenMask.Enabled = True
    ScreenMask.Text = 'Processing'
    PromptType.TypePrompt = text
    PromptType.RequiredField = False
    PromptType.TextRequiredField = 'Field riquired'
    PromptType.CharCase = Normal_
    Left = 888
    Top = 256
  end
end
