object frmDebug: TfrmDebug
  Left = 0
  Top = 0
  ClientHeight = 227
  ClientWidth = 798
  Caption = 'Debug JS'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  
  TextHeight = 13
  object memDebug: TUniMemo
    Left = 0
    Top = 0
    Width = 798
    Height = 194
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitWidth = 793
    ExplicitHeight = 493
  end
  object pnlBottom: TUniPanel
    Left = 0
    Top = 194
    Width = 798
    Height = 33
    Hint = ''
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 1
    Caption = ''
    ExplicitTop = 460
    ExplicitWidth = 793
    DesignSize = (
      798
      33)
    object btnClear: TUniBitBtn
      Left = 661
      Top = 3
      Width = 123
      Height = 25
      Hint = ''
      Caption = 'Clear'
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnClick = btnClearClick
      ExplicitLeft = 656
    end
  end
end
