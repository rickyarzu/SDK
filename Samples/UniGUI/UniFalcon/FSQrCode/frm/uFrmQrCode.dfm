object frmQrCode: TfrmQrCode
  Left = 0
  Top = 0
  Width = 1200
  Height = 600
  OnCreate = UniFrameCreate
  Color = 16749861
  Font.Color = clWhite
  TabOrder = 0
  ParentColor = False
  ParentFont = False
  ParentBackground = False
  DesignSize = (
    1200
    600)
  object pnlQrCode: TUniPanel
    Left = 56
    Top = 56
    Width = 719
    Height = 472
    Hint = ''
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentFont = False
    Font.Color = clBlack
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = clWhite
    LayoutConfig.Cls = 'card card-radius'
    DesignSize = (
      719
      472)
    object pnlCenter: TUniPanel
      Left = 5
      Top = 5
      Width = 708
      Height = 462
      Hint = ''
      Anchors = []
      ParentFont = False
      Font.Color = clWhite
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = 'pnlCenter'
      Color = clWhite
      object lbl1: TUniLabel
        Left = 15
        Top = 40
        Width = 41
        Height = 16
        Hint = ''
        Caption = 'Render'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 1
      end
      object cmbRender: TUniComboBox
        Left = 15
        Top = 58
        Width = 117
        Height = 28
        Hint = ''
        Text = 'cmbRender'
        Items.Strings = (
          'canvas'
          'image'
          'div')
        ItemIndex = 0
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        TabOrder = 2
        IconItems = <>
        OnCloseUp = btnGenerateClick
      end
      object lbl2: TUniLabel
        Left = 150
        Top = 40
        Width = 67
        Height = 16
        Hint = ''
        Caption = 'Min Version'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 3
      end
      object lbl3: TUniLabel
        Left = 15
        Top = 104
        Width = 29
        Height = 16
        Hint = ''
        Caption = 'Level'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 4
      end
      object cmbLevel: TUniComboBox
        Left = 15
        Top = 122
        Width = 72
        Height = 28
        Hint = 'Error Correction Level'
        ShowHint = True
        ParentShowHint = False
        Text = ''
        Items.Strings = (
          'L'
          'M'
          'Q'
          'H')
        ItemIndex = 3
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        TabOrder = 5
        IconItems = <>
        OnCloseUp = btnGenerateClick
      end
      object edtFill: TUniEdit
        Left = 608
        Top = 122
        Width = 85
        Height = 28
        Hint = ''
        Text = '#000'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        TabOrder = 6
      end
      object lbl4: TUniLabel
        Left = 608
        Top = 104
        Width = 50
        Height = 16
        Hint = ''
        Caption = 'Fill Color'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 7
      end
      object lbl5: TUniLabel
        Left = 593
        Top = 35
        Width = 100
        Height = 16
        Hint = ''
        Caption = 'Background Color'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 8
      end
      object edtBackgroundColor: TUniEdit
        Left = 593
        Top = 53
        Width = 100
        Height = 28
        Hint = 'null for transparent background'
        ShowHint = True
        ParentShowHint = False
        Text = 'white'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        TabOrder = 9
      end
      object lbl6: TUniLabel
        Left = 15
        Top = 166
        Width = 44
        Height = 16
        Hint = ''
        Caption = 'Content'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 10
      end
      object edtContent: TUniEdit
        Left = 15
        Top = 184
        Width = 678
        Height = 28
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Text = 'https://store.falconsistemas.com.br'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        TabOrder = 11
      end
      object lbl7: TUniLabel
        Left = 213
        Top = 104
        Width = 44
        Height = 16
        Hint = ''
        Caption = 'LabelQr'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 12
      end
      object edtLabelQr: TUniEdit
        Left = 213
        Top = 122
        Width = 173
        Height = 28
        Hint = ''
        ShowHint = True
        ParentShowHint = False
        Text = 'Falcon Store'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        TabOrder = 13
      end
      object lbl8: TUniLabel
        Left = 239
        Top = 40
        Width = 38
        Height = 16
        Hint = ''
        Caption = 'Radius'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 14
      end
      object lbl9: TUniLabel
        Left = 101
        Top = 104
        Width = 31
        Height = 16
        Hint = ''
        Caption = 'Mode'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 15
      end
      object cmbModes: TUniComboBox
        Left = 101
        Top = 122
        Width = 102
        Height = 28
        Hint = ''
        Text = ''
        Items.Strings = (
          'normal'
          'label strip'
          'label box'
          'image strip'
          'image box')
        ItemIndex = 2
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        TabOrder = 16
        IconItems = <>
        OnCloseUp = btnGenerateClick
      end
      object lbl10: TUniLabel
        Left = 398
        Top = 104
        Width = 62
        Height = 16
        Hint = ''
        Caption = 'Font Name'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 17
      end
      object edtFontName: TUniEdit
        Left = 398
        Top = 122
        Width = 100
        Height = 28
        Hint = ''
        Text = 'Roboto'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        TabOrder = 18
      end
      object lbl11: TUniLabel
        Left = 508
        Top = 104
        Width = 59
        Height = 16
        Hint = ''
        Caption = 'Font Color'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 19
      end
      object edtFontColor: TUniEdit
        Left = 508
        Top = 122
        Width = 85
        Height = 28
        Hint = ''
        Text = '#2594FE'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        TabOrder = 20
      end
      object lbl12: TUniLabel
        Left = 15
        Top = 229
        Width = 56
        Height = 16
        Hint = ''
        Caption = 'Url Image'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 21
      end
      object edtUrlImage: TUniEdit
        Left = 15
        Top = 248
        Width = 678
        Height = 28
        Hint = ''
        Text = 
          'https://store.falconsistemas.com.br/imagens/componentes/fsqrcode' +
          '/tunifsqrcode.png'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        TabOrder = 22
      end
      object tcbRadius: TUniTrackBar
        Left = 236
        Top = 53
        Width = 80
        Height = 33
        Hint = ''
        Max = 5
        Position = 5
        TabOrder = 23
        OnChange = btnGenerateClick
      end
      object tcbMinVersion: TUniTrackBar
        Left = 150
        Top = 53
        Width = 80
        Height = 33
        Hint = ''
        Min = 1
        Max = 9
        Position = 6
        TabOrder = 24
        OnChange = btnGenerateClick
      end
      object UniLabel1: TUniLabel
        Left = 325
        Top = 40
        Width = 24
        Height = 16
        Hint = ''
        Caption = 'Size'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 25
      end
      object tcbSize: TUniTrackBar
        Left = 325
        Top = 53
        Width = 80
        Height = 33
        Hint = ''
        Min = 1
        Max = 9
        Position = 1
        TabOrder = 26
        OnChange = btnGenerateClick
      end
      object UniLabel2: TUniLabel
        Left = 414
        Top = 40
        Width = 32
        Height = 16
        Hint = ''
        Caption = 'Pos X'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 27
      end
      object tcbPosX: TUniTrackBar
        Left = 414
        Top = 53
        Width = 80
        Height = 33
        Hint = ''
        Min = 1
        Max = 9
        Position = 5
        TabOrder = 28
        OnChange = btnGenerateClick
      end
      object lbl13: TUniLabel
        Left = 501
        Top = 40
        Width = 31
        Height = 16
        Hint = ''
        Caption = 'Pos Y'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 29
      end
      object tcbPosY: TUniTrackBar
        Left = 501
        Top = 53
        Width = 80
        Height = 33
        Hint = ''
        Min = 1
        Max = 9
        Position = 5
        TabOrder = 30
        OnChange = btnGenerateClick
      end
    end
  end
  object pnl1: TUniPanel
    Left = 793
    Top = 56
    Width = 353
    Height = 472
    Hint = ''
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    Color = clWhite
    LayoutConfig.Cls = 'card card-radius'
    DesignSize = (
      353
      472)
    object QrCode: TUniFSQrCode
      Left = 78
      Top = 40
      Width = 200
      Height = 200
      Hint = ''
      QrOptions.Render = canvas
      QrOptions.MinVersion = 6
      QrOptions.Level = H
      QrOptions.Mode = label_box
      QrOptions.Fill = 'black'
      QrOptions.Radius = 5
      QrOptions.BackGroundColor = 'null'
      QrOptions.Content = 'https://store.falconsistemas.com.br'
      QrOptions.LabelQr = 'Falcon Store'
      QrOptions.SizeLabelQr = 1
      QrOptions.PositionLabelQrX = 5
      QrOptions.PositionLabelQrY = 5
      QrOptions.FontName = 'Roboto'
      QrOptions.FontColor = '#2594FE'
      QrOptions.ImageUrl = 'null'
      OnGetImage = QrCodeGetImage
    end
    object QrCode1: TUniFSQrCode
      Left = 11
      Top = 343
      Width = 75
      Height = 75
      Hint = ''
      QrOptions.Render = canvas
      QrOptions.MinVersion = 10
      QrOptions.Level = H
      QrOptions.Mode = normal
      QrOptions.Fill = 'purple'
      QrOptions.Radius = 5
      QrOptions.BackGroundColor = 'null'
      QrOptions.Content = 'https://store.falconsistemas.com.br'
      QrOptions.LabelQr = 'Falcon Store'
      QrOptions.SizeLabelQr = 1
      QrOptions.PositionLabelQrX = 5
      QrOptions.PositionLabelQrY = 5
      QrOptions.FontName = 'Roboto'
      QrOptions.FontColor = '#000'
      QrOptions.ImageUrl = 'null'
    end
    object QrCode2: TUniFSQrCode
      Left = 96
      Top = 343
      Width = 75
      Height = 75
      Hint = ''
      QrOptions.Render = canvas
      QrOptions.MinVersion = 7
      QrOptions.Level = H
      QrOptions.Mode = normal
      QrOptions.Fill = 'green'
      QrOptions.Radius = 5
      QrOptions.BackGroundColor = 'null'
      QrOptions.Content = 'https://store.falconsistemas.com.br'
      QrOptions.LabelQr = 'Falcon Store'
      QrOptions.SizeLabelQr = 1
      QrOptions.PositionLabelQrX = 5
      QrOptions.PositionLabelQrY = 5
      QrOptions.FontName = 'Roboto'
      QrOptions.FontColor = '#000'
      QrOptions.ImageUrl = 'null'
    end
    object QrCode3: TUniFSQrCode
      Left = 180
      Top = 343
      Width = 75
      Height = 75
      Hint = ''
      QrOptions.Render = canvas
      QrOptions.MinVersion = 4
      QrOptions.Level = H
      QrOptions.Mode = normal
      QrOptions.Fill = 'silver'
      QrOptions.Radius = 5
      QrOptions.BackGroundColor = 'null'
      QrOptions.Content = 'https://store.falconsistemas.com.br'
      QrOptions.LabelQr = 'Falcon Store'
      QrOptions.SizeLabelQr = 1
      QrOptions.PositionLabelQrX = 5
      QrOptions.PositionLabelQrY = 5
      QrOptions.FontName = 'Roboto'
      QrOptions.FontColor = '#000'
      QrOptions.ImageUrl = 'null'
    end
    object QrCode4: TUniFSQrCode
      Left = 264
      Top = 343
      Width = 75
      Height = 75
      Hint = ''
      QrOptions.Render = canvas
      QrOptions.MinVersion = 1
      QrOptions.Level = H
      QrOptions.Mode = normal
      QrOptions.Fill = 'red'
      QrOptions.Radius = 5
      QrOptions.BackGroundColor = 'null'
      QrOptions.Content = 'https://store.falconsistemas.com.br'
      QrOptions.LabelQr = 'Falcon Store'
      QrOptions.SizeLabelQr = 1
      QrOptions.PositionLabelQrX = 5
      QrOptions.PositionLabelQrY = 5
      QrOptions.FontName = 'Roboto'
      QrOptions.FontColor = '#000'
      QrOptions.ImageUrl = 'null'
    end
    object btnGenerate: TUniFSButton
      Left = 100
      Top = 258
      Width = 157
      Height = 32
      Hint = ''
      StyleButton = GoogleGreen
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Generate'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 6
      ScreenMask.WaitData = True
      OnClick = btnGenerateClick
    end
    object btn1: TUniFSButton
      Left = 100
      Top = 301
      Width = 157
      Height = 28
      Hint = ''
      StyleButton = GoogleGreen
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Save Image'
      TabOrder = 7
      OnClick = btn1Click
    end
  end
  object lblVersion: TUniLabel
    Left = 215
    Top = 555
    Width = 71
    Height = 19
    Hint = ''
    Caption = 'lblVersion'
    Anchors = [akLeft, akBottom]
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Roboto'
    ParentColor = False
    Color = 328965
    TabOrder = 2
  end
  object imgFalconSistemas: TUniImage
    Left = 56
    Top = 535
    Width = 150
    Height = 39
    Cursor = crHandPoint
    Hint = 'https://store.falconsistemas.com.br'
    ShowHint = True
    ParentShowHint = False
    AutoSize = True
    Url = 
      'https://store.falconsistemas.com.br/imagens/sistema/falcon_siste' +
      'mas.png'
    Anchors = [akLeft, akBottom]
    ClientEvents.ExtEvents.Strings = (
      
        'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open("https://s' +
        'tore.falconsistemas.com.br");'#13#10'}')
  end
end
