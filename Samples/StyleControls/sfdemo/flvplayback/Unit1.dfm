object Form1: TForm1
  Left = 334
  Top = 182
  AutoScroll = False
  Caption = 'FLVPlayback - Demo'
  ClientHeight = 374
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    474
    374)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 196
    Top = 339
    Width = 88
    Height = 13
    Anchors = [akLeft, akBottom]
    AutoSize = False
    Caption = 'FLVPlayback skin:'
  end
  object sfFlashPlayer1: TsfFlashPlayer
    Left = 16
    Top = 8
    Width = 441
    Height = 305
    Transparent = False
    Volume = 100
    VolumeControl = False
    FLVPlaybackSkin = flvclearskin
    ControlData = {
      6755665500090000D8130000D813000008000200000000000800000000000800
      000000000800180000005400720061006E00730070006100720065006E007400
      00000800060000002D00310000000800060000002D003100000008000A000000
      4800690067006800000008000200000000000800060000002D00310000000800
      000000000800020000000000080010000000530068006F00770041006C006C00
      0000080004000000300000000800040000003000000008000200000000000800
      0000000008000200000000000D00000000000000000000000000000000000800
      0400000031000000080004000000300000000800000000000800040000003000
      000008000800000061006C006C00000008000C000000660061006C0073006500
      0000}
  end
  object Button1: TButton
    Left = 10
    Top = 333
    Width = 138
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Load FLV...'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 294
    Top = 334
    Width = 163
    Height = 22
    Style = csOwnerDrawFixed
    Anchors = [akLeft, akBottom]
    ItemHeight = 16
    TabOrder = 1
    OnClick = ComboBox1Click
    Items.Strings = (
      'flvclearskin'
      'flvsteelskin'
      'flvmojaveskin'
      'none')
  end
  object OpenDialog1: TOpenDialog
    Filter = 'FLV|*.flv'
    Left = 24
    Top = 24
  end
  object XPManifest1: TXPManifest
    Left = 64
    Top = 24
  end
end
