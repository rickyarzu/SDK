object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 613
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pgTests: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 828
    Height = 607
    ActivePage = tabWebBrokder
    Align = alClient
    TabOrder = 0
    object tabWebBrokder: TTabSheet
      Caption = 'Simple WebBroker Test'
      object pnlWebBrokerTest: TPanel
        Left = 0
        Top = 0
        Width = 820
        Height = 41
        Align = alTop
        TabOrder = 0
        ExplicitLeft = 304
        ExplicitTop = 40
        ExplicitWidth = 185
      end
    end
    object tabDMVCWebBrokder: TTabSheet
      Caption = 'DMVC WebBroer Test'
      ImageIndex = 1
    end
    object tabMixedTest: TTabSheet
      Caption = 'Mixed Controller Test'
      ImageIndex = 2
    end
  end
end
