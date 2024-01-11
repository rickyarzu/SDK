object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 479
  ClientWidth = 594
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  TextHeight = 15
  object UniTreeView1: TUniTreeView
    Left = 24
    Top = 40
    Width = 209
    Height = 369
    Hint = ''
    Items.FontData = {0100000000}
    Images = UniNativeImageList1
    TabOrder = 0
    Color = clWindow
    SourceMenu = UniMenuItems1
  end
  object UniMenuItems1: TUniMenuItems
    Left = 344
    Top = 192
    object Root1: TUniMenuItem
      Action = Action1
    end
    object Item11: TUniMenuItem
      Action = Action2
      object Sub11: TUniMenuItem
        Action = Action3
      end
      object Sub21: TUniMenuItem
        Action = Action4
      end
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 336
    Top = 112
    Images = {
      04000000000000000606000000616374696F6E00000000060A0000006172726F
      775F646F776E000000000609000000626F6F6B6D61726B730000000006070000
      00636F6D706F7365}
  end
  object ActionList1: TActionList
    Images = UniImageListAdapter1
    OnExecute = ActionList1Execute
    Left = 440
    Top = 160
    object Action1: TAction
      Caption = 'Action1'
      ImageIndex = 0
    end
    object Action2: TAction
      Caption = 'Action2'
      ImageIndex = 1
    end
    object Action3: TAction
      Caption = 'Action3'
      ImageIndex = 2
    end
    object Action4: TAction
      Caption = 'Action4'
      ImageIndex = 3
    end
  end
  object UniImageListAdapter1: TUniImageListAdapter
    UniImageList = UniNativeImageList1
    Left = 360
    Top = 56
  end
end
