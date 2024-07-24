object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 593
  ClientWidth = 360
  Caption = 'UnimFSQrCode'
  CloseButton.IconCls = 'arrow_left'
  CloseButton.DefaultIcon = False
  TitleButtons = <
    item
      ButtonId = 1
      Separator = True
    end
    item
      ButtonId = 0
      IconCls = 'refresh'
      UI = 'normal'
    end>
  OnTitleButtonClick = UnimFormTitleButtonClick
  DesignSize = (
    360
    593)
  
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object lbl1: TUnimLabel
    Left = 56
    Top = 55
    Width = 250
    Height = 34
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Amount to pay'
    Anchors = []
    ParentFont = False
    Font.Height = -27
    Font.Name = 'Roboto'
  end
  object lbl2: TUnimLabel
    Left = 56
    Top = 93
    Width = 250
    Height = 50
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'U$ 600,00'
    Anchors = []
    ParentFont = False
    Font.Height = -53
    Font.Name = 'Roboto'
  end
  object QrCode: TUnimFSQrCode
    Left = 56
    Top = 180
    Width = 250
    Height = 250
    Hint = ''
    QrOptions.Render = canvas
    QrOptions.MinVersion = 6
    QrOptions.Level = H
    QrOptions.Mode = normal
    QrOptions.Fill = 'black'
    QrOptions.Radius = 5
    QrOptions.BackGroundColor = 'null'
    QrOptions.Content = 'https://store.falconsistemas.com.br'
    QrOptions.LabelQr = 'Falcon Store'
    QrOptions.FontName = 'Roboto'
    QrOptions.FontColor = '#2594FE'
    QrOptions.ImageUrl = 'null'
    Alignment = taCenter
    Anchors = []
  end
  object lbl3: TUnimLabel
    Left = 56
    Top = 496
    Width = 250
    Height = 30
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'powered by'
    Anchors = []
    ParentFont = False
    Font.Name = 'Roboto'
  end
  object lbl4: TUnimLabel
    Left = 56
    Top = 525
    Width = 250
    Height = 30
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Falcon Sistemas'
    Anchors = []
    ParentFont = False
    Font.Color = 16684069
    Font.Name = 'Roboto'
  end
end
