object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 414
  ClientWidth = 759
  Caption = 'FontAwesome5 with UniFalcon <i class="far fa-smile-wink"></i>'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  TextHeight = 13
  object btn1: TUniFSButton
    Left = 224
    Top = 24
    Width = 161
    Height = 30
    Hint = ''
    StyleButton = GoogleBlue3
    CaptionIconFont = '<i class="fas fa-users-cog"></i>'
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = ' Users Config'
    ParentFont = False
    Font.Height = -13
    TabOrder = 1
  end
  object MenTreeMenu: TUniTreeMenu
    Left = 0
    Top = 0
    Width = 201
    Height = 414
    Hint = ''
    Items.FontData = {0100000000}
    Images = imglFont
    SourceMenu = Men
  end
  object lbl1: TUniLabel
    Left = 400
    Top = 144
    Width = 161
    Height = 137
    Hint = ''
    Alignment = taCenter
    TextConversion = txtHTML
    AutoSize = False
    Caption = '<i class="fas fa-award fa-10x"></i>'
    ParentFont = False
    Font.Color = 15768115
    Font.Height = -13
    TabOrder = 5
  end
  object btn2: TUniFSButton
    Left = 400
    Top = 24
    Width = 161
    Height = 30
    Hint = ''
    StyleButton = GoogleSilver
    CaptionIconFont = '<i class="fab fa-apple-pay fa-3x"></i>'
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = ''
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -13
    TabOrder = 2
  end
  object btn3: TUniFSButton
    Left = 576
    Top = 24
    Width = 161
    Height = 30
    Hint = ''
    StyleButton = GoogleGreen
    CaptionIconFont = '<i class="fab fa-whatsapp"></i>'
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = ' WhatsApp'
    ParentFont = False
    Font.Height = -13
    TabOrder = 3
  end
  object lbl4: TUniLabel
    Left = 331
    Top = 354
    Width = 43
    Height = 39
    Hint = ''
    Alignment = taCenter
    TextConversion = txtHTML
    AutoSize = False
    Caption = '<i class="fab fa-apple fa-3x"></i>'
    ParentFont = False
    Font.Color = cl3DDkShadow
    Font.Height = -13
    TabOrder = 6
  end
  object lbl5: TUniLabel
    Left = 411
    Top = 354
    Width = 43
    Height = 39
    Hint = ''
    Alignment = taCenter
    TextConversion = txtHTML
    AutoSize = False
    Caption = '<i class="fab fa-android fa-3x"></i>'
    ParentFont = False
    Font.Color = cl3DDkShadow
    Font.Height = -13
    TabOrder = 7
  end
  object lbl6: TUniLabel
    Left = 499
    Top = 354
    Width = 43
    Height = 39
    Hint = ''
    Alignment = taCenter
    TextConversion = txtHTML
    AutoSize = False
    Caption = '<i class="fab fa-windows fa-3x"></i>'
    ParentFont = False
    Font.Color = cl3DDkShadow
    Font.Height = -13
    TabOrder = 8
  end
  object lbl7: TUniLabel
    Left = 576
    Top = 354
    Width = 43
    Height = 39
    Hint = ''
    Alignment = taCenter
    TextConversion = txtHTML
    AutoSize = False
    Caption = '<i class="fab fa-linux fa-3x"></i>'
    ParentFont = False
    Font.Color = cl3DDkShadow
    Font.Height = -13
    TabOrder = 9
  end
  object lbl2: TUniLabel
    Left = 351
    Top = 91
    Width = 250
    Height = 19
    Hint = ''
    Caption = 'https://store.falconsistemas.com.br'
    ParentFont = False
    Font.Color = 15768115
    Font.Height = -16
    TabOrder = 4
  end
  object Men: TUniMenuItems
    Left = 80
    Top = 104
    object Control1: TUniMenuItem
      Caption = 'Payment'
      ImageIndex = 0
    end
    object ActControl2: TUniMenuItem
      Caption = 'Control'
      ImageIndex = 2
    end
    object ActMaster1: TUniMenuItem
      Caption = 'Master'
      ImageIndex = 4
    end
    object Administratot1: TUniMenuItem
      Caption = 'Administrator'
      ImageIndex = 3
      object ActUser1: TUniMenuItem
        Caption = 'User'
        ImageIndex = 1
      end
    end
  end
  object imglFont: TUniNativeImageList
    Left = 80
    Top = 208
    Images = {
      050000000000000006160000006661732066612D6372656469742D636172643B
      66613B0000000006160000006661732066612D757365722D636972636C653B66
      613B0000000006100000006661732066612D746F6F6C733B66613B0000000006
      110000006661732066612D646F6E6174653B66613B0000000006100000006661
      732066612D61776172643B66613B}
  end
end
