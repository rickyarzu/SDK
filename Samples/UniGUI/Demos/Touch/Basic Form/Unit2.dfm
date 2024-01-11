object UnimForm2: TUnimForm2
  Left = 0
  Top = 0
  ClientHeight = 321
  ClientWidth = 241
  Caption = 'UnimForm2'
  AutoHeight = False
  FullScreen = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimCarousel1: TUnimCarousel
    Left = 0
    Top = 0
    Width = 241
    Height = 321
    Hint = ''
    Align = alClient
    PageIndex = 0
    ActivePage = UnimCarouselPage1
    object UnimCarouselPage1: TUnimCarouselPage
      Left = 0
      Top = 0
      Width = 241
      Height = 321
      Hint = ''
      object UnimButton1: TUnimButton
        Left = 12
        Top = 67
        Width = 205
        Height = 47
        Hint = ''
        Caption = 'UnimButton1'
        UI = 'normal'
        OnClick = UnimButton1Click
      end
    end
    object UnimCarouselPage2: TUnimCarouselPage
      Left = 0
      Top = 0
      Width = 241
      Height = 321
      Hint = ''
      object UnimButton2: TUnimButton
        Left = 12
        Top = 232
        Width = 225
        Height = 47
        Hint = ''
        Caption = 'UnimButton2'
        UI = 'normal'
      end
    end
    object UnimCarouselPage3: TUnimCarouselPage
      Left = 0
      Top = 0
      Width = 241
      Height = 321
      Hint = ''
      object UnimButton3: TUnimButton
        Left = 1
        Top = 1
        Width = 239
        Height = 47
        Hint = ''
        Align = alTop
        Caption = 'UnimButton3'
        UI = 'normal'
      end
    end
  end
end
