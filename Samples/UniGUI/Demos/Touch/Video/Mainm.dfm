object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimVideo1: TUnimVideo
    Left = 0
    Top = 0
    Width = 320
    Height = 480
    Hint = ''
    PosterUrl = 'files/cover.jpg'
    Urls.Strings = (
      'files/small.mp4'
      'files/small.webm'
      'files/small.ogv')
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
end
