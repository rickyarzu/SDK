object frmResult: TfrmResult
  Left = 0
  Top = 0
  ClientHeight = 590
  ClientWidth = 383
  Caption = 'Value Result'
  TitleButtons = <>
  ShowAnimation = 'slide'
  HideAnimation = 'slideOut'
  TextHeight = 15
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object memResult: TUnimMemo
    Left = 0
    Top = 0
    Width = 383
    Height = 518
    Hint = ''
    Align = alClient
    EmptyText = 'Result QrCode or BarCode'
    Font.Height = -19
    TabOrder = 0
    ExplicitHeight = 524
  end
  object btnFalcon: TUnimBitBtn
    AlignWithMargins = True
    Left = 15
    Top = 528
    Width = 353
    Height = 47
    Hint = ''
    Margins.Left = 15
    Margins.Top = 10
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    ClientEvents.ExtEvents.Strings = (
      
        'tap=function tap(sender, e, eOpts)'#13#10'{'#13#10'  window.open("https://st' +
        'ore.falconsistemas.com.br");'#13#10'}')
    UI = 'plain'
    Caption = 'Falcon Sistemas'
    Font.Color = 16684069
    ExplicitTop = 530
    ExplicitWidth = 326
  end
end
