object ProfilePicture: TProfilePicture
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Profile picture'
  ClientHeight = 348
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    384
    348)
  PixelsPerInch = 96
  TextHeight = 13
  object AdvCloudImage1: TAdvCloudImage
    Left = 16
    Top = 16
    Width = 355
    Height = 319
    Async = False
    AutoSize = False
    CheckContentLength = False
    WebPicture.Stretch = False
    PicturePosition = bpCenter
    Anchors = [akLeft, akTop, akRight, akBottom]
    Version = '1.0.0.1'
    ExplicitWidth = 345
    ExplicitHeight = 305
  end
end
