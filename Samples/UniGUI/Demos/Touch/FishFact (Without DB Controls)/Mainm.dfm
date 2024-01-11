object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 486
  ClientWidth = 320
  Caption = 'MainmForm'
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimList1: TUnimList
    Left = 0
    Top = 0
    Width = 320
    Height = 486
    Hint = ''
    ItemIndex = -1
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DisclosureIcon = True
    OnDisclose = UnimList1Disclose
    ExplicitHeight = 480
  end
end
