object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 545
  ClientWidth = 646
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniTreeView1: TUniTreeView
    Left = 208
    Top = 72
    Width = 337
    Height = 385
    Hint = ''
    Items.NodeData = {
      0303000000200000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000100000001014100200000000100000000000000FFFFFFFFFFFFFFFF000000
      00000000000000000001014200200000000200000000000000FFFFFFFFFFFFFF
      FF00000000000000000000000001014300200000000300000000000000FFFFFF
      FFFFFFFFFF00000000000000000000000001014400}
    Items.FontData = {
      0103000000FFFFFFFF01000000FFFFFFFF00000000FFFFFFFF00000000FFFFFF
      FF00000000}
    Images = UniNativeImageList1
    TabOrder = 0
    Color = clWindow
  end
  object UniButton1: TUniButton
    Left = 56
    Top = 72
    Width = 100
    Height = 25
    Hint = ''
    Caption = 'UniButton1'
    TabOrder = 1
    Images = UniNativeImageList1
    ImageIndex = 0
  end
  object UniButton2: TUniButton
    Left = 56
    Top = 120
    Width = 100
    Height = 25
    Hint = ''
    Caption = 'UniButton2'
    TabOrder = 2
    Images = UniNativeImageList1
    ImageIndex = 1
  end
  object UniButton3: TUniButton
    Left = 56
    Top = 168
    Width = 100
    Height = 25
    Hint = ''
    Caption = 'UniButton3'
    TabOrder = 3
    Images = UniNativeImageList1
    ImageIndex = 2
  end
  object UniButton4: TUniButton
    Left = 56
    Top = 216
    Width = 100
    Height = 25
    Hint = ''
    Caption = 'UniButton4'
    TabOrder = 4
    Images = UniNativeImageList1
    ImageIndex = 3
  end
  object UniNativeImageList1: TUniNativeImageList
    ImageFilesFolderName = 'icons/'
    Left = 104
    Top = 312
    Images = {
      0400000000000000071400000043616C656E6461722D4F7074696F6E732E706E
      67000000000709000000436C6F636B2E706E67000000000709000000436C6F73
      652E706E6700000000070C000000436F6D70726573732E706E67}
  end
end
